<%@ Page Title="Courses" Language="C#" MasterPageFile="~/Site1.Master"
    AutoEventWireup="true" CodeBehind="Courses.aspx.cs"
    Inherits="Vedantu.Courses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .page-title {
            text-align: center;
            font-size: 36px;
            font-weight: bold;
            color: orange;
            margin-bottom: 20px;
        }

        .page-para {
            text-align: center;
            font-size: 18px;
            color: #444;
            width: 80%;
            margin: 0 auto 30px;
            line-height: 1.6;
        }

        .row-title {
            width: 100%;
            text-align: center;
            font-size: 26px;
            font-weight: bold;
            color: red;
            margin: 25px 0 15px;
        }

        .course-wrapper {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }

        .course-card {
            width: 240px;
            background: white;
            padding: 15px;
            margin: 12px;
            border-radius: 12px;
            box-shadow: 0px 4px 8px rgba(0,0,0,0.2);
            text-align: center;
        }

        .course-card img {
            width: 200px;
            height: 140px;
            border-radius: 8px;
        }

        .desc {
            font-size: 14px;
            color: #444;
            margin: 8px 0 10px;
            line-height: 1.4;
        }

        .price {
            color: green;
            font-weight: bold;
            font-size: 16px;
        }

        .total-box {
            margin-top: 30px;
            text-align: center;
            font-size: 22px;
            font-weight: bold;
            color: darkgreen;
        }
    </style>

    <!-- PAGE TITLE -->
    <div class="page-title">Our Courses</div>

    <div class="page-para">
        Our courses are designed to build strong academic foundations,
        improve concept clarity and prepare students for board exams
        with confidence. Expert teachers, structured syllabus and
        regular practice sessions ensure excellent results.
    </div>

    <!-- ================= 10th STANDARD ================= -->
    <div class="row-title">10th Standard</div>
    <div class="course-wrapper">

        <div class="course-card">
            <img src="Images/course1.jpg" />
            <h4>10th – Maths</h4>
            <p class="desc">
                Algebra, geometry and arithmetic taught with
                step-by-step methods and exam practice.
            </p>
            <p class="price">₹1500</p>
            <asp:Button runat="server" Text="Enroll Now"
                OnClick="Enroll_Click" CommandArgument="1500" />
        </div>

        <div class="course-card">
            <img src="Images/course2.jpg" />
            <h4>10th – Science</h4>
            <p class="desc">
                Physics, Chemistry and Biology explained
                using real-life examples and diagrams.
            </p>
            <p class="price">₹1500</p>
            <asp:Button runat="server" Text="Enroll Now"
                OnClick="Enroll_Click" CommandArgument="1500" />
        </div>

        <div class="course-card">
            <img src="Images/soc.jpg" />
            <h4>10th – Social</h4>
            <p class="desc">
                History, Geography and Civics taught with
                maps, timelines and board-oriented notes.
            </p>
            <p class="price">₹1500</p>
            <asp:Button runat="server" Text="Enroll Now"
                OnClick="Enroll_Click" CommandArgument="1500" />
        </div>

    </div>

    <!-- ================= 11th STANDARD ================= -->
    <div class="row-title">11th Standard</div>
    <div class="course-wrapper">

        <div class="course-card">
            <img src="Images/11mat.jpg" />
            <h4>11th – Maths</h4>
            <p class="desc">
                Advanced concepts including calculus,
                vectors and trigonometry.
            </p>
            <p class="price">₹1800</p>
            <asp:Button runat="server" Text="Enroll Now"
                OnClick="Enroll_Click" CommandArgument="1800" />
        </div>

        <div class="course-card">
            <img src="Images/11che.jpg" />
            <h4>11th – Science</h4>
            <p class="desc">
                Strong conceptual learning in Physics,
                Chemistry and Biology.
            </p>
            <p class="price">₹1800</p>
            <asp:Button runat="server" Text="Enroll Now"
                OnClick="Enroll_Click" CommandArgument="1800" />
        </div>

        <div class="course-card">
            <img src="Images/11cs.jpg" />
            <h4>11th – Computer Science</h4>
            <p class="desc">
                Programming basics, logic building and
                problem-solving skills.
            </p>
            <p class="price">₹2000</p>
            <asp:Button runat="server" Text="Enroll Now"
                OnClick="Enroll_Click" CommandArgument="2000" />
        </div>

        <div class="course-card">
            <img src="Images/11phy.jpg" />
            <h4>11th – Physics</h4>
            <p class="desc">
                Motion, laws and numericals taught
                with exam focus.
            </p>
            <p class="price">₹1800</p>
            <asp:Button runat="server" Text="Enroll Now"
                OnClick="Enroll_Click" CommandArgument="1800" />
        </div>

    </div>

    <!-- ================= 12th STANDARD ================= -->
    <div class="row-title">12th Standard</div>
    <div class="course-wrapper">

        <div class="course-card">
            <img src="Images/12mat.jpg" />
            <h4>12th – Maths</h4>
            <p class="desc">
                Calculus, probability and algebra with
                board-exam strategies.
            </p>
            <p class="price">₹2000</p>
            <asp:Button runat="server" Text="Enroll Now"
                OnClick="Enroll_Click" CommandArgument="2000" />
        </div>

        <div class="course-card">
            <img src="Images/12sci.jpg" />
            <h4>12th – Chemistry</h4>
            <p class="desc">
                Organic and physical chemistry explained
                using shortcuts and reactions.
            </p>
            <p class="price">₹2000</p>
            <asp:Button runat="server" Text="Enroll Now"
                OnClick="Enroll_Click" CommandArgument="2000" />
        </div>

        <div class="course-card">
            <img src="Images/12cs.jpg" />
            <h4>12th – Computer Science</h4>
            <p class="desc">
                Programming, algorithms and theory with
                practical examples.
            </p>
            <p class="price">₹2200</p>
            <asp:Button runat="server" Text="Enroll Now"
                OnClick="Enroll_Click" CommandArgument="2200" />
        </div>

        <div class="course-card">
            <img src="Images/12phy.jpg" />
            <h4>12th – Physics</h4>
            <p class="desc">
                Optics, electromagnetism and numericals
                for board excellence.
            </p>
            <p class="price">₹2000</p>
            <asp:Button runat="server" Text="Enroll Now"
                OnClick="Enroll_Click" CommandArgument="2000" />
        </div>

    </div>

    <!-- TOTAL -->
    <div class="total-box">
        Total Enroll Cost : ₹
        <asp:Label ID="lblTotal" runat="server" Text="0"></asp:Label>
    </div>

</asp:Content>
