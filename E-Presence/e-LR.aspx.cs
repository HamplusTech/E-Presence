using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class e_LR : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private void SetTimer()
    {
        string time = tbTimer.Text;
        int totalSeconds = 0;
        if (!string.IsNullOrEmpty(time))
        {
            string[] timeParts = time.Split(':');
            string hours = timeParts[0];
            string minutes = timeParts[1];
            string secons = timeParts[2];
            int hoursCnt, minutesCnt, seconsCnt;
            Int32.TryParse(hours, out hoursCnt);
            Int32.TryParse(minutes, out minutesCnt);
            Int32.TryParse(secons, out seconsCnt);
            totalSeconds = hoursCnt * 60 * 60 + minutesCnt * 60 + seconsCnt;
            if (totalSeconds == 0)
            {
                //Time up, Write you logic here,like exam report.
                return;
            }
        }
        ScriptManager.RegisterStartupScript(this, this.GetType(), "startTimer", "CreateTimer('" + lblTimer.ClientID + "'," + totalSeconds + ");", true);
    }
    //User clicks on this button ,to start the test.
    protected void btnproceed_Click(object sender, EventArgs e)
    {
      int  EXAM_TIME=1500;
        //Write ur logic , below EXAM_TIME is a constant variable.
        ScriptManager.RegisterStartupScript(this, this.GetType(), "startTimer", "CreateTimer('" + lblTimer.ClientID + "'," + EXAM_TIME + ");", true);
    }
    //User clicks on the “Next” button.
    protected void btnnext_Click(object sender, EventArgs e)
    {
        SetTimer();
    }
    protected void ExamTimeOut(object sender, EventArgs e)
    {
        SetTimer();
    }

}
