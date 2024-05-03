<%@ Page Title="Booking" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="RZAZoo.Booking" %>

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
        <div class="bookingcontainer">
            <h1 class="title">Booking a trip</h1>

            <div class="radbuttons">
                Booking:
                <asp:RadioButtonList ID="options" runat="server">
                    <asp:ListItem Text="Zoo" Value="1" />
                    <asp:ListItem Text ="Zoo and Hotel" Value="2" />
                </asp:RadioButtonList>
            </div>

            <div class="stay">
                Starting date: <asp:TextBox runat="server" ID="datestart" type="date"/>
                <br />
                How many days you'll stay: <asp:TextBox Text="0" runat="server" ID="staydays" type="number"/>
            </div>

            <div class="tick">
                Ticket amount: <asp:TextBox Text="0" runat="server" ID="ticknumb" type="number"/>
            </div>

            <div class="checkbuttons">
                Extras:<br /> 
                <asp:Checkbox runat="server" Text="Guide book" ID="book" /><br />
                <asp:Checkbox runat="server" Text ="Show tickets" ID="show" /><br />
                <asp:Checkbox runat="server" Text ="Guided tour" ID="tour" />               
            </div>

            <div class="disc">
                Discount code: <asp:TextBox runat="server" ID="disc"></asp:TextBox>
            </div>

            
            <asp:Button class="calbutton" Text="Calculate total cost" ID="cal" runat="server" onClick="cal_Click"/>
            <asp:Button CssClass="subbutton" Text="Submit booking" ID="sub" runat="server" onClick="sub_Click" />


            <div class="costbox">
                <h5>Total cost:</h5>
                <br /> 
                <asp:Label ID="costLabel" runat="server"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
