using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Configuration;


namespace community.main
{
    public partial class DetailPage : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)

        {
            

            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Community"].ConnectionString);

                string selectString = "SELECT * FROM board WHERE id = " + Request["sn"];

                SqlCommand cmd = new SqlCommand(selectString);
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    name.Text = "by " + dr["name"].ToString();
                    tag.Text = "tag: " + dr["tag"].ToString();
                    title.Text = "title: " + dr["title"].ToString();
                    message.Text = dr["message"].ToString();
                    btnEdit.PostBackUrl =
                    "./edit.aspx?sn=" + dr["id"].ToString();


                    dr.Close();
                   
                }
               
            }
        }
        protected void Delete_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Community"].ConnectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "DELETE FROM board WHERE id=@id";
            cmd.Parameters.Add("@id", SqlDbType.Int);
            cmd.Parameters["@id"].Value = Request["sn"];

            con.Open();

            SqlDataReader reader = cmd.ExecuteReader();

            con.Close();
            Response.Redirect("./Show.aspx");

        }
        
        protected void commentSubmit_btn(object sender, EventArgs e)
        {

            string connectionString =
            WebConfigurationManager.ConnectionStrings["Community"].ConnectionString;
            SqlConnection conn = new SqlConnection(connectionString);

            SqlCommand cmd = new SqlCommand();

            conn.Open();
            string insertString = "INSERT INTO comment (id, name, comment)";
            insertString += "VALUES(@id, @name, @comment)";

            cmd = new SqlCommand(insertString, conn);


            cmd.Parameters.Add("@id", SqlDbType.Int);

            cmd.Parameters.Add("@name", SqlDbType.NVarChar, 50);

            cmd.Parameters.Add("@comment", SqlDbType.NVarChar, 50);

            cmd.Parameters["@id"].Value = Request["sn"];

            cmd.Parameters["@name"].Value = Request.Cookies["name"].Value;

            cmd.Parameters["@comment"].Value = commentForm.Text;

            cmd.ExecuteNonQuery();

            conn.Close();

            Response.Redirect("./Show.aspx");
            
            }
        protected string ShowComment(string comment)
        {
            string returnString = "";

            returnString = "<p>" + comment + "</p>";

            return returnString;
        }
    }

   
}


