using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class preview_dotnet_templates_the_big_picture_login : System.Web.UI.Page
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
    protected void CheckLogin(object sender, SqlDataSourceStatusEventArgs e)
    {
        if (e.AffectedRows > 0)
        {
            
            System.Web.Security.FormsAuthentication.RedirectFromLoginPage(Login.UserName,false);
        }
        else
        {
            Login.FailureText="User Name or Password is wrong";
        }

    }
    protected void Login_Authenticate(object sender, AuthenticateEventArgs e)
    {
        UserLogin.SelectCommand = "SELECT * FROM [user] WHERE username = '" + Login.UserName + "' AND password = '" + Login.Password + "'";
 //       UserLogin.Select(DataSourceSelectArguments.Empty);

        if (UserLogin.Select(DataSourceSelectArguments.Empty).GetEnumerator().MoveNext())
        {
            System.Web.Security.FormsAuthentication.RedirectFromLoginPage(Login.UserName, false);
        }
        else
        {
            Login.FailureText = "Invalid Login";
        }

    }

}