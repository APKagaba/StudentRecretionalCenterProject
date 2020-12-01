<%@ Page Title="" Language="C#" MasterPageFile="~/MemberMaster.Master" AutoEventWireup="true" CodeBehind="Locker.aspx.cs" Inherits="CIS420SmitPatel.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        .box
        {
                top: 15%;
                 left: 12%;
                 position: absolute;
                 box-sizing: border-box;
                 width: 65%;
                 height: 50%;
        }
        .auto-style1
        { width: 150px;}

    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="box">
            <h1>Lockers<br />
                
                
            </h1>
        <br />
    
          <asp:GridView ID="gvLocker_Table" runat="server" AutoGenerateColumns="False" ShowFooter="True" BackColor="White" CssClass="table table-striped table-bordered table-hover" ShowHeaderWhenEmpty="True"
              BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3"
               DataSourceID="SqlDataSource1" DataKeyNames="LockerID" ForeColor="Black" GridLines="Vertical" >

              <AlternatingRowStyle BackColor="#CCCCCC" />

              <Columns>
                  <asp:BoundField DataField="LockerID" HeaderText="LockerID" InsertVisible="False" ReadOnly="True" SortExpression="LockerID" />
                  <asp:BoundField DataField="Locker_Size" HeaderText="Locker_Size" SortExpression="Locker_Size" />
                  <asp:BoundField DataField="Locker_Room" HeaderText="Locker_Room" SortExpression="Locker_Room" />
                  <asp:BoundField DataField="MemberID" HeaderText="MemberID" SortExpression="MemberID" />
              </Columns>

              <FooterStyle BackColor="#CCCCCC" />
              <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
              <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
              <SortedAscendingCellStyle BackColor="#F1F1F1" />
              <SortedAscendingHeaderStyle BackColor="#808080" />
              <SortedDescendingCellStyle BackColor="#CAC9C9" />
              <SortedDescendingHeaderStyle BackColor="#383838" />

          </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connectionString %>" SelectCommand="SELECT * FROM [Locker] WHERE ([MemberID] = @MemberID)">
                <SelectParameters>
                    <asp:SessionParameter Name="MemberID" SessionField="MemberID" Type="Int32" />
                </SelectParameters>
    </asp:SqlDataSource>



        <br />
        <br />
        <asp:Button ID="btnNew" runat="server" Text="New Locker" cssclass="btn btn-primary" OnClick="btnNew_Click"/>
    </div>

            <br />
</asp:Content>
