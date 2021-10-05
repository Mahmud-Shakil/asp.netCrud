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
    public partial class ObjCrud : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ProductUserControl.opType = "ObjDS";
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int CustomerId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            FileUpload up = (FileUpload)GridView1.Rows[e.RowIndex].FindControl("FileUpload1");
            string imagename = GateWay.ImageName(CustomerId);
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
            GateWay.UpdateImageById(newImageName, fileUrl, CustomerId, proId,sid,Spid);
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

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int CustomerId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            string imagename = GateWay.ImageName(CustomerId);
            DeleteExistingImage(imagename);
        }
    }
}