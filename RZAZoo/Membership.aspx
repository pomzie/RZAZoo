<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Membership.aspx.cs" Inherits="RZAZoo.Membership" %>

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

    <div>
        <h1>Hello <asp:Label runat="server" ID="usnLabel"></asp:Label></h1>
    </div>

    <div class="outercontainer">
        <div class="buttoncontainer">

        <asp:Button class="orhis" Text="Order History" runat="server" ID="or" OnClick="btnWIP_Click"/>
        <asp:Button class="savinf" Text="Saved information" runat="server" ID="sav" OnClick="btnWIP_Click"/>
        <asp:Button class="chpass" Text="Change password" runat="server" ID="ch" OnClick="btnWIP_Click"/>
        <asp:Button class="canbo" Text="Cancel booking" runat="server" ID="can" OnClick="btnWIP_Click"/>

        <asp:Button class="delacc" Text="Delete account" runat="server" ID="del"/>
        </div>
    </div>
</asp:Content>