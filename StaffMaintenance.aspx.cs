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
    public partial class WebForm4 : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlconn = new SqlConnection(connectionString))
            {
                sqlconn.Open();
                string query = ("INSERT INTO tblMaintenance (Time, Area, Equipment, Condition, Description) VALUES (@Time, @Area, @Equipment, @Condition, @Description);");

                SqlCommand sqlcmd = new SqlCommand(query, sqlconn);
                sqlcmd.Parameters.AddWithValue("@Time", DateTime.Now.ToString());
                sqlcmd.Parameters.AddWithValue("@Area", dropArea.SelectedValue);
                sqlcmd.Parameters.AddWithValue("@Equipment", txtEquipment.Text);
                sqlcmd.Parameters.AddWithValue("@Condition", dropCondition.SelectedValue);
                sqlcmd.Parameters.AddWithValue("@Description", txtDescription.Text);
                sqlcmd.ExecuteNonQuery();

            }

            txtDescription.Text = "";
            txtEquipment.Text = "";
            dropCondition.SelectedValue = "";
            dropArea.SelectedValue = "";
            Response.Write("<script>alert('" + "Maintenance submited!" + "')</script>");
        }
    }
}