<%@ Page Title="" Language="C#" MasterPageFile="~/masterPaje.Master" AutoEventWireup="true" CodeBehind="galerya.aspx.cs" Inherits="projectMeytal.galerya" %>
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
        function PicShow(picSrc)
        {
            bigPic.src = picSrc
        }
    </script>
 </asp:Content>
 <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table style="text-align:center"; "margin: 0 auto";>
        <tr>
            <td><img src="pics/machmad.jpg" width="200" height="200" id="machmad" onmouseover="PicShow('pics/machmad.jpg')"/></td>    
            <td><img src="pics/machmad1.jpg"   width="200" height="200" id="machmad1" onmouseover="PicShow( 'pics/machmad1.jpg')"/></td>  
            <td><img src="pics/machmad3.jpg"  width="200" height="200" id="machmad3" onmouseover="PicShow( 'pics/machmad3.jpg') "/> </td>
            <td><img src="pics/machmad4.jpg"  width="200" height="200" id="machmad4" onmouseover="PicShow( 'pics/machmad4.jpg')"/></td>

        </tr>
        <tr>
            <td><img src="pics/torfim.jpg" width="200" height="200" id="torfim" onmouseover="PicShow('pics/torfim.jpg')"/></td>
                
                
            <td colspan="2" rowspan="2"> <img src="pics/1643294086063.jpg"width="400" height="400"id="bigPic" onmouseover="PicShow('pics/1643294086063.jpg')"/></td>
            <td><img src="pics/torfim2.jpg" width="200" height="200" id="torfim2" onmouseover="PicShow('pics/torfim2.jpg')"/></td>
        </tr>
        <tr>
            <td><img src="pics/torfim3.jpg" width="200" height="200"  id="torfim3" onmouseover="PicShow('pics/torfim3.jpg')"/></td>
                
            <td><img src="pics/torfim4.jpg" width="200" height="200" id="torfim4" onmouseover="PicShow('pics/torfim4.jpg')"/></td>
                
        </tr>
        <tr>
            <td><img src="pics/yam1.jpg" width="200" height="200" id="yam1" onmouseover="PicShow('pics/yam1.jpg')"/></td>
                
            <td><img src="pics/yam2.jpg" width="200" height="200" id="yam2" onmouseover="PicShow('pics/yam2.jpg')"/></td>
                
            <td> <img src="pics/yam3.jpg" width="200" height="200" id="yam3" onmouseover="PicShow('pics/yam3.jpg')"/></td>
            <td><img src="pics/yam4.jpg" width="200" height="200" id="yam4" onmouseover="PicShow('pics/yam4.jpg')" /></td>
                
        </tr>
    </table>
</asp:Content>
