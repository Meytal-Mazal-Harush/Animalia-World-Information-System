<%@ Page Title="" Language="C#" MasterPageFile="~/masterPaje.Master" AutoEventWireup="true" CodeBehind="loginMenager.aspx.cs" Inherits="projectMeytal.loginMenager" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
         body {
             text-align:center;
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
          
    <h1>כניסת מנהל</h1>
    <table>
        <tr>
            <td>שם מנהל</td>
            <td><input type="text" name="menagerName" id="menagerName" /></td>
           </tr>
        <tr>
            <td>סיסמה</td>
            <td><input type="password" name="mpw" id="mpw" /></td>
        </tr>
        <tr>
                <td colspan="2" style="text-align:center;">
                    <input type="submit" name="submit" id ="submit" value="התחבר" />
                </td>
            </tr>
    </table>
    <%= msg %>
    <%= sqlAdmin %>
        </form>
</asp:Content>
