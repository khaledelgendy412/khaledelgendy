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
    public partial class AddDrug : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Drug Page.aspx");
        }

        protected void Add_Click(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection(
                ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            OleDbCommand cmd = new OleDbCommand(@"insert into Drug 
          ([Drug Name], [Effective Material],[Price],[Usage],[Shape])
           values ('" + DrugName.Text + "','" + EffectiveMaterial.Text + "','" + Price.Text + "'" +
           ",'" + Usage.Text + "','" + Shape.Text + "')",con);
            con.Open();
            cmd.ExecuteNonQuery();         
            con.Close();
            Response.Redirect("Drug Page.aspx");
        }
    }
}