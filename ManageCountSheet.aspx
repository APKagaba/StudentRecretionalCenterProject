<%@ Page Title="" Language="C#" MasterPageFile="~/Staff.Master" AutoEventWireup="true" CodeBehind="ManageCountSheet.aspx.cs" Inherits="CIS420SmitPatel.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
         #box2{
            height:100vh;
        }

         #gridViewCountSheet{
            position: absolute;
            left: 3%;
            margin-top: 2%;
            
            width: 95%;
        }

    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="box2">



         <div id="gridViewCountSheet">

             <asp:Panel ID="Panel1" runat="server" Style="overflow: auto" >

                 <h1>Count Sheet</h1>
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="CountSheetID" DataSourceID="SqlDataSource2" CssClass="table table-striped table-bordered table-hover" ForeColor="Black" GridLines="Vertical" AllowPaging="True">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="CountSheetID" HeaderText="Count Sheet ID" InsertVisible="False" ReadOnly="True" SortExpression="CountSheetID" />
                <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" ReadOnly="true" />
                <asp:BoundField DataField="WeightRoom" HeaderText="Weight Room" SortExpression="WeightRoom" />
                <asp:BoundField DataField="SportClubRoom" HeaderText="Sport Club Room" SortExpression="SportClubRoom" />
                <asp:BoundField DataField="MainGymFloor" HeaderText="Main Gym Floor" SortExpression="MainGymFloor" />
                <asp:BoundField DataField="MACCourt" HeaderText="MAC Court" SortExpression="MACCourt" />
                <asp:BoundField DataField="Annex" HeaderText="Annex" SortExpression="Annex" />
                <asp:BoundField DataField="GroupFitness200" HeaderText="Group Fitness 200" SortExpression="GroupFitness200" />
                <asp:BoundField DataField="GroupFitness201" HeaderText="Group Fitness 201" SortExpression="GroupFitness201" />
                <asp:BoundField DataField="GolfSimulator" HeaderText="Golf Simulator" SortExpression="GolfSimulator" />
                <asp:BoundField DataField="RacquetballCourt" HeaderText="Racquetball Court" SortExpression="RacquetballCourt" />
                <asp:BoundField DataField="RunningTrack" HeaderText="Running Track" SortExpression="RunningTrack" />
                <asp:BoundField DataField="SkyGym" HeaderText="Sky Gym" SortExpression="SkyGym" />
                <asp:BoundField DataField="QdobaGamingArea" HeaderText="Qdoba Gaming Area" SortExpression="QdobaGamingArea" />
                <asp:BoundField DataField="TheHatfield" HeaderText="The Hatfield" SortExpression="TheHatfield" />
                <asp:BoundField DataField="Classroom207" HeaderText="Classroom 207" SortExpression="Classroom207" />
                <asp:BoundField DataField="Classroom110" HeaderText="Classroom 110" SortExpression="Classroom110" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:connectionString %>" SelectCommand="SELECT * FROM [tblCountSheet]" DeleteCommand="DELETE FROM [tblCountSheet] WHERE [CountSheetID] = @CountSheetID" InsertCommand="INSERT INTO [tblCountSheet] ([Time], [WeightRoom], [SportClubRoom], [MainGymFloor], [MACCourt], [Annex], [GroupFitness200], [GroupFitness201], [GolfSimulator], [RacquetballCourt], [RunningTrack], [SkyGym], [QdobaGamingArea], [TheHatfield], [Classroom207], [Classroom110]) VALUES (@Time, @WeightRoom, @SportClubRoom, @MainGymFloor, @MACCourt, @Annex, @GroupFitness200, @GroupFitness201, @GolfSimulator, @RacquetballCourt, @RunningTrack, @SkyGym, @QdobaGamingArea, @TheHatfield, @Classroom207, @Classroom110)" UpdateCommand="UPDATE [tblCountSheet] SET [WeightRoom] = @WeightRoom, [SportClubRoom] = @SportClubRoom, [MainGymFloor] = @MainGymFloor, [MACCourt] = @MACCourt, [Annex] = @Annex, [GroupFitness200] = @GroupFitness200, [GroupFitness201] = @GroupFitness201, [GolfSimulator] = @GolfSimulator, [RacquetballCourt] = @RacquetballCourt, [RunningTrack] = @RunningTrack, [SkyGym] = @SkyGym, [QdobaGamingArea] = @QdobaGamingArea, [TheHatfield] = @TheHatfield, [Classroom207] = @Classroom207, [Classroom110] = @Classroom110 WHERE [CountSheetID] = @CountSheetID">
            <DeleteParameters>
                <asp:Parameter Name="CountSheetID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Time" Type="String" />
                <asp:Parameter Name="WeightRoom" Type="String" />
                <asp:Parameter Name="SportClubRoom" Type="String" />
                <asp:Parameter Name="MainGymFloor" Type="String" />
                <asp:Parameter Name="MACCourt" Type="String" />
                <asp:Parameter Name="Annex" Type="String" />
                <asp:Parameter Name="GroupFitness200" Type="String" />
                <asp:Parameter Name="GroupFitness201" Type="String" />
                <asp:Parameter Name="GolfSimulator" Type="String" />
                <asp:Parameter Name="RacquetballCourt" Type="String" />
                <asp:Parameter Name="RunningTrack" Type="String" />
                <asp:Parameter Name="SkyGym" Type="String" />
                <asp:Parameter Name="QdobaGamingArea" Type="String" />
                <asp:Parameter Name="TheHatfield" Type="String" />
                <asp:Parameter Name="Classroom207" Type="String" />
                <asp:Parameter Name="Classroom110" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="WeightRoom" Type="String" />
                <asp:Parameter Name="SportClubRoom" Type="String" />
                <asp:Parameter Name="MainGymFloor" Type="String" />
                <asp:Parameter Name="MACCourt" Type="String" />
                <asp:Parameter Name="Annex" Type="String" />
                <asp:Parameter Name="GroupFitness200" Type="String" />
                <asp:Parameter Name="GroupFitness201" Type="String" />
                <asp:Parameter Name="GolfSimulator" Type="String" />
                <asp:Parameter Name="RacquetballCourt" Type="String" />
                <asp:Parameter Name="RunningTrack" Type="String" />
                <asp:Parameter Name="SkyGym" Type="String" />
                <asp:Parameter Name="QdobaGamingArea" Type="String" />
                <asp:Parameter Name="TheHatfield" Type="String" />
                <asp:Parameter Name="Classroom207" Type="String" />
                <asp:Parameter Name="Classroom110" Type="String" />
                <asp:Parameter Name="CountSheetID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>


             </asp:Panel>

        
    </div>

    </div>

</asp:Content>
