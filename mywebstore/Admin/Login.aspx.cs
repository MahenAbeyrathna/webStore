using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;

namespace mywebstore.Admin
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string LogInId = WebConfigurationManager.AppSettings["AdminLoginID"];
            string Password = WebConfigurationManager.AppSettings["AdminPassword"];
            if(LoginIdText.Text== LogInId && PasswordText.Text==Password)
            {
                Session["shoppingCartAdmin"] = "shoppingCartAdmin";
                Response.Redirect("~/Admin/AddNewProducts.aspx");
            }
            else
            {
                Label2.Text = "Wrong username and password";
            }
        }
    }
}