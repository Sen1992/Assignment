using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Auth_SelecteUsers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LinkButton code1link = (LinkButton)Master.FindControl("code1link");
        LinkButton code2link = (LinkButton)Master.FindControl("code2link");
        code1link.Text = "Search Records";
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
    protected void Findusers(object sender, EventArgs e) {
        Button btn = (Button)sender;
        switch (btn.CommandName) { 
            case    "User":
                select.SelectCommand = "select * from [user] where username like '%" + txtUser.Text.Trim(' ') + "%'";
                break;

            case    "Email":
                select.SelectCommand = "select * from [user] where email like '%" + txtEmail.Text.Trim(' ') + "%'";
                break;

            case    "Degree":
                select.SelectCommand = "select * from [user] where gender ='" + GenderList.SelectedValue.Trim(' ')+"'";
                break;
        }
        lv.DataSource = select;
        lv.DataBind();
    }
}