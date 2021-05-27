using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class siparislerim : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {
        bgl.baglanti();
        if (Session["kullaniciadi"] != null)
        {

            SqlCommand komut = new SqlCommand("Select * from siparisler WHERE sipariskadi='" + Session["kullaniciadi"].ToString() + "'", bgl.baglanti());
            SqlDataReader sırala = komut.ExecuteReader();
            DataList2.DataSource = sırala;
            DataList2.DataBind();
            sırala.Close();
            
        }
        else
        {
            Response.Write("<script>alert('Lütfen Giriş Yapınız')</script>");
        }
    }

}
