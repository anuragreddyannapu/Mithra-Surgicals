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
    public partial class LoginWebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                    SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["MyDBConn"].ConnectionString);
                    SqlCommand cmd = new SqlCommand();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    cmd.Connection=con;
                    cmd.CommandText = "select * from CountryLookUp";
                    con.Open();
                    da.Fill(ds, "CountryLookUp");
                    con.Close();
                    DropDownList1.DataSource = ds.Tables[0].DefaultView;
                    DropDownList1.DataTextField = "CountryName";
                    DropDownList1.DataValueField = "CountryId";
                    DropDownList1.DataBind();
                    DropDownList1.Items.Insert(0, new ListItem("--Select--", "0"));
                    DropDownList2.Items.Insert(0, new ListItem("--Select--", "0"));
                    DropDownList3.Items.Insert(0, new ListItem("--Select--", "0"));

                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message.ToString());
                }
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e) 
        {
            

            //DateTime myDate = DateTime.ParseExact("2009-05-08 14:40:52,531", "yyyy-MM-dd HH:mm:ss,fff",
            //                           System.Globalization.CultureInfo.InvariantCulture);
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["MyDBConn"].ConnectionString);
            SqlCommand cmd = new SqlCommand("SPCreateRegistrationDetails",con);
            con.Open();
            cmd.CommandType = CommandType.StoredProcedure;

            //  * Can Do This Way Also * //
            //cmd.Parameters.AddWithValue("@FristName", TextBox1.Text);
            //cmd.Parameters.AddWithValue("@LastName", TextBox2.Text);
            //cmd.Parameters.AddWithValue("@Gender", Gender);
            //cmd.Parameters.AddWithValue("@Country", DropDownList1.Text);
            //cmd.Parameters.AddWithValue("@State", DropDownList2.Text);
            //cmd.Parameters.AddWithValue("@DateOfBirth", TextBox3.Text);
            //cmd.Parameters.AddWithValue("@PhoneNumber", TextBox4.Text);
            //cmd.Parameters.AddWithValue("@Email", TextBox5.Text);
            //cmd.Parameters.AddWithValue("@Password", TextBox6.Text);

            cmd.Parameters.Add("@FristName", SqlDbType.VarChar).Value = TextBox1.Text;
            cmd.Parameters.Add("@LastName", SqlDbType.VarChar).Value = TextBox2.Text;

            string Gender = string.Empty;

            if (RadioButton1.Checked)

            {

                Gender = "Male";

            }

            if (RadioButton2.Checked)

            {

                Gender = "Female";

            }

            cmd.Parameters.Add("@Gender", SqlDbType.VarChar).Value = Gender;
            cmd.Parameters.Add("@Country", SqlDbType.VarChar).Value = DropDownList1.SelectedItem.Text;
            cmd.Parameters.Add("@State", SqlDbType.VarChar).Value = DropDownList2.SelectedItem.Text;
            cmd.Parameters.Add("@City", SqlDbType.VarChar).Value = DropDownList3.SelectedItem.Text;
            cmd.Parameters.Add("@DataOfBirth", SqlDbType.Date).Value = Convert.ToDateTime(TextBox3.Text);
            cmd.Parameters.Add("@PhoneNumber", SqlDbType.VarChar).Value = TextBox4.Text;
            cmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = TextBox5.Text;
            cmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = TextBox6.Text;
            int i = cmd.ExecuteNonQuery();
            if (i != 0)
            {
                Literal1.Text = "Your Registration Successfully";
                Response.Redirect("LoginPage.aspx");

            }
            else
            {
                Literal1.Text = "Your Registration Not  Successfully";
            }
            con.Close();

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            DropDownList1.SelectedIndex = 0;
            DropDownList2.SelectedIndex = 0;
            DropDownList3.SelectedIndex = 0;


        }

        protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["MyDBConn"].ConnectionString);
                SqlCommand cmd = new SqlCommand();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                cmd.Connection = con;
                cmd.CommandText = "select * from StateLookUp where CountryId ='" + DropDownList1.SelectedValue +"'";
                con.Open();
                da.Fill(ds, "StateLookUp");
                con.Close();
                DropDownList2.DataSource = ds.Tables[0].DefaultView;
                DropDownList2.DataTextField = "StateName";
                DropDownList2.DataValueField = "StateId";
                DropDownList2.DataBind();
                DropDownList2.Items.Insert(0, new ListItem("--Select--", "0"));
                //If State is not selected then clear City DropDownList also
                if (DropDownList2.SelectedValue == "0")
                {
                    DropDownList3.Items.Clear();
                    DropDownList3.Items.Insert(0, new ListItem("--Select--", "0"));
                }

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message.ToString());
            }
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["MyDBConn"].ConnectionString);
                SqlCommand cmd = new SqlCommand();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                cmd.Connection = con;
                cmd.CommandText = "select * from CityLookUp where StateId ='" + DropDownList2.SelectedValue + "'";
                con.Open();
                da.Fill(ds, "CityLookUp");
                con.Close();
                DropDownList3.DataSource = ds.Tables[0].DefaultView;
                DropDownList3.DataTextField = "CityName";
                DropDownList3.DataValueField = "CityId";
                DropDownList3.DataBind();
                //DropDownList3.Items.Insert(0, new ListItem("--Select--", "0"));


            }
            catch (Exception ex)
            {
                Response.Write(ex.Message.ToString());
            }

        }
    }
}



