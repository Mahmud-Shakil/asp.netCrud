using Projects.DAL;
using Projects.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projects
{
    public partial class SqlCrud : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ProductUserControl.opType = "SQLDS";
            if (Session["Customer"] != null)
            {
                Customer1 obj = (Customer1)Session["Customer"];
                InsertCustomer(obj);
                Session["Customer"] = null;
            }
        }

        private void InsertCustomer(Customer1 obj)
        {
            SqlDataSource1.InsertParameters["CustomerName"].DefaultValue = obj.CustomerName;
            SqlDataSource1.InsertParameters["PurchaseDate"].DefaultValue = obj.PurchaseDate.ToShortDateString();
            SqlDataSource1.InsertParameters["Email"].DefaultValue = obj.Email;
            SqlDataSource1.InsertParameters["MobileNo"].DefaultValue = obj.MobileNo.ToString();
            SqlDataSource1.InsertParameters["Address"].DefaultValue = obj.Address;
            SqlDataSource1.InsertParameters["ImageName"].DefaultValue = obj.ImageName;
            SqlDataSource1.InsertParameters["ImageUrl"].DefaultValue = obj.ImageUrl;
            SqlDataSource1.InsertParameters["ProductId"].DefaultValue = obj.ProductId.ToString();
            SqlDataSource1.InsertParameters["UnitPrice"].DefaultValue = obj.UnitPrice.ToString();
            SqlDataSource1.InsertParameters["StoreId"].DefaultValue = obj.StoreId.ToString();
            SqlDataSource1.InsertParameters["SupplierId"].DefaultValue = obj.SupplierId.ToString();
            SqlDataSource1.Insert();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int customerId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            FileUpload up = (FileUpload)GridView1.Rows[e.RowIndex].FindControl("FileUpload1");
            string imagename = GateWay.ImageName(customerId);
           
            string fileUrl = "Images/";
            string newImageName = "";
            if (up.HasFile)
            {
                DeleteExistingImage(imagename);
                newImageName = up.FileName;
                fileUrl += newImageName;
                up.SaveAs(Server.MapPath(fileUrl));
            }
            else
            {
                newImageName = imagename;
                fileUrl += newImageName;
            }
            DropDownList dl = (DropDownList)GridView1.Rows[e.RowIndex].FindControl("ddl1");
            DropDownList d2 = (DropDownList)GridView1.Rows[e.RowIndex].FindControl("ddl2");
            DropDownList d3 = (DropDownList)GridView1.Rows[e.RowIndex].FindControl("ddl3");
            int proId = Convert.ToInt32(dl.SelectedValue);
            int sid = Convert.ToInt32(d2.SelectedValue);
            int Spid = Convert.ToInt32(d3.SelectedValue);
            TextBox txt = GridView1.Rows[e.RowIndex].FindControl("TextBox7") as TextBox;
            txt.Text = newImageName;
            string CustomerName = (GridView1.Rows[e.RowIndex].FindControl("TextBox1") as TextBox).Text;
            string Email = (GridView1.Rows[e.RowIndex].FindControl("TextBox2") as TextBox).Text;
            string Address = (GridView1.Rows[e.RowIndex].FindControl("TextBox3") as TextBox).Text;
            string UnitPrice = (GridView1.Rows[e.RowIndex].FindControl("TextBox4") as TextBox).Text;
            
            string MobileNo = (GridView1.Rows[e.RowIndex].FindControl("TextBox5") as TextBox).Text;
            string purchaseDate = (GridView1.Rows[e.RowIndex].FindControl("TextBox9") as TextBox).Text;
            
            UpdateSql(newImageName, fileUrl, customerId, proId, CustomerName, purchaseDate, Email, Address, UnitPrice, MobileNo,sid,Spid);
        }

        private void UpdateSql(string newImageName, string fileUrl, int customerId, int proId, string customerName, string purchaseDate, string email, string address, string unitPrice, string mobileNo, int sid, int spid)
        {
            SqlDataSource1.UpdateCommand = "Update [Customer] set CustomerName='" + customerName + "', PurchaseDate='" + purchaseDate + "', Email='" + email + "', ImageName='" + newImageName + "', ImageUrl='" + fileUrl + "', ProductId='" + proId + "', Address='" + address + "', StoreId='" + sid + "', SupplierId='" + spid + "',MobileNo='" + mobileNo + "', UnitPrice='" + unitPrice + "' where CustomerId='" + customerId + "'";
            int affraw_update = SqlDataSource1.Update();
            SqlDataSource1.Dispose();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int CustomerId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            string imagename = GateWay.ImageName(CustomerId);
            DeleteExistingImage(imagename);
        }

        private void DeleteExistingImage(string imagename)
        {
            string path = Server.MapPath("Images/" + imagename);
            FileInfo fileObj = new FileInfo(path);
            if (fileObj.Exists)
            {
                fileObj.Delete();
            }
        }
    }
}