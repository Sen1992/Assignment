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

    }
    protected void Register(object sender, EventArgs e)
    {
        try
        {
            users.InsertParameters[0].DefaultValue = UNTextbox.Text;
            users.InsertParameters[1].DefaultValue = PWTextbox.Text;
            users.InsertParameters[2].DefaultValue = RadioButtonList1.SelectedValue;
            users.InsertParameters[3].DefaultValue = DropDownList1.SelectedValue;
            users.InsertParameters[4].DefaultValue = EmailTextbox.Text;
            users.InsertParameters[5].DefaultValue = PhoneTextbox.Text;
            users.InsertParameters[6].DefaultValue = HPTextbox.Text;
            users.Insert();
        }
        catch (Exception exp) {
            Response.Write("<Script Language=JavaScript>...alert('Register fialed');window.navigate('~/register.aspx');</Script>");
        }

        Response.Write("<script Language=JavaScript>alert('Register successfully');</script>");
        Server.Transfer("login.aspx");
    }
    /*
    protected void LengthTest(object source, ServerValidateEventArgs args) {
        if (args.Value.Length < 6 || args.Value.Length > 18)
        {
            args.IsValid = false;
        }
        else {
            args.IsValid = true;
        }
    }*/
    protected void users_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}