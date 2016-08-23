using System;
using System.Collections;
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
        String fp = Request.QueryString["path"].Trim(' ');

        if (fp.Equals("/Auth/Documentation.aspx"))
        {
            DirectoryInfo dir = new DirectoryInfo(Server.MapPath("../css"));
            ArrayList filelist = new ArrayList();
            foreach (FileInfo file in dir.GetFiles())
            {
                filelist.Add(file.Name);
            }
            dlFiles.DataSource = filelist;
            dlFiles.DataBind();
        }
        else if (fp.Equals("/Auth/AboutUs.aspx")) {
                codetitle.Text = fp;
                showcode.Text = ReadFile(Server.MapPath(fp));
                cscodetitle.Text = fp + ".cs";
                showcscode.Text = ReadFile(Server.MapPath(fp + ".cs"));
                String history = fp.Replace("AboutUs", "History");
                String faq = fp.Replace("AboutUs", "FAQ");
                histitle.Text = history;
                showhistory.Text = ReadFile(Server.MapPath(history));
                faqtitle.Text = faq;
                showfaq.Text = ReadFile(Server.MapPath(faq));
       }
        else if (fp.Equals("/login.aspx"))
        {
            codetitle.Text = fp;
            showcode.Text = ReadFile(Server.MapPath(fp));
            cscodetitle.Text = fp + ".cs";
            showcscode.Text = ReadFile(Server.MapPath(fp + ".cs"));
            String webconfig1 = fp.Replace("login.aspx", "Web.config");
            String webconfig2 = fp.Replace("login.aspx", "Auth/Web.config");
            histitle.Text = webconfig1;
            showhistory.Text = ReadFile(Server.MapPath(webconfig1));
            faqtitle.Text = webconfig2;
            showfaq.Text = ReadFile(Server.MapPath(webconfig2));
        }else if(fp.Equals("Skin")){
            DirectoryInfo dir = new DirectoryInfo(Server.MapPath("../App_Themes"));
            ArrayList filelist = new ArrayList();
            foreach (DirectoryInfo skindirs in dir.GetDirectories())
            {
                foreach (FileInfo file in skindirs.GetFiles()) {
                    filelist.Add(file.Directory.Name+"/"+file.Name);
                }          
            }
            dlfiles1.DataSource = filelist;
            dlfiles1.DataBind();

        }
        else {
            codetitle.Text = fp;
            showcode.Text = ReadFile(Server.MapPath(fp));
            cscodetitle.Text = fp + ".cs";
            showcscode.Text = ReadFile(Server.MapPath(fp + ".cs"));
        }
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
            return "No .cs file for thos part code.";
        }
        return fileoutput;
    }
}