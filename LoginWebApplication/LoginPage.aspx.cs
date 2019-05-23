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
    public partial class SignUpPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["MyDBConn"].ConnectionString);
            SqlCommand cmd = new SqlCommand("SPCheckEmailAndPasswordDetails", con);
            con.Open();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Email", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Password", TextBox2.Text);

            //*We Can Do this way Also*//
            //SqlParameter p1 = new SqlParameter("@Email", TextBox1.Text);
            //SqlParameter p2 = new SqlParameter("@Password", TextBox2.Text);
            //cmd.Parameters.Add(p1);
            //cmd.Parameters.Add(p2);
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.HasRows)
            {
                rd.Read();
                Literal1.Text = "Login successful.";
                Response.Redirect("HomePage.aspx");
            }
            else
            {
                Literal1.Text = "Invalid username or password.";
            }
            con.Close();
            TextBox1.Text = "";
        }
    }
}