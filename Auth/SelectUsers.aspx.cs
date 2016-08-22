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