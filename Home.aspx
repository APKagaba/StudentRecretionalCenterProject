<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CIS420SmitPatel.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Home.css" rel="stylesheet" />
</head>
<body>
    <form id="form2" runat="server">
        <div class="login-box">
            <br />
            <h1>Sign In</h1>
            
            <asp:TextBox ID="txtUsername" type="text" placeholder="Enter Username" runat="server"></asp:TextBox>
        
        <p>
            <asp:TextBox ID="txtPassword" type="password" placeholder="Enter Password" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="btnLogin" type="submit" runat="server" Text="Login" OnClick="btnLogin_Click" />
        
            <br />
            <br />
        <asp:HyperLink ID="linkSignup" runat="server" NavigateUrl="~/SignUp.aspx">Don&#39;t have a account? Sign Up</asp:HyperLink>
            <br />
         <asp:Label ID="lblErrorMessage" runat="server" Text="Incorrent Username or Password. Please Try again!" ForeColor="Red"></asp:Label>
            <br />
            <asp:HyperLink ID="linkToStaff" runat="server" NavigateUrl="~/StaffLogin.aspx">Staff Login</asp:HyperLink>
            <br />    
        </div>
            
    </form>
</body>
</html>
