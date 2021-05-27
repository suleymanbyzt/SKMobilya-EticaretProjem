using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class MasterPage : System.Web.UI.MasterPage
{

    sqlsinif bgl = new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {
        bgl.baglanti();
        if (Request.Cookies["cerezDosyam"] != null)
        {
            TextBox1.Text = Request.Cookies["cerezDosyam"]["kadi"];
            TextBox2.Text = Request.Cookies["cerezDosyam"]["parola"];
        }

        SqlCommand komut = new SqlCommand("Select * from kategoriler", bgl.baglanti());
        SqlDataReader oku = komut.ExecuteReader();
        DataList1.DataSource = oku;
        DataList1.DataBind();
       
        if (!IsPostBack)
        {
            if (Session["kullaniciadi"] != null)
            {
                Button2.Visible = true;
                Panel1.Visible = false;
                giriskayit.Visible = false;
                Panel2.Visible = true;
                Panel3.Visible = true;
                string ad = Session["kullaniciadi"].ToString();
                Label3.Text = (ad);

            }
            else
            {
                Button2.Visible = false;
                Panel1.Visible = true;
                giriskayit.Visible = true;
                Panel3.Visible = false;
                Panel2.Visible = false;
            }
            
        }

        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
       
        Session.Abandon();
        Session.Clear();

        Response.Redirect("Default.aspx");
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
       
        SqlCommand cmd = new SqlCommand("Select * From uyeler where kullaniciadi='" + TextBox1.Text + "' and parola='" + TextBox2.Text + "'", bgl.baglanti());
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            bgl.baglanti();
            Session["kullaniciadi"] = dr["kullaniciadi"].ToString();
            if (CheckBox1.Checked)
            {
                Response.Cookies["cerezDosyam"]["kadi"] = TextBox1.Text;
                Response.Cookies["cerezDosyam"]["parola"] = TextBox2.Text;
                Response.Cookies["cerezDosyam"].Expires = DateTime.Now.AddDays(7);
            }
            Response.Write("<script>alert('Giriş Başarılı')</script>");
            Response.Redirect("Default.aspx");
            
            
        }
        else
        {
            Response.Write("<script>alert('Kullanıcı Adı veya şifre yanlış')</script>");
            
        }
        
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (Request.Cookies["cerezDosyam"] != null)
        {
            HttpCookie cerezim = new HttpCookie("cerezDosyam");
            cerezim.Expires = DateTime.Now.AddDays(-1d);
            Response.Cookies.Add(cerezim);
        }
    }
}
