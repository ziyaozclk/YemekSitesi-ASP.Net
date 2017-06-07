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
    public partial class index : System.Web.UI.MasterPage
    {
        sqlbaglantisi baglanti = new sqlbaglantisi();
        protected void Page_Load(object sender, EventArgs e)
        {
            DuyurularıGetir();
        }
        private void DuyurularıGetir()
        {
            SqlCommand cmd = new SqlCommand("select k.kategoriLink,k.kategoriAd from kategori as k", baglanti.baglan());
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataTable dt = new DataTable();
            da.Fill(dt);
            ListView1.DataSource = dt.DefaultView;
            ListView1.DataBind();
        }
        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}