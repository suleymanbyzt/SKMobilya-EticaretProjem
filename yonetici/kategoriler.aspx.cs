using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data;
using System.Data.SqlClient;

public partial class yonetici_kategoriler : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
        
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        bgl.baglanti();
        try
        {
            SqlCommand com = new SqlCommand("Insert into kategoriler(kategoriad) values('" + txtKategori.Text + "')", bgl.baglanti());
            com.ExecuteNonQuery();
            Response.Write("<script>alert('Başarılı')</script>");
        }
        catch
        {

            Response.Write("<script>alert('Hatalı yazım yaptınız Tekrar Deneyiniz.')</script>");
        }
       
    }
}