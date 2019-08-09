﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Beginning
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] !=null)
            {
                lblUserName.Text = Session["username"].ToString();
            }
            else
                Response.Redirect("~/Login.aspx");
        }
    }
}