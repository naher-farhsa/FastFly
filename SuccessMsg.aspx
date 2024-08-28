
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SuccessMsg.aspx.cs" Inherits="Airline_Booking_System.SuccessMsg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Success Message</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Success!</h2>
            <asp:Label ID="lblMessage" runat="server" Text="⭐⭐ Ticket Booked Successfully! ⭐⭐"></asp:Label>
        </div>
    </form>
</body>
</html>
