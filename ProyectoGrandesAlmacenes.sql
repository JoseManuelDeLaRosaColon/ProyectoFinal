
/****** Jose Manuel de la Rosa - Matricula: 21-EIIN-1-058 Sección: 0541******/
CREATE DATABASE [GrandesAlmacenes]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GrandesAlmacenes', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\GrandesAlmacenes.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'GrandesAlmacenes_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\GrandesAlmacenes_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [GrandesAlmacenes] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GrandesAlmacenes].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GrandesAlmacenes] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GrandesAlmacenes] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GrandesAlmacenes] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GrandesAlmacenes] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GrandesAlmacenes] SET ARITHABORT OFF 
GO
ALTER DATABASE [GrandesAlmacenes] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [GrandesAlmacenes] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GrandesAlmacenes] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GrandesAlmacenes] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GrandesAlmacenes] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GrandesAlmacenes] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GrandesAlmacenes] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GrandesAlmacenes] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GrandesAlmacenes] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GrandesAlmacenes] SET  ENABLE_BROKER 
GO
ALTER DATABASE [GrandesAlmacenes] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GrandesAlmacenes] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GrandesAlmacenes] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GrandesAlmacenes] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GrandesAlmacenes] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GrandesAlmacenes] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GrandesAlmacenes] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GrandesAlmacenes] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [GrandesAlmacenes] SET  MULTI_USER 
GO
ALTER DATABASE [GrandesAlmacenes] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GrandesAlmacenes] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GrandesAlmacenes] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GrandesAlmacenes] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [GrandesAlmacenes] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [GrandesAlmacenes] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [GrandesAlmacenes] SET QUERY_STORE = OFF
GO
USE [GrandesAlmacenes]
GO
/****** Object:  Table [dbo].[Cajeros]    Script Date: 4/11/2022 2:10:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cajeros](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](255) NULL,
 CONSTRAINT [PK_Cajeros] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Maquina_Registradora]    Script Date: 4/11/2022 2:10:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maquina_Registradora](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Piso] [int] NULL,
 CONSTRAINT [PK_Maquina_Registradora] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 4/11/2022 2:10:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NULL,
	[Precio] [int] NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 4/11/2022 2:10:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[Cajero] [int] NULL,
	[Maquina] [int] NULL,
	[Producto] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cajeros] ON 

INSERT [dbo].[Cajeros] ([Codigo], [Nombre]) VALUES (1, N'Jose de la Rosa')
INSERT [dbo].[Cajeros] ([Codigo], [Nombre]) VALUES (2, N'Jean Rodriguez')
INSERT [dbo].[Cajeros] ([Codigo], [Nombre]) VALUES (3, N'Macos Soli')
INSERT [dbo].[Cajeros] ([Codigo], [Nombre]) VALUES (4, N'Minerva Garcias')
INSERT [dbo].[Cajeros] ([Codigo], [Nombre]) VALUES (5, N'Manuel Jimenez')
INSERT [dbo].[Cajeros] ([Codigo], [Nombre]) VALUES (6, N'Carlos Contreras')
INSERT [dbo].[Cajeros] ([Codigo], [Nombre]) VALUES (7, N'Fernando Roa')
INSERT [dbo].[Cajeros] ([Codigo], [Nombre]) VALUES (8, N'Yulisa Petino')
INSERT [dbo].[Cajeros] ([Codigo], [Nombre]) VALUES (9, N'Yesica Soto')
INSERT [dbo].[Cajeros] ([Codigo], [Nombre]) VALUES (10, N'Juan Sanchez')
INSERT [dbo].[Cajeros] ([Codigo], [Nombre]) VALUES (11, N'Joseph Colon')
INSERT [dbo].[Cajeros] ([Codigo], [Nombre]) VALUES (12, N'Maria Altices')
INSERT [dbo].[Cajeros] ([Codigo], [Nombre]) VALUES (13, N'Marian Gonzales')
SET IDENTITY_INSERT [dbo].[Cajeros] OFF
GO
SET IDENTITY_INSERT [dbo].[Maquina_Registradora] ON 

INSERT [dbo].[Maquina_Registradora] ([Codigo], [Piso]) VALUES (1, 2)
INSERT [dbo].[Maquina_Registradora] ([Codigo], [Piso]) VALUES (2, 4)
INSERT [dbo].[Maquina_Registradora] ([Codigo], [Piso]) VALUES (3, 6)
INSERT [dbo].[Maquina_Registradora] ([Codigo], [Piso]) VALUES (4, 8)
INSERT [dbo].[Maquina_Registradora] ([Codigo], [Piso]) VALUES (5, 10)
INSERT [dbo].[Maquina_Registradora] ([Codigo], [Piso]) VALUES (6, 3)
INSERT [dbo].[Maquina_Registradora] ([Codigo], [Piso]) VALUES (7, 5)
INSERT [dbo].[Maquina_Registradora] ([Codigo], [Piso]) VALUES (8, 7)
INSERT [dbo].[Maquina_Registradora] ([Codigo], [Piso]) VALUES (9, 9)
INSERT [dbo].[Maquina_Registradora] ([Codigo], [Piso]) VALUES (10, 11)
INSERT [dbo].[Maquina_Registradora] ([Codigo], [Piso]) VALUES (11, 12)
SET IDENTITY_INSERT [dbo].[Maquina_Registradora] OFF
GO
SET IDENTITY_INSERT [dbo].[Productos] ON 

INSERT [dbo].[Productos] ([Codigo], [Nombre], [Precio]) VALUES (1, N'Jabon', 50)
INSERT [dbo].[Productos] ([Codigo], [Nombre], [Precio]) VALUES (2, N'Mani', 10)
INSERT [dbo].[Productos] ([Codigo], [Nombre], [Precio]) VALUES (3, N'Pan Sobao', 10)
INSERT [dbo].[Productos] ([Codigo], [Nombre], [Precio]) VALUES (4, N'Mandarina', 15)
INSERT [dbo].[Productos] ([Codigo], [Nombre], [Precio]) VALUES (5, N'Guineo', 7)
INSERT [dbo].[Productos] ([Codigo], [Nombre], [Precio]) VALUES (6, N'Yuca', 25)
INSERT [dbo].[Productos] ([Codigo], [Nombre], [Precio]) VALUES (7, N'Jugo', 35)
INSERT [dbo].[Productos] ([Codigo], [Nombre], [Precio]) VALUES (8, N'Chocolate', 30)
INSERT [dbo].[Productos] ([Codigo], [Nombre], [Precio]) VALUES (9, N'Menta', 5)
INSERT [dbo].[Productos] ([Codigo], [Nombre], [Precio]) VALUES (10, N'Arroz', 35)
INSERT [dbo].[Productos] ([Codigo], [Nombre], [Precio]) VALUES (11, N'Azucar', 12)
INSERT [dbo].[Productos] ([Codigo], [Nombre], [Precio]) VALUES (12, N'Canela', 5)
INSERT [dbo].[Productos] ([Codigo], [Nombre], [Precio]) VALUES (13, N'Pimienta', 100)
SET IDENTITY_INSERT [dbo].[Productos] OFF
GO
INSERT [dbo].[Venta] ([Cajero], [Maquina], [Producto]) VALUES (1, 2, 3)
INSERT [dbo].[Venta] ([Cajero], [Maquina], [Producto]) VALUES (2, 3, 6)
INSERT [dbo].[Venta] ([Cajero], [Maquina], [Producto]) VALUES (5, 8, 10)
INSERT [dbo].[Venta] ([Cajero], [Maquina], [Producto]) VALUES (6, 4, 8)
INSERT [dbo].[Venta] ([Cajero], [Maquina], [Producto]) VALUES (3, 7, 9)
INSERT [dbo].[Venta] ([Cajero], [Maquina], [Producto]) VALUES (7, 5, 5)
INSERT [dbo].[Venta] ([Cajero], [Maquina], [Producto]) VALUES (4, 4, 4)
INSERT [dbo].[Venta] ([Cajero], [Maquina], [Producto]) VALUES (9, 8, 7)
INSERT [dbo].[Venta] ([Cajero], [Maquina], [Producto]) VALUES (10, 9, 7)
INSERT [dbo].[Venta] ([Cajero], [Maquina], [Producto]) VALUES (3, 5, 6)
INSERT [dbo].[Venta] ([Cajero], [Maquina], [Producto]) VALUES (8, 10, 10)
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Cajeros] FOREIGN KEY([Cajero])
REFERENCES [dbo].[Cajeros] ([Codigo])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Cajeros]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Maquina_Registradora] FOREIGN KEY([Maquina])
REFERENCES [dbo].[Maquina_Registradora] ([Codigo])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Maquina_Registradora]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Productos] FOREIGN KEY([Producto])
REFERENCES [dbo].[Productos] ([Codigo])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Productos]
GO
USE [master]
GO
ALTER DATABASE [GrandesAlmacenes] SET  READ_WRITE 
GO
