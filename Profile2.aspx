<%@ Page Title="" Language="C#" MasterPageFile="~/MemberMaster.Master" AutoEventWireup="true" CodeBehind="Profile2.aspx.cs" Inherits="CIS420SmitPatel.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Profile.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 516px;
            left: -2px;
            top: -2px;
            
        }
        .auto-style2 {
            width: 226px;
            margin-left: 480px;
            font-weight: 400;
        }
        .auto-style3 {
            margin-left: 160px;
        }
        .auto-style4 {
            width: 219px;
            height: 112px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div>
        <br />
        

             <h1 class="auto-style2" >Membership&nbsp;&nbsp;&nbsp; </h1>
        <br />
            </div>
             <div id="divleft" class="auto-style1"> 
                 <br />
                       
                
                 
                 <br />   
                 <table><tr>
                     <td><asp:Label ID="lblFirstName" runat="server" Font-Size="Larger" Font-Bold="True" Text="Member Name: " BorderColor="White"  BorderWidth="7px"></asp:Label></td>
                     <td><asp:Label ID="lblFirstName2" runat="server" BorderColor="White" Font-color="white" borderwidth="2px" Height="20px" Width="200px" Font-Size="Large"></asp:Label>      </td>
                        </tr></table>
            
                 
                 <br />
                 
            <asp:Label ID="lblMembership" runat="server" Font-Size="Larger" Font-Bold="True" Text=" Status:" BorderColor="White" BorderWidth="7px"></asp:Label>
                 <asp:Label ID="ActiveLbl" runat="server" Text="Active" Font-Size="Large"></asp:Label>  
                 <br />
           
                 <br />                 
                
        </div>      
         <div id="diviright" class="auto-style3" >
            <asp:Image ID="Image1" Width="250px" Height="250px" runat="server" background="center" ImageUrl="Images/image_preview.gif" />
                 <br />
             <br />
             <br />
             <h1> Locker Rental</h1>
            <asp:Label ID="Label1" runat="server" Font-Size="20px" Text="To book your locker for the semester click the link below and fill out the form. "> </asp:Label>
            <section class="auto-style7">
            <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" ForeColor="#FF5050" Font-Size="Large" OnClick="LinkButton1_Click" >Book Now</asp:LinkButton>
            </section>  <br />
            
                 </div>           
    
</asp:Content>
