<%@ Page Title="" Language="C#" MasterPageFile="~/masterPaje.Master" AutoEventWireup="true" CodeBehind="delete.aspx.cs" Inherits="projectMeytal.delete" %>
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
    <h1>מחיקת משתמשים</h1>
            <%= sql %>
            <%=st %>
            <%=msg %>
</asp:Content>
