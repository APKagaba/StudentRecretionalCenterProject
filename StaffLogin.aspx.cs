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
    public partial class StaffLogin : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            validLabel.Visible = false;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlConn = new SqlConnection(connectionString))
            {
                sqlConn.Open();
                string query = "SELECT COUNT(1) FROM tblStaff WHERE UserName=@UserName AND Password=@Password";

                SqlCommand sqlCmd = new SqlCommand(query, sqlConn);
                sqlCmd.Parameters.AddWithValue("@UserName", txtUserName.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());
                int count = Convert.ToInt32(sqlCmd.ExecuteScalar());

                if (count == 1)
                {
                    Session["UserName"] = txtUserName.Text.Trim();
                    Session["Password"] = txtPassword.Text.Trim();

                    Response.Redirect("StaffHome.aspx");
                }
                else
                {
                    validLabel.Visible = true;
                }
            }
        }


       





    }
}