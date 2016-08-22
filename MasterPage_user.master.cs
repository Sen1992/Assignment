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

        ScriptManager.RegisterStartupScript(displayLogin, this.Page.GetType(), "", "display();", true);

    }
    protected void Logout(object sender, EventArgs e) {
        System.Web.Security.FormsAuthentication.SignOut();
        hluser.Text = "";
        Response.Redirect("~/Home.aspx");
        
    }
    protected void ContentCode(object sender, EventArgs e)
    {
        String url = "";
        url = "~/Auth/ShowSourceCode.aspx?path=" + Request.ServerVariables["SCRIPT_NAME"];
        System.Diagnostics.Debug.Write("mingzi" + Request.ServerVariables["SCRIPT_NAME"]);
        Response.Redirect(url);

    }
    protected void MasterCode(object sender, EventArgs e)
    {
        String url = "";
        url = "~/Auth/ShowSourceCode.aspx?path=" +"~/MasterPage_user.master";
        System.Diagnostics.Debug.Write("ZHe ni ma" +url);
        Response.Redirect(url);
    }
}
