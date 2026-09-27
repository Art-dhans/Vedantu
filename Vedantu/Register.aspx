<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Register.aspx.cs"
    Inherits="Vedantu.Registration" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>User Registration</title>

    <style>
        body {
            background-color: #f4f6f8;
            font-family: "Segoe UI", Arial;
        }

        .register-box {
            width: 420px;
            margin: 80px auto;
            background: #ffffff;
            padding: 35px;
            border-radius: 10px;
            box-shadow: 0px 4px 12px rgba(0,0,0,0.15);
        }

        .title {
            text-align: center;
            color: orange;
            font-size: 30px;
            font-weight: bold;
            margin-bottom: 25px;
        }

        .form-group {
            margin-bottom: 18px;
        }

        .form-group label {
            font-weight: 600;
            display: block;
            margin-bottom: 6px;
        }

        .form-group input {
            width: 100%;
            padding: 10px;
            border-radius: 6px;
            border: 1px solid #ccc;
            font-size: 15px;
        }

        .btn-register {
            width: 100%;
            background-color: orange;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 6px;
            font-size: 17px;
            font-weight: bold;
            cursor: pointer;
        }

        .btn-register:hover {
            background-color: darkorange;
        }

        .message {
            text-align: center;
            margin-top: 18px;
            font-size: 16px;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">

        <div class="register-box">

            <div class="title">User Registration</div>

            <div class="form-group">
                <label>Name</label>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </div>

            <div class="form-group">
                <label>Username</label>
                <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
            </div>

            <div class="form-group">
                <label>Password</label>
                <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
            </div>


            <asp:Button ID="btnSubmit" runat="server"
                Text="Register"
                CssClass="btn-register"
                OnClick="btnSubmit_Click" />

            <div class="message">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="true"></asp:Label>
            </div>

        </div>

    </form>
</body>
</html>
