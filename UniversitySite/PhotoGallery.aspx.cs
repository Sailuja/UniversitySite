using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UniversitySite
{
    public partial class PhotoGallery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopulateImages();
            }
        }

        private void PopulateImages()
        {
            List<MyImages> myImages = new List<MyImages>();
            DirectoryInfo DI = new DirectoryInfo(Server.MapPath("~/Thumbnail"));
            foreach (var file in DI.GetFiles())
            {
                myImages.Add(new MyImages { FileName = file.Name });
            }
            Repeater1.DataSource = myImages;
            Repeater1.DataBind();
        }
    }
    public class MyImages
    {
        public string FileName { get; set; }
    }
}