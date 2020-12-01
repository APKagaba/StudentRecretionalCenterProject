using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace CIS420SmitPatel
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblErrorMessage.Visible = false;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=(local)\SS17;Initial Catalog=SrcDB;Integrated Security=True"))
            {
                sqlCon.Open();
                string query = "SELECT * FROM Member_Table WHERE UserName=@UserName AND Password=@Password";
                SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                sqlCmd.Parameters.AddWithValue("@UserName", txtUsername.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());
                int count = Convert.ToInt32(sqlCmd.ExecuteScalar());
                if (count > 1)
                {
                    string query3 = "SELECT MemberID FROM Member_Table WHERE UserName=@UserName";
                    SqlCommand sql2 = new SqlCommand(query3, sqlCon);
                    sql2.Parameters.AddWithValue("@UserName", txtUsername.Text.Trim());
                    Session["MemberID"] = sql2.ExecuteScalar();

                    string query2 = "SELECT FirstName FROM Member_Table WHERE UserName=@UserName";
                    SqlCommand sql3 = new SqlCommand(query2, sqlCon);
                    sql3.Parameters.AddWithValue("@UserName", txtUsername.Text.Trim());
                    Session["FirstName"] = sql3.ExecuteScalar();
                    


                    Session["UserName"] = txtUsername.Text.Trim();
                    Response.Redirect("Profile2.aspx");
                }

            }
        }
    }
}