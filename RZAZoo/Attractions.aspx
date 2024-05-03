<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Attractions.aspx.cs" Inherits="RZAZoo.About" %>
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
        <h1>Our attractions</h1>
        <h4>[List the attractions available on site and their times]</h4>

        <h1>What's on</h1>
        <h4>[List upcoming events and shows and their times]</h4>
    </div>
</asp:Content>