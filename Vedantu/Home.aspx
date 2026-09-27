<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site1.Master"
    AutoEventWireup="true" CodeBehind="Home.aspx.cs"
    Inherits="Vedantu.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!-- ScriptManager is REQUIRED for UpdatePanel -->
    <asp:ScriptManager ID="ScriptManager1" runat="server" />

    <!-- PAGE STYLE -->
    <style>
        .welcome-text {
            text-align: center;
            font-size: 36px;
            font-family: 'Poppins''Segoe UI', Arial;
            font-weight: bold;
            background: darkorange;
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            margin: 20px 0;
            text-shadow:orange;
        }

        .section-table {
            width: 100%;
            text-align: center;
            margin-top: 30px;
        }

        .section-table td {
            padding: 20px;
        }

        .section-table img {
            border-radius: 12px;
            box-shadow: 0px 4px 8px rgba(0,0,0,0.2);
        }

        .section-title {
            font-size: 18px;
            font-weight: bold;
            margin-top: 10px;
        }

        .section-desc {
            font-size: 14px;
            color: #555;
        }
    </style>

    <!-- WELCOME TEXT -->
    <h2 class="welcome-text">
        Welcome to Vedantu Tuition Center
    </h2>

    <!-- BANNER ROTATION -->
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

            <asp:AdRotator
                ID="AdRotator1"
                runat="server"
                AdvertisementFile="~/Ads.xml"
                Width="100%"
                Height="250px" />

            <asp:Timer
                ID="Timer1"
                runat="server"
                Interval="3000" />

        </ContentTemplate>

        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
        </Triggers>
    </asp:UpdatePanel>

    <!-- BELOW BANNER CONTENT -->
    <table class="section-table">
        <tr>
            <td>
                <asp:ImageButton
                    runat="server"
                    ImageUrl="~/Images/discount.png"
                    Width="220px"
                    PostBackUrl="~/Courses.aspx" />
                <div class="section-title">Discount Offers</div>
                <div class="section-desc">
                    Special fee offers for new students
                </div>
            </td>

            <td>
                <asp:ImageButton
                    runat="server"
                    ImageUrl="~/Images/kids.jpg"
                    Width="220px"
                    PostBackUrl="~/KidsCourses.aspx" />
                <div class="section-title">Courses for Kids</div>
                <div class="section-desc">
                    Fun & easy learning for children
                </div>
            </td>

            <td>
                <asp:ImageButton
                    runat="server"
                    ImageUrl="~/Images/prestudy.jpg"
                    Width="220px"
                    PostBackUrl="~/PreStudyMaterials.aspx" />
                <div class="section-title">Pre Study Materials</div>
                <div class="section-desc">
                    Prepare before attending classes
                </div>
            </td>
        </tr>
    </table>
  

</asp:Content>
