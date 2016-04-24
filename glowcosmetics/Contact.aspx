<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="CSS/contactstyles.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <h1>Contact Form</h1>
    <div id="contactform">
       
        <ul>
    <asp:Label ID="DisplayMessage" runat="server" Visible="false" />
    <asp:literal id="litresult" runat="server"></asp:literal>
    <li><asp:label id="lblname" runat="server" text="Name:"></asp:label></li>
    <li><asp:textbox id="txtname" runat="server"></asp:textbox></li>

    <li><asp:label id="lblemail" runat="server" text="Email:"></asp:label></li>
    <li><asp:textbox id="txtemail" runat="server"></asp:textbox><asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator1"
            SetFocusOnError="true" Text="Example: username@gmail.com" ControlToValidate="txtemail"
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"
            ValidationGroup="save" />  </li>
    <asp:RequiredFieldValidator ID="reqemail" runat="server" ErrorMessage="Email address is required. " ControlToValidate="txtemail"></asp:RequiredFieldValidator>
  

    <li><asp:label id="lblsubject" runat="server" text="Subject:"></asp:label></li>
    <li><asp:textbox id="txtsubject" runat="server"></asp:textbox></li>

    <li><asp:label id="lblmessage" runat="server" text="Message:"></asp:label></li>
    <li><asp:textbox id="txtmessage" runat="server" TextMode="MultiLine" ViewStateMode="Enabled" CssClass="multiline"></asp:textbox></li>
    
            <li>
        <asp:Button ID="btnsend" runat="server" Text="SEND EMAIL" OnClick="btnsend_Click" />
        <asp:button id="btnreset" runat="server" text="RESET" OnClick="btnreset_Click" />

    </li>
           
       </ul>
        
    </div><!--endofcontactform-->

    <div id="text1">
        <p><img src="Images/contactus.jpg" /></p>
        <h3>Questions or Enquiries? </h3>
    <p>
        Is there anything you want to ask? Feel free to leave us a message. 
        You can also email us directly.
    </p>

        <p>
            Email Address: glowcosmeticsbn@gmail.com
        </p>

        <p><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3975.3236145264364!2d114.92922715005197!3d4.885368641372196!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x32228ac8ee3f7d03%3A0xcacd96016959ec39!2sLaksamana+College+of+Business!5e0!3m2!1sen!2sbn!4v1460568379437" width="800" height="300" frameborder="0" style="border:0" allowfullscreen></iframe></p>
    </div>
       
</asp:Content>

