CREATE DATABASE [CuaHangTienLoi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CuaHangTienLoi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\CuaHangTienLoi.mdf' , SIZE = 30720KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CuaHangTienLoi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\CuaHangTienLoi_log.ldf' , SIZE = 10240KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
USE [CuaHangTienLoi]
GO
/****** Object:  Table [dbo].[ChitietDonHang]    Script Date: 11/24/2022 8:10:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChitietDonHang](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaDH] [int] NOT NULL,
	[IdSp] [int] NULL,
	[Anh] [nvarchar](50) NULL,
	[Soluong] [int] NULL,
	[Dongia] [float] NULL,
	[TenSp] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 11/24/2022 8:10:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenhDM] [nvarchar](50) NULL,
	[LinkDM] [nvarchar](100) NULL,
	[ParentId] [int] NULL,
	[OrderNumber] [int] NULL,
 CONSTRAINT [PK_DanhMuc] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMucNoiBat]    Script Date: 11/24/2022 8:10:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMucNoiBat](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenDMNB] [nvarchar](100) NULL,
	[SoLuongSP] [int] NULL,
	[Anh] [nvarchar](50) NULL,
	[LinkDMNB] [nvarchar](100) NULL,
 CONSTRAINT [PK_DanhMucNoiBat] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DatHang]    Script Date: 11/24/2022 8:10:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatHang](
	[MaDH] [int] IDENTITY(1,1) NOT NULL,
	[DaThanhToan] [bit] NULL,
	[TinhTrangGiaoHang] [int] NULL,
	[NgayDat] [datetime] NULL,
	[NgayGiao] [datetime] NULL,
	[MaKh] [int] NOT NULL,
	[PTthanhToan] [nvarchar](50) NULL,
 CONSTRAINT [PK_DatHang] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 11/24/2022 8:10:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[TaiKhoan] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[DienThoai] [nchar](10) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[Gioitinh] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaTaiTro]    Script Date: 11/24/2022 8:10:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaTaiTro](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Anh] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhaTaiTro] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pADMIN]    Script Date: 11/24/2022 8:10:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pADMIN](
	[MaAd] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[DienThoai] [nchar](10) NULL,
	[TenDn] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
	[Quyen] [int] NULL,
	[Anh] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaAd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 11/24/2022 8:10:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSp] [int] IDENTITY(1,1) NOT NULL,
	[TenSp] [nvarchar](100) NULL,
	[Anh] [nvarchar](50) NULL,
	[Gia] [float] NULL,
	[Giamgia] [int] NULL,
	[SoSao] [int] NULL,
	[IdDM] [int] NULL,
	[SoLuongSP] [int] NULL,
	[IdDMNoiBat] [int] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slide]    Script Date: 11/24/2022 8:10:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slide](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tieude] [nvarchar](50) NULL,
	[NoiDung] [nvarchar](100) NULL,
	[Anh] [nvarchar](50) NULL,
	[Loai] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChitietDonHang] ON 
GO
INSERT [dbo].[ChitietDonHang] ([Id], [MaDH], [IdSp], [Anh], [Soluong], [Dongia], [TenSp]) VALUES (25, 20, 1, N'sp-tivi-1.jpg', 1, 8284000, N'LG Smart TV 43UQ800PSC')
GO
INSERT [dbo].[ChitietDonHang] ([Id], [MaDH], [IdSp], [Anh], [Soluong], [Dongia], [TenSp]) VALUES (26, 20, 40, N'tulanh1c-1.jpg', 1, 11060000, N'Tủ lạnh LG 1 cánh Inverter 368 Lít GN-D372BL')
GO
INSERT [dbo].[ChitietDonHang] ([Id], [MaDH], [IdSp], [Anh], [Soluong], [Dongia], [TenSp]) VALUES (27, 20, 162, N'noicomdien-1.jpg', 1, 1292000, N'Nồi cơm điện Panasonic 1 lít')
GO
INSERT [dbo].[ChitietDonHang] ([Id], [MaDH], [IdSp], [Anh], [Soluong], [Dongia], [TenSp]) VALUES (28, 21, 44, N'tulanh2c-1.jpg', 1, 8160000, N'Tủ lạnh LG 2 cánh Inverter 376 Lít GN-D372BL')
GO
INSERT [dbo].[ChitietDonHang] ([Id], [MaDH], [IdSp], [Anh], [Soluong], [Dongia], [TenSp]) VALUES (29, 22, 1, N'sp-tivi-1.jpg', 2, 8284000, N'LG Smart TV 43UQ800PSC')
GO
INSERT [dbo].[ChitietDonHang] ([Id], [MaDH], [IdSp], [Anh], [Soluong], [Dongia], [TenSp]) VALUES (30, 22, 40, N'tulanh1c-1.jpg', 1, 11060000, N'Tủ lạnh LG 1 cánh Inverter 368 Lít GN-D372BL')
GO
INSERT [dbo].[ChitietDonHang] ([Id], [MaDH], [IdSp], [Anh], [Soluong], [Dongia], [TenSp]) VALUES (31, 22, 162, N'noicomdien-1.jpg', 1, 1292000, N'Nồi cơm điện Panasonic 1 lít')
GO
INSERT [dbo].[ChitietDonHang] ([Id], [MaDH], [IdSp], [Anh], [Soluong], [Dongia], [TenSp]) VALUES (32, 23, 72, N'maylanh1c-1.jpg', 1, 3468000, N'Máy lạnh 1 chiều Samsung Inverter AR7845YU')
GO
INSERT [dbo].[ChitietDonHang] ([Id], [MaDH], [IdSp], [Anh], [Soluong], [Dongia], [TenSp]) VALUES (33, 23, 6, N'sp-tivi-3.jpg', 2, 6000000, N'LG Smart TV Crystal UHD UA43AU8100')
GO
INSERT [dbo].[ChitietDonHang] ([Id], [MaDH], [IdSp], [Anh], [Soluong], [Dongia], [TenSp]) VALUES (34, 23, 127, N'maylockko-2.jpg', 1, 10140000, N'Máy lọc không khí ô tô Airdog X6')
GO
INSERT [dbo].[ChitietDonHang] ([Id], [MaDH], [IdSp], [Anh], [Soluong], [Dongia], [TenSp]) VALUES (37, 25, 151, N'mayhutbui-3.jpg', 1, 3450000, N'Máy hút bụi UltimateHome 2500w')
GO
INSERT [dbo].[ChitietDonHang] ([Id], [MaDH], [IdSp], [Anh], [Soluong], [Dongia], [TenSp]) VALUES (38, 25, 2, N'sp-tivi-3.jpg', 1, 9504000, N'LG Smart TV 43LM6360PTB')
GO
INSERT [dbo].[ChitietDonHang] ([Id], [MaDH], [IdSp], [Anh], [Soluong], [Dongia], [TenSp]) VALUES (39, 25, 55, N'maygiatct-2.jpg', 1, 11550000, N'Máy giặt cửa trước Inerter 15kg')
GO
SET IDENTITY_INSERT [dbo].[ChitietDonHang] OFF
GO
SET IDENTITY_INSERT [dbo].[DanhMuc] ON 
GO
INSERT [dbo].[DanhMuc] ([Id], [TenhDM], [LinkDM], [ParentId], [OrderNumber]) VALUES (1, N'Tivi', N'#', NULL, 1)
GO
INSERT [dbo].[DanhMuc] ([Id], [TenhDM], [LinkDM], [ParentId], [OrderNumber]) VALUES (2, N'Tủ lạnh', N'#', NULL, 2)
GO
INSERT [dbo].[DanhMuc] ([Id], [TenhDM], [LinkDM], [ParentId], [OrderNumber]) VALUES (3, N'Máy giặt', N'#', NULL, 3)
GO
INSERT [dbo].[DanhMuc] ([Id], [TenhDM], [LinkDM], [ParentId], [OrderNumber]) VALUES (4, N'Điều hòa - Máy lạnh', N'#', NULL, 4)
GO
INSERT [dbo].[DanhMuc] ([Id], [TenhDM], [LinkDM], [ParentId], [OrderNumber]) VALUES (5, N'Máy sấy quần áo', N'#', NULL, 5)
GO
INSERT [dbo].[DanhMuc] ([Id], [TenhDM], [LinkDM], [ParentId], [OrderNumber]) VALUES (6, N'Bình nóng lạnh', N'#', NULL, 6)
GO
INSERT [dbo].[DanhMuc] ([Id], [TenhDM], [LinkDM], [ParentId], [OrderNumber]) VALUES (7, N'Tủ đông', N'#', NULL, 7)
GO
INSERT [dbo].[DanhMuc] ([Id], [TenhDM], [LinkDM], [ParentId], [OrderNumber]) VALUES (8, N'Máy rửa bát', N'#', NULL, 8)
GO
INSERT [dbo].[DanhMuc] ([Id], [TenhDM], [LinkDM], [ParentId], [OrderNumber]) VALUES (9, N'Máy lọc không khí', N'#', NULL, 9)
GO
INSERT [dbo].[DanhMuc] ([Id], [TenhDM], [LinkDM], [ParentId], [OrderNumber]) VALUES (10, N'Máy hút bụi', N'#', NULL, 10)
GO
INSERT [dbo].[DanhMuc] ([Id], [TenhDM], [LinkDM], [ParentId], [OrderNumber]) VALUES (11, N'Lò vi sóng', N'#', NULL, 11)
GO
INSERT [dbo].[DanhMuc] ([Id], [TenhDM], [LinkDM], [ParentId], [OrderNumber]) VALUES (12, N'Nồi cơm điện', N'#', NULL, 12)
GO
INSERT [dbo].[DanhMuc] ([Id], [TenhDM], [LinkDM], [ParentId], [OrderNumber]) VALUES (13, N'Tivi LG', NULL, 1, 1)
GO
INSERT [dbo].[DanhMuc] ([Id], [TenhDM], [LinkDM], [ParentId], [OrderNumber]) VALUES (14, N'Tivi Sony', NULL, 1, 2)
GO
INSERT [dbo].[DanhMuc] ([Id], [TenhDM], [LinkDM], [ParentId], [OrderNumber]) VALUES (15, N'Tivi Samsung', NULL, 1, 3)
GO
INSERT [dbo].[DanhMuc] ([Id], [TenhDM], [LinkDM], [ParentId], [OrderNumber]) VALUES (17, N'Tủ lạnh 1 cánh', NULL, 2, 2)
GO
INSERT [dbo].[DanhMuc] ([Id], [TenhDM], [LinkDM], [ParentId], [OrderNumber]) VALUES (18, N'Tủ lạnh 2 cánh', NULL, 2, 3)
GO
INSERT [dbo].[DanhMuc] ([Id], [TenhDM], [LinkDM], [ParentId], [OrderNumber]) VALUES (19, N'Máy giặt cửa trước', NULL, 3, 1)
GO
INSERT [dbo].[DanhMuc] ([Id], [TenhDM], [LinkDM], [ParentId], [OrderNumber]) VALUES (20, N'Máy giặt cửa trên', NULL, 3, 2)
GO
INSERT [dbo].[DanhMuc] ([Id], [TenhDM], [LinkDM], [ParentId], [OrderNumber]) VALUES (22, N'Điều hòa 1 chiều', NULL, 4, 2)
GO
INSERT [dbo].[DanhMuc] ([Id], [TenhDM], [LinkDM], [ParentId], [OrderNumber]) VALUES (23, N'Điều hòa 2 chiều', NULL, 4, 3)
GO
INSERT [dbo].[DanhMuc] ([Id], [TenhDM], [LinkDM], [ParentId], [OrderNumber]) VALUES (24, N'Bình nóng lạnh trực tiếp', NULL, 6, 1)
GO
INSERT [dbo].[DanhMuc] ([Id], [TenhDM], [LinkDM], [ParentId], [OrderNumber]) VALUES (25, N'Bình nóng lạnh gián tiếp', NULL, 6, 2)
GO
INSERT [dbo].[DanhMuc] ([Id], [TenhDM], [LinkDM], [ParentId], [OrderNumber]) VALUES (27, N'Tủ đông 1 ngăn', NULL, 7, 2)
GO
INSERT [dbo].[DanhMuc] ([Id], [TenhDM], [LinkDM], [ParentId], [OrderNumber]) VALUES (28, N'Tủ đông 2 ngăn', NULL, 7, 3)
GO
INSERT [dbo].[DanhMuc] ([Id], [TenhDM], [LinkDM], [ParentId], [OrderNumber]) VALUES (29, N'Máy lọc không khí gia đình', NULL, 9, 1)
GO
INSERT [dbo].[DanhMuc] ([Id], [TenhDM], [LinkDM], [ParentId], [OrderNumber]) VALUES (30, N'Máy lọc không khí ô tô', NULL, 9, 2)
GO
INSERT [dbo].[DanhMuc] ([Id], [TenhDM], [LinkDM], [ParentId], [OrderNumber]) VALUES (33, N'Tivi thông minh (LG)', NULL, 13, 1)
GO
INSERT [dbo].[DanhMuc] ([Id], [TenhDM], [LinkDM], [ParentId], [OrderNumber]) VALUES (34, N'Tivi màn hình cong (LG)', NULL, 13, 2)
GO
SET IDENTITY_INSERT [dbo].[DanhMuc] OFF
GO
SET IDENTITY_INSERT [dbo].[DanhMucNoiBat] ON 
GO
INSERT [dbo].[DanhMucNoiBat] ([Id], [TenDMNB], [SoLuongSP], [Anh], [LinkDMNB]) VALUES (1, N'Tivi', 15, N'cat-1.jpg', N'#')
GO
INSERT [dbo].[DanhMucNoiBat] ([Id], [TenDMNB], [SoLuongSP], [Anh], [LinkDMNB]) VALUES (2, N'Tủ lạnh', 12, N'cat-2.jpg', N'#')
GO
INSERT [dbo].[DanhMucNoiBat] ([Id], [TenDMNB], [SoLuongSP], [Anh], [LinkDMNB]) VALUES (3, N'Máy giặt', 11, N'cat-3.jpg', N'#')
GO
INSERT [dbo].[DanhMucNoiBat] ([Id], [TenDMNB], [SoLuongSP], [Anh], [LinkDMNB]) VALUES (4, N'Điều hòa - Máy lạnh', 16, N'cat-4.jpg', N'#')
GO
INSERT [dbo].[DanhMucNoiBat] ([Id], [TenDMNB], [SoLuongSP], [Anh], [LinkDMNB]) VALUES (5, N'Máy sấy quần áo', 18, N'cat-5.jpg', N'#')
GO
INSERT [dbo].[DanhMucNoiBat] ([Id], [TenDMNB], [SoLuongSP], [Anh], [LinkDMNB]) VALUES (6, N'Bình nóng lạnh', 19, N'cat-6.jpg', N'#')
GO
INSERT [dbo].[DanhMucNoiBat] ([Id], [TenDMNB], [SoLuongSP], [Anh], [LinkDMNB]) VALUES (7, N'Tủ đông', 13, N'cat-7.jpg', N'#')
GO
INSERT [dbo].[DanhMucNoiBat] ([Id], [TenDMNB], [SoLuongSP], [Anh], [LinkDMNB]) VALUES (8, N'Máy rửa bát', 14, N'cat-8.jpg', N'#')
GO
INSERT [dbo].[DanhMucNoiBat] ([Id], [TenDMNB], [SoLuongSP], [Anh], [LinkDMNB]) VALUES (9, N'Máy lọc không khí', 17, N'cat-9.jpg', N'#')
GO
INSERT [dbo].[DanhMucNoiBat] ([Id], [TenDMNB], [SoLuongSP], [Anh], [LinkDMNB]) VALUES (10, N'Máy hút bụi', 21, N'cat-10.jpg', N'#')
GO
INSERT [dbo].[DanhMucNoiBat] ([Id], [TenDMNB], [SoLuongSP], [Anh], [LinkDMNB]) VALUES (11, N'Lò vi sóng', 25, N'cat-11.jpg', N'#')
GO
INSERT [dbo].[DanhMucNoiBat] ([Id], [TenDMNB], [SoLuongSP], [Anh], [LinkDMNB]) VALUES (12, N'Nồi cơm điện', 39, N'cat-12.jpg', N'#')
GO
SET IDENTITY_INSERT [dbo].[DanhMucNoiBat] OFF
GO
SET IDENTITY_INSERT [dbo].[DatHang] ON 
GO
INSERT [dbo].[DatHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKh], [PTthanhToan]) VALUES (20, 1, 1, CAST(N'2022-11-15T18:33:49.720' AS DateTime), CAST(N'2022-11-20T18:33:49.720' AS DateTime), 3, N'online')
GO
INSERT [dbo].[DatHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKh], [PTthanhToan]) VALUES (21, 0, 2, CAST(N'2022-11-15T18:34:42.657' AS DateTime), CAST(N'2022-11-20T18:34:42.657' AS DateTime), 3, N'tiền mặt')
GO
INSERT [dbo].[DatHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKh], [PTthanhToan]) VALUES (22, 1, 1, CAST(N'2022-11-15T18:35:43.627' AS DateTime), CAST(N'2022-11-20T18:35:43.627' AS DateTime), 3, N'online')
GO
INSERT [dbo].[DatHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKh], [PTthanhToan]) VALUES (23, 1, 1, CAST(N'2022-11-16T12:48:39.740' AS DateTime), CAST(N'2022-11-21T12:48:39.740' AS DateTime), 3, N'online')
GO
INSERT [dbo].[DatHang] ([MaDH], [DaThanhToan], [TinhTrangGiaoHang], [NgayDat], [NgayGiao], [MaKh], [PTthanhToan]) VALUES (25, 1, 1, CAST(N'2022-11-23T22:54:52.743' AS DateTime), CAST(N'2022-11-28T22:54:52.743' AS DateTime), 3, N'online')
GO
SET IDENTITY_INSERT [dbo].[DatHang] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [Email], [DiaChi], [DienThoai], [NgaySinh], [Gioitinh]) VALUES (3, N'Bùi Chí Thiện', N'chithien', N'12345', N'thien@gmail.com', N'Dĩ an - Bình Dương', N'0123456789', CAST(N'2002-06-19' AS Date), N'Nam')
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [Email], [DiaChi], [DienThoai], [NgaySinh], [Gioitinh]) VALUES (4, N'Phạm Tiến Thành', N'tienthanh', N'12345', N'thanh@gmail.com', N'Thuận an - Bình Dương', N'0123456789', CAST(N'2022-11-16' AS Date), N'Nam')
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [Email], [DiaChi], [DienThoai], [NgaySinh], [Gioitinh]) VALUES (6, N'Đặng phương Nam', N'phuongnam', N'12345', N'nam@gmail.com', N'Nghệ An', N'0123456789', CAST(N'2002-02-18' AS Date), N'Nam')
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [Email], [DiaChi], [DienThoai], [NgaySinh], [Gioitinh]) VALUES (7, N'Lê Hải Thọ', N'haitho', N'12345', N'haitho@gmail.com', N'Bình Dương', N'0123456789', CAST(N'2002-12-18' AS Date), N'Nam')
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [Email], [DiaChi], [DienThoai], [NgaySinh], [Gioitinh]) VALUES (11, N'Lê Nhật An', N'nhatan', N'12345', N'nhatan@gmail.com', N'Bình Dương', N'0123456789', CAST(N'2002-12-09' AS Date), N'Nam')
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [Email], [DiaChi], [DienThoai], [NgaySinh], [Gioitinh]) VALUES (12, N'Nguyễn An Phú Đông', N'phudong', N'12345', N'phudong@gmail.com', N'Bình Dương', N'0123456789', CAST(N'2002-12-12' AS Date), N'Nam')
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [Email], [DiaChi], [DienThoai], [NgaySinh], [Gioitinh]) VALUES (14, N'Tô Phương Toàn', N'phuongtoan', N'12345', N'toan@gmail.com', N'Bình dương', N'0123456789', CAST(N'2002-12-11' AS Date), N'Nam')
GO
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaTaiTro] ON 
GO
INSERT [dbo].[NhaTaiTro] ([Id], [Anh]) VALUES (1, N'daihoc1.jpg')
GO
INSERT [dbo].[NhaTaiTro] ([Id], [Anh]) VALUES (2, N'daihoc2.jpg')
GO
INSERT [dbo].[NhaTaiTro] ([Id], [Anh]) VALUES (3, N'daihoc3.jpg')
GO
INSERT [dbo].[NhaTaiTro] ([Id], [Anh]) VALUES (4, N'daihoc4.jpg')
GO
INSERT [dbo].[NhaTaiTro] ([Id], [Anh]) VALUES (5, N'daihoc5.jpg')
GO
INSERT [dbo].[NhaTaiTro] ([Id], [Anh]) VALUES (6, N'daihoc6.jpg')
GO
INSERT [dbo].[NhaTaiTro] ([Id], [Anh]) VALUES (7, N'daihoc7.jpg')
GO
INSERT [dbo].[NhaTaiTro] ([Id], [Anh]) VALUES (8, N'daihoc8.jpg')
GO
SET IDENTITY_INSERT [dbo].[NhaTaiTro] OFF
GO
SET IDENTITY_INSERT [dbo].[pADMIN] ON 
GO
INSERT [dbo].[pADMIN] ([MaAd], [HoTen], [DienThoai], [TenDn], [MatKhau], [Quyen], [Anh]) VALUES (1, N'Bùi Chí Thiện', N'0123456789', N'chithien', N'123', 1, N'admin-3.jpg')
GO
INSERT [dbo].[pADMIN] ([MaAd], [HoTen], [DienThoai], [TenDn], [MatKhau], [Quyen], [Anh]) VALUES (2, N'Đặng Phương Nam', N'0123456789', N'phuongnam', N'123', 1, N'admin-2.jpg')
GO
INSERT [dbo].[pADMIN] ([MaAd], [HoTen], [DienThoai], [TenDn], [MatKhau], [Quyen], [Anh]) VALUES (3, N'Nguyễn Thị Thanh Trúc', N'0123456789', N'thanhtruc', N'123', 1, N'admin-4.jpg')
GO
INSERT [dbo].[pADMIN] ([MaAd], [HoTen], [DienThoai], [TenDn], [MatKhau], [Quyen], [Anh]) VALUES (4, N'Chu Thị Bích Phương', N'0123456789', N'bichphuong', N'123', 1, N'admin-5.jpg')
GO
INSERT [dbo].[pADMIN] ([MaAd], [HoTen], [DienThoai], [TenDn], [MatKhau], [Quyen], [Anh]) VALUES (5, N'Đỗ Thanh Thanh', N'0123456789', N'thanhthanh', N'123', 2, N'admin-6.jpg')
GO
INSERT [dbo].[pADMIN] ([MaAd], [HoTen], [DienThoai], [TenDn], [MatKhau], [Quyen], [Anh]) VALUES (6, N'Ngô Gia Hân', N'0123456789', N'giahan', N'123', 3, N'admin-8.jpg')
GO
SET IDENTITY_INSERT [dbo].[pADMIN] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (1, N'LG Smart TV 43UQ800PSC', N'sp-tivi-1.jpg', 10900000, 24, 4, 33, 12, 1)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (2, N'LG Smart TV 43LM6360PTB', N'sp-tivi-3.jpg', 10800000, 12, 4, 33, 23, 1)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (3, N'LG Smart TV 43UP7750PTB', N'sp-tivi-1.jpg', 10000000, 11, 4, 33, 43, 1)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (4, N'LG Smart TV 43UQ7550PFS', N'sp-tivi-4.jpg', 9999999, 24, 4, 33, 45, 1)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (5, N'LG Smart TV NanoCell 43NANO75TPA', N'sp-tivi-1.jpg', 11400000, 23, 4, 33, 76, 1)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (6, N'LG Smart TV Crystal UHD UA43AU8100', N'sp-tivi-3.jpg', 8000000, 25, 5, 33, 43, 1)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (7, N'LG Smart TV Crystal UHD UA43AU7200', N'sp-tivi-2.jpg', 7500000, 34, 3, 33, 68, 1)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (8, N'LG Smart TV KD-43X75K', N'sp-tivi-2.jpg', 12000000, 32, 3, 33, 74, 1)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (10, N'LG Màn hình cong 4K 49 INCHES 49KS7500KXXV', N'sp-tivicog-1.jpg', 12000000, 10, 4, 34, 38, 1)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (11, N'LG Màn hình cong 4K 55 INCH UA55KS9000KXXV', N'sp-tivicog-4.jpg', 11000000, 10, 4, 34, 45, 1)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (12, N'LG Màn hình cong 4K 30 INCH UA55KS9000KXXV', N'sp-tivicog-3.jpg', 11500000, 10, 4, 34, 67, 1)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (13, N'LG Màn hình cong 4K 20 INCH UA55KS9000KXXV', N'sp-tivicog-2.jpg', 10999999, 10, 5, 34, 34, 1)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (14, N'LG Màn hình cong 4K 21 INCH UA55KS9000KXXV', N'sp-tivicog-4.jpg', 9999999, 10, 3, 34, 65, 1)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (15, N'LG Màn hình cong 4K 22 INCH UA55KS9000KXXV', N'sp-tivicog-3.jpg', 8500000, 21, 3, 34, 42, 1)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (16, N'LG Màn hình cong 4K 23 INCH UA55KS9000KXXV', N'sp-tivicog-1.jpg', 12200000, 10, 3, 34, 34, 1)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (17, N'LG Màn hình cong 4K 24 INCH UA55KS9000KXXV', N'sp-tivicog-3.jpg', 5600000, 10, 3, 34, 63, 1)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (18, N'Sony Smart TV 43UQ800PSC', N'sp-tivi-1.jpg', 12000000, 10, 4, 14, 33, 1)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (19, N'Sony Smart TV 43LM6360PTB', N'sp-tivi-3.jpg', 11500000, 12, 4, 14, 21, 1)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (20, N'Sony Smart TV 43UP7750PTB', N'sp-tivi-2.jpg', 11600000, 11, 4, 14, 35, 1)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (21, N'Sony Smart TV 43UQ7550PFS', N'sp-tivi-4.jpg', 11700000, 12, 4, 14, 45, 1)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (22, N'Sony Smart TV NanoCell 43NANO75TPA', N'sp-tivi-3.jpg', 12400000, 11, 5, 14, 64, 1)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (23, N'Sony Smart TV Crystal UHD UA43AU8100', N'sp-tivi-2.jpg', 12600000, 23, 5, 14, 34, 1)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (24, N'Sony Smart TV Crystal UHD UA43AU7200', N'sp-tivi-1.jpg', 12340000, 2, 4, 14, 43, 1)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (25, N'Sony Smart TV KD-43X75K', N'sp-tivi-4.jpg', 12000000, 21, 2, 14, 23, 1)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (26, N'Samsung Smart TV 43UQ800PSC', N'sp-tivicog-1.jpg', 11300000, 12, 3, 15, 65, 1)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (27, N'Samsung Smart TV 43LM6360PTB', N'sp-tivicog-2.jpg', 10000000, 12, 3, 15, 34, 1)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (28, N'Samsung Smart TV 43UP7750PTB', N'sp-tivicog-3.jpg', 15000000, 32, 3, 15, 23, 1)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (29, N'Samsung Smart TV 43UQ7550PFS', N'sp-tivicog-4.jpg', 15600000, 12, 3, 15, 45, 1)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (30, N'Samsung Smart TV NanoCell 43NANO75TPA', N'sp-tivicog-4.jpg', 12000000, 34, 3, 15, 43, 1)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (31, N'Samsung Smart TV Crystal UHD UA43AU8100', N'sp-tivicog-3.jpg', 11000000, 54, 4, 15, 32, 1)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (32, N'Samsung Smart TV Crystal UHD UA43AU7200', N'sp-tivicog-2.jpg', 12000000, 12, 4, 15, 44, 1)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (33, N'Samsung Smart TV KD-43X75K', N'sp-tivicog-1.jpg', 15440000, 12, 4, 15, 43, 1)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (34, N'Tủ lạnh LG 1 cánh Inverter 374 Lít GN-D372BL', N'tulanh1c-1.jpg', 9900000, 12, 4, 17, 45, 2)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (35, N'Tủ lạnh LG 1 cánh Inverter 373 Lít GN-D372BL', N'tulanh1c-2.jpg', 8700000, 11, 4, 17, 23, 2)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (36, N'Tủ lạnh LG 1cánh Inverter 372 Lít GN-D372BL', N'tulanh1c-1.jpg', 9800000, 12, 4, 17, 24, 2)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (37, N'Tủ lạnh LG 1 cánh Inverter 371 Lít GN-D372BL', N'tulanh1c-2.jpg', 11000000, 12, 4, 17, 23, 2)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (38, N'Tủ lạnh LG 1cánh Inverter 370 Lít GN-D372BL', N'tulanh1c-1.jpg', 12000000, 21, 3, 17, 43, 2)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (39, N'Tủ lạnh LG 1 cánh Inverter 369 Lít GN-D372BL', N'tulanh1c-2.jpg', 13000000, 12, 3, 17, 43, 2)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (40, N'Tủ lạnh LG 1 cánh Inverter 368 Lít GN-D372BL', N'tulanh1c-1.jpg', 14000000, 21, 4, 17, 14, 2)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (41, N'Tủ lạnh LG 1 cánh Inverter 367 Lít GN-D372BL', N'tulanh1c-2.jpg', 15000000, 12, 4, 17, 32, 2)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (42, N'Tủ lạnh LG 2 cánh Inverter 374 Lít GN-D372BL', N'tulanh2c-1.jpg', 10000000, 12, 4, 18, 32, 2)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (43, N'Tủ lạnh LG 2 cánh Inverter 375 Lít GN-D372BL', N'tulanh2c-2.jpg', 11000000, 12, 4, 18, 32, 2)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (44, N'Tủ lạnh LG 2 cánh Inverter 376 Lít GN-D372BL', N'tulanh2c-1.jpg', 12000000, 32, 4, 18, 23, 2)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (45, N'Tủ lạnh LG 2 cánh Inverter 377 Lít GN-D372BL', N'tulanh2c-2.jpg', 12300000, 23, 4, 18, 43, 2)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (46, N'Tủ lạnh LG 2 cánh Inverter 378 Lít GN-D372BL', N'tulanh2c-1.jpg', 11200000, 23, 4, 18, 54, 2)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (47, N'Tủ lạnh LG 2 cánh Inverter 379 Lít GN-D372BL', N'tulanh2c-2.jpg', 12300000, 21, 4, 18, 64, 2)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (48, N'Tủ lạnh LG 2 cánh Inverter 388 Lít GN-D372BL', N'tulanh2c-1.jpg', 14500000, 12, 4, 18, 34, 2)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (49, N'Tủ lạnh LG 2 cánh Inverter 389 Lít GN-D372BL', N'tulanh2c-2.jpg', 12300000, 32, 5, 18, 75, 2)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (50, N'Máy giặt cửa trước Inerter 10kg', N'maygiatct-1.jpg', 12000000, 21, 4, 19, 43, 3)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (51, N'Máy giặt cửa trước Inerter 11kg', N'maygiatct-2.jpg', 11000000, 32, 4, 19, 32, 3)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (52, N'Máy giặt cửa trước Inerter 12kg', N'maygiatct-1.jpg', 10000000, 32, 4, 19, 74, 3)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (53, N'Máy giặt cửa trước Inerter 13kg', N'maygiatct-2.jpg', 13000000, 52, 4, 19, 75, 3)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (54, N'Máy giặt cửa trước Inerter 14kg', N'maygiatct-1.jpg', 14000000, 32, 4, 19, 45, 3)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (55, N'Máy giặt cửa trước Inerter 15kg', N'maygiatct-2.jpg', 15000000, 23, 4, 19, 34, 3)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (56, N'Máy giặt cửa trước Inerter 16kg', N'maygiatct-1.jpg', 15100000, 12, 4, 19, 74, 3)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (57, N'Máy giặt cửa trước Inerter 17kg', N'maygiatct-2.jpg', 15200000, 12, 5, 19, 74, 3)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (58, N'Máy giặt cửa trên Inerter 10kg', N'maygiattr-1.jpg', 5000000, 15, 5, 20, 43, 3)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (59, N'Máy giặt cửa trên Inerter 11kg', N'maygiattr-2.jpg', 6000000, 15, 4, 20, 45, 3)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (60, N'Máy giặt cửa trên Inerter 12kg', N'maygiattr-1.jpg', 7000000, 15, 4, 20, 43, 3)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (61, N'Máy giặt cửa trên Inerter 13kg', N'maygiattr-2.jpg', 8000000, 15, 4, 20, 65, 3)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (62, N'Máy giặt cửa trên Inerter 14kg', N'maygiattr-1.jpg', 9000000, 15, 4, 20, 54, 3)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (63, N'Máy giặt cửa trên Inerter 15kg', N'maygiattr-2.jpg', 10000000, 15, 4, 20, 43, 3)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (64, N'Máy giặt cửa trên Inerter 16kg', N'maygiattr-1.jpg', 11000000, 15, 3, 20, 43, 3)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (65, N'Máy giặt cửa trên Inerter 17kg', N'maygiattr-2.jpg', 12000000, 51, 3, 20, 43, 3)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (66, N'Máy lạnh 1 chiều Samsung Inverter AR3837KT', N'maylanh1c-1.jpg', 4500000, 45, 4, 22, 43, 4)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (67, N'Máy lạnh 1 chiều Samsung Inverter AR73643KT', N'maylanh1c-2.jpg', 4600000, 32, 4, 22, 33, 4)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (68, N'Máy lạnh 1 chiều Samsung Inverter KT878QKF', N'maylanh1c-1.jpg', 4700000, 32, 4, 22, 32, 4)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (69, N'Máy lạnh 1 chiều Samsung Inverter DD7873KK', N'maylanh1c-2.jpg', 4800000, 32, 4, 22, 32, 4)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (70, N'Máy lạnh 1 chiều Samsung Inverter KT97384KG', N'maylanh1c-1.jpg', 4900000, 32, 5, 22, 43, 4)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (71, N'Máy lạnh 1 chiều Samsung Inverter YT76372KJ', N'maylanh1c-2.jpg', 5000000, 12, 4, 22, 32, 4)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (72, N'Máy lạnh 1 chiều Samsung Inverter AR7845YU', N'maylanh1c-1.jpg', 5100000, 32, 4, 22, 32, 4)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (73, N'Máy lạnh 1 chiều Samsung Inverter AR3837KV', N'maylanh1c-2.jpg', 5100000, 32, 4, 22, 43, 4)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (74, N'Máy lạnh 2 chiều Samsung Inverter AR3837KT', N'maylanh2c-1.jpg', 5200000, 21, 4, 23, 45, 4)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (75, N'Máy lạnh 2 chiều Samsung Inverter AR3333CG', N'maylanh2c-2.jpg', 5300000, 21, 4, 23, 56, 4)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (76, N'Máy lạnh 2 chiều Samsung Inverter KT878QKF', N'maylanh2c-1.jpg', 5400000, 21, 4, 23, 43, 4)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (77, N'Máy lạnh 2 chiều Samsung Inverter DD7873KK', N'maylanh2c-2.jpg', 5500000, 21, 4, 23, 67, 4)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (78, N'Máy lạnh 2 chiều Samsung Inverter KT97384KG', N'maylanh2c-1.jpg', 5600000, 21, 4, 23, 87, 4)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (79, N'Máy lạnh 2 chiều Samsung Inverter YT76372KJ', N'maylanh2c-2.jpg', 5700000, 21, 4, 23, 65, 4)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (80, N'Máy lạnh 2 chiều Samsung Inverter AR7845YU', N'maylanh2c-1.jpg', 5800000, 21, 5, 23, 65, 4)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (81, N'Máy lạnh 2 chiều Samsung Inverter AR3837KV', N'maylanh2c-2.jpg', 5900000, 21, 5, 23, 89, 4)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (82, N'Bình nóng lạnh trực tiếp Ferroli 4500w', N'binhNLtt-1.jpg', 2100000, 21, 4, 24, 76, 6)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (83, N'Bình nóng lạnh trực tiếp Ferroli 4400w', N'binhNLtt-2.jpg', 2200000, 12, 4, 24, 65, 6)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (84, N'Bình nóng lạnh trực tiếp Ferroli 4300w', N'binhNLtt-1.jpg', 2300000, 12, 4, 24, 54, 6)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (85, N'Bình nóng lạnh trực tiếp Ferroli 4200w', N'binhNLtt-2.jpg', 2400000, 12, 4, 24, 54, 6)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (86, N'Bình nóng lạnh trực tiếp Ferroli 4100w', N'binhNLtt-1.jpg', 2500000, 11, 4, 24, 54, 6)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (87, N'Bình nóng lạnh trực tiếp Ferroli 4000w', N'binhNLtt-2.jpg', 2600000, 23, 4, 24, 43, 6)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (88, N'Bình nóng lạnh trực tiếp Ferroli 3900w', N'binhNLtt-1.jpg', 2700000, 12, 3, 24, 46, 6)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (89, N'Bình nóng lạnh trực tiếp Ferroli 3800w', N'binhNLtt-2.jpg', 2800000, 21, 5, 24, 56, 6)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (90, N'Bình nóng lạnh gián tiếp Ferroli 4500w', N'binhNLgt-1.jpg', 2900000, 21, 5, 25, 53, 6)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (91, N'Bình nóng lạnh gián tiếp Ferroli 4600w', N'binhNLgt-2.jpg', 3000000, 32, 4, 25, 47, 6)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (92, N'Bình nóng lạnh gián tiếp Ferroli 4700w', N'binhNLgt-1.jpg', 3100000, 12, 4, 25, 87, 6)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (93, N'Bình nóng lạnh gián tiếp Ferroli 4800w', N'binhNLgt-2.jpg', 3200000, 32, 4, 25, 87, 6)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (94, N'Bình nóng lạnh gián tiếp Ferroli 4900w', N'binhNLgt-1.jpg', 3300000, 12, 4, 25, 65, 6)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (95, N'Bình nóng lạnh gián tiếp Ferroli 5000w', N'binhNLgt-2.jpg', 3400000, 21, 4, 25, 75, 6)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (96, N'Bình nóng lạnh gián tiếp Ferroli 5100w', N'binhNLgt-1.jpg', 3500000, 21, 4, 25, 65, 6)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (97, N'Bình nóng lạnh gián tiếp Ferroli 5200w', N'binhNLgt-2.jpg', 3600000, 21, 4, 25, 65, 6)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (98, N'Tủ đông 1 ngăn LG Inverter 165 lít', N'tudong1n-1.jpg', 5600000, 12, 4, 27, 65, 7)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (99, N'Tủ đông 1 ngăn LG Inverter 166 lít', N'tudong1n-2.jpg', 5700000, 12, 4, 27, 54, 7)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (100, N'Tủ đông 1 ngăn LG Inverter 167 lít', N'tudong1n-1.jpg', 5800000, 12, 4, 27, 34, 7)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (101, N'Tủ đông 1 ngăn LG Inverter 168 lít', N'tudong1n-1.jpg', 5900000, 12, 4, 27, 54, 7)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (102, N'Tủ đông 1 ngăn LG Inverter 169 lít', N'tudong1n-1.jpg', 6000000, 12, 4, 27, 54, 7)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (103, N'Tủ đông 1 ngăn LG Inverter 170 lít', N'tudong1n-1.jpg', 6100000, 12, 3, 27, 54, 7)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (104, N'Tủ đông 1 ngăn LG Inverter 171 lít', N'tudong1n-1.jpg', 6200000, 21, 3, 27, 54, 7)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (105, N'Tủ đông 1 ngăn LG Inverter 172 lít', N'tudong1n-1.jpg', 6300000, 21, 5, 27, 53, 7)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (106, N'Tủ đông 2 ngăn LG Inverter 165 lít', N'tudong2n-1.jpg', 6400000, 21, 5, 28, 43, 7)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (107, N'Tủ đông 2 ngăn LG Inverter 166 lít', N'tudong2n-2.jpg', 6500000, 21, 4, 28, 23, 7)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (108, N'Tủ đông 2 ngăn LG Inverter 167 lít', N'tudong2n-1.jpg', 6600000, 21, 4, 28, 43, 7)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (109, N'Tủ đông 2 ngăn LG Inverter 168 lít', N'tudong2n-2.jpg', 6700000, 21, 4, 28, 43, 7)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (110, N'Tủ đông 2 ngăn LG Inverter 169 lít', N'tudong2n-1.jpg', 6800000, 21, 4, 28, 43, 7)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (111, N'Tủ đông 2 ngăn LG Inverter 170 lít', N'tudong2n-2.jpg', 6900000, 21, 4, 28, 53, 7)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (112, N'Tủ đông 2 ngăn LG Inverter 171 lít', N'tudong2n-1.jpg', 7000000, 21, 4, 28, 43, 7)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (113, N'Tủ đông 2 ngăn LG Inverter 172 lít', N'tudong2n-2.jpg', 7100000, 21, 4, 28, 43, 7)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (114, N'Máy lọc không khí giá đình Airdog X1', N'maylockk1-1.jpg', 2100000, 35, 4, 29, 21, 9)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (115, N'Máy lọc không khí giá đình Airdog X2', N'maylockk1-2.jpg', 2200000, 35, 4, 29, 22, 9)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (116, N'Máy lọc không khí giá đình Airdog X3', N'maylockk1-1.jpg', 2300000, 35, 4, 29, 21, 9)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (117, N'Máy lọc không khí giá đình Airdog X4', N'maylockk1-2.jpg', 2400000, 35, 4, 29, 21, 9)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (118, N'Máy lọc không khí giá đình Airdog X5', N'maylockk1-1.jpg', 2500000, 35, 5, 29, 32, 9)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (119, N'Máy lọc không khí giá đình Airdog X6', N'maylockk1-2.jpg', 2600000, 35, 5, 29, 32, 9)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (120, N'Máy lọc không khí giá đình Airdog X7', N'maylockk1-1.jpg', 2700000, 35, 4, 29, 43, 9)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (121, N'Máy lọc không khí giá đình Airdog X8', N'maylockk1-2.jpg', 2800000, 35, 4, 29, 32, 9)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (122, N'Máy lọc không khí ô tô Airdog X1', N'maylockko-1.jpg', 15100000, 35, 4, 30, 32, 9)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (123, N'Máy lọc không khí ô tô Airdog X2', N'maylockko-2.jpg', 15200000, 35, 3, 30, 45, 9)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (124, N'Máy lọc không khí ô tô Airdog X3', N'maylockko-1.jpg', 15300000, 35, 3, 30, 45, 9)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (125, N'Máy lọc không khí ô tô Airdog X4', N'maylockko-2.jpg', 15400000, 35, 4, 30, 45, 9)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (126, N'Máy lọc không khí ô tô Airdog X5', N'maylockko-1.jpg', 15500000, 35, 4, 30, 43, 9)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (127, N'Máy lọc không khí ô tô Airdog X6', N'maylockko-2.jpg', 15600000, 35, 4, 30, 43, 9)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (128, N'Máy lọc không khí ô tô Airdog X7', N'maylockko-1.jpg', 15700000, 35, 4, 30, 43, 9)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (129, N'Máy lọc không khí ô tô Airdog X8', N'maylockko-2.jpg', 15800000, 35, 4, 30, 32, 9)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (130, N'Máy sấy quần áo LG 9KG', N'maysayqa-4.jpg', 13100000, 20, 4, 5, 45, 5)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (131, N'Máy sấy quần áo LG 10KG', N'maysayqa-3.jpg', 14100000, 20, 4, 5, 45, 5)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (132, N'Máy sấy quần áo LG 11KG', N'maysayqa-2.jpg', 15100000, 20, 4, 5, 45, 5)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (133, N'Máy sấy quần áo LG 12KG', N'maysayqa-1.jpg', 16100000, 20, 4, 5, 45, 5)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (134, N'Máy sấy quần áo Samsung 9KG', N'maysayqa-4.jpg', 16200000, 20, 4, 5, 54, 5)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (135, N'Máy sấy quần áo Samsung 10KG', N'maysayqa-1.jpg', 16300000, 20, 5, 5, 54, 5)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (136, N'Máy sấy quần áo Samsung 11KG', N'maysayqa-3.jpg', 16400000, 20, 3, 5, 45, 5)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (137, N'Máy sấy quần áo Samsung 12KG', N'maysayqa-2.jpg', 16800000, 20, 4, 5, 45, 5)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (138, N'Máy rửa bát HomeKit DW-203', N'mayruabat-1.jpg', 11000000, 30, 4, 8, 34, 8)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (139, N'Máy rửa bát HomeKit DW-204', N'mayruabat-2.jpg', 11200000, 30, 4, 8, 34, 8)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (140, N'Máy rửa bát HomeKit DW-202', N'mayruabat-3.jpg', 11300000, 30, 4, 8, 43, 8)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (141, N'Máy rửa bát HomeKit DW-205', N'mayruabat-3.jpg', 11400000, 30, 4, 8, 34, 8)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (142, N'Máy rửa bát HomeKit DW-206', N'mayruabat-2.jpg', 11500000, 30, 4, 8, 43, 8)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (143, N'Máy rửa bát HomeKit DW-207', N'mayruabat-1.jpg', 11600000, 30, 4, 8, 34, 8)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (144, N'Máy rửa bát HomeKit DW-208', N'mayruabat-2.jpg', 11700000, 30, 4, 8, 34, 8)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (145, N'Máy rửa bát HomeKit DW-209', N'mayruabat-3.jpg', 11800000, 30, 5, 8, 34, 8)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (146, N'Máy hút bụi UltimateHome 2000w', N'mayhutbui-1.jpg', 4100000, 25, 4, 10, 23, 10)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (147, N'Máy hút bụi UltimateHome 2100w', N'mayhutbui-2.jpg', 4200000, 25, 4, 10, 23, 10)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (148, N'Máy hút bụi UltimateHome 2200w', N'mayhutbui-3.jpg', 4300000, 25, 4, 10, 23, 10)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (149, N'Máy hút bụi UltimateHome 2300w', N'mayhutbui-1.jpg', 4400000, 25, 4, 10, 23, 10)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (150, N'Máy hút bụi UltimateHome 2400w', N'mayhutbui-2.jpg', 4500000, 25, 4, 10, 23, 10)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (151, N'Máy hút bụi UltimateHome 2500w', N'mayhutbui-3.jpg', 4600000, 25, 5, 10, 23, 10)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (152, N'Máy hút bụi UltimateHome 2600w', N'mayhutbui-1.jpg', 4700000, 25, 5, 10, 23, 10)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (153, N'Máy hút bụi UltimateHome 2700w', N'mayhutbui-2.jpg', 4800000, 25, 4, 10, 23, 10)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (154, N'Lò vi sóng PANASONIC 23 lít', N'lovisong-1.jpg', 3100000, 30, 4, 11, 35, 11)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (155, N'Lò vi sóng PANASONIC 24 lít', N'lovisong-2.jpg', 3200000, 30, 4, 11, 35, 11)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (156, N'Lò vi sóng PANASONIC 25 lít', N'lovisong-3.jpg', 3300000, 30, 3, 11, 35, 11)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (157, N'Lò vi sóng PANASONIC 26 lít', N'lovisong-1.jpg', 3400000, 30, 5, 11, 35, 11)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (158, N'Lò vi sóng PANASONIC 27 lít', N'lovisong-2.jpg', 3500000, 30, 5, 11, 35, 11)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (159, N'Lò vi sóng PANASONIC 28 lít', N'lovisong-3.jpg', 3600000, 30, 4, 11, 35, 11)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (160, N'Lò vi sóng PANASONIC 29 lít', N'lovisong-1.jpg', 3700000, 30, 4, 11, 35, 11)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (161, N'Lò vi sóng PANASONIC 30 lít', N'lovisong-2.jpg', 3800000, 30, 4, 11, 35, 11)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (162, N'Nồi cơm điện Panasonic 1 lít', N'noicomdien-1.jpg', 1700000, 24, 4, 12, 14, 12)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (163, N'Nồi cơm điện Panasonic 1.2 lít', N'noicomdien-2.jpg', 1800000, 24, 4, 12, 14, 12)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (164, N'Nồi cơm điện Panasonic 1.4 lít', N'noicomdien-3.jpg', 1900000, 24, 4, 12, 14, 12)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (165, N'Nồi cơm điện Panasonic 1.6 lít', N'noicomdien-1.jpg', 2000000, 24, 5, 12, 14, 12)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (166, N'Nồi cơm điện Panasonic 1.8 lít', N'noicomdien-2.jpg', 2100000, 24, 5, 12, 14, 12)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (167, N'Nồi cơm điện Panasonic 1.9 lít', N'noicomdien-3.jpg', 2200000, 24, 4, 12, 14, 12)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (168, N'Nồi cơm điện Panasonic 2 lít', N'noicomdien-1.jpg', 2300000, 24, 3, 12, 14, 12)
GO
INSERT [dbo].[SanPham] ([MaSp], [TenSp], [Anh], [Gia], [Giamgia], [SoSao], [IdDM], [SoLuongSP], [IdDMNoiBat]) VALUES (169, N'Nồi cơm điện Panasonic 2.1 lít', N'noicomdien-2.jpg', 2400000, 24, 4, 12, 14, 12)
GO
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[Slide] ON 
GO
INSERT [dbo].[Slide] ([Id], [Tieude], [NoiDung], [Anh], [Loai]) VALUES (1, N'Giảm giá 20%', N'Ưu đãi đặc biệt giảm giá siêu sốc!', N'quangcao-1.jpg', N'2')
GO
INSERT [dbo].[Slide] ([Id], [Tieude], [NoiDung], [Anh], [Loai]) VALUES (2, N'Giảm giá 30%', N'Sự kiện tích điểm đồi quà cực kỳ hấp dẫn!', N'quangcao-2.jpg', N'2')
GO
INSERT [dbo].[Slide] ([Id], [Tieude], [NoiDung], [Anh], [Loai]) VALUES (3, N'Khuyễn mãi cực sốc', N'Giảm 5% mọi sản phẩm, kể từ ngày 27-11 đến ngày 29-11. Nhanh tay thì còn, chậm thì hết !', N'carousel-1.jpg', N'chinh')
GO
INSERT [dbo].[Slide] ([Id], [Tieude], [NoiDung], [Anh], [Loai]) VALUES (4, N'Ưu đãi lớn', N'Nhằm tri ân khách hàng thân thiết, cửa hàng tổ chức sự kiện "Mua hàng tích điểm đổi quà"!', N'carousel-2.jpg', N'chinh')
GO
INSERT [dbo].[Slide] ([Id], [Tieude], [NoiDung], [Anh], [Loai]) VALUES (5, N'Tháng 11 đáng chờ đợi', N'Tháng 11 này, cửa hàng tổ chứ sự kiện "Mua hàng tích điểm đua top"-Top 1: iphone 14pro max!', N'carousel-3.jpg', N'chinh')
GO
INSERT [dbo].[Slide] ([Id], [Tieude], [NoiDung], [Anh], [Loai]) VALUES (6, N'Giảm giá 50%', N'Cùng Diệu Nhi săn quà đổi thưởng', N'offer-1.jpg', N'1')
GO
INSERT [dbo].[Slide] ([Id], [Tieude], [NoiDung], [Anh], [Loai]) VALUES (7, N'Giảm giá 90%', N'Tặng ngay PC chiến game cực đã!', N'offer-2.jpg', N'1')
GO
SET IDENTITY_INSERT [dbo].[Slide] OFF
GO
ALTER TABLE [dbo].[DatHang] ADD  CONSTRAINT [DF_DatHang_DaThanhToan]  DEFAULT ((0)) FOR [DaThanhToan]
GO
ALTER TABLE [dbo].[ChitietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChitietDonHang_DatHang] FOREIGN KEY([MaDH])
REFERENCES [dbo].[DatHang] ([MaDH])
GO
ALTER TABLE [dbo].[ChitietDonHang] CHECK CONSTRAINT [FK_ChitietDonHang_DatHang]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_DanhMuc] FOREIGN KEY([IdDM])
REFERENCES [dbo].[DanhMuc] ([Id])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_DanhMuc]
GO
