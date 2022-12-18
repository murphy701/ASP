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
    public partial class New : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            username.Text = Request.Cookies["name"].Value;
        }

        protected void btnWrite_Click(object sender, EventArgs e)
        {
            string connectionString =
            WebConfigurationManager.ConnectionStrings["Community"].ConnectionString;
            SqlConnection conn = new SqlConnection(connectionString);

            SqlCommand cmd = new SqlCommand();

            cmd.Connection = conn;
            cmd.CommandText =
               "select * from board where name=@name";

            cmd.Parameters.Add("@name", SqlDbType.NVarChar, 50);

            cmd.Parameters.Add("@title", SqlDbType.NVarChar, 50);

            cmd.Parameters.Add("@tag", SqlDbType.NVarChar, 10);

            cmd.Parameters.Add("@message", SqlDbType.NVarChar, 50);

           
            conn.Open();

            string insertString = "INSERT INTO board (name, title, tag, message)";
            insertString += "VALUES(@name, @title, @tag, @message)";

            cmd = new SqlCommand(insertString, conn);

            cmd.Parameters.Add("@name", SqlDbType.NVarChar, 50);

            cmd.Parameters.Add("@title", SqlDbType.NVarChar, 50);

            cmd.Parameters.Add("@tag", SqlDbType.NVarChar, 10);

            cmd.Parameters.Add("@message", SqlDbType.NVarChar, 50);

            cmd.Parameters["@name"].Value = username.Text;

            cmd.Parameters["@title"].Value = title.Text;

            cmd.Parameters["@tag"].Value = tag.Text;

            cmd.Parameters["@message"].Value = message.Text;

            cmd.ExecuteNonQuery();


            conn.Close();


            Response.Redirect("Show.aspx");
        }
    }
}