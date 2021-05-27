using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class urundetayy : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string urunid = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        bgl.baglanti();
        urunid = Request.QueryString["urunid"];
        SqlCommand komut = new SqlCommand("SELECT urunad FROM urunler WHERE urunid=@p1", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", urunid);
        SqlDataReader dr = komut.ExecuteReader();

        

        SqlCommand komut2 = new SqlCommand("Select * from urunler WHERE urunid=@p2", bgl.baglanti());
        komut2.Parameters.AddWithValue("@p2", urunid);
        SqlDataReader dr2 = komut2.ExecuteReader();
        DataList2.DataSource = dr2;
        DataList2.DataBind();
         


        
    }
}