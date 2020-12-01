<%@ Page Title="" Language="C#" MasterPageFile="~/Staff.Master" AutoEventWireup="true" CodeBehind="Email2.aspx.cs" Inherits="CIS420SmitPatel.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .email-box {
            display: block;
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: #495057;
            background-clip: padding-box;
            border-radius: .25rem;
            transition: none;
            border: 1px solid #ced4da;
            background-color: #fff;
            position: absolute;
            top: 20%;
            margin-left: 12%;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="email-box">
            <br />
            <h1>Email Sendout</h1>
        <br />

        <asp:Label ID="LblTo" runat="server" Text="To:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtTo" runat="server" Width="276px"  CssClass="form-control" Height="29px"></asp:TextBox>
        <br />

        <asp:Label ID="LblSubject" runat="server" Text="Subject:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtSubject" runat="server" Width="276px" CssClass="form-control"></asp:TextBox>
        <br />

        <asp:Label ID="LblMessage" runat="server" Text="Message"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtMessage" runat="server" Height="146px" TextMode="MultiLine" Width="538px" CssClass="form-control"></asp:TextBox>
        <br />

        <asp:Button ID="BtnSend" cssclass="btn btn-primary" runat="server" Text="Send" OnClick="BtnSend_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BtnDiscard" CssClass="btn btn-danger" runat="server" Text="Discard" OnClick="BtnDiscard_Click" />
        <br />
        <asp:Label ID="lblSuccess" runat="server" Text="" ForeColor="#FF3300"></asp:Label>
      </div>
</asp:Content>
