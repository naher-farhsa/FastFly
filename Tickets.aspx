<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tickets.aspx.cs" Inherits="Airline_Booking_System.Tickets" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Book Ticket</title>
    <style>
       
        #form-container {
            width: 50%;
            margin: 0 auto; 
            padding: 20px;
            border: 1px solid #ccc; 
            border-radius: 10px; 
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center; 
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: inline-block;
            width: 140px;
            font-weight: bold;
            height: 41px;
        }

        .form-group input[type="text"],
        .form-group select {
            padding: 5px;
        }

        .form-group img {
            max-width: 100%;
            height: auto;
            vertical-align: middle;
            cursor: pointer;
        }

        .form-group button {
            display: block; 
            margin: 0 auto; 
        }
    </style>
</head>
<body>
    <div id="form-container">
        <img src="logo.png" alt="Airline Logo" style="height: 72px; width: 158px" />
        <form id="form1" runat="server">
            <div>
                <h2 style="color:dodgerblue">Book Airline Ticket</h2>
                <div class="form-group">
                    <label for="TextBox1">Ticket ID:</label>
                    <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="TextBox2">Name:</label>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="ddlFlight">Flight ID:</label>
                    <asp:DropDownList ID="TextBox3" runat="server" Height="31px" Width="181px" >
                        <asp:ListItem Text="Indigo6E" Value="Indigo6E"></asp:ListItem>
                        <asp:ListItem Text="AirIndiaAX2" Value="AirIndiaAX2"></asp:ListItem>
                        <asp:ListItem Text="VistaraV5" Value="VistaraV5"></asp:ListItem>
                        <asp:ListItem Text="SpiceJetIX" Value="SpiceJetIX"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label for="TextBox4">Departure:</label>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="TextBox5">Arrival:</label>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="TextBox6">Date:</label>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="TextBox7">Time:</label>
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Button ID="btnBookTicket" runat="server" Text="Book Ticket" OnClick="Button1_Click" />
                </div>
            </div>
        </form>
    </div>
</body>
</html>
