<%@ Page Title="Home" MasterPageFile="~/Site1.Master" Language="C#" AutoEventWireup="true" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .welcome-title {
            text-align: center;
            color: orange;
            font-size: 36px;
            margin-top: 25px;
            font-weight: bold;
        }

        .welcome-text {
            text-align: center;
            font-size: 22px;
            margin: 20px auto;
            width: 80%;
            line-height: 1.6;
            color: #333;
        }

        .banner {
            text-align: center;
            margin-top: 25px;
        }

        .banner img {
            width: 80%;
            max-width: 900px;
            border-radius: 12px;
            box-shadow: 0px 4px 10px #aaa;
        }
    </style>

    <h2 class="welcome-title">Welcome Kids</h2>

    <p class="welcome-text">
        Fun learning platform for kids filled with bright colors, creativity, 
        imagination and joy. Our classes help children learn in a playful way 
        while building strong basics in Maths, English and Science.  
        <br /><br />
        We focus on activity-based learning, storytelling, interactive games 
        and friendly teaching methods to make learning enjoyable and stress-free 
        for every child.
    </p>

    <div class="banner">
        <img src="Images/banner1.png" alt="Kids Learning Banner" />
    </div>

</asp:Content>
