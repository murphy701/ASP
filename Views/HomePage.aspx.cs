﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class HomePage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        
        FormsAuthentication.SignOut();
        Response.Cookies["name"].Expires = DateTime.Now.AddDays(-1d);
        Response.Cookies["email"].Expires = DateTime.Now.AddDays(-1d);
        Response.Redirect("../Views/homePage.aspx");

    }
}
