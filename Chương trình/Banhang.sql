create database QLBanDienThoai
GO
USE [QLBanDienThoai]
GO
/****** Object:  Table [dbo].[Categorys]    Script Date: 6/5/2021 7:47:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorys](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Slug] [nvarchar](max) NULL,
	[ParentId] [int] NULL,
	[Orders] [int] NULL,
	[Metakey] [nvarchar](max) NULL,
	[Metadesc] [nvarchar](max) NULL,
	[Created_at] [datetime] NULL,
	[Created_by] [int] NULL,
	[Updated_at] [datetime] NULL,
	[Updated_by] [int] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_dbo.Categorys] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 6/5/2021 7:47:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Phone] [int] NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Detail] [nvarchar](max) NOT NULL,
	[Flag] [int] NOT NULL,
	[Reply] [nvarchar](max) NULL,
	[Created_at] [datetime] NULL,
	[Updated_at] [datetime] NULL,
	[Updated_by] [int] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_dbo.Contacts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Links]    Script Date: 6/5/2021 7:47:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Links](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Slug] [nvarchar](max) NOT NULL,
	[Type] [nvarchar](max) NOT NULL,
	[TableId] [int] NULL,
 CONSTRAINT [PK_dbo.Links] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menus]    Script Date: 6/5/2021 7:47:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Link] [nvarchar](max) NULL,
	[Type] [nvarchar](max) NULL,
	[TableId] [int] NULL,
	[ParentId] [int] NULL,
	[Position] [nvarchar](max) NULL,
	[Orders] [int] NOT NULL,
	[Created_at] [datetime] NULL,
	[Created_by] [int] NULL,
	[Updated_at] [datetime] NULL,
	[Updated_by] [int] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Menus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 6/5/2021 7:47:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Amount] [float] NOT NULL,
 CONSTRAINT [PK_dbo.OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 6/5/2021 7:47:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](max) NULL,
	[CustemerId] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ExportDate] [datetime] NULL,
	[DeliveryAddress] [nvarchar](max) NULL,
	[DeliveryName] [nvarchar](max) NULL,
	[DeliveryPhone] [nvarchar](max) NULL,
	[DeliveryEmail] [nvarchar](max) NULL,
	[Updated_by] [int] NULL,
	[Updated_at] [datetime] NULL,
	[Status] [int] NULL,
	[Trash] [int] NULL,
	[DeliveryPaymentMethod] [nvarchar](max) NULL,
	[StatusPayment] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Posts]    Script Date: 6/5/2021 7:47:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Topid] [int] NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Slug] [nvarchar](max) NULL,
	[Detail] [nvarchar](max) NULL,
	[Img] [nvarchar](max) NULL,
	[Type] [nvarchar](max) NULL,
	[MetaKey] [nvarchar](max) NULL,
	[MetaDesc] [nvarchar](max) NULL,
	[Created_At] [datetime] NOT NULL,
	[Created_By] [int] NULL,
	[Updated_At] [datetime] NOT NULL,
	[Updated_By] [int] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Posts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductRate]    Script Date: 6/5/2021 7:47:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductRate](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[Rate] [float] NOT NULL,
	[Comment] [nvarchar](max) NOT NULL,
	[UName] [nvarchar](50) NULL,
	[CreateAt] [datetime] NULL,
 CONSTRAINT [PK_ProductRate] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 6/5/2021 7:47:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Slug] [nvarchar](max) NULL,
	[CateID] [int] NOT NULL,
	[Image] [nvarchar](max) NULL,
	[NewPromotion] [nvarchar](max) NULL,
	[Installment] [int] NOT NULL,
	[Discount] [int] NULL,
	[Detail] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Specification] [nvarchar](max) NOT NULL,
	[Price] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
	[ProPrice] [float] NOT NULL,
	[MetaKey] [nvarchar](max) NULL,
	[MetaDesc] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[Created_at] [datetime] NOT NULL,
	[Created_by] [int] NOT NULL,
	[Updated_at] [datetime] NOT NULL,
	[Updated_by] [int] NOT NULL,
	[ProRate] [float] NULL,
 CONSTRAINT [PK_dbo.Products] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sliders]    Script Date: 6/5/2021 7:47:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sliders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Link] [nvarchar](max) NULL,
	[Position] [nvarchar](max) NULL,
	[Img] [nvarchar](max) NULL,
	[Orders] [int] NULL,
	[Created_at] [datetime] NULL,
	[Created_by] [int] NULL,
	[Updated_at] [datetime] NULL,
	[Updated_by] [int] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_dbo.Sliders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Topics]    Script Date: 6/5/2021 7:47:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Topics](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Slug] [nvarchar](max) NULL,
	[ParentId] [int] NULL,
	[Orders] [int] NULL,
	[Metakey] [nvarchar](max) NULL,
	[Metadesc] [nvarchar](max) NULL,
	[Created_at] [datetime] NULL,
	[Created_by] [int] NULL,
	[Updated_at] [datetime] NULL,
	[Updated_by] [int] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_dbo.Topics] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 6/5/2021 7:47:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Gender] [int] NOT NULL,
	[Phone] [int] NOT NULL,
	[Address] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[Access] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Created_at] [datetime] NOT NULL,
	[Created_by] [int] NOT NULL,
	[Updated_at] [datetime] NOT NULL,
	[Updated_by] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categorys] ON 

INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (1, N'Iphone', N'iphone', 8, NULL, N'Iphone', N'Iphone', CAST(N'2021-06-04T21:05:23.783' AS DateTime), 20, CAST(N'2021-06-04T21:05:23.783' AS DateTime), 20, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (2, N'SamSung', N'samsung', 8, NULL, N'SamSung', N'SamSung', CAST(N'2021-06-04T21:05:43.783' AS DateTime), 20, CAST(N'2021-06-04T21:05:43.783' AS DateTime), 20, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (3, N'Oppo', N'oppo', 8, NULL, N'SamSung', N'SamSung', CAST(N'2021-06-04T21:05:55.820' AS DateTime), 20, CAST(N'2021-06-04T21:05:55.820' AS DateTime), 20, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (5, N'Cao Cấp - Sang Trọng', N'cao-cap---sang-trong', 0, NULL, N'Cao Cấp - Sang Trọng', N'Cao Cấp - Sang Trọng', CAST(N'2021-03-02T13:37:18.473' AS DateTime), 20, CAST(N'2021-03-02T13:37:18.473' AS DateTime), 20, 0)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (8, N'ĐIỆN THOẠI', N'dien-thoai', 0, NULL, N'ĐIỆN THOẠI', N'ĐIỆN THOẠI', CAST(N'2021-06-04T21:04:31.197' AS DateTime), 20, CAST(N'2021-06-04T21:04:31.197' AS DateTime), 20, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (9, N'iPhone 12 mini', N'iphone-12-mini', 1, NULL, N'iPhone 12 mini I Chính hãng
', N'iPhone 12 mini I Chính hãng', CAST(N'2021-06-04T21:19:23.373' AS DateTime), 20, CAST(N'2021-06-04T21:19:23.373' AS DateTime), 20, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (10, N'iPhone 11', N'iphone-11', 1, NULL, N'iPhone 11 I Chính hãng
', N'iPhone 11 I Chính hãng', CAST(N'2021-06-04T21:19:29.033' AS DateTime), 20, CAST(N'2021-06-04T21:19:29.033' AS DateTime), 20, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (11, N'SamSung Galaxy A51', N'samsung-galaxy-a51', 2, NULL, N'SamSung Galaxy A51', N'SamSung Galaxy A51', CAST(N'2021-06-04T21:24:29.690' AS DateTime), 20, CAST(N'2021-06-04T21:24:29.690' AS DateTime), 20, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (12, N'SamSung Galaxy A72', N'samsung-galaxy-a72', 2, NULL, N'SamSung Galaxy A72
', N'SamSung Galaxy A72', CAST(N'2021-06-04T21:25:52.193' AS DateTime), 20, CAST(N'2021-06-04T21:25:52.193' AS DateTime), 20, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (13, N'SamSung Galaxy A02 64GB', N'samsung-galaxy-a02-64gb', 2, NULL, N'SamSung Galaxy A02 64GB', N'SamSung Galaxy A02 64GB

', CAST(N'2021-06-04T21:25:01.890' AS DateTime), 20, CAST(N'2021-06-04T21:25:01.890' AS DateTime), 20, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (14, N'Samsung Galaxy Note 20 Ultra', N'samsung-galaxy-note-20-ultra', 2, NULL, N'Samsung Galaxy Note 20 Ultra', N'Samsung Galaxy Note 20 Ultra', CAST(N'2021-06-04T21:26:18.520' AS DateTime), 20, CAST(N'2021-06-04T21:26:18.520' AS DateTime), 20, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (15, N'DÂY DA BROWN', N'day-da-brown', 3, NULL, N'DÂY DA BROWN', N'DÂY DA BROWN', CAST(N'2021-03-31T16:00:29.110' AS DateTime), 21, CAST(N'2021-05-07T20:01:25.520' AS DateTime), 20, 2)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (16, N'DÂY DA COGNAC', N'day-da-cognac', 3, NULL, N'DÂY DA COGNAC
', N'DÂY DA COGNAC
', CAST(N'2021-03-31T16:00:51.873' AS DateTime), 21, CAST(N'2021-05-07T20:01:26.037' AS DateTime), 20, 2)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (17, N'DÂY KIM LOẠI', N'day-kim-loai', 3, NULL, N'DÂY KIM LOẠI
', N'DÂY KIM LOẠI
', CAST(N'2021-03-31T16:01:15.070' AS DateTime), 21, CAST(N'2021-05-07T20:01:26.587' AS DateTime), 20, 2)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (19, N'Phụ kiện', N'phu-kien', 0, NULL, N'Phụ kiện', N'Phụ kiện', CAST(N'2021-03-31T21:50:02.627' AS DateTime), 21, CAST(N'2021-03-31T21:50:02.627' AS DateTime), 21, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (20, N'Ốp lưng', N'op-lung', 19, NULL, N'Ốp lưng', N'PhỐp lưng', CAST(N'2021-06-04T21:29:05.687' AS DateTime), 20, CAST(N'2021-06-04T21:29:05.687' AS DateTime), 20, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (21, N'Cáp Sạc', N'cap-sac', 19, NULL, N'Cáp Sạc', N'Cáp Sạc', CAST(N'2021-06-04T21:29:26.657' AS DateTime), 20, CAST(N'2021-06-04T21:29:26.657' AS DateTime), 20, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (22, N'Tai nghe', N'tai-nghe', 19, NULL, N'Tai nghe', N'Tai nghe', CAST(N'2021-06-04T21:29:48.017' AS DateTime), 20, CAST(N'2021-06-04T21:29:48.017' AS DateTime), 20, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (23, N'Iphone 8 Plus 64 GB', N'iphone-8-plus-64-gb', 1, NULL, N'Iphone 8 Plus 64 GB', N'Iphone 8 Plus 64 GB', CAST(N'2021-06-04T21:21:34.483' AS DateTime), 20, CAST(N'2021-06-04T21:21:34.483' AS DateTime), 20, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (24, N'Iphone 7 Plus 64 GB', N'iphone-7-plus-64-gb', 1, NULL, N'Iphone 7 Plus 64 GB', N'Iphone 7 Plus 64 GB', CAST(N'2021-06-04T21:21:55.207' AS DateTime), 20, CAST(N'2021-06-04T21:21:55.207' AS DateTime), 20, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (25, N'XIAOMI', N'xiaomi', 8, NULL, N'XIAOMI', N'XIAOMI', CAST(N'2021-06-04T21:27:07.007' AS DateTime), 20, CAST(N'2021-06-04T21:27:07.007' AS DateTime), 20, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (26, N'REALME', N'realme', 8, NULL, N'REALME', N'REALME', CAST(N'2021-06-04T21:27:23.170' AS DateTime), 20, CAST(N'2021-06-04T21:27:23.170' AS DateTime), 20, 1)
SET IDENTITY_INSERT [dbo].[Categorys] OFF
GO
SET IDENTITY_INSERT [dbo].[Contacts] ON 

INSERT [dbo].[Contacts] ([Id], [FullName], [Email], [Phone], [Title], [Detail], [Flag], [Reply], [Created_at], [Updated_at], [Updated_by], [Status]) VALUES (1, N'huyền', N'colennhe102@gmail.com', 983487921, N'San pham ni loi', N'san pham bi loi yeu cau doi hang', 1, N'chungs tooi sex lienen heej toi ban', CAST(N'2021-05-08T21:26:53.000' AS DateTime), CAST(N'2021-05-28T06:51:41.033' AS DateTime), 20, 1)
INSERT [dbo].[Contacts] ([Id], [FullName], [Email], [Phone], [Title], [Detail], [Flag], [Reply], [Created_at], [Updated_at], [Updated_by], [Status]) VALUES (2, N'Trần vy Vy', N'vyvy@gmail.com', 32849533, N'Sản phẩm bị lỗi', N'Tôi nhận được hàng bị lỗi mong shop giải quyết vấn đè', 0, NULL, CAST(N'2021-05-28T06:24:04.637' AS DateTime), CAST(N'2021-05-28T06:24:04.637' AS DateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[Contacts] OFF
GO
SET IDENTITY_INSERT [dbo].[Links] ON 

INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (1, N'Iphone', N'iphone', N'category', 1)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (2, N'Tin công ty', N'tin-cong-ty', N'topic', 1)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (3, N'SamSung', N'samsung', N'category', 2)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (4, N'Oppo', N'oppo', N'category', 3)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (5, N'Phụ Kiên', N'phu-kien', N'category', 4)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (6, N'Tư vấn mua laptop', N'tu-van-mua-laptop', N'topic', 2)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (7, N'Giới thiệu', N'gioi-thieu', N'page', 5)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (8, N'Hướng dẫn mua hàng', N'huong-dan-mua-hang', N'page', 6)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (9, N'Cao Cấp - Sang Trọng', N'cao-cap---sang-trong', N'category', 5)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (10, N'Cao Cấp - Sang Trọng done', N'cao-cap---sang-trong-done', N'category', 6)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (11, N'Chính sách đổi, trả hàng', N'chinh-sach-doi--tra-hang', N'page', 8)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (12, N'Laptop Đồ Họa', N'laptop-do-hoa', N'category', 7)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (13, N'ĐIỆN THOẠI', N'dien-thoai', N'category', 8)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (14, N'iPhone 12 mini', N'iphone-12-mini', N'category', 9)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (15, N'iPhone 11', N'iphone-11', N'category', 10)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (16, N'SamSung Galaxy A51', N'samsung-galaxy-a51', N'category', 11)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (17, N'SamSung Galaxy A72', N'samsung-galaxy-a72', N'category', 12)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (18, N'SamSung Galaxy A02 64GB', N'samsung-galaxy-a02-64gb', N'category', 13)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (19, N'Samsung Galaxy Note 20 Ultra', N'samsung-galaxy-note-20-ultra', N'category', 14)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (20, N'DÂY DA BROWN', N'day-da-brown', N'category', 15)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (21, N'DÂY DA COGNAC', N'day-da-cognac', N'category', 16)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (22, N'DÂY KIM LOẠI', N'day-kim-loai', N'category', 17)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (23, N'Đồng hồ', N'dong-ho', N'category', 18)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (24, N'Phụ kiện', N'phu-kien', N'category', 19)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (25, N'Ốp lưng', N'op-lung', N'category', 20)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (26, N'Cáp Sạc', N'cap-sac', N'category', 21)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (27, N'Thông tin web', N'thong-tin-web', N'topic', 5)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (28, N'gioi thieu', N'gioi-thieu', N'page', 9)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (30, N'Dưới 1 triệu', N'Dưới 1 triệu', N'category', NULL)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (31, N'Tai nghe', N'tai-nghe', N'category', 22)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (32, N'Tin tức', N'tin-tuc', N'topic', 6)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (33, N'Iphone 8 Plus 64 GB', N'iphone-8-plus-64-gb', N'category', 23)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (34, N'Iphone 7 Plus 64 GB', N'iphone-7-plus-64-gb', N'category', 24)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (35, N'XIAOMI', N'xiaomi', N'category', 25)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (36, N'REALME', N'realme', N'category', 26)
SET IDENTITY_INSERT [dbo].[Links] OFF
GO
SET IDENTITY_INSERT [dbo].[Menus] ON 

INSERT [dbo].[Menus] ([Id], [Name], [Link], [Type], [TableId], [ParentId], [Position], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (1, N'Liên hệ', N'lien-he', N'page', NULL, 0, N'mainmenu', 1, CAST(N'2021-02-14T09:56:13.000' AS DateTime), NULL, CAST(N'2021-02-18T17:38:08.937' AS DateTime), 1, 1)
INSERT [dbo].[Menus] ([Id], [Name], [Link], [Type], [TableId], [ParentId], [Position], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (2, N'Tin tức', N'tin-tuc', N'custom', NULL, 0, N'mainmenu', 1, CAST(N'2021-02-15T09:23:14.240' AS DateTime), NULL, CAST(N'2021-02-15T09:23:16.033' AS DateTime), 1, 1)
INSERT [dbo].[Menus] ([Id], [Name], [Link], [Type], [TableId], [ParentId], [Position], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (3, N'Giới thiệu', N'gioi-thieu', N'page', 5, 0, N'mainmenu', 1, CAST(N'2021-02-15T09:32:52.000' AS DateTime), NULL, CAST(N'2021-02-16T20:26:33.993' AS DateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[Menus] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity], [Amount]) VALUES (1, 1, 64, 2700000, 2, 5400000)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity], [Amount]) VALUES (2, 1, 66, 5600000, 1, 5600000)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity], [Amount]) VALUES (3, 1, 76, 3040000, 1, 3040000)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity], [Amount]) VALUES (4, 2, 64, 2700000, 1, 2700000)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity], [Amount]) VALUES (5, 3, 77, 5930000, 1, 5930000)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity], [Amount]) VALUES (6, 4, 46, 4250000, 1, 4250000)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity], [Amount]) VALUES (7, 5, 96, 1000000, 1, 1000000)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity], [Amount]) VALUES (8, 5, 97, 850000, 1, 850000)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity], [Amount]) VALUES (9, 5, 50, 9900000, 4, 39600000)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity], [Amount]) VALUES (10, 5, 83, 3350000, 3, 10050000)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity], [Amount]) VALUES (11, 5, 81, 3350000, 5, 16750000)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity], [Amount]) VALUES (12, 6, 67, 7025000, 1, 7025000)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity], [Amount]) VALUES (13, 6, 68, 6850000, 8, 54800000)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity], [Amount]) VALUES (14, 7, 99, 3450000, 1, 3450000)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity], [Amount]) VALUES (15, 8, 102, 3490000, 5, 17450000)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity], [Amount]) VALUES (16, 9, 78, 3450000, 2, 6900000)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity], [Amount]) VALUES (17, 10, 102, 3490000, 3, 10470000)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity], [Amount]) VALUES (18, 11, 47, 8690000, 4, 34760000)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity], [Amount]) VALUES (19, 12, 53, 9900000, 2, 19800000)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity], [Amount]) VALUES (20, 13, 51, 9990000, 1, 9990000)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (1, N'20210507090526', 21, CAST(N'2021-05-07T21:26:26.193' AS DateTime), CAST(N'2021-05-07T21:26:51.037' AS DateTime), N'Văn trì, minh khai,bắc từ liêm ,hà nội', N'Phương Nam', N'0385699755', N'phuongnam@gmail.com', 20, CAST(N'2021-05-07T21:26:51.037' AS DateTime), 3, NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (2, N'20210507090542', 22, CAST(N'2021-05-07T21:27:42.827' AS DateTime), CAST(N'2021-05-07T21:28:18.800' AS DateTime), N'số 10 ngõ 25 Phú Minh Bắc Từ Liêm Hà Nội', N'Minh Hương', N'092470975', N'minhhuong@gmail.com', 20, CAST(N'2021-05-07T21:28:18.800' AS DateTime), 2, NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (3, N'20210508090533', 23, CAST(N'2021-05-08T21:16:33.390' AS DateTime), CAST(N'2021-05-08T21:23:32.510' AS DateTime), N'Văn trì, minh khai,bắc từ liêm ,hà nội', N'Ngọc Huyền', N'0983487921', N'ngochuyen@gmail.com', 20, CAST(N'2021-05-08T21:23:32.510' AS DateTime), 3, NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (4, N'20210518100510', 22, CAST(N'2021-05-18T10:31:10.150' AS DateTime), CAST(N'2021-05-27T16:10:37.207' AS DateTime), N'số 10 ngõ 25 Phú Minh Bắc Từ Liêm Hà Nội', N'Minh Hương', N'092470975', N'minhhuong@gmail.com', 20, CAST(N'2021-05-27T16:10:37.207' AS DateTime), 3, NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (5, N'20210518100533', 22, CAST(N'2021-05-18T10:34:33.207' AS DateTime), CAST(N'2021-05-27T16:10:42.167' AS DateTime), N'số 10 ngõ 25 Phú Minh Bắc Từ Liêm Hà Nội', N'Minh Hương', N'092470975', N'minhhuong@gmail.com', 20, CAST(N'2021-05-27T16:10:42.167' AS DateTime), 3, NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (6, N'20210518100510', 22, CAST(N'2021-05-18T10:36:10.633' AS DateTime), CAST(N'2021-05-19T08:44:41.403' AS DateTime), N'số 10 ngõ 25 Phú Minh Bắc Từ Liêm Hà Nội', N'Minh Hương', N'092470975', N'minhhuong@gmail.com', 20, CAST(N'2021-05-19T08:44:41.403' AS DateTime), 3, NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (7, N'20210519100558', 22, CAST(N'2021-05-19T22:02:58.253' AS DateTime), CAST(N'2021-05-28T06:50:46.110' AS DateTime), N'số 10 ngõ 25 Phú Minh Bắc Từ Liêm Hà Nội', N'Minh Hương', N'092470975', N'minhhuong@gmail.com', 20, CAST(N'2021-05-28T06:50:46.110' AS DateTime), 3, NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (8, N'20210527040533', 26, CAST(N'2021-05-27T16:09:33.543' AS DateTime), CAST(N'2021-05-27T16:11:19.503' AS DateTime), N'Số 10 Hoàng Mai Hà Nội', N'Vy Vy', N'028445551', N'vyvy@gmail.com', 20, CAST(N'2021-05-27T16:11:19.503' AS DateTime), 3, NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (9, N'20210528060550', 26, CAST(N'2021-05-28T06:25:50.080' AS DateTime), NULL, N'Số 10 Hoàng Mai Hà Nội', N'Vy Vy', N'028445551', N'vyvy@gmail.com', NULL, NULL, 1, NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (10, N'20210528080521', 26, CAST(N'2021-05-28T08:36:21.210' AS DateTime), CAST(N'2021-06-05T07:18:05.737' AS DateTime), N'Số 10 Hoàng Mai Hà Nội', N'Vy Vy', N'028445551', N'vyvy@gmail.com', 20, CAST(N'2021-06-05T07:18:05.737' AS DateTime), 2, NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (11, N'20210605070657', 22, CAST(N'2021-06-05T07:16:57.933' AS DateTime), CAST(N'2021-06-05T07:18:25.703' AS DateTime), N'số 10 ngõ 25 Phú Minh Bắc Từ Liêm Hà Nội', N'Minh Hương', N'092470975', N'minhhuong@gmail.com', 20, CAST(N'2021-06-05T07:18:25.703' AS DateTime), 2, NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (12, N'20210605070623', 22, CAST(N'2021-06-05T07:17:23.463' AS DateTime), CAST(N'2021-06-05T07:18:01.633' AS DateTime), N'số 10 ngõ 25 Phú Minh Bắc Từ Liêm Hà Nội', N'Minh Hương', N'092470975', N'minhhuong@gmail.com', 20, CAST(N'2021-06-05T07:18:01.633' AS DateTime), 3, NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (13, N'20210605070605', 22, CAST(N'2021-06-05T07:19:05.510' AS DateTime), NULL, N'số 10 ngõ 25 Phú Minh Bắc Từ Liêm Hà Nội', N'Minh Hương', N'092470975', N'minhhuong@gmail.com', NULL, NULL, 1, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Posts] ON 

INSERT [dbo].[Posts] ([Id], [Topid], [Title], [Slug], [Detail], [Img], [Type], [MetaKey], [MetaDesc], [Created_At], [Created_By], [Updated_At], [Updated_By], [Status]) VALUES (9, 5, N'gioi thieu', N'gioi-thieu', N'<p># Được th&agrave;nh lập từ 1987 tại NewYork,perpetualtime.com&nbsp;l&agrave; đơn vị kinh doanh đồng hồ ch&iacute;nh h&atilde;ng l&agrave;m việc trực tiếp với c&aacute;c h&atilde;ng đồng hồ lớn để c&oacute; được mức gi&aacute; cạnh tranh nhất. So với gi&aacute; tại c&aacute;c cửa h&agrave;ng đồng hồ tại Việt Nam, ch&uacute;ng t&ocirc;i cam kết gi&aacute; sẽ thấp hơn từ 30-90%<em>.&nbsp;</em>Đ&acirc;y l&agrave; một lựa chọn cực kỳ kinh tế cho những người đam m&ecirc; v&agrave; y&ecirc;u th&iacute;ch đồng hồ.</p>

<p>perpetualtime.com&nbsp;lọt v&agrave;o top 10 c&aacute;c website thương mại điện tử đ&aacute;ng tin cậy nhất (https://otalliance.org/news-events/press-releases/online-trust-alliance-names-2015-most-trustworthy-ecommerce-sites). Với những nỗ lực hơn 20 năm trong ng&agrave;nh đồng hồ, đ&acirc;y l&agrave; sự đ&aacute;nh gi&aacute; rất đ&aacute;ng ghi nhận. V&agrave; như một lời hứa, Jomashop Vietnam cũng sẽ nỗ lực hết m&igrave;nh để mang đến cho những &ldquo;t&iacute;n đồ&rdquo; đồng hồ tại Việt Nam một chất lượng tuyệt vời như thế.</p>

<p># Với nhiều năm kinh nghiệm ph&acirc;n phối sản phẩm của&nbsp;perpetualtime.com;&nbsp;Jomashop Vietnam l&agrave; đơn vị kinh doanh đồng hồ, kh&ocirc;ng phải c&ocirc;ng ty vận chuyển n&ecirc;n sản phẩm đến tay bạn sẽ được đảm bảo điều kiện tốt nhất, kh&ocirc;ng sợ tr&aacute;o h&agrave;ng, đổi h&agrave;ng. Ngo&agrave;i ra bạn c&ograve;n nhận được dịch vụ hậu m&atilde;i, tư vấn, bảo h&agrave;nh ho&agrave;n hảo từ ch&uacute;ng t&ocirc;i.<br />
C&aacute;c sản phẩm c&oacute; link tr&ecirc;n&nbsp;perpetualtime.com;&nbsp;đều c&oacute; sẵn tại Kho h&agrave;ng b&ecirc;n Mỹ, sản phẩm sẽ đến tay bạn từ 2-3 tuần kể từ khi đặt cọc.</p>
', N'gioi-thieu.png', N'page', NULL, NULL, CAST(N'2021-04-14T18:03:29.803' AS DateTime), 27, CAST(N'2021-04-14T18:03:29.803' AS DateTime), 27, 1)
INSERT [dbo].[Posts] ([Id], [Topid], [Title], [Slug], [Detail], [Img], [Type], [MetaKey], [MetaDesc], [Created_At], [Created_By], [Updated_At], [Updated_By], [Status]) VALUES (10, 6, N'Cách bảo dưỡng và làm mới dây da đồng hồ hiệu quả', N'cach-bao-duong-va-lam-moi-day-da-dong-ho-hieu-qua', N'<h2><strong>C&aacute;ch bảo dưỡng v&agrave; l&agrave;m mới d&acirc;y da đồng hồ hiệu quả</strong></h2>

<p>&nbsp;</p>

<p>&nbsp;</p>

<h2><em>Trung b&igrave;nh, tuổi thọ của c&aacute;c mẫu d&acirc;y da đồng hồ từ khoảng 1 năm rưỡi đến 2 năm, nhưng đa số người d&ugrave;ng cần phải thay thế ch&uacute;ng trước tuổi thọ v&igrave; c&aacute;ch bảo dưỡng kh&ocirc;ng tốt.</em></h2>

<p>&nbsp;</p>

<p>Những mẫu&nbsp;<a href="https://www.dangquangwatch.vn/">đồng hồ d&acirc;y da&nbsp;</a>rất được kh&aacute;ch h&agrave;ng ưa chuộng bởi sự tiện dụng cũng như vẻ đẹp lịch thiệp, thời trang của ch&uacute;ng. Tuy nhi&ecirc;n, d&acirc;y da l&agrave; một vật liệu hữu cơ n&ecirc;n ch&uacute;ng kh&aacute; nhạy cảm với m&ocirc;i trường, c&oacute; tuổi thọ ngắn hơn nhiều so với c&aacute;c mẫu d&acirc;y kim loại n&ecirc;n cần c&aacute;ch bảo dưỡng d&acirc;y da đồng hồ hiệu quả để c&oacute; thể k&eacute;o d&agrave;i tuổi thọ cũng như gi&uacute;p d&acirc;y da lu&ocirc;n b&oacute;ng đẹp, đảm bảo t&iacute;nh thẩm mỹ</p>

<p><img alt="" src="https://www.dangquangwatch.vn/lib/ckfinder/images/bao_duong_lam_moi_dong_ho_20210325.jpg" /></p>

<p><strong>Những</strong><strong>&nbsp;điều cần lưu &yacute; khi đeo đồng hồ d&acirc;y da.</strong></p>

<p>&ldquo;KH&Ocirc;&rdquo; v&agrave; &ldquo;THO&Aacute;NG&rdquo; l&agrave; hai từ kho&aacute; bạn cần nhớ khi bảo dưỡng; d&acirc;y da rất dễ h&uacute;t nước, v&igrave; thế khi đ&atilde; để đồng hồ tiếp x&uacute;c với nước hay mồ h&ocirc;i tay th&igrave; bạn cần lau kh&ocirc; ngay bằng khăn kh&ocirc; v&agrave; mềm.</p>

<p>Kh&ocirc;ng n&ecirc;n đeo d&acirc;y da khi đi tắm, đi bơi, đi mưa, x&ocirc;ng hơi, kể cả đối với chất liệu da c&aacute; sấu.</p>

<p>Tr&aacute;nh để d&acirc;y da ở nơi c&oacute; nhiệt độ cao hoặc ở trực tiếp dưới &aacute;nh mặt trời qu&aacute; l&acirc;u l&agrave;m d&acirc;y da bị đổi m&agrave;u, kh&ocirc; gi&ograve;n.</p>

<p>Th&aacute;o đồng hồ khi đi ngủ để d&acirc;y da được &ldquo;thả lỏng&rdquo;, &ldquo;th&ocirc;ng tho&aacute;ng&rdquo;.</p>

<p>Th&aacute;o đồng hồ khi l&agrave;m c&ocirc;ng việc vệ sinh nh&agrave; cửa.</p>

<p>Tr&aacute;nh để c&aacute;c ho&aacute; chất tẩy rửa, nước hoa, đồ ăn d&iacute;nh v&agrave;o mặt d&acirc;y.</p>

<p>Tr&aacute;nh đeo đồng hồ qu&aacute; chặt, kh&ocirc;ng những l&agrave;m giảm lượng m&aacute;u lưu th&ocirc;ng tay bạn m&agrave; c&ograve;n dễ l&agrave;m g&atilde;y nếp của d&acirc;y</p>

<p>Trong thời tiết n&oacute;ng bức, n&ecirc;n nới lỏng d&acirc;y khi đeo bằng độ rộng: cổ tay + một ng&oacute;n tay &uacute;t.</p>

<p>Vệ sinh d&acirc;y da định kỳ &iacute;t nhất 1 lần/ 1 tuần để d&acirc;y kh&ocirc;ng sinh ra m&ugrave;i h&ocirc;i kh&oacute; chịu.</p>

<p><img alt="" src="https://www.dangquangwatch.vn/lib/ckfinder/images/bao_duong_lam_moi_dong_ho_20210325_1.jpg" /></p>

<p><strong>3 Bước vệ sinh d&acirc;y da bạn cần biết</strong></p>

<p>Bước 1: Th&aacute;o d&acirc;y ra khỏi đồng hồ.</p>

<p>Để tr&aacute;nh nước c&oacute; thể tiếp x&uacute;c v&agrave; l&agrave;m hư bộ m&aacute;y của những d&ograve;ng đồng hồ chịu nước kh&ocirc;ng cao, đồng thời, để bạn c&oacute; thể thuận tiện vệ sinh c&aacute;c kẽ từng ng&oacute;c ng&aacute;ch kh&ocirc;ng c&ograve;n m&ugrave;i h&ocirc;i.</p>

<p>Bước 2: Vệ sinh, khử tr&ugrave;ng d&acirc;y da.</p>

<p>Pha thật lo&atilde;ng dung dịch nước rửa tay (dung dịch nước rửa tay kh&ocirc;ng để nổi qu&aacute; nhiều bọt) hoặc sử dụng bột Baking soda pha lo&atilde;ng với nước.</p>

<p>Nh&uacute;ng vải mềm v&agrave;o dung dịch v&agrave; vắt thật r&aacute;o, lau ch&ugrave;i nhẹ nh&agrave;ng l&ecirc;n to&agrave;n bộ bề mặt d&acirc;y da. &nbsp;Sử dụng th&ecirc;m tăm b&ocirc;ng hay b&agrave;n chải mềm kỳ cọ v&agrave;o c&aacute;c khe kẽ th&iacute;ch hợp nếu d&acirc;y da của bạn kh&ocirc;ng phải l&agrave; da lộn (da b&ograve;, da cừu, da d&ecirc;,..).</p>

<p>C&oacute; thể d&ugrave;ng dầu olive để đ&aacute;nh b&oacute;ng sản phẩm, dầu Olive kh&ocirc;ng những gi&uacute;p d&acirc;y da s&aacute;ng b&oacute;ng, mềm mượt m&agrave; c&ograve;n kh&ocirc;ng g&acirc;y dị ứng cho da người. Tuy nhi&ecirc;n khi sử dụng bạn lưu &yacute; chỉ đ&aacute;nh b&oacute;ng mặt tr&ecirc;n chứ kh&ocirc;ng đ&aacute;nh b&oacute;ng mặt dưới của d&acirc;y.</p>

<p>Bước 3: Để kh&ocirc; d&acirc;y da.</p>

<p>D&ugrave;ng khăn kh&ocirc; v&agrave; mềm kh&aacute;c lau kh&ocirc; thật kỹ d&acirc;y da.</p>

<p>Nếu c&ograve;n độ ẩm tr&ecirc;n d&acirc;y sẽ tạo m&ocirc;i trường thuận lợi cho vi khuẩn ph&aacute;t triển v&agrave; thế l&agrave; c&ocirc;ng sức th&aacute;o d&acirc;y vệ sinh d&acirc;y da của bạn đem đổ s&ocirc;ng đổ bể.</p>

<p><img alt="" src="https://www.dangquangwatch.vn/lib/ckfinder/images/bao_duong_lam_moi_dong_ho_20210325_5.jpg" /></p>

<p>Lưu &yacute;:&nbsp;Kh&ocirc;ng được đem phơi nắng trực tiếp dưới &aacute;nh Mặt trời, để kh&ocirc; d&acirc;y da ở nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t đến khi kh&ocirc; r&aacute;o ho&agrave;n to&agrave;n l&agrave; được.</p>

<p>Kỹ lưỡng hơn, bạn c&oacute; thể để d&acirc;y da v&agrave;o lọ thuỷ tinh kh&ocirc;, đặt v&agrave;o một g&oacute;i h&uacute;t ẩm v&agrave; để&nbsp; khoảng 1 ng&agrave;y, hoặc bạn c&oacute; thể sử dụng m&aacute;y khử m&ugrave;i Ozon, chỉ cần bật m&aacute;y v&agrave; đặt d&acirc;y da đồng hồ trước m&aacute;y từ 30 đến 60 gi&acirc;y.</p>

<p><strong>Khi n&agrave;o bạn cần phải thay d&acirc;y đồng hồ</strong></p>

<p>D&ugrave; d&acirc;y đồng hồ l&agrave; từ da tự nhi&ecirc;n hay da tổng hợp th&igrave; thời gian k&eacute;o d&agrave;i chỉ khoảng 1-2 đến 3 năm th&igrave; bạn n&ecirc;n thay d&acirc;y một lần. Vừa để đảm bảo an to&agrave;n khi đeo cũng như t&iacute;nh thẩm mỹ v&agrave; sự mới mẻ cho chiếc đồng hồ của bạn.</p>

<p>&nbsp;</p>
', N'cach-bao-duong-va-lam-moi-day-da-dong-ho-hieu-qua.jpg', N'post', N'Cách bảo dưỡng và làm mới dây da đồng hồ hiệu quả', N'Cách bảo dưỡng và làm mới dây da đồng hồ hiệu quả', CAST(N'2021-05-27T16:15:07.000' AS DateTime), 20, CAST(N'2021-05-27T16:22:00.797' AS DateTime), 20, 1)
INSERT [dbo].[Posts] ([Id], [Topid], [Title], [Slug], [Detail], [Img], [Type], [MetaKey], [MetaDesc], [Created_At], [Created_By], [Updated_At], [Updated_By], [Status]) VALUES (11, 6, N'Những loại dây da đồng hồ tiện dụng nhất thị trường hiện nay, ưu nhược điểm của từng loại', N'nhung-loai-day-da-dong-ho-tien-dung-nhat-thi-truong-hien-nay--uu-nhuoc-diem-cua-tung-loai', N'<p><strong>Những loại d&acirc;y da đồng hồ tiện dụng nhất thị trường hiện nay, ưu nhược điểm của từng loại</strong></p>

<p>D&acirc;y đeo l&agrave; phụ kiện kh&ocirc;ng thể thiếu đối với một chiếc đồng hồ đeo tay. Ngo&agrave;i t&aacute;c dụng vốn c&oacute; của m&igrave;nh, d&acirc;y đồng hồ c&ograve;n mang gi&aacute; trị thẩm mĩ rất cao.</p>

<p>Sự h&agrave;i h&ograve;a, vừa vặn, thoải m&aacute;i v&agrave; hơn thế l&agrave; sự tự tin của người đeo được tạo ra phụ thuộc rất nhiều v&agrave;o loại d&acirc;y bạn đang sử dụng. Trong c&aacute;c loại phụ kiện đồng hồ th&igrave; &nbsp;d&acirc;y da l&agrave; một chất liệu bền v&agrave; đa dạng chủng loại nhất.</p>

<p>Những chiếc đồng hồ đầu ti&ecirc;n ra đời ch&iacute;nh l&agrave; những chiếc đồng hồ với thiết kế d&acirc;y da. Hiện nay, đồng hồ&nbsp;<a href="https://www.dangquangwatch.vn/sp/day-da-dang-quang.html">d&acirc;y da</a>&nbsp;vẫn lu&ocirc;n được ưa chuộng. Chỉ với 1 chiếc đồng hồ nhưng đi k&egrave;m với nhiều bộ d&acirc;y da đ&atilde; c&oacute; thể biến ho&aacute; với rất nhiều trang phục, phong c&aacute;ch kh&aacute;c nhau.</p>

<p><img alt="" src="https://www.dangquangwatch.vn/lib/ckfinder/images/day_da_dong_ho_chinh_hang_11032021_2.jpg" /></p>

<p><strong>Những</strong><strong>&nbsp;loại d&acirc;y da đồng hồ tiện dụng nhất &nbsp;thị trường hiện nay, ưu nhược điểm của từng loại</strong></p>

<p>&nbsp;</p>

<p><strong>D&acirc;y Da Simili</strong></p>

<p>Da simili l&agrave;&nbsp;một loại chất liệu giả da sản phẩm&nbsp; phổ biến hiện nay, ngo&agrave;i ra c&ograve;n c&oacute; c&aacute;c t&ecirc;n kh&aacute;c chủng loại như&nbsp; như faux leather, pleather. Đối với chất liệu d&acirc;y da n&agrave;y c&oacute; gi&aacute; th&agrave;nh của da Simili rất rẻ. Tuy nhi&ecirc;n về t&iacute;nh năng th&igrave; chất liệu d&acirc;y da Simili cứng, kh&oacute; lau ch&ugrave;i n&ecirc;n thường được d&ugrave;ng cho c&aacute;c mẫu đồng hồ&nbsp;c&oacute; gi&aacute; trị thấp.</p>

<p>Kết cấu chất liệu d&acirc;y Simili thường được tạo ra từ 1 lớp vải l&oacute;t, dệt kim bằng sợi Polyester, sau đ&oacute; sẽ nhuộm l&ecirc;n từ 1 đến 2 lớp nhựa PVC. Hơn nữa chất liệu d&acirc;y da&nbsp;Simili rất dễ bị rộp, bong tr&oacute;c nếu để trong m&ocirc;i trường nhiệt độ cao hoặc nơi ẩm mốc, để tiếp x&uacute;c với nước l&acirc;u. V&igrave; vậy khi m&agrave; sử dụng chiếc đồng hồ được l&agrave;m từ&nbsp;Simili bạn n&ecirc;n hạn chế t&aacute;c động với nước.</p>

<p><img alt="" src="https://www.dangquangwatch.vn/lib/ckfinder/images/day_da_dong_ho_chinh_hang_11032021_3.jpg" style="height:708px; width:531px" /></p>

<p><strong>D&acirc;y Da PU</strong></p>

<p>Đ&acirc;y chất liệu da tổng hợp kết hợp giữa chất liệu da&nbsp;Simili được phủ l&ecirc;n một lớp nhựa Polyurethane (PU). Do c&oacute; t&iacute;nh chất của nhựa PU n&ecirc;n da PU mềm gần như da thật, dễ l&acirc;u ch&ugrave;i v&agrave; c&oacute; độ bền cao hơn Simili th&ocirc;ng thường. Gi&aacute; th&agrave;nh của ch&uacute;ng cũng cao hơn da Simili. Tuy nhi&ecirc;n so với gi&aacute; th&agrave;nh rẻ hơn da thật, nhưng c&oacute; độ bền k&eacute;m xa da thật Da PU dẻo, khi k&eacute;o sẽ c&oacute; cảm gi&aacute;c hơn. Cũng như&nbsp;Da PU rất dễ bị rộp, bong tr&oacute;c nếu để trong m&ocirc;i trường nhiệt độ cao hoặc nơi ẩm mốc, để tiếp x&uacute;c với nước l&acirc;u.</p>

<p><strong>D&acirc;y Da thật</strong><strong>.</strong><br />
D&acirc;y da thật ch&iacute;nh l&agrave; chất liệu d&acirc;y da tốt nhất. Cho ra nhiều mẫu thiết kế đẹp như d&acirc;y da thằn lằn d&acirc;y da c&aacute; sấu. Sử dụng da của c&aacute;c loại động vật như da b&ograve;, da đ&agrave; điểu, da c&aacute; sấu, da b&ecirc;,&hellip;Trước khi được đưa v&agrave;o sử dụng phải trả qua một qu&aacute; tr&igrave;nh xử l&yacute; được gọi l&agrave; thuộc da. Điều n&agrave;y gi&uacute;p diệt sạch c&aacute;c vi khuẩn k&yacute; sinh tr&ecirc;n d&acirc;y da, tr&aacute;nh d&acirc;y k&iacute;ch ứng da cho người sử dụng.&nbsp;Da thật&nbsp; c&oacute; độ mềm v&agrave; dai, độ bền cao mức độ chống ngấm nước cũng cao hơn hẳn, kh&oacute; chịu c&aacute;c t&aacute;c động nước v&agrave; độ ẩm hơn da c&ocirc;ng nghiệp, kh&ocirc;ng g&acirc;y k&iacute;ch ứng. Chất liệu d&acirc;y da thật n&agrave;y chỉ được b&aacute;n tại những cửa h&agrave;ng uy t&iacute;n như Đăng Quang Watch.</p>

<p><img alt="" src="https://www.dangquangwatch.vn/lib/ckfinder/images/day_da_dong_ho_chinh_hang_11032021_4.jpg" /></p>

<p>Khi lựa chọn 1 chiếc đồng hồ đeo tay th&igrave; phong c&aacute;ch thời trang l&agrave; một yếu tố kh&ocirc;ng thể bỏ qua. Mỗi 1 loại d&acirc;y đeo sẽ mang lại cho người d&ugrave;ng 1 cảm quan kh&aacute;c nhau. Th&ocirc;ng thường, một chiếc đồng hồ d&acirc;y da thường kh&ocirc;ng qu&aacute; cầu k&igrave;, điểm kh&aacute;c biệt ở mỗi sợi d&acirc;y thể hiện tr&ecirc;n từng đường kim mũi chỉ, cấu tạo c&ugrave;ng với c&ocirc;ng nghệ ti&ecirc;n tiến của mỗi thương hiệu khi xử l&yacute; da.&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>
', N'nhung-loai-day-da-dong-ho-tien-dung-nhat-thi-truong-hien-nay--uu-nhuoc-diem-cua-tung-loai.jpg', N'post', N'Những loại dây da đồng hồ tiện dụng nhất thị trường hiện nay, ưu nhược điểm của từng loại', N'Những loại dây da đồng hồ tiện dụng nhất thị trường hiện nay, ưu nhược điểm của từng loại', CAST(N'2021-05-27T16:20:12.000' AS DateTime), 20, CAST(N'2021-05-27T16:21:55.107' AS DateTime), 20, 1)
SET IDENTITY_INSERT [dbo].[Posts] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductRate] ON 

INSERT [dbo].[ProductRate] ([ID], [ProductID], [UserID], [Rate], [Comment], [UName], [CreateAt]) VALUES (19, 57, 20, 5, N'', N'Quang Anh Tong', CAST(N'2021-04-15T21:37:28.723' AS DateTime))
INSERT [dbo].[ProductRate] ([ID], [ProductID], [UserID], [Rate], [Comment], [UName], [CreateAt]) VALUES (20, 45, 20, 5, N'ok', N'Quang Anh Tong', CAST(N'2021-04-15T21:38:50.150' AS DateTime))
INSERT [dbo].[ProductRate] ([ID], [ProductID], [UserID], [Rate], [Comment], [UName], [CreateAt]) VALUES (21, 45, 20, 3, N'', N'Quang Anh Tong', CAST(N'2021-04-15T21:39:18.077' AS DateTime))
INSERT [dbo].[ProductRate] ([ID], [ProductID], [UserID], [Rate], [Comment], [UName], [CreateAt]) VALUES (22, 64, 21, 4, N'', N'Phương Nam', CAST(N'2021-05-08T09:05:14.380' AS DateTime))
INSERT [dbo].[ProductRate] ([ID], [ProductID], [UserID], [Rate], [Comment], [UName], [CreateAt]) VALUES (23, 99, 22, 5, N'xịn', N'Minh Hương', CAST(N'2021-05-19T22:03:29.627' AS DateTime))
INSERT [dbo].[ProductRate] ([ID], [ProductID], [UserID], [Rate], [Comment], [UName], [CreateAt]) VALUES (24, 102, 26, 4, N'', N'Vy Vy', CAST(N'2021-05-27T21:17:49.423' AS DateTime))
INSERT [dbo].[ProductRate] ([ID], [ProductID], [UserID], [Rate], [Comment], [UName], [CreateAt]) VALUES (25, 102, 26, 4, N'', N'Vy Vy', CAST(N'2021-05-28T08:37:36.037' AS DateTime))
INSERT [dbo].[ProductRate] ([ID], [ProductID], [UserID], [Rate], [Comment], [UName], [CreateAt]) VALUES (26, 51, 22, 5, N'Sản phẩm tốt, y hình', N'Minh Hương', CAST(N'2021-06-05T07:42:04.897' AS DateTime))
SET IDENTITY_INSERT [dbo].[ProductRate] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (45, N'OPPO A92', N'oppo-a92', 3, N'oppo-a92.png', N'OPPO A92', 2, 2, N'<table>
	<tbody>
		<tr>
			<td>M&agrave;n h&igrave;nh</td>
			<td>6.5&quot;, FHD+, TFT LCD, 1080 x 2400 Pixel</td>
		</tr>
		<tr>
			<td>Camera sau</td>
			<td>48.0 MP + 8.0 MP + 2.0 MP + 2.0 MP</td>
		</tr>
		<tr>
			<td>Camera Selfie</td>
			<td>16.0 MP</td>
		</tr>
		<tr>
			<td>RAM&nbsp;</td>
			<td>8 GB</td>
		</tr>
		<tr>
			<td>Bộ nhớ trong</td>
			<td>128 GB</td>
		</tr>
		<tr>
			<td>CPU</td>
			<td>Snapdragon 665</td>
		</tr>
		<tr>
			<td>GPU</td>
			<td>Adreno 610</td>
		</tr>
		<tr>
			<td>Dung lượng pin</td>
			<td>5000 mAh</td>
		</tr>
		<tr>
			<td>Thẻ sim</td>
			<td>2, Nano SIM</td>
		</tr>
		<tr>
			<td>Hệ điều h&agrave;nh</td>
			<td>Android 10.0</td>
		</tr>
		<tr>
			<td>Xuất xứ</td>
			<td>Trung Quốc</td>
		</tr>
		<tr>
			<td>Thời gian ra mắt</td>
			<td>05/2020</td>
		</tr>
	</tbody>
</table>
', N'<ul>
	<li>
	<p>Th&ocirc;ng tin h&agrave;ng h&oacute;a</p>
	</li>
	<li>Thương hiệu: &nbsp;
	<p><a href="https://fptshop.com.vn/dien-thoai/oppo">Oppo</a></p>
	</li>
	<li>Thời gian ra mắt: &nbsp;
	<p>05/2020</p>
	</li>
	<li>
	<p>Thiết kế &amp; Trọng lượng</p>
	</li>
	<li>Width (mm): &nbsp;
	<p>75.5</p>
	</li>
	<li>Tỷ lệ diện t&iacute;ch sử dụng m&agrave;n h&igrave;nh: &nbsp;
	<p>83%</p>
	</li>
	<li>Depth (mm): &nbsp;
	<p>8.9</p>
	</li>
	<li>Chuẩn kh&aacute;ng nước/ Bụi bẩn: &nbsp;
	<p>Kh&ocirc;ng</p>
	</li>
	<li>Height (mm): &nbsp;
	<p>162</p>
	</li>
	<li>Chất liệu: &nbsp;
	<p>Khung &amp; Mặt lưng nhựa</p>
	</li>
	<li>Trọng lượng: &nbsp;
	<p>192 g</p>
	</li>
	<li>&nbsp;</li>
	<li>Series: &nbsp;
	<p>OPPO A92</p>
	</li>
	<li>Thời gian bảo h&agrave;nh: &nbsp;
	<p>12 Th&aacute;ng</p>
	</li>
	<li>Xuất xứ: &nbsp;
	<p>Trung Quốc</p>
	</li>
</ul>
', N'123', 5490000, 10, 4990000, N'OPPO A92', N'OPPO A92', 1, CAST(N'2021-03-02T19:23:22.000' AS DateTime), 20, CAST(N'2021-06-05T07:13:02.667' AS DateTime), 20, 0)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (46, N'Oppo A12 3GB-32GB', N'oppo-a12-3gb-32gb', 3, N'oppo-a12-3gb-32gb.png', N'Oppo A12 3GB-32GB', 1, 1, N'<table>
	<tbody>
		<tr>
			<td>M&agrave;n h&igrave;nh</td>
			<td>6.22&quot;, HD+, IPS LCD, 720 x 1560 Pixel</td>
		</tr>
		<tr>
			<td>Camera sau</td>
			<td>13.0 MP + 2.0 MP</td>
		</tr>
		<tr>
			<td>Camera Selfie</td>
			<td>5.0 MP</td>
		</tr>
		<tr>
			<td>RAM&nbsp;</td>
			<td>3 GB</td>
		</tr>
		<tr>
			<td>Bộ nhớ trong</td>
			<td>32 GB</td>
		</tr>
		<tr>
			<td>CPU</td>
			<td>Helio P35</td>
		</tr>
		<tr>
			<td>GPU</td>
			<td>IMG PowerVR GE8320</td>
		</tr>
		<tr>
			<td>Dung lượng pin</td>
			<td>4230 mAh</td>
		</tr>
		<tr>
			<td>Thẻ sim</td>
			<td>2, Nano SIM</td>
		</tr>
		<tr>
			<td>Hệ điều h&agrave;nh</td>
			<td>Android 9.0</td>
		</tr>
		<tr>
			<td>Xuất xứ</td>
			<td>Trung Quốc</td>
		</tr>
		<tr>
			<td>Thời gian ra mắt</td>
			<td>04/2020</td>
		</tr>
	</tbody>
</table>
', N'<ul>
	<li>
	<p>Th&ocirc;ng tin h&agrave;ng h&oacute;a</p>
	</li>
	<li>Thương hiệu: &nbsp;
	<p><a href="https://fptshop.com.vn/dien-thoai/oppo">Oppo</a></p>
	</li>
	<li>Thời gian ra mắt: &nbsp;
	<p>04/2020</p>
	</li>
	<li>
	<p>Thiết kế &amp; Trọng lượng</p>
	</li>
	<li>Width (mm): &nbsp;
	<p>75.5</p>
	</li>
	<li>Tỷ lệ diện t&iacute;ch sử dụng m&agrave;n h&igrave;nh: &nbsp;
	<p>82%</p>
	</li>
	<li>Depth (mm): &nbsp;
	<p>8.3</p>
	</li>
	<li>Chuẩn kh&aacute;ng nước/ Bụi bẩn: &nbsp;
	<p>Kh&ocirc;ng</p>
	</li>
	<li>Height (mm): &nbsp;
	<p>155.9</p>
	</li>
	<li>Chất liệu: &nbsp;
	<p>Khung &amp; Mặt lưng nhựa</p>
	</li>
	<li>Trọng lượng: &nbsp;
	<p>165 g</p>
	</li>
	<li>&nbsp;</li>
	<li>Series: &nbsp;
	<p>OPPO A</p>
	</li>
	<li>Thời gian bảo h&agrave;nh: &nbsp;
	<p>12 Th&aacute;ng</p>
	</li>
	<li>Xuất xứ: &nbsp;
	<p>Trung Quốc</p>
	</li>
</ul>
', N'123', 2250000, 50, 2250000, N'Oppo A12 3GB-32GB', N'Oppo A12 3GB-32GB', 1, CAST(N'2021-03-31T16:28:18.000' AS DateTime), 21, CAST(N'2021-06-05T07:08:52.880' AS DateTime), 20, 0)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (47, N'Điện thoại OPPO Reno5', N'dien-thoai-oppo-reno5', 3, N'dien-thoai-oppo-reno5.jpg', N'Điện thoại OPPO Reno5', 1, 1, N'<ul>
	<li>
	<table>
		<tbody>
			<tr>
				<td>M&agrave;n h&igrave;nh</td>
				<td>6.43&quot;, FHD+, AMOLED, 1080 x 2400 Pixel</td>
			</tr>
			<tr>
				<td>Camera sau</td>
				<td>64.0 MP + 8.0 MP + 2.0 MP + 2.0 MP</td>
			</tr>
			<tr>
				<td>Camera Selfie</td>
				<td>44.0 MP</td>
			</tr>
			<tr>
				<td>RAM&nbsp;</td>
				<td>8 GB</td>
			</tr>
			<tr>
				<td>Bộ nhớ trong</td>
				<td>128 GB</td>
			</tr>
			<tr>
				<td>CPU</td>
				<td>Snapdragon 720G</td>
			</tr>
			<tr>
				<td>GPU</td>
				<td>Adreno 618</td>
			</tr>
			<tr>
				<td>Dung lượng pin</td>
				<td>4310 mAh</td>
			</tr>
			<tr>
				<td>Thẻ sim</td>
				<td>2, Nano SIM</td>
			</tr>
			<tr>
				<td>Hệ điều h&agrave;nh</td>
				<td>Android 11</td>
			</tr>
			<tr>
				<td>Xuất xứ</td>
				<td>Trung Quốc</td>
			</tr>
			<tr>
				<td>Thời gian ra mắt</td>
				<td>01/2021</td>
			</tr>
		</tbody>
	</table>
	</li>
</ul>
', N'<ul>
	<li>
	<p>Th&ocirc;ng tin h&agrave;ng h&oacute;a</p>
	</li>
	<li>Thương hiệu: &nbsp;
	<p><a href="https://fptshop.com.vn/dien-thoai/oppo">Oppo</a></p>
	</li>
	<li>Thời gian ra mắt: &nbsp;
	<p>01/2021</p>
	</li>
	<li>
	<p>Thiết kế &amp; Trọng lượng</p>
	</li>
	<li>Width (mm): &nbsp;
	<p>73.3</p>
	</li>
	<li>Tỷ lệ diện t&iacute;ch sử dụng m&agrave;n h&igrave;nh: &nbsp;
	<p>--</p>
	</li>
	<li>Depth (mm): &nbsp;
	<p>7.7</p>
	</li>
	<li>Chuẩn kh&aacute;ng nước/ Bụi bẩn: &nbsp;
	<p>Kh&ocirc;ng</p>
	</li>
	<li>Height (mm): &nbsp;
	<p>159.1</p>
	</li>
	<li>Chất liệu: &nbsp;
	<p>--</p>
	</li>
	<li>Trọng lượng: &nbsp;
	<p>171 g</p>
	</li>
	<li>&nbsp;</li>
	<li>Series: &nbsp;
	<p>OPPO Reno5</p>
	</li>
	<li>Thời gian bảo h&agrave;nh: &nbsp;
	<p>12 Th&aacute;ng</p>
	</li>
	<li>Xuất xứ: &nbsp;
	<p>Trung Quốc</p>
	</li>
	<li>
	<p>&nbsp;</p>
	</li>
</ul>
', N'123', 8690000, 50, 8690000, N'Điện thoại OPPO Reno5', N'Điện thoại OPPO Reno5', 1, CAST(N'2021-03-31T16:29:50.000' AS DateTime), 21, CAST(N'2021-06-05T07:06:58.033' AS DateTime), 20, 0)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (48, N'Samsung Galaxy Note 20 Ultra', N'samsung-galaxy-note-20-ultra', 11, N'samsung-galaxy-note-20-ultra.png', N'Samsung Galaxy Note 20 Ultra', 1, 1, N'<table>
	<tbody>
		<tr>
			<td>M&agrave;n h&igrave;nh</td>
			<td>6.9&quot;, 2K+, Dynamic AMOLED 2X, 1440 x 3088 Pixel</td>
		</tr>
		<tr>
			<td>Camera sau</td>
			<td>108.0 MP + 12.0 MP + 12.0 MP</td>
		</tr>
		<tr>
			<td>Camera Selfie</td>
			<td>10.0 MP</td>
		</tr>
		<tr>
			<td>RAM&nbsp;</td>
			<td>8 GB</td>
		</tr>
		<tr>
			<td>Bộ nhớ trong</td>
			<td>256 GB</td>
		</tr>
		<tr>
			<td>CPU</td>
			<td>Exynos 990</td>
		</tr>
		<tr>
			<td>GPU</td>
			<td>ARM Mali-G77 MP11</td>
		</tr>
		<tr>
			<td>Dung lượng pin</td>
			<td>4500 mAh</td>
		</tr>
		<tr>
			<td>Thẻ sim</td>
			<td>2, 2 Nano SIM hoặc 1 eSIM, 1 Nano SIM</td>
		</tr>
		<tr>
			<td>Hệ điều h&agrave;nh</td>
			<td>Android 10.0</td>
		</tr>
		<tr>
			<td>Xuất xứ</td>
			<td>Việt Nam</td>
		</tr>
		<tr>
			<td>Thời gian ra mắt</td>
			<td>08/2020</td>
		</tr>
	</tbody>
</table>
', N'<ul>
	<li>
	<p>Th&ocirc;ng tin h&agrave;ng h&oacute;a</p>
	</li>
	<li>Thương hiệu: &nbsp;
	<p>Samsung</p>
	</li>
	<li>Thời gian ra mắt: &nbsp;
	<p>08/2020</p>
	</li>
	<li>
	<p>Thiết kế &amp; Trọng lượng</p>
	</li>
	<li>Width (mm): &nbsp;
	<p>77.2</p>
	</li>
	<li>Tỷ lệ diện t&iacute;ch sử dụng m&agrave;n h&igrave;nh: &nbsp;
	<p>92%</p>
	</li>
	<li>Depth (mm): &nbsp;
	<p>8.1</p>
	</li>
	<li>Chuẩn kh&aacute;ng nước/ Bụi bẩn: &nbsp;
	<p><a href="https://fptshop.com.vn/tin-tuc/danh-gia/chuan-ip68-la-gi-khac-biet-gi-so-voi-ip67-57823">IP68</a></p>
	</li>
	<li>Height (mm): &nbsp;
	<p>164.8</p>
	</li>
	<li>Chất liệu: &nbsp;
	<p>Khung nh&ocirc;m &amp; Mặt lưng k&iacute;nh cường lực</p>
	</li>
	<li>Trọng lượng: &nbsp;
	<p>208 g</p>
	</li>
	<li>&nbsp;</li>
	<li>Series: &nbsp;
	<p>Galaxy Note 20 Ultra</p>
	</li>
	<li>Thời gian bảo h&agrave;nh: &nbsp;
	<p>12 Th&aacute;ng</p>
	</li>
	<li>Xuất xứ: &nbsp;
	<p>Việt Nam</p>
	</li>
</ul>
', N'123', 18690000, 50, 18490000, N'Samsung Galaxy Note 20 Ultra', N'Samsung Galaxy Note 20 Ultra', 1, CAST(N'2021-03-31T16:31:17.000' AS DateTime), 21, CAST(N'2021-06-04T22:09:40.263' AS DateTime), 20, 0)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (50, N'SamSung Galaxy A02 64GB', N'samsung-galaxy-a02-64gb', 13, N'samsung-galaxy-a02-64gb.jpg', N'SamSung Galaxy A02 64GB', 1, 1, N'<table>
	<tbody>
		<tr>
			<td>M&agrave;n h&igrave;nh</td>
			<td>6.5&quot;, HD+, PLS TFT LCD, 720 x 1600 Pixel</td>
		</tr>
		<tr>
			<td>Camera sau</td>
			<td>13.0 MP + 2.0 MP + 2.0 MP</td>
		</tr>
		<tr>
			<td>Camera Selfie</td>
			<td>5.0 MP</td>
		</tr>
		<tr>
			<td>RAM&nbsp;</td>
			<td>4 GB</td>
		</tr>
		<tr>
			<td>Bộ nhớ trong</td>
			<td>64 GB</td>
		</tr>
		<tr>
			<td>CPU</td>
			<td>Snapdragon 450</td>
		</tr>
		<tr>
			<td>GPU</td>
			<td>Adreno 506</td>
		</tr>
		<tr>
			<td>Dung lượng pin</td>
			<td>5000 mAh</td>
		</tr>
		<tr>
			<td>Thẻ sim</td>
			<td>2, Nano SIM</td>
		</tr>
		<tr>
			<td>Hệ điều h&agrave;nh</td>
			<td>Android 10.0</td>
		</tr>
		<tr>
			<td>Xuất xứ</td>
			<td>Việt Nam</td>
		</tr>
		<tr>
			<td>Thời gian ra mắt</td>
			<td>02/2021</td>
		</tr>
	</tbody>
</table>
', N'<p>D&Acirc;Y KIM LOẠI</p>

<ul>
	<li>
	<p>h&ocirc;ng tin h&agrave;ng h&oacute;a</p>
	</li>
	<li>Thương hiệu: &nbsp;
	<p>Samsung</p>
	</li>
	<li>Thời gian ra mắt: &nbsp;
	<p>02/2021</p>
	</li>
	<li>
	<p>Thiết kế &amp; Trọng lượng</p>
	</li>
	<li>Width (mm): &nbsp;
	<p>75.9</p>
	</li>
	<li>Tỷ lệ diện t&iacute;ch sử dụng m&agrave;n h&igrave;nh: &nbsp;
	<p>--</p>
	</li>
	<li>Depth (mm): &nbsp;
	<p>9.1</p>
	</li>
	<li>Chuẩn kh&aacute;ng nước/ Bụi bẩn: &nbsp;
	<p>--</p>
	</li>
	<li>Height (mm): &nbsp;
	<p>164.28</p>
	</li>
	<li>Chất liệu: &nbsp;
	<p>Khung &amp; Mặt lưng nhựa</p>
	</li>
	<li>Trọng lượng: &nbsp;
	<p>191 g</p>
	</li>
	<li>&nbsp;</li>
	<li>Series: &nbsp;
	<p>Galaxy A02s</p>
	</li>
	<li>Thời gian bảo h&agrave;nh: &nbsp;
	<p>12 Th&aacute;ng</p>
	</li>
	<li>Xuất xứ: &nbsp;
	<p>Việt Nam</p>
	</li>
</ul>
', N'123', 3549000, 50, 3050000, N'SamSung Galaxy A02 64GB', N'SamSung Galaxy A02 64GB', 1, CAST(N'2021-03-31T16:32:32.000' AS DateTime), 21, CAST(N'2021-06-04T22:02:26.817' AS DateTime), 20, 0)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (51, N'Samsung Galaxy A72 ', N'samsung-galaxy-a72-', 12, N'samsung-galaxy-a72-.jpg', N'Samsung Galaxy A72 ', 1, 1, N'<table>
	<tbody>
		<tr>
			<td>M&agrave;n h&igrave;nh</td>
			<td>6.7&quot;, FHD+, Super AMOLED, 1080 x 2400 Pixel</td>
		</tr>
		<tr>
			<td>Camera sau</td>
			<td>64.0 MP + 12.0 MP + 8.0 MP + 5.0 MP</td>
		</tr>
		<tr>
			<td>Camera Selfie</td>
			<td>32.0 MP</td>
		</tr>
		<tr>
			<td>RAM&nbsp;</td>
			<td>8 GB</td>
		</tr>
		<tr>
			<td>Bộ nhớ trong</td>
			<td>256 GB</td>
		</tr>
		<tr>
			<td>CPU</td>
			<td>Snapdragon 720G</td>
		</tr>
		<tr>
			<td>GPU</td>
			<td>Adreno 618</td>
		</tr>
		<tr>
			<td>Dung lượng pin</td>
			<td>5000 mAh</td>
		</tr>
		<tr>
			<td>Thẻ sim</td>
			<td>2, Nano SIM</td>
		</tr>
		<tr>
			<td>Hệ điều h&agrave;nh</td>
			<td>Android 11</td>
		</tr>
		<tr>
			<td>Xuất xứ</td>
			<td>Việt Nam</td>
		</tr>
		<tr>
			<td>Thời gian ra mắt</td>
			<td>03/2021</td>
		</tr>
	</tbody>
</table>
', N'<ul>
	<li>
	<p>Th&ocirc;ng tin h&agrave;ng h&oacute;a</p>
	</li>
	<li>Thương hiệu: &nbsp;
	<p>Samsung</p>
	</li>
	<li>Thời gian ra mắt: &nbsp;
	<p>03/2021</p>
	</li>
	<li>
	<p>Thiết kế &amp; Trọng lượng</p>
	</li>
	<li>Width (mm): &nbsp;
	<p>76.9</p>
	</li>
	<li>Tỷ lệ diện t&iacute;ch sử dụng m&agrave;n h&igrave;nh: &nbsp;
	<p>--</p>
	</li>
	<li>Depth (mm): &nbsp;
	<p>7.3</p>
	</li>
	<li>Chuẩn kh&aacute;ng nước/ Bụi bẩn: &nbsp;
	<p><a href="https://fptshop.com.vn/tin-tuc/danh-gia/chuan-ip67-la-gi-tim-hieu-ve-chuan-ip67-57846">IP67</a></p>
	</li>
	<li>Height (mm): &nbsp;
	<p>164.28</p>
	</li>
	<li>Chất liệu: &nbsp;
	<p>Khung kim loại &amp; Mặt lưng nhựa</p>
	</li>
	<li>Trọng lượng: &nbsp;
	<p>209 g</p>
	</li>
	<li>&nbsp;</li>
	<li>Series: &nbsp;
	<p>Galaxy A72</p>
	</li>
	<li>Thời gian bảo h&agrave;nh: &nbsp;
	<p>12 Th&aacute;ng</p>
	</li>
	<li>Xuất xứ: &nbsp;
	<p>Việt Nam</p>
	</li>
	<li>
	<p>&nbsp;</p>

	<p>Cảm biến</p>
	</li>
	<li>Cảm biến tiệm cận: &nbsp;
	<p>C&oacute;</p>
	</li>
	<li>Cảm biến la b&agrave;n: &nbsp;
	<p>Kh&ocirc;ng</p>
	</li>
	<li>Con quay hồi chuyển: &nbsp;
	<p>Kh&ocirc;ng</p>
	</li>
	<li>Cảm biến &aacute;nh s&aacute;ng: &nbsp;
	<p>C&oacute;</p>
	</li>
	<li>
	<p>Bảo mật</p>
	</li>
	<li>Mở kh&oacute;a v&acirc;n tay: &nbsp;
	<p>Kh&ocirc;ng</p>
	</li>
	<li>Nhận diện khu&ocirc;n mặt: &nbsp;
	<p>C&oacute;</p>
	</li>
	<li>Qu&eacute;t mống mắt: &nbsp;
	<p>Kh&ocirc;ng</p>
	</li>
	<li>Cảm biến v&acirc;n tay dưới m&agrave;n h&igrave;nh: &nbsp;
	<p>C&oacute;</p>
	</li>
	<li>Mở kh&oacute;a bằng mật m&atilde;: &nbsp;
	<p>C&oacute;</p>
	</li>
	<li>
	<p>Others</p>
	</li>
	<li>L&agrave;m m&aacute;t: &nbsp;
	<p>Kh&ocirc;ng</p>
	</li>
	<li>Th&ocirc;ng b&aacute;o LED: &nbsp;
	<p>Kh&ocirc;ng</p>
	</li>
	<li>&nbsp;</li>
	<li>Cảm biến trọng lực: &nbsp;
	<p>Kh&ocirc;ng</p>
	</li>
	<li>Hồng ngoại: &nbsp;
	<p>Kh&ocirc;ng</p>
	</li>
</ul>
', N'123', 10490000, 50, 9990000, N'Samsung Galaxy A72 ', N'Samsung Galaxy A72 ', 1, CAST(N'2021-03-31T16:33:58.000' AS DateTime), 21, CAST(N'2021-06-04T21:57:45.810' AS DateTime), 20, 5)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (52, N'Samsung Galaxy A51', N'samsung-galaxy-a51', 11, N'samsung-galaxy-a51.png', N'Samsung Galaxy A51', 1, 1, N'<table>
	<tbody>
		<tr>
			<td>M&agrave;n h&igrave;nh</td>
			<td>6.5&quot;, FHD+, Super AMOLED, 1080 x 2400 Pixel</td>
		</tr>
		<tr>
			<td>Camera sau</td>
			<td>64.0 MP + 12.0 MP + 5.0 MP + 5.0 MP</td>
		</tr>
		<tr>
			<td>Camera Selfie</td>
			<td>32.0 MP</td>
		</tr>
		<tr>
			<td>RAM&nbsp;</td>
			<td>8 GB</td>
		</tr>
		<tr>
			<td>Bộ nhớ trong</td>
			<td>128 GB</td>
		</tr>
		<tr>
			<td>CPU</td>
			<td>Snapdragon 720G</td>
		</tr>
		<tr>
			<td>GPU</td>
			<td>Adreno 618</td>
		</tr>
		<tr>
			<td>Dung lượng pin</td>
			<td>4500 mAh</td>
		</tr>
		<tr>
			<td>Thẻ sim</td>
			<td>2, Nano SIM</td>
		</tr>
		<tr>
			<td>Hệ điều h&agrave;nh</td>
			<td>Android 11</td>
		</tr>
		<tr>
			<td>Xuất xứ</td>
			<td>Việt Nam</td>
		</tr>
		<tr>
			<td>Thời gian ra mắt</td>
			<td>03/2021</td>
		</tr>
	</tbody>
</table>
', N'<ul>
	<li>
	<p>Th&ocirc;ng tin h&agrave;ng h&oacute;a</p>
	</li>
	<li>Thương hiệu: &nbsp;
	<p>Apple</p>
	</li>
	<li>Thời gian ra mắt: &nbsp;
	<p>04/2021</p>
	</li>
	<li>Series: &nbsp;
	<p>iPhone 12 mini</p>
	</li>
	<li>Thời gian bảo h&agrave;nh: &nbsp;
	<p>12 Th&aacute;ng</p>
	</li>
	<li>Xuất xứ: &nbsp;
	<p>Trung Quốc</p>
	</li>
	<li>
	<p>Thiết kế &amp; Trọng lượng</p>
	</li>
	<li>Width (mm): &nbsp;
	<p>64.2</p>
	</li>
	<li>Tỷ lệ diện t&iacute;ch sử dụng m&agrave;n h&igrave;nh: &nbsp;
	<p>--</p>
	</li>
	<li>Depth (mm): &nbsp;
	<p>7.4</p>
	</li>
	<li>Chuẩn kh&aacute;ng nước/ Bụi bẩn: &nbsp;
	<p><a href="https://fptshop.com.vn/tin-tuc/danh-gia/chuan-ip68-la-gi-khac-biet-gi-so-voi-ip67-57823">IP68</a></p>
	</li>
	<li>Height (mm): &nbsp;
	<p>131.5</p>
	</li>
	<li>Chất liệu: &nbsp;
	<p>Viền nh&ocirc;m, mặt lưng k&iacute;nh</p>
	</li>
	<li>Trọng lượng: &nbsp;
	<p>135 g</p>
	</li>
	<li>Cảm biến tiệm cận: &nbsp;
	<p>C&oacute;</p>
	</li>
	<li>Cảm biến la b&agrave;n: &nbsp;
	<p>C&oacute;</p>
	</li>
	<li>Con quay hồi chuyển: &nbsp;
	<p>C&oacute;</p>
	</li>
	<li>Cảm biến &aacute;nh s&aacute;ng: &nbsp;
	<p>C&oacute;</p>
	</li>
	<li>Cảm biến trọng lực: &nbsp;
	<p>C&oacute;</p>
	</li>
	<li>Hồng ngoại: &nbsp;
	<p>Kh&ocirc;ng</p>
	</li>
	<li>
	<p>Bảo mật</p>
	</li>
	<li>Mở kh&oacute;a v&acirc;n tay: &nbsp;
	<p>Kh&ocirc;ng</p>
	</li>
	<li>
	<p>Others</p>
	</li>
	<li>L&agrave;m m&aacute;t: &nbsp;
	<p>Kh&ocirc;ng</p>
	</li>
	<li>Th&ocirc;ng b&aacute;o LED: &nbsp;
	<p>Kh&ocirc;ng</p>
	</li>
	<li>
	<table>
	</table>

	<p>Phụ kiện trong hộp</p>

	<table>
		<tbody>
		</tbody>
	</table>

	<p><br />
	S&aacute;ch hướng dẫn sử dụng</p>

	<p>C&aacute;p</p>
	</li>
	<li>Nhận diện khu&ocirc;n mặt: &nbsp;
	<p>C&oacute;</p>
	</li>
	<li>Qu&eacute;t mống mắt: &nbsp;
	<p>Kh&ocirc;ng</p>
	</li>
	<li>Cảm biến v&acirc;n tay dưới m&agrave;n h&igrave;nh: &nbsp;
	<p>Kh&ocirc;ng</p>
	</li>
	<li>Mở kh&oacute;a bằng mật m&atilde;: &nbsp;
	<p>C&oacute;</p>
	</li>
</ul>
', N'123', 9290000, 50, 8590000, N'Samsung Galaxy A51', N'Đồng hồ Aries Gold AGG9001', 1, CAST(N'2021-03-31T16:34:58.000' AS DateTime), 21, CAST(N'2021-06-04T21:54:29.653' AS DateTime), 20, 0)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (53, N'Iphone 7 Plus 64GB', N'iphone-7-plus-64gb', 24, N'iphone-7-plus-64gb.jpg', N'Iphone 7 Plus 64GB', 1, 1, N'<table>
	<tbody>
		<tr>
			<td>M&agrave;n h&igrave;nh</td>
			<td>5.4&quot;, Super Retina XDR, AMOLED, 1080 x 2340 Pixel</td>
		</tr>
		<tr>
			<td>Camera sau</td>
			<td>12.0 MP + 12.0 MP</td>
		</tr>
		<tr>
			<td>Camera Selfie</td>
			<td>12.0 MP</td>
		</tr>
		<tr>
			<td>RAM&nbsp;</td>
			<td>4 GB</td>
		</tr>
		<tr>
			<td>Bộ nhớ trong</td>
			<td>64 GB</td>
		</tr>
		<tr>
			<td>CPU</td>
			<td>A14 Bionic</td>
		</tr>
		<tr>
			<td>GPU</td>
			<td>Apple GPU 4 nh&acirc;n</td>
		</tr>
		<tr>
			<td>Dung lượng pin</td>
			<td>2227 mAh</td>
		</tr>
		<tr>
			<td>Thẻ sim</td>
			<td>2, 1 eSIM, 1 Nano SIM</td>
		</tr>
		<tr>
			<td>Hệ điều h&agrave;nh</td>
			<td>iOS 14</td>
		</tr>
		<tr>
			<td>Xuất xứ</td>
			<td>Trung Quốc</td>
		</tr>
	</tbody>
</table>
', N'<ul>
	<li>
	<p>Th&ocirc;ng tin h&agrave;ng h&oacute;a</p>
	</li>
	<li>Thương hiệu: &nbsp;
	<p>Apple</p>
	</li>
	<li>Thời gian ra mắt: &nbsp;
	<p>04/2021</p>
	</li>
	<li>Series: &nbsp;
	<p>iPhone 12 mini</p>
	</li>
	<li>Thời gian bảo h&agrave;nh: &nbsp;
	<p>12 Th&aacute;ng</p>
	</li>
	<li>Xuất xứ: &nbsp;
	<p>Trung Quốc</p>
	</li>
	<li>
	<p>Thiết kế &amp; Trọng lượng</p>
	</li>
	<li>Width (mm): &nbsp;
	<p>64.2</p>
	</li>
	<li>Tỷ lệ diện t&iacute;ch sử dụng m&agrave;n h&igrave;nh: &nbsp;
	<p>--</p>
	</li>
	<li>Depth (mm): &nbsp;
	<p>7.4</p>
	</li>
	<li>Chuẩn kh&aacute;ng nước/ Bụi bẩn: &nbsp;
	<p><a href="https://fptshop.com.vn/tin-tuc/danh-gia/chuan-ip68-la-gi-khac-biet-gi-so-voi-ip67-57823">IP68</a></p>
	</li>
	<li>Height (mm): &nbsp;
	<p>131.5</p>
	</li>
	<li>Chất liệu: &nbsp;
	<p>Viền nh&ocirc;m, mặt lưng k&iacute;nh</p>
	</li>
	<li>Trọng lượng: &nbsp;
	<p>135 g</p>
	</li>
	<li>Cảm biến tiệm cận: &nbsp;
	<p>C&oacute;</p>
	</li>
	<li>Cảm biến la b&agrave;n: &nbsp;
	<p>C&oacute;</p>
	</li>
	<li>Con quay hồi chuyển: &nbsp;
	<p>C&oacute;</p>
	</li>
	<li>Cảm biến &aacute;nh s&aacute;ng: &nbsp;
	<p>C&oacute;</p>
	</li>
	<li>Cảm biến trọng lực: &nbsp;
	<p>C&oacute;</p>
	</li>
	<li>Hồng ngoại: &nbsp;
	<p>Kh&ocirc;ng</p>
	</li>
	<li>
	<p>Bảo mật</p>
	</li>
	<li>Mở kh&oacute;a v&acirc;n tay: &nbsp;
	<p>Kh&ocirc;ng</p>
	</li>
	<li>
	<p>Others</p>
	</li>
	<li>L&agrave;m m&aacute;t: &nbsp;
	<p>Kh&ocirc;ng</p>
	</li>
	<li>Th&ocirc;ng b&aacute;o LED: &nbsp;
	<p>Kh&ocirc;ng</p>
	</li>
	<li>
	<table>
	</table>

	<p>Phụ kiện trong hộp</p>

	<table>
		<tbody>
		</tbody>
	</table>

	<p><br />
	S&aacute;ch hướng dẫn sử dụng</p>

	<p>C&aacute;p</p>
	</li>
	<li>Nhận diện khu&ocirc;n mặt: &nbsp;
	<p>C&oacute;</p>
	</li>
	<li>Qu&eacute;t mống mắt: &nbsp;
	<p>Kh&ocirc;ng</p>
	</li>
	<li>Cảm biến v&acirc;n tay dưới m&agrave;n h&igrave;nh: &nbsp;
	<p>Kh&ocirc;ng</p>
	</li>
	<li>Mở kh&oacute;a bằng mật m&atilde;: &nbsp;
	<p>C&oacute;</p>
	</li>
</ul>
', N'123', 10900000, 50, 9900000, N'Iphone 7 Plus 64GB', N'Iphone 7 Plus 64GB', 1, CAST(N'2021-03-31T16:36:00.000' AS DateTime), 21, CAST(N'2021-06-04T21:49:13.957' AS DateTime), 20, 0)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (54, N'Iphone 8 Plus 64GB', N'iphone-8-plus-64gb', 23, N'iphone-8-plus-64gb.png', N'Iphone 8 Plus 64GB', 1, 1, N'<table>
	<tbody>
		<tr>
			<td>M&agrave;n h&igrave;nh</td>
			<td>5.4&quot;, Super Retina XDR, AMOLED, 1080 x 2340 Pixel</td>
		</tr>
		<tr>
			<td>Camera sau</td>
			<td>12.0 MP + 12.0 MP</td>
		</tr>
		<tr>
			<td>Camera Selfie</td>
			<td>12.0 MP</td>
		</tr>
		<tr>
			<td>RAM&nbsp;</td>
			<td>4 GB</td>
		</tr>
		<tr>
			<td>Bộ nhớ trong</td>
			<td>64 GB</td>
		</tr>
		<tr>
			<td>CPU</td>
			<td>A14 Bionic</td>
		</tr>
		<tr>
			<td>GPU</td>
			<td>Apple GPU 4 nh&acirc;n</td>
		</tr>
		<tr>
			<td>Dung lượng pin</td>
			<td>2227 mAh</td>
		</tr>
		<tr>
			<td>Thẻ sim</td>
			<td>2, 1 eSIM, 1 Nano SIM</td>
		</tr>
		<tr>
			<td>Hệ điều h&agrave;nh</td>
			<td>iOS 14</td>
		</tr>
		<tr>
			<td>Xuất xứ</td>
			<td>Trung Quốc</td>
		</tr>
		<tr>
			<td>Thời gian ra mắt</td>
			<td>04/2021</td>
		</tr>
	</tbody>
</table>
', N'<ul>
	<li>
	<p>Th&ocirc;ng tin h&agrave;ng h&oacute;a</p>
	</li>
	<li>Thương hiệu: &nbsp;
	<p>Apple</p>
	</li>
	<li>Thời gian ra mắt: &nbsp;
	<p>04/2021</p>
	</li>
	<li>Series: &nbsp;
	<p>iPhone 12 mini</p>
	</li>
	<li>Thời gian bảo h&agrave;nh: &nbsp;
	<p>12 Th&aacute;ng</p>
	</li>
	<li>Xuất xứ: &nbsp;
	<p>Trung Quốc</p>
	</li>
	<li>
	<p>Thiết kế &amp; Trọng lượng</p>
	</li>
	<li>Width (mm): &nbsp;
	<p>64.2</p>
	</li>
	<li>Tỷ lệ diện t&iacute;ch sử dụng m&agrave;n h&igrave;nh: &nbsp;
	<p>--</p>
	</li>
	<li>Depth (mm): &nbsp;
	<p>7.4</p>
	</li>
	<li>Chuẩn kh&aacute;ng nước/ Bụi bẩn: &nbsp;
	<p><a href="https://fptshop.com.vn/tin-tuc/danh-gia/chuan-ip68-la-gi-khac-biet-gi-so-voi-ip67-57823">IP68</a></p>
	</li>
	<li>Height (mm): &nbsp;
	<p>131.5</p>
	</li>
	<li>Chất liệu: &nbsp;
	<p>Viền nh&ocirc;m, mặt lưng k&iacute;nh</p>
	</li>
	<li>Trọng lượng: &nbsp;
	<p>135 g</p>
	</li>
	<li>Cảm biến tiệm cận: &nbsp;
	<p>C&oacute;</p>
	</li>
	<li>Cảm biến la b&agrave;n: &nbsp;
	<p>C&oacute;</p>
	</li>
	<li>Con quay hồi chuyển: &nbsp;
	<p>C&oacute;</p>
	</li>
	<li>Cảm biến &aacute;nh s&aacute;ng: &nbsp;
	<p>C&oacute;</p>
	</li>
	<li>Cảm biến trọng lực: &nbsp;
	<p>C&oacute;</p>
	</li>
	<li>Hồng ngoại: &nbsp;
	<p>Kh&ocirc;ng</p>
	</li>
	<li>
	<p>Bảo mật</p>
	</li>
	<li>Mở kh&oacute;a v&acirc;n tay: &nbsp;
	<p>Kh&ocirc;ng</p>
	</li>
	<li>
	<p>Others</p>
	</li>
	<li>L&agrave;m m&aacute;t: &nbsp;
	<p>Kh&ocirc;ng</p>
	</li>
	<li>Th&ocirc;ng b&aacute;o LED: &nbsp;
	<p>Kh&ocirc;ng</p>
	</li>
	<li>
	<table>
	</table>

	<p>Phụ kiện trong hộp</p>

	<table>
		<tbody>
		</tbody>
	</table>

	<p><br />
	S&aacute;ch hướng dẫn sử dụng</p>

	<p>C&aacute;p</p>
	</li>
	<li>Nhận diện khu&ocirc;n mặt: &nbsp;
	<p>C&oacute;</p>
	</li>
	<li>Qu&eacute;t mống mắt: &nbsp;
	<p>Kh&ocirc;ng</p>
	</li>
	<li>Cảm biến v&acirc;n tay dưới m&agrave;n h&igrave;nh: &nbsp;
	<p>Kh&ocirc;ng</p>
	</li>
	<li>Mở kh&oacute;a bằng mật m&atilde;: &nbsp;
	<p>C&oacute;</p>
	</li>
</ul>
', N'123', 1200000, 50, 1200000, N'Iphone 8 Plus 64GB', N'Iphone 8 Plus 64GB', 1, CAST(N'2021-03-31T16:48:15.000' AS DateTime), 21, CAST(N'2021-06-04T21:46:52.713' AS DateTime), 20, 0)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (55, N'Đồng hồ Philippe Auguste PA5002EiPhone 11 64GB', N'dong-ho-philippe-auguste-pa5002eiphone-11-64gb', 10, N'dong-ho-philippe-auguste-pa5002eiphone-11-64gb.png', N'iPhone 11 64GB', 1, 1, N'<table>
	<tbody>
		<tr>
			<td>M&agrave;n h&igrave;nh</td>
			<td>5.4&quot;, Super Retina XDR, AMOLED, 1080 x 2340 Pixel</td>
		</tr>
		<tr>
			<td>Camera sau</td>
			<td>12.0 MP + 12.0 MP</td>
		</tr>
		<tr>
			<td>Camera Selfie</td>
			<td>12.0 MP</td>
		</tr>
		<tr>
			<td>RAM&nbsp;</td>
			<td>4 GB</td>
		</tr>
		<tr>
			<td>Bộ nhớ trong</td>
			<td>64 GB</td>
		</tr>
		<tr>
			<td>CPU</td>
			<td>A14 Bionic</td>
		</tr>
		<tr>
			<td>GPU</td>
			<td>Apple GPU 4 nh&acirc;n</td>
		</tr>
		<tr>
			<td>Dung lượng pin</td>
			<td>2227 mAh</td>
		</tr>
		<tr>
			<td>Thẻ sim</td>
			<td>2, 1 eSIM, 1 Nano SIM</td>
		</tr>
		<tr>
			<td>Hệ điều h&agrave;nh</td>
			<td>iOS 14</td>
		</tr>
		<tr>
			<td>Xuất xứ</td>
			<td>Trung Quốc</td>
		</tr>
		<tr>
			<td>Thời gian ra mắt</td>
			<td>04/2021</td>
		</tr>
	</tbody>
</table>
', N'<ul>
	<li>
	<p>Th&ocirc;ng tin h&agrave;ng h&oacute;a</p>
	</li>
	<li>Thương hiệu: &nbsp;
	<p>Apple</p>
	</li>
	<li>Thời gian ra mắt: &nbsp;
	<p>04/2021</p>
	</li>
	<li>Series: &nbsp;
	<p>iPhone 12 mini</p>
	</li>
	<li>Thời gian bảo h&agrave;nh: &nbsp;
	<p>12 Th&aacute;ng</p>
	</li>
	<li>Xuất xứ: &nbsp;
	<p>Trung Quốc</p>
	</li>
	<li>
	<p>Thiết kế &amp; Trọng lượng</p>
	</li>
	<li>Width (mm): &nbsp;
	<p>64.2</p>
	</li>
	<li>Tỷ lệ diện t&iacute;ch sử dụng m&agrave;n h&igrave;nh: &nbsp;
	<p>--</p>
	</li>
	<li>Depth (mm): &nbsp;
	<p>7.4</p>
	</li>
	<li>Chuẩn kh&aacute;ng nước/ Bụi bẩn: &nbsp;
	<p><a href="https://fptshop.com.vn/tin-tuc/danh-gia/chuan-ip68-la-gi-khac-biet-gi-so-voi-ip67-57823">IP68</a></p>
	</li>
	<li>Height (mm): &nbsp;
	<p>131.5</p>
	</li>
	<li>Chất liệu: &nbsp;
	<p>Viền nh&ocirc;m, mặt lưng k&iacute;nh</p>
	</li>
	<li>Trọng lượng: &nbsp;
	<p>135 g</p>
	</li>
	<li>Cảm biến tiệm cận: &nbsp;
	<p>C&oacute;</p>
	</li>
	<li>Cảm biến la b&agrave;n: &nbsp;
	<p>C&oacute;</p>
	</li>
	<li>Con quay hồi chuyển: &nbsp;
	<p>C&oacute;</p>
	</li>
	<li>Cảm biến &aacute;nh s&aacute;ng: &nbsp;
	<p>C&oacute;</p>
	</li>
	<li>Cảm biến trọng lực: &nbsp;
	<p>C&oacute;</p>
	</li>
	<li>Hồng ngoại: &nbsp;
	<p>Kh&ocirc;ng</p>
	</li>
	<li>
	<p>Bảo mật</p>
	</li>
	<li>Mở kh&oacute;a v&acirc;n tay: &nbsp;
	<p>Kh&ocirc;ng</p>
	</li>
	<li>
	<p>Others</p>
	</li>
	<li>L&agrave;m m&aacute;t: &nbsp;
	<p>Kh&ocirc;ng</p>
	</li>
	<li>Th&ocirc;ng b&aacute;o LED: &nbsp;
	<p>Kh&ocirc;ng</p>
	</li>
	<li>
	<table>
	</table>

	<p>Phụ kiện trong hộp</p>

	<table>
		<tbody>
		</tbody>
	</table>

	<p><br />
	S&aacute;ch hướng dẫn sử dụng</p>

	<p>C&aacute;p</p>
	</li>
	<li>Nhận diện khu&ocirc;n mặt: &nbsp;
	<p>C&oacute;</p>
	</li>
	<li>Qu&eacute;t mống mắt: &nbsp;
	<p>Kh&ocirc;ng</p>
	</li>
	<li>Cảm biến v&acirc;n tay dưới m&agrave;n h&igrave;nh: &nbsp;
	<p>Kh&ocirc;ng</p>
	</li>
	<li>Mở kh&oacute;a bằng mật m&atilde;: &nbsp;
	<p>C&oacute;</p>
	</li>
</ul>
', N'123', 15500000, 50, 1530000, N'iPhone 11 64GB', N'iPhone 11 64GB', 1, CAST(N'2021-03-31T16:49:17.000' AS DateTime), 21, CAST(N'2021-06-04T21:43:10.527' AS DateTime), 20, 0)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (56, N'iPhone 12 Mini 64GB ', N'iphone-12-mini-64gb-', 9, N'iphone-12-mini-64gb-.png', N'iPhone 12 Mini 64GB ', 1, 1, N'<table>
	<tbody>
		<tr>
			<td>M&agrave;n h&igrave;nh</td>
			<td>5.4&quot;, Super Retina XDR, AMOLED, 1080 x 2340 Pixel</td>
		</tr>
		<tr>
			<td>Camera sau</td>
			<td>12.0 MP + 12.0 MP</td>
		</tr>
		<tr>
			<td>Camera Selfie</td>
			<td>12.0 MP</td>
		</tr>
		<tr>
			<td>RAM&nbsp;</td>
			<td>4 GB</td>
		</tr>
		<tr>
			<td>Bộ nhớ trong</td>
			<td>64 GB</td>
		</tr>
		<tr>
			<td>CPU</td>
			<td>A14 Bionic</td>
		</tr>
		<tr>
			<td>GPU</td>
			<td>Apple GPU 4 nh&acirc;n</td>
		</tr>
		<tr>
			<td>Dung lượng pin</td>
			<td>2227 mAh</td>
		</tr>
		<tr>
			<td>Thẻ sim</td>
			<td>2, 1 eSIM, 1 Nano SIM</td>
		</tr>
		<tr>
			<td>Hệ điều h&agrave;nh</td>
			<td>iOS 14</td>
		</tr>
		<tr>
			<td>Xuất xứ</td>
			<td>Trung Quốc</td>
		</tr>
		<tr>
			<td>Thời gian ra mắt</td>
			<td>04/2021</td>
		</tr>
	</tbody>
</table>

<ul>
	<li>&nbsp;</li>
</ul>
', N'<ul>
	<li>
	<p>Th&ocirc;ng tin h&agrave;ng h&oacute;a</p>
	</li>
	<li>Thương hiệu: &nbsp;
	<p>Apple</p>
	</li>
	<li>Thời gian ra mắt: &nbsp;
	<p>04/2021</p>
	</li>
	<li>Series: &nbsp;
	<p>iPhone 12 mini</p>
	</li>
	<li>Thời gian bảo h&agrave;nh: &nbsp;
	<p>12 Th&aacute;ng</p>
	</li>
	<li>Xuất xứ: &nbsp;
	<p>Trung Quốc</p>
	</li>
	<li>
	<p>Thiết kế &amp; Trọng lượng</p>
	</li>
	<li>Width (mm): &nbsp;
	<p>64.2</p>
	</li>
	<li>Tỷ lệ diện t&iacute;ch sử dụng m&agrave;n h&igrave;nh: &nbsp;
	<p>--</p>
	</li>
	<li>Depth (mm): &nbsp;
	<p>7.4</p>
	</li>
	<li>Chuẩn kh&aacute;ng nước/ Bụi bẩn: &nbsp;
	<p><a href="https://fptshop.com.vn/tin-tuc/danh-gia/chuan-ip68-la-gi-khac-biet-gi-so-voi-ip67-57823">IP68</a></p>
	</li>
	<li>Height (mm): &nbsp;
	<p>131.5</p>
	</li>
	<li>Chất liệu: &nbsp;
	<p>Viền nh&ocirc;m, mặt lưng k&iacute;nh</p>
	</li>
	<li>Trọng lượng: &nbsp;
	<p>135 g</p>
	</li>
	<li>Cảm biến tiệm cận: &nbsp;
	<p>C&oacute;</p>
	</li>
	<li>Cảm biến la b&agrave;n: &nbsp;
	<p>C&oacute;</p>
	</li>
	<li>Con quay hồi chuyển: &nbsp;
	<p>C&oacute;</p>
	</li>
	<li>Cảm biến &aacute;nh s&aacute;ng: &nbsp;
	<p>C&oacute;</p>
	</li>
	<li>Cảm biến trọng lực: &nbsp;
	<p>C&oacute;</p>
	</li>
	<li>Hồng ngoại: &nbsp;
	<p>Kh&ocirc;ng</p>
	</li>
	<li>
	<p>Bảo mật</p>
	</li>
	<li>Mở kh&oacute;a v&acirc;n tay: &nbsp;
	<p>Kh&ocirc;ng</p>
	</li>
	<li>
	<p>Others</p>
	</li>
	<li>L&agrave;m m&aacute;t: &nbsp;
	<p>Kh&ocirc;ng</p>
	</li>
	<li>Th&ocirc;ng b&aacute;o LED: &nbsp;
	<p>Kh&ocirc;ng</p>
	</li>
	<li>
	<table>
	</table>

	<p>Phụ kiện trong hộp</p>

	<table>
		<tbody>
		</tbody>
	</table>

	<p><br />
	S&aacute;ch hướng dẫn sử dụng</p>

	<p>C&aacute;p</p>
	</li>
	<li>Nhận diện khu&ocirc;n mặt: &nbsp;
	<p>C&oacute;</p>
	</li>
	<li>Qu&eacute;t mống mắt: &nbsp;
	<p>Kh&ocirc;ng</p>
	</li>
	<li>Cảm biến v&acirc;n tay dưới m&agrave;n h&igrave;nh: &nbsp;
	<p>Kh&ocirc;ng</p>
	</li>
	<li>Mở kh&oacute;a bằng mật m&atilde;: &nbsp;
	<p>C&oacute;</p>
	</li>
</ul>
', N'123', 1600000, 50, 1590000, N'iPhone 12 Mini 64GB ', N'iPhone 12 Mini 64GB ', 1, CAST(N'2021-03-31T16:50:20.000' AS DateTime), 21, CAST(N'2021-06-04T21:40:16.420' AS DateTime), 20, 0)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (57, N'Xiaomi Redmi Note 10s', N'xiaomi-redmi-note-10s', 25, N'xiaomi-redmi-note-10s.jpg', N'Xiaomi Redmi Note 10s', 1, 2, N'<table>
	<tbody>
		<tr>
			<th>CPU</th>
			<td>
			<p>MediaTek Helio G95</p>
			</td>
		</tr>
		<tr>
			<th>Camera ch&iacute;nh</th>
			<td>
			<p>4 cam (64MP + 8MP +2MP + 2MP)</p>
			</td>
		</tr>
		<tr>
			<th>Camera phụ</th>
			<td>
			<p>13MP</p>
			</td>
		</tr>
		<tr>
			<th>Hệ điều h&agrave;nh</th>
			<td>
			<p>Android 11, MIUI 12</p>
			</td>
		</tr>
		<tr>
			<th>K&iacute;ch thước m&agrave;n h&igrave;nh</th>
			<td>
			<p>6.43 inches</p>
			</td>
		</tr>
		<tr>
			<th>Độ ph&acirc;n giải m&agrave;n h&igrave;nh</th>
			<td>
			<p>Full HD+ (1080 x 2400 Pixels)</p>
			</td>
		</tr>
		<tr>
			<th>RAM</th>
			<td>
			<p>8Gb</p>
			</td>
		</tr>
		<tr>
			<th>Bộ nhớ trong</th>
			<td>
			<p><a href="https://clickbuy.com.vn/bo-nho-trong/128-gb/">128 GB</a></p>
			</td>
		</tr>
		<tr>
			<th>Dung lượng pin</th>
			<td>
			<p>Li-Po 5000mAh</p>
			</td>
		</tr>
	</tbody>
</table>
', N'<p>M&ocirc; tả sản phẩm:</p>

<p>M&aacute;y mới nguy&ecirc;n seal ch&iacute;nh h&atilde;ng DGW, IMEI tr&ugrave;ng hộp. Bảo h&agrave;nh ch&iacute;nh h&atilde;ng 18 th&aacute;ng, bao test 30 ng&agrave;y</p>
', N'123', 7254000, 30, 7254000, N'Xiaomi Redmi Note 10s', N'Xiaomi Redmi Note 10s', 1, CAST(N'2021-06-05T07:36:24.810' AS DateTime), 20, CAST(N'2021-06-05T07:36:56.527' AS DateTime), 20, 0)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by], [ProRate]) VALUES (58, N'Xiaomi Poco M3', N'xiaomi-poco-m3', 25, N'xiaomi-poco-m3.jpg', N'Xiaomi Poco M3', 1, 2, N'<h2>Th&ocirc;ng số kỹ thuật</h2>

<table>
	<tbody>
		<tr>
			<th>CPU</th>
			<td>
			<p>Qualcomm Snapdragon 662</p>
			</td>
		</tr>
		<tr>
			<th>Camera ch&iacute;nh</th>
			<td>
			<p>Triple cam (48MP + 2MP + 2MP)</p>
			</td>
		</tr>
		<tr>
			<th>Camera phụ</th>
			<td>
			<p>8 MP</p>
			</td>
		</tr>
		<tr>
			<th>Hệ điều h&agrave;nh</th>
			<td>
			<p>MIUI 11 &ndash; Android 10</p>
			</td>
		</tr>
		<tr>
			<th>K&iacute;ch thước m&agrave;n h&igrave;nh</th>
			<td>
			<p>6.53 inches</p>
			</td>
		</tr>
		<tr>
			<th>Độ ph&acirc;n giải m&agrave;n h&igrave;nh</th>
			<td>
			<p>FullHD+, 1080 x 2340 pixels</p>
			</td>
		</tr>
		<tr>
			<th>RAM</th>
			<td>
			<p>4GB</p>
			</td>
		</tr>
		<tr>
			<th>Bộ nhớ trong</th>
			<td>
			<p><a href="https://clickbuy.com.vn/bo-nho-trong/64-gb/">64 GB</a></p>
			</td>
		</tr>
		<tr>
			<th>Dung lượng pin</th>
			<td>
			<p>Li-Po 6000mAh</p>
			</td>
		</tr>
	</tbody>
</table>
', N'<p>M&ocirc; tả sản phẩm:</p>

<p>M&aacute;y mới nguy&ecirc;n seal ch&iacute;nh h&atilde;ng DGW, IMEI tr&ugrave;ng hộp. Bảo h&agrave;nh ch&iacute;nh h&atilde;ng 18 th&aacute;ng, bao test 30 ng&agrave;y</p>
', N'123', 3930000, 30, 3930000, N'Xiaomi Poco M3', N'Xiaomi Poco M3', 1, CAST(N'2021-06-05T07:37:56.000' AS DateTime), 20, CAST(N'2021-06-05T07:38:45.753' AS DateTime), 20, 0)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Sliders] ON 

INSERT [dbo].[Sliders] ([Id], [Name], [Link], [Position], [Img], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (2, N'Cay canh slider', N'cay-canh-slider', N'slideshow', N'cay-canh-slider.jpg', 1, CAST(N'2021-03-02T13:39:32.093' AS DateTime), 20, CAST(N'2021-03-31T16:38:27.623' AS DateTime), 21, 0)
INSERT [dbo].[Sliders] ([Id], [Name], [Link], [Position], [Img], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (3, N'slider cay canh 2', N'slider-cay-canh-2', N'slideshow', N'slider-cay-canh-2.jpg', 1, CAST(N'2021-03-02T13:43:37.430' AS DateTime), 20, CAST(N'2021-03-31T16:38:28.820' AS DateTime), 21, 0)
INSERT [dbo].[Sliders] ([Id], [Name], [Link], [Position], [Img], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (4, N'slider cay canh 3', N'slider-cay-canh-3', N'slideshow', N'slider-cay-canh-3.jpg', 1, CAST(N'2021-03-02T13:43:53.777' AS DateTime), 20, CAST(N'2021-03-31T16:38:30.197' AS DateTime), 21, 0)
INSERT [dbo].[Sliders] ([Id], [Name], [Link], [Position], [Img], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (5, N'slider watch site', N'slider-watch-site', N'slideshow', N'slider-watch-site.jpg', 2, CAST(N'2021-03-31T15:46:15.663' AS DateTime), 21, CAST(N'2021-06-04T21:03:18.247' AS DateTime), 20, 0)
INSERT [dbo].[Sliders] ([Id], [Name], [Link], [Position], [Img], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (6, N'banner 2', N'banner-2', N'slideshow', N'banner-2.jpg', 5, CAST(N'2021-03-31T16:38:46.437' AS DateTime), 21, CAST(N'2021-06-04T21:03:19.723' AS DateTime), 20, 0)
INSERT [dbo].[Sliders] ([Id], [Name], [Link], [Position], [Img], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (7, N'banner 3', N'banner-3', N'slideshow', N'banner-3.jpg', 5, CAST(N'2021-03-31T16:38:57.000' AS DateTime), 21, CAST(N'2021-06-04T21:03:20.723' AS DateTime), 20, 0)
INSERT [dbo].[Sliders] ([Id], [Name], [Link], [Position], [Img], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (8, N'1', N'1', N'slideshow', N'1.jpg', NULL, CAST(N'2021-06-04T21:03:28.413' AS DateTime), 20, CAST(N'2021-06-04T21:03:28.413' AS DateTime), 20, 1)
INSERT [dbo].[Sliders] ([Id], [Name], [Link], [Position], [Img], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (9, N'2', N'2', N'slideshow', N'2.jpg', 8, CAST(N'2021-06-04T21:03:36.863' AS DateTime), 20, CAST(N'2021-06-04T21:03:36.863' AS DateTime), 20, 1)
INSERT [dbo].[Sliders] ([Id], [Name], [Link], [Position], [Img], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (10, N'3', N'3', N'slideshow', N'3.jpg', 8, CAST(N'2021-06-04T21:03:46.083' AS DateTime), 20, CAST(N'2021-06-04T21:03:46.083' AS DateTime), 20, 1)
SET IDENTITY_INSERT [dbo].[Sliders] OFF
GO
SET IDENTITY_INSERT [dbo].[Topics] ON 

INSERT [dbo].[Topics] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (5, N'Thông tin web', N'thong-tin-web', 0, NULL, N'Về chúng tôi', N'Thông tin web', CAST(N'2021-04-14T17:50:17.140' AS DateTime), 27, CAST(N'2021-04-14T17:50:17.140' AS DateTime), 27, 1)
INSERT [dbo].[Topics] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (6, N'Tin tức', N'tin-tuc', 0, NULL, N'Tin tức', N'Tin tức', CAST(N'2021-05-27T16:21:44.650' AS DateTime), 20, CAST(N'2021-05-27T16:21:44.650' AS DateTime), 20, 1)
SET IDENTITY_INSERT [dbo].[Topics] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [FullName], [Name], [Password], [Email], [Gender], [Phone], [Address], [Image], [Access], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (20, N'Nguyễn Ngọc Huyền', N'admins', N'xMpCOKC5I4INzFCab3WEmw==', N'colennhe102@gmail.com', 1, 983487921, N'Lập Thạch_ Vĩnh Phúc', N'ngochuyen.png', 0, 1, CAST(N'2021-03-01T21:23:14.520' AS DateTime), 1, CAST(N'2021-03-01T21:23:14.520' AS DateTime), 1)
INSERT [dbo].[Users] ([ID], [FullName], [Name], [Password], [Email], [Gender], [Phone], [Address], [Image], [Access], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (21, N'Phương Nam', N'phuongnam', N'ICy5YqxZB1uWSwcVLSNLcA==', N'phuongnam@gmail.com', 1, 385699755, N'Văn trì, minh khai,bắc từ liêm ,hà nội', N'', 1, 1, CAST(N'2021-05-07T21:04:32.917' AS DateTime), 1, CAST(N'2021-05-07T21:04:32.920' AS DateTime), 1)
INSERT [dbo].[Users] ([ID], [FullName], [Name], [Password], [Email], [Gender], [Phone], [Address], [Image], [Access], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (22, N'Minh Hương', N'minhhuong', N'ICy5YqxZB1uWSwcVLSNLcA==', N'minhhuong@gmail.com', 1, 92470975, N'số 10 ngõ 25 Phú Minh Bắc Từ Liêm Hà Nội', N'', 1, 1, CAST(N'2021-05-07T21:05:34.200' AS DateTime), 1, CAST(N'2021-05-07T21:05:34.200' AS DateTime), 1)
INSERT [dbo].[Users] ([ID], [FullName], [Name], [Password], [Email], [Gender], [Phone], [Address], [Image], [Access], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (23, N'Ngọc Huyền', N'ngochuyen', N'ICy5YqxZB1uWSwcVLSNLcA==', N'ngochuyen@gmail.com', 1, 983487921, N'Văn trì, minh khai,bắc từ liêm ,hà nội', N'', 1, 1, CAST(N'2021-05-07T21:06:09.327' AS DateTime), 1, CAST(N'2021-05-07T21:06:09.327' AS DateTime), 1)
INSERT [dbo].[Users] ([ID], [FullName], [Name], [Password], [Email], [Gender], [Phone], [Address], [Image], [Access], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (24, N'Hương Lan', N'huonglan', N'ICy5YqxZB1uWSwcVLSNLcA==', N'huonglan@gmail.com', 1, 297565016, N'Trung cư Timecity 1 Hà Nội', N'', 1, 1, CAST(N'2021-05-07T21:06:54.560' AS DateTime), 1, CAST(N'2021-05-07T21:06:54.560' AS DateTime), 1)
INSERT [dbo].[Users] ([ID], [FullName], [Name], [Password], [Email], [Gender], [Phone], [Address], [Image], [Access], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (25, N'Nguyễn Ngọc Huyền', N'huyen2901', N'ICy5YqxZB1uWSwcVLSNLcA==', N'colennhe102@gmail.com', 2, 983487444, N'Văn trì, minh khai,bắc từ liêm ,hà nội', N'nguyen-ngoc-huyen.jpg', 0, 1, CAST(N'2021-05-07T21:29:24.637' AS DateTime), 20, CAST(N'2021-05-07T21:29:24.637' AS DateTime), 20)
INSERT [dbo].[Users] ([ID], [FullName], [Name], [Password], [Email], [Gender], [Phone], [Address], [Image], [Access], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (26, N'Vy Vy', N'vyvy', N'ICy5YqxZB1uWSwcVLSNLcA==', N'vyvy@gmail.com', 1, 28445551, N'Số 10 Hoàng Mai Hà Nội', N'', 1, 1, CAST(N'2021-05-27T16:09:04.837' AS DateTime), 1, CAST(N'2021-05-27T16:09:04.837' AS DateTime), 1)
INSERT [dbo].[Users] ([ID], [FullName], [Name], [Password], [Email], [Gender], [Phone], [Address], [Image], [Access], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (27, N'Tuấn Anh', N'anh', N'ICy5YqxZB1uWSwcVLSNLcA==', N'anh@gmail.com', 1, 983487765, N'Văn trì, minh khai,bắc từ liêm ,hà nội', N'', 1, 1, CAST(N'2021-05-28T08:05:04.023' AS DateTime), 1, CAST(N'2021-05-28T08:05:04.023' AS DateTime), 1)
INSERT [dbo].[Users] ([ID], [FullName], [Name], [Password], [Email], [Gender], [Phone], [Address], [Image], [Access], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (28, N'Tuấn Anh', N'anh', N'ICy5YqxZB1uWSwcVLSNLcA==', N'anh27@gmail.com', 1, 83255622, N'11 ngõ 25 Văn trì, minh khai,bắc từ liêm ,hà nội', N'', 1, 1, CAST(N'2021-05-28T08:05:28.930' AS DateTime), 1, CAST(N'2021-05-28T08:05:28.930' AS DateTime), 1)
INSERT [dbo].[Users] ([ID], [FullName], [Name], [Password], [Email], [Gender], [Phone], [Address], [Image], [Access], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (29, N'Minh Ánh', N'minhanh', N'ICy5YqxZB1uWSwcVLSNLcA==', N'minhanh@gmail.com', 1, 19375573, N'Vĩnh Phúc Lập Thạch', N'', 1, 1, CAST(N'2021-05-28T08:06:13.513' AS DateTime), 1, CAST(N'2021-05-28T08:06:13.513' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[ProductRate] ADD  CONSTRAINT [DF_ProductRate_Rate]  DEFAULT ((0)) FOR [Rate]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [ProRate]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [fk_orderDetails_order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [fk_orderDetails_order]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [fk_orders_users_ID] FOREIGN KEY([CustemerId])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [fk_orders_users_ID]
GO
ALTER TABLE [dbo].[Posts]  WITH CHECK ADD  CONSTRAINT [fk_poste_topicc] FOREIGN KEY([Topid])
REFERENCES [dbo].[Topics] ([Id])
GO
ALTER TABLE [dbo].[Posts] CHECK CONSTRAINT [fk_poste_topicc]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [fk_product_category] FOREIGN KEY([CateID])
REFERENCES [dbo].[Categorys] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [fk_product_category]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [fk_product_create] FOREIGN KEY([Created_by])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [fk_product_create]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [fk_product_update] FOREIGN KEY([Updated_by])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [fk_product_update]
GO
USE [master]
GO
ALTER DATABASE [QLBanDienThoai] SET  READ_WRITE 
GO
