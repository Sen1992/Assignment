using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class SiteMap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LinkButton code1link = (LinkButton)Master.FindControl("code1link");
        LinkButton code2link = (LinkButton)Master.FindControl("code2link");
        code1link.Text = "Site Map";
        code2link.Visible = false;
        GetEventDates();
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

    private void GetEventDates()
    {
        String strConnection = dsEvent.ConnectionString;

        using(OleDbConnection objConnection=new OleDbConnection(strConnection)){
            objConnection.Open();
            OleDbCommand sqlcmd = new OleDbCommand(@"select EventDate from Events",objConnection);
            OleDbDataReader reader = sqlcmd.ExecuteReader();
            LinkedList<DateTime> selday = new LinkedList<DateTime>();
            while (reader.Read()) {
                string time = reader["EventDate"].ToString();
                DateTime current = Convert.ToDateTime(time);
                selday.AddFirst(current);
                Calendar1.SelectedDates.Add(current);
            }
            Session.Add("eventdate", selday);
            reader.Close();
                
        }
    }
    protected void Calendar1_Init(object sender, EventArgs e)
    {
        displayEvent.Text = GetEventDetails(e);
    }

    private string GetEventDetails(EventArgs e)
    {
        string eventDetails = "";
        string nextDay = Calendar1.SelectedDate.AddDays(1).ToShortDateString();
        string selectedDay = Calendar1.SelectedDate.ToShortDateString();
        dsEvent.SelectCommand = "select [EventDate],[EventDescription] from [Events] where ([EventDate]< #"+
            nextDay+"# and [EventDate]> #" +selectedDay+"#)";
        DataView dv = (DataView)dsEvent.Select(DataSourceSelectArguments.Empty);
        if (dsEvent.Select(DataSourceSelectArguments.Empty).GetEnumerator().MoveNext())
        {
            string eventDaystr = dv.Table.Rows[0][0].ToString();
            DateTime eventDay = Convert.ToDateTime(eventDaystr);
            eventDaystr = eventDay.ToShortTimeString();
            eventDetails = "At " + eventDaystr + ", " + dv.Table.Rows[0][1].ToString();
        }
        else
            eventDetails = "No event for today!";
        return eventDetails;
    }
    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        LinkedList<DateTime> displaydate = (LinkedList<DateTime>)Session["eventdate"];
        try {
            for (int i = displaydate.Count; i > 0;i--)
            {
                Calendar1.SelectedDates.Add(displaydate.First.Value);
                displaydate.RemoveFirst();
            }
        }
        catch(System.NullReferenceException ex){
            displayEvent.Text = ex.Message;
        }
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        displayEvent.Text = GetEventDetails(e);
    }
}