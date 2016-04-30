<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="glowcosmetics.Contactform" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="CSS/contactstyles.css" rel="stylesheet" />

    <!-- Google Maps and Places API -->
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?libraries=places&sensor=false"></script>
    <!-- jQuery -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
        
    <script type="text/javascript">

        var map;
        function initialize() {
            var latlng = new google.maps.LatLng(4.885364, 114.931429);
            var myOptions = {
                zoom: 18,
                center: latlng,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            map = new google.maps.Map(document.getElementById("googlemap"), myOptions);
            var marker = new google.maps.Marker
            (
                {
                    position: new google.maps.LatLng(4.885364, 114.931429),
                    map: map,
                    title: 'Glow Cosmetics'
                }
            );S
            var infowindow = new google.maps.InfoWindow({
                content: 'Glow Cosmetics'
            });
            google.maps.event.addListener(marker, 'click', function () {

                infowindow.open(map, marker);
            });
        }
        window.onload = initialize;

        
        </script>
    
        

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Contact Form</h1>
    <div id="contactform">
       
        <ul>
    <asp:Label ID="DisplayMessage" runat="server" Visible="false" />
    <asp:literal id="litresult" runat="server"></asp:literal>

    <p>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage=" Name is required" Display="Dynamic" />
    <asp:RequiredFieldValidator ID="requiredemail" runat="server" ControlToValidate="txtemail" ErrorMessage=" Please enter your email address." Display="Dynamic" /> 
    <asp:RequiredFieldValidator ID="requiredmsg" runat="server" ControlToValidate="txtmessage" ErrorMessage="Please enter your message" Display="Dynamic" />
    </p>

    <li><asp:label id="lblname" runat="server" text="Name:"></asp:label></li>
    <li><asp:textbox id="txtname" runat="server" required="Field is required" /></li>
    

    <li><asp:label id="lblemail" runat="server" text="Email:"></asp:label></li>
    <li><asp:textbox id="txtemail" runat="server" required ="Field is required"></asp:textbox><asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator1"
            SetFocusOnError="true" Text="Example: username@gmail.com" ControlToValidate="txtemail"
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"
            ValidationGroup="save" />  </li>
    <asp:RequiredFieldValidator ID="reqemail" runat="server" ErrorMessage="Email address is required. " ControlToValidate="txtemail"></asp:RequiredFieldValidator>
  
    <li><asp:label id="lblsubject" runat="server" text="Subject:"></asp:label></li>
    <li><asp:textbox id="txtsubject" runat="server"></asp:textbox></li>

    <li><asp:label id="lblmessage" runat="server" text="Message:"></asp:label></li>
    <li><asp:textbox id="txtmessage" runat="server" TextMode="MultiLine" ViewStateMode="Enabled" CssClass="multiline" required=""></asp:textbox></li>
    
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
        <div id="googlemap">
        
        </div> <!--googlemap--> 
    </div>
       
</asp:Content>
