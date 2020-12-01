<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Email.aspx.cs" Inherits="CIS420SmitPatel.Email" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Email Sendout</title>
    <link href="Email.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="email-box">
            <br />
            <h1>Email Sendout</h1>
        <br />
        <br />
        <asp:Label ID="LblTo" runat="server" Text="To:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtTo" runat="server" TextMode="MultiLine" Width="277px" CssClass="form-control" Height="18px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="LblSubject" runat="server" Text="Subject:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtSubject" runat="server" Width="276px" CssClass="form-control"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="LblMessage" runat="server" Text="Message"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtMessage" runat="server" Height="146px" TextMode="MultiLine" Width="538px" CssClass="form-control"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="BtnSend" runat="server" Text="Send" OnClick="BtnSend_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BtnDiscard" runat="server" Text="Discard" OnClick="BtnDiscard_Click" />
      </div>
    </form>
</body>
</html>
