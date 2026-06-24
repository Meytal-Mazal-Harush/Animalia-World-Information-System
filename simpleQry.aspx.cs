using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace projectMeytal
{
    public partial class simpleQry : System.Web.UI.Page
    {
        public string st = "";
        public string msg = "";
        public string sql = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit"] != null)
            {
                string field = Request.Form["field"];
                string value = Request.Form["value"];
                string fileName = "UsersDB.mdf";
                string tableName = "usersTbl";
                string sqlSelect ;
                if (field == "gender" || field == "prefix")
                    sqlSelect = "SELECT * FROM " + tableName + " WHERE (" + field + " = '" + value + "');";
                else
                    if (field == "yearBorn")
                    sqlSelect = "SELECT * FROM " + tableName + " WHERE (" + field + " = " + value + ");";
                else
                    if (field == "hobbies")
                {
                    var val = int.Parse(value);
                    switch (val)
                    {
                        case 1: field = "hob1"; break;
                        case 2: field = "hob2"; break;
                        case 3: field = "hob3"; break;
                        case 4: field = "hob4"; break;
                        case 5: field = "hob5"; break;
                    }
                    sqlSelect = "SELECT * FROM " + tableName + " WHERE (" + field + " = 'T');";
                }
                else
                    if (field == "city")
                {
                    switch (value)
                    {
                        case "c1": value = "אשדוד"; break;
                        case "c2": value = "אשקלון"; break;
                        case "c3": value = "באר שבע"; break;
                        case "c4": value = "בני ברק"; break;
                        case "c5": value = "חיפה"; break;
                        case "c6": value = "טבריה"; break;
                        case "c7": value = "ירושלים"; break;
                        case "c8": value = "נתניה"; break;
                        case "c9": value = "צפת"; break;
                        case "c10": value = "תל אביב"; break;
                    }
                    sqlSelect = "SELECT * FROM " + tableName + " WHERE (" + field + " = N'" + value + "');";
                }
                else
                    if (field == "email")
                    sqlSelect = "SELECT * FROM " + tableName + " WHERE (" + field + " like '%" + value + "%');";
                else
                    sqlSelect = "SELECT * FROM " + tableName + " WHERE (" + field + " like N'" + value + "%');";
                sql = sqlSelect;
                DataTable table = Helper.ExecuteDataTable(fileName, sqlSelect);
                int length = table.Rows.Count;
                if (length == 0)
                    msg = "לא נמצאו רשומות שמתאימות לחיפוש";
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
                            st += "<td>" + table.Rows[i]["yearBorn"] + "</td>";
                            st += "<td>" + table.Rows[i]["prefix"] + "-" + table.Rows[i]["phone"] + "</td>";
                            st += "<td>" + table.Rows[i]["city"] + "</td>";
                            st += "<td>" + table.Rows[i]["hob1"] + "</td>";
                            st += "<td>" + table.Rows[i]["hob2"] + "</td>";
                            st += "<td>" + table.Rows[i]["hob3"] + "</td>";
                            st += "<td>" + table.Rows[i]["hob4"] + "</td>";
                            st += "<td>" + table.Rows[i]["hob5"] + "</td>";
                            st += "<td>" + table.Rows[i]["pw"] + "</td>";
                        }
                     st += "</table>";
                    msg = "נמצאו " + length + " רשומות מתאימות לחיפוש";
                 }
            }

        }
    }
}

                     
                 
 