USE [master]
GO
/****** Object:  Database [Youtube]    Script Date: 7.03.2024 19:33:36 ******/
CREATE DATABASE [Youtube]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Youtube', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Youtube.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Youtube_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Youtube_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Youtube] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Youtube].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Youtube] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Youtube] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Youtube] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Youtube] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Youtube] SET ARITHABORT OFF 
GO
ALTER DATABASE [Youtube] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Youtube] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Youtube] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Youtube] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Youtube] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Youtube] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Youtube] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Youtube] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Youtube] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Youtube] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Youtube] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Youtube] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Youtube] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Youtube] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Youtube] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Youtube] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Youtube] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Youtube] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Youtube] SET  MULTI_USER 
GO
ALTER DATABASE [Youtube] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Youtube] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Youtube] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Youtube] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Youtube] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Youtube] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Youtube] SET QUERY_STORE = OFF
GO
USE [Youtube]
GO
/****** Object:  Table [dbo].[Abone]    Script Date: 7.03.2024 19:33:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Abone](
	[aboneID] [int] IDENTITY(1,1) NOT NULL,
	[kullaniciID] [int] NULL,
	[kanalID] [int] NULL,
 CONSTRAINT [PK_Abone] PRIMARY KEY CLUSTERED 
(
	[aboneID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Abonelik]    Script Date: 7.03.2024 19:33:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Abonelik](
	[abonelikID] [int] IDENTITY(1,1) NOT NULL,
	[kullaniciID] [int] NULL,
	[kanalID] [int] NULL,
 CONSTRAINT [PK_Abonelikler] PRIMARY KEY CLUSTERED 
(
	[abonelikID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Etiket]    Script Date: 7.03.2024 19:33:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Etiket](
	[etiketID] [int] IDENTITY(1,1) NOT NULL,
	[ad] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Etiketler] PRIMARY KEY CLUSTERED 
(
	[etiketID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gecmis]    Script Date: 7.03.2024 19:33:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gecmis](
	[gecmisID] [int] IDENTITY(1,1) NOT NULL,
	[kullaniciID] [int] NULL,
	[videoID] [int] NULL,
 CONSTRAINT [PK_Gecmis] PRIMARY KEY CLUSTERED 
(
	[gecmisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Geri_Bildirim]    Script Date: 7.03.2024 19:33:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Geri_Bildirim](
	[geriBildirimID] [int] IDENTITY(1,1) NOT NULL,
	[kanalID] [int] NULL,
	[aciklama] [nvarchar](max) NULL,
	[tarih] [smalldatetime] NULL,
 CONSTRAINT [PK_Geri_Bildirim] PRIMARY KEY CLUSTERED 
(
	[geriBildirimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kanal]    Script Date: 7.03.2024 19:33:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kanal](
	[kanalID] [int] IDENTITY(1,1) NOT NULL,
	[kullaniciID] [int] NULL,
	[kanalAdi] [nvarchar](50) NULL,
	[aciklama] [nvarchar](max) NULL,
	[olusturmaTarihi] [smalldatetime] NULL,
 CONSTRAINT [PK_Kanallar] PRIMARY KEY CLUSTERED 
(
	[kanalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategori]    Script Date: 7.03.2024 19:33:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategori](
	[kategoriID] [int] IDENTITY(1,1) NOT NULL,
	[ad] [nvarchar](50) NULL,
 CONSTRAINT [PK_Kategoriler] PRIMARY KEY CLUSTERED 
(
	[kategoriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kullanici]    Script Date: 7.03.2024 19:33:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanici](
	[kullaniciID] [int] IDENTITY(1,1) NOT NULL,
	[kullaniciAdi] [nvarchar](50) NULL,
	[ePosta] [nvarchar](50) NULL,
	[parola] [nvarchar](6) NULL,
	[ad] [nvarchar](50) NULL,
	[soyad] [nvarchar](50) NULL,
	[cinsiyet] [char](1) NULL,
	[dogumTarihi] [smalldatetime] NULL,
	[tel] [nvarchar](10) NULL,
	[konum] [nvarchar](50) NULL,
 CONSTRAINT [PK_Kullanicilar] PRIMARY KEY CLUSTERED 
(
	[kullaniciID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Video]    Script Date: 7.03.2024 19:33:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Video](
	[videoID] [int] IDENTITY(1,1) NOT NULL,
	[kanalID] [int] NULL,
	[baslik] [nvarchar](max) NULL,
	[aciklama] [nvarchar](max) NULL,
	[yayinlanmaTarihi] [smalldatetime] NULL,
	[gorunteleme] [int] NULL,
 CONSTRAINT [PK_Videolar] PRIMARY KEY CLUSTERED 
(
	[videoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Video_Begeni]    Script Date: 7.03.2024 19:33:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Video_Begeni](
	[begeniID] [int] IDENTITY(1,1) NOT NULL,
	[kullaniciID] [int] NULL,
	[videoID] [int] NULL,
 CONSTRAINT [PK_Begeniler] PRIMARY KEY CLUSTERED 
(
	[begeniID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Video_Etiket]    Script Date: 7.03.2024 19:33:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Video_Etiket](
	[videoID] [int] NULL,
	[etiketID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Video_Kategori]    Script Date: 7.03.2024 19:33:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Video_Kategori](
	[videoID] [int] IDENTITY(1,1) NOT NULL,
	[kategoriID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yorum]    Script Date: 7.03.2024 19:33:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yorum](
	[yorumID] [int] IDENTITY(1,1) NOT NULL,
	[kullaniciID] [int] NULL,
	[videoID] [int] NULL,
	[icerik] [nvarchar](max) NULL,
	[yayinlanmaTarihi] [smalldatetime] NULL,
	[begeniSayisi] [int] NULL,
 CONSTRAINT [PK_Yorumlar] PRIMARY KEY CLUSTERED 
(
	[yorumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yorum_Begeni]    Script Date: 7.03.2024 19:33:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yorum_Begeni](
	[begeniID] [int] IDENTITY(1,1) NOT NULL,
	[kullaniciID] [int] NULL,
	[yorumID] [int] NULL,
 CONSTRAINT [PK_Yorum_Begeni] PRIMARY KEY CLUSTERED 
(
	[begeniID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Abone] ON 

INSERT [dbo].[Abone] ([aboneID], [kullaniciID], [kanalID]) VALUES (1, 1, 10)
INSERT [dbo].[Abone] ([aboneID], [kullaniciID], [kanalID]) VALUES (2, 2, 1)
INSERT [dbo].[Abone] ([aboneID], [kullaniciID], [kanalID]) VALUES (3, 2, 8)
INSERT [dbo].[Abone] ([aboneID], [kullaniciID], [kanalID]) VALUES (4, 2, 10)
INSERT [dbo].[Abone] ([aboneID], [kullaniciID], [kanalID]) VALUES (5, 2, 4)
INSERT [dbo].[Abone] ([aboneID], [kullaniciID], [kanalID]) VALUES (6, 2, 15)
INSERT [dbo].[Abone] ([aboneID], [kullaniciID], [kanalID]) VALUES (7, 4, 1)
INSERT [dbo].[Abone] ([aboneID], [kullaniciID], [kanalID]) VALUES (8, 4, 2)
INSERT [dbo].[Abone] ([aboneID], [kullaniciID], [kanalID]) VALUES (9, 4, 3)
INSERT [dbo].[Abone] ([aboneID], [kullaniciID], [kanalID]) VALUES (10, 4, 12)
INSERT [dbo].[Abone] ([aboneID], [kullaniciID], [kanalID]) VALUES (11, 5, 1)
INSERT [dbo].[Abone] ([aboneID], [kullaniciID], [kanalID]) VALUES (12, 5, 5)
INSERT [dbo].[Abone] ([aboneID], [kullaniciID], [kanalID]) VALUES (13, 5, 10)
INSERT [dbo].[Abone] ([aboneID], [kullaniciID], [kanalID]) VALUES (14, 6, 3)
INSERT [dbo].[Abone] ([aboneID], [kullaniciID], [kanalID]) VALUES (15, 6, 6)
INSERT [dbo].[Abone] ([aboneID], [kullaniciID], [kanalID]) VALUES (16, 6, 8)
INSERT [dbo].[Abone] ([aboneID], [kullaniciID], [kanalID]) VALUES (17, 6, 4)
INSERT [dbo].[Abone] ([aboneID], [kullaniciID], [kanalID]) VALUES (18, 6, 12)
INSERT [dbo].[Abone] ([aboneID], [kullaniciID], [kanalID]) VALUES (19, 8, 2)
INSERT [dbo].[Abone] ([aboneID], [kullaniciID], [kanalID]) VALUES (20, 8, 5)
INSERT [dbo].[Abone] ([aboneID], [kullaniciID], [kanalID]) VALUES (21, 8, 8)
INSERT [dbo].[Abone] ([aboneID], [kullaniciID], [kanalID]) VALUES (22, 9, 7)
INSERT [dbo].[Abone] ([aboneID], [kullaniciID], [kanalID]) VALUES (23, 9, 8)
INSERT [dbo].[Abone] ([aboneID], [kullaniciID], [kanalID]) VALUES (24, 9, 13)
INSERT [dbo].[Abone] ([aboneID], [kullaniciID], [kanalID]) VALUES (25, 9, 15)
INSERT [dbo].[Abone] ([aboneID], [kullaniciID], [kanalID]) VALUES (26, 10, 4)
INSERT [dbo].[Abone] ([aboneID], [kullaniciID], [kanalID]) VALUES (27, 10, 14)
INSERT [dbo].[Abone] ([aboneID], [kullaniciID], [kanalID]) VALUES (28, 11, 4)
INSERT [dbo].[Abone] ([aboneID], [kullaniciID], [kanalID]) VALUES (29, 13, 1)
INSERT [dbo].[Abone] ([aboneID], [kullaniciID], [kanalID]) VALUES (30, 13, 4)
INSERT [dbo].[Abone] ([aboneID], [kullaniciID], [kanalID]) VALUES (31, 13, 3)
INSERT [dbo].[Abone] ([aboneID], [kullaniciID], [kanalID]) VALUES (32, 13, 9)
INSERT [dbo].[Abone] ([aboneID], [kullaniciID], [kanalID]) VALUES (33, 13, 14)
INSERT [dbo].[Abone] ([aboneID], [kullaniciID], [kanalID]) VALUES (34, 13, 8)
INSERT [dbo].[Abone] ([aboneID], [kullaniciID], [kanalID]) VALUES (35, 13, 15)
INSERT [dbo].[Abone] ([aboneID], [kullaniciID], [kanalID]) VALUES (36, 15, 3)
INSERT [dbo].[Abone] ([aboneID], [kullaniciID], [kanalID]) VALUES (37, 15, 4)
INSERT [dbo].[Abone] ([aboneID], [kullaniciID], [kanalID]) VALUES (38, 15, 9)
INSERT [dbo].[Abone] ([aboneID], [kullaniciID], [kanalID]) VALUES (39, 15, 14)
SET IDENTITY_INSERT [dbo].[Abone] OFF
GO
SET IDENTITY_INSERT [dbo].[Abonelik] ON 

INSERT [dbo].[Abonelik] ([abonelikID], [kullaniciID], [kanalID]) VALUES (1, 1, 2)
INSERT [dbo].[Abonelik] ([abonelikID], [kullaniciID], [kanalID]) VALUES (2, 1, 4)
INSERT [dbo].[Abonelik] ([abonelikID], [kullaniciID], [kanalID]) VALUES (3, 1, 5)
INSERT [dbo].[Abonelik] ([abonelikID], [kullaniciID], [kanalID]) VALUES (4, 1, 12)
INSERT [dbo].[Abonelik] ([abonelikID], [kullaniciID], [kanalID]) VALUES (5, 2, 4)
INSERT [dbo].[Abonelik] ([abonelikID], [kullaniciID], [kanalID]) VALUES (6, 2, 8)
INSERT [dbo].[Abonelik] ([abonelikID], [kullaniciID], [kanalID]) VALUES (7, 3, 4)
INSERT [dbo].[Abonelik] ([abonelikID], [kullaniciID], [kanalID]) VALUES (8, 3, 6)
INSERT [dbo].[Abonelik] ([abonelikID], [kullaniciID], [kanalID]) VALUES (9, 3, 13)
INSERT [dbo].[Abonelik] ([abonelikID], [kullaniciID], [kanalID]) VALUES (10, 3, 14)
INSERT [dbo].[Abonelik] ([abonelikID], [kullaniciID], [kanalID]) VALUES (11, 3, 15)
INSERT [dbo].[Abonelik] ([abonelikID], [kullaniciID], [kanalID]) VALUES (12, 4, 3)
INSERT [dbo].[Abonelik] ([abonelikID], [kullaniciID], [kanalID]) VALUES (13, 4, 7)
INSERT [dbo].[Abonelik] ([abonelikID], [kullaniciID], [kanalID]) VALUES (14, 4, 10)
INSERT [dbo].[Abonelik] ([abonelikID], [kullaniciID], [kanalID]) VALUES (15, 4, 11)
INSERT [dbo].[Abonelik] ([abonelikID], [kullaniciID], [kanalID]) VALUES (16, 4, 12)
INSERT [dbo].[Abonelik] ([abonelikID], [kullaniciID], [kanalID]) VALUES (17, 4, 15)
INSERT [dbo].[Abonelik] ([abonelikID], [kullaniciID], [kanalID]) VALUES (18, 5, 5)
INSERT [dbo].[Abonelik] ([abonelikID], [kullaniciID], [kanalID]) VALUES (19, 5, 8)
INSERT [dbo].[Abonelik] ([abonelikID], [kullaniciID], [kanalID]) VALUES (20, 6, 6)
INSERT [dbo].[Abonelik] ([abonelikID], [kullaniciID], [kanalID]) VALUES (21, 7, 9)
INSERT [dbo].[Abonelik] ([abonelikID], [kullaniciID], [kanalID]) VALUES (22, 8, 2)
INSERT [dbo].[Abonelik] ([abonelikID], [kullaniciID], [kanalID]) VALUES (23, 8, 6)
INSERT [dbo].[Abonelik] ([abonelikID], [kullaniciID], [kanalID]) VALUES (24, 8, 8)
INSERT [dbo].[Abonelik] ([abonelikID], [kullaniciID], [kanalID]) VALUES (25, 8, 9)
INSERT [dbo].[Abonelik] ([abonelikID], [kullaniciID], [kanalID]) VALUES (26, 8, 14)
INSERT [dbo].[Abonelik] ([abonelikID], [kullaniciID], [kanalID]) VALUES (27, 9, 13)
INSERT [dbo].[Abonelik] ([abonelikID], [kullaniciID], [kanalID]) VALUES (28, 9, 15)
INSERT [dbo].[Abonelik] ([abonelikID], [kullaniciID], [kanalID]) VALUES (29, 10, 1)
INSERT [dbo].[Abonelik] ([abonelikID], [kullaniciID], [kanalID]) VALUES (30, 10, 2)
INSERT [dbo].[Abonelik] ([abonelikID], [kullaniciID], [kanalID]) VALUES (31, 10, 5)
INSERT [dbo].[Abonelik] ([abonelikID], [kullaniciID], [kanalID]) VALUES (32, 12, 4)
INSERT [dbo].[Abonelik] ([abonelikID], [kullaniciID], [kanalID]) VALUES (33, 12, 7)
INSERT [dbo].[Abonelik] ([abonelikID], [kullaniciID], [kanalID]) VALUES (34, 13, 9)
INSERT [dbo].[Abonelik] ([abonelikID], [kullaniciID], [kanalID]) VALUES (35, 14, 10)
INSERT [dbo].[Abonelik] ([abonelikID], [kullaniciID], [kanalID]) VALUES (36, 14, 13)
INSERT [dbo].[Abonelik] ([abonelikID], [kullaniciID], [kanalID]) VALUES (37, 14, 15)
INSERT [dbo].[Abonelik] ([abonelikID], [kullaniciID], [kanalID]) VALUES (38, 15, 3)
INSERT [dbo].[Abonelik] ([abonelikID], [kullaniciID], [kanalID]) VALUES (39, 15, 9)
INSERT [dbo].[Abonelik] ([abonelikID], [kullaniciID], [kanalID]) VALUES (40, 15, 14)
SET IDENTITY_INSERT [dbo].[Abonelik] OFF
GO
SET IDENTITY_INSERT [dbo].[Etiket] ON 

INSERT [dbo].[Etiket] ([etiketID], [ad]) VALUES (1, N'Zaman Yönetimi İpuçları: Daha Verimli ve Daha Organize Olun')
INSERT [dbo].[Etiket] ([etiketID], [ad]) VALUES (2, N'Yaratıcı Yazma İpuçları: İçinizdeki Yazarı Keşfedin')
INSERT [dbo].[Etiket] ([etiketID], [ad]) VALUES (3, N'Sağlıklı Beslenme')
INSERT [dbo].[Etiket] ([etiketID], [ad]) VALUES (4, N'Fotoğrafçılık İpuçları')
INSERT [dbo].[Etiket] ([etiketID], [ad]) VALUES (5, N'Stres Yönetimi Teknikleri')
INSERT [dbo].[Etiket] ([etiketID], [ad]) VALUES (6, N'Dijital Pazar')
INSERT [dbo].[Etiket] ([etiketID], [ad]) VALUES (7, N'Başarılı Sunum Teknikleri')
INSERT [dbo].[Etiket] ([etiketID], [ad]) VALUES (8, N'Kendin Yap Projeleri')
INSERT [dbo].[Etiket] ([etiketID], [ad]) VALUES (9, N'Motivasyon ve Başarı')
INSERT [dbo].[Etiket] ([etiketID], [ad]) VALUES (10, N'Yoga ve Meditasyon')
INSERT [dbo].[Etiket] ([etiketID], [ad]) VALUES (11, N'Yeni Dil Öğrenme Stratejileri')
INSERT [dbo].[Etiket] ([etiketID], [ad]) VALUES (12, N'Dijital Pazarlama İpuçları: Online İşinizi Büyütün')
INSERT [dbo].[Etiket] ([etiketID], [ad]) VALUES (13, N'Profesyonel İş Görüşmesi İpuçları')
INSERT [dbo].[Etiket] ([etiketID], [ad]) VALUES (14, N'Fitness Rutini Oluşturma')
INSERT [dbo].[Etiket] ([etiketID], [ad]) VALUES (15, N'Yaratıcı Fikir Geliştirme')
INSERT [dbo].[Etiket] ([etiketID], [ad]) VALUES (16, N'Finansal Okuryazarlık')
INSERT [dbo].[Etiket] ([etiketID], [ad]) VALUES (17, N'Etkili İletişim Becerileri')
INSERT [dbo].[Etiket] ([etiketID], [ad]) VALUES (18, N'eni Başlayanlar İçin Fitness')
INSERT [dbo].[Etiket] ([etiketID], [ad]) VALUES (19, N'Sosyal Medya Pazarlama')
INSERT [dbo].[Etiket] ([etiketID], [ad]) VALUES (20, N'Zihin ve Beden Sağlığı')
INSERT [dbo].[Etiket] ([etiketID], [ad]) VALUES (21, N'Girişimcilik 101')
INSERT [dbo].[Etiket] ([etiketID], [ad]) VALUES (22, N'Dijital Nomadlık')
INSERT [dbo].[Etiket] ([etiketID], [ad]) VALUES (23, N'İleri Düzey Fotoğrafçılık')
INSERT [dbo].[Etiket] ([etiketID], [ad]) VALUES (24, N'Doğal Sağlık ve Beslenme')
INSERT [dbo].[Etiket] ([etiketID], [ad]) VALUES (25, N'Sosyal Becerileri Geliştirme')
INSERT [dbo].[Etiket] ([etiketID], [ad]) VALUES (26, N'Yaratıcı Yazma')
INSERT [dbo].[Etiket] ([etiketID], [ad]) VALUES (27, N'Yaratıcı Hobiler')
INSERT [dbo].[Etiket] ([etiketID], [ad]) VALUES (28, N'Dijital Güvenlik')
INSERT [dbo].[Etiket] ([etiketID], [ad]) VALUES (29, N'Doğa Fotoğrafçılığı')
INSERT [dbo].[Etiket] ([etiketID], [ad]) VALUES (30, N'Yoga ve Meditasyon')
INSERT [dbo].[Etiket] ([etiketID], [ad]) VALUES (31, N'Yemek Tarifleri')
INSERT [dbo].[Etiket] ([etiketID], [ad]) VALUES (32, N'Girişimcilik Hikayeleri')
INSERT [dbo].[Etiket] ([etiketID], [ad]) VALUES (33, N'Kişisel Finans Yönetimi')
INSERT [dbo].[Etiket] ([etiketID], [ad]) VALUES (34, N'Kendine İyi Bakım')
INSERT [dbo].[Etiket] ([etiketID], [ad]) VALUES (35, N'Yabancı Dil Öğrenme')
INSERT [dbo].[Etiket] ([etiketID], [ad]) VALUES (36, N'Stil İpuçları')
INSERT [dbo].[Etiket] ([etiketID], [ad]) VALUES (37, N'Zihin Gücü ve Motivasyon')
INSERT [dbo].[Etiket] ([etiketID], [ad]) VALUES (38, N'Doğa Keşifleri')
INSERT [dbo].[Etiket] ([etiketID], [ad]) VALUES (39, N'Doğal Sağlık')
INSERT [dbo].[Etiket] ([etiketID], [ad]) VALUES (40, N'Zihin Sağlığı')
INSERT [dbo].[Etiket] ([etiketID], [ad]) VALUES (41, N'Yoga')
INSERT [dbo].[Etiket] ([etiketID], [ad]) VALUES (42, N'Meditasyon')
INSERT [dbo].[Etiket] ([etiketID], [ad]) VALUES (43, N'Girişimcilik')
INSERT [dbo].[Etiket] ([etiketID], [ad]) VALUES (44, N'Stres Yönetimi')
INSERT [dbo].[Etiket] ([etiketID], [ad]) VALUES (45, N'Fotoğrafçılık')
SET IDENTITY_INSERT [dbo].[Etiket] OFF
GO
SET IDENTITY_INSERT [dbo].[Gecmis] ON 

INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (1, 1, 5)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (2, 1, 7)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (3, 1, 38)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (4, 2, 12)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (5, 2, 15)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (6, 2, 13)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (7, 3, 5)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (8, 3, 7)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (9, 3, 9)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (10, 3, 11)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (11, 3, 15)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (12, 4, 27)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (13, 4, 28)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (14, 5, 31)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (15, 6, 32)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (16, 7, 33)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (17, 7, 34)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (18, 7, 35)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (19, 7, 36)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (20, 8, 37)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (21, 8, 1)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (22, 8, 2)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (23, 8, 3)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (24, 9, 4)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (25, 9, 5)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (26, 9, 6)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (27, 10, 7)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (28, 11, 8)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (29, 12, 9)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (30, 13, 10)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (31, 13, 10)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (32, 13, 11)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (33, 13, 12)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (34, 14, 15)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (35, 14, 16)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (36, 14, 17)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (37, 10, 17)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (38, 10, 18)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (39, 10, 19)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (40, 11, 20)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (41, 11, 21)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (42, 11, 22)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (43, 12, 23)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (44, 12, 24)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (45, 12, 25)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (46, 3, 26)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (47, 3, 27)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (48, 3, 28)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (49, 3, 29)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (50, 1, 30)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (51, 2, 31)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (52, 4, 12)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (53, 5, 17)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (54, 5, 19)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (55, 5, 1)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (56, 5, 4)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (57, 6, 7)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (58, 6, 8)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (59, 6, 13)
INSERT [dbo].[Gecmis] ([gecmisID], [kullaniciID], [videoID]) VALUES (60, 6, 25)
SET IDENTITY_INSERT [dbo].[Gecmis] OFF
GO
SET IDENTITY_INSERT [dbo].[Geri_Bildirim] ON 

INSERT [dbo].[Geri_Bildirim] ([geriBildirimID], [kanalID], [aciklama], [tarih]) VALUES (1, 2, N'Merhaba, son güncellemenizde videoların önerilenler bölümünde daha az çeşitlilik olduğunu fark ettim. Daha geniş bir içerik yelpazesi sunarak kullanıcılara daha fazla seçenek sunabilirsiniz.', CAST(N'2010-06-04T00:00:00' AS SmallDateTime))
INSERT [dbo].[Geri_Bildirim] ([geriBildirimID], [kanalID], [aciklama], [tarih]) VALUES (2, 6, N'Video oynatma sırasında yaşadığım kesintiler ve yavaş yükleme sorunlarından dolayı büyük bir hayal kırıklığı yaşıyorum. Bu sorunları gidermek için altyapıyı iyileştirme adımları atmanızı öneririm.', CAST(N'2015-04-30T00:00:00' AS SmallDateTime))
INSERT [dbo].[Geri_Bildirim] ([geriBildirimID], [kanalID], [aciklama], [tarih]) VALUES (3, 6, N'Reklamların video içeriğiyle uyumlu olmasına dikkat etmenizi rica ediyorum. Arka arkaya gelen rahatsız edici reklamlar, kullanıcı deneyimini olumsuz etkiliyor.', CAST(N'2017-02-13T00:00:00' AS SmallDateTime))
INSERT [dbo].[Geri_Bildirim] ([geriBildirimID], [kanalID], [aciklama], [tarih]) VALUES (4, 8, N'YouTube algoritmasının bazen yanlış içerik önerdiğini düşünüyorum. İlgimi çekmeyen veya ilgi alanlarıma uymayan videoların sık sık karşıma çıkmasını engellemek için daha gelişmiş bir kişiselleştirme sistemi kullanmanızı öneririm.', CAST(N'2014-05-03T00:00:00' AS SmallDateTime))
INSERT [dbo].[Geri_Bildirim] ([geriBildirimID], [kanalID], [aciklama], [tarih]) VALUES (5, 11, N'Kanal sahiplerine daha iyi bir içerik analitiği sunarak, kullanıcıların videoları hakkında daha fazla bilgi edinmelerini sağlayabilirsiniz. Bu, hem içerik üreticilerinin daha iyi stratejiler geliştirmelerine yardımcı olur, hem de izleyicilerin daha iyi bir deneyim yaşamasını sağlar.', CAST(N'2012-08-29T00:00:00' AS SmallDateTime))
INSERT [dbo].[Geri_Bildirim] ([geriBildirimID], [kanalID], [aciklama], [tarih]) VALUES (6, 14, N'Videoların hedeflenen reklamlarla uyumsuz olduğunu fark ettim. Reklamverenlerin daha iyi hedefleme seçeneklerine sahip olmaları ve izleyici kitlesine daha uygun reklamlar sunulması için reklam platformunu geliştirmenizi öneririm.', CAST(N'2020-04-05T00:00:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[Geri_Bildirim] OFF
GO
SET IDENTITY_INSERT [dbo].[Kanal] ON 

INSERT [dbo].[Kanal] ([kanalID], [kullaniciID], [kanalAdi], [aciklama], [olusturmaTarihi]) VALUES (1, 1, N'Tekno Meraklısı', N'Teknoloji dünyasının meraklıları için buradayız! En yeni ürün incelemeleri, teknoloji haberleri ve ipuçlarıyla dolu videoları kaçırmayın. Teknolojiye dair her şeyi burada bulabilirsiniz.', CAST(N'2018-01-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[Kanal] ([kanalID], [kullaniciID], [kanalAdi], [aciklama], [olusturmaTarihi]) VALUES (2, 2, N'Gezi Tutkunu', N'', CAST(N'2015-05-10T00:00:00' AS SmallDateTime))
INSERT [dbo].[Kanal] ([kanalID], [kullaniciID], [kanalAdi], [aciklama], [olusturmaTarihi]) VALUES (3, 2, N'Oyun Dünyası', N'Oyunseverlerin buluşma noktası burası! Kanalımızda en yeni oyun incelemeleri, oyun ipuçları ve eğlenceli oyun videoları sizi bekliyor. Oyun dünyasında gerçek bir uzman olmak için abone olun!', CAST(N'2017-02-20T00:00:00' AS SmallDateTime))
INSERT [dbo].[Kanal] ([kanalID], [kullaniciID], [kanalAdi], [aciklama], [olusturmaTarihi]) VALUES (4, 4, N'Fashion Finesse', N'Discover the latest trends, styles, and fashion tips to express your unique personality through clothing. ', CAST(N'2010-08-05T00:00:00' AS SmallDateTime))
INSERT [dbo].[Kanal] ([kanalID], [kullaniciID], [kanalAdi], [aciklama], [olusturmaTarihi]) VALUES (5, 5, N'Adventure Seekers', N'', CAST(N'2005-04-07T00:00:00' AS SmallDateTime))
INSERT [dbo].[Kanal] ([kanalID], [kullaniciID], [kanalAdi], [aciklama], [olusturmaTarihi]) VALUES (6, 6, N'Cooking Delights', N'Indulge in the art of cooking and explore delicious recipes and culinary adventures. Join us as we create mouthwatering dishes and share our passion for food.', CAST(N'2014-08-23T00:00:00' AS SmallDateTime))
INSERT [dbo].[Kanal] ([kanalID], [kullaniciID], [kanalAdi], [aciklama], [olusturmaTarihi]) VALUES (7, 6, N'Lezzet Diyarı', N'Lezzetli tarifler, mutfak sırları ve yaratıcı yemek deneyimleri için sizleri Lezzet Diyarı''na davet ediyoruz. Mutfağınızı renklendirecek tariflerimizle keyifli bir yolculuğa çıkmaya hazır olun!', CAST(N'2016-07-04T00:00:00' AS SmallDateTime))
INSERT [dbo].[Kanal] ([kanalID], [kullaniciID], [kanalAdi], [aciklama], [olusturmaTarihi]) VALUES (8, 8, N'Bookworms Corner', N'Dive into the world of literature with book reviews, recommendations, and discussions. Join fellow bookworms as we explore different genres and share our love for reading.', CAST(N'2020-05-01T00:00:00' AS SmallDateTime))
INSERT [dbo].[Kanal] ([kanalID], [kullaniciID], [kanalAdi], [aciklama], [olusturmaTarihi]) VALUES (9, 9, N'Fitness Junkies', N'Get ready to fuel your passion for fitness with FitnessJunkies! We''re here to provide you with the best workout routines, nutrition tips, and fitness challenges to help you reach your health and wellness goals. Join our community of fitness enthusiasts as we share our journeys, motivate each other, and strive for greatness together.', CAST(N'2019-12-03T00:00:00' AS SmallDateTime))
INSERT [dbo].[Kanal] ([kanalID], [kullaniciID], [kanalAdi], [aciklama], [olusturmaTarihi]) VALUES (10, 10, N'Health and Wellness', N'Take charge of your well-being with tips on healthy living, mental wellness, and self-care practices. Join us as we prioritize our health and strive for a balanced lifestyle.', CAST(N'2012-01-24T00:00:00' AS SmallDateTime))
INSERT [dbo].[Kanal] ([kanalID], [kullaniciID], [kanalAdi], [aciklama], [olusturmaTarihi]) VALUES (11, 11, N'Adventure See', N'', CAST(N'2021-02-07T00:00:00' AS SmallDateTime))
INSERT [dbo].[Kanal] ([kanalID], [kullaniciID], [kanalAdi], [aciklama], [olusturmaTarihi]) VALUES (12, 13, N'Tech Talks', N'Dive into the world of technology with engaging discussions and insights. Stay updated on the latest gadgets, software, and tech trends with our informative videos and interviews.', CAST(N'2009-04-02T00:00:00' AS SmallDateTime))
INSERT [dbo].[Kanal] ([kanalID], [kullaniciID], [kanalAdi], [aciklama], [olusturmaTarihi]) VALUES (13, 13, N'Pet Lovers', N'Celebrate the joy and companionship of pets with PetLoversParadise. Join our community of animal lovers as we share heartwarming stories, provide pet care tips, showcase adorable pet videos, and discuss various pet breeds. Let''s create a paradise for our furry friends and spread the love for animals.', CAST(N'2013-11-12T00:00:00' AS SmallDateTime))
INSERT [dbo].[Kanal] ([kanalID], [kullaniciID], [kanalAdi], [aciklama], [olusturmaTarihi]) VALUES (14, 13, N'Nature Wanderers', N'', CAST(N'2018-11-12T00:00:00' AS SmallDateTime))
INSERT [dbo].[Kanal] ([kanalID], [kullaniciID], [kanalAdi], [aciklama], [olusturmaTarihi]) VALUES (15, 15, N'Gaming Legends', N'Enter the realm of gaming excellence with GamingLegends. Join us as we explore the latest video game releases, discuss gaming news, provide insightful reviews, and showcase exciting gameplay footage.', CAST(N'2008-06-14T00:00:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[Kanal] OFF
GO
SET IDENTITY_INSERT [dbo].[Kategori] ON 

INSERT [dbo].[Kategori] ([kategoriID], [ad]) VALUES (1, N'Eğitim')
INSERT [dbo].[Kategori] ([kategoriID], [ad]) VALUES (2, N'Müzik')
INSERT [dbo].[Kategori] ([kategoriID], [ad]) VALUES (3, N'Oyun')
INSERT [dbo].[Kategori] ([kategoriID], [ad]) VALUES (4, N'Komedi')
INSERT [dbo].[Kategori] ([kategoriID], [ad]) VALUES (5, N'Spor')
INSERT [dbo].[Kategori] ([kategoriID], [ad]) VALUES (6, N'Haber')
INSERT [dbo].[Kategori] ([kategoriID], [ad]) VALUES (7, N'Teknoloji')
INSERT [dbo].[Kategori] ([kategoriID], [ad]) VALUES (8, N'Seyahat ve Etkinlikler')
INSERT [dbo].[Kategori] ([kategoriID], [ad]) VALUES (9, N'Moda ve Güzellik')
INSERT [dbo].[Kategori] ([kategoriID], [ad]) VALUES (10, N'Otomobil')
INSERT [dbo].[Kategori] ([kategoriID], [ad]) VALUES (11, N'Yemek ve Mutfak')
INSERT [dbo].[Kategori] ([kategoriID], [ad]) VALUES (12, N'Bilim ve Teknoloji')
INSERT [dbo].[Kategori] ([kategoriID], [ad]) VALUES (13, N'Hayvanlar')
INSERT [dbo].[Kategori] ([kategoriID], [ad]) VALUES (14, N'Doğa')
INSERT [dbo].[Kategori] ([kategoriID], [ad]) VALUES (15, N'Kisişel gelişim')
SET IDENTITY_INSERT [dbo].[Kategori] OFF
GO
SET IDENTITY_INSERT [dbo].[Kullanici] ON 

INSERT [dbo].[Kullanici] ([kullaniciID], [kullaniciAdi], [ePosta], [parola], [ad], [soyad], [cinsiyet], [dogumTarihi], [tel], [konum]) VALUES (1, N'ceyhundirilce', N'ceyhundirilce@outlook.com', N'729541', N'Ceyhun', N'Dirilce', N'E', CAST(N'2003-06-14T00:00:00' AS SmallDateTime), N'5559198696', N'Türkiye')
INSERT [dbo].[Kullanici] ([kullaniciID], [kullaniciAdi], [ePosta], [parola], [ad], [soyad], [cinsiyet], [dogumTarihi], [tel], [konum]) VALUES (2, N'mburakcelik', N'mburakcelik@gmail.com', N'245676', N'Muhammet Burak', N'Çelik', N'E', CAST(N'2001-08-02T00:00:00' AS SmallDateTime), N'5550739365', N'Türkiye')
INSERT [dbo].[Kullanici] ([kullaniciID], [kullaniciAdi], [ePosta], [parola], [ad], [soyad], [cinsiyet], [dogumTarihi], [tel], [konum]) VALUES (3, N'omersay', N'omersay@gmail.com', N'165348', N'Ömer', N'Say', N'E', CAST(N'2001-04-25T00:00:00' AS SmallDateTime), N'5559763569', N'Türkiye')
INSERT [dbo].[Kullanici] ([kullaniciID], [kullaniciAdi], [ePosta], [parola], [ad], [soyad], [cinsiyet], [dogumTarihi], [tel], [konum]) VALUES (4, N'gardnerstroman', N'gardnerstroman@gmail.com', N'465464', N'Gardner', N'Stroman', N'K', CAST(N'1997-07-02T00:00:00' AS SmallDateTime), N'5557891234', N'ABD')
INSERT [dbo].[Kullanici] ([kullaniciID], [kullaniciAdi], [ePosta], [parola], [ad], [soyad], [cinsiyet], [dogumTarihi], [tel], [konum]) VALUES (5, N'alex', N'alex@gmail.com', N'456123', N'Alex', N'Johnson', N'E', CAST(N'1987-09-18T00:00:00' AS SmallDateTime), N'5557891234', N'ABD')
INSERT [dbo].[Kullanici] ([kullaniciID], [kullaniciAdi], [ePosta], [parola], [ad], [soyad], [cinsiyet], [dogumTarihi], [tel], [konum]) VALUES (6, N'melissa', N'melissa@outlook.com', N'890567', N'Melissa', N'Davis', N'K', CAST(N'1991-06-25T00:00:00' AS SmallDateTime), N'5552345678', N'ABD')
INSERT [dbo].[Kullanici] ([kullaniciID], [kullaniciAdi], [ePosta], [parola], [ad], [soyad], [cinsiyet], [dogumTarihi], [tel], [konum]) VALUES (7, N'elif', N'elif@example.com', N'345678', N'Elif', N'Yılmaz', N'K', CAST(N'1989-04-13T00:00:00' AS SmallDateTime), N'5558765432', N'Türkiye')
INSERT [dbo].[Kullanici] ([kullaniciID], [kullaniciAdi], [ePosta], [parola], [ad], [soyad], [cinsiyet], [dogumTarihi], [tel], [konum]) VALUES (8, N'sophie', N'sophie@example.com', N'789012', N'Sophie', N'Wilson', N'K', CAST(N'1986-08-10T00:00:00' AS SmallDateTime), N'5556543210', N'İngiltere')
INSERT [dbo].[Kullanici] ([kullaniciID], [kullaniciAdi], [ePosta], [parola], [ad], [soyad], [cinsiyet], [dogumTarihi], [tel], [konum]) VALUES (9, N'juan_perez	', N'juan_perez@gmail.com', N'123456', N'Juan', N'Perez', N'E', CAST(N'1995-09-02T00:00:00' AS SmallDateTime), N'5556789012', N'Meksika')
INSERT [dbo].[Kullanici] ([kullaniciID], [kullaniciAdi], [ePosta], [parola], [ad], [soyad], [cinsiyet], [dogumTarihi], [tel], [konum]) VALUES (10, N'isabella_m', N'isabella_miller@yahoo.com', N'567890', N'Isabella', N'Miller', N'K', CAST(N'1990-04-15T00:00:00' AS SmallDateTime), N'5557890123', N'Kanada')
INSERT [dbo].[Kullanici] ([kullaniciID], [kullaniciAdi], [ePosta], [parola], [ad], [soyad], [cinsiyet], [dogumTarihi], [tel], [konum]) VALUES (11, N'marco', N'marco@hotmail.com', N'901234', N'Marco', N'Rossi', N'E', CAST(N'1989-07-08T00:00:00' AS SmallDateTime), N'5559012345', N'İtalya')
INSERT [dbo].[Kullanici] ([kullaniciID], [kullaniciAdi], [ePosta], [parola], [ad], [soyad], [cinsiyet], [dogumTarihi], [tel], [konum]) VALUES (12, N'sara.smith', N'sara.smith@gmail.com', N'234567', N'Sara', N'Smith', N'K', CAST(N'1994-12-11T00:00:00' AS SmallDateTime), N'5554321098', N'Avustralya')
INSERT [dbo].[Kullanici] ([kullaniciID], [kullaniciAdi], [ePosta], [parola], [ad], [soyad], [cinsiyet], [dogumTarihi], [tel], [konum]) VALUES (13, N'maria.rodr', N'maria.rodr@example.com', N'890123', N'Maria', N'Rodriguez', N'K', CAST(N'1990-02-20T00:00:00' AS SmallDateTime), N'5558901234', N'İtalya')
INSERT [dbo].[Kullanici] ([kullaniciID], [kullaniciAdi], [ePosta], [parola], [ad], [soyad], [cinsiyet], [dogumTarihi], [tel], [konum]) VALUES (14, N'emilia.muller', N'emilia.muller@outlook.com', N'123450', N'Emilia', N'Müller', N'K', CAST(N'1994-10-05T00:00:00' AS SmallDateTime), N'5551234509', N'Almanya')
INSERT [dbo].[Kullanici] ([kullaniciID], [kullaniciAdi], [ePosta], [parola], [ad], [soyad], [cinsiyet], [dogumTarihi], [tel], [konum]) VALUES (15, N'vladimir_kub', N'vladimir_kub@outlook.com', N'976658', N'Vladimir', N'Kub', N'E', CAST(N'1985-10-05T00:00:00' AS SmallDateTime), N'5554321098', N'ABD')
SET IDENTITY_INSERT [dbo].[Kullanici] OFF
GO
SET IDENTITY_INSERT [dbo].[Video] ON 

INSERT [dbo].[Video] ([videoID], [kanalID], [baslik], [aciklama], [yayinlanmaTarihi], [gorunteleme]) VALUES (1, 1, N'Zaman Yönetimi İpuçları: Daha Verimli ve Daha Organize Olun', N' Merhaba! Bu videoda size zaman yönetimi konusunda bazı etkili ipuçları ve stratejiler sunacağız', CAST(N'2018-02-05T00:00:00' AS SmallDateTime), 245646)
INSERT [dbo].[Video] ([videoID], [kanalID], [baslik], [aciklama], [yayinlanmaTarihi], [gorunteleme]) VALUES (2, 1, N'Yaratıcı Yazma İpuçları: İçinizdeki Yazarı Keşfedin', N'Merhaba! Bu video yaratıcı yazma becerilerinizi geliştirmek için size bazı ipuçları sunuyor', CAST(N'2018-02-16T00:00:00' AS SmallDateTime), 104346)
INSERT [dbo].[Video] ([videoID], [kanalID], [baslik], [aciklama], [yayinlanmaTarihi], [gorunteleme]) VALUES (3, 1, N'Sağlıklı Beslenme', N'Dengeli bir diyetin önemi', CAST(N'2018-03-21T00:00:00' AS SmallDateTime), 454356)
INSERT [dbo].[Video] ([videoID], [kanalID], [baslik], [aciklama], [yayinlanmaTarihi], [gorunteleme]) VALUES (4, 2, N'Fotoğrafçılık İpuçları', N'Görsel Hikayenizi Anlatmanın Sırları', CAST(N'2015-05-21T00:00:00' AS SmallDateTime), 1014564)
INSERT [dbo].[Video] ([videoID], [kanalID], [baslik], [aciklama], [yayinlanmaTarihi], [gorunteleme]) VALUES (5, 2, N'Stres Yönetimi Teknikleri', N' Bu video stres yönetimi konusunda size bazı etkili teknikler sunuyor', CAST(N'2015-06-10T00:00:00' AS SmallDateTime), 500464)
INSERT [dbo].[Video] ([videoID], [kanalID], [baslik], [aciklama], [yayinlanmaTarihi], [gorunteleme]) VALUES (6, 2, N'Dijital Pazar', N'Dijital pazar gerçekleri', CAST(N'2015-07-26T00:00:00' AS SmallDateTime), 750534)
INSERT [dbo].[Video] ([videoID], [kanalID], [baslik], [aciklama], [yayinlanmaTarihi], [gorunteleme]) VALUES (7, 3, N'Başarılı Sunum Teknikleri', N'İzleyicilerinizi Etkileyin', CAST(N'2017-02-25T00:00:00' AS SmallDateTime), 150576)
INSERT [dbo].[Video] ([videoID], [kanalID], [baslik], [aciklama], [yayinlanmaTarihi], [gorunteleme]) VALUES (8, 3, N'Kendin Yap Projeleri', N'Ev Dekorasyonunda Yaratıcılığınızı Konuşturun', CAST(N'2017-05-18T00:00:00' AS SmallDateTime), 225435)
INSERT [dbo].[Video] ([videoID], [kanalID], [baslik], [aciklama], [yayinlanmaTarihi], [gorunteleme]) VALUES (9, 4, N'Motivasyon ve Başarı', N'Motivasyon ve Başarı İçin Günlük Rutinler', CAST(N'2010-08-15T00:00:00' AS SmallDateTime), 456466)
INSERT [dbo].[Video] ([videoID], [kanalID], [baslik], [aciklama], [yayinlanmaTarihi], [gorunteleme]) VALUES (10, 4, N'Yoga ve Meditasyon', N'Yoga ve Meditasyon: Zihin, Beden ve Ruh Sağlığınız İçin', CAST(N'2011-05-25T00:00:00' AS SmallDateTime), 145564)
INSERT [dbo].[Video] ([videoID], [kanalID], [baslik], [aciklama], [yayinlanmaTarihi], [gorunteleme]) VALUES (11, 5, N'Yeni Dil Öğrenme Stratejileri', N'Yeni Dil Öğrenme Stratejileri: Hızlı ve Etkili Yöntem', CAST(N'2005-04-30T00:00:00' AS SmallDateTime), 123012)
INSERT [dbo].[Video] ([videoID], [kanalID], [baslik], [aciklama], [yayinlanmaTarihi], [gorunteleme]) VALUES (12, 6, N'Dijital Pazarlama İpuçları: Online İşinizi Büyütün', N'Online İşinizi Büyütün', CAST(N'2014-08-25T00:00:00' AS SmallDateTime), 44642)
INSERT [dbo].[Video] ([videoID], [kanalID], [baslik], [aciklama], [yayinlanmaTarihi], [gorunteleme]) VALUES (13, 6, N'Profesyonel İş Görüşmesi İpuçları', N'İşe Alım Sürecinde Başarılı Olun', CAST(N'2016-05-14T00:00:00' AS SmallDateTime), 456245)
INSERT [dbo].[Video] ([videoID], [kanalID], [baslik], [aciklama], [yayinlanmaTarihi], [gorunteleme]) VALUES (14, 7, N'Fitness Rutini Oluşturma', N'Daha Sağlıklı ve Formda Kalın', CAST(N'2016-07-27T00:00:00' AS SmallDateTime), 123456)
INSERT [dbo].[Video] ([videoID], [kanalID], [baslik], [aciklama], [yayinlanmaTarihi], [gorunteleme]) VALUES (15, 8, N'Yaratıcı Fikir Geliştirme', N'İnovasyon ve Problem Çözme', CAST(N'2020-06-30T00:00:00' AS SmallDateTime), 464213)
INSERT [dbo].[Video] ([videoID], [kanalID], [baslik], [aciklama], [yayinlanmaTarihi], [gorunteleme]) VALUES (16, 8, N'Finansal Okuryazarlık', N'Kişisel Mali İyilik İçin Bilgiler', CAST(N'2021-07-31T00:00:00' AS SmallDateTime), 45645)
INSERT [dbo].[Video] ([videoID], [kanalID], [baslik], [aciklama], [yayinlanmaTarihi], [gorunteleme]) VALUES (17, 8, N'Etkili İletişim Becerileri', N'Sözlerinizin Gücünü Artırın', CAST(N'2022-02-15T00:00:00' AS SmallDateTime), 865464)
INSERT [dbo].[Video] ([videoID], [kanalID], [baslik], [aciklama], [yayinlanmaTarihi], [gorunteleme]) VALUES (18, 9, N'Yeni Başlayanlar İçin Fitness', N'Doğru egzersizlerin nasıl yapılacağı, form ve teknikler hakkında pratik bilgiler ', CAST(N'2019-12-28T00:00:00' AS SmallDateTime), 674564)
INSERT [dbo].[Video] ([videoID], [kanalID], [baslik], [aciklama], [yayinlanmaTarihi], [gorunteleme]) VALUES (19, 9, N'Sosyal Medya Pazarlama', N'İşinizi Büyütün ve Marka Oluşturun', CAST(N'2020-05-15T00:00:00' AS SmallDateTime), 504)
INSERT [dbo].[Video] ([videoID], [kanalID], [baslik], [aciklama], [yayinlanmaTarihi], [gorunteleme]) VALUES (20, 10, N'Zihin ve Beden Sağlığı', N'Stresi Azaltma ve İyi Olma Stratejileri', CAST(N'2012-05-24T00:00:00' AS SmallDateTime), 642345)
INSERT [dbo].[Video] ([videoID], [kanalID], [baslik], [aciklama], [yayinlanmaTarihi], [gorunteleme]) VALUES (21, 10, N'Girişimcilik 101', N'ş Fikirleri Oluşturma ve Başarılı Bir Şirket Kurma', CAST(N'2013-04-26T00:00:00' AS SmallDateTime), 3456454)
INSERT [dbo].[Video] ([videoID], [kanalID], [baslik], [aciklama], [yayinlanmaTarihi], [gorunteleme]) VALUES (22, 10, N'Dijital Nomadlık', N'Çalışmayı Gezgin Bir Yaşamla Birleştirin', CAST(N'2014-09-09T00:00:00' AS SmallDateTime), 264566)
INSERT [dbo].[Video] ([videoID], [kanalID], [baslik], [aciklama], [yayinlanmaTarihi], [gorunteleme]) VALUES (23, 11, N'İleri Düzey Fotoğrafçılık', N'Görsel Yaratıcılığınızı Geliştirin', CAST(N'2021-07-08T00:00:00' AS SmallDateTime), 94654)
INSERT [dbo].[Video] ([videoID], [kanalID], [baslik], [aciklama], [yayinlanmaTarihi], [gorunteleme]) VALUES (24, 11, N'Doğal Sağlık ve Beslenme', N'Vücudunuza İyi Gelen Yiyecekler', CAST(N'2023-11-25T00:00:00' AS SmallDateTime), 464452)
INSERT [dbo].[Video] ([videoID], [kanalID], [baslik], [aciklama], [yayinlanmaTarihi], [gorunteleme]) VALUES (25, 12, N'Sosyal Becerileri Geliştirme', N'İnsanlarla Etkili İlişkiler Kurma', CAST(N'2009-04-15T00:00:00' AS SmallDateTime), 45642)
INSERT [dbo].[Video] ([videoID], [kanalID], [baslik], [aciklama], [yayinlanmaTarihi], [gorunteleme]) VALUES (26, 12, N'Yaratıcı Yazma', N' Kendi Hikayenizi Yazmaya Başlayın', CAST(N'2010-10-17T00:00:00' AS SmallDateTime), 64561)
INSERT [dbo].[Video] ([videoID], [kanalID], [baslik], [aciklama], [yayinlanmaTarihi], [gorunteleme]) VALUES (27, 12, N'Yaratıcı Hobiler', N'İçsel Sanatçınızı Keşfedin', CAST(N'2011-03-14T00:00:00' AS SmallDateTime), 75364)
INSERT [dbo].[Video] ([videoID], [kanalID], [baslik], [aciklama], [yayinlanmaTarihi], [gorunteleme]) VALUES (28, 12, N'Dijital Güvenlik', N'İnternette Kendinizi Koruma Stratejileri', CAST(N'2012-04-16T00:00:00' AS SmallDateTime), 454311)
INSERT [dbo].[Video] ([videoID], [kanalID], [baslik], [aciklama], [yayinlanmaTarihi], [gorunteleme]) VALUES (29, 13, N'Doğa Fotoğrafçılığı', N'Harika Manzaraları Yakalama Sanatı', CAST(N'2013-11-16T00:00:00' AS SmallDateTime), 43431)
INSERT [dbo].[Video] ([videoID], [kanalID], [baslik], [aciklama], [yayinlanmaTarihi], [gorunteleme]) VALUES (30, 13, N'Yoga ve Meditasyon', N'ihin, Beden ve Ruh Dengesini Bulma', CAST(N'2017-10-22T00:00:00' AS SmallDateTime), 453123)
INSERT [dbo].[Video] ([videoID], [kanalID], [baslik], [aciklama], [yayinlanmaTarihi], [gorunteleme]) VALUES (31, 14, N'Yemek Tarifleri', N'Lezzetli ve Sağlıklı Yemeklerin Sırları', CAST(N'2018-11-30T00:00:00' AS SmallDateTime), 543211)
INSERT [dbo].[Video] ([videoID], [kanalID], [baslik], [aciklama], [yayinlanmaTarihi], [gorunteleme]) VALUES (32, 14, N'Girişimcilik Hikayeleri', N'Başarıya Giden Yolda İlham Veren Öyküler', CAST(N'2019-12-12T00:00:00' AS SmallDateTime), 85231)
INSERT [dbo].[Video] ([videoID], [kanalID], [baslik], [aciklama], [yayinlanmaTarihi], [gorunteleme]) VALUES (33, 14, N'Kişisel Finans Yönetimi', N'Paranızı Akıllıca Yönetmenin İpuçları', CAST(N'2020-12-20T00:00:00' AS SmallDateTime), 745431)
INSERT [dbo].[Video] ([videoID], [kanalID], [baslik], [aciklama], [yayinlanmaTarihi], [gorunteleme]) VALUES (34, 15, N'Kendine İyi Bakım', N'Zihinsel ve Duygusal Refah İçin Önemli Adımlar', CAST(N'2008-06-15T00:00:00' AS SmallDateTime), 47640)
INSERT [dbo].[Video] ([videoID], [kanalID], [baslik], [aciklama], [yayinlanmaTarihi], [gorunteleme]) VALUES (35, 15, N'Yabancı Dil Öğrenme', N'Yabancı Dil Öğrenme: Hızlı ve Etkili Yöntemler', CAST(N'2008-07-24T00:00:00' AS SmallDateTime), 80014)
INSERT [dbo].[Video] ([videoID], [kanalID], [baslik], [aciklama], [yayinlanmaTarihi], [gorunteleme]) VALUES (36, 15, N'Stil İpuçları', N' Kendinizi Modaya Uygun Şekilde İfade Edin', CAST(N'2009-02-21T00:00:00' AS SmallDateTime), 999644)
INSERT [dbo].[Video] ([videoID], [kanalID], [baslik], [aciklama], [yayinlanmaTarihi], [gorunteleme]) VALUES (37, 15, N'Zihin Gücü ve Motivasyon', N'Hedeflerinizi Gerçekleştirmek İçin İçsel Potansiyelinizi Keşfedin', CAST(N'2010-10-16T00:00:00' AS SmallDateTime), 1113444)
INSERT [dbo].[Video] ([videoID], [kanalID], [baslik], [aciklama], [yayinlanmaTarihi], [gorunteleme]) VALUES (38, 15, N'Doğa Keşifleri', N'Dünyanın En Eşsiz Yerlerini Gezin', CAST(N'2011-05-30T00:00:00' AS SmallDateTime), 1645434)
SET IDENTITY_INSERT [dbo].[Video] OFF
GO
SET IDENTITY_INSERT [dbo].[Video_Begeni] ON 

INSERT [dbo].[Video_Begeni] ([begeniID], [kullaniciID], [videoID]) VALUES (1, 1, 14)
INSERT [dbo].[Video_Begeni] ([begeniID], [kullaniciID], [videoID]) VALUES (2, 1, 23)
INSERT [dbo].[Video_Begeni] ([begeniID], [kullaniciID], [videoID]) VALUES (3, 1, 4)
INSERT [dbo].[Video_Begeni] ([begeniID], [kullaniciID], [videoID]) VALUES (4, 1, 18)
INSERT [dbo].[Video_Begeni] ([begeniID], [kullaniciID], [videoID]) VALUES (5, 2, 11)
INSERT [dbo].[Video_Begeni] ([begeniID], [kullaniciID], [videoID]) VALUES (6, 2, 35)
INSERT [dbo].[Video_Begeni] ([begeniID], [kullaniciID], [videoID]) VALUES (7, 2, 20)
INSERT [dbo].[Video_Begeni] ([begeniID], [kullaniciID], [videoID]) VALUES (8, 2, 23)
INSERT [dbo].[Video_Begeni] ([begeniID], [kullaniciID], [videoID]) VALUES (9, 2, 27)
INSERT [dbo].[Video_Begeni] ([begeniID], [kullaniciID], [videoID]) VALUES (10, 3, 1)
INSERT [dbo].[Video_Begeni] ([begeniID], [kullaniciID], [videoID]) VALUES (11, 3, 38)
INSERT [dbo].[Video_Begeni] ([begeniID], [kullaniciID], [videoID]) VALUES (12, 3, 31)
INSERT [dbo].[Video_Begeni] ([begeniID], [kullaniciID], [videoID]) VALUES (13, 4, 22)
INSERT [dbo].[Video_Begeni] ([begeniID], [kullaniciID], [videoID]) VALUES (14, 4, 19)
INSERT [dbo].[Video_Begeni] ([begeniID], [kullaniciID], [videoID]) VALUES (15, 5, 24)
INSERT [dbo].[Video_Begeni] ([begeniID], [kullaniciID], [videoID]) VALUES (16, 5, 26)
INSERT [dbo].[Video_Begeni] ([begeniID], [kullaniciID], [videoID]) VALUES (17, 5, 13)
INSERT [dbo].[Video_Begeni] ([begeniID], [kullaniciID], [videoID]) VALUES (18, 5, 2)
INSERT [dbo].[Video_Begeni] ([begeniID], [kullaniciID], [videoID]) VALUES (19, 6, 10)
INSERT [dbo].[Video_Begeni] ([begeniID], [kullaniciID], [videoID]) VALUES (20, 6, 12)
INSERT [dbo].[Video_Begeni] ([begeniID], [kullaniciID], [videoID]) VALUES (21, 7, 3)
INSERT [dbo].[Video_Begeni] ([begeniID], [kullaniciID], [videoID]) VALUES (22, 8, 5)
INSERT [dbo].[Video_Begeni] ([begeniID], [kullaniciID], [videoID]) VALUES (23, 8, 37)
INSERT [dbo].[Video_Begeni] ([begeniID], [kullaniciID], [videoID]) VALUES (24, 8, 25)
INSERT [dbo].[Video_Begeni] ([begeniID], [kullaniciID], [videoID]) VALUES (25, 9, 6)
INSERT [dbo].[Video_Begeni] ([begeniID], [kullaniciID], [videoID]) VALUES (26, 9, 36)
INSERT [dbo].[Video_Begeni] ([begeniID], [kullaniciID], [videoID]) VALUES (27, 9, 30)
INSERT [dbo].[Video_Begeni] ([begeniID], [kullaniciID], [videoID]) VALUES (28, 10, 7)
INSERT [dbo].[Video_Begeni] ([begeniID], [kullaniciID], [videoID]) VALUES (29, 10, 8)
INSERT [dbo].[Video_Begeni] ([begeniID], [kullaniciID], [videoID]) VALUES (30, 10, 18)
INSERT [dbo].[Video_Begeni] ([begeniID], [kullaniciID], [videoID]) VALUES (31, 11, 9)
INSERT [dbo].[Video_Begeni] ([begeniID], [kullaniciID], [videoID]) VALUES (32, 11, 12)
INSERT [dbo].[Video_Begeni] ([begeniID], [kullaniciID], [videoID]) VALUES (33, 11, 34)
INSERT [dbo].[Video_Begeni] ([begeniID], [kullaniciID], [videoID]) VALUES (34, 11, 33)
INSERT [dbo].[Video_Begeni] ([begeniID], [kullaniciID], [videoID]) VALUES (35, 12, 15)
INSERT [dbo].[Video_Begeni] ([begeniID], [kullaniciID], [videoID]) VALUES (36, 12, 16)
INSERT [dbo].[Video_Begeni] ([begeniID], [kullaniciID], [videoID]) VALUES (37, 12, 17)
INSERT [dbo].[Video_Begeni] ([begeniID], [kullaniciID], [videoID]) VALUES (38, 12, 21)
INSERT [dbo].[Video_Begeni] ([begeniID], [kullaniciID], [videoID]) VALUES (39, 13, 28)
INSERT [dbo].[Video_Begeni] ([begeniID], [kullaniciID], [videoID]) VALUES (40, 13, 29)
INSERT [dbo].[Video_Begeni] ([begeniID], [kullaniciID], [videoID]) VALUES (41, 13, 32)
INSERT [dbo].[Video_Begeni] ([begeniID], [kullaniciID], [videoID]) VALUES (42, 13, 5)
INSERT [dbo].[Video_Begeni] ([begeniID], [kullaniciID], [videoID]) VALUES (43, 14, 33)
INSERT [dbo].[Video_Begeni] ([begeniID], [kullaniciID], [videoID]) VALUES (44, 14, 37)
INSERT [dbo].[Video_Begeni] ([begeniID], [kullaniciID], [videoID]) VALUES (45, 14, 21)
INSERT [dbo].[Video_Begeni] ([begeniID], [kullaniciID], [videoID]) VALUES (46, 14, 19)
INSERT [dbo].[Video_Begeni] ([begeniID], [kullaniciID], [videoID]) VALUES (47, 15, 38)
INSERT [dbo].[Video_Begeni] ([begeniID], [kullaniciID], [videoID]) VALUES (49, 15, 24)
INSERT [dbo].[Video_Begeni] ([begeniID], [kullaniciID], [videoID]) VALUES (50, 2, 33)
SET IDENTITY_INSERT [dbo].[Video_Begeni] OFF
GO
INSERT [dbo].[Video_Etiket] ([videoID], [etiketID]) VALUES (1, 1)
INSERT [dbo].[Video_Etiket] ([videoID], [etiketID]) VALUES (2, 2)
INSERT [dbo].[Video_Etiket] ([videoID], [etiketID]) VALUES (3, 3)
INSERT [dbo].[Video_Etiket] ([videoID], [etiketID]) VALUES (4, 4)
INSERT [dbo].[Video_Etiket] ([videoID], [etiketID]) VALUES (4, 45)
INSERT [dbo].[Video_Etiket] ([videoID], [etiketID]) VALUES (5, 5)
INSERT [dbo].[Video_Etiket] ([videoID], [etiketID]) VALUES (5, 44)
INSERT [dbo].[Video_Etiket] ([videoID], [etiketID]) VALUES (6, 6)
INSERT [dbo].[Video_Etiket] ([videoID], [etiketID]) VALUES (7, 7)
INSERT [dbo].[Video_Etiket] ([videoID], [etiketID]) VALUES (8, 8)
INSERT [dbo].[Video_Etiket] ([videoID], [etiketID]) VALUES (9, 9)
INSERT [dbo].[Video_Etiket] ([videoID], [etiketID]) VALUES (10, 10)
INSERT [dbo].[Video_Etiket] ([videoID], [etiketID]) VALUES (11, 11)
INSERT [dbo].[Video_Etiket] ([videoID], [etiketID]) VALUES (12, 12)
INSERT [dbo].[Video_Etiket] ([videoID], [etiketID]) VALUES (13, 13)
INSERT [dbo].[Video_Etiket] ([videoID], [etiketID]) VALUES (14, 14)
INSERT [dbo].[Video_Etiket] ([videoID], [etiketID]) VALUES (15, 15)
INSERT [dbo].[Video_Etiket] ([videoID], [etiketID]) VALUES (16, 16)
INSERT [dbo].[Video_Etiket] ([videoID], [etiketID]) VALUES (17, 17)
INSERT [dbo].[Video_Etiket] ([videoID], [etiketID]) VALUES (18, 18)
INSERT [dbo].[Video_Etiket] ([videoID], [etiketID]) VALUES (19, 19)
INSERT [dbo].[Video_Etiket] ([videoID], [etiketID]) VALUES (20, 20)
INSERT [dbo].[Video_Etiket] ([videoID], [etiketID]) VALUES (20, 40)
INSERT [dbo].[Video_Etiket] ([videoID], [etiketID]) VALUES (21, 21)
INSERT [dbo].[Video_Etiket] ([videoID], [etiketID]) VALUES (22, 22)
INSERT [dbo].[Video_Etiket] ([videoID], [etiketID]) VALUES (23, 23)
INSERT [dbo].[Video_Etiket] ([videoID], [etiketID]) VALUES (24, 24)
INSERT [dbo].[Video_Etiket] ([videoID], [etiketID]) VALUES (24, 39)
INSERT [dbo].[Video_Etiket] ([videoID], [etiketID]) VALUES (25, 25)
INSERT [dbo].[Video_Etiket] ([videoID], [etiketID]) VALUES (26, 26)
INSERT [dbo].[Video_Etiket] ([videoID], [etiketID]) VALUES (27, 27)
INSERT [dbo].[Video_Etiket] ([videoID], [etiketID]) VALUES (28, 28)
INSERT [dbo].[Video_Etiket] ([videoID], [etiketID]) VALUES (29, 29)
INSERT [dbo].[Video_Etiket] ([videoID], [etiketID]) VALUES (30, 30)
INSERT [dbo].[Video_Etiket] ([videoID], [etiketID]) VALUES (30, 41)
INSERT [dbo].[Video_Etiket] ([videoID], [etiketID]) VALUES (30, 42)
INSERT [dbo].[Video_Etiket] ([videoID], [etiketID]) VALUES (31, 31)
INSERT [dbo].[Video_Etiket] ([videoID], [etiketID]) VALUES (32, 32)
INSERT [dbo].[Video_Etiket] ([videoID], [etiketID]) VALUES (32, 43)
INSERT [dbo].[Video_Etiket] ([videoID], [etiketID]) VALUES (33, 33)
INSERT [dbo].[Video_Etiket] ([videoID], [etiketID]) VALUES (34, 34)
INSERT [dbo].[Video_Etiket] ([videoID], [etiketID]) VALUES (35, 35)
INSERT [dbo].[Video_Etiket] ([videoID], [etiketID]) VALUES (36, 36)
INSERT [dbo].[Video_Etiket] ([videoID], [etiketID]) VALUES (37, 37)
INSERT [dbo].[Video_Etiket] ([videoID], [etiketID]) VALUES (38, 38)
GO
SET IDENTITY_INSERT [dbo].[Video_Kategori] ON 

INSERT [dbo].[Video_Kategori] ([videoID], [kategoriID]) VALUES (1, 15)
INSERT [dbo].[Video_Kategori] ([videoID], [kategoriID]) VALUES (2, 1)
INSERT [dbo].[Video_Kategori] ([videoID], [kategoriID]) VALUES (3, 11)
INSERT [dbo].[Video_Kategori] ([videoID], [kategoriID]) VALUES (4, 7)
INSERT [dbo].[Video_Kategori] ([videoID], [kategoriID]) VALUES (5, 15)
INSERT [dbo].[Video_Kategori] ([videoID], [kategoriID]) VALUES (6, 15)
INSERT [dbo].[Video_Kategori] ([videoID], [kategoriID]) VALUES (7, 15)
INSERT [dbo].[Video_Kategori] ([videoID], [kategoriID]) VALUES (8, 15)
INSERT [dbo].[Video_Kategori] ([videoID], [kategoriID]) VALUES (9, 15)
INSERT [dbo].[Video_Kategori] ([videoID], [kategoriID]) VALUES (10, 5)
INSERT [dbo].[Video_Kategori] ([videoID], [kategoriID]) VALUES (11, 1)
INSERT [dbo].[Video_Kategori] ([videoID], [kategoriID]) VALUES (12, 1)
INSERT [dbo].[Video_Kategori] ([videoID], [kategoriID]) VALUES (13, 15)
INSERT [dbo].[Video_Kategori] ([videoID], [kategoriID]) VALUES (14, 5)
INSERT [dbo].[Video_Kategori] ([videoID], [kategoriID]) VALUES (15, 15)
INSERT [dbo].[Video_Kategori] ([videoID], [kategoriID]) VALUES (16, 1)
INSERT [dbo].[Video_Kategori] ([videoID], [kategoriID]) VALUES (17, 2)
INSERT [dbo].[Video_Kategori] ([videoID], [kategoriID]) VALUES (18, 3)
INSERT [dbo].[Video_Kategori] ([videoID], [kategoriID]) VALUES (19, 1)
INSERT [dbo].[Video_Kategori] ([videoID], [kategoriID]) VALUES (20, 5)
INSERT [dbo].[Video_Kategori] ([videoID], [kategoriID]) VALUES (21, 12)
INSERT [dbo].[Video_Kategori] ([videoID], [kategoriID]) VALUES (22, 13)
INSERT [dbo].[Video_Kategori] ([videoID], [kategoriID]) VALUES (23, 14)
INSERT [dbo].[Video_Kategori] ([videoID], [kategoriID]) VALUES (24, 10)
INSERT [dbo].[Video_Kategori] ([videoID], [kategoriID]) VALUES (25, 14)
INSERT [dbo].[Video_Kategori] ([videoID], [kategoriID]) VALUES (26, 9)
INSERT [dbo].[Video_Kategori] ([videoID], [kategoriID]) VALUES (27, 7)
INSERT [dbo].[Video_Kategori] ([videoID], [kategoriID]) VALUES (28, 8)
INSERT [dbo].[Video_Kategori] ([videoID], [kategoriID]) VALUES (29, 6)
INSERT [dbo].[Video_Kategori] ([videoID], [kategoriID]) VALUES (30, 4)
INSERT [dbo].[Video_Kategori] ([videoID], [kategoriID]) VALUES (31, 4)
INSERT [dbo].[Video_Kategori] ([videoID], [kategoriID]) VALUES (32, 2)
INSERT [dbo].[Video_Kategori] ([videoID], [kategoriID]) VALUES (33, 3)
INSERT [dbo].[Video_Kategori] ([videoID], [kategoriID]) VALUES (34, 5)
INSERT [dbo].[Video_Kategori] ([videoID], [kategoriID]) VALUES (35, 6)
INSERT [dbo].[Video_Kategori] ([videoID], [kategoriID]) VALUES (36, 4)
INSERT [dbo].[Video_Kategori] ([videoID], [kategoriID]) VALUES (37, 6)
INSERT [dbo].[Video_Kategori] ([videoID], [kategoriID]) VALUES (38, 7)
SET IDENTITY_INSERT [dbo].[Video_Kategori] OFF
GO
SET IDENTITY_INSERT [dbo].[Yorum] ON 

INSERT [dbo].[Yorum] ([yorumID], [kullaniciID], [videoID], [icerik], [yayinlanmaTarihi], [begeniSayisi]) VALUES (1, 1, 5, N'Gönlüme su serptiniz hocam çok teşekkür ederim', CAST(N'2019-05-16T00:00:00' AS SmallDateTime), 2)
INSERT [dbo].[Yorum] ([yorumID], [kullaniciID], [videoID], [icerik], [yayinlanmaTarihi], [begeniSayisi]) VALUES (2, 1, 7, N'İlham verici, rahatlatıcı, eğlendirici, bilgilendirici, özgün seçeneklerine basmalık bir video Emre, harikasın', CAST(N'2018-07-13T00:00:00' AS SmallDateTime), 10)
INSERT [dbo].[Yorum] ([yorumID], [kullaniciID], [videoID], [icerik], [yayinlanmaTarihi], [begeniSayisi]) VALUES (3, 1, 38, N'Su altı şelalesi ,mavi parlayan su ve kaynayan nehir ve niceleri aman Allahım neler var dünyamızda keşke gezip görebilsek dünyamızın güzelliklerini', CAST(N'2013-12-19T00:00:00' AS SmallDateTime), 6)
INSERT [dbo].[Yorum] ([yorumID], [kullaniciID], [videoID], [icerik], [yayinlanmaTarihi], [begeniSayisi]) VALUES (4, 2, 12, N'Yabancı dil anlamadan önce bir yumak, anlamaya başladıkça yumak çözülüyor, İtalyanca sürecinizi gülerek izledim, 50 yaşından sonra bir anda Almanca öğrenme sevdasına düştüm ve aldığım zevke hayret ediyorum, İngilizceyi Allahtan önceki yıllarda kökünden halletmiştim.', CAST(N'2015-09-30T00:00:00' AS SmallDateTime), 7)
INSERT [dbo].[Yorum] ([yorumID], [kullaniciID], [videoID], [icerik], [yayinlanmaTarihi], [begeniSayisi]) VALUES (5, 2, 15, N'İnsan hayatına dokunabilmek kadar güzel bir şey yoktur.Herkes adına teşekkürler hocam sadece video için değil bu kadar iyi bir fikir bulup bu kanalı açtığınız için.', CAST(N'2020-06-30T00:00:00' AS SmallDateTime), 9)
INSERT [dbo].[Yorum] ([yorumID], [kullaniciID], [videoID], [icerik], [yayinlanmaTarihi], [begeniSayisi]) VALUES (6, 2, 13, N'Bir de alınacak personelin belli olduğu mülakatlar var. Biz ne kadar hazırlıklı olsakta karşıdakinin lakayıt tavırları motivasyonumuzu düşürüyor. Bilgi dolu paylaşım için teşekkürler', CAST(N'2016-06-25T00:00:00' AS SmallDateTime), 4)
INSERT [dbo].[Yorum] ([yorumID], [kullaniciID], [videoID], [icerik], [yayinlanmaTarihi], [begeniSayisi]) VALUES (7, 3, 5, N'Bence olumlu düşünüp güler yüzlü saygılı davranmayı aklımızdan hiç çıkarmazsak ne motivasyonumuz düşer nede sıkıntı yaşarız tasavvuf etkilenmeme sanatıdır.', CAST(N'2015-06-12T00:00:00' AS SmallDateTime), 5)
INSERT [dbo].[Yorum] ([yorumID], [kullaniciID], [videoID], [icerik], [yayinlanmaTarihi], [begeniSayisi]) VALUES (8, 3, 7, N'Hocam merhabalar.Tam da bugünlerde bir ödev sunumu  hazırlıyordum.Prezi''yi tanıdım sayenizde,ödev sunumlarımı  onunla hazırlıyorum.Topluluk önünde konuşma ve başarılı sunum konuşması videolarının gelmesi de çok güzel oldu,onları dinledim,bilgilendim,notlar aldım.Şimdi sıra uygulamada.Her şey için teşekkürler hocam,her gün teşekkür etsek az size..', CAST(N'2018-07-16T00:00:00' AS SmallDateTime), 36)
INSERT [dbo].[Yorum] ([yorumID], [kullaniciID], [videoID], [icerik], [yayinlanmaTarihi], [begeniSayisi]) VALUES (9, 3, 11, N'Dil öğrenirken pratik yapmak kesinlikle çok önemli. Bunun farkındalığına son 1 senedir vardım diyebilirim. Çalıştığımdan dolayı maalesef ki dil öğrenim sürecime devam edemiyorum. İngilizcem B1 seviyesinde fakat insanlarla konuşamıyorum. Malum platformu 1 ay kadar deneyimledim fakat sevdiğim hocayı birdaha bulamadım. Deneyimlediğiniz ve memnun kaldığınız bir platform varsa beni bilgilendirebilir misiniz :''j', CAST(N'2006-08-19T00:00:00' AS SmallDateTime), 4)
INSERT [dbo].[Yorum] ([yorumID], [kullaniciID], [videoID], [icerik], [yayinlanmaTarihi], [begeniSayisi]) VALUES (10, 4, 27, N'Zaman mekan insan terimleri senin çok değerli bilgi aktarımın ve hoş sohnetinle bir araya geldiğinde çok keyifli beyin fırtınası yapıyoruz. iyi ki varsın çok iyisin azmine sağlık...', CAST(N'2011-04-19T00:00:00' AS SmallDateTime), 7)
INSERT [dbo].[Yorum] ([yorumID], [kullaniciID], [videoID], [icerik], [yayinlanmaTarihi], [begeniSayisi]) VALUES (11, 4, 28, N'şu kendi exe''sini virüs olarak görüp silen anti virüs programımı ğağağağağağa.', CAST(N'2013-10-01T00:00:00' AS SmallDateTime), 0)
INSERT [dbo].[Yorum] ([yorumID], [kullaniciID], [videoID], [icerik], [yayinlanmaTarihi], [begeniSayisi]) VALUES (12, 5, 31, N'Abi adamlar hazır köfteyle lapa pilav yerken zevkten kuduruyor, hakiki gerçek lezzeti olan bir şey yeseler bayılacaklar heralde lezzetten', CAST(N'2018-11-30T00:00:00' AS SmallDateTime), 5)
INSERT [dbo].[Yorum] ([yorumID], [kullaniciID], [videoID], [icerik], [yayinlanmaTarihi], [begeniSayisi]) VALUES (13, 7, 34, N'1-telefona bakmamak
2-bedeni uyandirmak
3-yuzumuzu yikamak
4-jade roller
5-kuru fircalama
6-yag cekme
7-dil temizlemigi
8-elma sirkeli limonlu ilik su(sabah ac karnina)
9-yediklerinize dikkat etmek
10-erken yatip erken kalkmak', CAST(N'2010-09-20T00:00:00' AS SmallDateTime), 265)
INSERT [dbo].[Yorum] ([yorumID], [kullaniciID], [videoID], [icerik], [yayinlanmaTarihi], [begeniSayisi]) VALUES (14, 7, 36, N'u tarz videoların devamı gelmeli örnek olarak giyinerek göstermeniz ise harika çok teşekkürler', CAST(N'2015-05-06T00:00:00' AS SmallDateTime), 4)
INSERT [dbo].[Yorum] ([yorumID], [kullaniciID], [videoID], [icerik], [yayinlanmaTarihi], [begeniSayisi]) VALUES (15, 8, 1, N'"Yapmam gereken şeyleri ertelemek,aslında yaşamam gereken hayatı ertelemektir."', CAST(N'2020-12-19T00:00:00' AS SmallDateTime), 8)
INSERT [dbo].[Yorum] ([yorumID], [kullaniciID], [videoID], [icerik], [yayinlanmaTarihi], [begeniSayisi]) VALUES (16, 8, 3, N'Tam idmandan gelmiş, yemeğini almış, bilgisayar başına geçmiş, izleyecek bir şeyler ararken gelen o güzel bildirim. Seviliyorsun muz reis', CAST(N'2019-04-22T00:00:00' AS SmallDateTime), 9)
INSERT [dbo].[Yorum] ([yorumID], [kullaniciID], [videoID], [icerik], [yayinlanmaTarihi], [begeniSayisi]) VALUES (17, 9, 5, N'Bilmek çok değerli ama anlatıp başkalarına anlatabilmek paylasabilmek daha da anlamlı.  Teşekkürler.', CAST(N'2015-06-18T00:00:00' AS SmallDateTime), 4)
INSERT [dbo].[Yorum] ([yorumID], [kullaniciID], [videoID], [icerik], [yayinlanmaTarihi], [begeniSayisi]) VALUES (18, 9, 6, N'2 sektör arasında kaldığımız taktirde hangi parametrelere göre sektör seçmeliyiz? İkisi de dijitalde danışmanlık iş modeli fakat nişleri ayrı. Veya ikisini de aynı anda yapmayı önerir misiniz? Çok teşekkürler.', CAST(N'2016-07-28T00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[Yorum] ([yorumID], [kullaniciID], [videoID], [icerik], [yayinlanmaTarihi], [begeniSayisi]) VALUES (19, 10, 7, N'Hep yanında çalışmanın hayalini kurduğum iş insanının firmasından mülakata çağırıldım, burada staj yapmak benim için çok sağlam bir adım olacak. Anlattıklarınız özgüvenimi yükseltti, umarım olumlu neticelenir ve buraya tekrar teşekkür etmeye gelirim', CAST(N'2018-03-15T00:00:00' AS SmallDateTime), 3)
INSERT [dbo].[Yorum] ([yorumID], [kullaniciID], [videoID], [icerik], [yayinlanmaTarihi], [begeniSayisi]) VALUES (20, 11, 8, N'Her zamanki gibi yine farklı tasarımlarla şahane siniz ', CAST(N'2021-06-19T00:00:00' AS SmallDateTime), 8)
INSERT [dbo].[Yorum] ([yorumID], [kullaniciID], [videoID], [icerik], [yayinlanmaTarihi], [begeniSayisi]) VALUES (21, 13, 10, N'Umarım size de iyi gelmiştir. Haftaya nefes çalışmasında görüşürüz. Namaste!', CAST(N'2012-09-25T00:00:00' AS SmallDateTime), 6)
INSERT [dbo].[Yorum] ([yorumID], [kullaniciID], [videoID], [icerik], [yayinlanmaTarihi], [begeniSayisi]) VALUES (22, 13, 11, N'Bahrom hoca, sizin kadar içten ve samimi bir şekilde insanlara dil öğrenme konusunda yardımcı olan kimse tanımıyorum. Bunun için size ne kadar teşekkür etsek azdır. 
Sizi fazlasıyla başarılı buluyorum. 
Gerçek bir KOÇ ve öğretmen olarak görüyor tebrik ve teşekkür ediyorum...', CAST(N'2006-06-30T00:00:00' AS SmallDateTime), 5)
INSERT [dbo].[Yorum] ([yorumID], [kullaniciID], [videoID], [icerik], [yayinlanmaTarihi], [begeniSayisi]) VALUES (23, 14, 16, N'Abi piskoloji olarakta , teknik analiz olarakta bilgi ve tecrübelerinize değer verdiğim  bir kişilik siniz', CAST(N'2021-07-31T00:00:00' AS SmallDateTime), 7)
INSERT [dbo].[Yorum] ([yorumID], [kullaniciID], [videoID], [icerik], [yayinlanmaTarihi], [begeniSayisi]) VALUES (24, 14, 17, N'Hocam işin özünde aslında kendini büyük görmeme var, Her şey de kibrimiz ortaya çıkıyor', CAST(N'2022-09-26T00:00:00' AS SmallDateTime), 4)
INSERT [dbo].[Yorum] ([yorumID], [kullaniciID], [videoID], [icerik], [yayinlanmaTarihi], [begeniSayisi]) VALUES (25, 10, 18, N'Hocam siz benim idolüm oldunuz. Son 1 aydır spora başlamam lazım eski fitliğe dönmem lazım diyip duruyordum erteliyordum siz ilham oldunuz. Bunun için ayrıca teşekkür ediyorum ve başarılar diliyorum emeğinize sağlık bütün içerikler birbirinden güzel', CAST(N'2019-12-17T00:00:00' AS SmallDateTime), 6)
INSERT [dbo].[Yorum] ([yorumID], [kullaniciID], [videoID], [icerik], [yayinlanmaTarihi], [begeniSayisi]) VALUES (26, 11, 22, N'Bir süredir ben de anlattıklarınla alakalı düşünüyordum karar verme aşamasındayım sayılır bu videonun denk gelmesi çok güzel oldu.Bu anlattıklarını biraz daha detaylı bir şekilde bahsettiğin bi video çok faydalı olurdu abi.', CAST(N'2017-06-23T00:00:00' AS SmallDateTime), 7)
INSERT [dbo].[Yorum] ([yorumID], [kullaniciID], [videoID], [icerik], [yayinlanmaTarihi], [begeniSayisi]) VALUES (27, 3, 27, N'Teşekkürler Barış ağabey. Pandemiden beri hobisiz kalmıştım, bu video ilaç gibi geldi', CAST(N'2021-03-16T00:00:00' AS SmallDateTime), 5)
INSERT [dbo].[Yorum] ([yorumID], [kullaniciID], [videoID], [icerik], [yayinlanmaTarihi], [begeniSayisi]) VALUES (28, 4, 12, N'Teşekkürler tecrübelerinizi paylaştığınız için.', CAST(N'2015-04-09T00:00:00' AS SmallDateTime), 2)
INSERT [dbo].[Yorum] ([yorumID], [kullaniciID], [videoID], [icerik], [yayinlanmaTarihi], [begeniSayisi]) VALUES (29, 5, 19, N'Çok enteresan tesadüfi bir şekilde karşıma çıkmanla tüm videolarını izler oldum, bu genç yaşta böyle başarılı olman, azmin, insanlara öğretme çaban muhteşem gerçekten tebrik ediyorum.. 35 imden sonra bu alana ilgi duymaya başladım belki senin sayende kendime uygun bir sektör bulmuş olabilirm..', CAST(N'2020-05-19T00:00:00' AS SmallDateTime), 6)
INSERT [dbo].[Yorum] ([yorumID], [kullaniciID], [videoID], [icerik], [yayinlanmaTarihi], [begeniSayisi]) VALUES (30, 6, 13, N'Lütfen pomem ve pmyo mülakatları içinde bir içerik oluşturun. Çok çok faydalı olacaktır', CAST(N'2017-09-07T00:00:00' AS SmallDateTime), 16)
SET IDENTITY_INSERT [dbo].[Yorum] OFF
GO
SET IDENTITY_INSERT [dbo].[Yorum_Begeni] ON 

INSERT [dbo].[Yorum_Begeni] ([begeniID], [kullaniciID], [yorumID]) VALUES (1, 1, 3)
INSERT [dbo].[Yorum_Begeni] ([begeniID], [kullaniciID], [yorumID]) VALUES (2, 1, 7)
INSERT [dbo].[Yorum_Begeni] ([begeniID], [kullaniciID], [yorumID]) VALUES (3, 5, 12)
INSERT [dbo].[Yorum_Begeni] ([begeniID], [kullaniciID], [yorumID]) VALUES (4, 4, 11)
INSERT [dbo].[Yorum_Begeni] ([begeniID], [kullaniciID], [yorumID]) VALUES (5, 7, 14)
INSERT [dbo].[Yorum_Begeni] ([begeniID], [kullaniciID], [yorumID]) VALUES (6, 13, 21)
INSERT [dbo].[Yorum_Begeni] ([begeniID], [kullaniciID], [yorumID]) VALUES (7, 14, 23)
INSERT [dbo].[Yorum_Begeni] ([begeniID], [kullaniciID], [yorumID]) VALUES (8, 14, 24)
INSERT [dbo].[Yorum_Begeni] ([begeniID], [kullaniciID], [yorumID]) VALUES (9, 2, 30)
INSERT [dbo].[Yorum_Begeni] ([begeniID], [kullaniciID], [yorumID]) VALUES (10, 7, 14)
SET IDENTITY_INSERT [dbo].[Yorum_Begeni] OFF
GO
ALTER TABLE [dbo].[Abone]  WITH CHECK ADD  CONSTRAINT [FK_Abone_Kanallar] FOREIGN KEY([kanalID])
REFERENCES [dbo].[Kanal] ([kanalID])
GO
ALTER TABLE [dbo].[Abone] CHECK CONSTRAINT [FK_Abone_Kanallar]
GO
ALTER TABLE [dbo].[Abone]  WITH CHECK ADD  CONSTRAINT [FK_Abone_Kullanicilar] FOREIGN KEY([kullaniciID])
REFERENCES [dbo].[Kullanici] ([kullaniciID])
GO
ALTER TABLE [dbo].[Abone] CHECK CONSTRAINT [FK_Abone_Kullanicilar]
GO
ALTER TABLE [dbo].[Abonelik]  WITH CHECK ADD  CONSTRAINT [FK_Abonelikler_Kanallar] FOREIGN KEY([kanalID])
REFERENCES [dbo].[Kanal] ([kanalID])
GO
ALTER TABLE [dbo].[Abonelik] CHECK CONSTRAINT [FK_Abonelikler_Kanallar]
GO
ALTER TABLE [dbo].[Abonelik]  WITH CHECK ADD  CONSTRAINT [FK_Abonelikler_Kullanicilar] FOREIGN KEY([kullaniciID])
REFERENCES [dbo].[Kullanici] ([kullaniciID])
GO
ALTER TABLE [dbo].[Abonelik] CHECK CONSTRAINT [FK_Abonelikler_Kullanicilar]
GO
ALTER TABLE [dbo].[Gecmis]  WITH CHECK ADD  CONSTRAINT [FK_Gecmis_Videolar] FOREIGN KEY([videoID])
REFERENCES [dbo].[Video] ([videoID])
GO
ALTER TABLE [dbo].[Gecmis] CHECK CONSTRAINT [FK_Gecmis_Videolar]
GO
ALTER TABLE [dbo].[Geri_Bildirim]  WITH CHECK ADD  CONSTRAINT [FK_Geri_Bildirim_Kanallar] FOREIGN KEY([kanalID])
REFERENCES [dbo].[Kanal] ([kanalID])
GO
ALTER TABLE [dbo].[Geri_Bildirim] CHECK CONSTRAINT [FK_Geri_Bildirim_Kanallar]
GO
ALTER TABLE [dbo].[Kanal]  WITH CHECK ADD  CONSTRAINT [FK_Kanallar_Kullanicilar] FOREIGN KEY([kullaniciID])
REFERENCES [dbo].[Kullanici] ([kullaniciID])
GO
ALTER TABLE [dbo].[Kanal] CHECK CONSTRAINT [FK_Kanallar_Kullanicilar]
GO
ALTER TABLE [dbo].[Video]  WITH CHECK ADD  CONSTRAINT [FK_Videolar_Kanallar] FOREIGN KEY([kanalID])
REFERENCES [dbo].[Kanal] ([kanalID])
GO
ALTER TABLE [dbo].[Video] CHECK CONSTRAINT [FK_Videolar_Kanallar]
GO
ALTER TABLE [dbo].[Video_Begeni]  WITH CHECK ADD  CONSTRAINT [FK_Begeniler_Kullanicilar] FOREIGN KEY([kullaniciID])
REFERENCES [dbo].[Kullanici] ([kullaniciID])
GO
ALTER TABLE [dbo].[Video_Begeni] CHECK CONSTRAINT [FK_Begeniler_Kullanicilar]
GO
ALTER TABLE [dbo].[Video_Begeni]  WITH CHECK ADD  CONSTRAINT [FK_Begeniler_Videolar] FOREIGN KEY([videoID])
REFERENCES [dbo].[Video] ([videoID])
GO
ALTER TABLE [dbo].[Video_Begeni] CHECK CONSTRAINT [FK_Begeniler_Videolar]
GO
ALTER TABLE [dbo].[Video_Etiket]  WITH CHECK ADD  CONSTRAINT [FK_Video_Etiket_Etiketler] FOREIGN KEY([etiketID])
REFERENCES [dbo].[Etiket] ([etiketID])
GO
ALTER TABLE [dbo].[Video_Etiket] CHECK CONSTRAINT [FK_Video_Etiket_Etiketler]
GO
ALTER TABLE [dbo].[Video_Etiket]  WITH CHECK ADD  CONSTRAINT [FK_Video_Etiket_Videolar] FOREIGN KEY([videoID])
REFERENCES [dbo].[Video] ([videoID])
GO
ALTER TABLE [dbo].[Video_Etiket] CHECK CONSTRAINT [FK_Video_Etiket_Videolar]
GO
ALTER TABLE [dbo].[Video_Kategori]  WITH CHECK ADD  CONSTRAINT [FK_Video_Kategori_Kategori] FOREIGN KEY([kategoriID])
REFERENCES [dbo].[Kategori] ([kategoriID])
GO
ALTER TABLE [dbo].[Video_Kategori] CHECK CONSTRAINT [FK_Video_Kategori_Kategori]
GO
ALTER TABLE [dbo].[Video_Kategori]  WITH CHECK ADD  CONSTRAINT [FK_Video_Kategori_Video] FOREIGN KEY([videoID])
REFERENCES [dbo].[Video] ([videoID])
GO
ALTER TABLE [dbo].[Video_Kategori] CHECK CONSTRAINT [FK_Video_Kategori_Video]
GO
ALTER TABLE [dbo].[Yorum]  WITH CHECK ADD  CONSTRAINT [FK_Yorumlar_Kullanicilar] FOREIGN KEY([kullaniciID])
REFERENCES [dbo].[Kullanici] ([kullaniciID])
GO
ALTER TABLE [dbo].[Yorum] CHECK CONSTRAINT [FK_Yorumlar_Kullanicilar]
GO
ALTER TABLE [dbo].[Yorum]  WITH CHECK ADD  CONSTRAINT [FK_Yorumlar_Videolar] FOREIGN KEY([videoID])
REFERENCES [dbo].[Video] ([videoID])
GO
ALTER TABLE [dbo].[Yorum] CHECK CONSTRAINT [FK_Yorumlar_Videolar]
GO
ALTER TABLE [dbo].[Yorum_Begeni]  WITH CHECK ADD  CONSTRAINT [FK_Yorum_Begeni_Kullanici] FOREIGN KEY([kullaniciID])
REFERENCES [dbo].[Kullanici] ([kullaniciID])
GO
ALTER TABLE [dbo].[Yorum_Begeni] CHECK CONSTRAINT [FK_Yorum_Begeni_Kullanici]
GO
ALTER TABLE [dbo].[Yorum_Begeni]  WITH CHECK ADD  CONSTRAINT [FK_Yorum_Begeni_Yorum] FOREIGN KEY([yorumID])
REFERENCES [dbo].[Yorum] ([yorumID])
GO
ALTER TABLE [dbo].[Yorum_Begeni] CHECK CONSTRAINT [FK_Yorum_Begeni_Yorum]
GO
USE [master]
GO
ALTER DATABASE [Youtube] SET  READ_WRITE 
GO
