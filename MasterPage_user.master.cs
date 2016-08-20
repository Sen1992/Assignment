using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage_user : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.User.Identity.IsAuthenticated)
            hluser.Text = Page.User.Identity.Name.ToString();
        else
            hluser.Text = "";
    }
    protected void Logout(object sender, EventArgs e) {
        System.Web.Security.FormsAuthentication.SignOut();
        Server.Transfer("~/Home.aspx");
        
    }
}
