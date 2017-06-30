using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;



namespace 登陆与注册
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void ensure_Click(object sender, EventArgs e)
        {
            string Sql = "data source=(local);uid=Leedeng;pwd=a4452295;database=User";
            SqlConnection scon = new SqlConnection(Sql);
            scon.Open();
            SqlCommand sqlcmd = new SqlCommand();
            sqlcmd.Connection = scon;
            string str = "select*from L_user where UserName='" + User_ID.Value + "' and UserPwd='" + User_pwd.Value + "'";
           
            sqlcmd.CommandText = str; //执行数据
            SqlDataReader sqlRead = sqlcmd.ExecuteReader();//读取数据
            if (sqlRead.Read())
            {
                
                Response.Write("<script language='javascript'>window.location='WebGis3.html'</script>"); 
            }
            else
            {
        
            }
        }
    }
}