<%@ Page Title="Courses for Kids"
    Language="C#"
    MasterPageFile="~/Site1.Master"
    AutoEventWireup="true"
    CodeBehind="Kids.aspx.cs"
    Inherits="Vedantu.KidsCourses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .title {
            text-align: center;
            color: orange;
            font-size: 32px;
            font-weight: bold;
            margin-bottom: 30px;
        }

        .kids-container {
            display: flex;
            justify-content: center;
            gap: 25px;
            flex-wrap: wrap;
        }

        .kids-card {
            width: 240px;
            background: white;
            border-radius: 12px;
            box-shadow: 0 0 10px #ccc;
            text-align: center;
            padding: 15px;
        }

        .kids-card img {
            width: 200px;
            height: 140px;
            border-radius: 10px;
            object-fit: cover;
        }

        .price {
            color: green;
            font-weight: bold;
            font-size: 18px;
        }

        .enroll-btn {
            background-color: orange;
            color: white;
            border: none;
            padding: 8px 18px;
            border-radius: 6px;
            cursor: pointer;
        }

        .total-box {
            margin-top: 30px;
            text-align: center;
            font-size: 22px;
            color: green;
            font-weight: bold;
        }
    </style>

    <h2 class="title">Courses for Kids</h2>

    <div class="kids-container">

        <div class="kids-card">
            <img src="Images/kidmat.jpg" />
            <h4>Kids Maths</h4>
            <p class="price">₹800</p>
            <asp:Button runat="server" Text="Enroll Now"
                CssClass="enroll-btn"
                CommandArgument="800"
                OnClick="Enroll_Click" />
        </div>

        <div class="kids-card">
            <img src="Images/kideng.jpg" />
            <h4>Kids English</h4>
            <p class="price">₹700</p>
            <asp:Button runat="server" Text="Enroll Now"
                CssClass="enroll-btn"
                CommandArgument="700"
                OnClick="Enroll_Click" />
        </div>

        <div class="kids-card">
            <img src="Images/kidsci.jpg" />
            <h4>Kids Science</h4>
            <p class="price">₹900</p>
            <asp:Button runat="server" Text="Enroll Now"
                CssClass="enroll-btn"
                CommandArgument="900"
                OnClick="Enroll_Click" />
        </div>

    </div>

    <!-- TOTAL PRICE DISPLAY -->
    <div class="total-box">
        <asp:Label ID="lblTotal" runat="server" Text=""></asp:Label>
    </div>

</asp:Content>
