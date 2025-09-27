<%@ Page Title="Trang Chủ" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="doan.Pages.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="banner-top">
        <img src="<%= ResolveUrl("~/Assets/img/bn.png") %>" alt="Banner trang chủ" class="banner-image" />
    </div>
    <div class="header-banner">
        <h2>TÌM PHÒNG TRỌ NHANH CHÓNG, TIỆN LỢI, PHÙ HỢP VỚI NHU CẦU CỦA BẠN!</h2>
    </div>
    
    <div class="list-room">
        <asp:Repeater ID="rptPhong" runat="server">
            <ItemTemplate>
                <div class="room-card">
                    <!-- ✅ Sửa đường dẫn ảnh ở đây -->
                    <asp:Image 
                        runat="server" 
                        ImageUrl='<%# ResolveUrl("~/Assets/img/" + Eval("AnhDaiDien")) %>' 
                        CssClass="room-image" 
                        AlternateText="Không hiển thị ảnh" />

                    <h4><%# Eval("TenNhaTro") %></h4>
                    <p><strong>Giá:</strong> <%# Eval("Gia", "{0:#,##0}") %> VNĐ/tháng</p>
                    <p><strong>Diện tích:</strong> <%# Eval("DienTich") %> m²</p>
                    <p><strong>Địa chỉ:</strong> <%# Eval("DiaChiDayDu") %></p>
                    <p><strong>Khu vực:</strong> <%# Eval("PhuongXa") %>, <%# Eval("QuanHuyen") %>, <%# Eval("TinhThanh") %></p>
                    
                    <asp:HyperLink 
                        runat="server" 
                        NavigateUrl='<%# "ChiTietPhong.aspx?id=" + Eval("IDPhongTro") %>' 
                        CssClass="btn-view">
                        XEM PHÒNG
                    </asp:HyperLink>
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <div style="text-align:center; margin-top:20px;">
            <asp:Button ID="btnPrev" runat="server" Text="<< Trước" OnClick="btnPrev_Click" />
            <asp:Label ID="lblPageInfo" runat="server" Text=""></asp:Label>
            <asp:Button ID="btnNext" runat="server" Text="Sau >>" OnClick="btnNext_Click" />
        </div>
    </div>
</asp:Content>
