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
    }
    protected void Page_PreInit(object sender, EventArgs e)
    {
        System.Diagnostics.Debug.WriteLine("theme");
        if (Request.QueryString["theme"] != null)
        {
            Page.Theme = Request.QueryString["theme"].ToString();
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