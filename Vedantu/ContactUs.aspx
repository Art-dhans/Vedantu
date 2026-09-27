<%@ Page Title="Contact Us"
    Language="C#"
    MasterPageFile="~/Site1.Master"
    AutoEventWireup="true"
    CodeBehind="ContactUs.aspx.cs"
    Inherits="Vedantu.ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .contact-wrapper {
            max-width: 800px;
            margin: 50px auto;
            padding: 40px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            font-family: "Segoe UI", Arial;
        }

        .contact-title {
            font-size: 34px;
            color: orange;
            text-align: center;
            margin-bottom: 15px;
            font-weight: 600;
        }

        .contact-desc {
            text-align: center;
            font-size: 16px;
            color: #555;
            margin-bottom: 35px;
            line-height: 1.6;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-label {
            font-weight: 600;
            color: #333;
            margin-bottom: 6px;
            display: block;
        }

        .form-control {
            width: 100%;
            padding: 12px;
            font-size: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .btn-submit {
            width: 100%;
            padding: 14px;
            font-size: 17px;
            background-color: #333;
            color: white;
            border: none;
            border-radius: 6px;
            cursor: pointer;
        }

        .btn-submit:hover {
            background-color: #000;
        }

        .success-box {
            margin-top: 30px;
            padding: 20px;
            background-color: #fff7e6;
            border-left: 5px solid green;
            border-radius: 6px;
            color: #2e7d32;
            font-size: 16px;
            text-align: center;
        }

        .phone {
            font-size: 18px;
            font-weight: bold;
            margin-top: 10px;
        }
    </style>

    <div class="contact-wrapper">

        <div class="contact-title">Contact Us</div>

        <div class="contact-desc">
            Have questions or need assistance?  
            Please fill the form below and our team will contact you shortly.
        </div>

        <div class="form-group">
            <label class="form-label">Full Name</label>
            <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="form-group">
            <label class="form-label">Email Address</label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="form-group">
            <label class="form-label">Message</label>
            <asp:TextBox ID="txtMsg" runat="server" CssClass="form-control"
                TextMode="MultiLine" Rows="5"></asp:TextBox>
        </div>

        <asp:Button ID="btnSend" runat="server"
            Text="Submit"
            CssClass="btn-submit"
            OnClick="btnSend_Click" />

        <!-- SUCCESS MESSAGE -->
        <asp:Panel ID="pnlSuccess" runat="server" Visible="false">
            <div class="success-box">
                .. Successfully Submitted! <br />
                Our team will get back to you soon.
                <div class="phone">
                    Vedantu Contact Number: <br />
                    +91 98765 43210
                </div>
            </div>
        </asp:Panel>

    </div>

</asp:Content>
