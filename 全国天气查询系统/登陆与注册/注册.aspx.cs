using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace 登陆与注册
{
    public partial class 注册 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string Sql = "data source=(local);uid=Leedeng;pwd=a4452295;database=User";
            SqlConnection scon = new SqlConnection(Sql);
            scon.Open();
            SqlCommand sqlcmd = new SqlCommand();
            sqlcmd.Connection = scon;
            string str = "insert into [L_user](UserName,UserPwd,UserID) values('" + TextBox1.Value + "','" + TextBox2.Value + "','" + TextBox3.Value + "')";
            sqlcmd.Connection = scon;
            sqlcmd.CommandText = str;
            int obj = sqlcmd.ExecuteNonQuery();
          
            Response.Write("<script language='javascript'>window.location='WebForm1.aspx'</script>");
        }
    }
}