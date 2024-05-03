using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RZAZoo
{
    public partial class Register : Page
    {
        OleDbConnection con;
        OleDbCommand cmd;
        OleDbDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
            Session["ValidLogin"] = "No";
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string usr = user.Text;
            string pwd = pass.Text;
            string em = email.Text;

            con = new OleDbConnection(ConfigurationManager.ConnectionStrings["Logins"].ConnectionString);
            cmd = new OleDbCommand();
            con.Open();

            cmd.Connection = con;
            cmd.CommandText = "SELECT * FROM Accounts WHERE Username = '" + usr + "' AND Password = '" + pwd + "'";

            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation",
                "<script language='javascript'>alert('User already exists')</script>");
            }
            else
            {
                con.Close();
                con.Open();
                cmd.CommandText = "INSERT INTO Accounts([Username], [Password], [Email]) VALUES(@Usr,@Pwd,@Em)";
                cmd.Parameters.AddWithValue("@Usr", usr);
                cmd.Parameters.AddWithValue("@Pwd", pwd);
                cmd.Parameters.AddWithValue("@Em", em);
                dr = cmd.ExecuteReader();

                ClientScript.RegisterStartupScript(Page.GetType(), "validation",
                "<script language='javascript'>alert('Account registered')</script>");
                Response.Redirect("Login.aspx");
                con.Close();
            }
            con.Close();
        }
    }
}