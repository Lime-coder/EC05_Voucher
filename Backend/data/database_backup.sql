/****** Object:  Table [dbo].[Admin]    Script Date: 7/4/2026 11:41:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[SDT_Admin] [varchar](15) NOT NULL,
	[IDTaiKhoan] [int] NULL,
 CONSTRAINT [PK__Admin__574698DDEA3DA776] PRIMARY KEY CLUSTERED 
(
	[SDT_Admin] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BaiViet]    Script Date: 7/4/2026 11:41:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiViet](
	[MaBaiViet] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](255) NOT NULL,
	[NoiDung] [nvarchar](max) NULL,
	[TacGia] [nvarchar](255) NULL,
	[LuotXem] [int] NULL,
	[TrangThai] [nvarchar](50) NULL,
	[NgayTao] [datetime] NULL,
 CONSTRAINT [PK_BaiViet] PRIMARY KEY CLUSTERED 
(
	[MaBaiViet] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banner]    Script Date: 7/4/2026 11:41:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banner](
	[MaBanner] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](255) NOT NULL,
	[HinhAnh] [nvarchar](500) NULL,
	[LinkURL] [nvarchar](500) NULL,
	[ViTri] [nvarchar](100) NULL,
	[TrangThai] [nvarchar](50) NULL,
	[ThuTu] [int] NULL,
	[NgayTao] [datetime] NULL,
	[Tag] [nvarchar](100) NULL,
	[MoTa] [nvarchar](max) NULL,
	[ThoiGianKetThuc] [datetime] NULL,
	[VanBanNut] [nvarchar](50) NULL,
 CONSTRAINT [PK_Banner] PRIMARY KEY CLUSTERED 
(
	[MaBanner] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiNhanh]    Script Date: 7/4/2026 11:41:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiNhanh](
	[MaChiNhanh] [int] IDENTITY(1,1) NOT NULL,
	[TenChiNhanh] [nvarchar](255) NULL,
	[SDT_CN] [varchar](15) NULL,
	[DiaChiChiNhanh] [nvarchar](500) NULL,
	[MaDoiTac] [int] NULL,
 CONSTRAINT [PK__ChiNhanh__4B5BA5BDAA3C8550] PRIMARY KEY CLUSTERED 
(
	[MaChiNhanh] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 7/4/2026 11:41:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[MaCTDonHang] [int] IDENTITY(1,1) NOT NULL,
	[MaDonHang] [int] NOT NULL,
	[VoucherID] [int] NOT NULL,
	[SoLuongMua] [int] NOT NULL,
	[DonGia] [decimal](18, 2) NOT NULL,
	[ThanhTien] [decimal](18, 2) NULL,
 CONSTRAINT [PK__ChiTietD__B9F4AB6C58D591C0] PRIMARY KEY CLUSTERED 
(
	[MaCTDonHang] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietGioHang]    Script Date: 7/4/2026 11:41:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietGioHang](
	[MaCTGioHang] [int] IDENTITY(1,1) NOT NULL,
	[MaGioHang] [int] NULL,
	[VoucherID] [int] NULL,
	[SoLuong] [int] NULL,
	[ThoiGianThem] [datetime] NULL,
 CONSTRAINT [PK__ChiTietG__CE44847376511675] PRIMARY KEY CLUSTERED 
(
	[MaCTGioHang] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhGia]    Script Date: 7/4/2026 11:41:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGia](
	[MaDanhGia] [int] IDENTITY(1,1) NOT NULL,
	[VoucherID] [int] NULL,
	[IDTaiKhoan] [int] NULL,
	[DiemDanhGia] [int] NULL,
	[NoiDung] [nvarchar](max) NULL,
	[NgayDanhGia] [datetime] NULL,
	[PhanHoiXuLy] [nvarchar](max) NULL,
 CONSTRAINT [PK__DanhGia__AA9515BFC2148C37] PRIMARY KEY CLUSTERED 
(
	[MaDanhGia] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 7/4/2026 11:41:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[MaDanhMuc] [int] IDENTITY(1,1) NOT NULL,
	[TenDanhMuc] [nvarchar](255) NOT NULL,
	[MoTa] [nvarchar](1000) NULL,
 CONSTRAINT [PK__DanhMuc__B375088720B22A09] PRIMARY KEY CLUSTERED 
(
	[MaDanhMuc] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoiTac]    Script Date: 7/4/2026 11:41:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoiTac](
	[MaDoiTac] [int] IDENTITY(1,1) NOT NULL,
	[TenDoanhNghiep] [nvarchar](255) NOT NULL,
	[MaSoThue] [varchar](50) NOT NULL,
	[CaNhanDaiDien] [nvarchar](255) NULL,
	[LinhVucKinhDoanh] [nvarchar](255) NULL,
	[AvatarUrl] [nvarchar](500) NULL,
	[MoTa] [nvarchar](max) NOT NULL,
	[NgayThamGia] [datetime] NOT NULL,
	[EmailLienHe] [varchar](255) NOT NULL,
	[SDTLienHe] [varchar](15) NOT NULL,
	[GioMoCua] [time](7) NOT NULL,
	[GioDongCua] [time](7) NOT NULL,
	[TrangThai] [nvarchar](50) NULL,
	[DiaChiTruSo] [nvarchar](500) NULL,
	[EmailDaiDien] [varchar](255) NULL,
	[SDTDaiDien] [varchar](15) NULL,
	[Website] [nvarchar](255) NULL,
 CONSTRAINT [PK__DoiTac__5F76BF3484C439FB] PRIMARY KEY CLUSTERED 
(
	[MaDoiTac] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 7/4/2026 11:41:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDonHang] [int] IDENTITY(1,1) NOT NULL,
	[IDTaiKhoan] [int] NOT NULL,
	[ThoiGianThanhToan] [datetime] NULL,
	[TongTien] [decimal](18, 2) NOT NULL,
	[PhuongThucThanhToan] [nvarchar](100) NULL,
	[TrangThaiDonHang] [nvarchar](50) NULL,
	[TrangThaiThanhToan] [nvarchar](50) NULL,
 CONSTRAINT [PK__DonHang__129584AD439B6660] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FAQ]    Script Date: 7/4/2026 11:41:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FAQ](
	[MaFAQ] [int] IDENTITY(1,1) NOT NULL,
	[CauHoi] [nvarchar](500) NOT NULL,
	[TraLoi] [nvarchar](max) NULL,
	[DanhMucFAQ] [nvarchar](100) NULL,
	[ThuTu] [int] NULL,
	[TrangThai] [nvarchar](50) NULL,
 CONSTRAINT [PK_FAQ] PRIMARY KEY CLUSTERED 
(
	[MaFAQ] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 7/4/2026 11:41:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[MaGioHang] [int] IDENTITY(1,1) NOT NULL,
	[IDTaiKhoan] [int] NULL,
	[ThoiGianTao] [datetime] NULL,
 CONSTRAINT [PK__GioHang__F5001DA30C08495D] PRIMARY KEY CLUSTERED 
(
	[MaGioHang] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 7/4/2026 11:41:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[SDT_KH] [varchar](15) NOT NULL,
	[IDTaiKhoan] [int] NOT NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[DiaChiKhachHang] [nvarchar](500) NULL,
	[AvatarUrl] [nvarchar](500) NULL,
 CONSTRAINT [PK__KhachHan__DE78DCDA495FA377] PRIMARY KEY CLUSTERED 
(
	[SDT_KH] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaVoucher]    Script Date: 7/4/2026 11:41:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaVoucher](
	[SoMaVoucher] [varchar](100) NOT NULL,
	[MaCTDonHang] [int] NOT NULL,
	[TrangThaiSuDung] [nvarchar](50) NULL,
	[ThoiDiemPhatHanh] [datetime] NULL,
	[ThoiDiemSuDung] [datetime] NULL,
	[MaChiNhanhSuDung] [int] NULL,
 CONSTRAINT [PK__MaVouche__9FAD330E58F12E4E] PRIMARY KEY CLUSTERED 
(
	[SoMaVoucher] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVienDoiTac]    Script Date: 7/4/2026 11:41:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVienDoiTac](
	[IDNhanVien] [int] IDENTITY(1,1) NOT NULL,
	[IDTaiKhoan] [int] NULL,
	[MaDoiTac] [int] NULL,
	[ChucVu] [nvarchar](100) NULL,
 CONSTRAINT [PK__NhanVien__7AC2D9F709C1CB2A] PRIMARY KEY CLUSTERED 
(
	[IDNhanVien] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sysdiagrams]    Script Date: 7/4/2026 11:41:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sysdiagrams](
	[name] [nvarchar](128) NOT NULL,
	[principal_id] [int] NOT NULL,
	[diagram_id] [int] IDENTITY(1,1) NOT NULL,
	[version] [int] NULL,
	[definition] [varbinary](max) NULL,
 CONSTRAINT [PK__sysdiagr__C2B05B615E131116] PRIMARY KEY CLUSTERED 
(
	[diagram_id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemLog]    Script Date: 7/4/2026 11:41:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemLog](
	[MaLog] [int] IDENTITY(1,1) NOT NULL,
	[IDTaiKhoan] [int] NULL,
	[HanhDong] [nvarchar](255) NOT NULL,
	[DoiTuong] [nvarchar](255) NULL,
	[ChiTiet] [nvarchar](max) NULL,
	[DiaChiIP] [varchar](50) NULL,
	[TrangThai] [nvarchar](50) NULL,
	[ThoiGian] [datetime] NULL,
 CONSTRAINT [PK__SystemLo__3B98D24A22489A5B] PRIMARY KEY CLUSTERED 
(
	[MaLog] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 7/4/2026 11:41:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[IDTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[TenDangNhap] [varchar](100) NOT NULL,
	[MatKhau] [varchar](255) NOT NULL,
	[Email] [varchar](255) NOT NULL,
	[HoTenNguoiDung] [nvarchar](255) NULL,
	[TrangThaiTaiKhoan] [nvarchar](50) NULL,
	[LoaiTK] [nvarchar](50) NULL,
 CONSTRAINT [PK__TaiKhoan__BC5F907C614DEE4F] PRIMARY KEY CLUSTERED 
(
	[IDTaiKhoan] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Voucher]    Script Date: 7/4/2026 11:41:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voucher](
	[VoucherID] [int] IDENTITY(1,1) NOT NULL,
	[MaDanhMuc] [int] NULL,
	[MaDoiTac] [int] NOT NULL,
	[TenVoucher] [nvarchar](255) NOT NULL,
	[MoTaVoucher] [nvarchar](max) NULL,
	[MoTaDieuKien] [nvarchar](max) NULL,
	[GiaGoc] [decimal](18, 2) NOT NULL,
	[GiaBan] [decimal](18, 2) NOT NULL,
	[ThoiGianBatDau] [datetime] NOT NULL,
	[ThoiGianKetThuc] [datetime] NOT NULL,
	[SoLuongChoPhep] [int] NOT NULL,
	[SoLuongDaBan] [int] NULL,
	[TrangThaiVoucher] [nvarchar](50) NULL,
	[ChinhSachHoanTien] [nvarchar](max) NULL,
	[HuongDanSuDung] [nvarchar](max) NULL,
	[ImageUrl] [nvarchar](500) NULL,
	[ThoiGianBatDauBan] [datetime] NULL,
	[ThoiGianKetThucBan] [datetime] NULL,
 CONSTRAINT [PK__Voucher__3AEE79C1B53D81DF] PRIMARY KEY CLUSTERED 
(
	[VoucherID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Voucher_ChiNhanh]    Script Date: 7/4/2026 11:41:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voucher_ChiNhanh](
	[STT] [int] IDENTITY(1,1) NOT NULL,
	[VoucherID] [int] NULL,
	[MaChiNhanh] [int] NULL,
	[TrangThaiApDung] [nvarchar](50) NULL,
 CONSTRAINT [PK__Voucher___CA1EB69086A8AE3A] PRIMARY KEY CLUSTERED 
(
	[STT] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Admin] ([SDT_Admin], [IDTaiKhoan]) VALUES (N'0987654321', 1)
GO
SET IDENTITY_INSERT [dbo].[BaiViet] ON 
GO
INSERT [dbo].[BaiViet] ([MaBaiViet], [TieuDe], [NoiDung], [TacGia], [LuotXem], [TrangThai], [NgayTao]) VALUES (1, N'Bùng nổ cơn lốc trà trái cây tại Phúc Long tuần này', N'Tuần này Phúc Long mang đến dòng sản phẩm trà trái cây nhiệt đới tươi mát kèm ưu đãi voucher cực khủng giảm ngay 20% khi đặt trước qua ứng dụng Voucher Hub...', N'Phúc Long News', 120, N'Hiển thị', CAST(N'2026-05-01T08:00:00.000' AS DateTime))
GO
INSERT [dbo].[BaiViet] ([MaBaiViet], [TieuDe], [NoiDung], [TacGia], [LuotXem], [TrangThai], [NgayTao]) VALUES (2, N'Trải nghiệm phòng chiếu IMAX cực đỉnh cùng CGV Cinemas', N'Phòng chiếu IMAX với công nghệ âm thanh vòm và màn hình cong cực đại mang đến trải nghiệm xem phim hoàn toàn khác biệt. Đặt vé ngay hôm nay cùng Voucher giảm giá 50k vé IMAX tại hệ thống rạp CGV... A', N'CGV Cinema', 340, N'Hiển thị', CAST(N'2026-05-05T09:30:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[BaiViet] OFF
GO
SET IDENTITY_INSERT [dbo].[Banner] ON 
GO
INSERT [dbo].[Banner] ([MaBanner], [TieuDe], [HinhAnh], [LinkURL], [ViTri], [TrangThai], [ThuTu], [NgayTao], [Tag], [MoTa], [ThoiGianKetThuc], [VanBanNut]) VALUES (1, N'Ưu đãi Highlands Coffee - Giảm ngay 10%', N'/uploads/general/banner/homepage_top/highlands_banner.jpg', N'/brand/1', N'homepage_top', N'Đang hiển thị', 1, CAST(N'2026-05-01T00:00:00.000' AS DateTime), N'Ẩm thực', N'Ưu đãi cực khủng dành cho tín đồ yêu mến Highlands Coffee.', CAST(N'2026-12-31T23:59:59.000' AS DateTime), N'Xem ngay')
GO
INSERT [dbo].[Banner] ([MaBanner], [TieuDe], [HinhAnh], [LinkURL], [ViTri], [TrangThai], [ThuTu], [NgayTao], [Tag], [MoTa], [ThoiGianKetThuc], [VanBanNut]) VALUES (2, N'Đại tiệc phim hè cùng CGV Cinemas', N'/uploads/general/banner/homepage_top/cgv_banner.jpg', N'/brand/2', N'homepage_top', N'Đang hiển thị', 2, CAST(N'2026-05-02T00:00:00.000' AS DateTime), N'Giải trí', N'Xem phim cực đỉnh, nhận quà cực đã cùng hàng loạt bom tấn mùa hè.', CAST(N'2026-09-30T23:59:59.000' AS DateTime), N'Đặt vé ngay')
GO
INSERT [dbo].[Banner] ([MaBanner], [TieuDe], [HinhAnh], [LinkURL], [ViTri], [TrangThai], [ThuTu], [NgayTao], [Tag], [MoTa], [ThoiGianKetThuc], [VanBanNut]) VALUES (3, N'Đại tiệc trà sữa Phúc Long - Mua 2 tặng 1', N'/uploads/general/banner/homepage_top/phuclong_banner.jpg', N'/brand/3', N'homepage_top', N'Đang hiển thị', 3, CAST(N'2026-05-03T00:00:00.000' AS DateTime), N'Ẩm thực', N'Thưởng thức trà sữa và cà phê Phúc Long đậm vị cùng ưu đãi cực hot.', CAST(N'2026-12-31T23:59:59.000' AS DateTime), N'Khám phá ngay')
GO
INSERT [dbo].[Banner] ([MaBanner], [TieuDe], [HinhAnh], [LinkURL], [ViTri], [TrangThai], [ThuTu], [NgayTao], [Tag], [MoTa], [ThoiGianKetThuc], [VanBanNut]) VALUES (4, N'Siêu deal giữa trang - Giảm tới 50%', N'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?auto=format&fit=crop&q=80&w=1200', N'/search', N'homepage_middle', N'Đang hiển thị', 1, CAST(N'2026-05-04T00:00:00.000' AS DateTime), N'Khuyến mãi', N'Chào hè rực rỡ cùng hàng ngàn deal xịn sò trên khắp cả nước.', CAST(N'2026-12-31T09:59:00.000' AS DateTime), N'Nhận deal ngay')
GO
INSERT [dbo].[Banner] ([MaBanner], [TieuDe], [HinhAnh], [LinkURL], [ViTri], [TrangThai], [ThuTu], [NgayTao], [Tag], [MoTa], [ThoiGianKetThuc], [VanBanNut]) VALUES (5, N'Ẩm thực đường phố - Ăn ngon giá rẻ', N'https://images.unsplash.com/photo-1498837167922-ddd27525d352?auto=format&fit=crop&q=80&w=1200', N'/search?category=1', N'category_page', N'Đang hiển thị', 1, CAST(N'2026-05-05T00:00:00.000' AS DateTime), N'Ẩm thực', N'Ăn uống thả ga không lo về giá cùng voucher giảm giá ẩm thực lên tới 50%.', CAST(N'2026-12-31T23:59:59.000' AS DateTime), N'Tìm hiểu thêm')
GO
INSERT [dbo].[Banner] ([MaBanner], [TieuDe], [HinhAnh], [LinkURL], [ViTri], [TrangThai], [ThuTu], [NgayTao], [Tag], [MoTa], [ThoiGianKetThuc], [VanBanNut]) VALUES (6, N'Bom tấn rạp Việt - CGV & Lotte Cinemas', N'https://images.unsplash.com/photo-1489599849927-2ee91cede3ba?auto=format&fit=crop&q=80&w=1200', N'/search?category=2', N'category_page', N'Đang hiển thị', 1, CAST(N'2026-05-06T00:00:00.000' AS DateTime), N'Giải trí', N'Trải nghiệm bom tấn điện ảnh cực đã cùng hàng loạt quà tặng vé xem phim hot.', CAST(N'2026-12-31T23:59:59.000' AS DateTime), N'Đặt vé ngay')
GO
INSERT [dbo].[Banner] ([MaBanner], [TieuDe], [HinhAnh], [LinkURL], [ViTri], [TrangThai], [ThuTu], [NgayTao], [Tag], [MoTa], [ThoiGianKetThuc], [VanBanNut]) VALUES (7, N'Săn sale sập sàn - Hàng hiệu giá cực chất', N'https://images.unsplash.com/photo-1483985988355-763728e1935b?auto=format&fit=crop&q=80&w=1200', N'/search?category=3', N'category_page', N'Đang hiển thị', 1, CAST(N'2026-05-07T00:00:00.000' AS DateTime), N'Mua sắm', N'Mua sắm thỏa thích các mặt hàng thời trang, mỹ phẩm và công nghệ hàng đầu.', CAST(N'2026-12-31T23:59:59.000' AS DateTime), N'Săn sale ngay')
GO
INSERT [dbo].[Banner] ([MaBanner], [TieuDe], [HinhAnh], [LinkURL], [ViTri], [TrangThai], [ThuTu], [NgayTao], [Tag], [MoTa], [ThoiGianKetThuc], [VanBanNut]) VALUES (8, N'Chăm sóc sức khỏe - Spa & Gym trọn gói', N'https://images.unsplash.com/photo-1540555700478-4be289fbecef?auto=format&fit=crop&q=80&w=1200', N'/search?category=4', N'category_page', N'Đang hiển thị', 1, CAST(N'2026-05-08T00:00:00.000' AS DateTime), N'Dịch vụ', N'Tận hưởng giây phút thư giãn cơ thể và tập luyện nâng cao thể lực trọn gói.', CAST(N'2026-12-31T23:59:59.000' AS DateTime), N'Đăng ký ngay')
GO
SET IDENTITY_INSERT [dbo].[Banner] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiNhanh] ON 
GO
INSERT [dbo].[ChiNhanh] ([MaChiNhanh], [TenChiNhanh], [SDT_CN], [DiaChiChiNhanh], [MaDoiTac]) VALUES (1, N'Highlands Coffee Landmark 81', N'0287300811', N'Tầng trệt, Landmark 81, Bình Thạnh', 1)
GO
INSERT [dbo].[ChiNhanh] ([MaChiNhanh], [TenChiNhanh], [SDT_CN], [DiaChiChiNhanh], [MaDoiTac]) VALUES (2, N'Highlands Coffee Nguyễn Du', N'0287300812', N'85 Nguyễn Du, P. Bến Nghé, Quận 1', 1)
GO
INSERT [dbo].[ChiNhanh] ([MaChiNhanh], [TenChiNhanh], [SDT_CN], [DiaChiChiNhanh], [MaDoiTac]) VALUES (3, N'Highlands Coffee Bến Thành', N'0287300813', N'135 Phan Chu Trinh, P. Bến Thành, Quận 1', 1)
GO
INSERT [dbo].[ChiNhanh] ([MaChiNhanh], [TenChiNhanh], [SDT_CN], [DiaChiChiNhanh], [MaDoiTac]) VALUES (4, N'Highlands Coffee Crescent Mall', N'0287300814', N'Tầng trệt, Crescent Mall, Quận 7', 1)
GO
INSERT [dbo].[ChiNhanh] ([MaChiNhanh], [TenChiNhanh], [SDT_CN], [DiaChiChiNhanh], [MaDoiTac]) VALUES (5, N'CGV Vincom Center Đồng Khởi', N'0283936900', N'Tầng 3, Vincom Center, 72 Lê Thánh Tôn, Quận 1', 2)
GO
INSERT [dbo].[ChiNhanh] ([MaChiNhanh], [TenChiNhanh], [SDT_CN], [DiaChiChiNhanh], [MaDoiTac]) VALUES (6, N'CGV Crescent Mall', N'0285413333', N'Tầng 5, Crescent Mall, Quận 7', 2)
GO
INSERT [dbo].[ChiNhanh] ([MaChiNhanh], [TenChiNhanh], [SDT_CN], [DiaChiChiNhanh], [MaDoiTac]) VALUES (7, N'CGV Aeon Mall Bình Tân', N'0286288773', N'Tầng 3, Aeon Mall Bình Tân, Bình Tân', 2)
GO
INSERT [dbo].[ChiNhanh] ([MaChiNhanh], [TenChiNhanh], [SDT_CN], [DiaChiChiNhanh], [MaDoiTac]) VALUES (8, N'Phúc Long Ngô Đức Kế', N'0283822833', N'63 Ngô Đức Kế, Quận 1', 3)
GO
INSERT [dbo].[ChiNhanh] ([MaChiNhanh], [TenChiNhanh], [SDT_CN], [DiaChiChiNhanh], [MaDoiTac]) VALUES (9, N'Phúc Long Lý Tự Trọng', N'0283825883', N'325 Lý Tự Trọng, Quận 1', 3)
GO
INSERT [dbo].[ChiNhanh] ([MaChiNhanh], [TenChiNhanh], [SDT_CN], [DiaChiChiNhanh], [MaDoiTac]) VALUES (10, N'Phúc Long Landmark 81', N'0283620883', N'Tầng B1, Landmark 81, Bình Thạnh', 3)
GO
INSERT [dbo].[ChiNhanh] ([MaChiNhanh], [TenChiNhanh], [SDT_CN], [DiaChiChiNhanh], [MaDoiTac]) VALUES (11, N'Phúc Long Crescent Mall', N'0285413883', N'Tầng 4, Crescent Mall, Quận 7', 3)
GO
INSERT [dbo].[ChiNhanh] ([MaChiNhanh], [TenChiNhanh], [SDT_CN], [DiaChiChiNhanh], [MaDoiTac]) VALUES (12, N'Chi nhánh Quận 1', N'028 3823 9999', N'76 Lê Lai, Phường Bến Thành, Quận 1, TP.HCM', 4)
GO
INSERT [dbo].[ChiNhanh] ([MaChiNhanh], [TenChiNhanh], [SDT_CN], [DiaChiChiNhanh], [MaDoiTac]) VALUES (13, N'Chi nhánh Quận 5', N'028 3835 1234', N'235 Nguyễn Văn Cừ, Phường 4, Quận 5, TP.HCM', 5)
GO
INSERT [dbo].[ChiNhanh] ([MaChiNhanh], [TenChiNhanh], [SDT_CN], [DiaChiChiNhanh], [MaDoiTac]) VALUES (14, N'Chi nhánh Gò Vấp', N'028 3588 5678', N'Tầng 3 Vincom Plaza, 12 Phan Văn Trị, Phường 7, Quận Gò Vấp, TP.HCM', 5)
GO
INSERT [dbo].[ChiNhanh] ([MaChiNhanh], [TenChiNhanh], [SDT_CN], [DiaChiChiNhanh], [MaDoiTac]) VALUES (15, N'Chi nhánh Quận 11', N'028 7307 6999', N'Tòa nhà Gold View, 346 Bến Vân Đồn, Phường 1, Quận 4, TP.HCM', 6)
GO
INSERT [dbo].[ChiNhanh] ([MaChiNhanh], [TenChiNhanh], [SDT_CN], [DiaChiChiNhanh], [MaDoiTac]) VALUES (16, N'Chi nhánh Quận 5', N'028 7308 3333', N'242 Nguyễn Chí Thanh, Phường 12, Quận 5, TP.HCM', 6)
GO
SET IDENTITY_INSERT [dbo].[ChiNhanh] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietDonHang] ON 
GO
INSERT [dbo].[ChiTietDonHang] ([MaCTDonHang], [MaDonHang], [VoucherID], [SoLuongMua], [DonGia], [ThanhTien]) VALUES (1, 1, 1, 2, CAST(45000.00 AS Decimal(18, 2)), CAST(90000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietDonHang] ([MaCTDonHang], [MaDonHang], [VoucherID], [SoLuongMua], [DonGia], [ThanhTien]) VALUES (2, 2, 2, 1, CAST(59000.00 AS Decimal(18, 2)), CAST(59000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietDonHang] ([MaCTDonHang], [MaDonHang], [VoucherID], [SoLuongMua], [DonGia], [ThanhTien]) VALUES (3, 3, 7, 1, CAST(85000.00 AS Decimal(18, 2)), CAST(85000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietDonHang] ([MaCTDonHang], [MaDonHang], [VoucherID], [SoLuongMua], [DonGia], [ThanhTien]) VALUES (4, 4, 12, 1, CAST(46000.00 AS Decimal(18, 2)), CAST(46000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietDonHang] ([MaCTDonHang], [MaDonHang], [VoucherID], [SoLuongMua], [DonGia], [ThanhTien]) VALUES (5, 5, 14, 1, CAST(92000.00 AS Decimal(18, 2)), CAST(92000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietDonHang] ([MaCTDonHang], [MaDonHang], [VoucherID], [SoLuongMua], [DonGia], [ThanhTien]) VALUES (6, 5, 12, 1, CAST(46000.00 AS Decimal(18, 2)), CAST(46000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietDonHang] ([MaCTDonHang], [MaDonHang], [VoucherID], [SoLuongMua], [DonGia], [ThanhTien]) VALUES (7, 6, 7, 2, CAST(85000.00 AS Decimal(18, 2)), CAST(170000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietDonHang] ([MaCTDonHang], [MaDonHang], [VoucherID], [SoLuongMua], [DonGia], [ThanhTien]) VALUES (8, 7, 12, 1, CAST(46000.00 AS Decimal(18, 2)), CAST(46000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietDonHang] ([MaCTDonHang], [MaDonHang], [VoucherID], [SoLuongMua], [DonGia], [ThanhTien]) VALUES (9, 8, 8, 1, CAST(89000.00 AS Decimal(18, 2)), CAST(89000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietDonHang] ([MaCTDonHang], [MaDonHang], [VoucherID], [SoLuongMua], [DonGia], [ThanhTien]) VALUES (10, 9, 13, 1, CAST(35000.00 AS Decimal(18, 2)), CAST(35000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietDonHang] ([MaCTDonHang], [MaDonHang], [VoucherID], [SoLuongMua], [DonGia], [ThanhTien]) VALUES (11, 10, 13, 2, CAST(35000.00 AS Decimal(18, 2)), CAST(70000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietDonHang] ([MaCTDonHang], [MaDonHang], [VoucherID], [SoLuongMua], [DonGia], [ThanhTien]) VALUES (12, 11, 14, 2, CAST(92000.00 AS Decimal(18, 2)), CAST(184000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietDonHang] ([MaCTDonHang], [MaDonHang], [VoucherID], [SoLuongMua], [DonGia], [ThanhTien]) VALUES (13, 12, 1, 1, CAST(45000.00 AS Decimal(18, 2)), CAST(45000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietDonHang] ([MaCTDonHang], [MaDonHang], [VoucherID], [SoLuongMua], [DonGia], [ThanhTien]) VALUES (14, 13, 1, 1, CAST(45000.00 AS Decimal(18, 2)), CAST(45000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietDonHang] ([MaCTDonHang], [MaDonHang], [VoucherID], [SoLuongMua], [DonGia], [ThanhTien]) VALUES (15, 14, 8, 1, CAST(89000.00 AS Decimal(18, 2)), CAST(89000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietDonHang] ([MaCTDonHang], [MaDonHang], [VoucherID], [SoLuongMua], [DonGia], [ThanhTien]) VALUES (16, 15, 14, 1, CAST(92000.00 AS Decimal(18, 2)), CAST(92000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietDonHang] ([MaCTDonHang], [MaDonHang], [VoucherID], [SoLuongMua], [DonGia], [ThanhTien]) VALUES (17, 16, 1, 1, CAST(45000.00 AS Decimal(18, 2)), CAST(45000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietDonHang] ([MaCTDonHang], [MaDonHang], [VoucherID], [SoLuongMua], [DonGia], [ThanhTien]) VALUES (18, 17, 1, 1, CAST(45000.00 AS Decimal(18, 2)), CAST(45000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietDonHang] ([MaCTDonHang], [MaDonHang], [VoucherID], [SoLuongMua], [DonGia], [ThanhTien]) VALUES (19, 17, 1, 1, CAST(45000.00 AS Decimal(18, 2)), CAST(45000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietDonHang] ([MaCTDonHang], [MaDonHang], [VoucherID], [SoLuongMua], [DonGia], [ThanhTien]) VALUES (20, 18, 7, 1, CAST(85000.00 AS Decimal(18, 2)), CAST(85000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietDonHang] ([MaCTDonHang], [MaDonHang], [VoucherID], [SoLuongMua], [DonGia], [ThanhTien]) VALUES (21, 18, 12, 2, CAST(46000.00 AS Decimal(18, 2)), CAST(92000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietDonHang] ([MaCTDonHang], [MaDonHang], [VoucherID], [SoLuongMua], [DonGia], [ThanhTien]) VALUES (22, 19, 17, 1, CAST(800000.00 AS Decimal(18, 2)), CAST(800000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietDonHang] ([MaCTDonHang], [MaDonHang], [VoucherID], [SoLuongMua], [DonGia], [ThanhTien]) VALUES (23, 20, 7, 3, CAST(85000.00 AS Decimal(18, 2)), CAST(255000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietDonHang] ([MaCTDonHang], [MaDonHang], [VoucherID], [SoLuongMua], [DonGia], [ThanhTien]) VALUES (24, 21, 18, 1, CAST(499000.00 AS Decimal(18, 2)), CAST(499000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietDonHang] ([MaCTDonHang], [MaDonHang], [VoucherID], [SoLuongMua], [DonGia], [ThanhTien]) VALUES (25, 22, 18, 1, CAST(499000.00 AS Decimal(18, 2)), CAST(499000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietDonHang] ([MaCTDonHang], [MaDonHang], [VoucherID], [SoLuongMua], [DonGia], [ThanhTien]) VALUES (26, 23, 21, 2, CAST(499000.00 AS Decimal(18, 2)), CAST(998000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietDonHang] ([MaCTDonHang], [MaDonHang], [VoucherID], [SoLuongMua], [DonGia], [ThanhTien]) VALUES (27, 24, 1, 1, CAST(45000.00 AS Decimal(18, 2)), CAST(45000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietDonHang] ([MaCTDonHang], [MaDonHang], [VoucherID], [SoLuongMua], [DonGia], [ThanhTien]) VALUES (28, 25, 1, 1, CAST(45000.00 AS Decimal(18, 2)), CAST(45000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietDonHang] ([MaCTDonHang], [MaDonHang], [VoucherID], [SoLuongMua], [DonGia], [ThanhTien]) VALUES (29, 26, 1, 1, CAST(45000.00 AS Decimal(18, 2)), CAST(45000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietDonHang] ([MaCTDonHang], [MaDonHang], [VoucherID], [SoLuongMua], [DonGia], [ThanhTien]) VALUES (30, 27, 1, 1, CAST(45000.00 AS Decimal(18, 2)), CAST(45000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietDonHang] ([MaCTDonHang], [MaDonHang], [VoucherID], [SoLuongMua], [DonGia], [ThanhTien]) VALUES (31, 28, 1, 1, CAST(45000.00 AS Decimal(18, 2)), CAST(45000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietDonHang] ([MaCTDonHang], [MaDonHang], [VoucherID], [SoLuongMua], [DonGia], [ThanhTien]) VALUES (32, 29, 7, 6, CAST(85000.00 AS Decimal(18, 2)), CAST(510000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietDonHang] ([MaCTDonHang], [MaDonHang], [VoucherID], [SoLuongMua], [DonGia], [ThanhTien]) VALUES (33, 29, 8, 4, CAST(89000.00 AS Decimal(18, 2)), CAST(356000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietDonHang] ([MaCTDonHang], [MaDonHang], [VoucherID], [SoLuongMua], [DonGia], [ThanhTien]) VALUES (34, 29, 13, 4, CAST(35000.00 AS Decimal(18, 2)), CAST(140000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietDonHang] ([MaCTDonHang], [MaDonHang], [VoucherID], [SoLuongMua], [DonGia], [ThanhTien]) VALUES (35, 30, 7, 6, CAST(85000.00 AS Decimal(18, 2)), CAST(510000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietDonHang] ([MaCTDonHang], [MaDonHang], [VoucherID], [SoLuongMua], [DonGia], [ThanhTien]) VALUES (36, 30, 8, 4, CAST(89000.00 AS Decimal(18, 2)), CAST(356000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietDonHang] ([MaCTDonHang], [MaDonHang], [VoucherID], [SoLuongMua], [DonGia], [ThanhTien]) VALUES (37, 30, 13, 4, CAST(35000.00 AS Decimal(18, 2)), CAST(140000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietDonHang] ([MaCTDonHang], [MaDonHang], [VoucherID], [SoLuongMua], [DonGia], [ThanhTien]) VALUES (38, 31, 7, 6, CAST(85000.00 AS Decimal(18, 2)), CAST(510000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietDonHang] ([MaCTDonHang], [MaDonHang], [VoucherID], [SoLuongMua], [DonGia], [ThanhTien]) VALUES (39, 31, 8, 4, CAST(89000.00 AS Decimal(18, 2)), CAST(356000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietDonHang] ([MaCTDonHang], [MaDonHang], [VoucherID], [SoLuongMua], [DonGia], [ThanhTien]) VALUES (40, 31, 13, 4, CAST(35000.00 AS Decimal(18, 2)), CAST(140000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietDonHang] ([MaCTDonHang], [MaDonHang], [VoucherID], [SoLuongMua], [DonGia], [ThanhTien]) VALUES (41, 32, 7, 6, CAST(85000.00 AS Decimal(18, 2)), CAST(510000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietDonHang] ([MaCTDonHang], [MaDonHang], [VoucherID], [SoLuongMua], [DonGia], [ThanhTien]) VALUES (42, 32, 8, 4, CAST(89000.00 AS Decimal(18, 2)), CAST(356000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietDonHang] ([MaCTDonHang], [MaDonHang], [VoucherID], [SoLuongMua], [DonGia], [ThanhTien]) VALUES (43, 32, 13, 4, CAST(35000.00 AS Decimal(18, 2)), CAST(140000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[ChiTietDonHang] ([MaCTDonHang], [MaDonHang], [VoucherID], [SoLuongMua], [DonGia], [ThanhTien]) VALUES (44, 33, 1, 8, CAST(45000.00 AS Decimal(18, 2)), CAST(360000.00 AS Decimal(18, 2)))
GO
SET IDENTITY_INSERT [dbo].[ChiTietDonHang] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietGioHang] ON 
GO
INSERT [dbo].[ChiTietGioHang] ([MaCTGioHang], [MaGioHang], [VoucherID], [SoLuong], [ThoiGianThem]) VALUES (3, 2, 1, 1, CAST(N'2026-06-10T06:04:25.357' AS DateTime))
GO
INSERT [dbo].[ChiTietGioHang] ([MaCTGioHang], [MaGioHang], [VoucherID], [SoLuong], [ThoiGianThem]) VALUES (8, 3, 3, 3, CAST(N'2026-06-10T10:27:28.913' AS DateTime))
GO
INSERT [dbo].[ChiTietGioHang] ([MaCTGioHang], [MaGioHang], [VoucherID], [SoLuong], [ThoiGianThem]) VALUES (9, 3, 12, 4, CAST(N'2026-06-10T10:27:38.843' AS DateTime))
GO
INSERT [dbo].[ChiTietGioHang] ([MaCTGioHang], [MaGioHang], [VoucherID], [SoLuong], [ThoiGianThem]) VALUES (10, 3, 7, 3, CAST(N'2026-06-10T10:29:52.783' AS DateTime))
GO
INSERT [dbo].[ChiTietGioHang] ([MaCTGioHang], [MaGioHang], [VoucherID], [SoLuong], [ThoiGianThem]) VALUES (14, 2, 2, 1, CAST(N'2026-06-10T11:01:57.680' AS DateTime))
GO
INSERT [dbo].[ChiTietGioHang] ([MaCTGioHang], [MaGioHang], [VoucherID], [SoLuong], [ThoiGianThem]) VALUES (17, 4, 1, 1, CAST(N'2026-06-10T12:30:56.587' AS DateTime))
GO
INSERT [dbo].[ChiTietGioHang] ([MaCTGioHang], [MaGioHang], [VoucherID], [SoLuong], [ThoiGianThem]) VALUES (21, 1, 1, 1, CAST(N'2026-06-10T16:44:08.003' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[ChiTietGioHang] OFF
GO
SET IDENTITY_INSERT [dbo].[DanhGia] ON 
GO
INSERT [dbo].[DanhGia] ([MaDanhGia], [VoucherID], [IDTaiKhoan], [DiemDanhGia], [NoiDung], [NgayDanhGia], [PhanHoiXuLy]) VALUES (1, 1, 14, 5, N'Cà phê Highlands ngon đậm đà, voucher mua rất hời, quét mã cực nhanh tại Landmark 81!', CAST(N'2026-05-13T10:00:00.000' AS DateTime), N'Cảm ơn bạn đã ủng hộ Highlands Coffee! Rất hân hạnh được phục vụ bạn.')
GO
INSERT [dbo].[DanhGia] ([MaDanhGia], [VoucherID], [IDTaiKhoan], [DiemDanhGia], [NoiDung], [NgayDanhGia], [PhanHoiXuLy]) VALUES (2, 7, 15, 4, N'CGV rạp sạch sẽ, phục vụ tốt. Tuy nhiên voucher không áp dụng được cho phòng chiếu IMAX.', CAST(N'2026-05-15T21:00:00.000' AS DateTime), N'CGV xin chào! Dạ voucher vé 2D chuẩn chỉ áp dụng cho phòng chiếu 2D thường ạ. Mong bạn thông cảm.')
GO
INSERT [dbo].[DanhGia] ([MaDanhGia], [VoucherID], [IDTaiKhoan], [DiemDanhGia], [NoiDung], [NgayDanhGia], [PhanHoiXuLy]) VALUES (3, 13, 16, 5, N'Trà đào sữa Phúc Long thì không có gì để chê rồi, vị đậm đà thơm ngậy, phục vụ chu đáo!', CAST(N'2026-05-14T15:00:00.000' AS DateTime), N'Phúc Long cám ơn quý khách đã tin dùng sản phẩm. Chúc quý khách một ngày tốt lành!')
GO
INSERT [dbo].[DanhGia] ([MaDanhGia], [VoucherID], [IDTaiKhoan], [DiemDanhGia], [NoiDung], [NgayDanhGia], [PhanHoiXuLy]) VALUES (4, 12, 15, 3, N'Nước uống ngon nhưng chi nhánh Crescent Mall hôm nay đông khách quá chờ hơi lâu.', CAST(N'2026-05-17T17:30:00.000' AS DateTime), N'Phúc Long chân thành xin lỗi vì sự bất tiện này. Chúng tôi sẽ cố gắng tăng tốc độ phục vụ vào giờ cao điểm.')
GO
SET IDENTITY_INSERT [dbo].[DanhGia] OFF
GO
SET IDENTITY_INSERT [dbo].[DanhMuc] ON 
GO
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc], [MoTa]) VALUES (1, N'Ẩm thực', N'Ăn uống, Cà phê, Trà sữa, Nhà hàng')
GO
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc], [MoTa]) VALUES (2, N'Giải trí', N'Rạp chiếu phim, Vui chơi, Sự kiện')
GO
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc], [MoTa]) VALUES (3, N'Mua sắm', N'Thời trang, Mỹ phẩm, Siêu thị')
GO
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc], [MoTa]) VALUES (4, N'Dịch vụ', N'Spa, Làm đẹp, Giáo dục, Sức khỏe')
GO
SET IDENTITY_INSERT [dbo].[DanhMuc] OFF
GO
SET IDENTITY_INSERT [dbo].[DoiTac] ON 
GO
INSERT [dbo].[DoiTac] ([MaDoiTac], [TenDoanhNghiep], [MaSoThue], [CaNhanDaiDien], [LinhVucKinhDoanh], [AvatarUrl], [MoTa], [NgayThamGia], [EmailLienHe], [SDTLienHe], [GioMoCua], [GioDongCua], [TrangThai], [DiaChiTruSo], [EmailDaiDien], [SDTDaiDien], [Website]) VALUES (1, N'Highlands Coffee', N'0312345678', N'Lê Hoàng Diệp', N'F&B', N'/uploads/avatar/partner/partner_1_highlands-coffee.jpg', N'Thương hiệu cà phê hàng đầu Việt Nam, mang hương vị truyền thống đến mọi người.', CAST(N'2026-06-10T06:04:25.270' AS DateTime), N'highlands@voucherhub.com', N'0281900125', CAST(N'07:00:00' AS Time), CAST(N'23:00:00' AS Time), N'Hoạt động', N'135/37/50 Nguyễn Hữu Cảnh, P. 22, Q. Bình Thạnh, TP. Hồ Chí Minh', N'hoangdieple@highlands.com.vn', N'0901234567', N'https://highlandscoffee.com.vn')
GO
INSERT [dbo].[DoiTac] ([MaDoiTac], [TenDoanhNghiep], [MaSoThue], [CaNhanDaiDien], [LinhVucKinhDoanh], [AvatarUrl], [MoTa], [NgayThamGia], [EmailLienHe], [SDTLienHe], [GioMoCua], [GioDongCua], [TrangThai], [DiaChiTruSo], [EmailDaiDien], [SDTDaiDien], [Website]) VALUES (2, N'CGV Cinemas', N'0387654321', N'Sim Joon Woo', N'Giải trí', N'/uploads/avatar/partner/partner_2_cgv-cinemas.jpg', N'Hệ thống rạp chiếu phim hiện đại lớn nhất Việt Nam.', CAST(N'2026-06-10T06:04:25.270' AS DateTime), N'cgv@voucherhub.com', N'0281900601', CAST(N'08:30:00' AS Time), CAST(N'23:30:00' AS Time), N'Hoạt động', N'Tầng 5, Landmark 81, P. 22, Q. Bình Thạnh, TP. Hồ Chí Minh', N'joonwoo.sim@cgv.vn', N'0912345678', N'https://cgv.vn')
GO
INSERT [dbo].[DoiTac] ([MaDoiTac], [TenDoanhNghiep], [MaSoThue], [CaNhanDaiDien], [LinhVucKinhDoanh], [AvatarUrl], [MoTa], [NgayThamGia], [EmailLienHe], [SDTLienHe], [GioMoCua], [GioDongCua], [TrangThai], [DiaChiTruSo], [EmailDaiDien], [SDTDaiDien], [Website]) VALUES (3, N'Phúc Long', N'0399887766', N'Lâm Chấn Huy', N'F&B', N'/uploads/avatar/partner/partner_3_phuc-long.jpg', N'Thương hiệu trà sữa và cà phê chất lượng cao được giới trẻ vô cùng ưa chuộng.', CAST(N'2026-06-10T06:04:25.270' AS DateTime), N'phuclong@voucherhub.com', N'0281800688', CAST(N'08:00:00' AS Time), CAST(N'22:30:00' AS Time), N'Hoạt động', N'42/24 Lý Tự Trọng, P. Bến Nghé, Quận 1, TP. Hồ Chí Minh', N'chanhuy.lam@phuclong.com.vn', N'0923456789', N'https://phuclong.com.vn')
GO
INSERT [dbo].[DoiTac] ([MaDoiTac], [TenDoanhNghiep], [MaSoThue], [CaNhanDaiDien], [LinhVucKinhDoanh], [AvatarUrl], [MoTa], [NgayThamGia], [EmailLienHe], [SDTLienHe], [GioMoCua], [GioDongCua], [TrangThai], [DiaChiTruSo], [EmailDaiDien], [SDTDaiDien], [Website]) VALUES (4, N'CtyATest', N'0345673344', N'Nguyễn Văn Ban', N'Food & Beverage', NULL, N'Chưa có mô tả', CAST(N'2026-06-10T07:07:28.753' AS DateTime), N'ctyatest@gmail.com', N'0111222333', CAST(N'08:00:00' AS Time), CAST(N'22:00:00' AS Time), N'Hoạt động', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[DoiTac] ([MaDoiTac], [TenDoanhNghiep], [MaSoThue], [CaNhanDaiDien], [LinhVucKinhDoanh], [AvatarUrl], [MoTa], [NgayThamGia], [EmailLienHe], [SDTLienHe], [GioMoCua], [GioDongCua], [TrangThai], [DiaChiTruSo], [EmailDaiDien], [SDTDaiDien], [Website]) VALUES (5, N'CtyBTest', N'0123457890', N'Nguyễn Thị E', N'Food & Beverage', NULL, N'Chưa có mô tả', CAST(N'2026-06-10T10:08:58.717' AS DateTime), N'ctybtest@gmail.com', N'0111222334', CAST(N'08:00:00' AS Time), CAST(N'22:00:00' AS Time), N'Hoạt động', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[DoiTac] ([MaDoiTac], [TenDoanhNghiep], [MaSoThue], [CaNhanDaiDien], [LinhVucKinhDoanh], [AvatarUrl], [MoTa], [NgayThamGia], [EmailLienHe], [SDTLienHe], [GioMoCua], [GioDongCua], [TrangThai], [DiaChiTruSo], [EmailDaiDien], [SDTDaiDien], [Website]) VALUES (6, N'CtyBTest', N'0123457890', N'Nguyễn Thị E', N'Food & Beverage', NULL, N'Chưa có mô tả', CAST(N'2026-06-10T10:57:13.683' AS DateTime), N'ctybtest@gmail.com', N'0111222334', CAST(N'08:00:00' AS Time), CAST(N'22:00:00' AS Time), N'Hoạt động', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[DoiTac] ([MaDoiTac], [TenDoanhNghiep], [MaSoThue], [CaNhanDaiDien], [LinhVucKinhDoanh], [AvatarUrl], [MoTa], [NgayThamGia], [EmailLienHe], [SDTLienHe], [GioMoCua], [GioDongCua], [TrangThai], [DiaChiTruSo], [EmailDaiDien], [SDTDaiDien], [Website]) VALUES (7, N'Lockheed Martin', N'1234555555', N'James D. Taiclet', N'Other', NULL, N'Chua có mô t?', CAST(N'2026-06-10T11:37:55.997' AS DateTime), N'LockheedMartin@gmail.com', N'0123456789', CAST(N'08:00:00' AS Time), CAST(N'22:00:00' AS Time), N'Từ chối', NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[DoiTac] OFF
GO
SET IDENTITY_INSERT [dbo].[DonHang] ON 
GO
INSERT [dbo].[DonHang] ([MaDonHang], [IDTaiKhoan], [ThoiGianThanhToan], [TongTien], [PhuongThucThanhToan], [TrangThaiDonHang], [TrangThaiThanhToan]) VALUES (1, 14, CAST(N'2026-05-10T10:00:00.000' AS DateTime), CAST(90000.00 AS Decimal(18, 2)), N'Thẻ quốc tế', N'Hoàn tất', N'Đã thanh toán')
GO
INSERT [dbo].[DonHang] ([MaDonHang], [IDTaiKhoan], [ThoiGianThanhToan], [TongTien], [PhuongThucThanhToan], [TrangThaiDonHang], [TrangThaiThanhToan]) VALUES (2, 14, CAST(N'2026-05-15T14:30:00.000' AS DateTime), CAST(59000.00 AS Decimal(18, 2)), N'Ví điện tử', N'Hoàn tất', N'Đã thanh toán')
GO
INSERT [dbo].[DonHang] ([MaDonHang], [IDTaiKhoan], [ThoiGianThanhToan], [TongTien], [PhuongThucThanhToan], [TrangThaiDonHang], [TrangThaiThanhToan]) VALUES (3, 14, CAST(N'2026-05-15T10:00:00.000' AS DateTime), CAST(85000.00 AS Decimal(18, 2)), N'Ví điện tử', N'Hoàn tất', N'Đã thanh toán')
GO
INSERT [dbo].[DonHang] ([MaDonHang], [IDTaiKhoan], [ThoiGianThanhToan], [TongTien], [PhuongThucThanhToan], [TrangThaiDonHang], [TrangThaiThanhToan]) VALUES (4, 14, CAST(N'2026-05-15T11:00:00.000' AS DateTime), CAST(46000.00 AS Decimal(18, 2)), N'Thẻ ATM nội địa', N'Hoàn tất', N'Đã thanh toán')
GO
INSERT [dbo].[DonHang] ([MaDonHang], [IDTaiKhoan], [ThoiGianThanhToan], [TongTien], [PhuongThucThanhToan], [TrangThaiDonHang], [TrangThaiThanhToan]) VALUES (5, 14, CAST(N'2026-05-20T09:15:00.000' AS DateTime), CAST(138000.00 AS Decimal(18, 2)), N'Ví điện tử', N'Đã hủy', N'Đã hoàn tiền')
GO
INSERT [dbo].[DonHang] ([MaDonHang], [IDTaiKhoan], [ThoiGianThanhToan], [TongTien], [PhuongThucThanhToan], [TrangThaiDonHang], [TrangThaiThanhToan]) VALUES (6, 15, CAST(N'2026-05-11T11:20:00.000' AS DateTime), CAST(170000.00 AS Decimal(18, 2)), N'Thẻ quốc tế', N'Hoàn tất', N'Đã thanh toán')
GO
INSERT [dbo].[DonHang] ([MaDonHang], [IDTaiKhoan], [ThoiGianThanhToan], [TongTien], [PhuongThucThanhToan], [TrangThaiDonHang], [TrangThaiThanhToan]) VALUES (7, 15, CAST(N'2026-05-16T16:40:00.000' AS DateTime), CAST(46000.00 AS Decimal(18, 2)), N'Ví điện tử', N'Hoàn tất', N'Đã thanh toán')
GO
INSERT [dbo].[DonHang] ([MaDonHang], [IDTaiKhoan], [ThoiGianThanhToan], [TongTien], [PhuongThucThanhToan], [TrangThaiDonHang], [TrangThaiThanhToan]) VALUES (8, 15, CAST(N'2026-05-18T16:00:00.000' AS DateTime), CAST(89000.00 AS Decimal(18, 2)), N'Ví điện tử', N'Hoàn tất', N'Đã thanh toán')
GO
INSERT [dbo].[DonHang] ([MaDonHang], [IDTaiKhoan], [ThoiGianThanhToan], [TongTien], [PhuongThucThanhToan], [TrangThaiDonHang], [TrangThaiThanhToan]) VALUES (9, 15, CAST(N'2026-05-16T14:20:00.000' AS DateTime), CAST(35000.00 AS Decimal(18, 2)), N'Ví điện tử', N'Hoàn tất', N'Đã thanh toán')
GO
INSERT [dbo].[DonHang] ([MaDonHang], [IDTaiKhoan], [ThoiGianThanhToan], [TongTien], [PhuongThucThanhToan], [TrangThaiDonHang], [TrangThaiThanhToan]) VALUES (10, 16, CAST(N'2026-05-12T15:10:00.000' AS DateTime), CAST(70000.00 AS Decimal(18, 2)), N'Ví điện tử', N'Hoàn tất', N'Đã thanh toán')
GO
INSERT [dbo].[DonHang] ([MaDonHang], [IDTaiKhoan], [ThoiGianThanhToan], [TongTien], [PhuongThucThanhToan], [TrangThaiDonHang], [TrangThaiThanhToan]) VALUES (11, 16, CAST(N'2026-05-18T10:05:00.000' AS DateTime), CAST(184000.00 AS Decimal(18, 2)), N'Thẻ quốc tế', N'Hoàn tất', N'Đã thanh toán')
GO
INSERT [dbo].[DonHang] ([MaDonHang], [IDTaiKhoan], [ThoiGianThanhToan], [TongTien], [PhuongThucThanhToan], [TrangThaiDonHang], [TrangThaiThanhToan]) VALUES (12, 16, CAST(N'2026-05-20T14:30:00.000' AS DateTime), CAST(45000.00 AS Decimal(18, 2)), N'Ví điện tử', N'Hoàn tất', N'Đã thanh toán')
GO
INSERT [dbo].[DonHang] ([MaDonHang], [IDTaiKhoan], [ThoiGianThanhToan], [TongTien], [PhuongThucThanhToan], [TrangThaiDonHang], [TrangThaiThanhToan]) VALUES (13, 17, CAST(N'2026-05-14T09:00:00.000' AS DateTime), CAST(45000.00 AS Decimal(18, 2)), N'Thẻ quốc tế', N'Hoàn tất', N'Đã thanh toán')
GO
INSERT [dbo].[DonHang] ([MaDonHang], [IDTaiKhoan], [ThoiGianThanhToan], [TongTien], [PhuongThucThanhToan], [TrangThaiDonHang], [TrangThaiThanhToan]) VALUES (14, 17, CAST(N'2026-05-20T16:45:00.000' AS DateTime), CAST(89000.00 AS Decimal(18, 2)), N'Thẻ ATM nội địa', N'Hoàn tất', N'Đã thanh toán')
GO
INSERT [dbo].[DonHang] ([MaDonHang], [IDTaiKhoan], [ThoiGianThanhToan], [TongTien], [PhuongThucThanhToan], [TrangThaiDonHang], [TrangThaiThanhToan]) VALUES (15, 17, CAST(N'2026-05-25T11:30:00.000' AS DateTime), CAST(92000.00 AS Decimal(18, 2)), N'Ví điện tử', N'Đã hủy', N'Đã hoàn tiền')
GO
INSERT [dbo].[DonHang] ([MaDonHang], [IDTaiKhoan], [ThoiGianThanhToan], [TongTien], [PhuongThucThanhToan], [TrangThaiDonHang], [TrangThaiThanhToan]) VALUES (16, 18, CAST(N'2026-05-28T10:00:00.000' AS DateTime), CAST(45000.00 AS Decimal(18, 2)), N'Ví điện tử', N'Hoàn tất', N'Đã thanh toán')
GO
INSERT [dbo].[DonHang] ([MaDonHang], [IDTaiKhoan], [ThoiGianThanhToan], [TongTien], [PhuongThucThanhToan], [TrangThaiDonHang], [TrangThaiThanhToan]) VALUES (17, 18, CAST(N'2026-05-01T14:00:00.000' AS DateTime), CAST(90000.00 AS Decimal(18, 2)), N'Thẻ quốc tế', N'Hoàn tất', N'Đã thanh toán')
GO
INSERT [dbo].[DonHang] ([MaDonHang], [IDTaiKhoan], [ThoiGianThanhToan], [TongTien], [PhuongThucThanhToan], [TrangThaiDonHang], [TrangThaiThanhToan]) VALUES (18, 14, CAST(N'2026-06-10T07:10:10.017' AS DateTime), CAST(177000.00 AS Decimal(18, 2)), N'EWALLET', N'Hoàn tất', N'Đã thanh toán')
GO
INSERT [dbo].[DonHang] ([MaDonHang], [IDTaiKhoan], [ThoiGianThanhToan], [TongTien], [PhuongThucThanhToan], [TrangThaiDonHang], [TrangThaiThanhToan]) VALUES (19, 14, CAST(N'2026-06-10T09:18:43.807' AS DateTime), CAST(800000.00 AS Decimal(18, 2)), N'CARD', N'Hoàn tất', N'Đã thanh toán')
GO
INSERT [dbo].[DonHang] ([MaDonHang], [IDTaiKhoan], [ThoiGianThanhToan], [TongTien], [PhuongThucThanhToan], [TrangThaiDonHang], [TrangThaiThanhToan]) VALUES (20, 16, CAST(N'2026-06-10T09:36:35.077' AS DateTime), CAST(255000.00 AS Decimal(18, 2)), N'CARD', N'Hoàn tất', N'Đã thanh toán')
GO
INSERT [dbo].[DonHang] ([MaDonHang], [IDTaiKhoan], [ThoiGianThanhToan], [TongTien], [PhuongThucThanhToan], [TrangThaiDonHang], [TrangThaiThanhToan]) VALUES (21, 14, CAST(N'2026-06-10T10:31:13.863' AS DateTime), CAST(499000.00 AS Decimal(18, 2)), N'CARD', N'Hoàn tất', N'Đã thanh toán')
GO
INSERT [dbo].[DonHang] ([MaDonHang], [IDTaiKhoan], [ThoiGianThanhToan], [TongTien], [PhuongThucThanhToan], [TrangThaiDonHang], [TrangThaiThanhToan]) VALUES (22, 14, CAST(N'2026-06-10T10:33:25.010' AS DateTime), CAST(499000.00 AS Decimal(18, 2)), N'CARD', N'Hoàn tất', N'Đã thanh toán')
GO
INSERT [dbo].[DonHang] ([MaDonHang], [IDTaiKhoan], [ThoiGianThanhToan], [TongTien], [PhuongThucThanhToan], [TrangThaiDonHang], [TrangThaiThanhToan]) VALUES (23, 14, CAST(N'2026-06-10T11:11:01.120' AS DateTime), CAST(998000.00 AS Decimal(18, 2)), N'CARD', N'Hoàn tất', N'Đã thanh toán')
GO
INSERT [dbo].[DonHang] ([MaDonHang], [IDTaiKhoan], [ThoiGianThanhToan], [TongTien], [PhuongThucThanhToan], [TrangThaiDonHang], [TrangThaiThanhToan]) VALUES (24, 1, NULL, CAST(45000.00 AS Decimal(18, 2)), N'CARD', N'Đã hủy', N'Thất bại')
GO
INSERT [dbo].[DonHang] ([MaDonHang], [IDTaiKhoan], [ThoiGianThanhToan], [TongTien], [PhuongThucThanhToan], [TrangThaiDonHang], [TrangThaiThanhToan]) VALUES (25, 29, NULL, CAST(45000.00 AS Decimal(18, 2)), N'CARD', N'Đã hủy', N'Thất bại')
GO
INSERT [dbo].[DonHang] ([MaDonHang], [IDTaiKhoan], [ThoiGianThanhToan], [TongTien], [PhuongThucThanhToan], [TrangThaiDonHang], [TrangThaiThanhToan]) VALUES (26, 29, NULL, CAST(45000.00 AS Decimal(18, 2)), N'CARD', N'Chờ xử lý', N'Chưa thanh toán')
GO
INSERT [dbo].[DonHang] ([MaDonHang], [IDTaiKhoan], [ThoiGianThanhToan], [TongTien], [PhuongThucThanhToan], [TrangThaiDonHang], [TrangThaiThanhToan]) VALUES (27, 29, NULL, CAST(45000.00 AS Decimal(18, 2)), N'CARD', N'Chờ xử lý', N'Chưa thanh toán')
GO
INSERT [dbo].[DonHang] ([MaDonHang], [IDTaiKhoan], [ThoiGianThanhToan], [TongTien], [PhuongThucThanhToan], [TrangThaiDonHang], [TrangThaiThanhToan]) VALUES (28, 29, NULL, CAST(45000.00 AS Decimal(18, 2)), N'CARD', N'Chờ xử lý', N'Chưa thanh toán')
GO
INSERT [dbo].[DonHang] ([MaDonHang], [IDTaiKhoan], [ThoiGianThanhToan], [TongTien], [PhuongThucThanhToan], [TrangThaiDonHang], [TrangThaiThanhToan]) VALUES (29, 30, NULL, CAST(1006000.00 AS Decimal(18, 2)), N'CARD', N'Đã hủy', N'Thất bại')
GO
INSERT [dbo].[DonHang] ([MaDonHang], [IDTaiKhoan], [ThoiGianThanhToan], [TongTien], [PhuongThucThanhToan], [TrangThaiDonHang], [TrangThaiThanhToan]) VALUES (30, 30, NULL, CAST(1006000.00 AS Decimal(18, 2)), N'CARD', N'Đã hủy', N'Chưa thanh toán')
GO
INSERT [dbo].[DonHang] ([MaDonHang], [IDTaiKhoan], [ThoiGianThanhToan], [TongTien], [PhuongThucThanhToan], [TrangThaiDonHang], [TrangThaiThanhToan]) VALUES (31, 30, NULL, CAST(1006000.00 AS Decimal(18, 2)), N'CARD', N'Đã hủy', N'Thất bại')
GO
INSERT [dbo].[DonHang] ([MaDonHang], [IDTaiKhoan], [ThoiGianThanhToan], [TongTien], [PhuongThucThanhToan], [TrangThaiDonHang], [TrangThaiThanhToan]) VALUES (32, 30, CAST(N'2026-06-10T14:48:08.373' AS DateTime), CAST(1006000.00 AS Decimal(18, 2)), N'CARD', N'Đã hủy', N'Đã hoàn tiền')
GO
INSERT [dbo].[DonHang] ([MaDonHang], [IDTaiKhoan], [ThoiGianThanhToan], [TongTien], [PhuongThucThanhToan], [TrangThaiDonHang], [TrangThaiThanhToan]) VALUES (33, 14, CAST(N'2026-06-10T16:17:42.057' AS DateTime), CAST(360000.00 AS Decimal(18, 2)), N'BANK', N'Hoàn tất', N'Đã thanh toán')
GO
SET IDENTITY_INSERT [dbo].[DonHang] OFF
GO
SET IDENTITY_INSERT [dbo].[FAQ] ON 
GO
INSERT [dbo].[FAQ] ([MaFAQ], [CauHoi], [TraLoi], [DanhMucFAQ], [ThuTu], [TrangThai]) VALUES (1, N'Làm thế nào để tôi sử dụng voucher đã mua?', N'Bạn chỉ cần truy cập vào mục "Voucher của tôi", chọn voucher muốn sử dụng và xuất trình mã code (hoặc QR Code) cho nhân viên thu ngân quét khi thanh toán tại cửa hàng.', N'Hướng dẫn sử dụng', 1, N'Hiển thị')
GO
INSERT [dbo].[FAQ] ([MaFAQ], [CauHoi], [TraLoi], [DanhMucFAQ], [ThuTu], [TrangThai]) VALUES (2, N'Tôi có thể hoàn tiền voucher sau khi đã mua thành công không?', N'Tùy thuộc vào chính sách hoàn tiền của từng loại voucher cụ thể (được hiển thị chi tiết ở phần thông tin voucher). Đối với một số voucher F&B hoặc vé phim, chính sách thường là không đổi trả sau khi giao dịch hoàn tất.', N'Chính sách', 2, N'Hiển thị')
GO
INSERT [dbo].[FAQ] ([MaFAQ], [CauHoi], [TraLoi], [DanhMucFAQ], [ThuTu], [TrangThai]) VALUES (3, N'Voucher có thể áp dụng đồng thời với các khuyến mãi khác của cửa hàng không?', N'Hầu hết các e-voucher không áp dụng đồng thời với các chương trình khuyến mãi khác tại cửa hàng trừ khi có quy định khác trong phần điều kiện sử dụng của voucher.', N'Điều khoản chung', 3, N'Hiển thị')
GO
SET IDENTITY_INSERT [dbo].[FAQ] OFF
GO
SET IDENTITY_INSERT [dbo].[GioHang] ON 
GO
INSERT [dbo].[GioHang] ([MaGioHang], [IDTaiKhoan], [ThoiGianTao]) VALUES (1, 14, CAST(N'2026-06-01T09:00:00.000' AS DateTime))
GO
INSERT [dbo].[GioHang] ([MaGioHang], [IDTaiKhoan], [ThoiGianTao]) VALUES (2, 15, CAST(N'2026-06-02T10:30:00.000' AS DateTime))
GO
INSERT [dbo].[GioHang] ([MaGioHang], [IDTaiKhoan], [ThoiGianTao]) VALUES (3, 16, CAST(N'2026-06-10T09:29:31.227' AS DateTime))
GO
INSERT [dbo].[GioHang] ([MaGioHang], [IDTaiKhoan], [ThoiGianTao]) VALUES (4, 29, CAST(N'2026-06-10T11:55:59.467' AS DateTime))
GO
INSERT [dbo].[GioHang] ([MaGioHang], [IDTaiKhoan], [ThoiGianTao]) VALUES (5, 17, CAST(N'2026-06-10T13:41:59.450' AS DateTime))
GO
INSERT [dbo].[GioHang] ([MaGioHang], [IDTaiKhoan], [ThoiGianTao]) VALUES (6, 30, CAST(N'2026-06-10T14:29:34.053' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[GioHang] OFF
GO
INSERT [dbo].[KhachHang] ([SDT_KH], [IDTaiKhoan], [NgaySinh], [GioiTinh], [DiaChiKhachHang], [AvatarUrl]) VALUES (N'0123 456 789', 29, CAST(N'2013-02-10' AS Date), N'Nam', N'Đường Mạc Đĩnh Chi, KP Tân Hòa, Phường Đông Hòa', NULL)
GO
INSERT [dbo].[KhachHang] ([SDT_KH], [IDTaiKhoan], [NgaySinh], [GioiTinh], [DiaChiKhachHang], [AvatarUrl]) VALUES (N'0911223344', 14, CAST(N'1995-05-15' AS Date), N'Nam', N'Phường Đa Kao', NULL)
GO
INSERT [dbo].[KhachHang] ([SDT_KH], [IDTaiKhoan], [NgaySinh], [GioiTinh], [DiaChiKhachHang], [AvatarUrl]) VALUES (N'0922334455', 15, CAST(N'1998-09-20' AS Date), N'Nữ', N'456 Lê Lợi, Quận Gò Vấp, TP. Hồ Chí Minh', NULL)
GO
INSERT [dbo].[KhachHang] ([SDT_KH], [IDTaiKhoan], [NgaySinh], [GioiTinh], [DiaChiKhachHang], [AvatarUrl]) VALUES (N'0933445566', 16, CAST(N'2000-01-01' AS Date), N'Nam', N'', N'/uploads/avatar/customer/customer_16_customer3_1781103469030.png')
GO
INSERT [dbo].[KhachHang] ([SDT_KH], [IDTaiKhoan], [NgaySinh], [GioiTinh], [DiaChiKhachHang], [AvatarUrl]) VALUES (N'0944556677', 17, CAST(N'1992-12-10' AS Date), N'Nữ', N'15 Trần Hưng Đạo, Quận 5, TP. Hồ Chí Minh', NULL)
GO
INSERT [dbo].[KhachHang] ([SDT_KH], [IDTaiKhoan], [NgaySinh], [GioiTinh], [DiaChiKhachHang], [AvatarUrl]) VALUES (N'0955667788', 18, CAST(N'1997-07-07' AS Date), N'Nam', N'22 Điện Biên Phủ, Q. Bình Thạnh, TP. Hồ Chí Minh', NULL)
GO
INSERT [dbo].[KhachHang] ([SDT_KH], [IDTaiKhoan], [NgaySinh], [GioiTinh], [DiaChiKhachHang], [AvatarUrl]) VALUES (N'1234567890', 30, CAST(N'2000-01-08' AS Date), N'Nam', N'Steam', N'/uploads/avatar/customer/customer_30_customer_beta_1781103531709.png')
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'-L4O9fejg-8n', 25, N'Hủy voucher', CAST(N'2026-06-10T10:33:25.750' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'01FwgYuXUTVY', 41, N'Hủy voucher', CAST(N'2026-06-10T14:48:08.960' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'0GIsz61iqG-y', 44, N'Chưa sử dụng', CAST(N'2026-06-10T16:17:42.547' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'38lgm58jyLGK', 42, N'Hủy voucher', CAST(N'2026-06-10T14:48:09.417' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'4leWNlmzy373', 21, N'Hủy voucher', CAST(N'2026-06-10T07:10:11.723' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'4vcFHtLsd8KL', 43, N'Hủy voucher', CAST(N'2026-06-10T14:48:09.767' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'64j98zy2jkj8', 26, N'Đã sử dụng', CAST(N'2026-06-10T11:11:01.757' AS DateTime), CAST(N'2026-06-10T11:15:48.013' AS DateTime), 16)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'6raxW1yPLaaf', 41, N'Hủy voucher', CAST(N'2026-06-10T14:48:08.960' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'6Vsmp8lKB77l', 44, N'Chưa sử dụng', CAST(N'2026-06-10T16:17:42.547' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'8h6Lucyb0k_2', 41, N'Hủy voucher', CAST(N'2026-06-10T14:48:08.960' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'CGV2D82W90', 3, N'Hủy voucher', CAST(N'2026-05-15T10:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'CGV2D93K8J', 7, N'Đã sử dụng', CAST(N'2026-05-11T11:20:00.000' AS DateTime), CAST(N'2026-05-14T20:00:00.000' AS DateTime), 5)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'CGV2DJ8F2D', 7, N'Chưa sử dụng', CAST(N'2026-05-11T11:20:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'CGVCB14X9Y', 15, N'Chưa sử dụng', CAST(N'2026-05-20T16:45:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'CGVCB8X9Y2', 9, N'Chưa sử dụng', CAST(N'2026-05-18T16:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'fn8V3FgUoTZg', 44, N'Chưa sử dụng', CAST(N'2026-06-10T16:17:42.547' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'GRG-Gr6Dzu7K', 43, N'Hủy voucher', CAST(N'2026-06-10T14:48:09.767' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'H1Jz6fWGl4lD', 21, N'Hủy voucher', CAST(N'2026-06-10T07:10:11.903' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'H81HlqYKN-AI', 23, N'Đã sử dụng', CAST(N'2026-06-10T09:36:35.963' AS DateTime), CAST(N'2026-06-10T10:13:06.810' AS DateTime), 6)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'HL50K12X3Y', 13, N'Chưa sử dụng', CAST(N'2026-05-20T14:30:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'HL50K8W7V2', 1, N'Đã sử dụng', CAST(N'2026-05-10T10:00:00.000' AS DateTime), CAST(N'2026-05-11T09:30:00.000' AS DateTime), 2)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'HL50K8W7V9', 14, N'Chưa sử dụng', CAST(N'2026-05-14T09:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'HL50K9X2J1', 1, N'Chưa sử dụng', CAST(N'2026-05-10T10:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'HLSDCombo1', 2, N'Hủy voucher', CAST(N'2026-05-15T14:30:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'kk68hJLZTStj', 23, N'Chưa sử dụng', CAST(N'2026-06-10T09:36:36.173' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'kVYypbUYg6yI', 22, N'Đã sử dụng', CAST(N'2026-06-10T09:18:44.510' AS DateTime), CAST(N'2026-06-10T09:19:57.653' AS DateTime), 12)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'mVs2rytOqnUo', 41, N'Hủy voucher', CAST(N'2026-06-10T14:48:08.960' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'NeVqF4-m6tnW', 44, N'Chưa sử dụng', CAST(N'2026-06-10T16:17:42.547' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'pE38_BJnRQS1', 24, N'Đã sử dụng', CAST(N'2026-06-10T10:31:14.510' AS DateTime), CAST(N'2026-06-10T10:35:05.207' AS DateTime), 13)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'PL100K92H1', 12, N'Hủy voucher', CAST(N'2026-05-18T10:05:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'PL100K92H2', 12, N'Hủy voucher', CAST(N'2026-05-18T10:05:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'PL100KREF1', 5, N'Đã sử dụng', CAST(N'2026-05-20T09:15:00.000' AS DateTime), CAST(N'2026-05-22T10:00:00.000' AS DateTime), 9)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'PL100KREF2', 16, N'Đã sử dụng', CAST(N'2026-05-25T11:30:00.000' AS DateTime), CAST(N'2026-05-27T14:00:00.000' AS DateTime), 10)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'PL50K82J1W', 8, N'Chưa sử dụng', CAST(N'2026-05-16T16:40:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'PL50K82J4X', 4, N'Chưa sử dụng', CAST(N'2026-05-15T11:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'PL50KREF01', 6, N'Đã sử dụng', CAST(N'2026-05-20T09:15:00.000' AS DateTime), CAST(N'2026-05-22T10:05:00.000' AS DateTime), 9)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'PLTDS93K8J', 10, N'Chưa sử dụng', CAST(N'2026-05-16T14:20:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'PLTDSSZ9K1', 11, N'Chưa sử dụng', CAST(N'2026-05-12T15:10:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'PLTDSSZ9K2', 11, N'Đã sử dụng', CAST(N'2026-05-12T15:10:00.000' AS DateTime), CAST(N'2026-05-13T14:20:00.000' AS DateTime), 8)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'PM4l6_rhKqM_', 44, N'Chưa sử dụng', CAST(N'2026-06-10T16:17:42.547' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'QHQ_udHbXB2i', 44, N'Chưa sử dụng', CAST(N'2026-06-10T16:17:42.547' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'SLtDJE0jv_sq', 43, N'Hủy voucher', CAST(N'2026-06-10T14:48:09.767' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N't1YgpTM6cRVE', 20, N'Hủy voucher', CAST(N'2026-06-10T07:10:10.993' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'TESTEXPIRE', 19, N'Hết hạn', CAST(N'2026-05-01T14:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'TESTUSED12', 18, N'Đã sử dụng', CAST(N'2026-05-01T14:00:00.000' AS DateTime), CAST(N'2026-05-02T11:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'TESTVALID1', 17, N'Hủy voucher', CAST(N'2026-05-28T10:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'tHr1a-2JazpO', 23, N'Chưa sử dụng', CAST(N'2026-06-10T09:36:36.377' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'uJZPr5FZX2SJ', 42, N'Hủy voucher', CAST(N'2026-06-10T14:48:09.417' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'uSoZTKtRouKj', 44, N'Chưa sử dụng', CAST(N'2026-06-10T16:17:42.547' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'VHvvZMPA-MIT', 44, N'Chưa sử dụng', CAST(N'2026-06-10T16:17:42.547' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'wVCDvF-OwHpv', 43, N'Hủy voucher', CAST(N'2026-06-10T14:48:09.767' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'wzO1sJU5EH5d', 42, N'Hủy voucher', CAST(N'2026-06-10T14:48:09.417' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'XIRjpQmykDwM', 42, N'Hủy voucher', CAST(N'2026-06-10T14:48:09.417' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'YEi4ILs05O3a', 41, N'Hủy voucher', CAST(N'2026-06-10T14:48:08.960' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'YSTNmgP_DwnG', 26, N'Chưa sử dụng', CAST(N'2026-06-10T11:11:01.920' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MaVoucher] ([SoMaVoucher], [MaCTDonHang], [TrangThaiSuDung], [ThoiDiemPhatHanh], [ThoiDiemSuDung], [MaChiNhanhSuDung]) VALUES (N'ZgqmVfg0d3hf', 41, N'Hủy voucher', CAST(N'2026-06-10T14:48:08.960' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[NhanVienDoiTac] ON 
GO
INSERT [dbo].[NhanVienDoiTac] ([IDNhanVien], [IDTaiKhoan], [MaDoiTac], [ChucVu]) VALUES (1, 5, 1, N'Quản lý cửa hàng')
GO
INSERT [dbo].[NhanVienDoiTac] ([IDNhanVien], [IDTaiKhoan], [MaDoiTac], [ChucVu]) VALUES (2, 6, 1, N'Nhân viên bán hàng')
GO
INSERT [dbo].[NhanVienDoiTac] ([IDNhanVien], [IDTaiKhoan], [MaDoiTac], [ChucVu]) VALUES (3, 7, 1, N'Trưởng nhóm ca')
GO
INSERT [dbo].[NhanVienDoiTac] ([IDNhanVien], [IDTaiKhoan], [MaDoiTac], [ChucVu]) VALUES (4, 8, 2, N'Quản lý cụm rạp')
GO
INSERT [dbo].[NhanVienDoiTac] ([IDNhanVien], [IDTaiKhoan], [MaDoiTac], [ChucVu]) VALUES (5, 9, 2, N'Nhân viên phòng vé')
GO
INSERT [dbo].[NhanVienDoiTac] ([IDNhanVien], [IDTaiKhoan], [MaDoiTac], [ChucVu]) VALUES (6, 10, 2, N'Trưởng ca rạp')
GO
INSERT [dbo].[NhanVienDoiTac] ([IDNhanVien], [IDTaiKhoan], [MaDoiTac], [ChucVu]) VALUES (7, 11, 3, N'Quản lý chi nhánh')
GO
INSERT [dbo].[NhanVienDoiTac] ([IDNhanVien], [IDTaiKhoan], [MaDoiTac], [ChucVu]) VALUES (8, 12, 3, N'Nhân viên pha chế')
GO
INSERT [dbo].[NhanVienDoiTac] ([IDNhanVien], [IDTaiKhoan], [MaDoiTac], [ChucVu]) VALUES (9, 13, 3, N'Trưởng nhóm')
GO
INSERT [dbo].[NhanVienDoiTac] ([IDNhanVien], [IDTaiKhoan], [MaDoiTac], [ChucVu]) VALUES (10, 2, 1, N'Đại diện doanh nghiệp')
GO
INSERT [dbo].[NhanVienDoiTac] ([IDNhanVien], [IDTaiKhoan], [MaDoiTac], [ChucVu]) VALUES (11, 3, 2, N'Đại diện doanh nghiệp')
GO
INSERT [dbo].[NhanVienDoiTac] ([IDNhanVien], [IDTaiKhoan], [MaDoiTac], [ChucVu]) VALUES (12, 4, 3, N'Đại diện doanh nghiệp')
GO
INSERT [dbo].[NhanVienDoiTac] ([IDNhanVien], [IDTaiKhoan], [MaDoiTac], [ChucVu]) VALUES (13, 19, 4, N'Trưởng phòng')
GO
INSERT [dbo].[NhanVienDoiTac] ([IDNhanVien], [IDTaiKhoan], [MaDoiTac], [ChucVu]) VALUES (14, 20, 5, N'Quản lý')
GO
INSERT [dbo].[NhanVienDoiTac] ([IDNhanVien], [IDTaiKhoan], [MaDoiTac], [ChucVu]) VALUES (15, 24, 6, N'Quản lý')
GO
INSERT [dbo].[NhanVienDoiTac] ([IDNhanVien], [IDTaiKhoan], [MaDoiTac], [ChucVu]) VALUES (16, 28, 7, N'LockheedMartin_employee1@gmail.com')
GO
INSERT [dbo].[NhanVienDoiTac] ([IDNhanVien], [IDTaiKhoan], [MaDoiTac], [ChucVu]) VALUES (17, 31, 2, N'Testing rạp chiếu')
GO
INSERT [dbo].[NhanVienDoiTac] ([IDNhanVien], [IDTaiKhoan], [MaDoiTac], [ChucVu]) VALUES (18, 32, 2, N'Testing rạp chiếu')
GO
SET IDENTITY_INSERT [dbo].[NhanVienDoiTac] OFF
GO
SET IDENTITY_INSERT [dbo].[SystemLog] ON 
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (1, 1, N'Đăng nhập thành công', N'admin', N'Admin đăng nhập hệ thống', N'127.0.0.1', N'Thành công', CAST(N'2026-06-01T08:00:00.000' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (2, 5, N'Đăng nhập thành công', N'highlands_emp1', N'Quản lý Highlands đăng nhập', N'192.168.1.10', N'Thành công', CAST(N'2026-06-01T08:30:00.000' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (3, 14, N'Mua voucher', N'customer1', N'Khách hàng mua thành công 2 Voucher Highlands Coffee 50k', N'192.168.1.20', N'Thành công', CAST(N'2026-05-10T10:00:00.000' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (4, 2, N'Đăng nhập thành công', N'highlands', N'Vai trò: partner', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T06:14:13.750' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (5, 8, N'Đăng nhập thành công', N'cgv_emp1', N'Vai trò: partner', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T06:39:57.540' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (6, 13, N'Đăng nhập thành công', N'phuclong_emp3', N'Vai trò: partner', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T06:41:14.357' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (7, 8, N'Đăng nhập thành công', N'cgv_emp1', N'Vai trò: partner', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T06:45:53.090' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (8, 14, N'Đăng nhập thành công', N'customer1', N'Vai trò: customer', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T06:58:16.603' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (9, 19, N'Đăng ký đối tác', N'CtyATest', N'Đối tác ''CtyATest'' đã đăng ký. MST: 0345673344. Người đại diện: Nguyễn Văn Ban', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T07:07:28.747' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (10, 1, N'Đăng nhập thành công', N'admin', N'Vai trò: admin', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T07:08:06.637' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (11, 1, N'Phê duyệt đối tác', N'CtyATest', N'Thực hiện bởi: admin. Đối tượng: CtyATest', N'::1', N'Thành công', CAST(N'2026-06-10T07:09:26.120' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (12, 19, N'Đăng nhập thành công', N'Nhanvientest1', N'Vai trò: partner', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T07:10:58.923' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (13, 2, N'Đăng nhập thành công', N'highlands', N'Vai trò: partner', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T07:14:06.040' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (14, 1, N'Đăng nhập thành công', N'admin', N'Vai trò: admin', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T07:35:17.210' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (15, 2, N'Đăng nhập thành công', N'highlands', N'Vai trò: partner', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T07:39:58.053' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (16, 1, N'Đăng nhập thành công', N'admin', N'Vai trò: admin', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T07:40:14.350' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (17, 1, N'Đăng nhập thành công', N'admin', N'Vai trò: admin', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T07:49:32.400' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (18, 14, N'Đăng nhập thành công', N'customer1', N'Vai trò: customer', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T08:13:35.227' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (19, 1, N'Đăng nhập thành công', N'admin', N'Vai trò: admin', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T08:14:37.647' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (20, 3, N'Đăng nhập thành công', N'cgv', N'Vai trò: partner', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T08:14:59.987' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (21, 3, N'Đăng nhập thất bại', N'cgv', N'Tài khoản tồn tại: Có, Vai trò: partner. Sai mật khẩu.', N'127.0.0.1', N'Thất bại', CAST(N'2026-06-10T08:16:15.870' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (22, 3, N'Đăng nhập thành công', N'cgv', N'Vai trò: partner', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T08:16:26.633' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (23, 1, N'Đăng nhập thành công', N'admin', N'Vai trò: admin', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T08:17:48.650' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (24, 14, N'Đăng nhập thất bại', N'customer1', N'Tài khoản tồn tại: Có, Vai trò: customer. Sai mật khẩu.', N'127.0.0.1', N'Thất bại', CAST(N'2026-06-10T08:25:34.120' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (25, 14, N'Đăng nhập thất bại', N'customer1', N'Tài khoản tồn tại: Có, Vai trò: customer. Sai mật khẩu.', N'127.0.0.1', N'Thất bại', CAST(N'2026-06-10T08:25:42.260' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (26, 14, N'Đăng nhập thất bại', N'customer1', N'Tài khoản tồn tại: Có, Vai trò: customer. Sai mật khẩu.', N'127.0.0.1', N'Thất bại', CAST(N'2026-06-10T08:25:57.720' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (27, 14, N'Cảnh báo đăng nhập', N'customer1', N'[WARN_USER] 3 lần đăng nhập thất bại vào tài khoản ''customer1'' trong 15 phút. Ngưỡng cảnh báo: 3', N'127.0.0.1', N'CANH_BAO', CAST(N'2026-06-10T08:25:58.080' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (28, 14, N'Đăng nhập thất bại', N'customer1', N'Tài khoản tồn tại: Có, Vai trò: customer. Sai mật khẩu.', N'127.0.0.1', N'Thất bại', CAST(N'2026-06-10T08:26:09.400' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (29, 14, N'Cảnh báo đăng nhập', N'customer1', N'[WARN_USER] 4 lần đăng nhập thất bại vào tài khoản ''customer1'' trong 15 phút. Ngưỡng cảnh báo: 3', N'127.0.0.1', N'CANH_BAO', CAST(N'2026-06-10T08:26:09.860' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (30, 14, N'Đăng nhập thất bại', N'customer1', N'Tài khoản tồn tại: Có, Vai trò: customer. Sai mật khẩu.', N'127.0.0.1', N'Thất bại', CAST(N'2026-06-10T08:26:17.270' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (31, 14, N'Cảnh báo đăng nhập', N'customer1', N'[BRUTE_FORCE_USER] 5 lần đăng nhập thất bại vào tài khoản ''customer1'' trong 15 phút. Đã vượt ngưỡng thông báo (5). Cần thông báo cho người dùng.', N'127.0.0.1', N'CANH_BAO', CAST(N'2026-06-10T08:26:17.640' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (32, 14, N'Đăng nhập thất bại', N'customer1', N'Tài khoản tồn tại: Có, Vai trò: customer. Sai mật khẩu.', N'127.0.0.1', N'Thất bại', CAST(N'2026-06-10T08:26:20.120' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (33, 14, N'Cảnh báo đăng nhập', N'customer1', N'[BRUTE_FORCE_USER] 6 lần đăng nhập thất bại vào tài khoản ''customer1'' trong 15 phút. Đã vượt ngưỡng thông báo (5). Cần thông báo cho người dùng.', N'127.0.0.1', N'CANH_BAO', CAST(N'2026-06-10T08:26:20.517' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (34, 14, N'Đăng nhập thành công', N'customer1', N'Vai trò: customer', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T08:27:16.763' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (35, 14, N'Đăng nhập thành công', N'customer1', N'Vai trò: customer', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T08:44:22.943' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (36, 1, N'Đăng nhập thành công', N'admin', N'Vai trò: admin', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T08:57:21.127' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (37, 19, N'Đăng nhập thành công', N'Nhanvientest1', N'Vai trò: partner', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T09:01:33.153' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (38, 19, N'Tạo voucher', N'Buffet no nê', N'Partner đã tạo voucher mới', N'::1', N'Thành công', CAST(N'2026-06-10T09:12:20.840' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (39, 1, N'Phê duyệt voucher', N'Buffet no nê', N'Thực hiện bởi: admin. Đối tượng: Buffet no nê', N'::1', N'Thành công', CAST(N'2026-06-10T09:13:33.067' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (40, 14, N'Đăng nhập thành công', N'customer1', N'Vai trò: customer', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T09:15:05.603' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (41, 3, N'Đăng nhập thành công', N'cgv', N'Vai trò: partner', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T09:28:08.713' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (42, 1, N'Đăng nhập thành công', N'admin', N'Vai trò: admin', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T09:29:06.700' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (43, 1, N'Đăng nhập thành công', N'admin', N'Vai trò: admin', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T09:29:08.227' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (44, 16, N'Đăng nhập thất bại', N'customer3', N'Tài khoản tồn tại: Có, Vai trò: customer. Sai mật khẩu.', N'127.0.0.1', N'Thất bại', CAST(N'2026-06-10T09:29:29.520' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (45, 16, N'Đăng nhập thành công', N'customer3', N'Vai trò: customer', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T09:29:31.280' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (46, 16, N'Cập nhật hồ sơ', N'customer3', N'Khách hàng cập nhật thông tin cá nhân.', N'::1', N'Thành công', CAST(N'2026-06-10T09:30:21.157' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (47, 3, N'Đăng nhập thành công', N'cgv', N'Vai trò: partner', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T09:37:09.410' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (48, 19, N'Đăng nhập thành công', N'Nhanvientest1', N'Vai trò: partner', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T09:41:26.620' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (49, 1, N'Đăng nhập thành công', N'admin', N'Vai trò: admin', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T10:04:02.883' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (50, 20, N'Đăng ký đối tác', N'CtyBTest', N'Đối tác ''CtyBTest'' đã đăng ký. MST: 0123457890. Người đại diện: Nguyễn Thị E', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T10:08:58.653' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (51, 1, N'Đăng nhập thành công', N'admin', N'Vai trò: admin', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T10:09:31.443' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (52, 1, N'Phê duyệt đối tác', N'CtyBTest', N'Thực hiện bởi: admin. Đối tượng: CtyBTest', N'::1', N'Thành công', CAST(N'2026-06-10T10:10:20.040' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (53, 20, N'Đăng nhập thành công', N'Nhanvientest2', N'Vai trò: partner', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T10:10:31.803' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (54, 16, N'Đăng nhập thành công', N'customer3', N'Vai trò: customer', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T10:11:31.190' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (55, 3, N'Đăng nhập thành công', N'cgv', N'Vai trò: partner', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T10:11:37.873' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (56, 3, N'Đăng nhập thành công', N'cgv', N'Vai trò: partner', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T10:17:51.380' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (57, 20, N'Tạo voucher', N'Buffet Hải sản 599k', N'Partner đã tạo voucher mới', N'::1', N'Thành công', CAST(N'2026-06-10T10:23:46.263' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (58, 1, N'Phê duyệt voucher', N'Buffet Hải sản 599k', N'Thực hiện bởi: admin. Đối tượng: Buffet Hải sản 599k', N'::1', N'Thành công', CAST(N'2026-06-10T10:24:17.750' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (59, 1, N'Đăng nhập thành công', N'admin', N'Vai trò: admin', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T10:25:55.650' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (60, NULL, N'Đăng nhập thất bại', N'Khachhang1', N'Tài khoản tồn tại: Không. Tên đăng nhập ''Khachhang1'' không tồn tại trong hệ thống.', N'127.0.0.1', N'Thất bại', CAST(N'2026-06-10T10:29:26.413' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (61, NULL, N'Đăng nhập thất bại', N'Khachhang1', N'Tài khoản tồn tại: Không. Tên đăng nhập ''Khachhang1'' không tồn tại trong hệ thống.', N'127.0.0.1', N'Thất bại', CAST(N'2026-06-10T10:29:40.227' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (62, 14, N'Đăng nhập thành công', N'customer1', N'Vai trò: customer', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T10:29:54.510' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (63, 14, N'Đăng nhập thành công', N'customer1', N'Vai trò: customer', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T10:40:53.550' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (64, 14, N'Đăng nhập thành công', N'customer1', N'Vai trò: customer', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T10:52:04.920' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (65, 15, N'Đăng nhập thành công', N'customer2', N'Vai trò: customer', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T10:53:23.140' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (66, 14, N'Đăng nhập thành công', N'customer1', N'Vai trò: customer', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T10:53:58.717' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (67, 24, N'Đăng ký đối tác', N'CtyBTest', N'Đối tác ''CtyBTest'' đã đăng ký. MST: 0123457890. Người đại diện: Nguyễn Thị E', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T10:57:13.500' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (68, 1, N'Đăng nhập thành công', N'admin', N'Vai trò: admin', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T10:57:50.940' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (69, 1, N'Phê duyệt đối tác', N'CtyBTest', N'Thực hiện bởi: admin. Đối tượng: CtyBTest', N'::1', N'Thành công', CAST(N'2026-06-10T10:58:15.973' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (70, 24, N'Đăng nhập thành công', N'Nhanvientest3', N'Vai trò: partner', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T10:58:28.080' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (71, 14, N'Đăng nhập thất bại', N'customer1', N'Tài khoản tồn tại: Có, Vai trò: customer. Sai mật khẩu.', N'127.0.0.1', N'Thất bại', CAST(N'2026-06-10T10:58:55.617' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (72, 14, N'Đăng nhập thành công', N'customer1', N'Vai trò: customer', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T10:59:01.297' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (73, 14, N'Cập nhật hồ sơ', N'customer1', N'Khách hàng cập nhật thông tin cá nhân.', N'::1', N'Thành công', CAST(N'2026-06-10T10:59:22.707' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (74, 1, N'Đăng nhập thành công', N'admin', N'Vai trò: admin', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T11:00:00.950' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (75, 15, N'Đăng nhập thành công', N'customer2', N'Vai trò: customer', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T11:01:48.187' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (76, 24, N'Tạo voucher', N'Buffet Nướng 599k', N'Partner đã tạo voucher mới', N'::1', N'Thành công', CAST(N'2026-06-10T11:03:40.647' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (77, 24, N'Tạo voucher', N'Buffet Nướng 599k', N'Partner đã tạo voucher mới', N'::1', N'Thành công', CAST(N'2026-06-10T11:03:41.543' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (78, 1, N'Phê duyệt voucher', N'Buffet Nướng 599k', N'Thực hiện bởi: admin. Đối tượng: Buffet Nướng 599k', N'::1', N'Thành công', CAST(N'2026-06-10T11:03:59.970' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (79, 1, N'Từ chối voucher', N'Buffet Nướng 599k (Lý do: )', N'Thực hiện bởi: admin. Đối tượng: Buffet Nướng 599k (Lý do: )', N'::1', N'Thành công', CAST(N'2026-06-10T11:04:12.090' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (80, 24, N'Tạo voucher', N'Buffet Cầu Vồng', N'Partner đã tạo voucher mới', N'::1', N'Thành công', CAST(N'2026-06-10T11:06:15.123' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (81, 1, N'Phê duyệt voucher', N'Buffet Cầu Vồng', N'Thực hiện bởi: admin. Đối tượng: Buffet Cầu Vồng', N'::1', N'Thành công', CAST(N'2026-06-10T11:06:43.727' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (82, 3, N'Đăng nhập thành công', N'cgv', N'Vai trò: partner', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T11:08:30.310' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (83, 14, N'Đăng nhập thành công', N'customer1', N'Vai trò: customer', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T11:08:48.300' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (84, NULL, N'Đăng nhập thất bại', N'Customer11', N'Tài khoản tồn tại: Không. Tên đăng nhập ''Customer11'' không tồn tại trong hệ thống.', N'127.0.0.1', N'Thất bại', CAST(N'2026-06-10T11:09:44.217' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (85, 14, N'Đăng nhập thành công', N'customer1', N'Vai trò: customer', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T11:09:58.213' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (86, 28, N'Đăng ký đối tác', N'Lockheed Martin', N'Đối tác ''Lockheed Martin'' đã đăng ký. MST: 1234555555. Người đại diện: James D. Taiclet', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T11:37:57.190' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (87, 1, N'Đăng nhập thất bại', N'admin', N'Tài khoản tồn tại: Có, Vai trò: admin. Sai mật khẩu.', N'127.0.0.1', N'Thất bại', CAST(N'2026-06-10T11:38:16.763' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (88, 1, N'Cảnh báo đăng nhập', N'admin', N'[ADMIN_TARGET] Phát hiện cố gắng đăng nhập vào tài khoản Admin ''admin'' từ IP 127.0.0.1. Lần thất bại thứ: 1', N'127.0.0.1', N'CANH_BAO', CAST(N'2026-06-10T11:38:17.103' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (89, 1, N'Đăng nhập thành công', N'admin', N'Vai trò: admin', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T11:38:22.330' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (90, 1, N'Đăng nhập thành công', N'admin', N'Vai trò: admin', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T11:45:42.787' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (91, 1, N'Từ chối đối tác', N'Lockheed Martin', N'Thực hiện bởi: admin. Đối tượng: Lockheed Martin', N'::1', N'Thành công', CAST(N'2026-06-10T11:47:20.500' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (92, 24, N'Đăng nhập thành công', N'Nhanvientest3', N'Vai trò: partner', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T11:50:14.747' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (93, 1, N'Đăng nhập thành công', N'admin', N'Vai trò: admin', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T11:51:15.593' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (94, 28, N'Đăng nhập thất bại', N'Lockheed_Martini', N'Tài khoản tồn tại: Có, Vai trò: partner. Đăng nhập thất bại do tài khoản không ở trạng thái Hoạt động (Trạng thái hiện tại: Bị khóa).', N'127.0.0.1', N'Thất bại', CAST(N'2026-06-10T11:52:04.117' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (95, 14, N'Đăng nhập thành công', N'customer1', N'Vai trò: customer', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T11:53:05.793' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (96, 14, N'Đăng nhập thành công', N'customer1', N'Vai trò: customer', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T11:53:27.950' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (97, 14, N'Đăng nhập thành công', N'customer1', N'Vai trò: customer', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T11:54:17.597' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (98, 2, N'Đăng nhập thành công', N'highlands', N'Vai trò: partner', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T11:54:34.953' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (99, 29, N'Đăng ký khách hàng', N'test1', N'Khách hàng ''Phạm Văn Test'' đã đăng ký tài khoản. Email: test1@gmail.com', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T11:55:48.250' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (100, 29, N'Đăng nhập thành công', N'test1', N'Vai trò: customer', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T11:55:58.603' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (101, 1, N'Đăng nhập thành công', N'admin', N'Vai trò: admin', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T12:04:35.943' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (102, 14, N'Đăng nhập thành công', N'customer1', N'Vai trò: customer', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T12:06:16.783' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (103, 29, N'Đăng nhập thành công', N'test1', N'Vai trò: customer', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T12:30:55.793' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (104, 1, N'Đăng nhập thành công', N'admin', N'Vai trò: admin', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T12:31:17.620' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (105, 29, N'Đăng nhập thành công', N'test1', N'Vai trò: customer', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T12:37:26.680' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (106, 29, N'Đăng nhập thành công', N'test1', N'Vai trò: customer', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T13:15:36.260' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (107, 14, N'Đăng nhập thành công', N'customer1', N'Vai trò: customer', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T13:26:47.870' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (108, 15, N'Đăng nhập thất bại', N'customer2', N'Tài khoản tồn tại: Có, Vai trò: customer. Sai mật khẩu.', N'127.0.0.1', N'Thất bại', CAST(N'2026-06-10T13:33:47.860' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (109, 15, N'Đăng nhập thành công', N'customer2', N'Vai trò: customer', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T13:33:57.677' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (110, 16, N'Đăng nhập thành công', N'customer3', N'Vai trò: customer', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T13:41:10.577' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (111, 17, N'Đăng nhập thành công', N'customer4', N'Vai trò: customer', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T13:41:58.750' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (112, 14, N'Đăng nhập thành công', N'customer1', N'Vai trò: customer', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T13:44:57.663' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (113, 24, N'Đăng nhập thành công', N'Nhanvientest3', N'Vai trò: partner', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T14:21:24.560' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (114, 30, N'Đăng ký khách hàng', N'customer_beta', N'Khách hàng ''To full release'' đã đăng ký tài khoản. Email: customer_beta@gmail.com', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T14:29:26.803' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (115, 30, N'Đăng nhập thành công', N'customer_beta', N'Vai trò: customer', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T14:29:34.830' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (116, 1, N'Đăng nhập thành công', N'admin', N'Vai trò: admin', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T14:34:15.377' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (117, 1, N'Update ORD-30', N'Status: CANCELLED', N'Thực hiện bởi: admin. Đối tượng: Status: CANCELLED', N'::1', N'Thành công', CAST(N'2026-06-10T14:37:51.987' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (118, 1, N'Refund ORD-32', N'14 voucher codes → Hủy voucher', N'Thực hiện bởi: admin. Đối tượng: 14 voucher codes → Hủy voucher', N'::1', N'Thành công', CAST(N'2026-06-10T14:53:51.227' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (119, 30, N'Cập nhật Avatar Khách hàng', N'customer_beta', N'Đã cập nhật ảnh đại diện mới: /uploads/avatar/customer/customer_30_customer_beta_1781103416205.png', N'::1', N'Thành công', CAST(N'2026-06-10T14:56:57.803' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (120, 16, N'Đăng nhập thành công', N'customer3', N'Vai trò: customer', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T14:57:36.800' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (121, 16, N'Cập nhật Avatar Khách hàng', N'customer3', N'Đã cập nhật ảnh đại diện mới: /uploads/avatar/customer/customer_16_customer3_1781103469030.png', N'::1', N'Thành công', CAST(N'2026-06-10T14:57:50.543' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (122, 30, N'Đăng nhập thành công', N'customer_beta', N'Vai trò: customer', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T14:58:19.150' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (123, 30, N'Cập nhật Avatar Khách hàng', N'customer_beta', N'Đã cập nhật ảnh đại diện mới: /uploads/avatar/customer/customer_30_customer_beta_1781103506858.png', N'::1', N'Thành công', CAST(N'2026-06-10T14:58:28.447' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (124, 30, N'Cập nhật Avatar Khách hàng', N'customer_beta', N'Đã cập nhật ảnh đại diện mới: /uploads/avatar/customer/customer_30_customer_beta_1781103520369.png', N'::1', N'Thành công', CAST(N'2026-06-10T14:58:42.473' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (125, 30, N'Cập nhật Avatar Khách hàng', N'customer_beta', N'Đã cập nhật ảnh đại diện mới: /uploads/avatar/customer/customer_30_customer_beta_1781103531709.png', N'::1', N'Thành công', CAST(N'2026-06-10T14:58:53.353' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (126, 3, N'Đăng nhập thành công', N'cgv', N'Vai trò: partner', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T15:04:35.517' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (127, 30, N'Đăng nhập thành công', N'customer_beta', N'Vai trò: customer', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T15:29:59.777' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (128, 1, N'Đăng nhập thành công', N'admin', N'Vai trò: admin', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T15:31:40.640' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (129, 3, N'Đăng nhập thành công', N'cgv', N'Vai trò: partner', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T15:33:35.430' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (130, 1, N'Đăng nhập thành công', N'admin', N'Vai trò: admin', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T16:15:25.230' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (131, 14, N'Đăng nhập thất bại', N'customer1', N'Tài khoản tồn tại: Có, Vai trò: customer. Sai mật khẩu.', N'127.0.0.1', N'Thất bại', CAST(N'2026-06-10T16:16:19.400' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (132, 14, N'Đăng nhập thành công', N'customer1', N'Vai trò: customer', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T16:16:25.927' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (133, 14, N'Đăng nhập thành công', N'customer1', N'Vai trò: customer', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T16:44:07.390' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (134, 17, N'Đăng nhập thành công', N'customer4', N'Vai trò: customer', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T16:47:49.430' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (135, 14, N'Đăng nhập thành công', N'customer1', N'Vai trò: customer', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T16:48:31.140' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (136, 2, N'Đăng nhập thành công', N'highlands', N'Vai trò: partner', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T16:50:12.933' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (137, 14, N'Đăng nhập thành công', N'customer1', N'Vai trò: customer', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T16:52:21.427' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (138, 1, N'Đăng nhập thành công', N'admin', N'Vai trò: admin', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T16:53:58.873' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (139, 1, N'Lock account', N'Highlands Nhân viên 3', N'Thực hiện bởi: admin. Đối tượng: Highlands Nhân viên 3', N'::1', N'Thành công', CAST(N'2026-06-10T16:56:49.270' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (140, 1, N'Unlock account', N'Highlands Nhân viên 3', N'Thực hiện bởi: admin. Đối tượng: Highlands Nhân viên 3', N'::1', N'Thành công', CAST(N'2026-06-10T16:57:21.570' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (141, 1, N'Lock account', N'Highlands Nhân viên 3', N'Thực hiện bởi: admin. Đối tượng: Highlands Nhân viên 3', N'::1', N'Thành công', CAST(N'2026-06-10T17:01:06.450' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (142, 1, N'Unlock account', N'Highlands Nhân viên 3', N'Thực hiện bởi: admin. Đối tượng: Highlands Nhân viên 3', N'::1', N'Thành công', CAST(N'2026-06-10T17:06:05.463' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (143, 1, N'Lock account', N'Highlands Nhân viên 3', N'Thực hiện bởi: admin. Đối tượng: Highlands Nhân viên 3', N'::1', N'Thành công', CAST(N'2026-06-10T17:12:42.380' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (144, 1, N'Unlock account', N'Highlands Nhân viên 3', N'Thực hiện bởi: admin. Đối tượng: Highlands Nhân viên 3', N'::ffff:127.0.0.1', N'Thành công', CAST(N'2026-06-10T17:13:08.170' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (145, 1, N'Đăng nhập thành công', N'admin', N'Vai trò: admin', N'127.0.0.1', N'Thành công', CAST(N'2026-06-10T17:32:06.377' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (146, 14, N'Đăng nhập thành công', N'customer1', N'Vai trò: customer', N'127.0.0.1', N'Thành công', CAST(N'2026-06-30T15:02:29.000' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (147, 14, N'Đăng nhập thành công', N'customer1', N'Vai trò: customer', N'127.0.0.1', N'Thành công', CAST(N'2026-06-30T15:29:55.880' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (148, 14, N'Đăng nhập thành công', N'customer1', N'Vai trò: customer', N'127.0.0.1', N'Thành công', CAST(N'2026-07-03T14:19:54.417' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (149, 2, N'Đăng nhập thất bại', N'highlands', N'Tài khoản tồn tại: Có, Vai trò: partner. Sai mật khẩu.', N'127.0.0.1', N'Thất bại', CAST(N'2026-07-03T14:29:27.160' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (150, 3, N'Đăng nhập thất bại', N'cgv', N'Tài khoản tồn tại: Có, Vai trò: partner. Sai mật khẩu.', N'127.0.0.1', N'Thất bại', CAST(N'2026-07-03T14:30:00.773' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (151, 19, N'Đăng nhập thành công', N'Nhanvientest1', N'Vai trò: partner', N'127.0.0.1', N'Thành công', CAST(N'2026-07-03T14:30:11.587' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (152, 8, N'Đăng nhập thất bại', N'cgv_emp1', N'Tài khoản tồn tại: Có, Vai trò: partner. Sai mật khẩu.', N'127.0.0.1', N'Thất bại', CAST(N'2026-07-03T14:30:49.987' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (153, 8, N'Đăng nhập thành công', N'cgv_emp1', N'Vai trò: partner', N'127.0.0.1', N'Thành công', CAST(N'2026-07-03T14:31:21.293' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (154, 1, N'Đăng nhập thất bại', N'admin', N'Tài khoản tồn tại: Có, Vai trò: admin. Sai mật khẩu.', N'127.0.0.1', N'Thất bại', CAST(N'2026-07-03T14:35:52.620' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (155, 1, N'Cảnh báo đăng nhập', N'admin', N'[ADMIN_TARGET] Phát hiện cố gắng đăng nhập vào tài khoản Admin ''admin'' từ IP 127.0.0.1. Lần thất bại thứ: 1', N'127.0.0.1', N'CANH_BAO', CAST(N'2026-07-03T14:35:52.940' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (156, 1, N'Đăng nhập thành công', N'admin', N'Vai trò: admin', N'127.0.0.1', N'Thành công', CAST(N'2026-07-03T14:36:00.410' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (157, 1, N'Lock account', N'Highlands Nhân viên 1', N'Thực hiện bởi: admin. Đối tượng: Highlands Nhân viên 1', N'::1', N'Thành công', CAST(N'2026-07-03T14:40:49.740' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (158, 8, N'Đăng nhập thành công', N'cgv_emp1', N'Vai trò: partner', N'127.0.0.1', N'Thành công', CAST(N'2026-07-03T14:48:49.760' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (159, 14, N'Đăng nhập thành công', N'customer1', N'Vai trò: customer', N'127.0.0.1', N'Thành công', CAST(N'2026-07-03T14:51:46.013' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (160, 1, N'Đăng nhập thất bại', N'admin', N'Tài khoản tồn tại: Có, Vai trò: admin. Sai mật khẩu.', N'127.0.0.1', N'Thất bại', CAST(N'2026-07-04T12:32:32.480' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (161, 1, N'Cảnh báo đăng nhập', N'admin', N'[ADMIN_TARGET] Phát hiện cố gắng đăng nhập vào tài khoản Admin ''admin'' từ IP 127.0.0.1. Lần thất bại thứ: 1', N'127.0.0.1', N'CANH_BAO', CAST(N'2026-07-04T12:32:32.680' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (162, 1, N'Đăng nhập thất bại', N'admin', N'Tài khoản tồn tại: Có, Vai trò: admin. Sai mật khẩu.', N'127.0.0.1', N'Thất bại', CAST(N'2026-07-04T12:32:37.803' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (163, 1, N'Cảnh báo đăng nhập', N'admin', N'[ADMIN_TARGET] Phát hiện cố gắng đăng nhập vào tài khoản Admin ''admin'' từ IP 127.0.0.1. Lần thất bại thứ: 2', N'127.0.0.1', N'CANH_BAO', CAST(N'2026-07-04T12:32:37.990' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (164, 1, N'Đăng nhập thành công', N'admin', N'Vai trò: admin', N'127.0.0.1', N'Thành công', CAST(N'2026-07-04T12:32:40.710' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (165, 14, N'Đăng nhập thành công', N'customer1', N'Vai trò: customer', N'127.0.0.1', N'Thành công', CAST(N'2026-07-04T12:33:00.193' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (166, 8, N'Đăng nhập thành công', N'cgv_emp1', N'Vai trò: partner', N'127.0.0.1', N'Thành công', CAST(N'2026-07-04T12:59:43.557' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (167, 8, N'Đăng nhập thành công', N'cgv_emp1', N'Vai trò: partner', N'127.0.0.1', N'Thành công', CAST(N'2026-07-04T13:04:41.810' AS DateTime))
GO
INSERT [dbo].[SystemLog] ([MaLog], [IDTaiKhoan], [HanhDong], [DoiTuong], [ChiTiet], [DiaChiIP], [TrangThai], [ThoiGian]) VALUES (168, 14, N'Đăng nhập thành công', N'customer1', N'Vai trò: customer', N'127.0.0.1', N'Thành công', CAST(N'2026-07-04T15:25:04.443' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[SystemLog] OFF
GO
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 
GO
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [TenDangNhap], [MatKhau], [Email], [HoTenNguoiDung], [TrangThaiTaiKhoan], [LoaiTK]) VALUES (1, N'admin', N'$2b$10$gRrNISI6AFST1mosCCYfKukJjcue1QA5GP93IrXU14DxlojIwHeAW', N'admin@voucherhub.com', N'System Admin', N'Hoạt động', N'Admin')
GO
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [TenDangNhap], [MatKhau], [Email], [HoTenNguoiDung], [TrangThaiTaiKhoan], [LoaiTK]) VALUES (2, N'highlands', N'$2b$10$D2Mi8iSYRMjrLqDkQGD9g.oObFjOgJlEVyMSosjTNWxRtAkJAqyLe', N'highlands@voucherhub.com', N'Highlands Coffee', N'Hoạt động', N'DoiTac')
GO
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [TenDangNhap], [MatKhau], [Email], [HoTenNguoiDung], [TrangThaiTaiKhoan], [LoaiTK]) VALUES (3, N'cgv', N'$2b$10$df3WZ7KHiRboWc4w7HBwpe/xORhUDQPeRZoBEteDBzTLB45Nt5ntS', N'cgv@voucherhub.com', N'CGV Cinemas', N'Hoạt động', N'DoiTac')
GO
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [TenDangNhap], [MatKhau], [Email], [HoTenNguoiDung], [TrangThaiTaiKhoan], [LoaiTK]) VALUES (4, N'phuclong', N'$2b$10$NuBzEiSBPT6ALWpUCXhCzurtCerKPr9Y3kQdAZnLRUNTpla8GGn9S', N'phuclong@voucherhub.com', N'Phúc Long Coffee & Tea', N'Hoạt động', N'DoiTac')
GO
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [TenDangNhap], [MatKhau], [Email], [HoTenNguoiDung], [TrangThaiTaiKhoan], [LoaiTK]) VALUES (5, N'highlands_emp1', N'$2b$10$qIbWfJ2fNYYbYi6sSiMqy.XetJAfAahMOCmKjJYHMAkIsVPerncxa', N'highlands_emp1@voucherhub.com', N'Highlands Nhân viên 1', N'Bị khóa', N'DoiTac')
GO
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [TenDangNhap], [MatKhau], [Email], [HoTenNguoiDung], [TrangThaiTaiKhoan], [LoaiTK]) VALUES (6, N'highlands_emp2', N'$2b$10$zN4QoVsTZ8QV7vDhEsVfyOFprMBe.rFG0oolg9ak.ha4kx1GGEjRW', N'highlands_emp2@voucherhub.com', N'Highlands Nhân viên 2', N'Hoạt động', N'DoiTac')
GO
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [TenDangNhap], [MatKhau], [Email], [HoTenNguoiDung], [TrangThaiTaiKhoan], [LoaiTK]) VALUES (7, N'highlands_emp3', N'$2b$10$owCqfK9/EW/rIwAlosHMzeXqhuo/GVkWNsd.KXn0Ozj3zntyOKoR2', N'highlands_emp3@voucherhub.com', N'Highlands Nhân viên 3', N'Hoạt động', N'DoiTac')
GO
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [TenDangNhap], [MatKhau], [Email], [HoTenNguoiDung], [TrangThaiTaiKhoan], [LoaiTK]) VALUES (8, N'cgv_emp1', N'$2b$10$.dP3P.umnylegMKUVzL72.69Nd4mAFqjv8nrT4EQW.Ywrj1lOofGW', N'cgv_emp1@voucherhub.com', N'CGV Nhân viên 1', N'Hoạt động', N'DoiTac')
GO
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [TenDangNhap], [MatKhau], [Email], [HoTenNguoiDung], [TrangThaiTaiKhoan], [LoaiTK]) VALUES (9, N'cgv_emp2', N'$2b$10$hoP7ODssj6XpYu0vgGe8P.EaV1Lxuf9PaOtYa2PaYrUQWQAtIwQLu', N'cgv_emp2@voucherhub.com', N'CGV Nhân viên 2', N'Hoạt động', N'DoiTac')
GO
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [TenDangNhap], [MatKhau], [Email], [HoTenNguoiDung], [TrangThaiTaiKhoan], [LoaiTK]) VALUES (10, N'cgv_emp3', N'$2b$10$/RmeVUXrX2LfDg93x29sv.5HEKJLHXVqADNgKd2G.oc4biPipN0U2', N'cgv_emp3@voucherhub.com', N'CGV Nhân viên 3', N'Hoạt động', N'DoiTac')
GO
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [TenDangNhap], [MatKhau], [Email], [HoTenNguoiDung], [TrangThaiTaiKhoan], [LoaiTK]) VALUES (11, N'phuclong_emp1', N'$2b$10$YG20QiSI/ueZAugsuHxTee8uuIYjrmUwD01.6kYODaxq7VtgQnZ8C', N'phuclong_emp1@voucherhub.com', N'Phúc Long Nhân viên 1', N'Hoạt động', N'DoiTac')
GO
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [TenDangNhap], [MatKhau], [Email], [HoTenNguoiDung], [TrangThaiTaiKhoan], [LoaiTK]) VALUES (12, N'phuclong_emp2', N'$2b$10$38ykfYA9Dw1SY5LcU4KrEOT7m7dpJYkvqCyt2qjsv7Mv7mko/5986', N'phuclong_emp2@voucherhub.com', N'Phúc Long Nhân viên 2', N'Hoạt động', N'DoiTac')
GO
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [TenDangNhap], [MatKhau], [Email], [HoTenNguoiDung], [TrangThaiTaiKhoan], [LoaiTK]) VALUES (13, N'phuclong_emp3', N'$2b$10$O73zRtQGdHgsRk7oOMhw/uKYWV16HsjyJ7QgdDhMayK1pYScqrTH6', N'phuclong_emp3@voucherhub.com', N'Phúc Long Nhân viên 3', N'Hoạt động', N'DoiTac')
GO
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [TenDangNhap], [MatKhau], [Email], [HoTenNguoiDung], [TrangThaiTaiKhoan], [LoaiTK]) VALUES (14, N'customer1', N'$2b$10$fAMfcGtSNFmCII.KCf3ku.9d0dk9MALNqBCWLR.YMkUkDF0l6yT.S', N'customer1@gmail.com', N'Nguyễn Văn Một', N'Hoạt động', N'KhachHang')
GO
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [TenDangNhap], [MatKhau], [Email], [HoTenNguoiDung], [TrangThaiTaiKhoan], [LoaiTK]) VALUES (15, N'customer2', N'$2b$10$f5NxIwo5l83XuqN9c8yFheChpSjndc/oLbSp6btC.d7jFk9SH0vFO', N'customer2@gmail.com', N'Trần Thị Hai', N'Hoạt động', N'KhachHang')
GO
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [TenDangNhap], [MatKhau], [Email], [HoTenNguoiDung], [TrangThaiTaiKhoan], [LoaiTK]) VALUES (16, N'customer3', N'$2b$10$sBKFESFbI4rRDHqx3EP1Aeork/O/C8VP/BuIIzA6ok5Ow89YnpQr6', N'customer3@gmail.com', N'Lê Văn Ba', N'Hoạt động', N'KhachHang')
GO
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [TenDangNhap], [MatKhau], [Email], [HoTenNguoiDung], [TrangThaiTaiKhoan], [LoaiTK]) VALUES (17, N'customer4', N'$2b$10$QMckUWcugPsWCb17LoqPP.AMcLrF2vyQcCm7rqjbMUG5wBbwbWfj.', N'customer4@gmail.com', N'Phạm Thị Bốn', N'Hoạt động', N'KhachHang')
GO
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [TenDangNhap], [MatKhau], [Email], [HoTenNguoiDung], [TrangThaiTaiKhoan], [LoaiTK]) VALUES (18, N'customer5', N'$2b$10$0fZ42xlw1RGnr9je3jXXQODFUIw4iCz4antTR5nNpX7.RfOLd1Ubm', N'customer5@gmail.com', N'Hoàng Văn Năm', N'Hoạt động', N'KhachHang')
GO
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [TenDangNhap], [MatKhau], [Email], [HoTenNguoiDung], [TrangThaiTaiKhoan], [LoaiTK]) VALUES (19, N'Nhanvientest1', N'$2b$10$0QnOkhZPBVnf/cxBHoFkh./nVCMdvQKbi8vXTNEgyDbaJRZdS.l/O', N'nv1test@gmail.com', N'CtyATest', N'Hoạt động', NULL)
GO
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [TenDangNhap], [MatKhau], [Email], [HoTenNguoiDung], [TrangThaiTaiKhoan], [LoaiTK]) VALUES (20, N'Nhanvientest2', N'$2b$10$qNujH4sx2vMSrSYIGtGjmunnp471Dix1hsf3aXs5k/ohLfBZuOsR.', N'nv2test@gmail.com', N'CtyBTest', N'Hoạt động', NULL)
GO
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [TenDangNhap], [MatKhau], [Email], [HoTenNguoiDung], [TrangThaiTaiKhoan], [LoaiTK]) VALUES (24, N'Nhanvientest3', N'$2b$10$pYLkgDMt/Zv9Xv1J7Ki3P.jbtEdXGbf2TCsQtT8i78jtPwcjfkiMK', N'nv3test@gmail.com', N'CtyBTest', N'Hoạt động', NULL)
GO
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [TenDangNhap], [MatKhau], [Email], [HoTenNguoiDung], [TrangThaiTaiKhoan], [LoaiTK]) VALUES (28, N'Lockheed_Martini', N'$2b$10$mYzNIMTMxloFx3erZN8lfuJT9QDk68Twfh4UzRuQLzGYGCpGM4I9K', N'LockheedMartin_employee1@gmail.com', N'Lockheed Martin', N'Bị khóa', NULL)
GO
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [TenDangNhap], [MatKhau], [Email], [HoTenNguoiDung], [TrangThaiTaiKhoan], [LoaiTK]) VALUES (29, N'test1', N'$2b$10$JwwTdGgNgl8S374DhDBmW.H90yEQ2giNnCtHP8b0Qlz3Gf8blHWay', N'test1@gmail.com', N'Phạm Văn Test', N'Hoạt động', NULL)
GO
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [TenDangNhap], [MatKhau], [Email], [HoTenNguoiDung], [TrangThaiTaiKhoan], [LoaiTK]) VALUES (30, N'customer_beta', N'$2b$10$k4YEVCFGLkbgK6BqLIh4ku.u.2C3uF9/4kqC.tTLDGQKsrEfBVppy', N'customer_beta@gmail.com', N'To full release', N'Hoạt động', NULL)
GO
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [TenDangNhap], [MatKhau], [Email], [HoTenNguoiDung], [TrangThaiTaiKhoan], [LoaiTK]) VALUES (31, N'Nguyen Van CGV', N'$2b$10$63tkMf2EbbPJVqJTn81d0e5BpAbSQ1dtrpFlnmg8MbGGJrb3z/yEq', N'cgv_employee@testgmail.com', N'Nguyen Van CGV', N'Hoạt động', NULL)
GO
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [TenDangNhap], [MatKhau], [Email], [HoTenNguoiDung], [TrangThaiTaiKhoan], [LoaiTK]) VALUES (32, N'NguyenVanCGV', N'$2b$10$9JyfQB.SJzPEANMoQ9aVMO8.4F4x5HjaFQt6Zednqtpw8Yp.xTmH6', N'cgv_employeessss@testgmail.com', N'Nguyen Van CGV', N'Hoạt động', N'DoiTac')
GO
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
GO
SET IDENTITY_INSERT [dbo].[Voucher] ON 
GO
INSERT [dbo].[Voucher] ([VoucherID], [MaDanhMuc], [MaDoiTac], [TenVoucher], [MoTaVoucher], [MoTaDieuKien], [GiaGoc], [GiaBan], [ThoiGianBatDau], [ThoiGianKetThuc], [SoLuongChoPhep], [SoLuongDaBan], [TrangThaiVoucher], [ChinhSachHoanTien], [HuongDanSuDung], [ImageUrl], [ThoiGianBatDauBan], [ThoiGianKetThucBan]) VALUES (1, 1, 1, N'E-Voucher Highlands Coffee 50k', N'Áp dụng mua nước và bánh tại hệ thống Highlands Coffee toàn quốc.', N'Mỗi hóa đơn chỉ áp dụng 1 voucher. Không áp dụng chung khuyến mãi khác.', CAST(50000.00 AS Decimal(18, 2)), CAST(45000.00 AS Decimal(18, 2)), CAST(N'2026-01-01T00:00:00.000' AS DateTime), CAST(N'2026-06-01T23:59:59.000' AS DateTime), 1000, 15, N'Đang hoạt động', N'Voucher không có giá trị quy đổi thành tiền mặt. Không hoàn trả tiền thừa.', N'Đưa mã voucher cho nhân viên thu ngân quét khi thanh toán.', N'/uploads/vouchers/partner_1_highlands-coffee/highlands_50k.jpg', CAST(N'2026-01-01T00:00:00.000' AS DateTime), CAST(N'2026-06-01T23:59:59.000' AS DateTime))
GO
INSERT [dbo].[Voucher] ([VoucherID], [MaDanhMuc], [MaDoiTac], [TenVoucher], [MoTaVoucher], [MoTaDieuKien], [GiaGoc], [GiaBan], [ThoiGianBatDau], [ThoiGianKetThuc], [SoLuongChoPhep], [SoLuongDaBan], [TrangThaiVoucher], [ChinhSachHoanTien], [HuongDanSuDung], [ImageUrl], [ThoiGianBatDauBan], [ThoiGianKetThucBan]) VALUES (2, 1, 1, N'Combo 2 Cà Phê Sữa Đá Size M', N'Thưởng thức combo 2 ly cà phê sữa đá truyền thống đậm đà.', N'Chỉ áp dụng cho size M. Có thể bù thêm tiền để up size L.', CAST(78000.00 AS Decimal(18, 2)), CAST(59000.00 AS Decimal(18, 2)), CAST(N'2026-02-01T00:00:00.000' AS DateTime), CAST(N'2026-08-31T23:59:59.000' AS DateTime), 500, 1, N'Đang hoạt động', N'Không hoàn tiền sau khi mua.', N'Xuất trình e-voucher cho nhân viên tại quầy order.', N'/uploads/vouchers/partner_1_highlands-coffee/highlands_combo.jpg', CAST(N'2026-02-01T00:00:00.000' AS DateTime), CAST(N'2026-08-31T23:59:59.000' AS DateTime))
GO
INSERT [dbo].[Voucher] ([VoucherID], [MaDanhMuc], [MaDoiTac], [TenVoucher], [MoTaVoucher], [MoTaDieuKien], [GiaGoc], [GiaBan], [ThoiGianBatDau], [ThoiGianKetThuc], [SoLuongChoPhep], [SoLuongDaBan], [TrangThaiVoucher], [ChinhSachHoanTien], [HuongDanSuDung], [ImageUrl], [ThoiGianBatDauBan], [ThoiGianKetThucBan]) VALUES (3, 1, 1, N'Giảm 20k Cho Hóa Đơn Freeze Trà Xanh', N'Khuyến mãi đặc biệt dành riêng cho dòng sản phẩm Freeze Trà Xanh.', N'Áp dụng cho hóa đơn từ 65k có chứa Freeze Trà Xanh.', CAST(20000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(N'2026-03-01T00:00:00.000' AS DateTime), CAST(N'2026-09-30T23:59:59.000' AS DateTime), 300, 0, N'Đang hoạt động', N'Không đổi trả.', N'Quét mã vạch khi thanh toán.', N'/uploads/vouchers/partner_1_highlands-coffee/highlands_freeze.jpg', CAST(N'2026-03-01T00:00:00.000' AS DateTime), CAST(N'2026-09-30T23:59:59.000' AS DateTime))
GO
INSERT [dbo].[Voucher] ([VoucherID], [MaDanhMuc], [MaDoiTac], [TenVoucher], [MoTaVoucher], [MoTaDieuKien], [GiaGoc], [GiaBan], [ThoiGianBatDau], [ThoiGianKetThuc], [SoLuongChoPhep], [SoLuongDaBan], [TrangThaiVoucher], [ChinhSachHoanTien], [HuongDanSuDung], [ImageUrl], [ThoiGianBatDauBan], [ThoiGianKetThucBan]) VALUES (4, 1, 1, N'Voucher Highlands 100k (Chờ Duyệt)', N'Phiếu quà tặng điện tử mua sắm sản phẩm ăn uống tại Highlands.', N'Áp dụng toàn quốc.', CAST(100000.00 AS Decimal(18, 2)), CAST(90000.00 AS Decimal(18, 2)), CAST(N'2026-06-01T00:00:00.000' AS DateTime), CAST(N'2026-12-31T23:59:59.000' AS DateTime), 200, 0, N'Chờ duyệt', N'Không hoàn tiền.', N'Quét mã thanh toán.', N'/uploads/vouchers/partner_1_highlands-coffee/highlands_100k.jpg', CAST(N'2026-06-01T00:00:00.000' AS DateTime), CAST(N'2026-12-31T23:59:59.000' AS DateTime))
GO
INSERT [dbo].[Voucher] ([VoucherID], [MaDanhMuc], [MaDoiTac], [TenVoucher], [MoTaVoucher], [MoTaDieuKien], [GiaGoc], [GiaBan], [ThoiGianBatDau], [ThoiGianKetThuc], [SoLuongChoPhep], [SoLuongDaBan], [TrangThaiVoucher], [ChinhSachHoanTien], [HuongDanSuDung], [ImageUrl], [ThoiGianBatDauBan], [ThoiGianKetThucBan]) VALUES (5, 1, 1, N'Voucher Mua 1 Tặng 1 Trà Sen Vàng', N'Mua 1 Trà Sen Vàng size L tặng 1 ly cùng size hoặc nhỏ hơn.', N'Chỉ áp dụng khung giờ 14h - 18h hàng ngày.', CAST(45000.00 AS Decimal(18, 2)), CAST(10000.00 AS Decimal(18, 2)), CAST(N'2026-01-01T00:00:00.000' AS DateTime), CAST(N'2026-10-31T23:59:59.000' AS DateTime), 400, 0, N'Tạm ngưng', N'Không hoàn tiền.', N'Đưa nhân viên quét mã trước khi in bill.', N'/uploads/vouchers/partner_1_highlands-coffee/highlands_m1t1.jpg', CAST(N'2026-01-01T00:00:00.000' AS DateTime), CAST(N'2026-10-31T23:59:59.000' AS DateTime))
GO
INSERT [dbo].[Voucher] ([VoucherID], [MaDanhMuc], [MaDoiTac], [TenVoucher], [MoTaVoucher], [MoTaDieuKien], [GiaGoc], [GiaBan], [ThoiGianBatDau], [ThoiGianKetThuc], [SoLuongChoPhep], [SoLuongDaBan], [TrangThaiVoucher], [ChinhSachHoanTien], [HuongDanSuDung], [ImageUrl], [ThoiGianBatDauBan], [ThoiGianKetThucBan]) VALUES (6, 1, 1, N'Voucher Mới Nháp Highlands', N'Mô tả nháp.', N'Điều kiện nháp.', CAST(50000.00 AS Decimal(18, 2)), CAST(40000.00 AS Decimal(18, 2)), CAST(N'2026-06-01T00:00:00.000' AS DateTime), CAST(N'2026-12-31T23:59:59.000' AS DateTime), 100, 0, N'Bản nháp', N'Không hoàn tiền.', N'Không có.', N'/uploads/vouchers/partner_1_highlands-coffee/highlands_draft.jpg', CAST(N'2026-06-01T00:00:00.000' AS DateTime), CAST(N'2026-12-31T23:59:59.000' AS DateTime))
GO
INSERT [dbo].[Voucher] ([VoucherID], [MaDanhMuc], [MaDoiTac], [TenVoucher], [MoTaVoucher], [MoTaDieuKien], [GiaGoc], [GiaBan], [ThoiGianBatDau], [ThoiGianKetThuc], [SoLuongChoPhep], [SoLuongDaBan], [TrangThaiVoucher], [ChinhSachHoanTien], [HuongDanSuDung], [ImageUrl], [ThoiGianBatDauBan], [ThoiGianKetThucBan]) VALUES (7, 2, 2, N'Vé Xem Phim 2D CGV Toàn Quốc', N'Đổi 1 vé xem phim định dạng 2D tại tất cả các rạp CGV.', N'Chỉ áp dụng cho phim 2D, ghế thường/VIP. Không áp dụng suất chiếu đặc biệt.', CAST(110000.00 AS Decimal(18, 2)), CAST(85000.00 AS Decimal(18, 2)), CAST(N'2026-01-01T00:00:00.000' AS DateTime), CAST(N'2026-12-31T23:59:59.000' AS DateTime), 2000, 9, N'Đang hoạt động', N'Vé đã mua miễn đổi trả.', N'Nhập mã code trên app CGV hoặc đưa trực tiếp tại quầy vé.', N'/uploads/vouchers/partner_2_cgv-cinemas/cgv_2d.jpg', CAST(N'2026-01-01T00:00:00.000' AS DateTime), CAST(N'2026-12-31T23:59:59.000' AS DateTime))
GO
INSERT [dbo].[Voucher] ([VoucherID], [MaDanhMuc], [MaDoiTac], [TenVoucher], [MoTaVoucher], [MoTaDieuKien], [GiaGoc], [GiaBan], [ThoiGianBatDau], [ThoiGianKetThuc], [SoLuongChoPhep], [SoLuongDaBan], [TrangThaiVoucher], [ChinhSachHoanTien], [HuongDanSuDung], [ImageUrl], [ThoiGianBatDauBan], [ThoiGianKetThucBan]) VALUES (8, 2, 2, N'Combo CGV 1 Bắp + 2 Nước Ngọt', N'Combo bắp ngọt size L và 2 nước ngọt size M.', N'Đổi tại quầy bắp nước của CGV.', CAST(115000.00 AS Decimal(18, 2)), CAST(89000.00 AS Decimal(18, 2)), CAST(N'2026-02-01T00:00:00.000' AS DateTime), CAST(N'2026-11-30T23:59:59.000' AS DateTime), 1000, 6, N'Đang hoạt động', N'Không hoàn tiền.', N'Quét mã tại quầy nhận bắp nước.', N'/uploads/vouchers/partner_2_cgv-cinemas/cgv_combo.jpg', CAST(N'2026-02-01T00:00:00.000' AS DateTime), CAST(N'2026-11-30T23:59:59.000' AS DateTime))
GO
INSERT [dbo].[Voucher] ([VoucherID], [MaDanhMuc], [MaDoiTac], [TenVoucher], [MoTaVoucher], [MoTaDieuKien], [GiaGoc], [GiaBan], [ThoiGianBatDau], [ThoiGianKetThuc], [SoLuongChoPhep], [SoLuongDaBan], [TrangThaiVoucher], [ChinhSachHoanTien], [HuongDanSuDung], [ImageUrl], [ThoiGianBatDauBan], [ThoiGianKetThucBan]) VALUES (9, 2, 2, N'Voucher Giảm 50k Vé IMAX', N'Giảm trực tiếp 50k khi mua vé xem phim phòng chiếu IMAX.', N'Áp dụng cho mọi suất chiếu IMAX.', CAST(50000.00 AS Decimal(18, 2)), CAST(10000.00 AS Decimal(18, 2)), CAST(N'2026-03-01T00:00:00.000' AS DateTime), CAST(N'2026-12-31T23:59:59.000' AS DateTime), 500, 0, N'Chờ duyệt', N'Không hoàn tiền.', N'Áp dụng khi book vé online trên App.', N'/uploads/vouchers/partner_2_cgv-cinemas/cgv_imax.jpg', CAST(N'2026-03-01T00:00:00.000' AS DateTime), CAST(N'2026-12-31T23:59:59.000' AS DateTime))
GO
INSERT [dbo].[Voucher] ([VoucherID], [MaDanhMuc], [MaDoiTac], [TenVoucher], [MoTaVoucher], [MoTaDieuKien], [GiaGoc], [GiaBan], [ThoiGianBatDau], [ThoiGianKetThuc], [SoLuongChoPhep], [SoLuongDaBan], [TrangThaiVoucher], [ChinhSachHoanTien], [HuongDanSuDung], [ImageUrl], [ThoiGianBatDauBan], [ThoiGianKetThucBan]) VALUES (10, 2, 2, N'Combo Cặp Đôi CGV Sweetbox', N'2 vé xem phim ghế đôi Sweetbox và 1 combo bắp nước lớn.', N'Áp dụng cho ghế Sweetbox.', CAST(320000.00 AS Decimal(18, 2)), CAST(260000.00 AS Decimal(18, 2)), CAST(N'2026-01-01T00:00:00.000' AS DateTime), CAST(N'2026-08-31T23:59:59.000' AS DateTime), 300, 0, N'Tạm ngưng', N'Không hoàn trả.', N'Quét mã tại quầy vé.', N'/uploads/vouchers/partner_2_cgv-cinemas/cgv_sweetbox.jpg', CAST(N'2026-01-01T00:00:00.000' AS DateTime), CAST(N'2026-08-31T23:59:59.000' AS DateTime))
GO
INSERT [dbo].[Voucher] ([VoucherID], [MaDanhMuc], [MaDoiTac], [TenVoucher], [MoTaVoucher], [MoTaDieuKien], [GiaGoc], [GiaBan], [ThoiGianBatDau], [ThoiGianKetThuc], [SoLuongChoPhep], [SoLuongDaBan], [TrangThaiVoucher], [ChinhSachHoanTien], [HuongDanSuDung], [ImageUrl], [ThoiGianBatDauBan], [ThoiGianKetThucBan]) VALUES (11, 2, 2, N'Voucher CGV Nháp', N'Bản nháp voucher CGV.', N'Điều kiện nháp.', CAST(100000.00 AS Decimal(18, 2)), CAST(80000.00 AS Decimal(18, 2)), CAST(N'2026-06-01T00:00:00.000' AS DateTime), CAST(N'2026-12-31T23:59:59.000' AS DateTime), 50, 0, N'Bản nháp', N'Không.', N'Không.', N'/uploads/vouchers/partner_2_cgv-cinemas/cgv_draft.jpg', CAST(N'2026-06-01T00:00:00.000' AS DateTime), CAST(N'2026-12-31T23:59:59.000' AS DateTime))
GO
INSERT [dbo].[Voucher] ([VoucherID], [MaDanhMuc], [MaDoiTac], [TenVoucher], [MoTaVoucher], [MoTaDieuKien], [GiaGoc], [GiaBan], [ThoiGianBatDau], [ThoiGianKetThuc], [SoLuongChoPhep], [SoLuongDaBan], [TrangThaiVoucher], [ChinhSachHoanTien], [HuongDanSuDung], [ImageUrl], [ThoiGianBatDauBan], [ThoiGianKetThucBan]) VALUES (12, 1, 3, N'E-Voucher Phúc Long Trị Giá 50k', N'Phiếu mua hàng điện tử thanh toán nước/bánh tại Phúc Long.', N'Hóa đơn phải lớn hơn hoặc bằng giá trị voucher.', CAST(50000.00 AS Decimal(18, 2)), CAST(46000.00 AS Decimal(18, 2)), CAST(N'2026-01-01T00:00:00.000' AS DateTime), CAST(N'2026-12-31T23:59:59.000' AS DateTime), 1500, 5, N'Đang hoạt động', N'Voucher không quy đổi thành tiền mặt.', N'Đưa cho nhân viên quầy thu ngân quét khi thanh toán.', N'/uploads/vouchers/partner_3_phuc-long/phuclong_50k.jpg', CAST(N'2026-01-01T00:00:00.000' AS DateTime), CAST(N'2026-12-31T23:59:59.000' AS DateTime))
GO
INSERT [dbo].[Voucher] ([VoucherID], [MaDanhMuc], [MaDoiTac], [TenVoucher], [MoTaVoucher], [MoTaDieuKien], [GiaGoc], [GiaBan], [ThoiGianBatDau], [ThoiGianKetThuc], [SoLuongChoPhep], [SoLuongDaBan], [TrangThaiVoucher], [ChinhSachHoanTien], [HuongDanSuDung], [ImageUrl], [ThoiGianBatDauBan], [ThoiGianKetThucBan]) VALUES (13, 1, 3, N'Voucher Trà Đào Sữa Size L 35k', N'Thưởng thức dòng Trà Đào Sữa trứ danh của Phúc Long size L.', N'Chỉ áp dụng cho món Trà đào sữa ly size L.', CAST(55000.00 AS Decimal(18, 2)), CAST(35000.00 AS Decimal(18, 2)), CAST(N'2026-02-01T00:00:00.000' AS DateTime), CAST(N'2026-10-31T23:59:59.000' AS DateTime), 800, 7, N'Đang hoạt động', N'Không hoàn tiền.', N'Cung cấp mã cho thu ngân trước khi gọi món.', N'/uploads/vouchers/partner_3_phuc-long/phuclong_tradaosua.jpg', CAST(N'2026-02-01T00:00:00.000' AS DateTime), CAST(N'2026-10-31T23:59:59.000' AS DateTime))
GO
INSERT [dbo].[Voucher] ([VoucherID], [MaDanhMuc], [MaDoiTac], [TenVoucher], [MoTaVoucher], [MoTaDieuKien], [GiaGoc], [GiaBan], [ThoiGianBatDau], [ThoiGianKetThuc], [SoLuongChoPhep], [SoLuongDaBan], [TrangThaiVoucher], [ChinhSachHoanTien], [HuongDanSuDung], [ImageUrl], [ThoiGianBatDauBan], [ThoiGianKetThucBan]) VALUES (14, 1, 3, N'Voucher Phúc Long 100k', N'Mã giảm giá mua sắm sản phẩm của hệ thống Phúc Long.', N'Không tách hóa đơn để hưởng nhiều voucher.', CAST(100000.00 AS Decimal(18, 2)), CAST(92000.00 AS Decimal(18, 2)), CAST(N'2026-01-01T00:00:00.000' AS DateTime), CAST(N'2026-12-31T23:59:59.000' AS DateTime), 600, 4, N'Đang hoạt động', N'Không hoàn tiền thừa.', N'Quét mã tại quầy thanh toán.', N'/uploads/vouchers/partner_3_phuc-long/phuclong_100k.jpg', CAST(N'2026-01-01T00:00:00.000' AS DateTime), CAST(N'2026-12-31T23:59:59.000' AS DateTime))
GO
INSERT [dbo].[Voucher] ([VoucherID], [MaDanhMuc], [MaDoiTac], [TenVoucher], [MoTaVoucher], [MoTaDieuKien], [GiaGoc], [GiaBan], [ThoiGianBatDau], [ThoiGianKetThuc], [SoLuongChoPhep], [SoLuongDaBan], [TrangThaiVoucher], [ChinhSachHoanTien], [HuongDanSuDung], [ImageUrl], [ThoiGianBatDauBan], [ThoiGianKetThucBan]) VALUES (15, 1, 3, N'Voucher Phúc Long Chờ Duyệt', N'Khuyến mãi đặc biệt giảm 20% tổng hóa đơn nước.', N'Áp dụng hóa đơn dưới 500k.', CAST(50000.00 AS Decimal(18, 2)), CAST(40000.00 AS Decimal(18, 2)), CAST(N'2026-06-01T00:00:00.000' AS DateTime), CAST(N'2026-12-31T23:59:59.000' AS DateTime), 200, 0, N'Chờ duyệt', N'Không hoàn trả.', N'Quét mã vạch.', N'/uploads/vouchers/partner_3_phuc-long/phuclong_pending.jpg', CAST(N'2026-06-01T00:00:00.000' AS DateTime), CAST(N'2026-12-31T23:59:59.000' AS DateTime))
GO
INSERT [dbo].[Voucher] ([VoucherID], [MaDanhMuc], [MaDoiTac], [TenVoucher], [MoTaVoucher], [MoTaDieuKien], [GiaGoc], [GiaBan], [ThoiGianBatDau], [ThoiGianKetThuc], [SoLuongChoPhep], [SoLuongDaBan], [TrangThaiVoucher], [ChinhSachHoanTien], [HuongDanSuDung], [ImageUrl], [ThoiGianBatDauBan], [ThoiGianKetThucBan]) VALUES (16, 1, 3, N'Voucher Phúc Long Nháp', N'Bản nháp của Phúc Long.', N'Điều kiện nháp.', CAST(50000.00 AS Decimal(18, 2)), CAST(45000.00 AS Decimal(18, 2)), CAST(N'2026-06-01T00:00:00.000' AS DateTime), CAST(N'2026-12-31T23:59:59.000' AS DateTime), 100, 0, N'Bản nháp', N'Không.', N'Không.', N'/uploads/vouchers/partner_3_phuc-long/phuclong_draft.jpg', CAST(N'2026-06-01T00:00:00.000' AS DateTime), CAST(N'2026-12-31T23:59:59.000' AS DateTime))
GO
INSERT [dbo].[Voucher] ([VoucherID], [MaDanhMuc], [MaDoiTac], [TenVoucher], [MoTaVoucher], [MoTaDieuKien], [GiaGoc], [GiaBan], [ThoiGianBatDau], [ThoiGianKetThuc], [SoLuongChoPhep], [SoLuongDaBan], [TrangThaiVoucher], [ChinhSachHoanTien], [HuongDanSuDung], [ImageUrl], [ThoiGianBatDauBan], [ThoiGianKetThucBan]) VALUES (17, 1, 4, N'Buffet no nê', N'Ăn thỏa thích', N'Áp dụng từ thứ 2 đến thứ 6', CAST(1000000.00 AS Decimal(18, 2)), CAST(800000.00 AS Decimal(18, 2)), CAST(N'2026-06-01T00:00:00.000' AS DateTime), CAST(N'2026-06-24T00:00:00.000' AS DateTime), 100, 1, N'Đang hoạt động', N'Hoàn 50%', NULL, N'/uploads/vouchers/partner_4_ctyatest/voucher_17_buffet-no-ne_01_1781082740906.jpg', CAST(N'2026-06-01T00:00:00.000' AS DateTime), CAST(N'2026-06-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Voucher] ([VoucherID], [MaDanhMuc], [MaDoiTac], [TenVoucher], [MoTaVoucher], [MoTaDieuKien], [GiaGoc], [GiaBan], [ThoiGianBatDau], [ThoiGianKetThuc], [SoLuongChoPhep], [SoLuongDaBan], [TrangThaiVoucher], [ChinhSachHoanTien], [HuongDanSuDung], [ImageUrl], [ThoiGianBatDauBan], [ThoiGianKetThucBan]) VALUES (18, 1, 5, N'Buffet Hải sản 599k', N'Thưởng thức thực đơn buffet hơn 50 món nướng và lẩu đặc sắc, từ bò Mỹ thượng hạng đến hải sản tươi sống được phục vụ tại bàn. Miễn phí quầy line nước ngọt, kem tươi và hoa quả tráng miệng.', N'Áp dụng vào tất cả các ngày trong tuần (Từ Thứ 2 đến Chủ Nhật).

Chưa bao gồm thuế VAT (Nhà hàng thu 10% tại quầy).

Vé trẻ em dưới 1m1 được miễn phí, từ 1m1 đến 1m3 tính phí trực tiếp tại nhà hàng.

Không áp dụng đồng thời với các chương trình khuyến mãi khác của K-BBQ.', CAST(599000.00 AS Decimal(18, 2)), CAST(499000.00 AS Decimal(18, 2)), CAST(N'2026-06-02T00:00:00.000' AS DateTime), CAST(N'2026-06-30T00:00:00.000' AS DateTime), 2, 2, N'Đang hoạt động', N'Hoàn tiền 50% nếu voucher hết hạn mà khách hàng chưa sử dụng. Không hỗ trợ hoàn hủy khi mã đã được quét kích hoạt.', NULL, N'/uploads/vouchers/partner_5_ctybtest/voucher_18_buffet-hai-san-599k_01_1781087026447.jpg', CAST(N'2026-06-01T00:00:00.000' AS DateTime), CAST(N'2026-06-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Voucher] ([VoucherID], [MaDanhMuc], [MaDoiTac], [TenVoucher], [MoTaVoucher], [MoTaDieuKien], [GiaGoc], [GiaBan], [ThoiGianBatDau], [ThoiGianKetThuc], [SoLuongChoPhep], [SoLuongDaBan], [TrangThaiVoucher], [ChinhSachHoanTien], [HuongDanSuDung], [ImageUrl], [ThoiGianBatDauBan], [ThoiGianKetThucBan]) VALUES (19, 1, 6, N'Buffet Nướng 599k', N'Thưởng thức thực đơn buffet hơn 50 món nướng và lẩu đặc sắc, từ bò Mỹ thượng hạng đến hải sản tươi sống được phục vụ tại bàn. Miễn phí quầy line nước ngọt, kem tươi và hoa quả tráng miệng.', N'Áp dụng vào tất cả các ngày trong tuần (Từ Thứ 2 đến Chủ Nhật).

Chưa bao gồm thuế VAT (Nhà hàng thu 10% tại quầy).

Vé trẻ em dưới 1m1 được miễn phí, từ 1m1 đến 1m3 tính phí trực tiếp tại nhà hàng.

Không áp dụng đồng thời với các chương trình khuyến mãi khác của K-BBQ.', CAST(599000.00 AS Decimal(18, 2)), CAST(499000.00 AS Decimal(18, 2)), CAST(N'2026-06-01T00:00:00.000' AS DateTime), CAST(N'2026-06-30T00:00:00.000' AS DateTime), 2, 0, N'Từ chối', N'Hoàn tiền 100% nếu voucher hết hạn mà khách hàng chưa sử dụng. Không hỗ trợ hoàn hủy khi mã đã được quét kích hoạt.', NULL, N'/uploads/vouchers/partner_6_ctybtest/voucher_19_buffet-nuong-599k_01_1781089420853.jpg', CAST(N'2026-06-01T00:00:00.000' AS DateTime), CAST(N'2026-06-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Voucher] ([VoucherID], [MaDanhMuc], [MaDoiTac], [TenVoucher], [MoTaVoucher], [MoTaDieuKien], [GiaGoc], [GiaBan], [ThoiGianBatDau], [ThoiGianKetThuc], [SoLuongChoPhep], [SoLuongDaBan], [TrangThaiVoucher], [ChinhSachHoanTien], [HuongDanSuDung], [ImageUrl], [ThoiGianBatDauBan], [ThoiGianKetThucBan]) VALUES (20, 1, 6, N'Buffet Nướng 599k', N'Thưởng thức thực đơn buffet hơn 50 món nướng và lẩu đặc sắc, từ bò Mỹ thượng hạng đến hải sản tươi sống được phục vụ tại bàn. Miễn phí quầy line nước ngọt, kem tươi và hoa quả tráng miệng.', N'Áp dụng vào tất cả các ngày trong tuần (Từ Thứ 2 đến Chủ Nhật).

Chưa bao gồm thuế VAT (Nhà hàng thu 10% tại quầy).

Vé trẻ em dưới 1m1 được miễn phí, từ 1m1 đến 1m3 tính phí trực tiếp tại nhà hàng.

Không áp dụng đồng thời với các chương trình khuyến mãi khác của K-BBQ.', CAST(599000.00 AS Decimal(18, 2)), CAST(499000.00 AS Decimal(18, 2)), CAST(N'2026-06-01T00:00:00.000' AS DateTime), CAST(N'2026-06-30T00:00:00.000' AS DateTime), 2, 0, N'Đang hoạt động', N'Hoàn tiền 100% nếu voucher hết hạn mà khách hàng chưa sử dụng. Không hỗ trợ hoàn hủy khi mã đã được quét kích hoạt.', NULL, N'/uploads/temp/temp_image-1781089364977-572055569.jpg', CAST(N'2026-06-01T00:00:00.000' AS DateTime), CAST(N'2026-06-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Voucher] ([VoucherID], [MaDanhMuc], [MaDoiTac], [TenVoucher], [MoTaVoucher], [MoTaDieuKien], [GiaGoc], [GiaBan], [ThoiGianBatDau], [ThoiGianKetThuc], [SoLuongChoPhep], [SoLuongDaBan], [TrangThaiVoucher], [ChinhSachHoanTien], [HuongDanSuDung], [ImageUrl], [ThoiGianBatDauBan], [ThoiGianKetThucBan]) VALUES (21, 1, 6, N'Buffet Cầu Vồng', N'Thưởng thức thực đơn buffet hơn 50 món nướng và lẩu đặc sắc, từ bò Mỹ thượng hạng đến hải sản tươi sống được phục vụ tại bàn. Miễn phí quầy line nước ngọt, kem tươi và hoa quả tráng miệng.', N'Áp dụng vào tất cả các ngày trong tuần (Từ Thứ 2 đến Chủ Nhật).

Chưa bao gồm thuế VAT (Nhà hàng thu 10% tại quầy).

Vé trẻ em dưới 1m1 được miễn phí, từ 1m1 đến 1m3 tính phí trực tiếp tại nhà hàng.

Không áp dụng đồng thời với các chương trình khuyến mãi khác của K-BBQ.', CAST(599000.00 AS Decimal(18, 2)), CAST(499000.00 AS Decimal(18, 2)), CAST(N'2026-06-10T00:00:00.000' AS DateTime), CAST(N'2026-06-30T00:00:00.000' AS DateTime), 2, 2, N'Đang hoạt động', N'Hoàn tiền 100% nếu voucher hết hạn mà khách hàng chưa sử dụng. Không hỗ trợ hoàn hủy khi mã đã được quét kích hoạt.', NULL, N'/uploads/vouchers/partner_6_ctybtest/voucher_21_buffet-cau-vong_01_1781089575364.jpg', CAST(N'2026-06-10T00:00:00.000' AS DateTime), CAST(N'2026-06-30T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Voucher] OFF
GO
SET IDENTITY_INSERT [dbo].[Voucher_ChiNhanh] ON 
GO
INSERT [dbo].[Voucher_ChiNhanh] ([STT], [VoucherID], [MaChiNhanh], [TrangThaiApDung]) VALUES (1, 1, 1, N'Đang áp dụng')
GO
INSERT [dbo].[Voucher_ChiNhanh] ([STT], [VoucherID], [MaChiNhanh], [TrangThaiApDung]) VALUES (2, 1, 2, N'Đang áp dụng')
GO
INSERT [dbo].[Voucher_ChiNhanh] ([STT], [VoucherID], [MaChiNhanh], [TrangThaiApDung]) VALUES (3, 1, 3, N'Đang áp dụng')
GO
INSERT [dbo].[Voucher_ChiNhanh] ([STT], [VoucherID], [MaChiNhanh], [TrangThaiApDung]) VALUES (4, 1, 4, N'Đang áp dụng')
GO
INSERT [dbo].[Voucher_ChiNhanh] ([STT], [VoucherID], [MaChiNhanh], [TrangThaiApDung]) VALUES (5, 2, 1, N'Đang áp dụng')
GO
INSERT [dbo].[Voucher_ChiNhanh] ([STT], [VoucherID], [MaChiNhanh], [TrangThaiApDung]) VALUES (6, 2, 2, N'Đang áp dụng')
GO
INSERT [dbo].[Voucher_ChiNhanh] ([STT], [VoucherID], [MaChiNhanh], [TrangThaiApDung]) VALUES (7, 2, 3, N'Đang áp dụng')
GO
INSERT [dbo].[Voucher_ChiNhanh] ([STT], [VoucherID], [MaChiNhanh], [TrangThaiApDung]) VALUES (8, 2, 4, N'Đang áp dụng')
GO
INSERT [dbo].[Voucher_ChiNhanh] ([STT], [VoucherID], [MaChiNhanh], [TrangThaiApDung]) VALUES (9, 3, 1, N'Đang áp dụng')
GO
INSERT [dbo].[Voucher_ChiNhanh] ([STT], [VoucherID], [MaChiNhanh], [TrangThaiApDung]) VALUES (10, 3, 2, N'Đang áp dụng')
GO
INSERT [dbo].[Voucher_ChiNhanh] ([STT], [VoucherID], [MaChiNhanh], [TrangThaiApDung]) VALUES (11, 3, 3, N'Đang áp dụng')
GO
INSERT [dbo].[Voucher_ChiNhanh] ([STT], [VoucherID], [MaChiNhanh], [TrangThaiApDung]) VALUES (12, 3, 4, N'Đang áp dụng')
GO
INSERT [dbo].[Voucher_ChiNhanh] ([STT], [VoucherID], [MaChiNhanh], [TrangThaiApDung]) VALUES (13, 5, 1, N'Tạm ngưng')
GO
INSERT [dbo].[Voucher_ChiNhanh] ([STT], [VoucherID], [MaChiNhanh], [TrangThaiApDung]) VALUES (14, 5, 2, N'Tạm ngưng')
GO
INSERT [dbo].[Voucher_ChiNhanh] ([STT], [VoucherID], [MaChiNhanh], [TrangThaiApDung]) VALUES (15, 5, 3, N'Tạm ngưng')
GO
INSERT [dbo].[Voucher_ChiNhanh] ([STT], [VoucherID], [MaChiNhanh], [TrangThaiApDung]) VALUES (16, 5, 4, N'Tạm ngưng')
GO
INSERT [dbo].[Voucher_ChiNhanh] ([STT], [VoucherID], [MaChiNhanh], [TrangThaiApDung]) VALUES (17, 7, 5, N'Đang áp dụng')
GO
INSERT [dbo].[Voucher_ChiNhanh] ([STT], [VoucherID], [MaChiNhanh], [TrangThaiApDung]) VALUES (18, 7, 6, N'Đang áp dụng')
GO
INSERT [dbo].[Voucher_ChiNhanh] ([STT], [VoucherID], [MaChiNhanh], [TrangThaiApDung]) VALUES (19, 7, 7, N'Đang áp dụng')
GO
INSERT [dbo].[Voucher_ChiNhanh] ([STT], [VoucherID], [MaChiNhanh], [TrangThaiApDung]) VALUES (20, 8, 5, N'Đang áp dụng')
GO
INSERT [dbo].[Voucher_ChiNhanh] ([STT], [VoucherID], [MaChiNhanh], [TrangThaiApDung]) VALUES (21, 8, 6, N'Đang áp dụng')
GO
INSERT [dbo].[Voucher_ChiNhanh] ([STT], [VoucherID], [MaChiNhanh], [TrangThaiApDung]) VALUES (22, 8, 7, N'Đang áp dụng')
GO
INSERT [dbo].[Voucher_ChiNhanh] ([STT], [VoucherID], [MaChiNhanh], [TrangThaiApDung]) VALUES (23, 10, 5, N'Tạm ngưng')
GO
INSERT [dbo].[Voucher_ChiNhanh] ([STT], [VoucherID], [MaChiNhanh], [TrangThaiApDung]) VALUES (24, 10, 6, N'Tạm ngưng')
GO
INSERT [dbo].[Voucher_ChiNhanh] ([STT], [VoucherID], [MaChiNhanh], [TrangThaiApDung]) VALUES (25, 10, 7, N'Tạm ngưng')
GO
INSERT [dbo].[Voucher_ChiNhanh] ([STT], [VoucherID], [MaChiNhanh], [TrangThaiApDung]) VALUES (26, 12, 8, N'Đang áp dụng')
GO
INSERT [dbo].[Voucher_ChiNhanh] ([STT], [VoucherID], [MaChiNhanh], [TrangThaiApDung]) VALUES (27, 12, 9, N'Đang áp dụng')
GO
INSERT [dbo].[Voucher_ChiNhanh] ([STT], [VoucherID], [MaChiNhanh], [TrangThaiApDung]) VALUES (28, 12, 10, N'Đang áp dụng')
GO
INSERT [dbo].[Voucher_ChiNhanh] ([STT], [VoucherID], [MaChiNhanh], [TrangThaiApDung]) VALUES (29, 12, 11, N'Đang áp dụng')
GO
INSERT [dbo].[Voucher_ChiNhanh] ([STT], [VoucherID], [MaChiNhanh], [TrangThaiApDung]) VALUES (30, 13, 8, N'Đang áp dụng')
GO
INSERT [dbo].[Voucher_ChiNhanh] ([STT], [VoucherID], [MaChiNhanh], [TrangThaiApDung]) VALUES (31, 13, 9, N'Đang áp dụng')
GO
INSERT [dbo].[Voucher_ChiNhanh] ([STT], [VoucherID], [MaChiNhanh], [TrangThaiApDung]) VALUES (32, 13, 10, N'Đang áp dụng')
GO
INSERT [dbo].[Voucher_ChiNhanh] ([STT], [VoucherID], [MaChiNhanh], [TrangThaiApDung]) VALUES (33, 13, 11, N'Đang áp dụng')
GO
INSERT [dbo].[Voucher_ChiNhanh] ([STT], [VoucherID], [MaChiNhanh], [TrangThaiApDung]) VALUES (34, 14, 8, N'Đang áp dụng')
GO
INSERT [dbo].[Voucher_ChiNhanh] ([STT], [VoucherID], [MaChiNhanh], [TrangThaiApDung]) VALUES (35, 14, 9, N'Đang áp dụng')
GO
INSERT [dbo].[Voucher_ChiNhanh] ([STT], [VoucherID], [MaChiNhanh], [TrangThaiApDung]) VALUES (36, 14, 10, N'Đang áp dụng')
GO
INSERT [dbo].[Voucher_ChiNhanh] ([STT], [VoucherID], [MaChiNhanh], [TrangThaiApDung]) VALUES (37, 14, 11, N'Đang áp dụng')
GO
SET IDENTITY_INSERT [dbo].[Voucher_ChiNhanh] OFF
GO
/****** Object:  Index [UQ__Admin__BC5F907D5A930172]    Script Date: 7/4/2026 11:41:23 PM ******/
ALTER TABLE [dbo].[Admin] ADD  CONSTRAINT [UQ__Admin__BC5F907D5A930172] UNIQUE NONCLUSTERED 
(
	[IDTaiKhoan] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__GioHang__BC5F907DA9CC7602]    Script Date: 7/4/2026 11:41:23 PM ******/
ALTER TABLE [dbo].[GioHang] ADD  CONSTRAINT [UQ__GioHang__BC5F907DA9CC7602] UNIQUE NONCLUSTERED 
(
	[IDTaiKhoan] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ_KhachHang_IDTaiKhoan]    Script Date: 7/4/2026 11:41:23 PM ******/
ALTER TABLE [dbo].[KhachHang] ADD  CONSTRAINT [UQ_KhachHang_IDTaiKhoan] UNIQUE NONCLUSTERED 
(
	[IDTaiKhoan] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_principal_name]    Script Date: 7/4/2026 11:41:23 PM ******/
ALTER TABLE [dbo].[sysdiagrams] ADD  CONSTRAINT [UK_principal_name] UNIQUE NONCLUSTERED 
(
	[principal_id] ASC,
	[name] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__TaiKhoan__55F68FC080F4D1C9]    Script Date: 7/4/2026 11:41:23 PM ******/
ALTER TABLE [dbo].[TaiKhoan] ADD  CONSTRAINT [UQ__TaiKhoan__55F68FC080F4D1C9] UNIQUE NONCLUSTERED 
(
	[TenDangNhap] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__TaiKhoan__A9D1053492A35299]    Script Date: 7/4/2026 11:41:23 PM ******/
ALTER TABLE [dbo].[TaiKhoan] ADD  CONSTRAINT [UQ__TaiKhoan__A9D1053492A35299] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BaiViet] ADD  CONSTRAINT [DF__BaiViet__LuotXem__7C1A6C5A]  DEFAULT ((0)) FOR [LuotXem]
GO
ALTER TABLE [dbo].[BaiViet] ADD  CONSTRAINT [DF_BaiViet_TrangThai_Fixed]  DEFAULT ('Nháp') FOR [TrangThai]
GO
ALTER TABLE [dbo].[BaiViet] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[Banner] ADD  CONSTRAINT [DF_Banner_TrangThai_Fixed]  DEFAULT ('Ðang hi?n th?') FOR [TrangThai]
GO
ALTER TABLE [dbo].[Banner] ADD  CONSTRAINT [DF__Banner__ThuTu__76619304]  DEFAULT ((0)) FOR [ThuTu]
GO
ALTER TABLE [dbo].[Banner] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[ChiTietGioHang] ADD  DEFAULT (getdate()) FOR [ThoiGianThem]
GO
ALTER TABLE [dbo].[DanhGia] ADD  DEFAULT (getdate()) FOR [NgayDanhGia]
GO
ALTER TABLE [dbo].[DoiTac] ADD  CONSTRAINT [DF__DoiTac__MoTa__7D0E9093]  DEFAULT ('Chua có mô t?') FOR [MoTa]
GO
ALTER TABLE [dbo].[DoiTac] ADD  CONSTRAINT [DF__DoiTac__NgayTham__7E02B4CC]  DEFAULT (getdate()) FOR [NgayThamGia]
GO
ALTER TABLE [dbo].[DoiTac] ADD  CONSTRAINT [DF__DoiTac__EmailLie__7EF6D905]  DEFAULT ('contact@domain.com') FOR [EmailLienHe]
GO
ALTER TABLE [dbo].[DoiTac] ADD  CONSTRAINT [DF__DoiTac__SDTLienH__7FEAFD3E]  DEFAULT ('0000000000') FOR [SDTLienHe]
GO
ALTER TABLE [dbo].[DoiTac] ADD  CONSTRAINT [DF_DoiTac_GioMoCua]  DEFAULT ('08:00') FOR [GioMoCua]
GO
ALTER TABLE [dbo].[DoiTac] ADD  CONSTRAINT [DF_DoiTac_GioDongCua]  DEFAULT ('22:00') FOR [GioDongCua]
GO
ALTER TABLE [dbo].[DoiTac] ADD  CONSTRAINT [DoiTac_TrangThai_df]  DEFAULT ('Ch? duy?t') FOR [TrangThai]
GO
ALTER TABLE [dbo].[FAQ] ADD  CONSTRAINT [DF__FAQ__ThuTu__01D345B0]  DEFAULT ((0)) FOR [ThuTu]
GO
ALTER TABLE [dbo].[FAQ] ADD  CONSTRAINT [DF_FAQ_TrangThai_Fixed]  DEFAULT ('Hi?n th?') FOR [TrangThai]
GO
ALTER TABLE [dbo].[GioHang] ADD  DEFAULT (getdate()) FOR [ThoiGianTao]
GO
ALTER TABLE [dbo].[SystemLog] ADD  DEFAULT (getdate()) FOR [ThoiGian]
GO
ALTER TABLE [dbo].[Voucher] ADD  CONSTRAINT [DF__Voucher__SoLuong__41EDCAC5]  DEFAULT ((0)) FOR [SoLuongDaBan]
GO
ALTER TABLE [dbo].[Admin]  WITH CHECK ADD  CONSTRAINT [FK_Admin_TaiKhoan] FOREIGN KEY([IDTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([IDTaiKhoan])
GO
ALTER TABLE [dbo].[Admin] CHECK CONSTRAINT [FK_Admin_TaiKhoan]
GO
ALTER TABLE [dbo].[ChiNhanh]  WITH CHECK ADD  CONSTRAINT [FK_ChiNhanh_DoiTac] FOREIGN KEY([MaDoiTac])
REFERENCES [dbo].[DoiTac] ([MaDoiTac])
GO
ALTER TABLE [dbo].[ChiNhanh] CHECK CONSTRAINT [FK_ChiNhanh_DoiTac]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_CTDH_DonHang] FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DonHang] ([MaDonHang])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_CTDH_DonHang]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_CTDH_Voucher] FOREIGN KEY([VoucherID])
REFERENCES [dbo].[Voucher] ([VoucherID])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_CTDH_Voucher]
GO
ALTER TABLE [dbo].[ChiTietGioHang]  WITH CHECK ADD  CONSTRAINT [FK_CTGH_GioHang] FOREIGN KEY([MaGioHang])
REFERENCES [dbo].[GioHang] ([MaGioHang])
GO
ALTER TABLE [dbo].[ChiTietGioHang] CHECK CONSTRAINT [FK_CTGH_GioHang]
GO
ALTER TABLE [dbo].[ChiTietGioHang]  WITH CHECK ADD  CONSTRAINT [FK_CTGH_Voucher] FOREIGN KEY([VoucherID])
REFERENCES [dbo].[Voucher] ([VoucherID])
GO
ALTER TABLE [dbo].[ChiTietGioHang] CHECK CONSTRAINT [FK_CTGH_Voucher]
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD  CONSTRAINT [FK_DanhGia_TaiKhoan] FOREIGN KEY([IDTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([IDTaiKhoan])
GO
ALTER TABLE [dbo].[DanhGia] CHECK CONSTRAINT [FK_DanhGia_TaiKhoan]
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD  CONSTRAINT [FK_DanhGia_Voucher] FOREIGN KEY([VoucherID])
REFERENCES [dbo].[Voucher] ([VoucherID])
GO
ALTER TABLE [dbo].[DanhGia] CHECK CONSTRAINT [FK_DanhGia_Voucher]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_TaiKhoan] FOREIGN KEY([IDTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([IDTaiKhoan])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_TaiKhoan]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_TaiKhoan] FOREIGN KEY([IDTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([IDTaiKhoan])
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_TaiKhoan]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_TaiKhoan] FOREIGN KEY([IDTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([IDTaiKhoan])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_TaiKhoan]
GO
ALTER TABLE [dbo].[MaVoucher]  WITH CHECK ADD  CONSTRAINT [FK_MaVoucher_ChiNhanh] FOREIGN KEY([MaChiNhanhSuDung])
REFERENCES [dbo].[ChiNhanh] ([MaChiNhanh])
GO
ALTER TABLE [dbo].[MaVoucher] CHECK CONSTRAINT [FK_MaVoucher_ChiNhanh]
GO
ALTER TABLE [dbo].[MaVoucher]  WITH CHECK ADD  CONSTRAINT [FK_MaVoucher_CTDonHang] FOREIGN KEY([MaCTDonHang])
REFERENCES [dbo].[ChiTietDonHang] ([MaCTDonHang])
GO
ALTER TABLE [dbo].[MaVoucher] CHECK CONSTRAINT [FK_MaVoucher_CTDonHang]
GO
ALTER TABLE [dbo].[NhanVienDoiTac]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_DoiTac] FOREIGN KEY([MaDoiTac])
REFERENCES [dbo].[DoiTac] ([MaDoiTac])
GO
ALTER TABLE [dbo].[NhanVienDoiTac] CHECK CONSTRAINT [FK_NhanVien_DoiTac]
GO
ALTER TABLE [dbo].[NhanVienDoiTac]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_TaiKhoan] FOREIGN KEY([IDTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([IDTaiKhoan])
GO
ALTER TABLE [dbo].[NhanVienDoiTac] CHECK CONSTRAINT [FK_NhanVien_TaiKhoan]
GO
ALTER TABLE [dbo].[SystemLog]  WITH CHECK ADD  CONSTRAINT [FK__SystemLog__IDTai__0D44F85C] FOREIGN KEY([IDTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([IDTaiKhoan])
GO
ALTER TABLE [dbo].[SystemLog] CHECK CONSTRAINT [FK__SystemLog__IDTai__0D44F85C]
GO
ALTER TABLE [dbo].[Voucher]  WITH CHECK ADD  CONSTRAINT [FK_Voucher_DanhMuc] FOREIGN KEY([MaDanhMuc])
REFERENCES [dbo].[DanhMuc] ([MaDanhMuc])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Voucher] CHECK CONSTRAINT [FK_Voucher_DanhMuc]
GO
ALTER TABLE [dbo].[Voucher]  WITH CHECK ADD  CONSTRAINT [FK_Voucher_DoiTac] FOREIGN KEY([MaDoiTac])
REFERENCES [dbo].[DoiTac] ([MaDoiTac])
GO
ALTER TABLE [dbo].[Voucher] CHECK CONSTRAINT [FK_Voucher_DoiTac]
GO
ALTER TABLE [dbo].[Voucher_ChiNhanh]  WITH CHECK ADD  CONSTRAINT [FK_VoucherChiNhanh_ChiNhanh] FOREIGN KEY([MaChiNhanh])
REFERENCES [dbo].[ChiNhanh] ([MaChiNhanh])
GO
ALTER TABLE [dbo].[Voucher_ChiNhanh] CHECK CONSTRAINT [FK_VoucherChiNhanh_ChiNhanh]
GO
ALTER TABLE [dbo].[Voucher_ChiNhanh]  WITH CHECK ADD  CONSTRAINT [FK_VoucherChiNhanh_Voucher] FOREIGN KEY([VoucherID])
REFERENCES [dbo].[Voucher] ([VoucherID])
GO
ALTER TABLE [dbo].[Voucher_ChiNhanh] CHECK CONSTRAINT [FK_VoucherChiNhanh_Voucher]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD CHECK  (([SoLuongMua]>(0)))
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [CK_CTDH_DonGia] CHECK  (([DonGia]>=(0) AND [ThanhTien]>=(0)))
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [CK_CTDH_DonGia]
GO
ALTER TABLE [dbo].[ChiTietGioHang]  WITH CHECK ADD CHECK  (([SoLuong]>(0)))
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD CHECK  (([DiemDanhGia]>=(1) AND [DiemDanhGia]<=(5)))
GO
ALTER TABLE [dbo].[DoiTac]  WITH CHECK ADD  CONSTRAINT [CHK_DoiTac_EmailLienHe] CHECK  (([EmailLienHe] like '%_@__%.__%'))
GO
ALTER TABLE [dbo].[DoiTac] CHECK CONSTRAINT [CHK_DoiTac_EmailLienHe]
GO
ALTER TABLE [dbo].[DoiTac]  WITH CHECK ADD  CONSTRAINT [CHK_DoiTac_GioHoatDong] CHECK  (([GioMoCua]<[GioDongCua]))
GO
ALTER TABLE [dbo].[DoiTac] CHECK CONSTRAINT [CHK_DoiTac_GioHoatDong]
GO
ALTER TABLE [dbo].[DoiTac]  WITH CHECK ADD  CONSTRAINT [CHK_DoiTac_SDTLienHe] CHECK  ((len([SDTLienHe])>=(10) AND len([SDTLienHe])<=(15) AND NOT [SDTLienHe] like '%[^0-9]%'))
GO
ALTER TABLE [dbo].[DoiTac] CHECK CONSTRAINT [CHK_DoiTac_SDTLienHe]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [CK_DonHang_ThanhToan] CHECK  (([TrangThaiThanhToan]=N'Thất bại' OR [TrangThaiThanhToan]=N'Đã hoàn tiền' OR [TrangThaiThanhToan]=N'Đã thanh toán' OR [TrangThaiThanhToan]=N'Chưa thanh toán'))
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [CK_DonHang_ThanhToan]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [CK_DonHang_TrangThai] CHECK  (([TrangThaiDonHang]=N'Đã hủy' OR [TrangThaiDonHang]=N'Hoàn tất' OR [TrangThaiDonHang]=N'Chờ xử lý'))
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [CK_DonHang_TrangThai]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [CK_KhachHang_GioiTinh] CHECK  (([GioiTinh]=N'Khác' OR [GioiTinh]=N'Nữ' OR [GioiTinh]=N'Nam'))
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [CK_KhachHang_GioiTinh]
GO
ALTER TABLE [dbo].[MaVoucher]  WITH CHECK ADD  CONSTRAINT [CK_TrangThaiSuDung] CHECK  (([TrangThaiSuDung]=N'Hủy voucher' OR [TrangThaiSuDung]=N'Chưa sử dụng' OR [TrangThaiSuDung]=N'Đã sử dụng' OR [TrangThaiSuDung]=N'Hết hạn' OR [TrangThaiSuDung]=N'Bị khóa'))
GO
ALTER TABLE [dbo].[MaVoucher] CHECK CONSTRAINT [CK_TrangThaiSuDung]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [CHK_TaiKhoan_LoaiTK] CHECK  (([LoaiTK] IS NULL OR ([LoaiTK]='Admin' OR [LoaiTK]='DoiTac' OR [LoaiTK]='KhachHang')))
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [CHK_TaiKhoan_LoaiTK]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [CK_TrangThaiTaiKhoan] CHECK  (([TrangThaiTaiKhoan]=N'Hoạt động' OR [TrangThaiTaiKhoan]=N'Bị khóa' OR [TrangThaiTaiKhoan]=N'Chờ duyệt'))
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [CK_TrangThaiTaiKhoan]
GO
ALTER TABLE [dbo].[Voucher]  WITH CHECK ADD  CONSTRAINT [CK_GiaBan_NhoHon_GiaGoc] CHECK  (([GiaBan]<[GiaGoc]))
GO
ALTER TABLE [dbo].[Voucher] CHECK CONSTRAINT [CK_GiaBan_NhoHon_GiaGoc]
GO
ALTER TABLE [dbo].[Voucher]  WITH CHECK ADD  CONSTRAINT [CK_SoLuongBan] CHECK  (([SoLuongDaBan]<=[SoLuongChoPhep]))
GO
ALTER TABLE [dbo].[Voucher] CHECK CONSTRAINT [CK_SoLuongBan]
GO
ALTER TABLE [dbo].[Voucher]  WITH CHECK ADD  CONSTRAINT [CK_ThoiGIanVoucher] CHECK  (([ThoiGianKetThuc]>[ThoiGianBatDau]))
GO
ALTER TABLE [dbo].[Voucher] CHECK CONSTRAINT [CK_ThoiGIanVoucher]
GO
ALTER TABLE [dbo].[Voucher]  WITH CHECK ADD  CONSTRAINT [CK_Voucher_Gia] CHECK  (([GiaGoc]>=(0) AND [GiaBan]>=(0)))
GO
ALTER TABLE [dbo].[Voucher] CHECK CONSTRAINT [CK_Voucher_Gia]
GO
ALTER TABLE [dbo].[Voucher]  WITH CHECK ADD  CONSTRAINT [CK_Voucher_TrangThai] CHECK  (([TrangThaiVoucher]=N'Đã xóa' OR [TrangThaiVoucher]=N'Tạm ngưng' OR [TrangThaiVoucher]=N'Từ chối' OR [TrangThaiVoucher]=N'Đang hoạt động' OR [TrangThaiVoucher]=N'Chờ duyệt' OR [TrangThaiVoucher]=N'Bản nháp'))
GO
ALTER TABLE [dbo].[Voucher] CHECK CONSTRAINT [CK_Voucher_TrangThai]
GO
