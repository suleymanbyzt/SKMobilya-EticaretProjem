using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Data.Sql;
public partial class iletisim : System.Web.UI.Page
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
            SqlCommand com2 = new SqlCommand("Insert into mesaj(mesajad,mesajmail,mesajicerik) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')", bgl.baglanti());
            com2.ExecuteNonQuery();
            Response.Write("<script>alert('Mesajınız Alınmıştır')</script>");
        }
        catch
        {

            Response.Write("<script>alert('Eksik veya hatalı doldurma yaptınız.')</script>");
        }

    }
}