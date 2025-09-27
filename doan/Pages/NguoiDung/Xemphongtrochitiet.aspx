<%@ Page Title="Phòng Trọ - Xem chi tiết" Language="C#" MasterPageFile="~/MasterPages/Site.Master"
    AutoEventWireup="true" CodeBehind="Xemchitiet.aspx.cs"
    Inherits="phongtroxemchitiet.Xemchitiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Phòng Trọ - Xem chi tiết
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="header">
        <div class="search-box">
            <input type="text" placeholder="Tìm kiếm phòng trọ..." />
            <button type="submit"><span>🔍</span></button>
        </div>
        <div class="header-icons">
            <span title="Danh mục">☰</span>
            <span title="Thông báo">🔔</span>
            <span title="Tài khoản">👤</span>
        </div>
    </div>

    
    <div class="sidebar">
        <h2>PHÒNG TRỌ</h2>
        <a href="#">ĐẶT PHÒNG</a>
        <a href="#">TÌM PHÒNG</a>
        <a href="#">XEM THÔNG TIN</a>
        <a href="#">QUẢN LÍ TÀI KHOẢN</a>
    </div>

    <!-- Nội dung chính -->
    <div class="content">
        <div class="sort-bar">
            Sắp xếp theo:
            <asp:DropDownList ID="ddlSort" runat="server">
                <asp:ListItem>PHÒNG TRỐNG</asp:ListItem>
                <asp:ListItem>GIÁ TĂNG DẦN</asp:ListItem>
                <asp:ListItem>GIÁ GIẢM DẦN</asp:ListItem>
            </asp:DropDownList>
            <span style="float:right">Tổng cộng <b>23</b> phòng trống</span>
        </div>

        <div class="room-list">
            <!-- Phòng chính -->
            <div class="room-main">
                <img src="https://storage.googleapis.com/digital-platform/hinh_anh_nam_long_kinh_nghiem_thue_phong_tro_danh_cho_sinh_vien_so_1_ec29cfda91/hinh_anh_nam_long_kinh_nghiem_thue_phong_tro_danh_cho_sinh_vien_so_1_ec29cfda91.png" alt="Phòng trọ" />
                <div class="room-info">
                    <p><b>📍 Địa chỉ:</b> 18 Cổ Mân 8, Mân Thái, Sơn Trà, Đà Nẵng</p>
                    <p><b>💰 Giá:</b> 2.750.000 / tháng</p>
                    <p><b>📐 Diện tích:</b> 30m²</p>
                    <p><b>👥 Số lượng:</b> 3 người</p>
                    <p><b>👤 Chủ phòng:</b> Hoàng Kha</p>
                    <p><b>📞 ĐT:</b> 010203040</p>
                    <p><b>🏠 Nội thất:</b> Full nội thất</p>
                </div>
            </div>

            <!-- Danh sách phòng phụ -->
            <div class="room-side">
                <div class="room-item">
                    <img src="https://ecogreen-saigon.vn/uploads/phong-tro-la-loai-hinh-nha-o-pho-bien-gia-re-tien-loi-cho-sinh-vien-va-nguoi-di-lam.png" alt="Phòng 1" />
                    <div>
                        <p>23 Đoàn Quý Phi, Hòa Cường Nam</p>
                        <p><b>Giá: 1.800.000 / tháng</b></p>
                    </div>
                </div>

                <div class="room-item">
                    <img src="https://offer.rever.vn/hubfs/cho_thue_phong_tro_moi_xay_gia_re_ngay_phuong_15_tan_binh3.jpg" alt="Phòng 2" />
                    <div>
                        <p>88 Nguyễn Bình, Hòa Minh, Cẩm Lệ</p>
                        <p><b>Giá: 2.500.000 / tháng</b></p>
                    </div>
                </div>

                <div class="room-item">
                    <img src="https://www.hancorp.com.vn/wp-content/uploads/2020/08/phong-tro-2.jpg" alt="Phòng 3" />
                    <div>
                        <p>1091 Tôn Đản, Hòa Thọ Tây</p>
                        <p><b>Giá: 1.500.000 / tháng</b></p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <div class="footer">
        <h3>Thông tin liên hệ</h3>
        <p>📍 Địa chỉ: 45 Trần Phú, Hải Châu, Đà Nẵng</p>
        <p>📞 Hotline: 0909 123 456</p>
        <p>📧 Email: phongtro@lienhe.vn</p>
        <div class="social">
            🌐 Kết nối:
            <a href="#"><img src="https://cdn-icons-png.flaticon.com/512/733/733547.png" alt="Facebook" /></a>
            <a href="#"><img src="https://cdn-icons-png.flaticon.com/512/2504/2504739.png" alt="Zalo" /></a>
            <a href="#"><img src="https://cdn-icons-png.flaticon.com/512/2111/2111463.png" alt="Instagram" /></a>
        </div>
    </div>

</asp:Content>
