using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Auth_ShowSourceCode : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String fp = Request.QueryString["path"];
        codetitle.Text = fp;
        showcode.Text = ReadFile(Server.MapPath(fp));
        cscodetitle.Text = fp + ".cs";
        showcscode.Text = ReadFile(Server.MapPath(fp + ".cs"));
    }
    private String ReadFile(String filepath)
    {
        String fileoutput = "";
        try
        {
            StreamReader FileReader = new StreamReader(filepath);
            while (FileReader.Peek() > -1)
            {
                fileoutput += FileReader.ReadLine().Replace("<", "&lt;").Replace(" ", "&nbsp;&nbsp;") + "<br />";
            }
            FileReader.Close();
        }
        catch (FileNotFoundException e)
        {
            fileoutput = e.Message;
        }
        return fileoutput;
    }
}