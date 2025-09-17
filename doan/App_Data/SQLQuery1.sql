CREATE TABLE TaiKhoan (
    IDTaiKhoan INT PRIMARY KEY IDENTITY(1,1),
    Username NVARCHAR(100) NOT NULL UNIQUE,
    Password CHAR(64) NOT NULL, -- gợi ý: hash mật khẩu
    LoaiTaiKhoan NVARCHAR(50),
    NgayTao DATETIME DEFAULT GETDATE(),
    TrangThai BIT DEFAULT 1,
    Email NVARCHAR(100),
    LastLogin DATETIME
);

CREATE TABLE NguoiDung (
    IDNguoiDung INT PRIMARY KEY IDENTITY(1,1),
    IDTaiKhoan INT NOT NULL,
    HoTen NVARCHAR(100),
    SDT VARCHAR(20),
    GioiTinh NVARCHAR(10),
    DiaChi NVARCHAR(200),
    NgaySinh DATE,
    CCCD VARCHAR(20),
    AnhDaiDien NVARCHAR(200),
    FOREIGN KEY (IDTaiKhoan) REFERENCES TaiKhoan(IDTaiKhoan)
);
CREATE TABLE QuanTriVien (
    IDQuanTriVien INT PRIMARY KEY,
    ChucVu NVARCHAR(100),
    PhanQuyen NVARCHAR(200),
    FOREIGN KEY (IDQuanTriVien) REFERENCES NguoiDung(IDNguoiDung)
);

CREATE TABLE ChuNhaTro (
    IDChuNhaTro INT PRIMARY KEY,
    GiayPhepKinhDoanh NVARCHAR(100),
    MaSoThue VARCHAR(20),
    FOREIGN KEY (IDChuNhaTro) REFERENCES NguoiDung(IDNguoiDung)
);

CREATE TABLE ThanhVien (
    IDThanhVien INT PRIMARY KEY,
    NgheNghiep NVARCHAR(100),
    SoThich NVARCHAR(200),
    FOREIGN KEY (IDThanhVien) REFERENCES NguoiDung(IDNguoiDung)
);
CREATE TABLE PhongTro (
    IDPhongTro INT PRIMARY KEY IDENTITY(1,1),
    IDChuNhaTro INT NOT NULL,
    TenNhaTro NVARCHAR(100),
    MoTa NVARCHAR(MAX),
    Gia DECIMAL(18,2),
    DienTich FLOAT,
    SoNguoiToiDa INT,
    SoPhong INT,
    DiaChiDayDu NVARCHAR(200),
    TinhThanh NVARCHAR(50),
    QuanHuyen NVARCHAR(50),
    PhuongXa NVARCHAR(50),
    ToaDoGEO NVARCHAR(100),
    TrangThai BIT DEFAULT 1,
    ConTrong BIT DEFAULT 1,
    NgayTao DATETIME DEFAULT GETDATE(),
    NgayCapNhat DATETIME,
    FOREIGN KEY (IDChuNhaTro) REFERENCES ChuNhaTro(IDChuNhaTro)
);

CREATE TABLE HinhAnhPhongTro (
    IDHinhAnh INT PRIMARY KEY IDENTITY(1,1),
    IDPhongTro INT NOT NULL,
    UrlHinhAnh NVARCHAR(200),
    FOREIGN KEY (IDPhongTro) REFERENCES PhongTro(IDPhongTro)
);

CREATE TABLE BaiDang (
    IDBaiDang INT PRIMARY KEY IDENTITY(1,1),
    IDChuNhaTro INT NOT NULL,
    IDPhongTro INT NOT NULL,
    TieuDe NVARCHAR(200),
    NoiDung NVARCHAR(MAX),
    NgayTao DATETIME DEFAULT GETDATE(),
    NgayCapNhat DATETIME,
    NgayHetHan DATETIME,
    TrangThai BIT DEFAULT 1,
    LuotXem INT DEFAULT 0,
    LuotThich INT DEFAULT 0,
    FOREIGN KEY (IDChuNhaTro) REFERENCES ChuNhaTro(IDChuNhaTro),
    FOREIGN KEY (IDPhongTro) REFERENCES PhongTro(IDPhongTro)
);
CREATE TABLE DatPhong (
    IDDatPhong INT PRIMARY KEY IDENTITY(1,1),
    IDThanhVien INT NOT NULL,
    IDPhongTro INT NOT NULL,
    NgayDat DATETIME DEFAULT GETDATE(),
    NgayCheckIn DATE,
    NgayCheckOut DATE,
    SoNguoi INT,
    TrangThai BIT DEFAULT 1,
    GhiChu NVARCHAR(200),
    PhiCoc DECIMAL(18,2),
    MaXacNhan VARCHAR(50),
    LyDoHuy NVARCHAR(200),
    FOREIGN KEY (IDThanhVien) REFERENCES ThanhVien(IDThanhVien),
    FOREIGN KEY (IDPhongTro) REFERENCES PhongTro(IDPhongTro)
);

CREATE TABLE HoaDon (
    IDHoaDon INT PRIMARY KEY IDENTITY(1,1),
    MaHoaDon VARCHAR(50) UNIQUE,
    IDDatPhong INT NOT NULL,
    NgayTao DATETIME DEFAULT GETDATE(),
    NgayHetHan DATETIME,
    TienCoc DECIMAL(18,2),
    TienPhong DECIMAL(18,2),
    TongTien DECIMAL(18,2),
    TrangThai BIT DEFAULT 0,
    GhiChu NVARCHAR(200),
    FOREIGN KEY (IDDatPhong) REFERENCES DatPhong(IDDatPhong)
);

CREATE TABLE ChiTietHoaDon (
    IDChiTiet INT PRIMARY KEY IDENTITY(1,1),
    IDHoaDon INT NOT NULL,
    LoaiChiPhi NVARCHAR(100),
    DonGia DECIMAL(18,2),
    ThanhTien DECIMAL(18,2),
    MoTa NVARCHAR(200),
    SoDien INT,
    ChiSoDienDau INT,
    ChiSoDienCuoi INT,
    SoNguoiTinhNuoc INT,
    FOREIGN KEY (IDHoaDon) REFERENCES HoaDon(IDHoaDon)
);

CREATE TABLE ThanhToan (
    IDThanhToan INT PRIMARY KEY IDENTITY(1,1),
    IDHoaDon INT NOT NULL,
    SoTien DECIMAL(18,2),
    NgayThanhToan DATETIME DEFAULT GETDATE(),
    PhuongThuc NVARCHAR(50),
    NguoiThu NVARCHAR(100),
    GhiChu NVARCHAR(200),
    FOREIGN KEY (IDHoaDon) REFERENCES HoaDon(IDHoaDon)
);
CREATE TABLE DanhGia (
    IDDanhGia INT PRIMARY KEY IDENTITY(1,1),
    IDThanhVien INT NOT NULL,
    IDPhongTro INT NOT NULL,
    SoSao INT CHECK (SoSao BETWEEN 1 AND 5),
    NoiDung NVARCHAR(MAX),
    NgayDanhGia DATETIME DEFAULT GETDATE(),
    TrangThai BIT DEFAULT 1,
    PhanHoiChuTro NVARCHAR(MAX),
    FOREIGN KEY (IDThanhVien) REFERENCES ThanhVien(IDThanhVien),
    FOREIGN KEY (IDPhongTro) REFERENCES PhongTro(IDPhongTro)
);

CREATE TABLE PhanHoi (
    IDPhanHoi INT PRIMARY KEY IDENTITY(1,1),
    IDThanhVien INT NOT NULL,
    IDQuanTriVien INT NOT NULL,
    LoaiPhanHoi NVARCHAR(100),
    TieuDe NVARCHAR(200),
    NoiDung NVARCHAR(MAX),
    NgayGui DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (IDThanhVien) REFERENCES ThanhVien(IDThanhVien),
    FOREIGN KEY (IDQuanTriVien) REFERENCES QuanTriVien(IDQuanTriVien)
);