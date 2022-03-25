using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DonateDrugs
{
    public partial class userLogin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            foreach (string key in Session.Contents)
            {
                string value = "Key: " + key + ", Value: " + Session[key].ToString();

                Response.Write(value);
                Response.Write("<script>alert(''admin login page'" + value + "');</script>");
            }
        }

        protected void loginButton_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM member_master_tbl WHERE member_id='" + memberId.Text.Trim() + "' AND password='" + passordId.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('Log in successfull');</script>");
                        Session["username"] = dr.GetValue(8).ToString();
                        Session["fullname"] = dr.GetValue(0).ToString();
                        Session["role"] = "user";
                        Session["status"] = dr.GetValue(10).ToString();
                        
                    }

                    Response.Redirect("homePage.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid User id or Password');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(''admin login page'" + ex.Message + "');</script>");

            }
        }
    }
}