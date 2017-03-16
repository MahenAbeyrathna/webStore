using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using mywebstore.BusinessLayer;
using System.Web.Configuration;
using System.Data.SqlClient;


namespace mywebstore
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblCategoryName.Text = " Popular Products At Shopping Cart";
            if (!IsPostBack)
            {
                GetCategory();
                GetProducts(1);
            }
        }
        protected void lblLogo_Click(object sender, EventArgs e)
        {
            lblCategoryName.Text = "Popular products at shopping cart";
            lblProducts.Text = "Products";
            pnlMyCart.Visible = false;
            pnlCheckOut.Visible = false;
            pnlCategories.Visible = true;
            pnlProducts.Visible = true;
            GetProducts(1);
        }
        private void GetMyCart()
        {
            string productids = string.Empty;
            DataTable dt = (DataTable)Session["myCart"];
            for(int i=0;i<dt.Rows.Count; i++)
            {
                if (i ==0 || dt.Rows.Count==1)
                {
                    productids = productids + dt.Rows[i]["ProductID"].ToString();
                }
                else
                {
                    productids = productids + "," + dt.Rows[i]["ProductID"].ToString();
                }
            }
            productids = "(" + productids + ")";
            if(dt.Rows.Count > 0)
            {
                string query = "select * from Products where ProductID in "+ productids +"";
                DataTable dtProducts = GetData(query);
                btnShoppingCart.Text = dtProducts.Rows.Count.ToString();
                dlCartProducts.DataSource = dtProducts;
                dlCartProducts.DataBind();
            }
            else
            {
                dlCartProducts.DataSource = null;
                dlCartProducts.DataBind();
                btnShoppingCart.Text = "0";
               
            }
        }
        public DataTable GetData(string query)
        {
            DataTable dt = new DataTable();
            string conn = WebConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con = new SqlConnection(conn);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            da.Fill(dt);
            con.Close();
            return dt;
        }
        protected void btnshoppingcart_click(object sender, EventArgs e)
        {
            GetMyCart();
            lblCategoryName.Text = "Product in your Shopping Cart";
            lblProducts.Text = "CheckOut Form";
            pnlMyCart.Visible = true;
            pnlCheckOut.Visible = true;
            pnlCategories.Visible = false;
            pnlProducts.Visible = false;
        }
        protected void btnAddToCart_Click(object sender, EventArgs e)
        {
            string ProductID = Convert.ToInt16((((Button)sender).CommandArgument)).ToString();
            if(Session["MyCart"] != null)
            {
                DataTable dt = (DataTable)Session["MyCart"];
                dt.Rows.Add(ProductID);
                Session["MyCart"] = dt;
                btnShoppingCart.Text = dt.Rows.Count.ToString();
            }
            else
            {
                DataTable dt = new DataTable();
                dt.Columns.Add("ProductID", typeof(string));
                dt.Rows.Add(ProductID);
                Session["MyCart"] = dt;
                btnShoppingCart.Text = dt.Rows.Count.ToString();
            }
        }
        private void GetCategory()
        {
            ShoppingCart sc = new ShoppingCart();
            dlCategories.DataSource = null;
            dlCategories.DataSource = sc.GetCategories();
            dlCategories.DataBind();
        }
        private void GetProducts(int CategoryID)
        {
            ShoppingCart sc = new ShoppingCart()
            {
                CategoryID = CategoryID
            };
            dlProducts.DataSource = null;
            dlProducts.DataSource = sc.GetAllProducts();
            dlProducts.DataBind();
        }
        protected void lbtnCategory_click(object sender, EventArgs e)
        {
            pnlMyCart.Visible = false;
            pnlProducts.Visible = true;
            int CategoryID =Convert.ToInt16(((((LinkButton)sender).CommandArgument)).ToString());
            GetProducts(CategoryID);
        }
        protected void btnRemoveFromCart_click(object sender, EventArgs e)
        {
            string ProductID = Convert.ToInt16((((Button)sender).CommandArgument)).ToString();
            if(Session["MyCart"] != null)
            {
                DataTable dt = (DataTable)Session["MyCart"];
                DataRow drr = dt.Select("ProductID=" + ProductID +" ").FirstOrDefault();

                if(drr != null)
                    dt.Rows.Remove(drr);
                
                Session["MyCart"] = dt;
            }

            GetMyCart();
        }

        protected void dlCartProducts_SelectedIndexChanged(object sender, EventArgs e)
        {
        }
    }
    
}