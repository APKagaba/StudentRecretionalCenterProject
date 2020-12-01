<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="CIS420SmitPatel.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="SignUp.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
<div class="signup-box">
            <h1>Sign Up</h1>
            <br />
            <asp:Label ID="lblSuccessMessage" Text="" runat="server" ForeColor="Green" />
            <asp:Label ID="lblErrorMessage" Text="" runat="server" ForeColor="Red" />
            <br />
            <asp:TextBox ID="txtFirstname" placeholder="First Name" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtLastname" placeholder="Last Name" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtPhone" placeholder="Phone Number" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtEmail" placeholder="Email address" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtUsername" placeholder="Username" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtPassword" type="password" placeholder="Password" runat="server"></asp:TextBox>
            <asp:Button ID="btnSignup" runat="server" Text="Sign Up" OnClick="btnSignup_Click" />
            <br />
            <br />
            <asp:HyperLink ID="linkSignin" runat="server" NavigateUrl="Home.aspx">Do you have an acccount? Sign in</asp:HyperLink>
            
        </div>
    </form>
</body>
</html>
