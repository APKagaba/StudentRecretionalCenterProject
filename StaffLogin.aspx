<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StaffLogin.aspx.cs" Inherits="CIS420SmitPatel.StaffLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StaffLogin.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       <div class="login-box">
            <br />
            <h1>Staff Sign In</h1>
            

            <asp:RequiredFieldValidator Display="Dynamic"  ID="Required1" runat="server" ControlToValidate="txtUsername" ErrorMessage="Please enter your username" Font-Size="Small" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtUserName" type="text" placeholder="Enter Username" runat="server"></asp:TextBox>
               
           
           <p>
            <asp:RequiredFieldValidator Display="Dynamic" ID="Required2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Please enter your password" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtPassword" type="password" placeholder="Enter Password" runat="server"></asp:TextBox>
            
           <asp:Label runat="server" ID="validLabel" Text="Enter a valid Username or Password" ForeColor="#FF3300"></asp:Label>
           </p>

        <asp:Button ID="btnLogin" type="submit" runat="server" Text="Login" OnClick="btnLogin_Click" />

            <br />
            <br />
            <asp:HyperLink ID="linkToBack" runat="server" NavigateUrl="~/Home.aspx">Back to Home Page</asp:HyperLink>
            <br />
            <br />

            <br />
        
            </div>
    </form>
</body>
</html>
