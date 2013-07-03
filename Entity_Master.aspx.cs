using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using StudentTracker;

public partial class Entity_Master : System.Web.UI.Page
{
    StudentTracker.EntityGroupMaster objBL = new EntityGroupMaster();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void savebutton_Click(object sender, ImageClickEventArgs e)
    {
        string date1 = "2003/04/12 08:05:00";
        DateTime dt = Convert.ToDateTime(date1); 
        objBL.InsertData(textentitycode.Text, textentityname.Text, textaddress.Text, texteffectivefrom.Text, texteffectiveto.Text, "A", "2003/04/12 08:05:00", "12",dt, "12");
    }
}
