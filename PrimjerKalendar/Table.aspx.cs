using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PrimjerKalendar
{
    public partial class Table : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string putanja = Server.MapPath("~/Upload");
            DirectoryInfo direktorij = new DirectoryInfo(putanja);
            FileInfo[] datoteke = direktorij.GetFiles();

            for (int i = 0; i < datoteke.Length; i++)
            {
                TableRow row = new TableRow();
                TableCell cell = new TableCell();
                HyperLink link = new HyperLink();
                link.ID = "link" + i;
                link.NavigateUrl = "~/Upload/" + datoteke[i].Name;
                link.Text = datoteke[i].Name;
                cell.Controls.Add(link);
                row.Controls.Add(cell);
                this.tableDownload.Rows.Add(row);
            }
        }
    }
}