using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using DataAccessLayer;
using ASP;
using System.Reflection.Emit;

public partial class Default2 : System.Web.UI.Page
{
    Baglanti bgl = new Baglanti();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //SqlCommand komut = new SqlCommand("Select * from TblOgretmenGiris where OgrtKullaniciAdi=@p1 and OgrtSifre=@p2", Baglanti.bgl);

        //komut.Parameters.AddWithValue("@p1", TxtKullaniciAdi);
        //komut.Parameters.AddWithValue("@p2", TxtSifre);
        //SqlDataReader dr = komut.ExecuteReader();
        //if (dr.Read())
        //{
        //    MasterPage msp = new MasterPage();

        //}

        SqlCommand komut = new SqlCommand("Select * from TblOgretmenGiris where OgrtKullaniciAdi=@p1 and OgrtSifre=@p2", Baglanti.bgl);

        if (komut.Connection.State != ConnectionState.Open)
        {
            komut.Connection.Open();
        }

        komut.Parameters.AddWithValue("@p1", TxtKullaniciAdi.Text);
        komut.Parameters.AddWithValue("@p2", TxtSifre.Text);
        SqlDataReader dr = komut.ExecuteReader();
        if (dr.Read())
        {
            Session["KullaniciAdi"] = TxtKullaniciAdi.Text;
            Response.Redirect("~/Default.aspx");
        }
        else
        {
            Label1.Text = "Kullanıcı adı veya şifre hatalı!";
        }
        dr.Close();
        Baglanti.bgl.Close();


    }
}