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

namespace community.main
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Community"].ConnectionString);//conString 아직 연결 안됨

            SqlCommand cmd = new SqlCommand();

            cmd.Connection = con;

            cmd.CommandText = "select * from people where id=@id and password=@password";

            cmd.Parameters.Add("@id", SqlDbType.VarChar, 50);

            cmd.Parameters.Add("@password", SqlDbType.VarChar, 50);

            cmd.Parameters["@id"].Value = Idtxt.Text;

            cmd.Parameters["@password"].Value = Pwtxt.Text;

            con.Open();

            string script = "";

            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {

                //인증

                FormsAuthentication.SetAuthCookie(Idtxt.Text, false);

                //추가 정보 기억
                //Response.Cookies["name"].Value = reader["name"].ToString();
                //Response.Cookies["email"].Value = reader["email"].ToString();

                script = "<script type='text/javascript'>alert('로그인 성공!!\\r\\n게시판으로 이동합니다.'); location.href='../main/MainPage.aspx';</script>";
            }
            else
            {
                script = "<script type='text/javascript'>alert('로그인 실패!!');</script>";
            }

            reader.Close();
            con.Close();

            this.ClientScript.RegisterClientScriptBlock(this.GetType(), "login", script);
        }
    }
}
