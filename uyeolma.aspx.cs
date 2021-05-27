using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Data.Sql;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{



    sqlsinif bgl = new sqlsinif();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["cerezDosyam"] != null)
        {
            Txt_Kadi.Text = Request.Cookies["cerezDosyam"]["kadi"];
            Txt_Sifre.Text = Request.Cookies["cerezDosyam"]["parola"];
        }
        
        if (!IsPostBack)
        {
            bgl.baglanti();
            SqlCommand com = new SqlCommand("Select sehirid, sehirad from sehirler", bgl.baglanti());

            if (Session["kullaniciadi"] != null)
            {
                Button3.Visible = true;

            }
            else
            {
                Button3.Visible = false;
            }
            try
            {
                bgl.baglanti();
                SqlDataReader reader = com.ExecuteReader();

                DropDownList1.DataSource = reader;
                DropDownList1.DataValueField = "sehirid";
                DropDownList1.DataTextField = "sehirad";
                DropDownList1.DataBind();
                reader.Close();
            }

            catch
            {
                Response.Write("Bir hata oluştu");
            }

            
        }

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {


    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        bgl.baglanti();
        SqlCommand com = new SqlCommand("Select ilceid, ilcead from ilceler where sehirid=" + DropDownList1.SelectedItem.Value, bgl.baglanti());

        try
        {
            bgl.baglanti();

            SqlDataReader reader = com.ExecuteReader();

            DropDownList2.DataSource = reader;
            DropDownList2.DataValueField = "ilceid";
            DropDownList2.DataTextField = "ilcead";
            DropDownList2.DataBind();
            reader.Close();
        }

        catch
        {
            Response.Write("Bir hata oluştu");
        }

        

    }
    protected void Button2_Click(object sender, EventArgs e)
    {


        bgl.baglanti();


        try
        {
            if (txtGuvenlik.Text!= "" )
            {
                SqlCommand com2 = new SqlCommand("Insert into uyeler(kullaniciadi,adi,soyadi,email,parola,sehirid,ilceid,guvenlikkodu) values('" + txtKadi.Text + "','" + txtAd.Text + "','" + txtSoyad.Text + "','" + txtEmail.Text + "','" + txtSifre.Text + "','" + DropDownList1.SelectedItem.Value + "','" + DropDownList2.SelectedItem.Value + "','"+txtGuvenlik.Text+"')", bgl.baglanti());

                com2.ExecuteNonQuery();
                Response.Write("<script>alert('Başarılı')</script>");
            }
            else if (txtGuvenlik.Text=="")
            {
                Response.Write("<script>alert('Lütfen Eksiksiz Doldurma Yapınız')</script>");
            }
            
        }
        catch
        {

            Response.Write("<script>alert('Farklı Kullanıcı adı ile tekrar deneyiniz.')</script>");
        }


    }

    protected void Btn_Giris_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(@"Data Source=SULEYMAN\SQLEXPRESS; Initial Catalog=emobilya; Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * From uyeler where kullaniciadi='" + Txt_Kadi.Text + "' and parola='" + Txt_Sifre.Text + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {

            Session["kullaniciadi"] = dr["kullaniciadi"].ToString();
            if (chkGBeni.Checked)
            {
                Response.Cookies["cerezDosyam"]["kadi"] = Txt_Kadi.Text;
                Response.Cookies["cerezDosyam"]["parola"] = Txt_Sifre.Text;
                Response.Cookies["cerezDosyam"].Expires = DateTime.Now.AddDays(7);
            }
            Response.Redirect("Default.aspx");

            con.Close();
        }
        else
        {
            Response.Write("<script>alert('Kullanıcı Adı veya şifre yanlış')</script>");
        }



    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Random rastgeleSayi = new Random();
        int sayi1 = rastgeleSayi.Next(1000, 100000);
        txtGuvenlik.Text = sayi1.ToString();


    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Default.aspx");

    }
    protected void Button3_Click1(object sender, EventArgs e)
    {
        if (Request.Cookies["cerezDosyam"] != null)
        {
            HttpCookie cerezim = new HttpCookie("cerezDosyam");
            cerezim.Expires = DateTime.Now.AddDays(-1d);
            Response.Cookies.Add(cerezim);
        }
    }
}