
USE [dbQLBH]
GO
/****** Object:  Table [dbo].[danhmucsanpham]    Script Date: 10/04/2013 16:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[danhmucsanpham]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[danhmucsanpham](
	[madanhmuc] [int] IDENTITY(1,1) NOT NULL,
	[tendanhmuc] [nvarchar](100) NULL,
	[trangthai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[madanhmuc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[danhmucsanpham] ON
INSERT [dbo].[danhmucsanpham] ([madanhmuc], [tendanhmuc], [trangthai]) VALUES (1, N'Laptop', 1)
INSERT [dbo].[danhmucsanpham] ([madanhmuc], [tendanhmuc], [trangthai]) VALUES (2, N'Điện thoại', 1)
INSERT [dbo].[danhmucsanpham] ([madanhmuc], [tendanhmuc], [trangthai]) VALUES (3, N'Máy tính bảng', 1)
INSERT [dbo].[danhmucsanpham] ([madanhmuc], [tendanhmuc], [trangthai]) VALUES (4, N'Máy tính bàn', 1)
INSERT [dbo].[danhmucsanpham] ([madanhmuc], [tendanhmuc], [trangthai]) VALUES (5, N'Linh kiện vi tính', 1)
INSERT [dbo].[danhmucsanpham] ([madanhmuc], [tendanhmuc], [trangthai]) VALUES (6, N'Phụ kiện máy tính', 1)
INSERT [dbo].[danhmucsanpham] ([madanhmuc], [tendanhmuc], [trangthai]) VALUES (7, N'Phụ kiện điện thoại', 1)
INSERT [dbo].[danhmucsanpham] ([madanhmuc], [tendanhmuc], [trangthai]) VALUES (8, N'Phần mềm', 1)
SET IDENTITY_INSERT [dbo].[danhmucsanpham] OFF
/****** Object:  Table [dbo].[loaitaikhoan]    Script Date: 10/04/2013 16:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[loaitaikhoan]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[loaitaikhoan](
	[maloaitaikhoan] [int] IDENTITY(1,1) NOT NULL,
	[tenloaitaikhoan] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[maloaitaikhoan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[loaitaikhoan] ON
INSERT [dbo].[loaitaikhoan] ([maloaitaikhoan], [tenloaitaikhoan]) VALUES (1, N'System Admin')
INSERT [dbo].[loaitaikhoan] ([maloaitaikhoan], [tenloaitaikhoan]) VALUES (2, N'Customer Service')
INSERT [dbo].[loaitaikhoan] ([maloaitaikhoan], [tenloaitaikhoan]) VALUES (3, N'Merchandise')
INSERT [dbo].[loaitaikhoan] ([maloaitaikhoan], [tenloaitaikhoan]) VALUES (4, N'Accountant')
SET IDENTITY_INSERT [dbo].[loaitaikhoan] OFF
/****** Object:  Table [dbo].[khachhang]    Script Date: 10/04/2013 16:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[khachhang]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[khachhang](
	[makhachhang] [int] IDENTITY(1,1) NOT NULL,
	[hoten] [nvarchar](100) NULL,
	[gioitinh] [int] NULL,
	[email] [nvarchar](100) NULL,
	[ngaysinh] [datetime] NULL,
	[trangthai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[makhachhang] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[khachhang] ON
INSERT [dbo].[khachhang] ([makhachhang], [hoten], [gioitinh], [email], [ngaysinh], [trangthai]) VALUES (1, N'Bùi Bá Lộc', 1, N'bocbalui@gmail.com', CAST(0x000081D700000000 AS DateTime), 1)
INSERT [dbo].[khachhang] ([makhachhang], [hoten], [gioitinh], [email], [ngaysinh], [trangthai]) VALUES (2, N'Nguyễn Quốc Tuấn', 1, N'nqtuan@gmail.com', CAST(0x0000823E00000000 AS DateTime), 1)
INSERT [dbo].[khachhang] ([makhachhang], [hoten], [gioitinh], [email], [ngaysinh], [trangthai]) VALUES (3, N'Dương Diệu Pháp', 1, N'd2phap@gmail.com', CAST(0x000082A300000000 AS DateTime), 1)
INSERT [dbo].[khachhang] ([makhachhang], [hoten], [gioitinh], [email], [ngaysinh], [trangthai]) VALUES (4, N'Lê Minh Trang', 0, N'lmtrang@gmail.com', CAST(0x000082D700000000 AS DateTime), 1)
INSERT [dbo].[khachhang] ([makhachhang], [hoten], [gioitinh], [email], [ngaysinh], [trangthai]) VALUES (5, N'Nguyễn Thị Mỹ Phụng', 0, N'ntmphung@gmail.com', CAST(0x000082E100000000 AS DateTime), 1)
INSERT [dbo].[khachhang] ([makhachhang], [hoten], [gioitinh], [email], [ngaysinh], [trangthai]) VALUES (6, N'Nguyễn Thanh Long', 1, N'ntlong@gmail.com', CAST(0x0000830100000000 AS DateTime), 1)
INSERT [dbo].[khachhang] ([makhachhang], [hoten], [gioitinh], [email], [ngaysinh], [trangthai]) VALUES (7, N'Cao Chu Minh Hoàng', 1, N'ccmhoang@gmail.com', CAST(0x000082E500000000 AS DateTime), 1)
INSERT [dbo].[khachhang] ([makhachhang], [hoten], [gioitinh], [email], [ngaysinh], [trangthai]) VALUES (8, N'Trần Vinh', 1, N'tvinh@gmail.com', CAST(0x000082A700000000 AS DateTime), 1)
INSERT [dbo].[khachhang] ([makhachhang], [hoten], [gioitinh], [email], [ngaysinh], [trangthai]) VALUES (9, N'Lê Văn Tâm', 1, N'lvatam@gmail.com', CAST(0x0000830200000000 AS DateTime), 1)
INSERT [dbo].[khachhang] ([makhachhang], [hoten], [gioitinh], [email], [ngaysinh], [trangthai]) VALUES (10, N'Đinh Hoàng Sanh', 1, N'dhsanh@gmail.com', CAST(0x000081E800000000 AS DateTime), 1)
INSERT [dbo].[khachhang] ([makhachhang], [hoten], [gioitinh], [email], [ngaysinh], [trangthai]) VALUES (11, N'Nguyễn Ngọc Khánh', 1, N'nnkhanh@gmail.com', CAST(0x0000828400000000 AS DateTime), 1)
INSERT [dbo].[khachhang] ([makhachhang], [hoten], [gioitinh], [email], [ngaysinh], [trangthai]) VALUES (12, N'Ngụy Thành Lương', 1, N'ntluong@gmail.com', CAST(0x0000822000000000 AS DateTime), 1)
INSERT [dbo].[khachhang] ([makhachhang], [hoten], [gioitinh], [email], [ngaysinh], [trangthai]) VALUES (13, N'Ngô Quốc Phong', 1, N'nqphong@gmail.com', CAST(0x00007EC300000000 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[khachhang] OFF
/****** Object:  Table [dbo].[donhang]    Script Date: 10/04/2013 16:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[donhang]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[donhang](
	[madonhang] [int] IDENTITY(1,1) NOT NULL,
	[makhachhang] [int] NULL,
	[ngaylap] [datetime] NULL,
	[tongtien] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[madonhang] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[donhang] ON
INSERT [dbo].[donhang] ([madonhang], [makhachhang], [ngaylap], [tongtien]) VALUES (1, 1, CAST(0x0000A24100000000 AS DateTime), 19710000)
INSERT [dbo].[donhang] ([madonhang], [makhachhang], [ngaylap], [tongtien]) VALUES (2, 2, CAST(0x0000A24200000000 AS DateTime), 7050000)
INSERT [dbo].[donhang] ([madonhang], [makhachhang], [ngaylap], [tongtien]) VALUES (3, 3, CAST(0x0000A24300000000 AS DateTime), 36440000)
INSERT [dbo].[donhang] ([madonhang], [makhachhang], [ngaylap], [tongtien]) VALUES (4, 4, CAST(0x0000A24400000000 AS DateTime), 18990000)
INSERT [dbo].[donhang] ([madonhang], [makhachhang], [ngaylap], [tongtien]) VALUES (5, 5, CAST(0x0000A22A00000000 AS DateTime), 15940000)
INSERT [dbo].[donhang] ([madonhang], [makhachhang], [ngaylap], [tongtien]) VALUES (6, 6, CAST(0x0000A23600000000 AS DateTime), 6890000)
INSERT [dbo].[donhang] ([madonhang], [makhachhang], [ngaylap], [tongtien]) VALUES (7, 7, CAST(0x0000A1FB00000000 AS DateTime), 26440000)
INSERT [dbo].[donhang] ([madonhang], [makhachhang], [ngaylap], [tongtien]) VALUES (8, 8, CAST(0x0000A1D800000000 AS DateTime), 36210000)
INSERT [dbo].[donhang] ([madonhang], [makhachhang], [ngaylap], [tongtien]) VALUES (9, 9, CAST(0x0000A21D00000000 AS DateTime), 24000000)
INSERT [dbo].[donhang] ([madonhang], [makhachhang], [ngaylap], [tongtien]) VALUES (10, 10, CAST(0x0000A24A00000000 AS DateTime), 15550000)
INSERT [dbo].[donhang] ([madonhang], [makhachhang], [ngaylap], [tongtien]) VALUES (11, 11, CAST(0x0000A25E00000000 AS DateTime), 8195000)
INSERT [dbo].[donhang] ([madonhang], [makhachhang], [ngaylap], [tongtien]) VALUES (12, 12, CAST(0x0000A25F00000000 AS DateTime), 10710000)
SET IDENTITY_INSERT [dbo].[donhang] OFF
/****** Object:  Table [dbo].[taikhoan]    Script Date: 10/04/2013 16:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[taikhoan]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[taikhoan](
	[mataikhoan] [int] IDENTITY(1,1) NOT NULL,
	[tentruycap] [nvarchar](100) NULL,
	[matkhau] [nvarchar](100) NULL,
	[maloaitaikhoan] [int] NULL,
	[hoten] [nvarchar](100) NULL,
	[trangthai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[mataikhoan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[taikhoan] ON
INSERT [dbo].[taikhoan] ([mataikhoan], [tentruycap], [matkhau], [maloaitaikhoan], [hoten], [trangthai]) VALUES (1, N'ddphap', N'827ccb0eea8a706c4c34a16891f84e7b', 1, N'Dương Diệu Pháp', 1)
INSERT [dbo].[taikhoan] ([mataikhoan], [tentruycap], [matkhau], [maloaitaikhoan], [hoten], [trangthai]) VALUES (2, N'nqtuan', N'827ccb0eea8a706c4c34a16891f84e7b', 1, N'Nguyễn Quốc Tuấn', 1)
INSERT [dbo].[taikhoan] ([mataikhoan], [tentruycap], [matkhau], [maloaitaikhoan], [hoten], [trangthai]) VALUES (3, N'bbloc', N'827ccb0eea8a706c4c34a16891f84e7b', 2, N'Bùi Bá Lộc', 1)
INSERT [dbo].[taikhoan] ([mataikhoan], [tentruycap], [matkhau], [maloaitaikhoan], [hoten], [trangthai]) VALUES (4, N'ntlong', N'827ccb0eea8a706c4c34a16891f84e7b', 2, N'Nguyễn Thanh Long', 1)
INSERT [dbo].[taikhoan] ([mataikhoan], [tentruycap], [matkhau], [maloaitaikhoan], [hoten], [trangthai]) VALUES (5, N'nnkhanh', N'827ccb0eea8a706c4c34a16891f84e7b', 3, N'Nguyễn Ngọc Khánh', 1)
INSERT [dbo].[taikhoan] ([mataikhoan], [tentruycap], [matkhau], [maloaitaikhoan], [hoten], [trangthai]) VALUES (6, N'tvinh', N'827ccb0eea8a706c4c34a16891f84e7b', 3, N'Trần Vinh', 1)
INSERT [dbo].[taikhoan] ([mataikhoan], [tentruycap], [matkhau], [maloaitaikhoan], [hoten], [trangthai]) VALUES (7, N'dhsanh', N'827ccb0eea8a706c4c34a16891f84e7b', 4, N'Đinh Hoàng Sanh', 1)
INSERT [dbo].[taikhoan] ([mataikhoan], [tentruycap], [matkhau], [maloaitaikhoan], [hoten], [trangthai]) VALUES (8, N'tvluc', N'827ccb0eea8a706c4c34a16891f84e7b', 4, N'Trần Văn Lực', 1)
SET IDENTITY_INSERT [dbo].[taikhoan] OFF
/****** Object:  Table [dbo].[sanpham]    Script Date: 10/04/2013 16:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sanpham]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sanpham](
	[masanpham] [int] IDENTITY(1,1) NOT NULL,
	[tensanpham] [nvarchar](100) NULL,
	[hinhanh] [nvarchar](1000) NULL,
	[madanhmucsanpham] [int] NULL,
	[soluong] [int] NULL,
	[dongia] [float] NULL,
	[trangthai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[masanpham] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[sanpham] ON
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanh], [madanhmucsanpham], [soluong], [dongia], [trangthai]) VALUES (1, N'Hp 450', N'http://kim.com.ph/wp-content/uploads/HP-450.jpg', 1, 3, 7000000, 1)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanh], [madanhmucsanpham], [soluong], [dongia], [trangthai]) VALUES (2, N'Toshiba Satellite C800', N'http://hothardware.com/newsimages/Item20941/Qosmio-X875.jpg', 1, 3, 8000000, 1)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanh], [madanhmucsanpham], [soluong], [dongia], [trangthai]) VALUES (3, N'HP Pavilion G4', N'http://www.notebookcheck.net/uploads/tx_nbc2/hpG4_2.jpg', 1, 3, 11000000, 1)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanh], [madanhmucsanpham], [soluong], [dongia], [trangthai]) VALUES (4, N'Samsung Galaxy S4', N'http://www.digitaltrends.com/wp-content/uploads/2013/03/samsung-galaxy-s4-black-white.jpg', 2, 10, 16000000, 1)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanh], [madanhmucsanpham], [soluong], [dongia], [trangthai]) VALUES (5, N'Iphone 5 32GB', N'http://i.i.cbsi.com/cnwk.1d/i/tim/2012/09/17/06_archimedes_35438535_620x433.jpg', 2, 10, 18850000, 1)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanh], [madanhmucsanpham], [soluong], [dongia], [trangthai]) VALUES (6, N'Sony Xperia Z', NULL, 2, 10, 15500000, 1)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanh], [madanhmucsanpham], [soluong], [dongia], [trangthai]) VALUES (7, N'Asus padfone 2', N'http://cdn2.gsmarena.com/vv/pics/asus/asus-padfone-2-a68.jpg', 3, 10, 15000000, 1)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanh], [madanhmucsanpham], [soluong], [dongia], [trangthai]) VALUES (8, N'Galaxy tab 3 10.1" 16GB/3G/Wifi', NULL, 3, 10, 10500000, 1)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanh], [madanhmucsanpham], [soluong], [dongia], [trangthai]) VALUES (9, N'Google Nexus 7 32GB/3G/Wifi', N'http://static.trustedreviews.com/94/000023d94/90d5_orh348w620/google-nexus2.jpg', 3, 10, 7000000, 1)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanh], [madanhmucsanpham], [soluong], [dongia], [trangthai]) VALUES (10, N'Apple iMac', N'http://images.amazon.com/images/G/01/electronics/apple/apple-imac2011_q2-215-main-lg.jpg', 4, 2, 36000000, 1)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanh], [madanhmucsanpham], [soluong], [dongia], [trangthai]) VALUES (11, N'Dell Inspiron 660MT', NULL, 4, 5, 7700000, 1)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanh], [madanhmucsanpham], [soluong], [dongia], [trangthai]) VALUES (12, N'HP Pavilion P2-1321L', NULL, 4, 5, 6750000, 1)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanh], [madanhmucsanpham], [soluong], [dongia], [trangthai]) VALUES (13, N'MainBoard Gigabyte H77M-D3H', NULL, 5, 10, 2160000, 1)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanh], [madanhmucsanpham], [soluong], [dongia], [trangthai]) VALUES (14, N'CPU Intel Core I5-3330', N'http://content.hwigroup.net/images/products/xl/161113/2/intel_core_i5_3330.jpg', 5, 10, 4235000, 1)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanh], [madanhmucsanpham], [soluong], [dongia], [trangthai]) VALUES (15, N'Ram DDR3 Kingmax 2GB', NULL, 5, 10, 495000, 1)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanh], [madanhmucsanpham], [soluong], [dongia], [trangthai]) VALUES (16, N'USB Kingmax 16GB ED07', NULL, 6, 20, 440000, 1)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanh], [madanhmucsanpham], [soluong], [dongia], [trangthai]) VALUES (17, N'Micro - SDHC Kingmax 8GB(class 10)', NULL, 6, 10, 210000, 1)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanh], [madanhmucsanpham], [soluong], [dongia], [trangthai]) VALUES (18, N'Mouse Logitech M325', N'http://www.argos.co.uk/wcsstore/argos/images/157-9125371aSPA79UC1311307M.jpg', 6, 10, 420000, 1)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanh], [madanhmucsanpham], [soluong], [dongia], [trangthai]) VALUES (19, N'Dán màn hình iPhone', N'http://raovat.yellowpages.vn/img/201308050849_iphone.jpg', 7, 50, 90000, 1)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanh], [madanhmucsanpham], [soluong], [dongia], [trangthai]) VALUES (20, N'Móc điện thoại', NULL, 7, 50, 50000, 1)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanh], [madanhmucsanpham], [soluong], [dongia], [trangthai]) VALUES (21, N'Ốp lưng iPhone 5 Colorant', NULL, 7, 10, 300000, 1)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanh], [madanhmucsanpham], [soluong], [dongia], [trangthai]) VALUES (22, N'Kaspersky internet security 2013 1PC', N'http://ben.com.vn/home/IMG_DETAILS/phanmem/KIS2013_1PC.jpg', 8, 10, 255000, 1)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanh], [madanhmucsanpham], [soluong], [dongia], [trangthai]) VALUES (23, N'Win 7 home/basic 32 bit Eng F2C-00932', N'http://www.stcom.vn/upload/Images/products/SOFT/SOFT-4/0.jpg', 8, 10, 2660000, 1)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [hinhanh], [madanhmucsanpham], [soluong], [dongia], [trangthai]) VALUES (24, N'Office Home Student 2013 32bit-x64 Eng 79G-03570', NULL, 8, 10, 1859000, 1)
SET IDENTITY_INSERT [dbo].[sanpham] OFF
/****** Object:  Table [dbo].[chitietdonhang]    Script Date: 10/04/2013 16:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[chitietdonhang]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[chitietdonhang](
	[mactdonhang] [int] IDENTITY(1,1) NOT NULL,
	[madonhang] [int] NULL,
	[masanpham] [int] NULL,
	[soluong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[mactdonhang] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[chitietdonhang] ON
INSERT [dbo].[chitietdonhang] ([mactdonhang], [madonhang], [masanpham], [soluong]) VALUES (1, 1, 5, 1)
INSERT [dbo].[chitietdonhang] ([mactdonhang], [madonhang], [masanpham], [soluong]) VALUES (2, 1, 16, 1)
INSERT [dbo].[chitietdonhang] ([mactdonhang], [madonhang], [masanpham], [soluong]) VALUES (3, 1, 18, 1)
INSERT [dbo].[chitietdonhang] ([mactdonhang], [madonhang], [masanpham], [soluong]) VALUES (4, 2, 9, 1)
INSERT [dbo].[chitietdonhang] ([mactdonhang], [madonhang], [masanpham], [soluong]) VALUES (5, 2, 20, 1)
INSERT [dbo].[chitietdonhang] ([mactdonhang], [madonhang], [masanpham], [soluong]) VALUES (6, 3, 10, 1)
INSERT [dbo].[chitietdonhang] ([mactdonhang], [madonhang], [masanpham], [soluong]) VALUES (7, 3, 16, 1)
INSERT [dbo].[chitietdonhang] ([mactdonhang], [madonhang], [masanpham], [soluong]) VALUES (8, 4, 5, 1)
INSERT [dbo].[chitietdonhang] ([mactdonhang], [madonhang], [masanpham], [soluong]) VALUES (9, 4, 19, 1)
INSERT [dbo].[chitietdonhang] ([mactdonhang], [madonhang], [masanpham], [soluong]) VALUES (10, 4, 20, 1)
INSERT [dbo].[chitietdonhang] ([mactdonhang], [madonhang], [masanpham], [soluong]) VALUES (11, 5, 6, 1)
INSERT [dbo].[chitietdonhang] ([mactdonhang], [madonhang], [masanpham], [soluong]) VALUES (12, 5, 16, 1)
INSERT [dbo].[chitietdonhang] ([mactdonhang], [madonhang], [masanpham], [soluong]) VALUES (13, 6, 13, 1)
INSERT [dbo].[chitietdonhang] ([mactdonhang], [madonhang], [masanpham], [soluong]) VALUES (14, 6, 14, 1)
INSERT [dbo].[chitietdonhang] ([mactdonhang], [madonhang], [masanpham], [soluong]) VALUES (15, 6, 15, 1)
INSERT [dbo].[chitietdonhang] ([mactdonhang], [madonhang], [masanpham], [soluong]) VALUES (16, 7, 3, 1)
INSERT [dbo].[chitietdonhang] ([mactdonhang], [madonhang], [masanpham], [soluong]) VALUES (17, 7, 7, 1)
INSERT [dbo].[chitietdonhang] ([mactdonhang], [madonhang], [masanpham], [soluong]) VALUES (18, 7, 16, 1)
INSERT [dbo].[chitietdonhang] ([mactdonhang], [madonhang], [masanpham], [soluong]) VALUES (19, 8, 10, 1)
INSERT [dbo].[chitietdonhang] ([mactdonhang], [madonhang], [masanpham], [soluong]) VALUES (20, 8, 17, 1)
INSERT [dbo].[chitietdonhang] ([mactdonhang], [madonhang], [masanpham], [soluong]) VALUES (21, 9, 4, 1)
INSERT [dbo].[chitietdonhang] ([mactdonhang], [madonhang], [masanpham], [soluong]) VALUES (22, 9, 2, 1)
INSERT [dbo].[chitietdonhang] ([mactdonhang], [madonhang], [masanpham], [soluong]) VALUES (23, 10, 6, 1)
INSERT [dbo].[chitietdonhang] ([mactdonhang], [madonhang], [masanpham], [soluong]) VALUES (24, 10, 20, 1)
INSERT [dbo].[chitietdonhang] ([mactdonhang], [madonhang], [masanpham], [soluong]) VALUES (25, 11, 11, 1)
INSERT [dbo].[chitietdonhang] ([mactdonhang], [madonhang], [masanpham], [soluong]) VALUES (26, 11, 15, 1)
INSERT [dbo].[chitietdonhang] ([mactdonhang], [madonhang], [masanpham], [soluong]) VALUES (27, 12, 8, 1)
INSERT [dbo].[chitietdonhang] ([mactdonhang], [madonhang], [masanpham], [soluong]) VALUES (28, 12, 17, 1)
SET IDENTITY_INSERT [dbo].[chitietdonhang] OFF
/****** Object:  Default [DF__danhmucsa__trang__0AD2A005]    Script Date: 10/04/2013 16:56:40 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__danhmucsa__trang__0AD2A005]') AND parent_object_id = OBJECT_ID(N'[dbo].[danhmucsanpham]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__danhmucsa__trang__0AD2A005]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[danhmucsanpham] ADD  DEFAULT ((1)) FOR [trangthai]
END


End
GO
/****** Object:  Default [DF__khachhang__trang__15502E78]    Script Date: 10/04/2013 16:56:40 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__khachhang__trang__15502E78]') AND parent_object_id = OBJECT_ID(N'[dbo].[khachhang]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__khachhang__trang__15502E78]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[khachhang] ADD  DEFAULT ((1)) FOR [trangthai]
END


End
GO
/****** Object:  Default [DF__sanpham__trangth__108B795B]    Script Date: 10/04/2013 16:56:40 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__sanpham__trangth__108B795B]') AND parent_object_id = OBJECT_ID(N'[dbo].[sanpham]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__sanpham__trangth__108B795B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sanpham] ADD  DEFAULT ((1)) FOR [trangthai]
END


End
GO
/****** Object:  Default [DF__taikhoan__trangt__060DEAE8]    Script Date: 10/04/2013 16:56:40 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__taikhoan__trangt__060DEAE8]') AND parent_object_id = OBJECT_ID(N'[dbo].[taikhoan]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__taikhoan__trangt__060DEAE8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[taikhoan] ADD  DEFAULT ((1)) FOR [trangthai]
END


End
GO
/****** Object:  ForeignKey [FK__chitietdo__madon__1ED998B2]    Script Date: 10/04/2013 16:56:40 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__chitietdo__madon__1ED998B2]') AND parent_object_id = OBJECT_ID(N'[dbo].[chitietdonhang]'))
ALTER TABLE [dbo].[chitietdonhang]  WITH CHECK ADD FOREIGN KEY([madonhang])
REFERENCES [dbo].[donhang] ([madonhang])
GO
/****** Object:  ForeignKey [FK__chitietdo__masan__1FCDBCEB]    Script Date: 10/04/2013 16:56:40 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__chitietdo__masan__1FCDBCEB]') AND parent_object_id = OBJECT_ID(N'[dbo].[chitietdonhang]'))
ALTER TABLE [dbo].[chitietdonhang]  WITH CHECK ADD FOREIGN KEY([masanpham])
REFERENCES [dbo].[sanpham] ([masanpham])
GO
/****** Object:  ForeignKey [FK__donhang__makhach__1A14E395]    Script Date: 10/04/2013 16:56:40 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__donhang__makhach__1A14E395]') AND parent_object_id = OBJECT_ID(N'[dbo].[donhang]'))
ALTER TABLE [dbo].[donhang]  WITH CHECK ADD FOREIGN KEY([makhachhang])
REFERENCES [dbo].[khachhang] ([makhachhang])
GO
/****** Object:  ForeignKey [FK__sanpham__madanhm__0F975522]    Script Date: 10/04/2013 16:56:40 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__sanpham__madanhm__0F975522]') AND parent_object_id = OBJECT_ID(N'[dbo].[sanpham]'))
ALTER TABLE [dbo].[sanpham]  WITH CHECK ADD FOREIGN KEY([madanhmucsanpham])
REFERENCES [dbo].[danhmucsanpham] ([madanhmuc])
GO
/****** Object:  ForeignKey [FK__taikhoan__maloai__0519C6AF]    Script Date: 10/04/2013 16:56:40 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__taikhoan__maloai__0519C6AF]') AND parent_object_id = OBJECT_ID(N'[dbo].[taikhoan]'))
ALTER TABLE [dbo].[taikhoan]  WITH CHECK ADD FOREIGN KEY([maloaitaikhoan])
REFERENCES [dbo].[loaitaikhoan] ([maloaitaikhoan])
GO
