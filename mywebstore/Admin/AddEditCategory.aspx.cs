using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using mywebstore.BusinessLayer;

namespace mywebstore.Admin
{
    public partial class AddEditCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitCategory_Click(object sender, EventArgs e)
        {
            ShoppingCart sc = new ShoppingCart {
                CategoryName = categoryname.Text
            };
            sc.AddNewCategory();
            categoryname.Text = string.Empty;
            Response.Redirect("~/Admin/AddNewProducts.aspx");
        }
    }
}