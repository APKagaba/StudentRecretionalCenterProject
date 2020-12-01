using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

namespace CIS420SmitPatel
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtTo.Text = Request.QueryString["Email"];
        }

        protected void BtnSend_Click(object sender, EventArgs e)
        {
            try
            {
                MailMessage mailMessage = new MailMessage("louisvillesrcstaff@gmail.com", "spatel45677@gmail.com");

                mailMessage.Subject = txtSubject.Text;
                mailMessage.Body = txtMessage.Text;
                mailMessage.IsBodyHtml = true;
                SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
                smtpClient.EnableSsl = true;
                smtpClient.Credentials = new System.Net.NetworkCredential("louisvillesrcstaff@gmail.com", "Admin123@");
                smtpClient.Send(mailMessage);
                lblSuccess.Text = "Email has been sent!";
                txtTo.Text = "";
                txtSubject.Text = "";
                txtMessage.Text = "";
            }
            catch (Exception ex)
            {
               
            }
            
        }

        protected void BtnDiscard_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("StaffHome.aspx");
        }
    }
}