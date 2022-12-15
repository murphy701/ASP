using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class SiteTemplate : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Response.Cookies["name"].Expires = DateTime.Now.AddDays(-1d);
        Response.Cookies["email"].Expires = DateTime.Now.AddDays(-1d);
        Response.Redirect("../homePage.aspx");

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("../users/Login.aspx");
    }

    protected void btnSignUp_Click(object sender, EventArgs e)
    {
        Response.Redirect("../users/SignUp.aspx");
    }
}
