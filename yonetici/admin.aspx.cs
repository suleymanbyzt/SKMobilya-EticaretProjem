using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class yonetici_admin : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        bgl.baglanti();
        SqlCommand cmd = new SqlCommand("Select * From yonetici where yoneticiad='" + txtYKadi.Text + "' and yoneticisifre='" + txtYSifre.Text + "'", bgl.baglanti());
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Session["yoneticiad"] = dr["yoneticiad"].ToString();
            Response.Redirect("yoneticigiris.aspx");
        }
        else
        {
            Response.Write("<script>alert('Giriş Başarısız')</script>");
        }

        
    }
}