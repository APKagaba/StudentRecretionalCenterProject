<%@ Page Title="" Language="C#" MasterPageFile="~/Staff.Master" AutoEventWireup="true" CodeBehind="StaffCountSheet.aspx.cs" Inherits="CIS420SmitPatel.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .box{
           display: inline-block
              
        }
        .left-box{
            position: absolute;
            width:12%;
            left: 10%;
            margin-top: 2%;
        }
        .middle-box{
            position: absolute;
            width:12%;
            left: 40%;
            margin-top: 2%;
        }
        .right-box{
            position: absolute;
            width:12%;
            left: 71%;
            margin-top: 2%;
        }
        .submit{
            position: absolute;
            top: 87%;
            left: 43%;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="box">

        <div class="left-box">
            <h6>Weight Room</h6>
            <asp:TextBox ID="txtWeightRoom" CssClass="form-control" runat="server"></asp:TextBox>

            <br />
            <h6>Sport Club Room</h6>
            <asp:TextBox ID="txtSportClubRoom" CssClass="form-control" runat="server"></asp:TextBox>

            <br />
            <h6>Main Gym Floor</h6>
            <asp:TextBox ID="txtMainGymFloor" CssClass="form-control" runat="server"></asp:TextBox>

            <br />
            <h6>MAC Court</h6>
            <asp:TextBox ID="txtMacCourt" CssClass="form-control" runat="server"></asp:TextBox>

            <br />
            <h6>Annex</h6>
            <asp:TextBox ID="txtAnnex" CssClass="form-control" runat="server"></asp:TextBox>
        </div>


        <div class="middle-box">
             <h6>Group Fitness 200</h6>
            <asp:TextBox ID="txtFitness200" CssClass="form-control" runat="server"></asp:TextBox>

            <br />
            <h6>Group Fitness 201</h6>
            <asp:TextBox ID="txtFitness201" CssClass="form-control" runat="server"></asp:TextBox>

            <br />
            <h6>Golf Simulator</h6>
            <asp:TextBox ID="txtGolf" CssClass="form-control" runat="server"></asp:TextBox>

            <br />
            <h6>Racquetball Court</h6>
            <asp:TextBox ID="txtRacquetball" CssClass="form-control" runat="server"></asp:TextBox>

            <br />
            <h6>Running Track</h6>
            <asp:TextBox ID="txtRunningTrack" CssClass="form-control" runat="server"></asp:TextBox>
        </div>


        <div class="right-box">
             <h6>Sky Gym</h6>
            <asp:TextBox ID="txtSkyGym" CssClass="form-control" runat="server"></asp:TextBox>

            <br /> 
            <h6>Qdoba Gaming Area</h6>
            <asp:TextBox ID="txtQdobaGaming" CssClass="form-control" runat="server"></asp:TextBox>

            <br />
            <h6>The Hatfield</h6>
            <asp:TextBox ID="txtHatfield" CssClass="form-control" runat="server"></asp:TextBox>

            <br />
            <h6>Classroom 207</h6>
            <asp:TextBox ID="txtClassroom207" CssClass="form-control" runat="server"></asp:TextBox>

            <br />
            <h6>Classroom 110</h6>
            <asp:TextBox ID="txtClassroom110" CssClass="form-control" runat="server"></asp:TextBox>
        </div>

    </div>

    <div class="submit">
        <asp:Button ID="btnSubmit" CssClass="btn btn-primary" runat="server" Text="Submit" Font-Size="XX-Large" Font-Bold="True" OnClick="btnSubmit_Click" />
    </div>
    

</asp:Content>
