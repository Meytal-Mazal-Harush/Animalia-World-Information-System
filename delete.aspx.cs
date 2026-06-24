using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace projectMeytal
{
    public partial class delete : System.Web.UI.Page
    {
        public string st = "";
        public string msg = "";
        public string sql = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            string fileName = "UsersDB.mdf";
            string tableName = "usersTbl";
            string sqlSelect = "SELECT * FROM " + tableName;

            sql = sqlSelect;
            DataTable table = Helper.ExecuteDataTable(fileName, sqlSelect);
            int length = table.Rows.Count;
            if (length == 0)
                msg = "לא נמצאו משתמשים";
            else
            {
                st += "<table>";
                st += "<tr>";
                st += "<th >שם משתמש</th>";
                st += "<th >שם פרטי</th>";
                st += "<th >שם משפחה</th>";
                st += "<th >דוא\"ל</th>";
                st += "<th >מגדר</th>";
                st += "<th >שנת לידה</th>";
                st += "<th >טלפון</th>";
                st += "<th >עיר</th>";
                st += "<th >נגינה</th>";
                st += "<th >שחיה</th>";
                st += "<th >קריאה</th>";
                st += "<th >שירה</th>";
                st += "<th  >ריקוד</th>";
                st += "<th >סיסמה</th>";
                st += "</tr>";

                for (int i = 0; i < length; i++)
                {
                    st += "<tr>";
                    st += "<td>" + table.Rows[i]["uName"] + "</td>";
                    st += "<td>" + table.Rows[i]["fName"] + "</td>";
                    st += "<td>" + table.Rows[i]["lName"] + "</td>";
                    st += "<td>" + table.Rows[i]["email"] + "</td>";
                    st += "<td>" + table.Rows[i]["gender"] + "</td>";
                    st += "<td>" + table.Rows[i]["prefix"] + "-" + table.Rows[i]["phone"] + "</td>";
                    st += "<td>" + table.Rows[i]["city"] + "</td>";
                    st += "<td>" + table.Rows[i]["hob1"] + "</td>";
                    st += "<td>" + table.Rows[i]["hob2"] + "</td>";
                    st += "<td>" + table.Rows[i]["hob3"] + "</td>";
                    st += "<td>" + table.Rows[i]["hob4"] + "</td>";
                    st += "<td>" + table.Rows[i]["hob5"] + "</td>";
                    st += "<td>" + table.Rows[i]["pw"] + "</td>";
                   string userToDelete = table.Rows[i]["uName"].ToString();
                    st += "<td style = ' border: 1px solid black;'>";
                    st += "<a href ='myDeleteRecord.aspx?uName=" + userToDelete + "'>[delete]</a>";     
                }
                st += "</table>";
                
            }
        }
    }
    
}