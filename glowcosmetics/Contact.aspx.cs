using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace glowcosmetics
{
    public partial class Contactform : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsend_Click(object sender, EventArgs e)
        {
            
            SmtpClient client = new SmtpClient();
            client.Host = "smtp.gmail.com";
            client.Port = 587;
            client.EnableSsl = true;
            client.UseDefaultCredentials = true;
            client.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
            client.Timeout = 20000;

            System.Net.NetworkCredential userpass = new System.Net.NetworkCredential();
            userpass.UserName = "glowcosmeticsbn@gmail.com";
            userpass.Password = "glow1234";
            client.Credentials = userpass;
          
           
            MailMessage msg = new MailMessage(txtemail.Text, "glowcosmeticsbn@gmail.com");
            msg.Subject = txtsubject.Text + "   " + "Email from:" + " " + txtname.Text;
            msg.Body = "From:" + "  " + txtemail.Text + " <br/> " + "Subject: " + "  " + txtsubject.Text + "<br/>" + " Message: " + " " + txtmessage.Text;
            msg.IsBodyHtml = true;


            //send the message
            try
            {
                client.Send(msg);
                litresult.Text = "<p>Email sent successfully!</p>";
            
                //clear all textbox
                txtname.Text = "";
                txtemail.Text = "";
                txtsubject.Text = "";
                txtmessage.Text = "";
            }

            catch (Exception ex)
            {
                litresult.Text = "<p>Email failed to send. Please try again!</p>";
            }
        }
  
        protected void btnreset_Click(object sender, EventArgs e)
        {

            txtname.Text = "";
            txtemail.Text = "";
            txtsubject.Text = "";
            txtmessage.Text = "";
        }


    }
}