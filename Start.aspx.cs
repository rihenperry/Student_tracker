using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

public partial class Start : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        text_Entity_code.Focus();

    }
    protected void imgSubmit_Click(object sender, ImageClickEventArgs e)
    {
        StudentTracker.User usr = new StudentTracker.User();
        DataTable dt = usr.ValidateUser(text_Entity_code.Text,text_Login_name.Text,txtpassword.Text);
        if (dt.Rows.Count == 0)
        {
            lblerr.Text = "Invalid Username/password combination";
            return;
        }

        Session["UserName"] = dt.Rows[0]["App_User_Name"];
        Session["UserId"] = dt.Rows[0]["App_User_Id"];

        Response.Redirect("Blank.aspx");



    }
}
