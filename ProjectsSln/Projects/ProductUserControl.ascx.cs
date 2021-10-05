using Projects.DAL;
using Projects.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projects
{
    public partial class ProductUserControl : System.Web.UI.UserControl
    {
        public string opType = "EF";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Calendar1.Visible = false;
                LaodddlProduct();
                LoadddlSupplier();
                LoadddlStore();
            }
            ShowImage();
        }

        private void LoadddlStore()
        {
            DataTable dt = GateWay.GetStore();
            //DataRow dr = dt.NewRow();
            //dr.ItemArray = new object[] { 0, "-Select-" };
            //dt.Rows.InsertAt(dr, 0);

            ddlStore.DataSource = dt;
            ddlStore.DataTextField = dt.Columns["StoreNumber"].ToString();
            ddlStore.DataValueField = dt.Columns["StoreId"].ToString();
            ddlStore.DataBind();
        }

        private void LoadddlSupplier()
        {
            DataTable dt = GateWay.GetSupplier();
            DataRow dr = dt.NewRow();
            dr.ItemArray = new object[] { 0, "-Select-" };
            dt.Rows.InsertAt(dr, 0);
            ddlSupplier.DataSource = dt;
            ddlSupplier.DataTextField = dt.Columns["SupplierName"].ToString();
            ddlSupplier.DataValueField = dt.Columns["SupplierId"].ToString();
            ddlSupplier.DataBind();
        }

        private void LaodddlProduct()
        {
            DataTable dt = GateWay.GetProduct();
            DataRow dr = dt.NewRow();
            dr.ItemArray = new object[] { 0, "-Select-" };
            dt.Rows.InsertAt(dr, 0);

            ddlCategory.DataSource = dt;
            ddlCategory.DataTextField = dt.Columns["ProductName"].ToString();
            ddlCategory.DataValueField = dt.Columns["ProductId"].ToString();
           
            ddlCategory.DataBind();

            
            
        }

        private void ShowImage()
        {
            if (FileUpload1.HasFile)
            {
                string imageName = Path.GetFileName(FileUpload1.PostedFile.FileName);
                HiddenImageName.Value = imageName;
                string filePath = "Images/" + imageName;
                HiddenImageUrl.Value = filePath;
                FileUpload1.SaveAs(Server.MapPath(filePath));
                Image1.ImageUrl = filePath;
            }
        }

        protected void btnProductSave_Click(object sender, EventArgs e)
        {
            Product1 obj = new Product1();
            obj.ProductName = txtProduct.Text;
            
            GateWay.SaveProduct(obj.ProductName);
            txtProduct.Text = "";
            ddlSupplier.ClearSelection();
            LaodddlProduct();
        }

        protected void BtnSupplierSave_Click(object sender, EventArgs e)
        {
            Supplier1 obj = new Supplier1();
            obj.SupplierName = txtSupplier.Text;
            GateWay.SaveSupplier(obj.SupplierName);
            txtSupplier.Text = "";
            LoadddlSupplier();
        }

        protected void BtnStoreSave_Click(object sender, EventArgs e)
        {
            Store1 obj = new Store1();
            obj.StoreNumber = txtStore.Text;
            GateWay.SaveStore(obj.StoreNumber);
            txtStore.Text = "";
            LoadddlStore();

        }

        protected void btnSaveProduct_Click(object sender, EventArgs e)
        {
            
            if (Page.IsValid)
            {
                //System.Threading.Thread.Sleep(3000);
                Customer1 obj = new Customer1();
                obj.CustomerName = txtCustomerName.Text;
                obj.PurchaseDate = Convert.ToDateTime(txtDate.Text);
                obj.Email = txtEmail.Text;
                obj.ImageName = HiddenImageName.Value;
                obj.ImageUrl = HiddenImageUrl.Value;
                obj.ProductId = Convert.ToInt32(ddlCategory.SelectedValue);
                obj.UnitPrice = Convert.ToDecimal(txtPrice.Text);
                obj.StoreId = Convert.ToInt32(ddlCategory.SelectedValue);
                obj.SupplierId = Convert.ToInt32(ddlSupplier.SelectedValue);
                obj.Address = txtAddress.Text;
                obj.MobileNo = txtMobileNo.Text;

                if (opType == "ObjDS")
                {
                    GateWay.SaveCustomer(obj.CustomerName, obj.Email, obj.Address, obj.MobileNo, obj.PurchaseDate, obj.UnitPrice, obj.ImageName, obj.ImageUrl, obj.ProductId, obj.StoreId, obj.SupplierId);
                    Response.Redirect("ObjCrud");
                }
                else if (opType == "SQLDS")
                {
                    Session["Customer"] = obj;
                    Response.Redirect("SqlCrud");
                }
                else
                {
                    Customer obj1 = new Customer();
                    obj1.CustomerName = txtCustomerName.Text;
                    obj1.Email = txtEmail.Text;
                    obj1.MobileNo = txtMobileNo.Text;
                    obj1.Address = txtAddress.Text;
                    obj1.PurchaseDate = Convert.ToDateTime(txtDate.Text);
                    obj1.ImageName = HiddenImageName.Value;
                    obj1.ImageUrl = HiddenImageUrl.Value;
                    obj1.UnitPrice = Convert.ToDecimal(txtPrice.Text);
                    obj1.StoreId = Convert.ToInt32(ddlStore.SelectedValue);
                    obj1.SupplierId = Convert.ToInt32(ddlSupplier.SelectedValue);
                    obj1.ProductId = Convert.ToInt32(ddlCategory.SelectedValue);
                    EFGateWay efObj = new EFGateWay();
                    efObj.InsertCustomer(obj1);
                    Response.Redirect("EntityCrud");
                }


            }
        }
        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtCustomerName.Text = "";
            txtDate.Text = "";
            txtEmail.Text = "";
            txtMobileNo.Text = "";
            txtAddress.Text = "";
            txtPrice.Text = "";
            Image1.ImageUrl = "";
            ddlCategory.ClearSelection();
            ddlStore.ClearSelection();
            ddlSupplier.ClearSelection();
        }
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

            if (Calendar1.Visible)
            {
                Calendar1.Visible = false;
            }
            else
            {
                Calendar1.Visible = true;
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtDate.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            bool IsCap = args.Value.All(char.IsUpper);
            if (IsCap)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }
    }
}