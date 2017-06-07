using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace tarifciniz
{
    public partial class anasayfa : System.Web.UI.Page
    {
        sqlbaglantisi baglanti = new sqlbaglantisi();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select t.tarifMalzeme,t.tarifAd,t.tarifResim,t.tarifYapilis from Tarif as t where t.tarifID>(select IDENT_CURRENT('Tarif')-5) order by t.tarifID desc", baglanti.baglan());
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataTable dt = new DataTable();
            da.Fill(dt);
            tarifList.DataSource = dt.DefaultView;
            tarifList.DataBind();

            baglanti.kapat();
        }
    }
}