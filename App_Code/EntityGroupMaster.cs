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

/// <summary>
/// Summary description for BrandGroupMaster
/// </summary>
/// 

namespace StudentTracker
{
    public class EntityGroupMaster
    {
        /*private string cnstr = ConfigurationManager.connectionStrings.ToString();*/
        private string cnstr = "Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=StuTracker;Data Source=ANSLEY-PC";
        public EntityGroupMaster()
        {
           
        }
        /*public void DeletData(string strID, string strUser)
        {

            try
            {
                using (SqlConnection scon = new SqlConnection(cnstr))
                {
                    scon.Open();
                    SqlCommand objCommand = new SqlCommand();
                    objCommand.Connection = scon;
                    objCommand.CommandText = "usp_Del_BandGroupMaster";
                    objCommand.CommandType = CommandType.StoredProcedure;

                    SqlParameter sparamID = new SqlParameter("@p_Band_Group_Id", SqlDbType.Int);
                    sparamID.Value = Convert.ToInt32(strID);
                    objCommand.Parameters.Add(sparamID);

                    SqlParameter sparamUser = new SqlParameter("@p_User", SqlDbType.VarChar, 20);
                    sparamUser.Value = strUser;
                    objCommand.Parameters.Add(sparamUser);

                    objCommand.ExecuteNonQuery();
                    scon.Close();
                }

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void UpdateData(string strID, string strName, string strSortOrder, string strUser)
        {

            try
            {
                using (SqlConnection scon = new SqlConnection(cnstr))
                {
                    scon.Open();
                    SqlCommand objCommand = new SqlCommand();
                    objCommand.Connection = scon;

                    objCommand.CommandText = "usp_Upd_BandGroupMaster";
                    objCommand.CommandType = CommandType.StoredProcedure;

                    //@p_Country_Id

                    SqlParameter sparamID = new SqlParameter("@p_Band_Group_Id", SqlDbType.Int);
                    sparamID.Value = Convert.ToInt32(strID);
                    objCommand.Parameters.Add(sparamID);

                    SqlParameter sparamName = new SqlParameter("@p_Band_Group_Name", SqlDbType.VarChar, 20);
                    sparamName.Value = strName;
                    objCommand.Parameters.Add(sparamName);

                    SqlParameter sparamSortorder = new SqlParameter("@p_Sort_Order", SqlDbType.Int);
                    sparamSortorder.Value = Convert.ToInt32(strSortOrder);
                    objCommand.Parameters.Add(sparamSortorder);


                    SqlParameter sparamUser = new SqlParameter("@p_User", SqlDbType.VarChar, 20);
                    sparamUser.Value = strUser;
                    objCommand.Parameters.Add(sparamUser);

                    objCommand.ExecuteNonQuery();
                    scon.Close();

                }


            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        */

        public void InsertData(string entitycode, string entityname, string entityaddress, string effectivefrom, string effectiveto, string recordstatus, string createdate, string createuser, DateTime editdate, string edituser)
        {

            try
            {
                using (SqlConnection scon = new SqlConnection(cnstr))
                {
                    scon.Open();
                    SqlCommand objCommand = new SqlCommand();
                    objCommand.Connection = scon;
                    objCommand.CommandText = "spINSERT_dbo_EntityMaster";
                    objCommand.CommandType = CommandType.StoredProcedure;

                   SqlParameter sparamName1 = new SqlParameter("@ENTITY_CODE", SqlDbType.VarChar, 20);
                    sparamName1.Value = entitycode;
                    objCommand.Parameters.Add(sparamName1);

                    SqlParameter sparamSortorder2 = new SqlParameter("@ENTITY_NAME", SqlDbType.VarChar, 20);
                    sparamSortorder2.Value = entityname;
                    objCommand.Parameters.Add(sparamSortorder2);


                    SqlParameter sparamUser3 = new SqlParameter("@ENTITY_ADDRESS", SqlDbType.VarChar, 20);
                    sparamUser3.Value = entityaddress;
                    objCommand.Parameters.Add(sparamUser3);

                    SqlParameter sparamName4 = new SqlParameter("@EFFECTIVE_FROM", SqlDbType.Date, 20);
                   
                    sparamName4.Value = effectivefrom;
                    objCommand.Parameters.Add(sparamName4);

                    SqlParameter sparamName5 = new SqlParameter("@EFFECTIVE_TO", SqlDbType.Date, 20);
                  
                    sparamName5.Value = effectiveto;
                    objCommand.Parameters.Add(sparamName5);

                   SqlParameter sparamName6 = new SqlParameter("@RECORD_STATUS", SqlDbType.VarChar, 20);
                    sparamName6.Value = recordstatus;
                    objCommand.Parameters.Add(sparamName6);

                    SqlParameter sparamName7 = new SqlParameter("@CREATE_DATE", SqlDbType.Date, 20);
                    sparamName7.Value = createdate;
                    objCommand.Parameters.Add(sparamName7);

                    SqlParameter sparamName8 = new SqlParameter("@CREATE_USER", SqlDbType.Int);
                    sparamName8.Value = Convert.ToInt32(createuser);
                    objCommand.Parameters.Add(sparamName8);

                    SqlParameter sparamName9 = new SqlParameter("@EDIT_DATE", SqlDbType.Date, 20);
                    sparamName9.Value = editdate;
                    objCommand.Parameters.Add(sparamName9);

                    SqlParameter sparamName10 = new SqlParameter("@EDIT_USER", SqlDbType.Int);
                    sparamName10.Value = Convert.ToInt32(edituser);
                    objCommand.Parameters.Add(sparamName10);
                 

                    objCommand.ExecuteNonQuery();
                    scon.Close();
                }

            }
            catch (Exception ex)
            {
                throw (ex);
            }
        }

      /*  public DataTable Fetch(string strMasterType)
        {
            string sql = string.Empty;
            SqlDataAdapter da = null;
            DataTable dt = null;
            switch (strMasterType)
            {
                case "BrandGroup":
                    sql = "select * from vw_BandGroupMaster";
                    da = new SqlDataAdapter(sql, cnstr);
                    dt = new DataTable();
                    da.Fill(dt);
                    break;
            }



            return dt;
        }*/
    }
}
