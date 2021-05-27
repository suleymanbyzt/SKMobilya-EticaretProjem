using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class siparisdetay : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();

    protected void Page_Load(object sender, EventArgs e)
    {
        bgl.baglanti();
        string urunid = Request.QueryString["urunid"];

        if (Session["kullaniciadi"] != null)
        {
            SqlCommand komut2 = new SqlCommand("SELECT * FROM urunler WHERE urunid=" + urunid.ToString() + "", bgl.baglanti());
            SqlDataReader sırala2 = komut2.ExecuteReader();
            while (sırala2.Read())
            {
                Label5.Text = sırala2[0].ToString();
                Label6.Text = sırala2[4].ToString();
                Label7.Text = sırala2[1].ToString();
            }
            sırala2.Close();

            SqlCommand komut = new SqlCommand("Select * from uyeler WHERE kullaniciadi='" + Session["kullaniciadi"].ToString() + "'", bgl.baglanti());
            SqlDataReader sırala = komut.ExecuteReader();
            while (sırala.Read())
            {
                Label1.Text = sırala[1].ToString();
                Label2.Text = sırala[2].ToString();
                Label3.Text = sırala[3].ToString();
                Label8.Text = sırala[0].ToString();
            }
            sırala.Close();
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "Dikkat", "alert('Lütfen Giriş Yapınız'); window.location = 'Default.aspx';", true);

        }
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        bgl.baglanti();
            if (TextBox1.Text != "" && TextBox2.Text != "" &&  TextBox3.Text != "")
            {
                SqlCommand ekle = new SqlCommand("INSERT INTO siparisler(sipariskadi,siparismail,siparisadres,siparissahip,siparistel,siparisurunid,siparisurunfiyat,siparisurunad) values('" + Label8.Text + "','" + Label3.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + Label5.Text + "','" + Label6.Text + "','" + Label7.Text + "')", bgl.baglanti());
                ekle.ExecuteNonQuery();
                Response.Write("<script>alert('Siparişiniz Alınmıştır')</script>");
            }
            else
            {
                Response.Write("<script>alert('Boş Alan Bırakmayınız')</script>");
                
            }
        




    }
}