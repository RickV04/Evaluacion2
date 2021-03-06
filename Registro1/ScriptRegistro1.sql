USE [master]
GO
/****** Object:  Database [RegistrosBD]    Script Date: 4/7/2021 10:54:19 ******/
CREATE DATABASE [RegistrosBD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RegistrosBD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\RegistrosBD.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'RegistrosBD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\RegistrosBD_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [RegistrosBD] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RegistrosBD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RegistrosBD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RegistrosBD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RegistrosBD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RegistrosBD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RegistrosBD] SET ARITHABORT OFF 
GO
ALTER DATABASE [RegistrosBD] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RegistrosBD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RegistrosBD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RegistrosBD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RegistrosBD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RegistrosBD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RegistrosBD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RegistrosBD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RegistrosBD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RegistrosBD] SET  ENABLE_BROKER 
GO
ALTER DATABASE [RegistrosBD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RegistrosBD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RegistrosBD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RegistrosBD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RegistrosBD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RegistrosBD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RegistrosBD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RegistrosBD] SET RECOVERY FULL 
GO
ALTER DATABASE [RegistrosBD] SET  MULTI_USER 
GO
ALTER DATABASE [RegistrosBD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RegistrosBD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RegistrosBD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RegistrosBD] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [RegistrosBD] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'RegistrosBD', N'ON'
GO
ALTER DATABASE [RegistrosBD] SET QUERY_STORE = OFF
GO
USE [RegistrosBD]
GO
/****** Object:  Table [dbo].[Ciudad]    Script Date: 4/7/2021 10:54:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ciudad](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](30) NOT NULL,
	[activo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 4/7/2021 10:54:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[id] [nvarchar](10) NULL,
	[nombres] [nvarchar](50) NOT NULL,
	[apellidos] [nvarchar](50) NOT NULL,
	[ciudad] [int] NULL,
	[direccion] [nvarchar](60) NULL,
	[numCelular] [nvarchar](15) NULL,
	[fechaNac] [datetime] NULL,
	[activo] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Ciudad] ON 

INSERT [dbo].[Ciudad] ([id], [nombre], [activo]) VALUES (1, N'Malaga', NULL)
INSERT [dbo].[Ciudad] ([id], [nombre], [activo]) VALUES (2, N'Rio san juan', NULL)
INSERT [dbo].[Ciudad] ([id], [nombre], [activo]) VALUES (3, N'Masaya', NULL)
INSERT [dbo].[Ciudad] ([id], [nombre], [activo]) VALUES (4, N'Chinandega', NULL)
INSERT [dbo].[Ciudad] ([id], [nombre], [activo]) VALUES (5, N'Paris', NULL)
INSERT [dbo].[Ciudad] ([id], [nombre], [activo]) VALUES (6, N'New York', NULL)
INSERT [dbo].[Ciudad] ([id], [nombre], [activo]) VALUES (7, N'Esteli', NULL)
INSERT [dbo].[Ciudad] ([id], [nombre], [activo]) VALUES (8, N'Boaco', NULL)
INSERT [dbo].[Ciudad] ([id], [nombre], [activo]) VALUES (9, N'Managua', NULL)
INSERT [dbo].[Ciudad] ([id], [nombre], [activo]) VALUES (10, N'Granada', NULL)
SET IDENTITY_INSERT [dbo].[Ciudad] OFF
INSERT [dbo].[Cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'1', N'Miguel', N'Martinez', 1, N'Carretera sur km 25', N'12355267', CAST(N'2000-02-13T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'2', N'Eduardo', N'Ramirez', 5, N'Km 12 carretera vieja a leon', N'58637843', CAST(N'2003-12-23T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'3', N'Jose', N'Medina', 3, N'Km10 carretera masaya', N'85578439', CAST(N'1989-05-07T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'4', N'Juan', N'Gonzales', 3, N'Km 20 carretera rivas', N'38943212', CAST(N'2001-07-28T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'5', N'Mario', N'Vargas', 4, N'Casa numero 5 recinto san juan', N'48932902', CAST(N'2001-05-02T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'6', N'Jesus', N'Martinez', 5, N'Residencial la merced casa numero 10', N'48390244', CAST(N'2000-04-25T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'7', N'Maria', N'Espinoza', 8, N'Carretera vieja leon km 13', N'58389212', CAST(N'2019-03-23T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'8', N'Marina', N'Rodriguez', 9, N'Reparto san juan casa numero 25', N'18594320', CAST(N'1990-11-12T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'9', N'Ernesto', N'Villarreal', 8, N'Km 12 carretera vieja a leon', N'83872932', CAST(N'2002-02-14T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'10', N'Andres', N'Pedraja', 7, N'Km13 carretera masaya', N'82475839', CAST(N'2000-06-05T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'11', N'Luis', N'Castillo', 2, N'Residencial flor de leon', N'98537859', CAST(N'2001-06-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'12', N'Natalia', N'Hernandez', 1, N'Residencial reparto chic', N'87532934', CAST(N'2000-08-23T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'13', N'Jesus', N'Lopez', 2, N'Casa numero 20 residencial puerta el sol', N'34859323', CAST(N'2005-01-24T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'14', N'Marina', N'Flores', 3, N'limonario rivas', N'84572834', CAST(N'1978-02-24T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'16', N'Roman', N'Flores', 6, N'Casa numero 20 residencial buenos aires', N'85475832', CAST(N'2003-02-03T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'17', N'Ximena', N'Artola', 6, N'barrio costa rica casa numero 56', N'84783249', CAST(N'2000-10-23T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'18', N'Alonzo', N'Villanero', 3, N'Funeraria monte los olivos 1c a lago', N'24858492', CAST(N'1988-06-24T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'19', N'Alejandra', N'Martinez', 6, N'Casa numero 2 residencial las colinas', N'47584392', CAST(N'2005-03-23T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'21', N'Alejandra', N'Gonzales', 9, N'Casa numero 32 residencial las colinas', N'83872932', CAST(N'2003-12-23T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'22', N'Marcela', N'Gurdian', 7, N'Casa numero 256 residencial las colinas', N'83872932', CAST(N'2003-02-03T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'23', N'Joseline', N'Perez', 7, N'Carretera vieja leon km 13', N'75839532', CAST(N'2001-06-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'24', N'Alexa', N'Gomez', 8, N'Residencial reparto chic', N'87532934', CAST(N'2002-02-14T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'25', N'Miriam', N'Flores', 9, N'Casa numero 54 residencial las colinas', N'84572834', CAST(N'2019-03-23T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'26', N'Jorge', N'Castillo', 4, N'Km10 carretera masaya', N'82475839', CAST(N'2000-08-23T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'27', N'Martin', N'Martinez', 3, N'Casa numero 21 residencial las colinas', N'87532934', CAST(N'2003-12-23T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'28', N'Fernanda', N'Martinez', 4, N'limonario rivas', N'75839532', CAST(N'1990-11-12T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'29', N'Nathaly', N'Martinez', 4, N'Casa numero 33 residencial las colinas', N'98537859', CAST(N'2005-01-24T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'31', N'Dylan', N'Castillo', 4, N'Casa numero 2 residencial las colinas', N'84783249', CAST(N'2019-03-23T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'32', N'Dilan', N'Reyes', 1, N'Km 12 carretera vieja a leon', N'24858492', CAST(N'2005-01-24T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'33', N'Brissa', N'Munguia', 1, N'Casa numero 25 residencial las colinas', N'47584392', CAST(N'2000-02-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'34', N'Joel', N'Mayorga', 1, N'Km13 carretera masaya', N'34859323', CAST(N'1988-06-24T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'35', N'Erick', N'Lopez', 1, N'Funeraria monte los olivos 1c a lago', N'98537859', CAST(N'2005-01-24T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'36', N'Enrique', N'Pedraja', 1, N'Entrada a los antiguos lab riestra', N'84572834', CAST(N'2003-12-23T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'37', N'Ricardo', N'Gonzales', 1, N'Casa numero 5 recinto san juan', N'75839532', CAST(N'2003-12-23T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'38', N'Mercedes', N'Duarte', 2, N'Km10 carretera masaya', N'85475832', CAST(N'1990-11-12T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'39', N'Leire', N'Martinez', 6, N'Casa numero 29 residencial las colinas', N'98537859', CAST(N'2019-03-23T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'40', N'Diana', N'Rojas', 6, N'Residencial la merced casa numero 10', N'98537859', CAST(N'2001-06-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'41', N'Najeli', N'Sanchez', 5, N'km34 carretera vieja a leon', N'24858492', CAST(N'2005-01-24T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'42', N'Edwing', N'Martinez', 9, N'Residencial la merced casa numero 10', N'84783249', CAST(N'1988-06-24T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'43', N'Mario', N'Castillo', 8, N'Carretera vieja leon km 13', N'47584392', CAST(N'2001-06-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'44', N'Enrique', N'Lopez', 7, N'Reparto san juan casa numero 25', N'87532934', CAST(N'2005-01-24T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'45', N'Rodolfo', N'Samqui', 7, N'Km 12 carretera vieja a leon', N'84572834', CAST(N'2005-01-24T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'46', N'Ruben', N'Matamoros', 6, N'Residencial reparto chic', N'24858492', CAST(N'1990-11-12T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'47', N'Alex', N'Cuadra', 1, N'Casa numero 20 residencial puerta el sol', N'84783249', CAST(N'2005-01-24T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'48', N'Zira', N'Flores', 1, N'Casa numero 32 residencial buenos aires', N'98537859', CAST(N'2003-12-23T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Cliente] ([id], [nombres], [apellidos], [ciudad], [direccion], [numCelular], [fechaNac], [activo]) VALUES (N'49', N'Raquel', N'Flores', 2, N'Casa numero 54 residencial buenos aires', N'75839532', CAST(N'2001-06-01T00:00:00.000' AS DateTime), NULL)
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Ciudad] FOREIGN KEY([ciudad])
REFERENCES [dbo].[Ciudad] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_Ciudad]
GO
USE [master]
GO
ALTER DATABASE [RegistrosBD] SET  READ_WRITE 
GO
