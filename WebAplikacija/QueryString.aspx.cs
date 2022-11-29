using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAplikacija
{
    public partial class QueryString : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.lbl1.Text = Request.QueryString["param1"];
            this.lbl2.Text = Request.QueryString["param2"];

            string link;
            if (this.txt1.Text.Length > 0 && this.txt2.Text.Length > 0)
            {
                link = "queryString.aspx?param1=" + this.txt1.Text + "&param2=" + this.txt2.Text;
                this.HyperLink1.NavigateUrl = link;
            }
        }

        protected void btn1_Click(object sender, EventArgs e)
        {

        }
    }
}