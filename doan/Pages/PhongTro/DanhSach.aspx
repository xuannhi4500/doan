<%@ Page Title="Danh Sách Phòng Trọ" Language="C#" MasterPageFile="~/MasterPages/Site.master" AutoEventWireup="true" CodeBehind="DanhSach.aspx.cs" Inherits="doan.Pages.PhongTro.DanhSach" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Danh Sách Phòng Trọ</h2>

    <asp:GridView ID="gvPhongTro" runat="server" AutoGenerateColumns="False" CssClass="table">
        <Columns>
            <asp:BoundField DataField="TenNhaTro" HeaderText="Tên Nhà Trọ" />
            <asp:BoundField DataField="Gia" HeaderText="Giá" />
            <asp:BoundField DataField="DienTich" HeaderText="Diện Tích" />
            <asp:BoundField DataField="DiaChiDayDu" HeaderText="Địa Chỉ" />
        </Columns>
    </asp:GridView>
</asp:Content>
