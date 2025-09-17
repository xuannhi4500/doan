<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="doan.Pages.NguoiDung.NguoiDung_Login" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Đăng nhập</title>
    <link href="~/Assets/css/login.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Đăng nhập tài khoản</h2>
            <asp:Label ID="lblUsername" runat="server" Text="Tên đăng nhập:"></asp:Label>
            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox><br /><br />

            <asp:Label ID="lblPassword" runat="server" Text="Mật khẩu:"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox><br /><br />

            <asp:Button ID="btnLogin" runat="server" Text="Đăng nhập" OnClick="btnLogin_Click" /><br /><br />

            <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
        </div>
    </form>
</body>
</html>
