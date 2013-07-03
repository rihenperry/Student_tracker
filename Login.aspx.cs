using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        textlogincode.Text = "";
        textloginname.Text = "";
        textloginpassword.Text = "";
    }
    protected void buttonlogin_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection("Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=StuTracker;Data Source=ANSLEY-PC");



            string qry = "";
            qry = "select ENTITY_CODE,LOGIN_NAME,PWD from APP_USER_MASTER where ENTITY_CODE= '" + textlogincode.Text.Trim().Replace("'", "''") + "' and  LOGIN_NAME= '" + textloginname.Text.Trim().Replace("'", "''") + "' and PWD='" + textloginpassword.Text.Trim().Replace("'", "''") + "'";
            SqlCommand cmd = new SqlCommand(qry);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
               
            }
            else
            {
                lblerror.Text = "Please check User Name and Password";
                textlogincode.Focus();
            }
        }
        catch (Exception e1)
        {
            lblerror.Text = Convert.ToString(e1);
        }
 
    }
   
}
