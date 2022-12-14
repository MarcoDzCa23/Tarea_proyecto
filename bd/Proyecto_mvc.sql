USE [master]
GO
/****** Object:  Database [Proyecto_mvc]    Script Date: 25/11/2022 09:39:09 a. m. ******/
CREATE DATABASE [Proyecto_mvc]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Proyecto_mvc', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Proyecto_mvc.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Proyecto_mvc_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Proyecto_mvc_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Proyecto_mvc] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Proyecto_mvc].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Proyecto_mvc] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Proyecto_mvc] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Proyecto_mvc] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Proyecto_mvc] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Proyecto_mvc] SET ARITHABORT OFF 
GO
ALTER DATABASE [Proyecto_mvc] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Proyecto_mvc] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Proyecto_mvc] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Proyecto_mvc] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Proyecto_mvc] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Proyecto_mvc] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Proyecto_mvc] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Proyecto_mvc] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Proyecto_mvc] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Proyecto_mvc] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Proyecto_mvc] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Proyecto_mvc] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Proyecto_mvc] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Proyecto_mvc] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Proyecto_mvc] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Proyecto_mvc] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Proyecto_mvc] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Proyecto_mvc] SET RECOVERY FULL 
GO
ALTER DATABASE [Proyecto_mvc] SET  MULTI_USER 
GO
ALTER DATABASE [Proyecto_mvc] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Proyecto_mvc] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Proyecto_mvc] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Proyecto_mvc] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Proyecto_mvc] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Proyecto_mvc] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Proyecto_mvc', N'ON'
GO
ALTER DATABASE [Proyecto_mvc] SET QUERY_STORE = OFF
GO
USE [Proyecto_mvc]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 25/11/2022 09:39:09 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ArticuloDb]    Script Date: 25/11/2022 09:39:09 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArticuloDb](
	[PkArticulo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[UrlImg] [nvarchar](max) NULL,
 CONSTRAINT [PK_ArticuloDb] PRIMARY KEY CLUSTERED 
(
	[PkArticulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RolDb]    Script Date: 25/11/2022 09:39:09 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolDb](
	[PkRol] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NULL,
 CONSTRAINT [PK_RolDb] PRIMARY KEY CLUSTERED 
(
	[PkRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsuarioDb]    Script Date: 25/11/2022 09:39:09 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuarioDb](
	[PkUser] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NULL,
	[User] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[FkRol] [int] NULL,
 CONSTRAINT [PK_UsuarioDb] PRIMARY KEY CLUSTERED 
(
	[PkUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221125125158_Proyecto_mvc', N'5.0.17')
GO
SET IDENTITY_INSERT [dbo].[ArticuloDb] ON 

INSERT [dbo].[ArticuloDb] ([PkArticulo], [Nombre], [Descripcion], [UrlImg]) VALUES (4, N'ee', N'azules 200 gramos facheritos', N'https://res.cloudinary.com/walmart-labs/image/upload/d_default.jpg/w_960,dpr_auto,f_auto,q_auto:best/gr/images/product-images/img_large/00750101116772L.jpg')
INSERT [dbo].[ArticuloDb] ([PkArticulo], [Nombre], [Descripcion], [UrlImg]) VALUES (5, N'ee', N'buen sabork', N'https://res.cloudinary.com/walmart-labs/image/upload/d_default.jpg/w_960,dpr_auto,f_auto,q_auto:best/gr/images/product-images/img_large/00750047800163L.jpg')
SET IDENTITY_INSERT [dbo].[ArticuloDb] OFF
GO
SET IDENTITY_INSERT [dbo].[RolDb] ON 

INSERT [dbo].[RolDb] ([PkRol], [Nombre]) VALUES (1, N'admin')
SET IDENTITY_INSERT [dbo].[RolDb] OFF
GO
SET IDENTITY_INSERT [dbo].[UsuarioDb] ON 

INSERT [dbo].[UsuarioDb] ([PkUser], [Nombre], [User], [Password], [FkRol]) VALUES (1, N'Yosh', N'Yosh', N'111', 1)
SET IDENTITY_INSERT [dbo].[UsuarioDb] OFF
GO
/****** Object:  Index [IX_UsuarioDb_FkRol]    Script Date: 25/11/2022 09:39:09 a. m. ******/
CREATE NONCLUSTERED INDEX [IX_UsuarioDb_FkRol] ON [dbo].[UsuarioDb]
(
	[FkRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UsuarioDb]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioDb_RolDb_FkRol] FOREIGN KEY([FkRol])
REFERENCES [dbo].[RolDb] ([PkRol])
GO
ALTER TABLE [dbo].[UsuarioDb] CHECK CONSTRAINT [FK_UsuarioDb_RolDb_FkRol]
GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteArticulo]    Script Date: 25/11/2022 09:39:09 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_DeleteArticulo]
@PkArticulo int
AS
BEGIN
delete from ArticuloDb
where PkArticulo=@PkArticulo
end
GO
/****** Object:  StoredProcedure [dbo].[SP_EditArticulo]    Script Date: 25/11/2022 09:39:09 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_EditArticulo]
@PkArticulo int,
 @Nombre varchar(max),
 @Descripcion varchar(max),
 @UrlImg varchar(max)
AS
BEGIN
update ArticuloDb
set
Nombre=@Nombre,
Descripcion=@Descripcion,
UrlImg=@UrlImg
where PkArticulo=@PkArticulo
select * from ArticuloDb
END
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertArticulo]    Script Date: 25/11/2022 09:39:09 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_InsertArticulo]
 @Nombre varchar(max),
 @Descripcion varchar(max),
 @UrlImg varchar(max)
AS
BEGIN
declare @idarticulo int
	insert into ArticuloDb values(@Nombre,@Descripcion,@UrlImg)
	select @idarticulo=PkArticulo from ArticuloDb
	print @idarticulo	

	select * from ArticuloDb
	
END

GO
USE [master]
GO
ALTER DATABASE [Proyecto_mvc] SET  READ_WRITE 
GO
