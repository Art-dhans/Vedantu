<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Vedantu.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Login</h2>

    <asp:Label Text="Username:" runat="server" />
    <asp:TextBox ID="txtUser" runat="server" /><br /><br />

    <asp:Label Text="Password:" runat="server" />
    <asp:TextBox ID="txtPass" runat="server" TextMode="Password" /><br /><br />

    <asp:Button ID="btnLogin" runat="server" Text="Login" />
    <br /><br />
    <a href="Register.aspx">New User? Register Here</a>

</asp:Content>
