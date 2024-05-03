<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Education.aspx.cs" Inherits="RZAZoo.About" %>

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

    <div class="infosquarecontainer">
        <div class="infosquare1">
            <div class="imgbox1"></div>
            <p1>[Link to education resource 1]</p1>
        </div>

        <div class="infosquare2">
            <div class="imgbox2"></div>
            <p1>[Link to education resource 2]</p1>
        </div>

        <a href="/Booking" class="bookbutton">Educational trip booking</a>
    </div>
</asp:Content>