<%@ Page Title="" Language="C#" MasterPageFile="~/Staff.Master" AutoEventWireup="true" CodeBehind="ManageStaff.aspx.cs" Inherits="CIS420SmitPatel.WebForm1" %>
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
        <h1 style="font-size: 48px; margin-left: 5%">Manage Staff</h1>
        <br />
        
        <br />

         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="StaffID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" CssClass="table table-striped table-bordered table-hover">
             <AlternatingRowStyle BackColor="#CCCCCC" />
             <Columns>
                 <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                 <asp:TemplateField HeaderText="Staff ID" InsertVisible="False" SortExpression="StaffID">
                     <EditItemTemplate>
                         <asp:Label ID="Label1" runat="server" Text='<%# Eval("StaffID") %>'></asp:Label>
                     </EditItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label1" runat="server" Text='<%# Bind("StaffID") %>'></asp:Label>
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="First Name" SortExpression="FirstName">
                     <EditItemTemplate>
                         <asp:TextBox ID="txtFirstName" runat="server" Text='<%# Bind("FirstName") %>'></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFirstName" runat="server" ErrorMessage="First Name is required field" ControlToValidate="txtFirstName" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    
                     </EditItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label2" runat="server" Text='<%# Bind("FirstName") %>'></asp:Label>
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="Last Name" SortExpression="LastName">
                     <EditItemTemplate>
                         <asp:TextBox ID="txtLastName" runat="server" Text='<%# Bind("LastName") %>'></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredLastName" runat="server" ErrorMessage="Last Name is required field" ControlToValidate="txtLastName" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    
                     </EditItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label3" runat="server" Text='<%# Bind("LastName") %>'></asp:Label>
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="Phone" SortExpression="Phone">
                     <EditItemTemplate>
                         <asp:TextBox ID="txtPhone" runat="server" Text='<%# Bind("Phone") %>'></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredPhone" runat="server" ErrorMessage="Phone is required field" ControlToValidate="txtPhone" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Enter a valid US Phone (XXX-XXX-XXX)" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ControlToValidate="txtPhone" ForeColor="Red" Text="*"></asp:RegularExpressionValidator> 
                    
                     </EditItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label4" runat="server" Text='<%# Bind("Phone") %>'></asp:Label>
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="Email" SortExpression="Email">
                     <EditItemTemplate>
                         <asp:TextBox ID="txtEmail" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredEmail" runat="server" ErrorMessage="Email is required field" ControlToValidate="txtEmail" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Enter a valid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail" ForeColor="Red" Text="*"></asp:RegularExpressionValidator> 
                   
                     </EditItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label5" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="User Name" SortExpression="UserName">
                     <EditItemTemplate>
                         <asp:TextBox ID="txtUserName" runat="server" Text='<%# Bind("UserName") %>'></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredUserName" runat="server" ErrorMessage="User Name is required field" ControlToValidate="txtUserName" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    
                     </EditItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label6" runat="server" Text='<%# Bind("UserName") %>'></asp:Label>
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="Password" SortExpression="Password">
                     <EditItemTemplate>
                         <asp:TextBox ID="txtPassword" runat="server" Text='<%# Bind("Password") %>'></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredPassword" runat="server" ErrorMessage="Password is required field" ControlToValidate="txtPassword" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    
                     </EditItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label7" runat="server" Text='<%# Bind("Password") %>'></asp:Label>
                     </ItemTemplate>
                 </asp:TemplateField>
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
                                     
                        
   

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connectionString %>" DeleteCommand="DELETE FROM [tblStaff] WHERE [StaffID] = @StaffID" InsertCommand="INSERT INTO [tblStaff] ([FirstName], [LastName], [Phone], [Email], [UserName], [Password]) VALUES (@FirstName, @LastName, @Phone, @Email, @UserName, @Password)" SelectCommand="SELECT * FROM [tblStaff]" UpdateCommand="UPDATE [tblStaff] SET [FirstName] = @FirstName, [LastName] = @LastName, [Phone] = @Phone, [Email] = @Email, [UserName] = @UserName, [Password] = @Password WHERE [StaffID] = @StaffID">
            <DeleteParameters>
                <asp:Parameter Name="StaffID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="StaffID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <br />
       
        <table><tr>
            <td class="auto-style1"> <asp:Button ID="btnCreateNew" runat="server" Text="Create New" data-toggle="modal" data-target="#exampleModal" CssClass="btn btn-primary" OnClick="btnCreateNew_Click"/></td>
            

               </tr></table>


        <br />
        <br />
         <asp:ValidationSummary ID="validLabel2" runat="server" CssClass="alert alert-danger" DisplayMode="List" style="color:#CC3300" />
         <br />
         

        <asp:Panel ID="pnlCreate" runat="server" Visible="False">
           
 
         
          <h6 class="auto-style3">First Name</h6>
        <table>
            <tr>
            <td><asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" Width="300px"></asp:TextBox></td>

            <td><asp:RequiredFieldValidator  ID="requiredFirst" runat="server" Text="*" ControlToValidate="txtFirstName" ErrorMessage="First Name field is required" Font-Size="Medium" ForeColor="#FF3300"></asp:RequiredFieldValidator></td>
               </tr>
            </table>
        <br />

        <h6 class="auto-style3">Last Name</h6>
        <table>
            <tr>
            <td><asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" Width="300px"></asp:TextBox></td>

            <td> <asp:RequiredFieldValidator  ID="requiredLast" runat="server" Text="*" ControlToValidate="txtLastName" ErrorMessage="Last Name field is required" Font-Size="Medium" ForeColor="#FF3300"></asp:RequiredFieldValidator></td>
               </tr>
            </table>
       
        <br />

        <h6 class="auto-style3">Phone</h6>
        <table>
            <tr>
            <td><asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" Width="300px"></asp:TextBox></td>

            <td> <asp:RequiredFieldValidator  ID="requiredPhone" runat="server" ControlToValidate="txtPhone" Text="*" ErrorMessage="Phone field is required" ForeColor="#FF3300"></asp:RequiredFieldValidator></td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Text="*" ErrorMessage="Enter a valid US Phone (XXX-XXX-XXX)" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ControlToValidate="txtPhone" Font-Size="Medium" ForeColor="#FF3300"></asp:RegularExpressionValidator> 
                </td>
               </tr>
            </table>
       
        <br />

        <h6 class="auto-style3">Email</h6>
        <table>
            <tr>
            <td><asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Width="300px"></asp:TextBox></td>

            <td><asp:RequiredFieldValidator  ID="requiredEmail" runat="server" ControlToValidate="txtEmail" Text="*" ErrorMessage="Email field is required" ForeColor="#FF3300"></asp:RequiredFieldValidator></td>
                 <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter a valid Email" Text="*" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail" Font-Size="Medium" ForeColor="#FF3300"></asp:RegularExpressionValidator> 
                </td>
               </tr>
            </table>

         <br />

        <h6 class="auto-style3">User Name</h6>
        <table>
            <tr>
            <td><asp:TextBox ID="txtUserName" runat="server" CssClass="form-control" Width="300px"></asp:TextBox></td>

            <td> <asp:RequiredFieldValidator ID="requiredUser" runat="server" ControlToValidate="txtUserName" Text="*" ErrorMessage="User Name field is required" ForeColor="#FF3300"></asp:RequiredFieldValidator></td>
                <td> <asp:Label ID="lblUserNameCheck" runat="server" ForeColor="#FF3300" Text="" Font-Size="Medium"></asp:Label></td>
               </tr>
            </table>

         <br />

        <h6 class="auto-style3">Password</h6>
        <table>
            <tr>
            <td><asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" Width="300px" TextMode="Password"></asp:TextBox></td>

            <td> <asp:RequiredFieldValidator Display="Dynamic"  ID="requiredPassword" runat="server" ControlToValidate="txtPassword" Text="*" ErrorMessage="Password field is required" ForeColor="#FF3300"></asp:RequiredFieldValidator></td>
               </tr>
            </table>

        <br />

       <h6 class="auto-style3">Re-enter Password</h6>
        <table>
            <tr>
            <td><asp:TextBox ID="txtRePassword" runat="server" CssClass="form-control" Width="300px" TextMode="Password"></asp:TextBox></td>

            <td> <asp:RequiredFieldValidator  ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtRePassword" Text="*" ErrorMessage="Re-enter Password field is required" ForeColor="#FF3300"></asp:RequiredFieldValidator></td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords must match" Font-Size="Medium" Text="*" ForeColor="#FF3300" ControlToCompare="txtPassword" ControlToValidate="txtRePassword"></asp:CompareValidator></td>   
            </tr>
            </table>

        <br />


                <asp:Button ID="btnNew" runat="server" Text="Create" CssClass=" btn btn-primary" OnClick="btnNew_Click" />
                

            <br />
            <br />
            <br />
            <br />
        

        </asp:Panel>
       

             
      
       



          

    </div>

</asp:Content>
