using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Text;

public partial class Site : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
      /*  if (HttpContext.Current.Session["UserId"] == null)
        {
            Response.Redirect("default.aspx");
        }
        lblLoggedInUser.Text = "Logged in User : " + HttpContext.Current.Session["UserName"].ToString();*/

    }

  /*  public string GetMenuItemsAsHTMLString()
    {
        string strMenuText = "";
        StudentTracker.Menu mnu = new StudentTracker.Menu();
        int appuserid = Convert.ToInt32(HttpContext.Current.Session["UserId"].ToString());
        if (Session["MenuText"] == null)
        {
            strMenuText = mnu.GenerateMenuAsHTML(appuserid);
            Session["MenuText"] = strMenuText;
        }
        else
        {
            strMenuText = Session["MenuText"].ToString();
        }
        return strMenuText;

    }*/
    private void logout()
    {
        Session.Clear();
        Response.Redirect("default.aspx");

    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        logout();
    }
}
