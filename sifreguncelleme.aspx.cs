using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class sifreguncelleme : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        bgl.baglanti();
        SqlCommand cmd = new SqlCommand("Select * From uyeler where kullaniciadi='" + TextBox1.Text + "' and guvenlikkodu='" + TextBox2.Text + "'", bgl.baglanti());
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Session["kullaniciadi"] = dr["kullaniciadi"].ToString();
            Response.Redirect("sifredegistir.aspx");
            
        }
        else
        {
            Response.Write("<script>alert('Güvenlik Kodunuz ya da Kullanıcı Adınız Yanlış')</script>");
        }
        
        

    }
}