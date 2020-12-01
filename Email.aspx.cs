using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace CIS420SmitPatel
{
    public partial class Email : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSend_Click(object sender, EventArgs e)
        {
            MailMessage mailMessage = new MailMessage();
            mailMessage.From = new MailAddress("your Email-ID");
            mailMessage.To.Add("To whom you want to send mail");
            mailMessage.Subject = txtSubject.Text;
            mailMessage.Body = txtMessage.Text;
            mailMessage.IsBodyHtml = true;
            SmtpClient smtpClient = new SmtpClient("smtp.louisville.edu", 587);
            smtpClient.EnableSsl = true;
            smtpClient.Credentials = new System.Net.NetworkCredential("your Email-ID", "your Email Password");
            smtpClient.Send(mailMessage);

        }

        protected void BtnDiscard_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("StaffHome.aspx");
        }
    }
}