using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Data.Sql;
public partial class guncelle : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bgl.baglanti();
            if (Session["kullaniciadi"] != null)
            {
                SqlCommand komut = new SqlCommand("Select * from uyeler WHERE kullaniciadi='" + Session["kullaniciadi"].ToString() + "'", bgl.baglanti());
                SqlDataReader sırala = komut.ExecuteReader();
                while (sırala.Read())
                {
                    TextBox1.Text = sırala[1].ToString();
                    TextBox2.Text = sırala[2].ToString();
                    TextBox3.Text = sırala[0].ToString();
                    TextBox4.Text = sırala[4].ToString();
                    TextBox6.Text = sırala[3].ToString();
                }
                sırala.Close();
            }
            else
            {
                Response.Redirect("Default.aspx");
            }
            
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["kullaniciadi"] != null)
        {


            string sorgu = "UPDATE uyeler SET adi=@adi, soyadi=@soyadi, kullaniciadi=@kullaniciadi, parola=@parola, email=@email WHERE kullaniciadi='" + Session["kullaniciadi"].ToString() + "'";
            SqlCommand komut3 = new SqlCommand(sorgu, bgl.baglanti());
            try
            {
                if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox6.Text != "")
                {
                    komut3.Parameters.AddWithValue("@adi", TextBox1.Text);
                    komut3.Parameters.AddWithValue("@soyadi", TextBox2.Text);
                    komut3.Parameters.AddWithValue("@kullaniciadi", TextBox3.Text);
                    komut3.Parameters.AddWithValue("@parola", TextBox4.Text);
                    komut3.Parameters.AddWithValue("@email", TextBox6.Text);
                    bgl.baglanti();
                    komut3.ExecuteNonQuery();
                    
                    Response.Write("<script>alert('Güncelleme İşlemi Başarılı')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Lütfen Boş Alan Bırakmayınız')</script>");
                }

            }
            catch
            {

                Response.Write("<script>alert('Hata')</script>");
            }



        }
    }
}