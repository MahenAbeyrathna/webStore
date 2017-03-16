using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using mywebstore.BusinessLayer;
using System.Data;

namespace mywebstore.Admin
{
    public partial class AddNewProducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetCategories();
            }
        }

        protected void productSubmitButton_Click(object sender, EventArgs e)
        {
            if(uploadProductPhoto.PostedFile != null)
            {
                SaveProductPhoto();
                ShoppingCart sc = new ShoppingCart()
                {
                    ProductName = productName.Text,
                    ProductImage="~/ProductImages/"+uploadProductPhoto.FileName,
                    ProductPrice= productPrice.Text,
                    ProductDescription = productDescription.Text,
                    CategoryID= Convert.ToInt32(ddlCategory.SelectedValue)

                };
                sc.AddNewProducts();
                ClearText();
            }
        }

        private void GetCategories()
        {
            ShoppingCart sc = new ShoppingCart();
            DataTable dt = sc.GetCategories();
            if(dt.Rows.Count>0)
            {
                ddlCategory.DataValueField = "CategoryID";
                ddlCategory.DataTextField = "CategoryName";
                ddlCategory.DataSource = dt;
                ddlCategory.DataBind();

            }

        }
        private void SaveProductPhoto()
        {
            if(uploadProductPhoto.PostedFile != null)
            {
                string fileName = uploadProductPhoto.PostedFile.ToString();
                string fileExt = System.IO.Path.GetExtension(uploadProductPhoto.FileName);
                if(fileName.Length > 96)
                {

                }
                else if (fileExt != ".jpeg" && fileExt!=".jpg" && fileExt!=".png" && fileExt != ".bmp")
                {

                }
                else if(uploadProductPhoto.PostedFile.ContentLength > 4000000)
                {

                }
                else
                {
                    uploadProductPhoto.SaveAs(Server.MapPath("~/ProductImages/" + fileName));
                }
            }
        }
        public void ClearText()
        {
            productName.Text = string.Empty;
            productPrice.Text = string.Empty;
            productDescription.Text = string.Empty;
        }
    }
}