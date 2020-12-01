using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace CIS420SmitPatel
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnNew_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewLocker2.aspx");
        }
        /*
       void PopulatedGridView()
       {
           DataTable dtblL = new DataTable();
           using (SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-MM1UD2Q;Initial Catalog=CIS420;Integrated Security=True"))
           {
               sqlCon.Open();
               SqlCommand sqlcmd = new SqlCommand("SELECT * FROM Locker WHERE MemberID=@MemberID", sqlCon);
               sqlcmd.Parameters.AddWithValue("@MemberID", Session["MemberID"]);
               Session["MemberID"] = sqlcmd.ExecuteScalar();
           }


       }


       protected void gvLocker_Table_RowCommand(object sender, GridViewCommandEventArgs e)
       {

           string LockerSizePlace = gvLocker_Table.FooterRow.FindControl("txtLockerSizeFooter").ToString();
           decimal LockerValue;
           if (LockerSizePlace == "Small")
               LockerValue = 10.00m;
           else if (LockerSizePlace == "Large")
               LockerValue = 20.00m;
           else
               LockerValue = 0.00m;
           string payuser = Session["Username"].ToString();
           string paydescription = "SRC Locker Payment for locker " + gvLocker_Table.FooterRow.FindControl("txtLockerIDFooter").ToString() + " for a locker of size " + LockerSizePlace + " in room " + gvLocker_Table.FooterRow.FindControl("txtLockerRoomFooter").ToString() + ".";
           // Redirect to the payment page.
           Response.Redirect("page.aspx?user=" + payuser + "&money=" + LockerValue + "&description=" + paydescription);
           // LockerValue is the monetary value of the locker payment.


           try
           {
               if (e.CommandName.Equals("Insert"))
               {
                   using (SqlConnection sqlCon = new SqlConnection(@"Data Source=(local)\SS17;initial Catalog=SrcDB;Integrated Security=True;"))
                   {
                       sqlCon.Open();
                       string query = "INSERT INTO Locker (LockerID, Locker_Size, Locker_Room, MemberID) VALUES (@LockerID, @Locker_Size, @Locker_Room, @MemberID)";
                       SqlCommand sqlCmd = new SqlCommand(query, sqlCon);

                       sqlCmd.Parameters.AddWithValue("@LockerID", (gvLocker_Table.FooterRow.FindControl("txtLockerIDFooter") as TextBox).Text.Trim());
                       sqlCmd.Parameters.AddWithValue("@Locker_Size", (gvLocker_Table.FooterRow.FindControl("txtLockerSizeFooter") as TextBox).Text.Trim());
                       sqlCmd.Parameters.AddWithValue("@Locker_Room", (gvLocker_Table.FooterRow.FindControl("txtLockerRoomFooter") as TextBox).Text.Trim());
                       sqlCmd.Parameters.AddWithValue("@MemberID", Session["Username"].ToString());
                       sqlCmd.ExecuteNonQuery();
                       PopulatedGridView();

                   }
               }
           }
           catch (Exception ex)
           {

           }
       }
       */
        /*    protected void gvLocker_Table_RowEditing(object sender, GridViewEditEventArgs e)
            {
                gvLocker_Table.EditIndex = e.NewEditIndex;
                PopulatedGridView();
            }

            protected void gvLocker_Table_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
            {
                gvLocker_Table.EditIndex = -1;
                PopulatedGridView();
            }

            protected void gvLocker_Table_RowUpdating(object sender, GridViewUpdateEventArgs e)
            {
                try
                {

                    using (SqlConnection sqlCon = new SqlConnection(@"Data Source=(local)\SS17;initial Catalog=SrcDB;Integrated Security=True;"))
                    {
                        sqlCon.Open();
                        string query = "UPDATE Locker SET LockerID=@LockerID, Locker_Size=@Locker_Size, Locker_Room=@Locker_Room, MemberID=@MemberID WHERE LockerID = @id";
                        SqlCommand sqlCmd = new SqlCommand(query, sqlCon);

                        sqlCmd.Parameters.AddWithValue("@LockerID", (gvLocker_Table.Rows[e.RowIndex].FindControl("txtLockerID") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Locker_Size", (gvLocker_Table.Rows[e.RowIndex].FindControl("txtLockerSize") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Locker_Room", (gvLocker_Table.Rows[e.RowIndex].FindControl("txtLockerRoom") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@id", Convert.ToInt32(gvLocker_Table.DataKeys[e.RowIndex].Value.ToString()));
                        sqlCmd.ExecuteNonQuery();
                        gvLocker_Table.EditIndex = -1;
                        PopulatedGridView();

                        lblSuccessMessage.Text = "Locker Updated";
                        lblErrorMessage.Text = "";
                    }

                }
                catch (Exception ex)
                {
                    lblSuccessMessage.Text = "";
                    lblErrorMessage.Text = ex.Message;
                }
            }

            protected void gvLocker_Table_RowDeleting(object sender, GridViewDeleteEventArgs e)
            {
                try
                {
                    using (SqlConnection sqlCon = new SqlConnection(@"Data Source=(local)\SS17;initial Catalog=SrcDB;Integrated Security=True;"))
                    {
                        sqlCon.Open();
                        string query = "DELETE FROM Locker WHERE LockerID = @id";
                        SqlCommand sqlCmd = new SqlCommand(query, sqlCon);

                        sqlCmd.Parameters.AddWithValue("@id", Convert.ToInt32(gvLocker_Table.DataKeys[e.RowIndex].Value.ToString()));
                        sqlCmd.ExecuteNonQuery();
                        PopulatedGridView();
                        lblSuccessMessage.Text = "Locker Deleted";
                        lblErrorMessage.Text = "";
                    }

                }
                catch (Exception ex)
                {
                    lblSuccessMessage.Text = "";
                    lblErrorMessage.Text = ex.Message;
                }
            }
            */
    }
}
