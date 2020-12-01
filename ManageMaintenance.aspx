<%@ Page Title="" Language="C#" MasterPageFile="~/Staff.Master" AutoEventWireup="true" CodeBehind="ManageMaintenance.aspx.cs" Inherits="CIS420SmitPatel.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body{
            height:100vh;
        }
        .gridViewMaintenance{
                    position: absolute;
                    margin-top: 7%;
                    margin-left: 15%;
                    width: 70%;
        }
        
       

       

        

    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="box1">

        
    
        <div class="gridViewMaintenance">
        <h1>Maintenance</h1>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="MaintenanceID" CssClass="table table-striped table-bordered table-hover" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" AllowPaging="True">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="MaintenanceID" HeaderText="Maintenance ID" InsertVisible="False" ReadOnly="True" SortExpression="MaintenanceID" />
                <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" ReadOnly="true" />
                <asp:BoundField DataField="Area" HeaderText="Area" SortExpression="Area" />
                <asp:BoundField DataField="Equipment" HeaderText="Equipment" SortExpression="Equipment" />
                <asp:BoundField DataField="Condition" HeaderText="Condition" SortExpression="Condition" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
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

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connectionString %>" DeleteCommand="DELETE FROM [tblMaintenance] WHERE [MaintenanceID] = @MaintenanceID" InsertCommand="INSERT INTO [tblMaintenance] ([Time], [Area], [Equipment], [Condition], [Description]) VALUES (@Time, @Area, @Equipment, @Condition, @Description)" SelectCommand="SELECT * FROM [tblMaintenance]" UpdateCommand="UPDATE [tblMaintenance] SET [Area] = @Area, [Equipment] = @Equipment, [Condition] = @Condition, [Description] = @Description WHERE [MaintenanceID] = @MaintenanceID">
            <DeleteParameters>
                <asp:Parameter Name="MaintenanceID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Time" Type="String" />
                <asp:Parameter Name="Area" Type="String" />
                <asp:Parameter Name="Equipment" Type="String" />
                <asp:Parameter Name="Condition" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
            </InsertParameters>
            <UpdateParameters>

                <asp:Parameter Name="Area" Type="String" />
                <asp:Parameter Name="Equipment" Type="String" />
                <asp:Parameter Name="Condition" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="MaintenanceID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>

    </div>
    


    
    
   
   

</asp:Content>
