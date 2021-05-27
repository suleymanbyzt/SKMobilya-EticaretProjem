using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Configuration;
public partial class yonetici_urunekle : System.Web.UI.Page
{ 
    sqlsinif bgl = new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (!IsPostBack)
        {
            
            SqlCommand com = new SqlCommand("Select kategoriid,kategoriad from kategoriler", bgl.baglanti());


            try
            {
                bgl.baglanti();
                SqlDataReader reader = com.ExecuteReader();

                DropDownList1.DataSource = reader;
                DropDownList1.DataValueField = "kategoriid";
                DropDownList1.DataTextField = "kategoriad";
                DropDownList1.DataBind();
                reader.Close();
            }

            catch
            {
                Response.Write("Bir hata oluştu");
            }

            
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("/img/" + FileUpload1.FileName));
        bgl.baglanti();


        try
        {
            SqlCommand com2 = new SqlCommand("Insert into urunler(urunad,urundetay,urunresim,urunfiyat,kategoriid) values('" + TextBox1.Text + "','" + TextBox3.Text + "',@p1,'" + TextBox2.Text + "','" + DropDownList1.SelectedItem.Value + "')", bgl.baglanti());
            com2.Parameters.AddWithValue("@p1","~/img/"+FileUpload1.FileName);
            com2.ExecuteNonQuery();
            Response.Write("<script>alert('Başarılı')</script>");
        }
        catch
        {

            Response.Write("<script>alert('Eksik doldurma yaptınız ya da Farklı Kullanıcı adı ile tekrar deneyiniz.')</script>");
        }

    }
}