using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Configuration;

namespace pharmacy_system
{
    public partial class Regestration_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void regestration_Click(object sender, EventArgs e)
        {
            OleDbConnection f = new OleDbConnection(ConfigurationManager.ConnectionStrings["test"].ConnectionString);
            OleDbCommand cmd = new OleDbCommand("insert into [users]([Username], [Password], [COnfirmpassword] ,[E-mail]) values ('"+user.Text+"', '"+password.Text+"', '"+conpass.Text+"', '"+email.Text+"')", f);
            f.Open();
            cmd.ExecuteNonQuery();
            f.Close();
        }
    }
}