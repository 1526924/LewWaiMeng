<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="CSS/loginstyles.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="container">
       
        <div id="login">
            <h3>Returning Customers</h3>
            <ul>
            <li><asp:Label ID="lbllogin" runat="server" Text="Login User:"></asp:Label></li>
            <li><asp:TextBox ID="txtusername" runat="server"></asp:TextBox></li>
            <li><asp:Label ID="lblpassword" runat="server" Text="Password:"></asp:Label></li>
            <li><asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox></li>
                <li>
                <asp:Button ID="Button4" runat="server" OnClick="Button1_Click" Text="Reset" />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
                </li>
            </ul>
               
        </div>
       
        </div> <!--end of login-->
        
        <div id="signup">
            <h3>New Customers</h3>
            <ul>
                <li><asp:Label ID="lblfirstname" runat="server" Text="First Name:"></asp:Label></li>
                <li><asp:TextBox ID="txtfirstname" runat="server"></asp:TextBox></li>

                <li><asp:Label ID="lbllastname" runat="server" Text="Last Name:"></asp:Label></li>
                <li><asp:TextBox ID="txtlastname" runat="server"></asp:TextBox></li>

                <li><asp:Label ID="lblusername" runat="server" Text="Username:"></asp:Label></li>
                <li><asp:TextBox ID="txtnewusername" runat="server"></asp:TextBox></li>

                <li><asp:Label ID="lblnewpwd" runat="server" Text="Password:"></asp:Label></li>
                <li><asp:TextBox ID="txtnewpwd" runat="server"></asp:TextBox></li>

                <li><asp:Label ID="lblconfirmpwd" runat="server" Text="Confirm Password:"></asp:Label></li>
                <li><asp:TextBox ID="txtconfirmpwd" runat="server"></asp:TextBox></li>

                <li><asp:Label ID="lblemail" runat="server" Text="Email Address:"></asp:Label></li>
                <li><asp:TextBox ID="txtemail" runat="server"></asp:TextBox></li>

                <li><asp:Label ID="lbladdress" runat="server" Text="Address:"></asp:Label></li>
                <li><asp:TextBox ID="txtaddress" runat="server"></asp:TextBox></li>

                <li>
                <asp:Button ID="Button3" runat="server" Text="Reset"/>
                <asp:Button ID="Button2" runat="server" Text="Sign Up"/>
                </li>
               



            </ul>
     

        </div> <!--end of signup-->


</asp:Content>

