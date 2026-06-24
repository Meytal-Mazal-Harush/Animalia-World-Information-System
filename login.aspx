<%@ Page Title="" Language="C#" MasterPageFile="~/masterPaje.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="projectMeytal.login" %>
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">      
   <form name="loginFrm" id="loginFrm" method="post" runat="server"> 
        <h1> כניסת  משתמש</ h1> 
            <table> 
                <tr>   
                    <td>: שם  משתמש </td>
                        <td><input type="text" name="uName" id="uName" /></td>

                </tr>
                <tr> 
                    <td> סיסמה: </td>  
                        <td><input type="password" name="pw" id="pw" /></td> 

                </tr>
                <tr>
                    <td colspan="2" style="text-align:center;">
                        <input type="submit" name="submit" value="התחבר" />
                         </td>
                </tr>
            </table>
       
    </form>
    <%= msg %>
    
</asp:Content>
