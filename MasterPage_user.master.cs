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
        Response.Redirect(url,"_blank","");
    }
    protected void MasterCode(object sender, EventArgs e)
    {
        String url = "";
        if (Request.ServerVariables["SCRIPT_NAME"].Equals("/Home.aspx"))
            url = "~/Auth/ShowSourceCode.aspx?path=" + "~/MasterPage_user.master";
        else
            url = "~/Auth/ShowSourceCode.aspx?path=" + "Skin";
        Response.Redirect(url, "_blank","");
    }
    protected void Changeskin(object sender, EventArgs e)
    {
        string[] skinsStr = { "black", "red", "blue", "none" };
        List<String> skins = new List<string>(skinsStr);
        string url = Request.ServerVariables["SCRIPT_NAME"];
        Random ran = new Random();
        int index = ran.Next() % 4;
        Session["Theme"] = skins[index];
        Server.Transfer(Request.Path);
    }
}
public static class ResponseHelper
{
    public static void Redirect(this HttpResponse response, string url, string target, string windowFeatures)
    {

        if ((String.IsNullOrEmpty(target) || target.Equals("_self", StringComparison.OrdinalIgnoreCase)) && String.IsNullOrEmpty(windowFeatures))
        {
            response.Redirect(url);
        }
        else
        {
            Page page = (Page)HttpContext.Current.Handler;

            if (page == null)
            {
                throw new InvalidOperationException("Cannot redirect to new window outside Page context.");
            }
            url = page.ResolveClientUrl(url);

            string script;
            if (!String.IsNullOrEmpty(windowFeatures))
            {
                script = @"window.open(""{0}"", ""{1}"", ""{2}"");";
            }
            else
            {
                script = @"window.open(""{0}"", ""{1}"");";
            }
            script = String.Format(script, url, target, windowFeatures);
            ScriptManager.RegisterStartupScript(page, typeof(Page), "Redirect", script, true);
        }
    }
}
