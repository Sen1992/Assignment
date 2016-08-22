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
        Response.Redirect(url);

    }
    protected void MasterCode(object sender, EventArgs e)
    {
        String url = "";
        url = "~/Auth/ShowSourceCode.aspx?path=" +"~/MasterPage_user.master";
        Response.Redirect(url);
    }
    protected void Changeskin(object sender, EventArgs e)
    {
        string[] skinsStr = { "black", "red", "blue", "none" };
        List<String> skins = new List<string>(skinsStr);
        string url = Request.ServerVariables["SCRIPT_NAME"];
        Random ran = new Random();
        int index = ran.Next() % 4;
        Response.Redirect(url + "?theme="+skins[index].ToString());
    }
}
