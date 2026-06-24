using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace projectMeytal
{
    public partial class myDeleteRecord : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string fileName = "UsersDB.mdf";
            string uName = Request.QueryString["uName"].ToString();
           string sqlDelete = " DELETE FROM usersTbl WHERE uName ='" + uName + " ' ";
            Helper.DoQuery(fileName, sqlDelete);
            Response.Redirect("Delete.aspx");
        }
    }
}