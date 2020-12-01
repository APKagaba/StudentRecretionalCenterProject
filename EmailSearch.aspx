<%@ Page Title="" Language="C#" MasterPageFile="~/Staff.Master" AutoEventWireup="true" CodeBehind="EmailSearch.aspx.cs" Inherits="CIS420SmitPatel.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .box{

                top: 15%;
                 left: 12%;
                 position: absolute;
                 box-sizing: border-box;
                 width: 65%;
                 height: 50%;

        }
        .auto-style1 {
                width: 150px;
        }

    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="box">
        <h1 style="font-size: 48px; margin-left: 5%">Email Notification</h1>
        <br />
        
        <br />

        <table><tr>
            <td><asp:TextBox ID="txt_Search" runat="server" CssClass="form-control" Width="300px" Height="40px" Placeholder="Search for Customer" ToolTip="Search for Customer"></asp:TextBox></td>
            <td class="auto-style1"><asp:Button ID="btnSearch" runat="server" CssClass="btn-dark" Text="Search" Height="40px" Width="100px" Font-Size="Medium" /></td>

            
            </tr>
            </table>
            <br />
        <br />
                            
     


         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" CssClass="table table-striped table-bordered table-hover" DataKeyNames="MemberID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" AllowPaging="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
             <AlternatingRowStyle BackColor="#CCCCCC" />
             <Columns>
                 <asp:CommandField ShowSelectButton="True" />
                 <asp:BoundField DataField="MemberID" HeaderText="MemberID" InsertVisible="False" ReadOnly="True" SortExpression="MemberID" />
                 <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                 <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                 <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                 <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                 <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                 <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
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
                                     
                        
   

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connectionString %>" SelectCommand="SELECT * FROM [Member_Table] WHERE ([FirstName] LIKE '%' + @FirstName + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="txt_Search" Name="FirstName" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

        <br />
       
      

        <br />
       

          

    </div>

</asp:Content>
