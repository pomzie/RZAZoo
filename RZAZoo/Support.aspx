<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Support.aspx.cs" Inherits="RZAZoo.About" %>

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

    <div class="box">
        <div class="infobox">
            <h1>Support information</h1>
            <p>[Insert support information here]</p>
        </div>
        <br /><br /><br /><br />
        <div class="email">
            <asp:TextBox runat="server"></asp:TextBox><button>Submit</button>
        </div>
    </div>

</asp:Content>