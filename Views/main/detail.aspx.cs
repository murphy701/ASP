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
<<<<<<< HEAD


        if (!IsPostBack)
=======
        protected void Page_Load(object sender, EventArgs e)
>>>>>>> c5a924b34ff4eeb496585e0aa7c90b686cb1a82a
        {


            if (!IsPostBack)
            {
<<<<<<< HEAD
                title.Text = "제목: " + dr["title"].ToString();
                name.Text = "작성자: " + dr["name"].ToString();
                tag.Text = "tag: " + dr["tag"].ToString();
                message.Text = dr["message"].ToString();
=======
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Community"].ConnectionString);

                string selectString = "SELECT * FROM board WHERE id=" + Request["sn"];

                SqlCommand cmd = new SqlCommand(selectString);
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    name.Text = dr["name"].ToString();
                    id.Text = dr["id"].ToString();
                    tag.Text = dr["tag"].ToString();
                    title.Text += dr["title"].ToString();
                    message.Text = dr["message"].ToString();
>>>>>>> c5a924b34ff4eeb496585e0aa7c90b686cb1a82a


                    dr.Close();
                    con.Close();
                }
            }
        }


    }
}

