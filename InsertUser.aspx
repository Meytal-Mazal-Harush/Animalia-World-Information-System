<%@ Page Title="" Language="C#" MasterPageFile="~/masterPaje.Master" AutoEventWireup="true" CodeBehind="InsertUser.aspx.cs" Inherits="projectMeytal.InsertUser" %>
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
        function checkForm() {
            var uName = document.getElementById("uName").value;
            if (uName.length < 2) {
                document.getElementById("mUName").value = "שם משתמש קצר מדי או לא קיים"
                document.getElementById("mUName").style.display = "inline";
                return false;
            }
            else
                document.getElementById("mUName").style.display = "none";

            var fName = document.getElementById("fName").value;
            if (fName.length < 2) {
                document.getElementById("mFName").value = "שם פרטי קצר מדי או לא קיים"
                document.getElementById("mFName").style.display = "inline";
                return false;
            }
            else
                document.getElementById("mFName").style.display = "none";

            var lName = document.getElementById("lName").value;
            if (lName.length < 2) {
                document.getElementById("mLName").value = "שם משפחה קצר מדי או לא קיים"
                document.getElementById("mLName").style.display = "inline";
                return false;
            }
            else
                document.getElementById("mLName").style.display = "none";

            var email = document.getElementById("email").value;
            if (email.length < 2) {
                document.getElementById("mEmail").value = "שם דואל קצר מדי או לא קיים"
                document.getElementById("mEmail").style.display = "inline";
                return false;
            }
            else
                document.getElementById("mEmail").style.display = "none";

            var pelefon = document.getElementById("pelefon").value;
            if (pelefon.length != 7) {
                document.getElementById("mPelefon").value = "מספר טלפון קצר מדי או לא קיים"
                document.getElementById("mPelefon").style.display = "inline";
                return false;
            }
            else
                document.getElementById("mPelefon").style.display = "none";

            var pw = document.getElementById("pw").value;
            if ((pw.length < 6) || (pw.length > 8)) {
                document.getElementById("mPw").value = "סיסמה קצרה או ארוכה מדי "
                document.getElementById("mPw").style.display = "inline";
                return false;
            }
            else
                document.getElementById("mPw").style.display = "none";


            var pw1 = document.getElementById("pw1").value;
            if (pw != pw1) {
                document.getElementById("mPw1").value = "אימות הסיסמה אינה תואמת לסיסמה"
                document.getElementById("mPw1").style.display = "inline";
                return false;
            }
            else
                document.getElementById("mPw1").style.display = "none";
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <form name="frm" method="post" runat="server" onsubmit ="return checkForm();">
    <h2>טופס רישום</h2>
    <table>
        <tr>
            <td>
            שם משתמש
            </td>
            <td>
                <input type="text" name="uName" id="uName" />
            </td>
            <td>
                <input type="text" id="mUName" size="30"
                style ="display:none; background-color:Silver; font-weight:bold;"
                disabled = "disabled" />
            </td>
        </tr>
              <tr>
            <td>
        שם פרטי
            </td>
            <td>
                <input type="text" name="fName" id="fName" />
            </td>
            <td>
                <input type="text" id="mFName" size="30"
                style ="display:none; background-color:Silver; font-weight:bold;"
                disabled = "disabled" />
            </td>
        </tr>
        <tr>
            <td>
            שם משפחה
            </td>
            <td>
                <input type="text" name="lName" id="lName" />
            </td>
            <td>
                <input type="text" id="mLName" size="30"
                style ="display:none; background-color:Silver; font-weight:bold;"
                disabled = "disabled" />
            </td>
        </tr>
        <tr>
            <td>
            דוא"ל
            </td>
            <td>
                <input type="text" name="email" id="email" />
            </td>
            <td>
                <input type="text" id="mEmail" size="30"
                style ="display:none; background-color:Silver; font-weight:bold;"
                disabled = "disabled" />
            </td>
        </tr>
              <tr>
            <td>
          מגדר
            </td>
            <td>
                <input type="radio" name="gender" value="male" />זכר&nbsp;&nbsp;&nbsp;
                <input type="radio" name="gender" value="female" />נקבה
            </td>
        </tr>
       <tr>
            <td>טלפון</td>
            <td>
               <input type="text" name="pelefon" id="pelefon" />
               &nbsp;&nbsp;- &nbsp;&nbsp;                    
               <select id ="prefix" name ="prefix">
                    <option value ="050">050</option>
                    <option value ="052">052</option>
                    <option value ="053">053</option>
                    <option value ="054">054</option>
                    <option value ="055">055</option>
                    <option value ="058">058</option>
                    <option value ="02">02</option>
                    <option value ="077">077</option>
                   
               </select>
      
            </td>
            <td>
               <input type="text" id="mPelefon" size="30"
               style ="display:none; background-color:Silver; font-weight:bold;"
               disabled = "disabled" />
            </td>
          </tr>
         <tr>
        
            <td>
     שנת לידה
            </td>
            <td>
                <select name="yearBorn" id="yearBorn">
                  <%= yrBorn %>
                </select>
            </td>
        </tr> 
        <tr>
        
            <td>
        יישוב מגורים
            </td>
            <td>
                 <select id ="city" name ="city">
                        <option value ="אשדוד">אשדוד</option>
                        <option value ="אשקלון">אשקלון</option>
                        <option value ="באר שבע">באר שבע</option>
                        <option value ="בני ברק">בני ברק</option>
                        <option value ="חיפה">חיפה</option>
                        <option value ="טבריה">טבריה</option>
                        <option value ="ירושלים">ירושלים</option>
                        <option value ="נתניה">נתניה</option>
                        <option value ="צפת">צפת</option>
                        <option value ="תל אביב">תל אביב</option>
                </select>
            </td>
        </tr>
         <tr>
        
            <td>
         תחביבים
            </td>
            <td>
                <input type="checkbox" name="hobbies" value="play" />נגינה
                <input type="checkbox" name="hobbies" value="sweem" />שחיה
                <input type="checkbox" name="hobbies" value="read" /> קריאה
                <input type="checkbox" name="hobbies" value="sing" />שירה
                <input type="checkbox" name="hobbies" value="dance" />ריקוד
            </td>
        </tr> 
        <tr>
        
            <td>
      סיסמה
            </td>
            <td>
                <input type="password" name="pw" id="pw" />
            </td>
            <td>
                <input type="text" id="mPw" size="30"
                style ="display:none; background-color:Silver; font-weight:bold;"
                disabled = "disabled" />
            </td>
        </tr> 
        <tr>
        
            <td>
               אימת סיסמה
            </td>
            <td>
                <input type="password" name="pw1" id="pw1" />
            </td>
            <td>
                <input type="text" id="mPw1" size="30"
                style ="display:none; background-color:Silver; font-weight:bold;"
                disabled = "disabled" />
            </td>
        </tr>
        <tr>
            <td>
                <td colspan="2";style="text-align:center";>
                <input type="submit" name="submit" value="  שלח  " />
                <input type="reset"  value="  נקה  " />
            </td>
        </tr>
    </table>
    <%=st %>
    <%=sqlMsg %>
        </form>
 

</asp:Content>
