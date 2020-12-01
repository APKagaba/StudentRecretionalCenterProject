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
    
    public partial class WebForm7 : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlcon = new SqlConnection(connectionString))
            {

                sqlcon.Open();
                string query = ("INSERT INTO tblCountSheet (Time, WeightRoom, SportClubRoom, MainGymFloor, MACCourt, Annex, GroupFitness200, GroupFitness201, GolfSimulator, RacquetballCourt, RunningTrack, SkyGym, QdobaGamingArea, TheHatfield, Classroom207, Classroom110) " +
                    "VALUES (@Time, @WeightRoom, @SportClubRoom, @MainGymFloor, @MACCourt, @Annex, @GroupFitness200, @GroupFitness201, @GolfSimulator, @RacquetballCourt, @RunningTrack, @SkyGym, @QdobaGamingArea, @TheHatfield, @Classroom207, @Classroom110)");
                SqlCommand sqlcmd = new SqlCommand(query, sqlcon);

                sqlcmd.Parameters.AddWithValue("@Time", DateTime.Now.ToString());
                sqlcmd.Parameters.AddWithValue("@WeightRoom", txtWeightRoom.Text.Trim());
                sqlcmd.Parameters.AddWithValue("@SportClubRoom", txtSportClubRoom.Text.Trim());
                sqlcmd.Parameters.AddWithValue("@MainGymFloor", txtMainGymFloor.Text.Trim());
                sqlcmd.Parameters.AddWithValue("@MACCourt", txtMacCourt.Text.Trim());
                sqlcmd.Parameters.AddWithValue("@Annex", txtAnnex.Text.Trim());

                sqlcmd.Parameters.AddWithValue("@GroupFitness200", txtFitness200.Text.Trim());
                sqlcmd.Parameters.AddWithValue("@GroupFitness201", txtFitness201.Text.Trim());
                sqlcmd.Parameters.AddWithValue("@GolfSimulator", txtGolf.Text.Trim());
                sqlcmd.Parameters.AddWithValue("@RacquetballCourt", txtRacquetball.Text.Trim());
                sqlcmd.Parameters.AddWithValue("@RunningTrack", txtRunningTrack.Text.Trim());

                sqlcmd.Parameters.AddWithValue("@SkyGym", txtSkyGym.Text.Trim());
                sqlcmd.Parameters.AddWithValue("@QdobaGamingArea", txtQdobaGaming.Text.Trim());
                sqlcmd.Parameters.AddWithValue("@TheHatfield", txtHatfield.Text.Trim());
                sqlcmd.Parameters.AddWithValue("@Classroom207", txtClassroom207.Text.Trim());
                sqlcmd.Parameters.AddWithValue("@Classroom110", txtClassroom110.Text.Trim());

                sqlcmd.ExecuteNonQuery();

            }

            txtWeightRoom.Text = "";
            txtSportClubRoom.Text = "";
            txtMainGymFloor.Text = "";
            txtMacCourt.Text = "";
            txtAnnex.Text = "";

            txtFitness200.Text = "";
            txtFitness201.Text = "";
            txtGolf.Text = "";
            txtRacquetball.Text = "";
            txtRunningTrack.Text = "";

            txtSkyGym.Text = "";
            txtQdobaGaming.Text = "";
            txtHatfield.Text = "";
            txtClassroom207.Text = "";
            txtClassroom110.Text = "";

            Response.Write("<script>alert('" + "Count Sheet submited!" + "')</script>");

        }
    }
}