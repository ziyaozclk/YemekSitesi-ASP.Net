using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tarifciniz
{
    public partial class giriş : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            if(Username.Text == "Admin" && Password.Text == "123456"){
                Page.Response.Redirect("admin.aspx");
            }
        }
    }
}