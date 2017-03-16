using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using mywebstore.DataLayer;
using System.Data;

namespace mywebstore.BusinessLayer
{
    public class ShoppingCart
    {
        public string CategoryName;
        public int CategoryID;
        public string ProductName;
        public string ProductImage;
        public string ProductPrice;
        public string ProductDescription;

        public void AddNewCategory()
        {
            SqlParameter[] parameters = new SqlParameter[1];//to use storedprocedure
            parameters[0] = DataLayer.DataAccess.AddParamater("@CategoryName", CategoryName, System.Data.SqlDbType.VarChar,200);
            DataTable dt = DataLayer.DataAccess.ExecuteDTByProcedure("Sp_AddNewCategory", parameters);
            Console.Write(CategoryName);
        }
        public void AddNewProducts()
        {
            SqlParameter[] parameters = new SqlParameter[5];
            parameters[0] = DataAccess.AddParamater("@ProductName",ProductName, System.Data.SqlDbType.VarChar,300);
            parameters[1] = DataAccess.AddParamater("@ProductPrice",ProductPrice,System.Data.SqlDbType.Int,100);
            parameters[2] = DataAccess.AddParamater("@ProductImage",ProductImage,System.Data.SqlDbType.VarChar,500);
            parameters[3] = DataAccess.AddParamater("@ProductDescription", ProductDescription, System.Data.SqlDbType.VarChar, 1000);
            parameters[4] = DataAccess.AddParamater("@CategoryID", CategoryID, System.Data.SqlDbType.Int, 100);
            DataTable td = DataAccess.ExecuteDTByProcedure("SP_AddNewProduct",parameters);


        }
        public DataTable GetCategories()
        {
            SqlParameter[] parameters = new SqlParameter[0];
            DataTable dt = DataLayer.DataAccess.ExecuteDTByProcedure("SP_GetAllCategories",parameters);
            return dt;
        }
        public DataTable GetAllProducts()
        {
            SqlParameter[] parameters = new SqlParameter[1];
            parameters[0] = DataAccess.AddParamater("@CategoryID",CategoryID, System.Data.SqlDbType.Int,20);
            DataTable dt = DataLayer.DataAccess.ExecuteDTByProcedure("SP_GetAllProducts",parameters);
            return dt;
        }
    }
}