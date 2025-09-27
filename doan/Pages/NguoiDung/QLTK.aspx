<%@ Page Title="Thông tin tài khoản" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="QLTK.aspx.cs" Inherits="doan.Pages.NguoiDung.QLTK" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Thông tin tài khoản
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div style="display:flex; justify-content:center; margin-top:30px;">
        <div style="border:1px solid #ccc; border-radius:10px; padding:30px; width:420px; text-align:center; box-shadow:0 4px 10px rgba(0,0,0,0.1);">
            
            <!-- Ảnh đại diện -->
            <asp:Image ID="imgAvatar" runat="server" Width="100px" Height="100px" 
                       Style="border-radius:50%; object-fit:cover;" />

            <!-- Họ tên -->
            <h3 style="margin-top:15px;">
                <asp:Label ID="lblHoTen" runat="server" Text=""></asp:Label>
            </h3>

            <!-- Thông tin -->
            <div style="text-align:left; margin-top:20px; line-height:2;">
                <p><strong>Ngày Sinh:</strong> <asp:Label ID="lblNgaySinh" runat="server"></asp:Label></p>
                <p><strong>Giới Tính:</strong> <asp:Label ID="lblGioiTinh" runat="server"></asp:Label></p>
                <p><strong>SĐT:</strong> <asp:Label ID="lblSDT" runat="server"></asp:Label></p>
                <p><strong>Địa Chỉ:</strong> <asp:Label ID="lblDiaChi" runat="server"></asp:Label></p>
                <p><strong>CCCD:</strong> <asp:Label ID="lblCCCD" runat="server"></asp:Label></p>
            </div>

            <!-- Nút cập nhật -->
            <asp:Button ID="btnCapNhat" runat="server" Text="CẬP NHẬT" 
                        CssClass="btn btn-primary" 
                        Style="margin-top:20px; background:#888; border:none; padding:10px 20px; border-radius:5px; color:white;"
                        OnClick="btnCapNhat_Click" />
        </div>
    </div>
</asp:Content>
