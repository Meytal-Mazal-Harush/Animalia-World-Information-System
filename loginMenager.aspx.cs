using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace projectMeytal
{
    public partial class loginMenager : System.Web.UI.Page
    {
        public string msg = "";
        public string sqlAdmin = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit"] != null)
            {
                string menagerName = Request.Form["menagerName"];
                string mpw = Request.Form["mpw"];
                string fileName = "UsersDB.mdf";
                string tableName = "menagerTbl";
                string sqlAdmin = "SELECT * FROM " + tableName + " WHERE menagerName = '" + menagerName + "' AND mpw = '" + mpw + "'";
                DataTable table = Helper.ExecuteDataTable(fileName, sqlAdmin);               
                int length = table.Rows.Count;
                if (length == 0)
                    msg = "אינך מנהל";
                else
                {

                    Session["admin"] = "yes";
                    Session["uFName"] = "מנהל";
                    Response.Redirect("homepage.aspx");
                }
            }
        }
    }
}