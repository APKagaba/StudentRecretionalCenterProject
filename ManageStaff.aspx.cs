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
    public partial class WebForm1 : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnCreateNew_Click(object sender, EventArgs e)
        {
            pnlCreate.Visible = true;
        }

        protected void btnNew_Click(object sender, EventArgs e)
        {
            

            if (checkUserName() == true)
            {
                lblUserNameCheck.Text = "User Name is not available";
            }
            else
            {
                using (SqlConnection sqlcon = new SqlConnection(connectionString))
                {

                    sqlcon.Open();
                    string query = ("INSERT INTO tblStaff (FirstName, LastName, Phone, Email, UserName, Password) VALUES (@FirstName, @LastName, @Phone, @Email, @UserName, @Password)");
                    SqlCommand sqlcmd = new SqlCommand(query, sqlcon);


                    sqlcmd.Parameters.AddWithValue("@FirstName", txtFirstName.Text.Trim());
                    sqlcmd.Parameters.AddWithValue("@LastName", txtLastName.Text.Trim());
                    sqlcmd.Parameters.AddWithValue("@Phone", txtPhone.Text.Trim());
                    sqlcmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                    sqlcmd.Parameters.AddWithValue("@UserName", txtUserName.Text.Trim());
                    sqlcmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());
                    sqlcmd.ExecuteNonQuery();

                }

                txtFirstName.Text = "";
                txtLastName.Text = "";
                txtEmail.Text = "";
                txtPhone.Text = "";
                txtUserName.Text = "";
                txtPassword.Text = "";
                txtRePassword.Text = "";
                pnlCreate.Visible = false;

            }

            GridView1.DataBind();
        }

        private Boolean checkUserName()
        {
            Boolean UserNameAvailable = false;
           

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                string query = "SELECT * FROM tblStaff WHERE(UserName=@UserName)";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@UserName", txtUserName.Text);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    UserNameAvailable = true;
                }

            }
            return UserNameAvailable;
        }





    }
}