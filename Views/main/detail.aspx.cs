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
    public partial class DetailPage : System.Web.UI.Page
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
                    name.Text = "ÀÛ¼ºÀÚ: " + dr["name"].ToString();
                    tag.Text = "ÅÂ±×: " + dr["tag"].ToString();
                    title.Text = "Á¦¸ñ: " + dr["title"].ToString();
                    message.Text = dr["message"].ToString();

                    btnEdit.PostBackUrl =
                    "./edit.aspx?sn=" + dr["id"].ToString();


                    dr.Close();
                    con.Close();
                }
            }
        }
        protected void Delete_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Community"].ConnectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "delete from board where id=@id";
            cmd.Parameters.Add("@id", SqlDbType.Int);
            cmd.Parameters["@id"].Value = Request["sn"];


            con.Open();


            SqlDataReader reader = cmd.ExecuteReader();

            con.Close();
            Response.Redirect("../homePage.aspx");

        }
   }
}

