<%@ Page Title="" Language="C#" MasterPageFile="~/Staff.Master" AutoEventWireup="true" CodeBehind="StaffMaintenance.aspx.cs" Inherits="CIS420SmitPatel.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .box {
                top: 15%;
                left: 42%;
                position: absolute;
                

        }
        

    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="box">
       <h1 class="auto-style1">&nbsp;Maintenance</h1>
        <p class="auto-style1">&nbsp;</p>
        <asp:ValidationSummary ID="validLabel2" runat="server" CssClass="alert alert-danger" DisplayMode="List" style="color:#CC3300" />
        <h5 class="auto-style3">Area&nbsp;&nbsp; 
            
            <asp:DropDownList ID="dropArea" runat="server" CssClass="form-control" Width="265px">
                <asp:ListItem>Weight Room</asp:ListItem>
                <asp:ListItem>Sport Club Room</asp:ListItem>
                <asp:ListItem>Main Gym Floor</asp:ListItem>
                <asp:ListItem>MAC Court</asp:ListItem>
                <asp:ListItem>Group Fitness 200</asp:ListItem>
                <asp:ListItem>Group Fitness 201</asp:ListItem>
                <asp:ListItem>Golf Simulator</asp:ListItem>
                <asp:ListItem>Racquetball Court</asp:ListItem>
                <asp:ListItem>Running Track</asp:ListItem>
                <asp:ListItem>Annex</asp:ListItem>
                <asp:ListItem>Sky Gym</asp:ListItem>
                <asp:ListItem>Qdoba Gaming Area</asp:ListItem>
                <asp:ListItem>The Hatfield</asp:ListItem>
                <asp:ListItem>Classroom 207</asp:ListItem>
                <asp:ListItem>Classroom 110</asp:ListItem>
            </asp:DropDownList>
        </h5>
        <br />
        <table><tr>
            <td><h5 class="auto-style3">Equipment<asp:TextBox ID="txtEquipment" runat="server" CssClass="form-control" Width="265px"></asp:TextBox>
        </h5></td>
            <td><asp:RequiredFieldValidator ID="RequiredEquipment" runat="server" ErrorMessage="Equipment is required field" ControlToValidate="txtEquipment" Text="*" ForeColor="Red"></asp:RequiredFieldValidator></td>
               </tr></table>
        
        <br />

        <div class="form-group">
                       <h5 class="auto-style3">Condition<asp:DropDownList ID="dropCondition" runat="server" CssClass="form-control" Width="265px">
                            <asp:ListItem>Good</asp:ListItem>
                            <asp:ListItem>Average</asp:ListItem>
                            <asp:ListItem>Bad</asp:ListItem>
                            <asp:ListItem>Broken</asp:ListItem>
                        </asp:DropDownList>
                        </h5>
                    <div class="auto-style3" style="margin-left: 40px">
                        <br />                        
                    </div>
                </div>
        <div> 

            <table><tr>
                <td>
                    <h5 class="auto-style3"> Description </h5><asp:TextBox ID="txtDescription" runat="server" CssClass="form-control" Height="90px" TextMode="MultiLine" Width="290px"></asp:TextBox>
                </td>

                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Description is required field" ControlToValidate="txtDescription" Text="*" ForeColor="Red"></asp:RequiredFieldValidator></td>
                   </tr></table>
         
         
        </div>  
        <div class="auto-style1">
            <br />
            <asp:Button ID="Button1" runat="server" Text="Submit" Height="62px" Width="179px" CssClass="btn btn-primary" BackColor="#FF5050" Font-Size="X-Large" OnClick="Button1_Click" />
            <br />
        </div>

            


       

        </div>

    

    

     

</asp:Content>
