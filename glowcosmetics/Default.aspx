<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="CSS/defaultstyles.css" rel="stylesheet" />
    <div id="content">
    <h1>FEATURED PRODUCTS</h1>
   
         <div id="featured">
        <ul>
            <li><img src="Images/Products/Lips/bonfiresseason.jpeg" />
                <p>Bonfire's Season</p>
                <p>$13.95</p>
            </li>
            <li> <img src="Images/Products/Lips/autumnssoul.jpeg" /> 
                <p>Autumn's Soul</p>
                <p>$13.95</p>
            </li>
            <li><img src="Images/Products/Lips/firesideflirting.jpeg" /> 
                <p>Fireside Flirting</p>
                <p>$13.95</p>
            </li>

        </ul>


    </div><!--end of featured-->
    <div id="menuicon">
        <ul>
        <li>
            <a href="Eyes.html"><img src="Images/eyeslogo.jpg" /></a>
        </li>
        <li>
            <a href="lips.html"><img src="Images/lipslogo.jpg" /></a>
        </li>
        <li>
            <a href="product3.html"><img src="Images/facelogo.jpg" /></a>
        </li>
        </ul>

    </div><!-- end of menu-->

    </div><!--end of content-->

    </asp:Content>

