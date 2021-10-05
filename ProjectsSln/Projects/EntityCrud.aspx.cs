using Projects.DAL;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projects
{
    public partial class EntityCrud : System.Web.UI.Page
    {
        EFGateWay dbobj = new EFGateWay();
        protected void Page_Load(object sender, EventArgs e)
        {
            ProductUserControl.opType = "EF";
            if (!IsPostBack)
            {
                LoadGridView();
            }
            
        }

        private void LoadGridView()
        {
            List<Customer> data = dbobj.GetCustomerList().ToList();
            if (data.Count > 0)
            {
                GridView.DataSource = data;
            }
            else
            {
                GridView.DataSource = null;
            }
            GridView.DataBind();
        }

        protected void GridView_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView.EditIndex = -1;
            LoadGridView();
        }

        protected void GridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(GridView.DataKeys[e.RowIndex].Value);
            FileUpload up = (FileUpload)GridView.Rows[e.RowIndex].FindControl("FileUpload1");
            string ImageName = GateWay.ImageName(id);
           
            string fileUrl = "Images/";
            string newImageName = "";
            if (up.HasFile)
            {
                DeleteExistingImage(ImageName);
                newImageName = up.FileName;
                fileUrl += newImageName;
                up.SaveAs(Server.MapPath(fileUrl));
            }
            else
            {
                newImageName = ImageName;
                fileUrl += newImageName;
            }
            Customer obj = new Customer();
            obj.CustomerId = id;
            obj.CustomerName = e.NewValues["CustomerName"].ToString();
            obj.Email = e.NewValues["Email"].ToString();
            obj.Address = e.NewValues["Address"].ToString();
            obj.PurchaseDate = Convert.ToDateTime(e.NewValues["PurchaseDate"].ToString());
            obj.MobileNo = e.NewValues["MobileNo"].ToString();
            obj.UnitPrice = Convert.ToDecimal(e.NewValues["UnitPrice"].ToString());
            obj.StoreId = Convert.ToInt32(e.NewValues["StoreId"].ToString());
            obj.SupplierId = Convert.ToInt32(e.NewValues["SupplierId"].ToString());
            obj.ProductId = Convert.ToInt32(e.NewValues["ProductId"].ToString());
            obj.ImageName = newImageName;
            obj.ImageUrl = fileUrl;
            dbobj.UpdateCustomer(obj);
            GridView.EditIndex = -1;
            LoadGridView();
        }

        private void DeleteExistingImage(string imageName)
        {
            string path = Server.MapPath("Images/" + imageName);
            FileInfo fileobj = new FileInfo(path);
            if (fileobj.Exists)
            {
                fileobj.Delete();
            }
        }

        protected void GridView_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView.EditIndex = e.NewEditIndex;
            LoadGridView();
        }

        protected void GridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridView.DataKeys[e.RowIndex].Value);
            string ImageName = GateWay.ImageName(id);
            DeleteExistingImage(ImageName);
            dbobj.DeleteCustomer(id);
            LoadGridView();
        }

        protected void GridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView.PageIndex = e.NewPageIndex;
            LoadGridView();
        }
    }
}