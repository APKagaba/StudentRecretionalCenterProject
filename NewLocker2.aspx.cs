using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace CIS420SmitPatel
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnNew_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlcon = new SqlConnection(connectionString))
            {

                sqlcon.Open();
                string query = ("INSERT INTO Locker (Locker_Size, Locker_Room, MemberID) VALUES (@Locker_Size, @Locker_Room, @MemberID)");
                SqlCommand sqlcmd = new SqlCommand(query, sqlcon);

                sqlcmd.Parameters.AddWithValue("@Locker_Size", dropSize.SelectedValue);
                sqlcmd.Parameters.AddWithValue("@Locker_Room", dropRoom.SelectedValue);
                sqlcmd.Parameters.AddWithValue("@MemberID", Session["MemberID"]);

                sqlcmd.ExecuteNonQuery();

                decimal LockerValue;
                if (dropSize.SelectedValue == "Small")
                    LockerValue = 10.00m;
                else if (dropSize.SelectedValue == "Large")
                    LockerValue = 20.00m;
                else
                    LockerValue = 0.00m;

                string description = "SRC Locker Payment for " + Session["FirstName"];

                Response.Redirect("Payments.aspx?money=" + LockerValue + "&description=" + description);

            }
        }
    }
}