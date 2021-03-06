USE [master]
GO
/****** Jose Manuel de la Rosa - Matricula: 21-EIIN-1-058 Sección: 0541******/
CREATE DATABASE [LaTiendaInformatica]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LaTiendaInformatica', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\LaTiendaInformatica.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'LaTiendaInformatica_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\LaTiendaInformatica_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [LaTiendaInformatica] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LaTiendaInformatica].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LaTiendaInformatica] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LaTiendaInformatica] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LaTiendaInformatica] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LaTiendaInformatica] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LaTiendaInformatica] SET ARITHABORT OFF 
GO
ALTER DATABASE [LaTiendaInformatica] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LaTiendaInformatica] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LaTiendaInformatica] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LaTiendaInformatica] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LaTiendaInformatica] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LaTiendaInformatica] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LaTiendaInformatica] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LaTiendaInformatica] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LaTiendaInformatica] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LaTiendaInformatica] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LaTiendaInformatica] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LaTiendaInformatica] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LaTiendaInformatica] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LaTiendaInformatica] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LaTiendaInformatica] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LaTiendaInformatica] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LaTiendaInformatica] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LaTiendaInformatica] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LaTiendaInformatica] SET  MULTI_USER 
GO
ALTER DATABASE [LaTiendaInformatica] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LaTiendaInformatica] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LaTiendaInformatica] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LaTiendaInformatica] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [LaTiendaInformatica] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [LaTiendaInformatica] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [LaTiendaInformatica] SET QUERY_STORE = OFF
GO
USE [LaTiendaInformatica]
GO
/****** Object:  Table [dbo].[Articulo]    Script Date: 4/11/2022 11:33:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articulo](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NULL,
	[Precio] [int] NULL,
	[Fabricante] [int] NULL,
 CONSTRAINT [PK_Articulo] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fabricante]    Script Date: 4/11/2022 11:33:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fabricante](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NULL,
 CONSTRAINT [PK_Fabricante] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Articulo] ON 

INSERT [dbo].[Articulo] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (1, N'Cloro', 250, 1)
INSERT [dbo].[Articulo] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (2, N'Pintura', 500, 3)
INSERT [dbo].[Articulo] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (3, N'Comida Enlatada', 380, 6)
INSERT [dbo].[Articulo] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (4, N'Paca', 30, 2)
INSERT [dbo].[Articulo] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (5, N'Embutidos', 100, 4)
INSERT [dbo].[Articulo] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (6, N'Matillo', 800, 8)
INSERT [dbo].[Articulo] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (7, N'Sillas', 620, 3)
INSERT [dbo].[Articulo] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (8, N'Nevera', 60000, 12)
INSERT [dbo].[Articulo] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (9, N'Camas', 15000, 12)
INSERT [dbo].[Articulo] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (10, N'Gabeta Cocina', 8500, 1)
INSERT [dbo].[Articulo] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (11, N'Estufa', 25000, 5)
INSERT [dbo].[Articulo] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (12, N'Television', 13000, 13)
INSERT [dbo].[Articulo] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (13, N'Abanico', 2500, 13)
INSERT [dbo].[Articulo] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (14, N'Ceramica', 1220, 10)
INSERT [dbo].[Articulo] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (15, N'Laptop', 36000, 9)
SET IDENTITY_INSERT [dbo].[Articulo] OFF
GO
SET IDENTITY_INSERT [dbo].[Fabricante] ON 

INSERT [dbo].[Fabricante] ([Codigo], [Nombre]) VALUES (1, N'Industrias Barri')
INSERT [dbo].[Fabricante] ([Codigo], [Nombre]) VALUES (2, N'Industrias Los Clark')
INSERT [dbo].[Fabricante] ([Codigo], [Nombre]) VALUES (3, N'Industrias CCK')
INSERT [dbo].[Fabricante] ([Codigo], [Nombre]) VALUES (4, N'Industria Los Taiman')
INSERT [dbo].[Fabricante] ([Codigo], [Nombre]) VALUES (5, N'Los Roa')
INSERT [dbo].[Fabricante] ([Codigo], [Nombre]) VALUES (6, N'Black Sell')
INSERT [dbo].[Fabricante] ([Codigo], [Nombre]) VALUES (7, N'Antropella')
INSERT [dbo].[Fabricante] ([Codigo], [Nombre]) VALUES (8, N'Ultrata Tumba')
INSERT [dbo].[Fabricante] ([Codigo], [Nombre]) VALUES (9, N'Vende Mas Inc')
INSERT [dbo].[Fabricante] ([Codigo], [Nombre]) VALUES (10, N'Fabrica TodoBien')
INSERT [dbo].[Fabricante] ([Codigo], [Nombre]) VALUES (11, N'Facrica La Sabrosa')
INSERT [dbo].[Fabricante] ([Codigo], [Nombre]) VALUES (12, N'CompraYa')
INSERT [dbo].[Fabricante] ([Codigo], [Nombre]) VALUES (13, N'Paga Menos')
SET IDENTITY_INSERT [dbo].[Fabricante] OFF
GO
ALTER TABLE [dbo].[Articulo]  WITH CHECK ADD  CONSTRAINT [FK_Articulo_Fabricante] FOREIGN KEY([Fabricante])
REFERENCES [dbo].[Fabricante] ([Codigo])
GO
ALTER TABLE [dbo].[Articulo] CHECK CONSTRAINT [FK_Articulo_Fabricante]
GO
USE [master]
GO
ALTER DATABASE [LaTiendaInformatica] SET  READ_WRITE 
GO
