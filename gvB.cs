using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practice
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ins(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["Id"].DefaultValue = TB1.Text;
            SqlDataSource1.InsertParameters["name"].DefaultValue = TB2.Text;
            SqlDataSource1.InsertParameters["email"].DefaultValue = TB3.Text;

            SqlDataSource1.Insert();
            GridView1.DataBind();

            TB1.Text = "";
            TB2.Text = "";
            TB3.Text = "";

        }
        protected void upd(object sender, EventArgs e)
        {
            SqlDataSource1.UpdateParameters["id"].DefaultValue = TB1.Text;
            SqlDataSource1.UpdateParameters["name"].DefaultValue = TB2.Text;
            SqlDataSource1.UpdateParameters["email"].DefaultValue = TB3.Text;

            SqlDataSource1.Update();
            GridView1.DataBind();

            TB1.Text = "";
            TB2.Text = "";
            TB3.Text = "";

        }

        protected void del(object sender, EventArgs e)
        {
            SqlDataSource1.DeleteParameters["Id"].DefaultValue = TB1.Text;
            SqlDataSource1.Delete();
            GridView1.DataBind();

            TB1.Text = "";
            TB2.Text = "";
            TB3.Text = "";

        }
    }
}
