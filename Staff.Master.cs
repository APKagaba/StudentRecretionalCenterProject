using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CIS420SmitPatel
{
    public partial class Staff : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
            {

                Response.Redirect("StaffLogin.aspx");
            }
            lblUserName.Text = "Hello, " + Session["UserName"];

            if (Session["UserName"].ToString() == "manager" & Session["Password"].ToString() == "manager123")
            {
                pnlManager.Visible = true;
            }
        }

        protected void btnMaintenance_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageMaintenance.aspx");
        }

        protected void btnCountSheet_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageCountSheet.aspx");
        }

        protected void btnSignout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("StaffLogin.aspx");
        }
    }
}