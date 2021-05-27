using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class MasterPage2 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["kullaniciadi"] != null)
            {
                Button2.Visible = true;
                Panel1.Visible = true  ;
                giriskayit.Visible = false;
            }
            else
            {
                Button2.Visible = false;
                Panel1.Visible = false;
                giriskayit.Visible = true;
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("Default.aspx");
    }
}
