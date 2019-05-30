using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Web.Configuration;
using IFCComponent;

namespace LoginWebApplication
{
    public partial class RegistrationMithra1 : System.Web.UI.Page
    {
        private string message = string.Empty;

        

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void Registerbtn_Click(object sender, EventArgs e)
        {
            //((Button)sender).Enabled = false;
            try
            {
                clsCrypto clscry = new clsCrypto();
                
                String connstr = WebConfigurationManager.ConnectionStrings["MyDBConn"].ConnectionString;
                string Condatasour = connstr.Split(';')[0];
                String dbnamestr = connstr.Split(';')[1];
                string Dbsource = clscry.fDecryptString(Condatasour.Split('=')[1] + "=");
                String dbname = clscry.fDecryptString(dbnamestr.Split('=')[1] + "==");

                String conn = connstr.Replace(dbnamestr.Split('=')[1] + "==", dbname);
                String conns = conn.Replace(Condatasour.Split('=')[1] + "=", Dbsource);
                SqlConnection con = new SqlConnection(conns);
                //SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["MyDBConn"].ConnectionString);
                SqlCommand cmd = new SqlCommand("SPCreateRegistrationDetails", con);
                con.Open();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@FristName", SqlDbType.VarChar).Value = FristNameTxt.Value;
                cmd.Parameters.Add("@LastName", SqlDbType.VarChar).Value = LastNameTxt.Value;
                cmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = EmailTxt.Value;
                cmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = PasswordTxt.Value;
                cmd.Parameters.Add("@ERROR", SqlDbType.TinyInt, 500);
                cmd.Parameters["@ERROR"].Direction = ParameterDirection.Output;
                cmd.ExecuteNonQuery();
                int i = Convert.ToInt32(cmd.Parameters["@ERROR"].Value);
                if (i != 0)
                {
                    //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Your Registred Details  is successfull')", true);
                    Response.Redirect("LoginMithra2.aspx");

                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('This Email Already Exist Please Choose Different Mail ')", true);
                }
                con.Close();
                FristNameTxt.Value = "";
                LastNameTxt.Value = "";
                EmailTxt.Value = "";
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message.ToString());
            }
            
            
                    


        }

       
    }

}




//public void CheckEmail(object sender, EventArgs e)
//{
//    SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["MyDBConn"].ConnectionString);
//    SqlCommand cmd = new SqlCommand();
//    cmd.CommandText = "select * from RegistrationDetails1 where Email = @Email ";
//    cmd.Parameters.AddWithValue("@Email", EmailTxt.Value);
//    cmd.Connection = con;
//    SqlDataReader rd = cmd.ExecuteReader();
//    //Sqldataadapter da = new Sqldataadapter("Select Email from RegistrationDetails1", con);
//    //dataset ds = new dataset();

//    if (rd.HasRows)
//    {
//        Label1.Visible = true;
//        Label1.Text = "Please Choose another User";
//        Label1.ForeColor = System.Drawing.Color.Red;
//    }
//}
