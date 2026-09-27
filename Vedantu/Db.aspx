<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Db.aspx.cs" Inherits="Vedantu.Db" UnobtrusiveValidationMode="None" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Student Database</title>

<style>
body{
background-color:#f4f6f8;
font-family:"Segoe UI",Arial;
}

.db-box{
width:450px;
margin:60px auto;
background:#ffffff;
padding:30px;
border-radius:10px;
box-shadow:0px 4px 12px rgba(0,0,0,0.15);
}

.db-title{
text-align:center;
color:orange;
font-size:28px;
font-weight:bold;
margin-bottom:25px;
}

.form-group{
margin-bottom:18px;
}

.btn-style{
width:100%;
background-color:orange;
color:white;
padding:10px;
border:none;
border-radius:6px;
margin-top:10px;
font-size:16px;
cursor:pointer;
}

.validator{
color:red;
font-size:12px;
}

.grid-container{
margin-top:20px;
}
</style>

</head>

<body>

<form id="form1" runat="server">

<div class="db-box">

<div class="db-title">Student Database</div>

<div class="form-group">
<label>ID</label>
<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>



</div>

<div class="form-group">
<label>Name</label>
<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>


</div>

<div class="form-group">
<label>Course</label>
<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>


</div>

<<label>Mobile</label>

<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>







</div>

<asp:Button ID="Button1" runat="server" Text="Insert" CssClass="btn-style" OnClick="Button1_Click"/>

<asp:Button ID="Button2" runat="server" Text="Show Students" CssClass="btn-style" OnClick="Button2_Click"/>

<asp:Button ID="Button3" runat="server" Text="Update" CssClass="btn-style" OnClick="Button3_Click"/>

<asp:Button ID="Button4" runat="server" Text="Delete" CssClass="btn-style" OnClick="Button4_Click"/>

<br /><br />

<asp:Label ID="Label1" runat="server"></asp:Label>

<div class="grid-container">

<asp:GridView ID="GridView1" runat="server" Width="100%" AutoGenerateColumns="true"></asp:GridView>

<br/>

<asp:DetailsView ID="DetailsView1" runat="server" Width="100%" AutoGenerateRows="true"></asp:DetailsView>

</div>


</form>

</body>
</html>
