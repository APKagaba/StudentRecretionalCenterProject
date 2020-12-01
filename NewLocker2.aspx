<%@ Page Title="" Language="C#" MasterPageFile="~/MemberMaster.Master" AutoEventWireup="true" CodeBehind="NewLocker2.aspx.cs" Inherits="CIS420SmitPatel.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
         .box
        {
                top: 20%;
                 left: 12%;
                 position: absolute;
                 box-sizing: border-box;
                 width: 65%;
                 height: 50%;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
     <div class="box">
         <h1>New Locker</h1>
         <br />
         <br />
    <h5 class="auto-style3">Locker Size</h5>

         <asp:DropDownList CssClass="form-control" ID="dropSize" width="300px" runat="server">
             <asp:ListItem>Small</asp:ListItem>
             <asp:ListItem>Large</asp:ListItem>
    </asp:DropDownList>
 
        <br />

        <h5 class="auto-style3">Locker Room</h5>
        
                <asp:DropDownList CssClass="form-control" width="300px" ID="dropRoom" runat="server">
                    <asp:ListItem>Men</asp:ListItem>
                    <asp:ListItem>Women</asp:ListItem>
    </asp:DropDownList>
   
        <br />
    <br />
         <br />
    <asp:Button ID="btnNew" Width="100px" runat="server" Text="Buy" CssClass="btn btn-primary" Font-Size="Large" OnClick="btnNew_Click" />

        </div>

</asp:Content>
