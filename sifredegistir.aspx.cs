using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class sifredegistir : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         if (Session["kullaniciadi"] != null)
        {


            string sorgu = "UPDATE uyeler SET parola=@parola WHERE kullaniciadi='" + Session["kullaniciadi"].ToString() + "'";
            SqlCommand komut = new SqlCommand(sorgu, bgl.baglanti());
                if (TextBox1.Text!="")
	            {
		            komut.Parameters.AddWithValue("@parola", TextBox1.Text);
                    bgl.baglanti();
                    komut.ExecuteNonQuery();
                    
                    Session.Abandon();
                    ClientScript.RegisterStartupScript(this.GetType(), "Tebrikler", "alert('Şifreniz Güncellendi !'); window.location = 'Default.aspx';", true);

	            }
         }
    }
}