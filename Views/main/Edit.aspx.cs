using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace community.main
{
    public partial class EditPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Community"].ConnectionString);

                string selectString = "SELECT * FROM board WHERE id=" + Request["sn"];

                SqlCommand cmd = new SqlCommand(selectString);
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    username.Text = dr["name"].ToString();
                    tag.Text = dr["tag"].ToString();
                    title.Text += dr["title"].ToString();
                    message.Text = dr["message"].ToString();

                    dr.Close();
                    con.Close();
                }
            }
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Community"].ConnectionString);
            string updateString = "UPDATE board SET name=@name, title=@title, ";
            updateString += "message=@message, tag=@tag ";
            updateString += "WHERE id=" + Request["sn"];

            SqlCommand cmd = new SqlCommand(updateString);
            cmd.Connection = con;
            con.Open();

            cmd.Parameters.AddWithValue("@name", username.Text);
            cmd.Parameters.AddWithValue("@tag", tag.Text);
            cmd.Parameters.AddWithValue("@title", title.Text);
            cmd.Parameters.AddWithValue("@message", message.Text);

            cmd.ExecuteNonQuery();

            con.Close();

            Response.Redirect("./Show.aspx");
        }

    }
}


