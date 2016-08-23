using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class preview_dotnet_templates_registration_Form_index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LinkButton code1link = (LinkButton)Master.FindControl("code1link");
        LinkButton code2link = (LinkButton)Master.FindControl("code2link");
        code1link.Text = "Add Records";
        code2link.Visible = false;
    }
    protected void Page_PreInit(object sender, EventArgs e)
    {
        if (Session["Theme"] != null)
        {
            Page.Theme = (String)Session["Theme"];
        }
        else
        {

            Page.Theme = "none";
        }
    }
    protected void Register(object sender, EventArgs e)
    {
        Boolean flag = false;
        String hobby = "";
        if (ckmusic.Checked) {
            hobby = hobby + ckmusic.Text + " ";
            flag = true;
        }
        if (ckreading.Checked) {
            hobby = hobby + ckreading.Text + " ";
            flag = true;
        }
        if (cksprot.Checked) {
            hobby = hobby + cksprot.Text + " ";
            flag = true;
        }
        if (cktravel.Checked) {
            hobby = hobby + cktravel.Text + " ";
            flag = true;
        }
        if (flag == false)
            hobby = "None";
        try
        {
            users.InsertParameters[0].DefaultValue = UNTextbox.Text;
            users.InsertParameters[1].DefaultValue = PWTextbox.Text;
            users.InsertParameters[2].DefaultValue = RadioButtonList1.SelectedValue;
            users.InsertParameters[3].DefaultValue = DropDownList1.SelectedValue;
            users.InsertParameters[4].DefaultValue = EmailTextbox.Text;
            users.InsertParameters[5].DefaultValue = PhoneTextbox.Text;
            users.InsertParameters[6].DefaultValue = HPTextbox.Text;
            users.InsertParameters[7].DefaultValue = hobby;
            users.Insert();
        }
        catch (Exception exp) {
            Response.Write("<Script Language=JavaScript>...alert('Register fialed');window.navigate('~/register.aspx');</Script>");
        }
        userdisplay.Text = "<table><tr><td><strong>User Name:<strong></td><td>&nbsp;&nbsp;&nbsp;&nbsp;</td><td>" + UNTextbox.Text +"</td></tr>" +
            "<tr><td><strong>Password:</strong></td><td>&nbsp;&nbsp;&nbsp;&nbsp;</td><td>" + PWTextbox.Text + "</td></tr>" +
            "<tr><td><strong>PhoneNo:</strong></td><td>&nbsp;&nbsp;&nbsp;&nbsp;</td><td>" + RadioButtonList1.SelectedValue + "</td></tr>" +
            "<tr><td><strong>Gender:</strong></td><td>&nbsp;&nbsp;&nbsp;&nbsp;</td><td>" + DropDownList1.SelectedValue + "</td></tr>" +
            "<tr><td><strong>Email:<strong></td><td>&nbsp;&nbsp;&nbsp;&nbsp;</td><td>" + EmailTextbox.Text + "</td></tr>" +
            "<tr><td><strong>Degree:</strong></td><td>&nbsp;&nbsp;&nbsp;&nbsp;</td><td>" + PhoneTextbox.Text + "</td><tr>" +
            "<tr><td><strong>Hobby:</strong></td><td>&nbsp;&nbsp;&nbsp;&nbsp;</td><td>" + hobby + "</td><tr>" +
            "<tr><td><strong>HomePage:</strong></td><td>&nbsp;&nbsp;&nbsp;&nbsp;</td><td>" + HPTextbox.Text + "</td><tr></table>";
    }
    protected void users_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}