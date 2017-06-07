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
    public partial class admin : System.Web.UI.Page
    {
        sqlbaglantisi baglanti = new sqlbaglantisi();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("usp_tarifGuncelle", baglanti.baglan());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.ExecuteNonQuery();

            baglanti.kapat();
            Page.Response.Redirect("admin.aspx");
        }
    }
}