using CrystalDecisions.Shared;
using Projects.DAL;
using Projects.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projects
{
    public partial class ReportView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string path = Server.MapPath("/");

            List<Customer1> SalesReportlist = GateWay.GetCustomersReport(path);


            Session["Data"] = SalesReportlist;
            if (Session["Data"] != null)
            {
                var list = Session["Data"] as List<Customer1>;
                CustomerReport reportObj = new CustomerReport();
                reportObj.SetDataSource(list);

                CrystalReportViewer1.ReportSource = reportObj;
                reportObj.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "User Info");

            }

            //string path = Server.MapPath("/");
            //List<Customer1> customer1s = GateWay.GetCustomersReport(path);
            //if (Session["Data"] != null)
            //{
            //    var list = Session["Data"] as List<Customer1>;
            //    CustomerReport reportObj = new CustomerReport();
            //    reportObj.SetDataSource(list);
            //    CrystalReportViewer1.ReportSource = reportObj;

            //    //reportObj.SetDataSource(list);
            //    //CrystalReportViewer1.ReportSource = reportObj;
            //    //reportObj.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "User Info");
            //}
        }
    }
}