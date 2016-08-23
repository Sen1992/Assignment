using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Auth_ShowAllUsers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LinkButton code1link = (LinkButton)Master.FindControl("code1link");
        LinkButton code2link = (LinkButton)Master.FindControl("code2link");
        code1link.Text = "Display Records";
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
    protected void Dispalyuser(object sender, GridViewCommandEventArgs e) {

        lbdisplay.Text = "<table><tr><td><strong>User Name:<strong></td><td>&nbsp;&nbsp;&nbsp;&nbsp;</td><td>" + gvuser.Rows[Convert.ToInt32(e.CommandArgument)].Cells[1].Text + "</td></tr>" +
            "<tr><td><strong>Password:</strong></td><td>&nbsp;&nbsp;&nbsp;&nbsp;</td><td>" + gvuser.Rows[Convert.ToInt32(e.CommandArgument)].Cells[2].Text + "</td></tr>" +
            "<tr><td><strong>PhoneNo:</strong></td><td>&nbsp;&nbsp;&nbsp;&nbsp;</td><td>" + gvuser.Rows[Convert.ToInt32(e.CommandArgument)].Cells[3].Text + "</td></tr>" +
            "<tr><td><strong>Gender:</strong></td><td>&nbsp;&nbsp;&nbsp;&nbsp;</td><td>" + gvuser.Rows[Convert.ToInt32(e.CommandArgument)].Cells[4].Text + "</td></tr>" +
            "<tr><td><strong>Email:<strong></td><td>&nbsp;&nbsp;&nbsp;&nbsp;</td><td>" + gvuser.Rows[Convert.ToInt32(e.CommandArgument)].Cells[5].Text + "</td></tr>" +
            "<tr><td><strong>Degree:</strong></td><td>&nbsp;&nbsp;&nbsp;&nbsp;</td><td>" + gvuser.Rows[Convert.ToInt32(e.CommandArgument)].Cells[6].Text + "</td><tr>" +
            "<tr><td><strong>HomePage:</strong></td><td>&nbsp;&nbsp;&nbsp;&nbsp;</td><td>" + gvuser.Rows[Convert.ToInt32(e.CommandArgument)].Cells[7].Text +
            "<tr><td><strong>Hobby:</strong></td><td>&nbsp;&nbsp;&nbsp;&nbsp;</td><td>" + gvuser.Rows[Convert.ToInt32(e.CommandArgument)].Cells[8].Text + "</td><tr></table>";
        
    }
}