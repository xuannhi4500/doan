<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="doan.Pages.Register" %>

<!DOCTYPE html>
<html lang="vi">
<head runat="server">
    <meta charset="UTF-8" />
    <title>Đăng ký</title>
    <link href="~/Assets/css/auth.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="auth-container">
            <h2>Đăng ký tài khoản</h2>

            <asp:Label ID="lblMessage" runat="server" CssClass="error-message" />

            <label for="txtHoTen">Họ tên:</label>
            <asp:TextBox ID="txtHoTen" runat="server" placeholder="Họ tên" CssClass="input-box" />

            <label for="txtEmail">Email:</label>
            <asp:TextBox ID="txtEmail" runat="server" placeholder="Email" CssClass="input-box" />

            <label for="txtMatKhau">Mật khẩu:</label>
            <asp:TextBox ID="txtMatKhau" runat="server" TextMode="Password" placeholder="Password" CssClass="input-box" />

            <label for="txtXacNhanMK">Xác nhận mật khẩu:</label>
            <asp:TextBox ID="txtXacNhanMK" runat="server" TextMode="Password" placeholder="Xác nhận mật khẩu" CssClass="input-box" />

            <label for="txtSDT">Số điện thoại:</label>
            <asp:TextBox ID="txtSDT" runat="server" placeholder="Số điện thoại" CssClass="input-box" />

            <label for="ddlGioiTinh">Giới tính:</label>
            <asp:DropDownList ID="ddlGioiTinh" runat="server" CssClass="input-box">
                <asp:ListItem Text="Nam" Value="Nam" />
                <asp:ListItem Text="Nữ" Value="Nữ" />
                <asp:ListItem Text="Khác" Value="Khác" />
            </asp:DropDownList>

            <label for="txtDiaChi">Địa chỉ:</label>
            <asp:TextBox ID="txtDiaChi" runat="server" placeholder="Địa chỉ" CssClass="input-box" />

            <label for="txtNgaySinh">Ngày sinh:</label>
            <asp:TextBox ID="txtNgaySinh" runat="server" TextMode="Date" CssClass="input-box" />

            <label for="txtCCCD">CCCD:</label>
            <asp:TextBox ID="txtCCCD" runat="server" placeholder="CCCD" CssClass="input-box" />

            <asp:Button ID="btnDangKy" runat="server" Text="Đăng ký" CssClass="btn-submit" OnClick="btnDangKy_Click" />
        </div>
    </form>
</body>
</html>
