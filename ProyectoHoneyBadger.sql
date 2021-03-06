USE [master]
GO
/****** Object:  Database [HoneyBDB]    Script Date: 4/11/2022 5:21:10 PM ******/
CREATE DATABASE [HoneyBDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PROYECTOSDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\HoneyBDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PROYECTOSDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\HoneyBDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [HoneyBDB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HoneyBDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HoneyBDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HoneyBDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HoneyBDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HoneyBDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HoneyBDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [HoneyBDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HoneyBDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HoneyBDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HoneyBDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HoneyBDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HoneyBDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HoneyBDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HoneyBDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HoneyBDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HoneyBDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HoneyBDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HoneyBDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HoneyBDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HoneyBDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HoneyBDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HoneyBDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HoneyBDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HoneyBDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HoneyBDB] SET  MULTI_USER 
GO
ALTER DATABASE [HoneyBDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HoneyBDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HoneyBDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HoneyBDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HoneyBDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HoneyBDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [HoneyBDB] SET QUERY_STORE = OFF
GO
USE [HoneyBDB]
GO
/****** Object:  User [ProyectosUser]    Script Date: 4/11/2022 5:21:10 PM ******/
CREATE USER [ProyectosUser] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [ProyectosUser]
GO
ALTER ROLE [db_datareader] ADD MEMBER [ProyectosUser]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [ProyectosUser]
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 4/11/2022 5:21:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamento](
	[DepartamentoId] [int] IDENTITY(1,1) NOT NULL,
	[NombreDepartamento] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Departamento] PRIMARY KEY CLUSTERED 
(
	[DepartamentoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 4/11/2022 5:21:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[EmpleadoId] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [varchar](150) NOT NULL,
	[Apellidos] [varchar](150) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Direccion] [varchar](250) NULL,
	[Celular] [varchar](15) NOT NULL,
	[DepartamentoId] [int] NOT NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[EmpleadoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proyecto]    Script Date: 4/11/2022 5:21:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proyecto](
	[ProyectoId] [int] IDENTITY(1,1) NOT NULL,
	[NombreProyecto] [varchar](150) NOT NULL,
	[FechaInicio] [datetime] NOT NULL,
	[FechaFin] [datetime] NOT NULL,
 CONSTRAINT [PK_Proyecto] PRIMARY KEY CLUSTERED 
(
	[ProyectoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProyectoEmpleado]    Script Date: 4/11/2022 5:21:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProyectoEmpleado](
	[ProyectoId] [int] NOT NULL,
	[EmpleadoId] [int] NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
 CONSTRAINT [PK_ProyectoEmpleado] PRIMARY KEY CLUSTERED 
(
	[ProyectoId] ASC,
	[EmpleadoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 4/11/2022 5:21:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 4/11/2022 5:21:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[Celular] [nvarchar](max) NULL,
	[Nombre_Usuario] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsuariosRoles]    Script Date: 4/11/2022 5:21:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuariosRoles](
	[UsuarioId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_UsuariosRoles] PRIMARY KEY CLUSTERED 
(
	[UsuarioId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Departamento] ON 

INSERT [dbo].[Departamento] ([DepartamentoId], [NombreDepartamento]) VALUES (1, N'Marketing')
INSERT [dbo].[Departamento] ([DepartamentoId], [NombreDepartamento]) VALUES (4, N'Sistemas')
INSERT [dbo].[Departamento] ([DepartamentoId], [NombreDepartamento]) VALUES (5, N'Ventas')
INSERT [dbo].[Departamento] ([DepartamentoId], [NombreDepartamento]) VALUES (6, N'RRHH')
INSERT [dbo].[Departamento] ([DepartamentoId], [NombreDepartamento]) VALUES (7, N'Contabilidad')
INSERT [dbo].[Departamento] ([DepartamentoId], [NombreDepartamento]) VALUES (8, N'Legal')
INSERT [dbo].[Departamento] ([DepartamentoId], [NombreDepartamento]) VALUES (9, N'Finanzas')
INSERT [dbo].[Departamento] ([DepartamentoId], [NombreDepartamento]) VALUES (10, N'Comercial')
INSERT [dbo].[Departamento] ([DepartamentoId], [NombreDepartamento]) VALUES (11, N'Logistica')
INSERT [dbo].[Departamento] ([DepartamentoId], [NombreDepartamento]) VALUES (12, N'Direccion General')
INSERT [dbo].[Departamento] ([DepartamentoId], [NombreDepartamento]) VALUES (13, N'Compras')
INSERT [dbo].[Departamento] ([DepartamentoId], [NombreDepartamento]) VALUES (14, N'Direccion Genral')
SET IDENTITY_INSERT [dbo].[Departamento] OFF
GO
SET IDENTITY_INSERT [dbo].[Empleado] ON 

INSERT [dbo].[Empleado] ([EmpleadoId], [Nombres], [Apellidos], [Email], [Direccion], [Celular], [DepartamentoId]) VALUES (1, N'Junior', N'Camizán Guerrero', N'alonso@hotmail.com', N'Catacaos', N'99563265', 5)
INSERT [dbo].[Empleado] ([EmpleadoId], [Nombres], [Apellidos], [Email], [Direccion], [Celular], [DepartamentoId]) VALUES (2, N'Martín', N'Camizán', N'martinaugusto@hotmail.com', N'Pasaje Mimbela 125', N'965365365', 5)
INSERT [dbo].[Empleado] ([EmpleadoId], [Nombres], [Apellidos], [Email], [Direccion], [Celular], [DepartamentoId]) VALUES (3, N'José Carlos', N'García', N'carlos56@gmail.es', N'Av. Miguel Grau 125', N'957484112', 4)
INSERT [dbo].[Empleado] ([EmpleadoId], [Nombres], [Apellidos], [Email], [Direccion], [Celular], [DepartamentoId]) VALUES (4, N'Walter', N'Lopez Martínez', N'walter@gmail.es', N'Sin Dirección', N'956321478', 1)
INSERT [dbo].[Empleado] ([EmpleadoId], [Nombres], [Apellidos], [Email], [Direccion], [Celular], [DepartamentoId]) VALUES (5, N'María', N'Fernández Peralta', N'maria@hotmail.com', N'Las almendras 123', N'963258841', 5)
INSERT [dbo].[Empleado] ([EmpleadoId], [Nombres], [Apellidos], [Email], [Direccion], [Celular], [DepartamentoId]) VALUES (6, N'Jean', N'Holguim', N'jean@gmail.com', N'Los prados casa 25', N'8297854312', 10)
INSERT [dbo].[Empleado] ([EmpleadoId], [Nombres], [Apellidos], [Email], [Direccion], [Celular], [DepartamentoId]) VALUES (7, N'Carlos', N'Gonzales', N'Cgonzales@hotmail.clom', N'AV valenzuela, #32', N'8496852145', 9)
INSERT [dbo].[Empleado] ([EmpleadoId], [Nombres], [Apellidos], [Email], [Direccion], [Celular], [DepartamentoId]) VALUES (8, N'Josepk ', N'Colon', N'ghcolon@hotmail.com', N'Calle las palmeras, Reseidencia 23', N'8496325847', 6)
INSERT [dbo].[Empleado] ([EmpleadoId], [Nombres], [Apellidos], [Email], [Direccion], [Celular], [DepartamentoId]) VALUES (10, N'Leonor', N'Perez', N'leonor36@gmail.com', N'El almirante, casa 85 esquina rosa', N'8097864587', 8)
INSERT [dbo].[Empleado] ([EmpleadoId], [Nombres], [Apellidos], [Email], [Direccion], [Celular], [DepartamentoId]) VALUES (13, N'Luis', N'Peralta', N'lperalta@gmail.com', N'Invivienda, cerca del parque edificio L 402', N'8297854036', 1)
SET IDENTITY_INSERT [dbo].[Empleado] OFF
GO
SET IDENTITY_INSERT [dbo].[Proyecto] ON 

INSERT [dbo].[Proyecto] ([ProyectoId], [NombreProyecto], [FechaInicio], [FechaFin]) VALUES (1, N'Proyecto Agua Saludable', CAST(N'2019-09-21T00:00:00.000' AS DateTime), CAST(N'2020-05-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Proyecto] ([ProyectoId], [NombreProyecto], [FechaInicio], [FechaFin]) VALUES (2, N'Proyecto Loading', CAST(N'2019-09-01T00:00:00.000' AS DateTime), CAST(N'2020-04-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Proyecto] ([ProyectoId], [NombreProyecto], [FechaInicio], [FechaFin]) VALUES (3, N'Proyecto Overlay', CAST(N'2019-09-15T00:00:00.000' AS DateTime), CAST(N'2019-10-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Proyecto] ([ProyectoId], [NombreProyecto], [FechaInicio], [FechaFin]) VALUES (4, N'Proyecto Solar', CAST(N'2019-09-01T00:00:00.000' AS DateTime), CAST(N'2020-03-31T00:00:00.000' AS DateTime))
INSERT [dbo].[Proyecto] ([ProyectoId], [NombreProyecto], [FechaInicio], [FechaFin]) VALUES (5, N'Reportes con Listas Genéricas', CAST(N'2020-06-10T00:00:00.000' AS DateTime), CAST(N'2020-06-30T00:00:00.000' AS DateTime))
INSERT [dbo].[Proyecto] ([ProyectoId], [NombreProyecto], [FechaInicio], [FechaFin]) VALUES (6, N'Tormenta de fuego', CAST(N'2022-05-31T00:00:00.000' AS DateTime), CAST(N'2022-06-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Proyecto] ([ProyectoId], [NombreProyecto], [FechaInicio], [FechaFin]) VALUES (7, N'Flamenco', CAST(N'2022-03-21T00:00:00.000' AS DateTime), CAST(N'2022-03-29T00:00:00.000' AS DateTime))
INSERT [dbo].[Proyecto] ([ProyectoId], [NombreProyecto], [FechaInicio], [FechaFin]) VALUES (8, N'Toros de oro', CAST(N'2022-06-15T00:00:00.000' AS DateTime), CAST(N'2022-09-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Proyecto] ([ProyectoId], [NombreProyecto], [FechaInicio], [FechaFin]) VALUES (9, N'Hércules', CAST(N'2022-01-18T00:00:00.000' AS DateTime), CAST(N'2022-09-16T00:00:00.000' AS DateTime))
INSERT [dbo].[Proyecto] ([ProyectoId], [NombreProyecto], [FechaInicio], [FechaFin]) VALUES (10, N'Júpiter', CAST(N'2022-05-16T00:00:00.000' AS DateTime), CAST(N'2022-08-18T00:00:00.000' AS DateTime))
INSERT [dbo].[Proyecto] ([ProyectoId], [NombreProyecto], [FechaInicio], [FechaFin]) VALUES (11, N'Kriptonita', CAST(N'2022-04-19T00:00:00.000' AS DateTime), CAST(N'2022-08-28T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Proyecto] OFF
GO
INSERT [dbo].[ProyectoEmpleado] ([ProyectoId], [EmpleadoId], [FechaAlta]) VALUES (1, 1, CAST(N'2020-05-09T03:42:20.073' AS DateTime))
INSERT [dbo].[ProyectoEmpleado] ([ProyectoId], [EmpleadoId], [FechaAlta]) VALUES (2, 2, CAST(N'2022-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[ProyectoEmpleado] ([ProyectoId], [EmpleadoId], [FechaAlta]) VALUES (2, 3, CAST(N'2020-03-22T05:16:32.663' AS DateTime))
INSERT [dbo].[ProyectoEmpleado] ([ProyectoId], [EmpleadoId], [FechaAlta]) VALUES (2, 4, CAST(N'2020-03-22T05:15:18.743' AS DateTime))
INSERT [dbo].[ProyectoEmpleado] ([ProyectoId], [EmpleadoId], [FechaAlta]) VALUES (3, 6, CAST(N'2020-06-10T03:47:21.153' AS DateTime))
INSERT [dbo].[ProyectoEmpleado] ([ProyectoId], [EmpleadoId], [FechaAlta]) VALUES (4, 7, CAST(N'2020-03-22T05:11:15.647' AS DateTime))
INSERT [dbo].[ProyectoEmpleado] ([ProyectoId], [EmpleadoId], [FechaAlta]) VALUES (5, 5, CAST(N'2020-06-10T03:47:45.910' AS DateTime))
INSERT [dbo].[ProyectoEmpleado] ([ProyectoId], [EmpleadoId], [FechaAlta]) VALUES (6, 2, CAST(N'2020-03-22T05:15:41.553' AS DateTime))
INSERT [dbo].[ProyectoEmpleado] ([ProyectoId], [EmpleadoId], [FechaAlta]) VALUES (7, 10, CAST(N'2020-06-10T03:47:34.397' AS DateTime))
INSERT [dbo].[ProyectoEmpleado] ([ProyectoId], [EmpleadoId], [FechaAlta]) VALUES (8, 8, CAST(N'2022-03-16T00:00:00.000' AS DateTime))
INSERT [dbo].[ProyectoEmpleado] ([ProyectoId], [EmpleadoId], [FechaAlta]) VALUES (9, 2, CAST(N'2020-06-10T03:47:26.950' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([Id], [Nombre]) VALUES (1, N'Administrador de la oficina de tarjetas')
INSERT [dbo].[Roles] ([Id], [Nombre]) VALUES (2, N'Administrador del curso')
INSERT [dbo].[Roles] ([Id], [Nombre]) VALUES (3, N'Administrador de la comunidad')
INSERT [dbo].[Roles] ([Id], [Nombre]) VALUES (4, N'Administrador del eMarketplace')
INSERT [dbo].[Roles] ([Id], [Nombre]) VALUES (5, N'Administrador de entorno de aprendizaje')
INSERT [dbo].[Roles] ([Id], [Nombre]) VALUES (6, N'Ninguno')
INSERT [dbo].[Roles] ([Id], [Nombre]) VALUES (7, N'Observador')
INSERT [dbo].[Roles] ([Id], [Nombre]) VALUES (8, N'Asistencia')
INSERT [dbo].[Roles] ([Id], [Nombre]) VALUES (9, N'Administrador del sistema')
INSERT [dbo].[Roles] ([Id], [Nombre]) VALUES (10, N'Asistencia del sistema')
INSERT [dbo].[Roles] ([Id], [Nombre]) VALUES (11, N'Administrador de usuarios')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([Id], [Email], [Celular], [Nombre_Usuario]) VALUES (1, N'lsanchez@hotmail.com', N'8297848652', N'Leonel_Sanchez')
INSERT [dbo].[Usuarios] ([Id], [Email], [Celular], [Nombre_Usuario]) VALUES (2, N'Jean65@hotmail.com', N'8496326547', N'Jean_Castillo')
INSERT [dbo].[Usuarios] ([Id], [Email], [Celular], [Nombre_Usuario]) VALUES (3, N'Jose92@gmail.com', N'8269784151', N'Jose_Colon')
INSERT [dbo].[Usuarios] ([Id], [Email], [Celular], [Nombre_Usuario]) VALUES (4, N'mariaglp@gmail.com', N'8098754879', N'Maria_Roa')
INSERT [dbo].[Usuarios] ([Id], [Email], [Celular], [Nombre_Usuario]) VALUES (5, N'calossp@hotmail.com', N'8496321547', N'Carlos_Aquino')
INSERT [dbo].[Usuarios] ([Id], [Email], [Celular], [Nombre_Usuario]) VALUES (6, N'manuelkamuron62@gmail.com', N'8497563210', N'Manuel_Colon')
INSERT [dbo].[Usuarios] ([Id], [Email], [Celular], [Nombre_Usuario]) VALUES (7, N'yanuryhil32@gmail.com', N'8497852160', N'Yanury_Galindo')
INSERT [dbo].[Usuarios] ([Id], [Email], [Celular], [Nombre_Usuario]) VALUES (8, N'hansel78@gmail.com', N'8097865321', N'Hansel_Nisco')
INSERT [dbo].[Usuarios] ([Id], [Email], [Celular], [Nombre_Usuario]) VALUES (10, N'mariano.yu32@hotmail.com', N'8496204875', N'Mariano_SPA')
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
GO
INSERT [dbo].[UsuariosRoles] ([UsuarioId], [RoleId]) VALUES (1, 1)
INSERT [dbo].[UsuariosRoles] ([UsuarioId], [RoleId]) VALUES (2, 3)
INSERT [dbo].[UsuariosRoles] ([UsuarioId], [RoleId]) VALUES (2, 4)
INSERT [dbo].[UsuariosRoles] ([UsuarioId], [RoleId]) VALUES (3, 2)
INSERT [dbo].[UsuariosRoles] ([UsuarioId], [RoleId]) VALUES (5, 5)
INSERT [dbo].[UsuariosRoles] ([UsuarioId], [RoleId]) VALUES (6, 3)
INSERT [dbo].[UsuariosRoles] ([UsuarioId], [RoleId]) VALUES (6, 4)
INSERT [dbo].[UsuariosRoles] ([UsuarioId], [RoleId]) VALUES (8, 7)
INSERT [dbo].[UsuariosRoles] ([UsuarioId], [RoleId]) VALUES (9, 1)
INSERT [dbo].[UsuariosRoles] ([UsuarioId], [RoleId]) VALUES (9, 2)
INSERT [dbo].[UsuariosRoles] ([UsuarioId], [RoleId]) VALUES (9, 5)
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Departamento] FOREIGN KEY([DepartamentoId])
REFERENCES [dbo].[Departamento] ([DepartamentoId])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Departamento]
GO
ALTER TABLE [dbo].[ProyectoEmpleado]  WITH CHECK ADD  CONSTRAINT [FK_ProyectoEmpleado_Empleado] FOREIGN KEY([EmpleadoId])
REFERENCES [dbo].[Empleado] ([EmpleadoId])
GO
ALTER TABLE [dbo].[ProyectoEmpleado] CHECK CONSTRAINT [FK_ProyectoEmpleado_Empleado]
GO
ALTER TABLE [dbo].[ProyectoEmpleado]  WITH CHECK ADD  CONSTRAINT [FK_ProyectoEmpleado_Proyecto] FOREIGN KEY([ProyectoId])
REFERENCES [dbo].[Proyecto] ([ProyectoId])
GO
ALTER TABLE [dbo].[ProyectoEmpleado] CHECK CONSTRAINT [FK_ProyectoEmpleado_Proyecto]
GO
ALTER TABLE [dbo].[UsuariosRoles]  WITH CHECK ADD  CONSTRAINT [FK_UsuariosRoles_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[UsuariosRoles] CHECK CONSTRAINT [FK_UsuariosRoles_Roles]
GO
ALTER TABLE [dbo].[UsuariosRoles]  WITH CHECK ADD  CONSTRAINT [FK_UsuariosRoles_Usuarios] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Usuarios] ([Id])
GO
ALTER TABLE [dbo].[UsuariosRoles] CHECK CONSTRAINT [FK_UsuariosRoles_Usuarios]
GO
/****** Object:  StoredProcedure [dbo].[spListarProyectos]    Script Date: 4/11/2022 5:21:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spListarProyectos]
@ProyectoId int = null
AS
BEGIN
	select * from Proyecto where ProyectoId = @ProyectoId
END
GO
/****** Object:  StoredProcedure [dbo].[spObtenerProyecto]    Script Date: 4/11/2022 5:21:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spObtenerProyecto]
@ProyectoId int = 0
AS
BEGIN
	select * from Proyecto where ProyectoId = @ProyectoId
END
GO
USE [master]
GO
ALTER DATABASE [HoneyBDB] SET  READ_WRITE 
GO
