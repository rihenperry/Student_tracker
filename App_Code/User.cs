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
using Microsoft.ApplicationBlocks.Data;

/// <summary>
/// Summary description for Area
/// </summary>
/// 
namespace StudentTracker
{
    public class User
    {
        public string strMessage = "";
        private string cnstr = ConfigurationManager.AppSettings[0].ToString();
        public User()
        {
            
        }
        public DataTable ValidateUser(string entity_code,string login_name,string password)
        {
            return SqlHelper.ExecuteDataset(cnstr, "usp_Validate_UserLogin", new object[] { entity_code,login_name, password }).Tables[0];
            DataTable dt = null;
            return dt;
        }

        public Boolean IsvalidToAdd(string appusername,string loginname, string loginpassword,string loginpasswordagain)
        {

            if (appusername.Length == 0)
            {
                strMessage = " Please Enter a Valid User Name";
                return false;
            }
            if(loginname.Length==0)
            {
                strMessage = " Please Enter a Valid Login Name";
                return false;
            }
            if (loginpassword.Length < 6)
            {
                strMessage = " Password Should be at least 6 characters";
                return false;
            }
            if (! loginpassword.Equals(loginpasswordagain))
            {
                strMessage = " Passwords do not Match. Please Reenter";
                return false;
            }
            return true;

        }

        public bool AddUser(string appusername, string loginname, string loginpassword, string username)
        {
            try
            {
                if (!DoesLoginNameExists(loginname))
                {
                    int ret = SqlHelper.ExecuteNonQuery(cnstr, "usp_Ins_AppUserMaster", new object[] { appusername, loginname, loginpassword, username });
                    return true;
                }
                
            }
            catch (Exception ex)
            {
                strMessage = ex.Message;
                return false;
                
            }
            return false;

        }
        public bool DeleteUser(int appuserid,  string username)
        {
            try
            {
                int ret = SqlHelper.ExecuteNonQuery(cnstr, "usp_Del_AppUserMaster", new object[] { appuserid,  username });
                return true;
            }
            catch (Exception ex)
            {
                strMessage = ex.Message;
                return false;

            }

        }
        public bool UpdateUser(int appuserid, string appusername, string loginname, string password, string username)
        {
            try
            {
                int ret = SqlHelper.ExecuteNonQuery(cnstr, "usp_Upd_AppUserMaster", new object[] {  appuserid,  appusername,  loginname,  password,  username });
                return true;
            }
            catch (Exception ex)
            {
                strMessage = ex.Message;
                return false;

            }

        }


        public bool DoesLoginNameExists(string loginname)
        {
            int exists = Convert.ToInt32(SqlHelper.ExecuteScalar(cnstr, "usp_Check_LoginExists", new object[] { loginname }));
            if (exists.Equals(0))
            {
                
                return false;

            }
            else
            {
                strMessage = "Login Name Exists, Please Specify another Login Name";   
                return true;
            }
            
        }

        public DataSet GetAppTasksMappedToUser(int appuserid)
        {
            try
            {
                return SqlHelper.ExecuteDataset(cnstr, "usp_Sel_AppUserSecurityMaster", new object[] { appuserid });
            }
            catch (Exception ex)
            {
                strMessage = ex.Message;
                return null;

            }
        }

        public void UpdateTaskFlagForUser(int appuserid, int groupid, int formid, int authflag)
        {
            try
            {
                int ret = SqlHelper.ExecuteNonQuery(cnstr, "usp_Upd_AppUserSecurityMaster", new object[] { appuserid, groupid,  formid,  authflag});
            }
            catch (Exception ex)
            {
                strMessage = ex.Message;
                return ;

            }

        }

        public bool ChangePassword(int appuserid, string oldpassword, string newpassword, string username, string newpasswordagain)
        {
            if (newpassword.Length < 6)
            {
                strMessage = " Password Should be at least 6 characters";
                return false;
            }
            if(!newpassword.Equals(newpasswordagain))
            {
                strMessage = "New Passsword re-entered does not match";
                return false;
            }

            try
            {
                int ret = SqlHelper.ExecuteNonQuery(cnstr, "usp_ChangePassword", new object[] { appuserid, oldpassword, newpassword, username });
                return true;
            }
            catch (Exception ex)
            {
                strMessage = ex.Message;
                return false;

            }

        }

    }
}
