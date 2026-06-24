<%@ Page Title="" Language="C#" MasterPageFile="~/masterPaje.Master" AutoEventWireup="true" CodeBehind="complxQry.aspx.cs" Inherits="projectMeytal.complxQry" %>
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
        function detectField1() {
            var a = document.getElementById("field1").value;
            if (a == "gender") {
                document.getElementById("query1").innerHTML =
                    "<input type='radio' name='value1' value='male' checked = 'checked' />זכר " +
                    "<input type ='radio' name ='value1'  value ='female' /> נקבה";
            }
            else
                if (a == "yearBorn") {
                    var yearStr = "<select name ='value1'>";
                    var yaer = new Date().getFullYear();
                    var from = yaer - 40;
                    var to = yaer - 10;
                    for (var i = from; i < to; i++)
                        yearStr += "<option value1='" + i + "'>" + i + "</option>\n";
                    document.getElementById("query1").innerHTML = yearStr + "</select>";
                }
                else
                    if (a == "prefix") {
                        var prefixStr = "<select name='value1'>";
                        prefixStr += "<option value= '050'>050</option>";
                        prefixStr += "<option value= '052'>052</option>";
                        prefixStr += "<option value='053'>053</option>";
                        prefixStr += "<option value='054'>054</option>";
                        prefixStr += "<option value='055'>055</option>";
                        prefixStr += "<option value='058'>058</option>";
                        prefixStr += "<option value='02'>02</option>";
                        prefixStr += "<option value='077'>077</option>";
                        prefixStr += "</select>";
                        document.getElementById("query1").innerHTML = prefixStr;
                    }
                    else
                        if (a == "city") {
                            var cityStr = "<select name='value1'>";
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
                            document.getElementById("query1").innerHTML = cityStr;
                        }
                        else
                            if (a == "hobbies") {
                                var hobyStr = "<select name='value1'>";
                                hobyStr += "<option value='1'>נגינה</option>";
                                hobyStr += "<option value='2'>שחיה</option>";
                                hobyStr += "<option value='3'>קריאה </option>";
                                hobyStr += "<option value='4'>שירה</option>";
                                hobyStr += "<option value='5'>ריקוד</option>";
                                hobyStr += "</select>";
                                document.getElementById("query1").innerHTML = hobyStr;
                            }
                            else
                                document.getElementById("query1").innerHTML = "<input type='text' name='value1'/>";
        }
         
        function detectField2()
        {
            var b = document.getElementById("field2").value;
            if (b == "gender")
            {
                document.getElementById("query2").innerHTML =
                    "<input type='radio' name='value2' value='male' checked = 'checked' />זכר "+
                    "<input type ='radio' name ='value2'  value ='female' /> נקבה";
            }
            else
                if (b == "yearBorn")
                {
                    var yearStr = "<select name ='value2'>";
                var  yaer = new Date().getFullYear();
                var from = yaer - 40;
                var to = yaer - 10;
                    for (var i = from; i < to; i++)
                    yearStr += "<option value2='" + i + "'>" + i + "</option>\n";
                    document.getElementById("query2").innerHTML = yearStr + "</select>";
                }
            else
            if (b == "prefix") {
                var prefixStr = "<select name='value2'>";
                prefixStr += "<option value= '050'>050</option>";
                prefixStr += "<option value= '052'>052</option>";
                prefixStr += "<option value='053'>053</option>";
                prefixStr += "<option value='054'>054</option>";
                prefixStr += "<option value='055'>055</option>";
                prefixStr += "<option value='058'>058</option>";
                prefixStr += "<option value='02'>02</option>";
                prefixStr += "<option value='077'>077</option>";
                prefixStr += "</select>";
                document.getElementById("query2").innerHTML = prefixStr;
            }
            else
        if (b == "city") {
            var cityStr = "<select name='value2'>";
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
            document.getElementById("query2").innerHTML = cityStr;
        }
        else
            if (b == "hobbies") {
                var hobyStr = "<select name='value2'>";
                hobyStr += "<option value='1'>נגינה</option>";
                hobyStr += "<option value='2'>שחיה</option>";
                hobyStr += "<option value='3'>קריאה </option>";
                hobyStr += "<option value='4'>שירה</option>";
                hobyStr += "<option value='5'>ריקוד</option>";
                hobyStr += "</select>";
                document.getElementById("query2").innerHTML = hobyStr;
            }
            else
                document.getElementById("query2").innerHTML = "<input type='text' name='value2'/>";
        }
    </script>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h1>חיפוש משתמשים</h1> 
        <form method="post" runat="server">
            <div>
            <select name="field1" id ="field1" onclick="detectField1()">
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
           <div id ="query1"></div>
            <br />
       <div style="direction:ltr">
           <input type="radio" name="op" value="OR" checked = "checked" />OR &nbsp; &nbsp; &nbsp; &nbsp;
           <input type ="radio" name ="op"  value ="AND" /> AND

       </div>
            <br />
 
            <div>
            <select name="field2" id ="field2" onclick="detectField2()">
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
           <div id ="query2"></div>
            <br />
            <br />
            <div>
            <input type="submit" id ="submit" name="submit" value="   חפש  " />
             </div>
            <h3 style="direction:ltr">
            <%= sql %></h3>
            <br />
            <%=st %>
            <%=msg %>
            
        </form>
</asp:Content>
