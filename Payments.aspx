<%@ Page Title="" Language="C#" MasterPageFile="~/MemberMaster.Master" AutoEventWireup="true" CodeBehind="Payments.aspx.cs" Inherits="CIS420SmitPatel.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
         .auto-style1 {
            width: 200px;
            height: 40px;
        }

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
    <div id="box1">

        
    
        <div class="box">
        <h1>Payment</h1>
            <br />
            <br />
            <br />
            <asp:Label ID="PaymentDescription" runat="server" CssClass="form-control" Text="" BorderStyle="None" BorderWidth="0" Font-Size="Larger"></asp:Label>
        <br />
            <br />
            <asp:TextBox ID="PaymentAmount" runat="server" CssClass="form-control" BorderStyle="None" BorderWidth="0px" Font-Size="XX-Large"></asp:TextBox>
            <br />
            <br />
            <a href ="https://www.paypal.com/webapps/mpp/home"><img alt="" class="auto-style1" src="Images/paypal-button@2x.png" /></a></div>

    </div>
</asp:Content>
