using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

namespace community.user
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Community"].ConnectionString);

            SqlCommand cmd = new SqlCommand();

            cmd.Connection = con;

            cmd.CommandText = "select * from people where id=@id and pw=@pw";

            cmd.Parameters.Add("@id", SqlDbType.VarChar, 50);

            cmd.Parameters.Add("@pw", SqlDbType.VarChar, 50);

            cmd.Parameters["@id"].Value = Idtxt.Text;

            cmd.Parameters["@pw"].Value = Pwtxt.Text;

            con.Open();

            string script = "";

            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {

                //인증

                FormsAuthentication.SetAuthCookie(Idtxt.Text, false);

                //추가 정보 기억
                Response.Cookies["name"].Value = reader["name"].ToString();
                Response.Cookies["email"].Value = reader["email"].ToString();

                Response.Redirect("../HomePage.aspx");
            }
            else
            {
                Response.Redirect("../users/Login.aspx");
            }

            reader.Close();
            con.Close();

            this.ClientScript.RegisterClientScriptBlock(this.GetType(), "login", script);
        }
        protected void SignUpButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("../users/SignUp.aspx");
        }
    }
}
