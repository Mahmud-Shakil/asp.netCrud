using Projects.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Projects.DAL
{
    public class GateWay
    {
        public static List<Customer1> GetCustomersList()
        {
            List<Customer1> list = new List<Customer1>();
            using (SqlConnection con = new SqlConnection(Connection.GetConnectionString()))
            {
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Select c.CustomerId,CustomerName,Address,PurchaseDate,Email,MobileNo,ImageName,ImageUrl,UnitPrice,c.ProductId,p.ProductName,sp.SupplierID,sp.SupplierName, c.StoreId,s.StoreNumber  from Customer as c join Product as p  on c.ProductId=p.ProductID join Store as s on c.StoreId=s.StoreId join Supplier as sp on c.SupplierId=sp.SupplierID";
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    Customer1 obj = new Customer1();
                    obj.CustomerId = Convert.ToInt32(rdr["CustomerId"]);
                    obj.CustomerName = rdr["CustomerName"].ToString();
                    obj.Email = rdr["Email"].ToString();
                    obj.Address = rdr["Address"].ToString();
                    obj.MobileNo = rdr["MobileNo"].ToString();
                    obj.PurchaseDate = Convert.ToDateTime(rdr["PurchaseDate"].ToString());
                    obj.UnitPrice = Convert.ToDecimal(rdr["UnitPrice"].ToString());
                    obj.ImageName = rdr["ImageName"].ToString();
                    obj.ImageUrl = rdr["ImageUrl"].ToString();
                    obj.ProductId = Convert.ToInt32(rdr["ProductId"]);
                    obj.ProductName = rdr["ProductName"].ToString();
                    obj.StoreId = Convert.ToInt32(rdr["StoreId"]);
                    obj.StoreNumber = rdr["StoreNumber"].ToString();
                    obj.SupplierId = Convert.ToInt32(rdr["SupplierId"].ToString());
                    obj.SupplierName = rdr["SupplierName"].ToString();
                    list.Add(obj);
                }
                return list;
            }

        }
        public static List<Customer1> GetCustomersReport(string path)
        {
            List<Customer1> list = new List<Customer1>();
            using (SqlConnection con = new SqlConnection(Connection.GetConnectionString()))
            {
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Select c.CustomerId,CustomerName,Address,PurchaseDate,Email,MobileNo,ImageName,ImageUrl,UnitPrice,c.ProductId,p.ProductName,sp.SupplierID,sp.SupplierName, c.StoreId,s.StoreNumber  from Customer as c join Product as p  on c.ProductId=p.ProductID join Store as s on c.StoreId=s.StoreId join Supplier as sp on c.SupplierId=sp.SupplierID";
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    Customer1 obj = new Customer1();
                    obj.CustomerId = Convert.ToInt32(rdr["CustomerId"]);
                    obj.CustomerName = rdr["CustomerName"].ToString();
                    obj.Email = rdr["Email"].ToString();
                    obj.Address = rdr["Address"].ToString();
                    obj.MobileNo = rdr["MobileNo"].ToString();
                    obj.PurchaseDate = Convert.ToDateTime(rdr["PurchaseDate"].ToString());
                    obj.UnitPrice = Convert.ToDecimal(rdr["UnitPrice"].ToString());
                    obj.ImageName = rdr["ImageName"].ToString();
                    obj.ImageUrl =path + rdr["ImageUrl"].ToString();
                    obj.ProductId = Convert.ToInt32(rdr["ProductId"]);
                    obj.ProductName = rdr["ProductName"].ToString();
                    obj.StoreId = Convert.ToInt32(rdr["StoreId"]);
                    obj.StoreNumber = rdr["StoreNumber"].ToString();
                    obj.SupplierId = Convert.ToInt32(rdr["SupplierId"].ToString());
                    obj.SupplierName = rdr["SupplierName"].ToString();
                    list.Add(obj);
                }
                return list;
            }

        }
        public static void SaveCustomer(string CustomerName, string Email, string Address, string MobileNo, DateTime PurchaseDate,
         decimal UnitPrice, string ImageName, string ImageUrl, int ProductId, int StoreId, int SupplierId)
        {
            using (SqlConnection con = new SqlConnection(Connection.GetConnectionString()))
            {
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "INSERT INTO Customer (CustomerName,Email,Address,MobileNo,PurchaseDate,ImageName,ImageUrl,UnitPrice,ProductId,StoreId,SupplierId)" +
                    " VALUES(@CustomerName,@Email,@Address,@MobileNo,@PurchaseDate,@ImageName,@ImageUrl,@UnitPrice,@ProductId,@StoreId,@SupplierId)";
                cmd.Parameters.AddWithValue("@CustomerName", CustomerName);
                cmd.Parameters.AddWithValue("@Email", Email);
                cmd.Parameters.AddWithValue("@Address", Address);
                cmd.Parameters.AddWithValue("@MobileNo", MobileNo);
                cmd.Parameters.AddWithValue("@PurchaseDate", PurchaseDate);
                cmd.Parameters.AddWithValue("@ImageName", ImageName);
                cmd.Parameters.AddWithValue("@ImageUrl", ImageUrl);
                cmd.Parameters.AddWithValue("@UnitPrice", UnitPrice);
                cmd.Parameters.AddWithValue("@ProductId", ProductId);
                cmd.Parameters.AddWithValue("@StoreId", StoreId);
                cmd.Parameters.AddWithValue("@SupplierId", SupplierId);
                con.Open();
                cmd.ExecuteNonQuery();
            }
        }
        public static void UpdateCustomer(string CustomerName, string Email, string Address, string MobileNo, DateTime PurchaseDate,
          decimal UnitPrice, string ImageName, string ImageUrl, int ProductId, int StoreId,int SupplierId, int CustomerId)
        {
            using (SqlConnection con = new SqlConnection(Connection.GetConnectionString()))
            {

                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Update Customer set CustomerName=@CustomerName,Email=@Email,Address=@Address,MobileNo=@MobileNo,PurchaseDate=@PurchaseDate,UnitPrice=@UnitPrice,ProductId=@ProductId, StoreId=@StoreId, SupplierId=@SupplierId where CustomerId=@CustomerId";
                cmd.Parameters.AddWithValue("@CustomerName", CustomerName);
                cmd.Parameters.AddWithValue("@Email", Email);
                cmd.Parameters.AddWithValue("@Address", Address);
                cmd.Parameters.AddWithValue("@MobileNo", MobileNo);
                cmd.Parameters.AddWithValue("@PurchaseDate", PurchaseDate);
                //cmd.Parameters.AddWithValue("@ImageName", ImageName);
                //cmd.Parameters.AddWithValue("@ImageUrl", ImageUrl);
                cmd.Parameters.AddWithValue("@UnitPrice", UnitPrice);
                cmd.Parameters.AddWithValue("@ProductId", ProductId);
                cmd.Parameters.AddWithValue("@StoreId", StoreId);
                cmd.Parameters.AddWithValue("@SupplierId", SupplierId);
                cmd.Parameters.AddWithValue("@CustomerId", CustomerId);
                con.Open();
                cmd.ExecuteNonQuery();
            }
        }
        public static void DeleteCustomer(int CustomerId)
        {
            using (SqlConnection con = new SqlConnection(Connection.GetConnectionString()))
            {
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "DELETE FROM  Customer WHERE CustomerId=@CustomerId";
                cmd.Parameters.AddWithValue("@CustomerId", CustomerId);
                con.Open();
                cmd.ExecuteNonQuery();
            }
        }
        public static string ImageName(int CustomerId)
        {
            string imageName = "";
            using (SqlConnection con = new SqlConnection(Connection.GetConnectionString()))
            {
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "SELECT ImageName FROM Customer WHERE CustomerId=@CustomerId";
                cmd.Parameters.AddWithValue("@CustomerId", CustomerId);
                con.Open();
                imageName = cmd.ExecuteScalar().ToString();
            }
            return imageName;
        }
        public static void UpdateImageById(string ImageName, string ImageUrl, int CustomeId, int ProductId, int StoreId,int SupplierId)
        {
            using (SqlConnection con = new SqlConnection(Connection.GetConnectionString()))
            {
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "UPDATE Customer Set ImageName=@ImageName, ImageUrl=@ImageUrl, ProductId=@ProductId, StoreId=@StoreId, SupplierId=@SupplierId WHERE CustomerId=@CustomerId";
                cmd.Parameters.AddWithValue("@ImageName", ImageName);
                cmd.Parameters.AddWithValue("@ImageUrl", ImageUrl);
                cmd.Parameters.AddWithValue("@ProductId", ProductId);
                cmd.Parameters.AddWithValue("@CustomerId", CustomeId);
                cmd.Parameters.AddWithValue("@StoreId", StoreId);
                cmd.Parameters.AddWithValue("@SupplierId",SupplierId);
                con.Open();
                cmd.ExecuteNonQuery();
            }
        }
        public static void SaveProduct(string ProductName)
        {
            using (SqlConnection con = new SqlConnection(Connection.GetConnectionString()))
            {
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "INSERT INTO Product (ProductName) VALUES(@ProductName)";
                cmd.Parameters.AddWithValue("@ProductName", ProductName);
             
                con.Open();
                cmd.ExecuteNonQuery();
            }
        }
        public static DataTable GetProduct()
        {
            DataTable dt = new DataTable();
            using (SqlConnection con = new SqlConnection(Connection.GetConnectionString()))
            {
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "SELECT * FROM Product";
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                dt.Load(rdr, LoadOption.Upsert);
            }
            return dt;
        }
        public static void SaveStore(string StoreNumber)
        {
            using (SqlConnection con = new SqlConnection(Connection.GetConnectionString()))
            {
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "INSERT INTO Store (StoreNumber) VALUES(@StoreNumber)";
                cmd.Parameters.AddWithValue("@StoreNumber", StoreNumber);
                con.Open();
                cmd.ExecuteNonQuery();
            }
        }
        public static DataTable GetStore()
        {
            DataTable dt = new DataTable();
            using (SqlConnection con = new SqlConnection(Connection.GetConnectionString()))
            {
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "SELECT * FROM Store";
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                dt.Load(rdr, LoadOption.Upsert);
            }
            return dt;
        }
        public static void SaveSupplier(string SupplierName)
        {
            using (SqlConnection con = new SqlConnection(Connection.GetConnectionString()))
            {
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "INSERT INTO Supplier (SupplierName) VALUES(@SupplierName)";
                cmd.Parameters.AddWithValue("@SupplierName", SupplierName);
                con.Open();
                cmd.ExecuteNonQuery();
            }
        }
        public static DataTable GetSupplier()
        {
            DataTable dt = new DataTable();
            using (SqlConnection con = new SqlConnection(Connection.GetConnectionString()))
            {
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "SELECT * FROM Supplier";
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                dt.Load(rdr, LoadOption.Upsert);
            }
            return dt;
        }
    }
}