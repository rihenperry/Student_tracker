using Microsoft.ApplicationBlocks.Data;
using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Text;



/// <summary>
/// Summary description for Area
/// </summary>
/// 
namespace StudentTracker
{
    public class Menu
    {
        public string strMessage = "";
        private string cnstr = ConfigurationManager.AppSettings[0].ToString();
        public Menu()
        {

        }
        public string GenerateMenuAsHTML(int appuserid)
        {
            DataTable dTable = null;
            dTable=SqlHelper.ExecuteDataset(cnstr, "usp_BuildMainMenu", new object[] { appuserid }).Tables[0];
            StringBuilder sb = new StringBuilder();
            int first = 0;
            string gname = "";
            string lastgroupid = "-1";
            string currgroupid = "-10";

            foreach (DataRow dRow in dTable.Rows)
            {
                currgroupid = dRow["Group_Id"].ToString();
                if (currgroupid.Equals(lastgroupid)) //same group
                {
                    sb.AppendLine("<a href=\"" + dRow["Form_Name"] + "\">" + dRow["Display_name"] + "</a>");
                }
                else
                {
                    if (first != 0) sb.AppendLine("</div>");
                    sb.AppendLine("<div><span>" + dRow["Group_Name"] + "</span>");
                    sb.AppendLine("<a href=\"" + dRow["Form_Name"] + "\">" + dRow["Display_name"] + "</a>");
                }


                lastgroupid = dRow["Group_Id"].ToString();
                first = 1;

            }
            sb.AppendLine("</div>");
            return sb.ToString();
        }



    }
}
