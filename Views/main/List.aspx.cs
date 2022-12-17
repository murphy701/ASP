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
    public partial class List : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected string ShowTitle(string title)
        {
            string returnString = "";
            returnString+="<a href='Read.aspx>" + title + "</a>";

            return returnString;
        }
        
    }
}
