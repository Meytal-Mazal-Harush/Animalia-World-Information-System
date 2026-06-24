using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projectMeytal
{
    public partial class masterPaje : System.Web.UI.MasterPage
    {
        public string myTime;
        public string loginMsg;
        protected void Page_Load(object sender, EventArgs e)
        {
            myTime = DateTime.Now.ToString();
            loginMsg = "</h3> שלום ";
            loginMsg += Session["uFName"].ToString();
            loginMsg += "</h3>";
        }
    }
}