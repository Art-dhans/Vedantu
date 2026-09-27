<%@ Page Title="Pre Study Materials"
    Language="C#"
    MasterPageFile="~/Site1.Master"
    AutoEventWireup="true"
    CodeBehind="PreStudyMaterials.aspx.cs"
    Inherits="Vedantu.PreStudyMaterials" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .title {
            text-align: center;
            color: orange;
            font-size: 32px;
            font-weight: bold;
            margin-bottom: 30px;
        }

        .card {
            width: 240px;
            background: white;
            padding: 12px;
            margin: 12px;
            border-radius: 12px;
            box-shadow: 0px 0px 8px gray;
            text-align: center;
            float: left;
        }

        .card img {
            width: 200px;
            height: 150px;
            border-radius: 8px;
        }

        .desc {
            font-size: 14px;
            color: #444;
            margin: 8px 0;
        }

        .price {
            color: green;
            font-weight: bold;
            font-size: 18px;
        }

        .buy-btn {
            background: orange;
            color: white;
            border: none;
            padding: 8px 16px;
            border-radius: 6px;
            cursor: pointer;
        }

        .total-box {
            clear: both;
            margin-top: 40px;
            text-align: center;
            font-size: 22px;
            font-weight: bold;
            color: green;
        }
    </style>

    <h2 class="title">Pre Study Materials</h2>

    <!-- JEE -->
    <div class="card">
        <img src="Images/jee.png" />
        <h4>JEE Preparation Material</h4>
        <p class="desc">
            Complete JEE study package with concept notes,
            solved examples, previous year questions and
            practice tests for IIT aspirants.
        </p>
        <p class="price">₹299</p>
        <asp:Button runat="server" Text="Buy Now"
            CssClass="buy-btn"
            CommandArgument="299"
            OnClick="Buy_Click" />
    </div>

    <!-- NEET -->
    <div class="card">
        <img src="Images/discount.png" />
        <h4>NEET Preparation Material</h4>
        <p class="desc">
            Detailed Biology, Physics and Chemistry notes,
            diagrams, MCQs and exam-oriented content for
            NEET medical entrance exam.
        </p>
        <p class="price">₹399</p>
        <asp:Button runat="server" Text="Buy Now"
            CssClass="buy-btn"
            CommandArgument="399"
            OnClick="Buy_Click" />
    </div>

    <!-- TET -->
    <div class="card">
        <img src="Images/prestudy.jpg" />
        <h4>TET Exam Material</h4>
        <p class="desc">
            Teacher Eligibility Test material including
            pedagogy, child psychology, syllabus-based notes
            and mock question papers.
        </p>
        <p class="price">₹199</p>
        <asp:Button runat="server" Text="Buy Now"
            CssClass="buy-btn"
            CommandArgument="199"
            OnClick="Buy_Click" />
    </div>

    <!-- TOTAL -->
    <div class="total-box">
        <asp:Label ID="lblTotal" runat="server"></asp:Label>
    </div>

</asp:Content>
