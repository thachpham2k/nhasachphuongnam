USE [master]
GO
/****** Object:  Database [VPP_NHASACHPHUONGNAM]    Script Date: 5/20/2021 1:25:38 PM ******/
CREATE DATABASE [VPP_NHASACHPHUONGNAM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'VPP_NHASACHPHUONGNAM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\VPP_NHASACHPHUONGNAM.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'VPP_NHASACHPHUONGNAM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\VPP_NHASACHPHUONGNAM_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [VPP_NHASACHPHUONGNAM] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [VPP_NHASACHPHUONGNAM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [VPP_NHASACHPHUONGNAM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [VPP_NHASACHPHUONGNAM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [VPP_NHASACHPHUONGNAM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [VPP_NHASACHPHUONGNAM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [VPP_NHASACHPHUONGNAM] SET ARITHABORT OFF 
GO
ALTER DATABASE [VPP_NHASACHPHUONGNAM] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [VPP_NHASACHPHUONGNAM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [VPP_NHASACHPHUONGNAM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [VPP_NHASACHPHUONGNAM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [VPP_NHASACHPHUONGNAM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [VPP_NHASACHPHUONGNAM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [VPP_NHASACHPHUONGNAM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [VPP_NHASACHPHUONGNAM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [VPP_NHASACHPHUONGNAM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [VPP_NHASACHPHUONGNAM] SET  ENABLE_BROKER 
GO
ALTER DATABASE [VPP_NHASACHPHUONGNAM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [VPP_NHASACHPHUONGNAM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [VPP_NHASACHPHUONGNAM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [VPP_NHASACHPHUONGNAM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [VPP_NHASACHPHUONGNAM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [VPP_NHASACHPHUONGNAM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [VPP_NHASACHPHUONGNAM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [VPP_NHASACHPHUONGNAM] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [VPP_NHASACHPHUONGNAM] SET  MULTI_USER 
GO
ALTER DATABASE [VPP_NHASACHPHUONGNAM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [VPP_NHASACHPHUONGNAM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [VPP_NHASACHPHUONGNAM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [VPP_NHASACHPHUONGNAM] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [VPP_NHASACHPHUONGNAM] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [VPP_NHASACHPHUONGNAM] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [VPP_NHASACHPHUONGNAM] SET QUERY_STORE = OFF
GO
USE [VPP_NHASACHPHUONGNAM]
GO
/****** Object:  Table [dbo].[CT_HOADON]    Script Date: 5/20/2021 1:25:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_HOADON](
	[MAHD] [varchar](10) NOT NULL,
	[MAMH] [varchar](12) NOT NULL,
	[SOLUONG] [int] NOT NULL,
	[GIA] [money] NOT NULL,
	[GIAMGIA] [float] NOT NULL,
 CONSTRAINT [PK_CT_HOADON] PRIMARY KEY CLUSTERED 
(
	[MAHD] ASC,
	[MAMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_PHIEUNHAP]    Script Date: 5/20/2021 1:25:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_PHIEUNHAP](
	[MAMH] [varchar](12) NOT NULL,
	[MAPN] [varchar](10) NOT NULL,
	[SOLUONG] [int] NOT NULL,
	[GIA] [money] NOT NULL,
	[GIAMGIA] [float] NOT NULL,
 CONSTRAINT [PK_CT_PHIEUNHAP] PRIMARY KEY CLUSTERED 
(
	[MAMH] ASC,
	[MAPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 5/20/2021 1:25:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[MAHD] [varchar](10) NOT NULL,
	[THOIGIAN] [date] NOT NULL,
	[MANV] [varchar](10) NOT NULL,
	[MAKH] [varchar](10) NOT NULL,
 CONSTRAINT [PK_HOADON] PRIMARY KEY CLUSTERED 
(
	[MAHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOATDONG]    Script Date: 5/20/2021 1:25:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOATDONG](
	[MAHDTK] [varchar](10) NOT NULL,
	[MANV] [varchar](10) NOT NULL,
	[THOIGIAN] [date] NOT NULL,
	[GHICHU] [ntext] NULL,
 CONSTRAINT [PK_HOATDONG] PRIMARY KEY CLUSTERED 
(
	[MAHDTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 5/20/2021 1:25:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MAKH] [varchar](10) NOT NULL,
	[TENKH] [nvarchar](50) NOT NULL,
	[HINHANH] [image] NULL,
	[SDT] [char](10) NULL,
	[USERNAME] [varchar](25) NOT NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[MAKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_KHACHHANG] UNIQUE NONCLUSTERED 
(
	[USERNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAIMATHANG]    Script Date: 5/20/2021 1:25:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAIMATHANG](
	[MALOAI] [varchar](10) NOT NULL,
	[TENLOAI] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LOAIMATHANG] PRIMARY KEY CLUSTERED 
(
	[MALOAI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MATHANG]    Script Date: 5/20/2021 1:25:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MATHANG](
	[MAMH] [varchar](12) NOT NULL,
	[TENMH] [nvarchar](50) NOT NULL,
	[HINHANH] [image] NULL,
	[GIA] [money] NOT NULL,
	[SOLUONG] [int] NOT NULL,
	[MOTANGAN] [ntext] NULL,
	[MOTA] [ntext] NULL,
	[MALOAI] [varchar](10) NOT NULL,
	[ALLOW] [bit] NOT NULL,
 CONSTRAINT [PK_MATHANG] PRIMARY KEY CLUSTERED 
(
	[MAMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHACUNGCAP]    Script Date: 5/20/2021 1:25:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHACUNGCAP](
	[MANCC] [varchar](10) NOT NULL,
	[TENNCC] [nvarchar](50) NOT NULL,
	[DIACHI] [nvarchar](255) NULL,
	[SDT] [varchar](10) NULL,
 CONSTRAINT [PK_NHACUNGCAP] PRIMARY KEY CLUSTERED 
(
	[MANCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 5/20/2021 1:25:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MANV] [varchar](10) NOT NULL,
	[TENNV] [nvarchar](50) NOT NULL,
	[HINHANH] [image] NULL,
	[DIACHI] [nvarchar](50) NULL,
	[NGAYSINH] [date] NULL,
	[SDT] [varchar](10) NULL,
	[USERNAME] [varchar](25) NOT NULL,
 CONSTRAINT [PK_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[MANV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_NHANVIEN] UNIQUE NONCLUSTERED 
(
	[USERNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUNHAP]    Script Date: 5/20/2021 1:25:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUNHAP](
	[MAPN] [varchar](10) NOT NULL,
	[THOIGIAN] [date] NOT NULL,
	[MANV] [varchar](10) NOT NULL,
	[MANCC] [varchar](10) NOT NULL,
 CONSTRAINT [PK_PHIEUNHAP] PRIMARY KEY CLUSTERED 
(
	[MAPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ROLE]    Script Date: 5/20/2021 1:25:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ROLE](
	[MAROLE] [varchar](10) NOT NULL,
	[TENROLE] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ROLE] PRIMARY KEY CLUSTERED 
(
	[MAROLE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 5/20/2021 1:25:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[USERNAME] [varchar](25) NOT NULL,
	[PASSWORD] [varchar](50) NOT NULL,
	[MAROLE] [varchar](10) NOT NULL,
 CONSTRAINT [PK_TAIKHOAN] PRIMARY KEY CLUSTERED 
(
	[USERNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CT_HOADON]  WITH CHECK ADD  CONSTRAINT [FK_CT_HOADON_HOADON] FOREIGN KEY([MAHD])
REFERENCES [dbo].[HOADON] ([MAHD])
GO
ALTER TABLE [dbo].[CT_HOADON] CHECK CONSTRAINT [FK_CT_HOADON_HOADON]
GO
ALTER TABLE [dbo].[CT_HOADON]  WITH CHECK ADD  CONSTRAINT [FK_CT_HOADON_MATHANG] FOREIGN KEY([MAMH])
REFERENCES [dbo].[MATHANG] ([MAMH])
GO
ALTER TABLE [dbo].[CT_HOADON] CHECK CONSTRAINT [FK_CT_HOADON_MATHANG]
GO
ALTER TABLE [dbo].[CT_PHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FK_CT_PHIEUNHAP_MATHANG] FOREIGN KEY([MAMH])
REFERENCES [dbo].[MATHANG] ([MAMH])
GO
ALTER TABLE [dbo].[CT_PHIEUNHAP] CHECK CONSTRAINT [FK_CT_PHIEUNHAP_MATHANG]
GO
ALTER TABLE [dbo].[CT_PHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FK_CT_PHIEUNHAP_PHIEUNHAP] FOREIGN KEY([MAPN])
REFERENCES [dbo].[PHIEUNHAP] ([MAPN])
GO
ALTER TABLE [dbo].[CT_PHIEUNHAP] CHECK CONSTRAINT [FK_CT_PHIEUNHAP_PHIEUNHAP]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_KHACHHANG] FOREIGN KEY([MAKH])
REFERENCES [dbo].[KHACHHANG] ([MAKH])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_KHACHHANG]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_NHANVIEN] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_NHANVIEN]
GO
ALTER TABLE [dbo].[HOATDONG]  WITH CHECK ADD  CONSTRAINT [FK_HOATDONG_NHANVIEN] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[HOATDONG] CHECK CONSTRAINT [FK_HOATDONG_NHANVIEN]
GO
ALTER TABLE [dbo].[KHACHHANG]  WITH CHECK ADD  CONSTRAINT [FK_KHACHHANG_TAIKHOAN] FOREIGN KEY([USERNAME])
REFERENCES [dbo].[TAIKHOAN] ([USERNAME])
GO
ALTER TABLE [dbo].[KHACHHANG] CHECK CONSTRAINT [FK_KHACHHANG_TAIKHOAN]
GO
ALTER TABLE [dbo].[MATHANG]  WITH CHECK ADD  CONSTRAINT [FK_MATHANG_LOAIMATHANG] FOREIGN KEY([MALOAI])
REFERENCES [dbo].[LOAIMATHANG] ([MALOAI])
GO
ALTER TABLE [dbo].[MATHANG] CHECK CONSTRAINT [FK_MATHANG_LOAIMATHANG]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [FK_NHANVIEN_TAIKHOAN] FOREIGN KEY([USERNAME])
REFERENCES [dbo].[TAIKHOAN] ([USERNAME])
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [FK_NHANVIEN_TAIKHOAN]
GO
ALTER TABLE [dbo].[PHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUNHAP_NHACUNGCAP] FOREIGN KEY([MANCC])
REFERENCES [dbo].[NHACUNGCAP] ([MANCC])
GO
ALTER TABLE [dbo].[PHIEUNHAP] CHECK CONSTRAINT [FK_PHIEUNHAP_NHACUNGCAP]
GO
ALTER TABLE [dbo].[PHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUNHAP_NHANVIEN] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[PHIEUNHAP] CHECK CONSTRAINT [FK_PHIEUNHAP_NHANVIEN]
GO
ALTER TABLE [dbo].[TAIKHOAN]  WITH CHECK ADD  CONSTRAINT [FK_TAIKHOAN_ROLE] FOREIGN KEY([MAROLE])
REFERENCES [dbo].[ROLE] ([MAROLE])
GO
ALTER TABLE [dbo].[TAIKHOAN] CHECK CONSTRAINT [FK_TAIKHOAN_ROLE]
GO
USE [master]
GO
ALTER DATABASE [VPP_NHASACHPHUONGNAM] SET  READ_WRITE 
GO
