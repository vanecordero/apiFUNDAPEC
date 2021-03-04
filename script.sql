USE [master]
GO
/****** Object:  Database [Estudiantes]    Script Date: 4/3/2021 4:22:10 p. m. ******/
CREATE DATABASE [Estudiantes]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Estudiantes', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Estudiantes.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Estudiantes_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Estudiantes_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Estudiantes] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Estudiantes].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Estudiantes] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Estudiantes] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Estudiantes] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Estudiantes] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Estudiantes] SET ARITHABORT OFF 
GO
ALTER DATABASE [Estudiantes] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Estudiantes] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Estudiantes] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Estudiantes] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Estudiantes] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Estudiantes] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Estudiantes] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Estudiantes] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Estudiantes] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Estudiantes] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Estudiantes] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Estudiantes] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Estudiantes] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Estudiantes] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Estudiantes] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Estudiantes] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Estudiantes] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Estudiantes] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Estudiantes] SET  MULTI_USER 
GO
ALTER DATABASE [Estudiantes] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Estudiantes] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Estudiantes] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Estudiantes] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Estudiantes] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Estudiantes] SET QUERY_STORE = OFF
GO
USE [Estudiantes]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 4/3/2021 4:22:11 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estudiantes]    Script Date: 4/3/2021 4:22:11 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estudiantes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[matricula] [int] NOT NULL,
	[nombre] [nvarchar](max) NULL,
	[indice] [decimal](18, 2) NOT NULL,
	[carrera] [nvarchar](max) NULL,
	[cuatrimestre] [int] NOT NULL,
	[creditos] [int] NOT NULL,
	[importPagar] [decimal](18, 2) NOT NULL,
	[cobertura] [nvarchar](max) NULL,
 CONSTRAINT [PK_estudiantes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210304192329_v1', N'3.1.1')
SET IDENTITY_INSERT [dbo].[estudiantes] ON 

INSERT [dbo].[estudiantes] ([Id], [matricula], [nombre], [indice], [carrera], [cuatrimestre], [creditos], [importPagar], [cobertura]) VALUES (1, 20022475, N'Juan Perez', CAST(3.50 AS Decimal(18, 2)), N'', 8, 15, CAST(45000.00 AS Decimal(18, 2)), N'50%')
INSERT [dbo].[estudiantes] ([Id], [matricula], [nombre], [indice], [carrera], [cuatrimestre], [creditos], [importPagar], [cobertura]) VALUES (2, 20452475, N'Ana Nunez', CAST(4.00 AS Decimal(18, 2)), N'Administracion', 6, 20, CAST(48000.00 AS Decimal(18, 2)), N'100%')
INSERT [dbo].[estudiantes] ([Id], [matricula], [nombre], [indice], [carrera], [cuatrimestre], [creditos], [importPagar], [cobertura]) VALUES (3, 19902475, N'Pedro Infante', CAST(3.00 AS Decimal(18, 2)), N'Contabilidad', 9, 18, CAST(32000.00 AS Decimal(18, 2)), N'100%')
SET IDENTITY_INSERT [dbo].[estudiantes] OFF
USE [master]
GO
ALTER DATABASE [Estudiantes] SET  READ_WRITE 
GO
