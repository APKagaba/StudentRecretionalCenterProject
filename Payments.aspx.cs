using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CIS420SmitPatel
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string D = Request.QueryString["description"];
            string A = Request.QueryString["money"];

            PaymentDescription.Text = D;
            PaymentAmount.Text = "$" + A;

        }
    }
}