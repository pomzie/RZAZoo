<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="RZAZoo.Register" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class ="rectangle"></div>
    <div class="trapezoid">
        <nav>
        <ul>
            <li>
                <a href="/">RZA Zoo</a>
            </li>
            <li><a href="/Attractions">Our Attractions</a></li>
            <li><a href="/Education">Education</a></li>
            <li><a href="/Booking">Booking</a></li>
            <li><a href="/Membership">Membership</a></li>
            <li><a href="/Support">Support</a></li>
            <li>
            <div class="log">
                <a href="/Login">Login</a> / <a href="/Register">Register</a>
            </div>
            </li>
        </ul>
        </nav>
    </div>

    <div class="outercontainer">
        <div class="logincontainer">
            <div class="usrbox">
                <p>Username</p>
                <asp:TextBox CssClass="usrlabel" ID="user" runat="server" ToolTip="Enter username"></asp:TextBox>
            </div>

            <div class="pwdbox">
                <p>Password</p>
                <asp:TextBox CssClass="pwdlabel" ID="pass" runat="server" ToolTip="Enter password"></asp:TextBox> 
            </div>

            <div class="embox">
                <p>Email</p>
                <asp:TextBox CssClass="emlabel" ID="email" runat="server" ToolTip ="Enter email"></asp:TextBox>
            </div>

            <asp:Button class="logbutton" ID="Submit" runat="server" Text="Register" onClick="btnRegister_Click"/>
        </div>
    </div>

</asp:Content>
