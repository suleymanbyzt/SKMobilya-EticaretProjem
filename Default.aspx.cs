using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class _Default : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {
        bgl.baglanti();
        SqlCommand komut = new SqlCommand("Select * from urunler", bgl.baglanti());
        SqlDataReader oku = komut.ExecuteReader();
        DataTable dt = new DataTable();
        dt.Load(oku);

        CP1.DataSource = dt.DefaultView;
        CP1.BindToControl = DataList2;
        DataList2.DataSource = CP1.DataSourcePaged;
        DataList2.DataBind();


    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button3_Click1(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "artı")
        {

            SqlCommand komut2 = new SqlCommand("Select * from urunler ORDER BY urunfiyat ASC", bgl.baglanti());
            SqlDataReader oku2 = komut2.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(oku2);

            CP1.DataSource = dt.DefaultView;
            CP1.BindToControl = DataList2;
            DataList2.DataSource = CP1.DataSourcePaged;
            DataList2.DataBind();
        }
        else if (DropDownList1.SelectedValue == "eksi")
        {
            SqlCommand komut5 = new SqlCommand("Select * from urunler ORDER BY urunfiyat DESC", bgl.baglanti());
            SqlDataReader oku5 = komut5.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(oku5);

            CP1.DataSource = dt.DefaultView;
            CP1.BindToControl = DataList2;
            DataList2.DataSource = CP1.DataSourcePaged;
            DataList2.DataBind();
        }
        else if (DropDownList1.SelectedValue == "yeni")
        {
            SqlCommand komut3 = new SqlCommand("Select * from urunler ORDER BY urunid DESC", bgl.baglanti());
            SqlDataReader oku3 = komut3.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(oku3);

            CP1.DataSource = dt.DefaultView;
            CP1.BindToControl = DataList2;
            DataList2.DataSource = CP1.DataSourcePaged;
            DataList2.DataBind();
        }
        else
        {
            SqlCommand komut4 = new SqlCommand("Select * from urunler ORDER BY urunid ASC", bgl.baglanti());
            SqlDataReader oku4 = komut4.ExecuteReader();

            DataTable dt = new DataTable();
            dt.Load(oku4);

            CP1.DataSource = dt.DefaultView;
            CP1.BindToControl = DataList2;
            DataList2.DataSource = CP1.DataSourcePaged;
            DataList2.DataBind();

        }
    }
}