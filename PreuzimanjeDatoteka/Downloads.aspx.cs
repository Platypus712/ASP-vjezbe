using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PreuzimanjeDatoteka
{
    public partial class Downloads : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated == true)
            {
                int id;
                string file = string.Empty;
                int.TryParse(Request.QueryString["id"], out id);

                if (id > 0 && id < 4)
                {
                    switch (id)
                    {
                        case 1:
                            file = "primjer.pdf";
                            break;
                        case 2:
                            file = "primjer.pptx";
                            break;
                        case 3:
                            file = "primjer.txt";
                            break;
                        default:
                            break;
                    }
                    Response.ContentType = "application/octet-stream";
                    Response.AppendHeader("Content-Disposition", "attachment;filename=\"" + file + "\"");
                    Response.TransmitFile(Server.MapPath("~/Files") + "\\" + file);
                    Response.End();
                }
            }
        }
    }
}