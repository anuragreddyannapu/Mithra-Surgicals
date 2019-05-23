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

namespace LoginWebApplication
{
    public partial class LoginMithra2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void Loginbtn_Click(object sender, EventArgs e)
        {
            //Session["Email"] = " Welcome To " + EmailTxt.Value;
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["MyDBConn"].ConnectionString);
            SqlCommand cmd = new SqlCommand("SPCheckEmailAndPasswordDetails", con);
            con.Open();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Email", EmailTxt.Value);
            cmd.Parameters.AddWithValue("@Password", PasswordTxt.Value);

            //*We Can Do this way Also*//
            //SqlParameter p1 = new SqlParameter("@Email", TextBox1.Text);
            //SqlParameter p2 = new SqlParameter("@Password", TextBox2.Text);
            //cmd.Parameters.Add(p1);
            //cmd.Parameters.Add(p2);
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.HasRows)
            {
                rd.Read();
                string lg = rd["FristName"].ToString() + " " + rd["LastName"].ToString();
                Label1.Text = "Login successful.";
                Session["UserName"] = lg;
                Response.Redirect("MyMithraLogin.aspx");

            }
            else
            {
                Label1.Text = "Invalid username or password.";
            }
            con.Close();
            EmailTxt.Value = "";
        }
    }
    
}