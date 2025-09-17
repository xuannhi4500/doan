INSERT INTO TaiKhoan (Username, Password, LoaiTaiKhoan, Email) VALUES
(N'user1', REPLICATE('a',64), N'ThanhVien', N'user1@gmail.com'),
(N'user2', REPLICATE('b',64), N'ThanhVien', N'user2@gmail.com'),
(N'user3', REPLICATE('c',64), N'ThanhVien', N'user3@gmail.com'),
(N'user4', REPLICATE('d',64), N'ThanhVien', N'user4@gmail.com'),
(N'user5', REPLICATE('e',64), N'ThanhVien', N'user5@gmail.com'),
(N'user6', REPLICATE('f',64), N'ChuNhaTro', N'user6@gmail.com'),
(N'user7', REPLICATE('g',64), N'ChuNhaTro', N'user7@gmail.com'),
(N'user8', REPLICATE('h',64), N'QuanTriVien', N'user8@gmail.com'),
(N'user9', REPLICATE('i',64), N'QuanTriVien', N'user9@gmail.com'),
(N'user10', REPLICATE('j',64), N'ThanhVien', N'user10@gmail.com');


INSERT INTO NguoiDung (IDTaiKhoan, HoTen, SDT, GioiTinh, DiaChi, NgaySinh, CCCD, AnhDaiDien) VALUES
(1, N'Nguyen Van A', '0911111111', N'Nam', N'Hà Nội', '1995-01-01', '012345678901', N'avatar1.png'),
(2, N'Tran Thi B', '0922222222', N'Nữ', N'Hồ Chí Minh', '1998-02-02', '012345678902', N'avatar2.png'),
(3, N'Le Van C', '0933333333', N'Nam', N'Đà Nẵng', '1997-03-03', '012345678903', N'avatar3.png'),
(4, N'Pham Thi D', '0944444444', N'Nữ', N'Huế', '2000-04-04', '012345678904', N'avatar4.png'),
(5, N'Do Van E', '0955555555', N'Nam', N'Hà Nội', '1996-05-05', '012345678905', N'avatar5.png'),
(6, N'Nguyen Van F', '0966666666', N'Nam', N'Cần Thơ', '1985-06-06', '012345678906', N'avatar6.png'),
(7, N'Tran Thi G', '0977777777', N'Nữ', N'Hải Phòng', '1989-07-07', '012345678907', N'avatar7.png'),
(8, N'Le Van H', '0988888888', N'Nam', N'Hà Nội', '1980-08-08', '012345678908', N'avatar8.png'),
(9, N'Pham Thi I', '0999999999', N'Nữ', N'Hồ Chí Minh', '1983-09-09', '012345678909', N'avatar9.png'),
(10, N'Do Van J', '0900000000', N'Nam', N'Đà Nẵng', '1992-10-10', '012345678910', N'avatar10.png');

INSERT INTO QuanTriVien (IDQuanTriVien, ChucVu, PhanQuyen) VALUES
(8, N'Admin', N'Quản lý toàn bộ hệ thống'),
(9, N'Moderator', N'Duyệt bài đăng, xử lý báo cáo');


INSERT INTO ChuNhaTro (IDChuNhaTro, GiayPhepKinhDoanh, MaSoThue) VALUES
(6, N'GP123', 'MST123'),
(7, N'GP456', 'MST456');

INSERT INTO ThanhVien (IDThanhVien, NgheNghiep, SoThich) VALUES
(1, N'Sinh viên', N'Đọc sách'),
(2, N'Giáo viên', N'Du lịch'),
(3, N'Kỹ sư', N'Chụp ảnh'),
(4, N'Bác sĩ', N'Âm nhạc'),
(5, N'Nhân viên văn phòng', N'Nấu ăn'),
(10, N'Lập trình viên', N'Chơi game');


INSERT INTO PhongTro (IDChuNhaTro, TenNhaTro, MoTa, Gia, DienTich, SoNguoiToiDa, SoPhong, DiaChiDayDu, TinhThanh, QuanHuyen, PhuongXa, ToaDoGEO) VALUES
(6, N'Nhà trọ A1', N'Phòng sạch đẹp', 1500000, 20, 2, 10, N'Hà Nội - Cầu Giấy', N'Hà Nội', N'Cầu Giấy', N'Dịch Vọng', N'21.028,105.835'),
(6, N'Nhà trọ A2', N'Phòng thoáng mát', 1800000, 25, 3, 8, N'Hà Nội - Đống Đa', N'Hà Nội', N'Đống Đa', N'Thịnh Quang', N'21.02,105.82'),
(6, N'Nhà trọ A3', N'Phòng giá rẻ', 1200000, 18, 2, 6, N'Hà Nội - Thanh Xuân', N'Hà Nội', N'Thanh Xuân', N'Khương Trung', N'21.03,105.81'),
(7, N'Nhà trọ B1', N'Phòng đầy đủ nội thất', 2500000, 30, 4, 12, N'HCM - Quận 1', N'Hồ Chí Minh', N'Quận 1', N'Bến Nghé', N'10.78,106.7'),
(7, N'Nhà trọ B2', N'Phòng gần trung tâm', 2000000, 22, 3, 7, N'HCM - Quận 3', N'Hồ Chí Minh', N'Quận 3', N'Phường 7', N'10.79,106.68'),
(7, N'Nhà trọ B3', N'Phòng tiện nghi', 2200000, 24, 3, 9, N'HCM - Quận 5', N'Hồ Chí Minh', N'Quận 5', N'Phường 11', N'10.76,106.66'),
(6, N'Nhà trọ A4', N'Phòng mini', 1400000, 15, 2, 5, N'Hà Nội - Long Biên', N'Hà Nội', N'Long Biên', N'Gia Thụy', N'21.05,105.87'),
(7, N'Nhà trọ B4', N'Phòng mới xây', 2300000, 28, 4, 10, N'HCM - Quận 7', N'Hồ Chí Minh', N'Quận 7', N'Tân Phong', N'10.73,106.71'),
(6, N'Nhà trọ A5', N'Phòng có ban công', 1700000, 21, 2, 8, N'Hà Nội - Tây Hồ', N'Hà Nội', N'Tây Hồ', N'Nhật Tân', N'21.07,105.81'),
(7, N'Nhà trọ B5', N'Phòng cao cấp', 3000000, 35, 5, 6, N'HCM - Bình Thạnh', N'Hồ Chí Minh', N'Bình Thạnh', N'Phường 25', N'10.8,106.72');



INSERT INTO HinhAnhPhongTro (IDPhongTro, UrlHinhAnh) VALUES
(1, N'p1_1.jpg'),
(1, N'p1_2.jpg'),
(2, N'p2.jpg'),
(3, N'p3.jpg'),
(4, N'p4.jpg'),
(5, N'p5.jpg'),
(6, N'p6.jpg'),
(7, N'p7.jpg'),
(8, N'p8.jpg'),
(9, N'p9.jpg');


INSERT INTO HinhAnhPhongTro (IDPhongTro, UrlHinhAnh) VALUES
(1, N'p1_1.jpg'),
(1, N'p1_2.jpg'),
(2, N'p2_1.jpg'),
(2, N'p2_2.jpg'),
(3, N'p3_1.jpg'),
(3, N'p3_2.jpg'),
(4, N'p4_1.jpg'),
(4, N'p4_2.jpg'),
(5, N'p5_1.jpg'),
(5, N'p5_2.jpg'),
(6, N'p6_1.jpg'),
(6, N'p6_2.jpg'),
(7, N'p7_1.jpg'),
(7, N'p7_2.jpg'),
(8, N'p8_1.jpg'),
(8, N'p8_2.jpg'),
(9, N'p9_1.jpg'),
(9, N'p9_2.jpg'),
(10, N'p10_1.jpg'),
(10, N'p10_2.jpg');


INSERT INTO BaiDang (IDChuNhaTro, IDPhongTro, TieuDe, NoiDung, NgayHetHan) VALUES
(6, 1, N'Phòng trọ giá rẻ Hà Nội', N'Phòng đẹp, gần trường đại học', '2025-12-31'),
(6, 2, N'Phòng trọ tiện nghi Cầu Giấy', N'Full nội thất, gần bến xe', '2025-11-30'),
(6, 3, N'Phòng cho thuê Thanh Xuân', N'Giá rẻ, sạch sẽ', '2025-10-30'),
(7, 4, N'Phòng cao cấp Quận 1', N'Ngay trung tâm thành phố', '2025-12-15'),
(7, 5, N'Phòng trọ Quận 3', N'Tiện nghi đầy đủ', '2025-11-20'),
(7, 6, N'Phòng Quận 5', N'Không gian thoáng mát', '2025-10-25'),
(6, 7, N'Phòng Long Biên', N'Giá sinh viên', '2025-12-05'),
(7, 8, N'Phòng mới Quận 7', N'Sạch đẹp, gần siêu thị', '2025-12-25'),
(6, 9, N'Phòng Tây Hồ', N'Cảnh view hồ', '2025-12-10'),
(7, 10, N'Phòng cao cấp Bình Thạnh', N'Có chỗ để ô tô', '2025-12-31');


INSERT INTO DatPhong (IDThanhVien, IDPhongTro, NgayCheckIn, NgayCheckOut, SoNguoi, PhiCoc, MaXacNhan) VALUES
(1, 1, '2025-09-20', '2025-09-25', 2, 500000, 'XN001'),
(2, 2, '2025-09-21', '2025-09-26', 1, 400000, 'XN002'),
(3, 3, '2025-09-22', '2025-09-27', 2, 300000, 'XN003'),
(4, 4, '2025-09-23', '2025-09-28', 3, 800000, 'XN004'),
(5, 5, '2025-09-24', '2025-09-29', 2, 600000, 'XN005'),
(10, 6, '2025-09-25', '2025-09-30', 1, 500000, 'XN006'),
(1, 7, '2025-09-26', '2025-10-01', 2, 400000, 'XN007'),
(2, 8, '2025-09-27', '2025-10-02', 3, 700000, 'XN008'),
(3, 9, '2025-09-28', '2025-10-03', 2, 600000, 'XN009'),
(4, 10, '2025-09-29', '2025-10-04', 4, 900000, 'XN010');


INSERT INTO HoaDon (MaHoaDon, IDDatPhong, NgayHetHan, TienCoc, TienPhong, TongTien, GhiChu) VALUES
('HD001', 1, '2025-10-01', 500000, 1000000, 1500000, N'Thanh toán trước 50%'),
('HD002', 2, '2025-10-02', 400000, 1200000, 1600000, N'Thanh toán đủ'),
('HD003', 3, '2025-10-03', 300000, 900000, 1200000, N'Đã nhận cọc'),
('HD004', 4, '2025-10-04', 800000, 1700000, 2500000, N'Đã thanh toán'),
('HD005', 5, '2025-10-05', 600000, 1100000, 1700000, N'Chưa thanh toán hết'),
('HD006', 6, '2025-10-06', 500000, 1400000, 1900000, N'Thanh toán online'),
('HD007', 7, '2025-10-07', 400000, 1000000, 1400000, N'Chờ xác nhận'),
('HD008', 8, '2025-10-08', 700000, 1500000, 2200000, N'Thanh toán 1 lần'),
('HD009', 9, '2025-10-09', 600000, 1200000, 1800000, N'Đã trả đủ'),
('HD010', 10, '2025-10-10', 900000, 2000000, 2900000, N'Thanh toán tiền mặt');


INSERT INTO ChiTietHoaDon (IDHoaDon, LoaiChiPhi, DonGia, ThanhTien, MoTa, SoDien, ChiSoDienDau, ChiSoDienCuoi, SoNguoiTinhNuoc) VALUES
(1, N'Tiền điện', 3500, 70000, N'Điện tháng 9', 20, 100, 120, 2),
(2, N'Tiền nước', 20000, 60000, N'Nước tháng 9', NULL, NULL, NULL, 3),
(3, N'Tiền internet', 150000, 150000, N'Internet tháng 9', NULL, NULL, NULL, NULL),
(4, N'Tiền điện', 3500, 105000, N'Điện tháng 9', 30, 200, 230, 3),
(5, N'Tiền rác', 50000, 50000, N'Rác tháng 9', NULL, NULL, NULL, NULL),
(6, N'Tiền nước', 20000, 40000, N'Nước tháng 9', NULL, NULL, NULL, 2),
(7, N'Tiền điện', 3500, 52500, N'Điện tháng 9', 15, 300, 315, 1),
(8, N'Tiền internet', 150000, 150000, N'Internet tháng 9', NULL, NULL, NULL, NULL),
(9, N'Tiền rác', 50000, 50000, N'Rác tháng 9', NULL, NULL, NULL, NULL),
(10, N'Tiền nước', 20000, 80000, N'Nước tháng 9', NULL, NULL, NULL, 4);


INSERT INTO ThanhToan (IDHoaDon, SoTien, PhuongThuc, NguoiThu, GhiChu) VALUES
(1, 1500000, N'Tiền mặt', N'Nguyen Van F', N'Đã trả đủ'),
(2, 1600000, N'Chuyển khoản', N'Tran Thi G', N'Online banking'),
(3, 1200000, N'Tiền mặt', N'Nguyen Van F', N'Đã xác nhận'),
(4, 2500000, N'Chuyển khoản', N'Tran Thi G', N'Hoàn tất'),
(5, 1000000, N'Tiền mặt', N'Nguyen Van F', N'Còn thiếu 700k'),
(6, 1900000, N'Chuyển khoản', N'Tran Thi G', N'Đã trả đủ'),
(7, 1400000, N'Tiền mặt', N'Nguyen Van F', N'Đã nhận'),
(8, 2200000, N'Chuyển khoản', N'Tran Thi G', N'Đã trả đủ'),
(9, 1800000, N'Tiền mặt', N'Nguyen Van F', N'Đã nhận'),
(10, 2900000, N'Tiền mặt', N'Tran Thi G', N'Thanh toán xong');

INSERT INTO DanhGia (IDThanhVien, IDPhongTro, SoSao, NoiDung, PhanHoiChuTro) VALUES
(1, 1, 5, N'Phòng rất đẹp và sạch sẽ', N'Cảm ơn bạn đã đánh giá'),
(2, 2, 4, N'Phòng thoáng mát, chủ nhiệt tình', N'Cảm ơn góp ý'),
(3, 3, 3, N'Phòng bình thường, hơi nhỏ', N'Sẽ cải thiện'),
(4, 4, 5, N'Tuyệt vời, gần trung tâm', N'Mong bạn quay lại'),
(5, 5, 4, N'Phòng ổn, giá hợp lý', N'Cảm ơn bạn'),
(10, 6, 5, N'Nội thất đầy đủ, hài lòng', N'Rất vui được phục vụ'),
(1, 7, 3, N'Ổn nhưng hơi xa', N'Sẽ xem xét cải thiện'),
(2, 8, 4, N'Phòng mới, sạch sẽ', N'Cảm ơn bạn'),
(3, 9, 5, N'Cảnh đẹp, đáng tiền', N'Rất vui lòng'),
(4, 10, 5, N'Phòng cao cấp, rất thích', N'Cảm ơn sự tin tưởng');

INSERT INTO PhanHoi (IDThanhVien, IDQuanTriVien, LoaiPhanHoi, TieuDe, NoiDung) VALUES
(1, 8, N'Báo lỗi', N'Lỗi đăng nhập', N'Tôi không thể đăng nhập vào hệ thống'),
(2, 9, N'Góp ý', N'Cải thiện giao diện', N'Giao diện nên thêm dark mode'),
(3, 8, N'Báo cáo', N'Phòng giả mạo', N'Có phòng đăng sai thông tin'),
(4, 9, N'Báo cáo', N'Thanh toán lỗi', N'Tôi bị trừ tiền nhưng chưa nhận được xác nhận'),
(5, 8, N'Góp ý', N'Tìm kiếm nâng cao', N'Nên có bộ lọc nhiều điều kiện'),
(10, 9, N'Báo lỗi', N'Lỗi upload ảnh', N'Không thể tải ảnh lên bài đăng'),
(1, 8, N'Báo cáo', N'Chủ trọ không hợp tác', N'Chủ nhà trọ không hỗ trợ khi có sự cố'),
(2, 9, N'Góp ý', N'Tích điểm thưởng', N'Nên có hệ thống tích điểm cho thành viên'),
(3, 8, N'Báo cáo', N'Tin giả', N'Có nhiều bài viết lừa đảo'),
(4, 9, N'Báo lỗi', N'Lỗi thanh toán MOMO', N'Không thể thanh toán qua MOMO');

