using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

public partial class SendMail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
        MailMessage newMsg = new MailMessage();
        foreach(GridViewRow gvRow in gv_receiver.Rows){
            CheckBox cb = (CheckBox)gvRow.FindControl("cb_email");

            if(cb!=null&&cb.Checked){
                newMsg.To.Add(new MailAddress(gvRow.Cells[1].Text,gvRow.Cells[0].Text));
            }
        }
        newMsg.From = new MailAddress("yzh190@student.monash.edu", "Lancelot");
        newMsg.Subject = tb_subject.Text;
        newMsg.Body = tb_message.Text;

        try
        {
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.monash.edu.au";
            smtp.Port = 465;
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = new NetworkCredential("yzh190@student.monash.edu", "De@h75193");
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.EnableSsl = true;
            smtp.Send(newMsg);
            lbl_Mail.Text = "Email successfully sent";
            lbl_Mail.Visible = true;
        }
        catch (Exception exc) {
            lbl_Mail.Text = exc.Message;
            lbl_Mail.Visible = true;
            tb_message.Text = newMsg.From.Address + exc.StackTrace;
        }
    }
}