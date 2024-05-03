using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebGrease.Css.Ast.Selectors;

namespace RZAZoo
{
    public partial class Membership : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ValidLogin"].ToString() == "No")
            {
                Response.Redirect("Login.aspx");
            }
            else { 
                usnLabel.Text = Session["Usrname"].ToString();
            }
        }

        protected void btnWIP_Click(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('This feature has not yet been implemented, sorry')</script>");
        }
    }
}