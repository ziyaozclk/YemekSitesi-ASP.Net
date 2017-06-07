using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace tarifciniz
{
    public class sqlbaglantisi
    {
        SqlConnection baglanti;
        public SqlConnection baglan()
        {
            baglanti = new SqlConnection("Data Source=ZIYA;Initial Catalog=yemek_sitesi;Integrated Security=True;User Id=sa");
            baglanti.Open();
            SqlConnection.ClearAllPools();
            SqlConnection.ClearPool(baglanti);
            return (baglanti);
        }
        public void kapat()
        {
            baglanti.Close();
        }
    }
}