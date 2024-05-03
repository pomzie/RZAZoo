using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.OleDb;
using Newtonsoft.Json.Linq;

namespace RZAZoo
{
    public partial class Booking : Page
    {
        OleDbConnection con;
        OleDbCommand cmd;
        OleDbDataReader dr;
        string usr;
        string em;
        string start;
        string disccode;
        int stay;
        int tickets;
        int cost;

        protected void Page_Load(object sender, EventArgs e)
        {
            cost = 0;
            sub.Enabled = false;

            if (Session["ValidLogin"].ToString() == "No")
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                usr = Session["Usrname"].ToString();
                con = new OleDbConnection(ConfigurationManager.ConnectionStrings["Logins"].ConnectionString);
                cmd = new OleDbCommand();
                con.Open();
                cmd.Connection = con;
                cmd.CommandText = "SELECT Email FROM Accounts WHERE Username = '" + usr + "'";

                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    em = dr.GetString(0);
                }
                dr.Close();
                
                con.Close();
            }
        }

        protected void cal_Click(object sender, EventArgs e)
        {
            cost = 0;
            stay = Convert.ToInt32(staydays.Text);
            tickets = Convert.ToInt32(ticknumb.Text);

            if (options.SelectedValue != null)
            {
                if(options.SelectedValue == "2")
                {
                    cost = cost + (stay * 25);
                }
                else
                {
                    cost = cost + (stay * 10);
                }
            }

            if(book.Checked)
            {
                cost = cost + 5;
            }

            if (show.Checked)
            {
                cost = cost + 10;
            }

            if (tour.Checked)
            {
                cost = cost + 20;
            }

            disccode = disc.Text;

            if (disccode == "RZA24")
            {
                cost = cost - 50;
            }

            cost = cost * tickets;
            sub.Enabled = true;

            costLabel.Text = string.Format("{0:c}", cost);
        }

        protected void sub_Click(object sender, EventArgs e)
        {
            cost = 0;
            stay = Convert.ToInt32(staydays.Text);
            tickets = Convert.ToInt32(ticknumb.Text);

            if (options.SelectedValue != null)
            {
                if (options.SelectedValue == "2")
                {
                    cost = cost + (stay * 25);
                }
                else
                {
                    cost = cost + (stay * 10);
                }
            }

            if (book.Checked)
            {
                cost = cost + 5;
            }

            if (show.Checked)
            {
                cost = cost + 10;
            }

            if (tour.Checked)
            {
                cost = cost + 20;
            }

            disccode = disc.Text;

            if (disccode == "RZA24")
            {
                cost = cost - 50;
            }

            cost = cost * tickets;
            start = datestart.Text;

            con = new OleDbConnection(ConfigurationManager.ConnectionStrings["Booking"].ConnectionString);
            cmd = new OleDbCommand();

            con.Open();

            cmd.Connection = con;
            cmd.CommandText = "INSERT INTO Booking([Username], [Email], [Start_Date], [Stay], [Tickets],[Cost]) VALUES(@Usr,@Em,@Start,@Stay,@Tickets,@Cost)";

            cmd.Parameters.AddWithValue("@Usr", usr);
            cmd.Parameters.AddWithValue("@Em", em);
            cmd.Parameters.AddWithValue("@Start", start);
            cmd.Parameters.AddWithValue("@Stay", stay);
            cmd.Parameters.AddWithValue("@Tickets", tickets);
            cmd.Parameters.AddWithValue("@Cost", cost);
            dr = cmd.ExecuteReader();

            ClientScript.RegisterStartupScript(Page.GetType(), "validation",
            "<script language='javascript'>alert('Booking submitted')</script>");
        }
    }
}