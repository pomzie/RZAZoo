using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.OleDb;

namespace RZAZoo
{
    public partial class Login : Page
    {
        OleDbConnection con;
        OleDbCommand cmd;
        OleDbDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
            Session["ValidLogin"] = "No";
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string usr = user.Text;
            string pwd = pass.Text;

            con = new OleDbConnection(ConfigurationManager.ConnectionStrings["Logins"].ConnectionString);
            cmd = new OleDbCommand();
            con.Open();

            cmd.Connection = con;
            cmd.CommandText = "SELECT * FROM Accounts WHERE Username = '" + usr + "' AND Password = '" + pwd + "'";

            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["ValidLogin"] = "Yes";
                Session["Usrname"] = usr;
                Response.Redirect("Default.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation",
                    "<script language='javascript'>alert('Invalid username or password')</script>");
            }
            con.Close();
        }
    }
}