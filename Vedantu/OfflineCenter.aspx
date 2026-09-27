<%@ Page Title="Offline Center"
    Language="C#"
    MasterPageFile="~/Site1.Master"
    AutoEventWireup="true"
    CodeBehind="OfflineCenter.aspx.cs"
    Inherits="Vedantu.OfflineCenter" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .offline-wrapper {
            max-width: 900px;
            margin: 40px auto;
            padding: 35px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0,0,0,0.1);
            font-family: "Segoe UI", Arial;
        }

        .page-title {
            text-align: center;
            font-size: 34px;
            font-weight: bold;
            color: orange;
            margin-bottom: 25px;
        }

        .info-text {
            font-size: 17px;
            line-height: 1.8;
            color: #444;
            margin-bottom: 25px;
        }

        .map-title {
            font-size: 22px;
            font-weight: 600;
            margin-bottom: 15px;
        }

        .map-box {
            text-align: center;
        }
    </style>

    <div class="offline-wrapper">

        <!-- TITLE -->
        <div class="page-title">Our Offline Center</div>

        <!-- CENTER DETAILS -->
        <div class="info-text">
             <strong>Address:</strong> 2nd Floor, Anna Nagar, Chennai <br />
             <strong>Phone:</strong> 9876543210 <br />
             <strong>Timing:</strong> 9 AM – 7 PM (Monday to Saturday)
        </div>

        <!-- MAP TITLE -->
        <div class="map-title"> Location Map (Click to Open Google Maps)</div>

        <!-- IMAGE MAP -->
        <div class="map-box">
            <asp:ImageMap ID="ImageMap1"
                runat="server"
                ImageUrl="~/Images/map.jpg"
                Width="500px"
                AlternateText="Click to view Vedantu Offline Center location">

                <asp:RectangleHotSpot
                    Top="0"
                    Left="0"
                    Bottom="300"
                    Right="500"
                    NavigateUrl="https://www.google.com/maps"
                    Target="_blank" />

            </asp:ImageMap>
        </div>

    </div>

</asp:Content>
