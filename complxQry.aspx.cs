using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace projectMeytal
{
    public partial class complxQry : System.Web.UI.Page
    {
        public string st = "";
        public string msg = "";
        public string sql = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit"] != null)
            {
                string field1 = Request.Form["field1"];
                string value1 = Request.Form["value1"];

                string field2 = Request.Form["field2"];
                string value2 = Request.Form["value2"];

                string op = Request.Form["op"];

                string fileName = "UsersDB.mdf";
                string tableName = "usersTbl";
                string sqlSelect="";
                string qry1 = field1 + " like N'%" + value1 + "%'";
                if (field1 == "gender" || field1 == "prefix" || field1 == "yearBorn")
                    qry1 = field1 + " ='" + value1 + "'";
                else

                    if (field1 == "hobbies")
                {
                    var val1 = int.Parse(value1);
                    switch (val1)
                    {
                        case 1: field1 = "hob1"; break;
                        case 2: field1 = "hob2"; break;
                        case 3: field1 = "hob3"; break;
                        case 4: field1 = "hob4"; break;
                        case 5: field1 = "hob5"; break;
                    }
                    qry1 = field1 + " = 'T'";
                }

                    string qry2 = field2 + " like N'%" + value2 + "%'";
                    if (field2 == "gender" || field2 == "prefix" || field2 == "yearBorn")
                        qry2 = field2 + " ='" + value2 + "'";
                    else

                        if (field2 == "hobbies")
                    {
                        var val2 = int.Parse(value2);
                        switch (val2)
                        {
                            case 1: field2 = "hob1"; break;
                            case 2: field2 = "hob2"; break;
                            case 3: field2 = "hob3"; break;
                            case 4: field2 = "hob4"; break;
                            case 5: field2 = "hob5"; break;
                        }
                        qry2 = field2 + " = 'T'";
                    }
                
                if(op == "AND")
                    sqlSelect = "SELECT * FROM " + tableName + " WHERE (" + qry1 + " and " + qry2 + ");";
                else
                    sqlSelect = "SELECT * FROM " + tableName + " WHERE (" + qry1 + " or " + qry2 + ");";

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