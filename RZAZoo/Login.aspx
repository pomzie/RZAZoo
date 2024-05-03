<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="RZAZoo.Login" %>

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

            <asp:Button class="logbutton" ID="Submit" runat="server" Text="Login" onClick="btnLogin_Click"/>
        </div>

        <div class= "registext">
            Don't have an account? <a class ="regtext" href="/Register.aspx">Register</a> here!
        </div>
    </div>

    


</asp:Content>
