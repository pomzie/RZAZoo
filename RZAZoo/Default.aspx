<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="RZAZoo._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <body>
        <main>
            <div class ="rectangle"></div>
            <div class="trapezoidmenu">
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


            <div class ="mid">
                <span><h1>Welcome to</h1><h3>RZA zoo</h3><br /><br /><br /><br /><br /><br /><br /></span>
            </div>

            <div class ="footer">
                <h2>A little bit about us</h2>
                <br /><br /><br />
                <h1>The history of our zoo</h1>
                <p>[A long bit of history about the zoo and hotel]</p>
                <br /><br /><br />
                <h1>Where to find us</h1>
                <h2>Our location</h2>
                <p>[A google map of directions to the zoo]</p>
                <br /><br /><br />
                <h2>Finding us online</h2>
                <p>[links to social media]</p>
                <br /><br /><br />
            </div>

        </main>
    </body>
</asp:Content>
