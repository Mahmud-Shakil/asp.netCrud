using Projects.DAL;
using Projects.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projects
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] != null)
            {
                lblloggedInUser.Text = Session["User"].ToString();
            }
        }

        protected void linkBtnReport_Click(object sender, EventArgs e)
        {
            //List<Customer1> customer1s = GateWay.GetCustomersList();
            //Session["Data"] = customer1s;
            Response.Redirect("ReportView.aspx");
        }


        protected void linkLogout_Click(object sender, EventArgs e)
        {
            Session["User"] = null;
            FormsAuthentication.SignOut();
            Response.Redirect("Login");
        }
    }
}