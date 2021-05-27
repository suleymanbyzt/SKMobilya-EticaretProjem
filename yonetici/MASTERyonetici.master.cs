using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class yonetici_MASTERyonetici : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string Ad = Session["yoneticiad"].ToString();
            Label1.Text = ("Hoşgeldiniz Sayın: " + Ad);

        }
        catch
        {

            Response.AppendHeader("Refresh", "0;url=admin.aspx");
            Response.Write("<script>alert('Giriş İzniniz Yok, Anasayfaya Yönlendiriyorsunuz')</script>");
        }

    }
}
