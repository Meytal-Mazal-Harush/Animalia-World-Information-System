<%@ Page Title="" Language="C#" MasterPageFile="~/masterPaje.Master" AutoEventWireup="true" CodeBehind="simpleQry.aspx.cs" Inherits="projectMeytal.simpleQry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
         body {
            background-color:antiquewhite;
            direction: rtl;
            margin-right: 50px;
            }
        h3 {
               color:lightblue;
            font-style: italic;
            font-family:'Guttman Haim'
        }
    </style>
    <script>
        function detectField()
        {
            var a = document.getElementById("field").value;
            if (a == "gender")
            {
                document.getElementById("query").innerHTML =
                    "<input type='radio' name='value' value='male' checked = 'checked' />זכר "+
                    "<input type ='radio' name ='value'  value ='female' /> נקבה";
            }
            else
                if (a == "yearBorn")
                {
                    var yearStr = "<select name ='value'>";
                    var  yaer = new Date().getFullYear();
                    var from = yaer - 40;
                    var to = yaer - 10;
                    for (var i = from; i < to; i++)
                    yearStr += "<option value='" + i + "'>" + i + "</option>\n";
                    document.getElementById("query").innerHTML = yearStr + "</select>";
                }
            else
            if (a == "prefix") {
                var prefixStr = "<select name='value'>";
                prefixStr += "<option value= '050'>050</option>";
                prefixStr += "<option value= '052'>052</option>";
                prefixStr += "<option value='053'>053</option>";
                prefixStr += "<option value='054'>054</option>";
                prefixStr += "<option value='055'>055</option>";
                prefixStr += "<option value='058'>058</option>";
                prefixStr += "<optionvalue='02'>02</option>";
                prefixStr += "<option value='077'>077</option>";
                prefixStr += "</select>";
                document.getElementById("query").innerHTML = prefixStr;
            }
            else
                if (a == "city") {
                    var cityStr = "<select name='value'>";
                    cityStr += "<option value='c1'>אשדוד</option>";
                    cityStr += "<option value='c2'>אשקלון</option>";
                    cityStr += "<option value='c3'>באר שבע </option>";
                    cityStr += "<option value='c4'>בני ברק</option>";
                    cityStr += "<option value='c5'>חיפה</option>";
                    cityStr += "<option value='c6'>טבריה</option>";
                    cityStr += "<option value='c7'>ירושלים</option>";
                    cityStr += "<option value='c8'>נתניה</option>";
                    cityStr += "<option value='c9'>צפת</option>";
                    cityStr += "<option value='c10'>תל אביב</option>";
                    cityStr += "</select>";
                    document.getElementById("query").innerHTML = cityStr;
                }
                else
                    if (a == "hobbies")
                    {
                        var hobyStr = "<select name='value'>";
                        hobyStr += "<option value='1'>נגינה</option>";
                        hobyStr += "<option value='2'>שחיה</option>";
                        hobyStr += "<option value='3'>קריאה </option>";
                        hobyStr += "<option value='4'>שירה</option>";
                        hobyStr += "<option value='5'>ריקוד</option>";
                        hobyStr += "</select>";
                        document.getElementById("query").innerHTML = hobyStr;
                    }
            else
            document.getElementById("query").innerHTML =  "<input type='text' name='value'/>";
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <h1>הצגת נתונים לפי חתך</h1> 
        <form method="post" runat="server">
            <div>
            <select name="field" id ="field" onclick="detectField()">
                <option value="lName">שם משפחה</option>
                <option value="fName">שם פרטי</option>
                <option value="email">דוא"ל</option>
                <option value="gender">מגדר</option>
                <option value="yearBorn">שנת לידה</option>
                <option value="prefix">קידומת טלפון</option>
                <option value="phone">טלפון</option>
                <option value="city">עיר</option>
                <option value="hobbies">תחביב</option>
           </select>
           </div>
           <div id ="query"></div>
            <br />
            <br />
            <div>
            <input type="submit" id ="submit" name="submit" value="   חפש  " />
             </div>
            <%= sql %>
            <br />
            <%=st %>
            <%=msg %>
            
        </form>
</asp:Content>
