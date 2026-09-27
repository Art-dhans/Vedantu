<%@ Page Title="About Us"
    Language="C#"
    MasterPageFile="~/Site1.Master"
    AutoEventWireup="true"
    CodeBehind="AboutUs.aspx.cs"
    Inherits="Vedantu.AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .about-wrapper {
            max-width: 900px;
            margin: 50px auto;
            padding: 40px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            font-family: "Segoe UI", Arial;
        }

        .about-title {
            text-align: center;
            font-size: 34px;
            font-weight: 600;
            color: orange;
            margin-bottom: 20px;
        }

        .about-text {
            font-size: 17px;
            color: #444;
            line-height: 1.8;
            text-align: justify;
            margin-bottom: 20px;
        }

        .highlight {
            color: #000;
            font-weight: 600;
        }

        .mission-box {
            margin-top: 30px;
            padding: 25px;
            background-color: #fff7e6;
            border-left: 6px solid orange;
            border-radius: 6px;
        }

        .mission-title {
            font-size: 22px;
            font-weight: 600;
            margin-bottom: 10px;
        }
    </style>

    <div class="about-wrapper">

        <div class="about-title">About Vedantu Tuition Center</div>

        <p class="about-text">
            <span class="highlight">Vedantu Tuition Center</span> is a trusted learning platform
            dedicated to providing high-quality education for school students.
            We focus on building strong academic foundations through
            experienced faculty, structured curriculum, and student-friendly teaching methods.
        </p>

        <p class="about-text">
            Our tuition center offers personalized attention to every student,
            ensuring that concepts are clearly understood and confidence is built
            in all subjects. We believe that every child has the potential to succeed
            when guided in the right direction.
        </p>

        <div class="mission-box">
            <div class="mission-title">!!Our Mission!!</div>
            <p class="about-text">
                To inspire young minds, enhance academic performance,
                and create a positive learning environment where students
                enjoy learning and achieve excellence in their studies.
            </p>
        </div>

    </div>

</asp:Content>
