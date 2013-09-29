USE master
GO
IF DB_ID('dbQLBH') IS NOT NULL 
	DROP DATABASE dbQLBH
GO

CREATE DATABASE dbQLBH
GO

USE dbQLBH
GO


CREATE TABLE loaitaikhoan (
	maloaitaikhoan INT IDENTITY (1,1) PRIMARY KEY,
	tenloaitaikhoan NVARCHAR(100)
)
SET IDENTITY_INSERT loaitaikhoan ON
INSERT INTO loaitaikhoan (maloaitaikhoan, tenloaitaikhoan) VALUES
(1, N'System Admin'),
(2, N'Customer Service'),
(3, N'Merchandise'),
(4, N'Accountant')
SET IDENTITY_INSERT loaitaikhoan OFF
GO

CREATE TABLE taikhoan (
	mataikhoan INT IDENTITY (1,1) PRIMARY KEY,
	tentruycap NVARCHAR(100),
	matkhau NVARCHAR(100),
	maloaitaikhoan INT FOREIGN KEY REFERENCES loaitaikhoan(maloaitaikhoan),
	hoten NVARCHAR(100),
	trangthai INT DEFAULT(1)
)

CREATE TABLE danhmucsanpham(
	madanhmuc INT IDENTITY (1,1) PRIMARY KEY,
	tendanhmuc NVARCHAR(100),
	trangthai INT DEFAULT(1)
)

CREATE TABLE sanpham(
	masanpham INT IDENTITY (1,1) PRIMARY KEY,
	tensanpham NVARCHAR(100),
	hinhanh NVARCHAR(100),
	madanhmucsanpham INT FOREIGN KEY REFERENCES danhmucsanpham(madanhmuc),
	soluong INT,
	dongia FLOAT,
	trangthai INT DEFAULT(1)
)

CREATE TABLE khachhang (
	makhachhang INT IDENTITY (1,1) PRIMARY KEY,
	hoten NVARCHAR(100),
	gioitinh INT,
	email NVARCHAR(100),
	ngaysinh DATETIME,
	trangthai INT DEFAULT(1)
)

CREATE TABLE donhang (
	madonhang INT IDENTITY (1,1) PRIMARY KEY,
	makhachhang INT FOREIGN KEY REFERENCES khachhang(makhachhang),
	ngaylap DATETIME,
	tongtien FLOAT
)

CREATE TABLE chitietdonhang (
	mactdonhang INT IDENTITY (1,1) PRIMARY KEY,
	madonhang INT FOREIGN KEY REFERENCES donhang(madonhang),
	masanpham INT FOREIGN KEY REFERENCES sanpham(masanpham),
	soluong INT
)

SET IDENTITY_INSERT taikhoan ON
INSERT INTO taikhoan (mataikhoan, tentruycap, matkhau, maloaitaikhoan, hoten, trangthai) VALUES
(1,N'ddphap', N'827ccb0eea8a706c4c34a16891f84e7b',1,N'Dương Diệu Pháp',1),
(2,N'nqtuan', N'827ccb0eea8a706c4c34a16891f84e7b',1,N'Nguyễn Quốc Tuấn',1),
(3,N'bbloc', N'827ccb0eea8a706c4c34a16891f84e7b',2,N'Bùi Bá Lộc',1),
(4,N'ntlong', N'827ccb0eea8a706c4c34a16891f84e7b',2,N'Nguyễn Thanh Long',1),
(5,N'nnkhanh', N'827ccb0eea8a706c4c34a16891f84e7b',3,N'Nguyễn Ngọc Khánh',1),
(6,N'tvinh', N'827ccb0eea8a706c4c34a16891f84e7b',3,N'Trần Vinh',1),
(7,N'dhsanh', N'827ccb0eea8a706c4c34a16891f84e7b',4,N'Đinh Hoàng Sanh',1),
(8,N'tvluc', N'827ccb0eea8a706c4c34a16891f84e7b',4,N'Trần Văn Lực',1)
SET IDENTITY_INSERT taikhoan OFF
GO

SET IDENTITY_INSERT danhmucsanpham ON
INSERT INTO danhmucsanpham(madanhmuc,tendanhmuc,trangthai) VALUES
(1,N'Laptop',1),
(2,N'Điện thoại',1),
(3,N'Máy tính bảng',1),
(4,N'Máy tính bàn',1),
(5,N'Linh kiện vi tính',1),
(6,N'Phụ kiện máy tính',1),
(7,N'Phụ kiện điện thoại',1),
(8,N'Phần mềm',1),
(9,N'Thẻ cào điện thoại',1)
SET IDENTITY_INSERT danhmucsanpham OFF
GO

SET IDENTITY_INSERT sanpham ON
INSERT INTO sanpham(masanpham, tensanpham, hinhanh, madanhmucsanpham, soluong, dongia, trangthai) VALUES
(1,N'Hp 450', null, 1, 3, 7000000,1),
(2,N'Toshiba Satellite C800', null, 1, 3, 8000000,1),
(3,N'HP Pavilion G4', null, 1, 3, 11000000,1),
(4,N'Samsung Galaxy S4', null, 2, 10, 15990000,1),
(5,N'Iphone 5 32GB', null, 2, 10, 18850000,1),
(6,N'Sony Xperia Z', null, 2, 10, 15490000,1),
(7,N'Asus padfone 2', null, 3, 10, 14990000,1),
(8,N'Galaxy tab 3 10.1" 16GB/3G/Wifi', null, 3, 10, 10490000,1),
(9,N'Google Nexus 7 32GB/3G/Wifi', null, 3, 10, 6990000,1),
(10,N'Apple iMac', null, 4, 2, 36000000,1),
(11,N'Dell Inspiron 660MT', null, 4, 5, 7700000,1),
(12,N'HP Pavilion P2-1321L', null, 4, 5, 6750000,1),
(13,N'MainBoard Gigabyte H77M-D3H', null, 5, 10, 2160000,1),
(14,N'CPU Intel Core I5-3330', null, 5, 10, 4235000,1),
(15,N'Ram DDR3 Kingmax 2GB', null, 5, 10, 495000,1),
(16,N'USB Kingmax 16GB ED07', null, 6, 20, 440000,1),
(17,N'Micro - SDHC Kingmax 8GB(class 10)', null, 6, 10, 210000,1),
(18,N'Mouse Logitech M325', null, 6, 10, 420000,1),
(19,N'Dán màn hình iPhone', null, 7, 50, 90000,1),
(20,N'Móc điện thoại', null, 7, 50, 50000,1),
(21,N'Ốp lưng iPhone 5 Colorant', null, 7, 10, 300000,1),
(22,N'Kaspersky internet security 2013 1PC', null, 8, 10, 255000,1),
(23,N'Win 7 home/basic 32 bit Eng F2C-00932', null, 8, 10, 2660000,1),
(24,N'Office Home Student 2013 32bit-x64 Eng 79G-03570', null, 8, 10, 1859000,1),
(25,N'Brother DW-JC25', null, 9, 20, 1500000,1),
(26,N'Canon 100C', null, 9, 20, 3100000,1),
(27,N'HP 20HPC', null, 9, 20, 2100000,1)
SET IDENTITY_INSERT sanpham OFF
GO

SET IDENTITY_INSERT khachhang ON
INSERT INTO khachhang (makhachhang, hoten, gioitinh, email, ngaysinh, trangthai) VALUES
(1, N'Bùi Bá Lộc', 1, N'bocbalui@gmail.com', '01/03/1991', 1),
(2, N'Nguyễn Quốc Tuấn', 1, N'nqtuan@gmail.com', '04/16/1991', 1),
(3, N'Dương Diệu Pháp', 1, N'd2phap@gmail.com', '07/26/1991', 1 ),
(4, N'Lê Minh Trang', 0, N'lmtrang@gmail.com', '9/16/1991', 1 ),
(5, N'Nguyễn Thị Mỹ Phụng', 0, N'ntmphung@gmail.com', '9/26/1991', 1),
(6, N'Nguyễn Thanh Long', 1, N'ntlong@gmail.com', '10/28/1991', 1),
(7, N'Cao Chu Minh Hoàng', 1, N'ccmhoang@gmail.com', '9/30/1991', 1),
(8, N'Trần Vinh', 1, N'tvinh@gmail.com', '7/30/1991', 1),
(9, N'Lê Văn Tâm', 1, N'lvatam@gmail.com', '10/29/1991', 1),
(10, N'Đinh Hoàng Sanh', 1, N'dhsanh@gmail.com', '1/20/1991', 1),
(11, N'Nguyễn Ngọc Khánh', 1, N'nnkhanh@gmail.com', '06/25/1991', 1),
(12, N'Ngụy Thành Lương', 1, N'ntluong@gmail.com', '3/17/1991', 1),
(13, N'Ngô Quốc Phong', 1, N'nqphong@gmail.com', '11/6/1988', 1),
(14, N'Ngô Bảo Châu', 1, N'nbachau@gmail.com.vn', '8/12/1991', 1)
SET IDENTITY_INSERT khachhang OFF
GO

SET IDENTITY_INSERT donhang ON
INSERT INTO donhang (madonhang, makhachhang, ngaylap, tongtien) VALUES
(1, 1, '9/22/2013', 1600000),
(2, 2, '9/23/2013', 1700000),
(3, 3, '9/24/2013', 1340000),
(4, 4, '9/25/2013', 1432000), 
(5, 5, '8/30/2013', 2000000),
(6, 6, '9/11/2013', 1777000),
(7, 7, '7/14/2013', 2363000), 
(8, 8, '6/9/2013', 1241378),
(9, 9, '8/17/2013', 1241424),
(10, 10, '10/1/2013', 1241362),
(11, 11, '10/21/2013', 2241118),
(12, 12, '10/22/2013', 1998992)
SET IDENTITY_INSERT loaitaikhoan OFF
GO


SET IDENTITY_INSERT chitietdonhang ON
INSERT INTO chitietdonhang (mactdonhang, madonhang, masanpham, soluong) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 2, 1, 1),
(4, 3, 2, 2),
(5, 3, 3, 1),
(6, 4, 4, 2),
(7, 5, 5, 1),
(8, 6, 4, 1),
(9, 7, 5, 1),
(10, 7, 3, 1),
(11, 8, 2, 1),
(12, 9, 3, 2)
SET IDENTITY_INSERT chitietdonhang OFF
GO