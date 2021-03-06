USE [master]
GO
/****** Object:  Database [BulkyBookV2]    Script Date: 2022-01-11 14:06:46 ******/
CREATE DATABASE [BulkyBookV2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BulkyBookV2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\BulkyBookV2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BulkyBookV2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\BulkyBookV2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BulkyBookV2] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BulkyBookV2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BulkyBookV2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BulkyBookV2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BulkyBookV2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BulkyBookV2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BulkyBookV2] SET ARITHABORT OFF 
GO
ALTER DATABASE [BulkyBookV2] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BulkyBookV2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BulkyBookV2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BulkyBookV2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BulkyBookV2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BulkyBookV2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BulkyBookV2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BulkyBookV2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BulkyBookV2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BulkyBookV2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BulkyBookV2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BulkyBookV2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BulkyBookV2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BulkyBookV2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BulkyBookV2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BulkyBookV2] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [BulkyBookV2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BulkyBookV2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BulkyBookV2] SET  MULTI_USER 
GO
ALTER DATABASE [BulkyBookV2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BulkyBookV2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BulkyBookV2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BulkyBookV2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BulkyBookV2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BulkyBookV2] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [BulkyBookV2] SET QUERY_STORE = OFF
GO
USE [BulkyBookV2]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2022-01-11 14:06:46 ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 2022-01-11 14:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2022-01-11 14:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2022-01-11 14:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2022-01-11 14:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2022-01-11 14:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2022-01-11 14:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[City] [nvarchar](max) NULL,
	[CompanyId] [int] NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[PostalCode] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[StreetAddress] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 2022-01-11 14:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 2022-01-11 14:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Companies]    Script Date: 2022-01-11 14:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Companies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[StreetAddress] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[PostalCode] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[IsAuthorizedCompany] [bit] NOT NULL,
 CONSTRAINT [PK_Companies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CoverTypes]    Script Date: 2022-01-11 14:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CoverTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CoverTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 2022-01-11 14:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[Price] [float] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderHeaders]    Script Date: 2022-01-11 14:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderHeaders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationUserId] [nvarchar](450) NULL,
	[OrderDate] [datetime2](7) NOT NULL,
	[ShippingDate] [datetime2](7) NOT NULL,
	[OrderTotal] [float] NOT NULL,
	[TrackingNumber] [nvarchar](max) NULL,
	[Carrier] [nvarchar](max) NULL,
	[OrderStatus] [nvarchar](max) NULL,
	[PaymentStatus] [nvarchar](max) NULL,
	[PaymentDate] [datetime2](7) NOT NULL,
	[PaymentDueDate] [datetime2](7) NOT NULL,
	[TransactionId] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[StreetAddress] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[PostalCode] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_OrderHeaders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 2022-01-11 14:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[ISBN] [nvarchar](max) NOT NULL,
	[Author] [nvarchar](max) NOT NULL,
	[ListPrice] [float] NOT NULL,
	[Price] [float] NOT NULL,
	[Price50] [float] NOT NULL,
	[Price100] [float] NOT NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[CategoryId] [int] NOT NULL,
	[CoverTypeId] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingCarts]    Script Date: 2022-01-11 14:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCarts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationUserId] [nvarchar](450) NULL,
	[ProductId] [int] NOT NULL,
	[Count] [int] NOT NULL,
 CONSTRAINT [PK_ShoppingCarts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210721115049_AddDefaultIdentityMigration', N'5.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210721121339_AddCategoryToDb', N'5.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210721205147_ChangeCategoryKeyName', N'5.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210721215538_AddCoverType', N'5.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210721215841_AddCoverType2', N'5.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210721220308_AddCoverType3', N'5.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210721220335_AddStoredProceduresForCoverType', N'5.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210726134928_AddProductToDb', N'5.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210727100047_AddApplicationUserAndCompanyToDb', N'5.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210823103334_AddShoppingCartAndOrderModelAndRepository', N'5.0.8')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'2e05c4c1-5bf8-4daa-b41e-d29c49963a7b', N'Company Customer', N'COMPANY CUSTOMER', N'be26114d-1693-4746-8570-45511193089c')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'6825c99c-c37c-470a-b015-3a7806e42de2', N'Employee', N'EMPLOYEE', N'6a8f09ad-0f6f-4e04-b316-6dbad9c46f10')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'83b602cf-2b46-45ef-8e76-c55e90f50edd', N'Admin', N'ADMIN', N'3244ff5d-424a-4b35-bc29-bdcf83589582')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'8a79dcac-4bf9-4cf6-8260-1e3ee23b8fe9', N'Individual Customer', N'INDIVIDUAL CUSTOMER', N'a4bdd1cf-556f-4f85-9a7c-8e03cd2821bd')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4c4ba2ad-b457-4df4-b0b2-4ed84aaff8ab', N'2e05c4c1-5bf8-4daa-b41e-d29c49963a7b')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c87d3b5f-1983-4dca-b8f5-7fd09852dc93', N'2e05c4c1-5bf8-4daa-b41e-d29c49963a7b')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f6d112e5-0f24-4919-a738-041084d8ebbc', N'2e05c4c1-5bf8-4daa-b41e-d29c49963a7b')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4c4ba2ad-b457-4df4-b0b2-4ed84aaff8ab', N'6825c99c-c37c-470a-b015-3a7806e42de2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f6d112e5-0f24-4919-a738-041084d8ebbc', N'6825c99c-c37c-470a-b015-3a7806e42de2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f86398ae-0af1-4acb-adea-cb188dbbc8db', N'83b602cf-2b46-45ef-8e76-c55e90f50edd')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ad7e22d2-9cf6-4d23-be76-ecc470220717', N'8a79dcac-4bf9-4cf6-8260-1e3ee23b8fe9')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e5583233-ffc3-414e-8141-277a83544fad', N'8a79dcac-4bf9-4cf6-8260-1e3ee23b8fe9')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [CompanyId], [Discriminator], [Name], [PostalCode], [State], [StreetAddress]) VALUES (N'4c4ba2ad-b457-4df4-b0b2-4ed84aaff8ab', N'kodjouarmand@live.com', N'KODJOUARMAND@LIVE.COM', N'kodjouarmand@live.com', N'KODJOUARMAND@LIVE.COM', 1, N'AQAAAAEAACcQAAAAEAKMit+0WEYtIiDNgQ6EC41naeov1C3/cq4mElRvLVuRMlzANmQR1x/M+DEH0SwAjg==', N'4SRY4YTV6ZNFSN77GDREPO63BDX6HU2S', N'62c50dcd-10f6-4c4b-9aef-d8a1ebcf1174', NULL, 0, 0, NULL, 1, 0, NULL, 1, N'ApplicationUser', N'Company employee', NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [CompanyId], [Discriminator], [Name], [PostalCode], [State], [StreetAddress]) VALUES (N'ad7e22d2-9cf6-4d23-be76-ecc470220717', N'kokaar@hotmail.com', N'KOKAAR@HOTMAIL.COM', N'kokaar@hotmail.com', N'KOKAAR@HOTMAIL.COM', 1, N'AQAAAAEAACcQAAAAEIpX5SMA55MDltn2LpoPqlKmvi3a3YSJF/1dkmjoMSgsjv8dTBh++wXFFUmKEgdIUg==', N'Q4Q4SQUEC44YKVRVJNMB7JCHDMNCXL6D', N'a3ec75e0-36b3-4de3-9e7b-544844957968', NULL, 0, 0, NULL, 1, 0, NULL, NULL, N'ApplicationUser', N'Individual Customer', NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [CompanyId], [Discriminator], [Name], [PostalCode], [State], [StreetAddress]) VALUES (N'c87d3b5f-1983-4dca-b8f5-7fd09852dc93', N'kodjouarmand@outlook.com', N'KODJOUARMAND1@OUTLOOK.COM', N'kodjouarmand@outlook.com', N'KODJOUARMAND1@OUTLOOK.COM', 0, N'AQAAAAEAACcQAAAAEMOwJADhsldOk3rOcqEo/cCpM5XVJS/mdu2DZkChDErhVr08byp1pMwpiSlvf+qJUg==', N'XK6TXWRNTTE6J36AOXBKFMLK7NUXYYDP', N'd99a51d3-c4c1-4ee9-985a-fa5d31f30e14', N'955258745', 0, 0, NULL, 1, 0, NULL, 2, N'ApplicationUser', N'Unauthorized company customer (Outlook)', NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [CompanyId], [Discriminator], [Name], [PostalCode], [State], [StreetAddress]) VALUES (N'e5583233-ffc3-414e-8141-277a83544fad', N'kodjouarmand@outlook.com', N'KODJOUARMAND@OUTLOOK.COM', N'kodjouarmand@outlook.com', N'KODJOUARMAND@OUTLOOK.COM', 0, N'AQAAAAEAACcQAAAAEKhvzHFgbFSzIy6/X7xNe3DA8YuMy/JgptycbJOYQLHeUv9MhaHmF9gr9rje/MHLcA==', N'ZJUMTKP7RWBICLEUV5J47KUW3WCILDC3', N'bcaf22d2-a1ec-46c1-a677-4aca089c0a6e', N'5814460135', 0, 0, NULL, 1, 0, NULL, NULL, N'ApplicationUser', N'Armand K', NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [CompanyId], [Discriminator], [Name], [PostalCode], [State], [StreetAddress]) VALUES (N'f6d112e5-0f24-4919-a738-041084d8ebbc', N'kodjouarmand@gmail.com', N'KODJOUARMAND@GMAIL.COM', N'kodjouarmand@gmail.com', N'KODJOUARMAND@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEDNcfeuQ92lQinZSCi8JcgCEal+KQR9ZAHZG6QnR9l0pxg7t3+D7rxLDQCThJcd0pg==', N'7DPTFHUAUFI3RR6K4QIPO2NP5RTWJ4MU', N'1f6b4f1c-6a6b-4f85-bf88-b06f76a8fc2c', N'699885577', 0, 0, NULL, 1, 1, N'Baham', 1, N'ApplicationUser', N'Authorized company customer (Gmail)', NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [City], [CompanyId], [Discriminator], [Name], [PostalCode], [State], [StreetAddress]) VALUES (N'f86398ae-0af1-4acb-adea-cb188dbbc8db', N'armand.kamdem.dev@gmail.com', N'ARMAND.KAMDEM.DEV@GMAIL.COM', N'armand.kamdem.dev@gmail.com', N'ARMAND.KAMDEM.DEV@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEHQ1GoFGBfVRWVrFP3ZqUj7ncNYrhGyKw4fWFdqckQWZRR2tA/UBYUoNFwiJfz/rnA==', N'W4MDNDNVPH3323TRCKG4LFVH7OZHSYAJ', N'42a04df2-7963-485f-b83a-d72a8a97a45a', N'699663322', 0, 0, NULL, 1, 0, N'Douala', NULL, N'ApplicationUser', N'Administrator', NULL, N'Cameroun', N'Deido')
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name]) VALUES (1, N'Novel')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (2, N'Romance')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (3, N'Action')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Companies] ON 

INSERT [dbo].[Companies] ([Id], [Name], [StreetAddress], [City], [State], [PostalCode], [PhoneNumber], [IsAuthorizedCompany]) VALUES (1, N'Authorized Company', N'Deido', N'Baham', N'Cameroun', N'00237', N'690557493', 1)
INSERT [dbo].[Companies] ([Id], [Name], [StreetAddress], [City], [State], [PostalCode], [PhoneNumber], [IsAuthorizedCompany]) VALUES (2, N'Unauthorized Company', N'Bependa', N'Douala', N'Cameroun', N'00237', N'698856235', 0)
SET IDENTITY_INSERT [dbo].[Companies] OFF
GO
SET IDENTITY_INSERT [dbo].[CoverTypes] ON 

INSERT [dbo].[CoverTypes] ([Id], [Name]) VALUES (1, N'Soft')
INSERT [dbo].[CoverTypes] ([Id], [Name]) VALUES (2, N'Hard')
SET IDENTITY_INSERT [dbo].[CoverTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (1, 1, 1, 5, 40)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (2, 1, 2, 8, 95)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (3, 1, 3, 4, 150)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (4, 2, 4, 4, 45)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderHeaders] ON 

INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [TrackingNumber], [Carrier], [OrderStatus], [PaymentStatus], [PaymentDate], [PaymentDueDate], [TransactionId], [PhoneNumber], [StreetAddress], [City], [State], [PostalCode], [Name]) VALUES (1, N'f6d112e5-0f24-4919-a738-041084d8ebbc', CAST(N'2021-08-24T13:49:21.7639408' AS DateTime2), CAST(N'2021-08-25T10:23:17.3044473' AS DateTime2), 1560, N'5896', N'UPS', N'Shipped', N'Approved', CAST(N'2021-08-25T10:24:29.4775397' AS DateTime2), CAST(N'2021-09-23T13:49:22.0629604' AS DateTime2), N'ch_3JSILOAbCaJ2cDc60Mpm9SJM', N'699885577', N'5825 Av de la Montagne Est', N'Baham', NULL, NULL, N'Authorized company customer (Gmail)')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [TrackingNumber], [Carrier], [OrderStatus], [PaymentStatus], [PaymentDate], [PaymentDueDate], [TransactionId], [PhoneNumber], [StreetAddress], [City], [State], [PostalCode], [Name]) VALUES (2, N'4c4ba2ad-b457-4df4-b0b2-4ed84aaff8ab', CAST(N'2021-08-25T10:19:33.9839050' AS DateTime2), CAST(N'2022-01-11T12:36:51.8193074' AS DateTime2), 180, N'12564', N'TNT', N'Shipped', N'ApprovedForDelayedPayment', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2021-09-24T10:19:34.1675963' AS DateTime2), NULL, N'695560056', NULL, NULL, NULL, NULL, N'Company employee')
SET IDENTITY_INSERT [dbo].[OrderHeaders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [ImageUrl], [CategoryId], [CoverTypeId]) VALUES (1, N'Fortune of time', NULL, N'12356478', N'Armand kamdem', 50, 40, 30, 20, N'\images\products\1e0fcdc5-d45c-400f-b41d-e3d822880f38.png', 1, 1)
INSERT [dbo].[Products] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [ImageUrl], [CategoryId], [CoverTypeId]) VALUES (2, N'Symbol of the jungle', N'<p>A few day alone in the jungle</p>', N'123654789', N'Hulion Phantom', 100, 95, 80, 75, N'\images\products\f018367a-63d6-4f0d-8012-3b3b33e3b914.jpg', 1, 2)
INSERT [dbo].[Products] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [ImageUrl], [CategoryId], [CoverTypeId]) VALUES (3, N'The Spider man', N'<p>A book to talk about the legendary of the Spider man.</p>', N'987456321', N'Mare Cooks', 200, 150, 110, 90, N'\images\products\48ea7fc2-2266-4e31-b409-ac40b06d0509.png', 3, 2)
INSERT [dbo].[Products] ([Id], [Title], [Description], [ISBN], [Author], [ListPrice], [Price], [Price50], [Price100], [ImageUrl], [CategoryId], [CoverTypeId]) VALUES (4, N'Vanish in sunset', N'<p>When Sunset make love</p>', N'852741963', N'Carole Ngakam', 55, 45, 35, 25, N'\images\products\9741e7ca-fd3e-4428-b6ee-106a3f7b4ddc.png', 2, 2)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[ShoppingCarts] ON 

INSERT [dbo].[ShoppingCarts] ([Id], [ApplicationUserId], [ProductId], [Count]) VALUES (5, N'4c4ba2ad-b457-4df4-b0b2-4ed84aaff8ab', 1, 4)
INSERT [dbo].[ShoppingCarts] ([Id], [ApplicationUserId], [ProductId], [Count]) VALUES (7, N'4c4ba2ad-b457-4df4-b0b2-4ed84aaff8ab', 3, 2)
INSERT [dbo].[ShoppingCarts] ([Id], [ApplicationUserId], [ProductId], [Count]) VALUES (8, N'f86398ae-0af1-4acb-adea-cb188dbbc8db', 1, 1)
INSERT [dbo].[ShoppingCarts] ([Id], [ApplicationUserId], [ProductId], [Count]) VALUES (9, N'f86398ae-0af1-4acb-adea-cb188dbbc8db', 2, 1)
INSERT [dbo].[ShoppingCarts] ([Id], [ApplicationUserId], [ProductId], [Count]) VALUES (10, N'f86398ae-0af1-4acb-adea-cb188dbbc8db', 3, 1)
SET IDENTITY_INSERT [dbo].[ShoppingCarts] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 2022-01-11 14:06:46 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 2022-01-11 14:06:46 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 2022-01-11 14:06:46 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 2022-01-11 14:06:46 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 2022-01-11 14:06:46 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 2022-01-11 14:06:46 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_CompanyId]    Script Date: 2022-01-11 14:06:46 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_CompanyId] ON [dbo].[AspNetUsers]
(
	[CompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 2022-01-11 14:06:46 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetails_OrderId]    Script Date: 2022-01-11 14:06:46 ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_OrderId] ON [dbo].[OrderDetails]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetails_ProductId]    Script Date: 2022-01-11 14:06:46 ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_ProductId] ON [dbo].[OrderDetails]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_OrderHeaders_ApplicationUserId]    Script Date: 2022-01-11 14:06:46 ******/
CREATE NONCLUSTERED INDEX [IX_OrderHeaders_ApplicationUserId] ON [dbo].[OrderHeaders]
(
	[ApplicationUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CategoryId]    Script Date: 2022-01-11 14:06:46 ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoryId] ON [dbo].[Products]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CoverTypeId]    Script Date: 2022-01-11 14:06:46 ******/
CREATE NONCLUSTERED INDEX [IX_Products_CoverTypeId] ON [dbo].[Products]
(
	[CoverTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ShoppingCarts_ApplicationUserId]    Script Date: 2022-01-11 14:06:46 ******/
CREATE NONCLUSTERED INDEX [IX_ShoppingCarts_ApplicationUserId] ON [dbo].[ShoppingCarts]
(
	[ApplicationUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ShoppingCarts_ProductId]    Script Date: 2022-01-11 14:06:46 ******/
CREATE NONCLUSTERED INDEX [IX_ShoppingCarts_ProductId] ON [dbo].[ShoppingCarts]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (N'') FOR [Discriminator]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsers_Companies_CompanyId] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Companies] ([Id])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_AspNetUsers_Companies_CompanyId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_OrderHeaders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[OrderHeaders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_OrderHeaders_OrderId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products_ProductId]
GO
ALTER TABLE [dbo].[OrderHeaders]  WITH CHECK ADD  CONSTRAINT [FK_OrderHeaders_AspNetUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[OrderHeaders] CHECK CONSTRAINT [FK_OrderHeaders_AspNetUsers_ApplicationUserId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_CoverTypes_CoverTypeId] FOREIGN KEY([CoverTypeId])
REFERENCES [dbo].[CoverTypes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_CoverTypes_CoverTypeId]
GO
ALTER TABLE [dbo].[ShoppingCarts]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCarts_AspNetUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[ShoppingCarts] CHECK CONSTRAINT [FK_ShoppingCarts_AspNetUsers_ApplicationUserId]
GO
ALTER TABLE [dbo].[ShoppingCarts]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCarts_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ShoppingCarts] CHECK CONSTRAINT [FK_ShoppingCarts_Products_ProductId]
GO
/****** Object:  StoredProcedure [dbo].[usp_CreateCoverType]    Script Date: 2022-01-11 14:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_CreateCoverType]
                                   @Name varchar(100)
                                   AS 
                                   BEGIN 
                                    INSERT INTO dbo.CoverTypes(Name)
                                    VALUES (@Name)
                                   END
GO
/****** Object:  StoredProcedure [dbo].[usp_DeleteCoverType]    Script Date: 2022-01-11 14:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_DeleteCoverType]
	                                @Id int
                                    AS 
                                    BEGIN 
                                     DELETE FROM dbo.CoverTypes
                                     WHERE  Id = @Id
                                    END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetCoverType]    Script Date: 2022-01-11 14:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_GetCoverType] 
                                    @Id int 
                                    AS 
                                    BEGIN 
                                     SELECT * FROM   dbo.CoverTypes  WHERE  (Id = @Id) 
                                    END 
GO
/****** Object:  StoredProcedure [dbo].[usp_GetCoverTypes]    Script Date: 2022-01-11 14:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_GetCoverTypes] 
                                    AS 
                                    BEGIN 
                                     SELECT * FROM   dbo.CoverTypes 
                                    END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetOrders]    Script Date: 2022-01-11 14:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[usp_GetOrders] 
AS 
BEGIN 
	SELECT OH.[Id],
      OH.[ApplicationUserId],
	  U.[Email],
	  C.[Name],
      OH.[OrderDate],
      OH.[ShippingDate],
      OH.[OrderTotal],
      OH.[TrackingNumber],
      OH.[Carrier],
      OH.[OrderStatus],
      OH.[PaymentStatus],
      OH.[PaymentDate],
      OH.[PaymentDueDate],
      OH.[TransactionId],
      OH.[PhoneNumber],
      OH.[StreetAddress],
      OH.[City],
      OH.[State],
      OH.[PostalCode],
      OH.[Name]
  FROM [BulkyBookV2].[dbo].[OrderHeaders] AS OH
  INNER JOIN [AspNetUsers] AS U ON U.Id = OH.ApplicationUserId
  LEFT OUTER JOIN [Companies] AS C ON C.Id = U.CompanyId
END 
GO
/****** Object:  StoredProcedure [dbo].[usp_GetUsers]    Script Date: 2022-01-11 14:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[usp_GetUsers] 
AS 
BEGIN 
	SELECT U.[Id],
      --U.[UserName],
      U.[Email],
	  U.[Name],
	  R.[Name] AS 'Role Name',
	  C.[Name] AS 'Company Name',	  
      U.[EmailConfirmed],
      U.[PasswordHash],
      U.[PhoneNumber],
      U.[PhoneNumberConfirmed],
      U.[TwoFactorEnabled],
      U.[LockoutEnd],
      U.[LockoutEnabled],
      U.[AccessFailedCount],
      U.[City],
      U.[CompanyId],
      U.[Discriminator],      
      U.[PostalCode],
      U.[State],
      U.[StreetAddress]
  FROM [AspNetUsers] AS U
  INNER JOIN [AspNetUserRoles] AS UR ON UR.UserId = U.Id
  INNER JOIN [AspNetRoles] AS R ON R.Id = UR.RoleId
  LEFT OUTER JOIN [Companies] AS C ON C.Id = U.CompanyId
  ORDER BY U.[Email]
END 
GO
/****** Object:  StoredProcedure [dbo].[usp_UpdateCoverType]    Script Date: 2022-01-11 14:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_UpdateCoverType]
	                                @Id int,
	                                @Name varchar(100)
                                    AS 
                                    BEGIN 
                                     UPDATE dbo.CoverTypes
                                     SET  Name = @Name
                                     WHERE  Id = @Id
                                    END
GO
USE [master]
GO
ALTER DATABASE [BulkyBookV2] SET  READ_WRITE 
GO
