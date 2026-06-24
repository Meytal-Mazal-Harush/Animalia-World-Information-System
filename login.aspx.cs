using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace projectMeytal
{
    public partial class login : System.Web.UI.Page
    {
        public string msg = "";
        public string sqlLogin = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit"] != null)
            {
                if (Request.Form["submit"] != null)
                {
                    string uName = Request.Form["uName"];
                    string pw = Request.Form["pw"];
                    string fileName = "usersDB.mdf";
                    string tableName = "usersTbl";
                    sqlLogin = "SELECT * FROM " + tableName + " WHERE uName = '" + uName + "' AND pw = '" + pw + "'";
                    DataTable table = Helper.ExecuteDataTable(fileName, sqlLogin);
                    int length = table.Rows.Count;
                    if (length == 0)
                        msg = "משתמש לא נמצא";
                    else
                    {
                        Session["uName"] = table.Rows[0]["uName"];
                        Session["uFName"] = table.Rows[0]["fName"];
                        Response.Redirect("homePage.aspx");
                    }
                }
            }
        }
    }
}

