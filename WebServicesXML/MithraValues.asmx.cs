using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Data.SqlTypes;
using System.IO;
using IFCComponent;
using System.Web.UI;
//using SourceCode.Hosting.Client.BaseAPI;
using System.Globalization;
using System.Text;
using System.Text.RegularExpressions;
using System.Web.Configuration;

namespace WebServicesXML
{
    /// <summary>
    /// Summary description for MithraValues
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class MithraValues : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }

        #region Databse Connections

        private string MYDBConnectionState()
        {
            string strCon = ConfigurationManager.ConnectionStrings["MYDBConnection"].ConnectionString;
            return strCon;
        }
        private string DBConnectionState()
        {
            string strCon = ConfigurationManager.ConnectionStrings["DBConnection"].ConnectionString;
            return strCon;
        }
        private string TeleformDBConnectionState()
        {
            string strCon = ConfigurationManager.ConnectionStrings["TeleformDBConnection"].ConnectionString;
            return strCon;
        }
        private string RPADBConnectionState()
        {
            string strCon = ConfigurationManager.ConnectionStrings["RPADBConnection"].ConnectionString;
            return strCon;
        }
        #endregion

        [WebMethod]

        public string GetEmail(string FristName, string LastName)
        {

            string emailid = string.Empty;

            try
            {

                SqlDataReader dr;
                using (SqlConnection con = new SqlConnection(MYDBConnectionState()))
                {


                    SqlCommand cmd = new SqlCommand("SPNBSelectValue", con);

                    cmd.CommandType = CommandType.StoredProcedure;
                    //cmd.CommandType = CommandType.Text;
                    cmd.Parameters.Add("@LastName", SqlDbType.VarChar).Value = LastName;
                    cmd.Parameters.Add("@FristName", SqlDbType.VarChar).Value = FristName;
                    //SqlDataReader dr = new SqlDataReader();
                    con.Open();
                    dr = cmd.ExecuteReader();

                    while (dr.Read())
                    {

                        emailid = dr["Email"].ToString();

                    }
                    con.Close();

                }

            }
            catch (Exception ex)
            {

                Console.WriteLine(ex.Message);

            }
            return emailid;




        }

        [WebMethod]

        public string GetSubClass(int WorkflowId) {
            string SubClass = string.Empty;

            try
            {

                SqlDataReader dr;
                using (SqlConnection con = new SqlConnection(MYDBConnectionState()))
                {


                    SqlCommand cmd = new SqlCommand("SPNBGetSubClass", con);

                    cmd.CommandType = CommandType.StoredProcedure;
                    //cmd.CommandType = CommandType.Text;
                    cmd.Parameters.Add("@WorkflowId", SqlDbType.VarChar).Value = WorkflowId;
                    
                    //SqlDataReader dr = new SqlDataReader();
                    con.Open();
                    dr = cmd.ExecuteReader();

                    while (dr.Read())
                    {

                        SubClass = dr["Field5"].ToString();

                    }
                    con.Close();

                }



            }
            catch (Exception ex) {

                Console.WriteLine(ex.Message);
            }
            return SubClass;

        }
    }
}
