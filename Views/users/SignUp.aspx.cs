using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace community.main
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubscribe_Click(object sender, EventArgs e)
        {
            string Message = "";
            string connectionString =
            WebConfigurationManager.ConnectionStrings["Community"].ConnectionString;
            SqlConnection conn = new SqlConnection(connectionString);
            try
            {
              
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText =
                "select * from people where id=@id and pw=@pw";
                cmd.Parameters.Add("@id", SqlDbType.VarChar, 50);

                cmd.Parameters.Add("@pw", SqlDbType.VarChar, 50);

                cmd.Parameters["@id"].Value = username.Text;

                cmd.Parameters["@pw"].Value = password.Text;
                conn.Open();
                SqlDataReader rd = cmd.ExecuteReader();
                bool hasSubscribed = rd.Read();
                rd.Close();

                if (hasSubscribed)
                {
                    username.Text = "";
                    password.Text = "";
                    test.Text = "이미 가입된 아이디입니다.";
                }
               
                string insertSQL = "INSERT INTO people(Id, pw, name, email) ";
                insertSQL += "VALUES(@id, @pw, @name, @email)";
                
                cmd = new SqlCommand(insertSQL, conn);
                cmd.Parameters.Add("@id", SqlDbType.VarChar, 50);

                cmd.Parameters.Add("@pw", SqlDbType.VarChar, 50);

                cmd.Parameters.Add("@name", SqlDbType.VarChar, 50);

                cmd.Parameters.Add("@email", SqlDbType.VarChar, 50);

                cmd.Parameters["@id"].Value = Id.Text;

                cmd.Parameters["@pw"].Value = password.Text;

                cmd.Parameters["@name"].Value = username.Text;

                cmd.Parameters["@email"].Value = Email.Text;

                cmd.ExecuteNonQuery();
                Message = @"성공적으로 가입되었습니다.";
            }
            catch (Exception error)
            {
                Message = error.Message.Replace("'", "");
            }
            finally
            {
                conn.Close();
                Response.Write("<script language='javascript'>");
                Response.Write("alert('" + Message + " 로그인 해주세요.');");
                Response.Write("location.href='../users/Login.aspx';");
                Response.Write("</script>");
            }

        }
    }
}