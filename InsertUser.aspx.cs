using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace projectMeytal
{
    public partial class InsertUser : System.Web.UI.Page
    {
        public string st = "";
        public string yrBorn = "";
        public string sqlMsg = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            int yaer = DateTime.Now.Year;
            int from = yaer - 40;
            int to = yaer - 10;
            for (int i = from; i < to; i++)
            {
                yrBorn += "<option value = '" + i + "'>" + i + "</option>";
            }

            if (Request.Form["submit"] != null)
            {
                string uName = Request.Form["uName"];
                string fName = Request.Form["fName"];
                string lName = Request.Form["lName"];
                string email = Request.Form["email"];
                string gender = Request.Form["gender"];
                string pelefon = Request.Form["pelefon"];
                string prefix = Request.Form["prefix"];
                string city = Request.Form["city"];
                string yearBorn = Request.Form["yearBorn"];
                string hobbies = Request.Form["hobbies"].ToString();
                string pw = Request.Form["pw"];
                string pw1 = Request.Form["pw1"];

                st += "<table dir='rtl' border='1'>";
                st += "<tr><td colspan='2'> הפרטים שהתקבלו</th></tr>";
                st += "<tr><td>שם משתמש</td><td size='20'>" + uName + "</td></tr>";
                st += "<tr><td>שם פרטי </td><td size='20'>" + fName + "</td></tr>";
                st += "<tr><td>שם משפחה </td><td size='20'>" + lName + "</td></tr>";
                st += "<tr><td>דוא\"ל</td><td size='20'>" + email + "</td></tr>";
                st += "<tr ><td> מיגדר </td><td size ='20'>" + gender + "</td></ tr>";
                st += "<tr><td>פלאפון</td><td size='20'>" + prefix + "-" + pelefon + "</td></tr>";
                st += "<tr><td> אזור מגורים </td><td size='20'>" + city + "</td></tr>";
                st += "<tr><td>  שנת לידה</td><td size='20'>" + yearBorn + "</td></tr>";
                st += "<tr><td>  תחביבים</td><td size='20'>" + hobbies + "</td></tr>";
                st += "<tr><td>סיסמה</td><td size='20'>" + pw + "</td></tr>";
                st += "<tr><td> אימות סיסמה</td><td size='20'>" + pw1 + "</td></tr>";
                st += "</ table>";
                int yBorn = int.Parse(yearBorn);
                char hob1 = 'F';
                char hob2 = 'F';
                char hob3 = 'F';
                char hob4 = 'F';
                char hob5 = 'F';

                if (hobbies.Contains("play"))
                    hob1 = 'T';
                if (hobbies.Contains("sweem"))
                    hob2 = 'T';
                if (hobbies.Contains("read"))
                    hob3 = 'T';
                if (hobbies.Contains("sing"))
                    hob4 = 'T';
                if (hobbies.Contains("dance"))
                    hob5 = 'T';

                string fileName = "UsersDB.mdf";
                string tableName = "usersTbl";

                string sqlselect = "SELECT * FROM " + tableName + " WHERE uName = '" + uName + "'";
                if (Helper.IsExist(fileName, sqlselect))
                    sqlMsg = "שם המשתמש כבר קיים";
                else
                {
                    string sqlInsert = " INSERT INTO " + tableName;
                    sqlInsert += " VALUES ('" + uName + "',N'" + fName + "',N'" + lName + "','" + email + "','" + gender + "','" + yBorn + "','";
                    sqlInsert += prefix + "','" + pelefon + "','" + city + "','" + hob1 + "','" + hob2 + "','" + hob3 + "','" + hob4 + "','" + hob5 + "','";
                    sqlInsert += pw + "','" + pw1 + "');";
                    sqlMsg = "הרישום בוצע בהצלחה";
                    Helper.DoQuery(fileName, sqlInsert);
                }

            }
        }
    }
}
 