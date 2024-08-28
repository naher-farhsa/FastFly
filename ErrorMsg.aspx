<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ErrorMsg.aspx.cs" Inherits="Airline_Booking_System.ErrorMsg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Error Message</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Error!</h2>
            <asp:Label ID="lblErrorMessage" runat="server" Text="‼️ Failed to Book Ticket. ‼️"></asp:Label>
        </div>
    </form>
</body>
</html>
