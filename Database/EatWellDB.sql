USE [EatWellDB]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 23/6/2020 11:24:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](100) NOT NULL,
	[CategorySlug] [nvarchar](100) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Options]    Script Date: 23/6/2020 11:24:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Options](
	[OptionId] [int] IDENTITY(1,1) NOT NULL,
	[OptionName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Options] PRIMARY KEY CLUSTERED 
(
	[OptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 23/6/2020 11:24:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[ProductId] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC,
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 23/6/2020 11:24:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[OrderTotal] [int] NOT NULL,
	[OrderPhone] [nvarchar](20) NOT NULL,
	[OrderDate] [datetime] NULL,
	[IsCompleted] [bit] NOT NULL,
	[ShippingAddress] [nvarchar](max) NOT NULL,
	[OrderDescription] [ntext] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductOptions]    Script Date: 23/6/2020 11:24:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductOptions](
	[OptionId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Price] [int] NOT NULL,
 CONSTRAINT [PK_ProductOptions] PRIMARY KEY CLUSTERED 
(
	[OptionId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 23/6/2020 11:24:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[ProductName] [nvarchar](255) NOT NULL,
	[Photo] [nvarchar](255) NULL,
	[Description] [ntext] NULL,
	[ProductSlug] [nvarchar](255) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 23/6/2020 11:24:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](70) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[FullName] [nvarchar](max) NULL,
	[Password] [nvarchar](30) NOT NULL,
	[Address] [nvarchar](max) NULL,
	[Phone] [nvarchar](20) NULL,
	[IsAdmin] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategorySlug]) VALUES (1, N'Món Ăn Chơi', N'mon-an-choi')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategorySlug]) VALUES (2, N'Món Gỏi', N'mon-goi')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategorySlug]) VALUES (3, N'Món Súp', N'mon-sup')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategorySlug]) VALUES (4, N'Món Tôm', N'mon-tom')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategorySlug]) VALUES (5, N'Món Cá', N'mon-ca')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategorySlug]) VALUES (6, N'Món Gà', N'mon-ga')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategorySlug]) VALUES (7, N'Món Bò-Dê-Heo', N'mon-bo-de-heo')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategorySlug]) VALUES (8, N'Món Lẩu', N'mon-lau')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategorySlug]) VALUES (9, N'Món Cơm ', N'mon-com')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategorySlug]) VALUES (10, N'Món Tráng Miệng', N'mon-trang-mieng')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Options] ON 

INSERT [dbo].[Options] ([OptionId], [OptionName]) VALUES (1, N'Size Chuẩn')
INSERT [dbo].[Options] ([OptionId], [OptionName]) VALUES (2, N'Size Lớn')
SET IDENTITY_INSERT [dbo].[Options] OFF
INSERT [dbo].[OrderDetails] ([ProductId], [OrderId], [Price], [Quantity]) VALUES (2, 5, 190000, 2)
INSERT [dbo].[OrderDetails] ([ProductId], [OrderId], [Price], [Quantity]) VALUES (4, 3, 200000, 2)
INSERT [dbo].[OrderDetails] ([ProductId], [OrderId], [Price], [Quantity]) VALUES (4, 6, 200000, 2)
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderTotal], [OrderPhone], [OrderDate], [IsCompleted], [ShippingAddress], [OrderDescription]) VALUES (3, 1, 400000, N'033333333', CAST(N'2020-06-23T00:00:00.000' AS DateTime), 1, N'HCMC', N'test')
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderTotal], [OrderPhone], [OrderDate], [IsCompleted], [ShippingAddress], [OrderDescription]) VALUES (5, 2, 380000, N'035458898', CAST(N'2020-06-23T00:00:00.000' AS DateTime), 1, N'HCMC', N'nhanh')
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderTotal], [OrderPhone], [OrderDate], [IsCompleted], [ShippingAddress], [OrderDescription]) VALUES (6, 2, 400000, N'035646456', CAST(N'2020-06-21T00:00:00.000' AS DateTime), 1, N'HCMC', N'le')
SET IDENTITY_INSERT [dbo].[Orders] OFF
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 1, 190000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 2, 190000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 3, 180000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 4, 200000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 5, 390000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 6, 240000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 7, 490000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 8, 230000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 9, 230000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 10, 230000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 11, 230000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 12, 270000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 13, 290000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 14, 290000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 15, 180000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 16, 180000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 17, 180000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 18, 180000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 19, 290000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 20, 290000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 21, 290000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 22, 290000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 23, 290000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 24, 290000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 25, 290000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 26, 295000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 27, 320000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 28, 350000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 29, 390000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 30, 430000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 31, 430000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 32, 430000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 33, 430000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 34, 430000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 35, 430000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 36, 430000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 37, 430000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 38, 430000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 39, 590000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 40, 590000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 41, 590000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 42, 195000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 43, 140000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 44, 420000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 45, 420000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 46, 480000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 47, 480000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 48, 520000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 49, 520000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 50, 550000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 51, 550000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 52, 550000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 53, 210000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 54, 210000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 55, 230000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 56, 730000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 57, 175000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 58, 330000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 59, 490000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 60, 550000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 61, 550000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 62, 590000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 63, 590000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 64, 170000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 65, 170000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 66, 170000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 67, 170000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 68, 90000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 69, 170000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (1, 70, 150000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 1, 320000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 2, 320000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 3, 320000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 4, 350000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 5, 420000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 6, 420000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 7, 520000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 8, 420000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 9, 420000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 10, 420000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 11, 420000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 12, 480000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 13, 520000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 14, 520000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 15, 330000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 16, 330000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 17, 330000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 18, 330000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 19, 490000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 20, 490000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 21, 490000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 22, 490000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 23, 550000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 24, 550000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 25, 550000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 26, 320000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 27, 350000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 28, 390000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 29, 430000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 30, 590000)
GO
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 31, 590000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 32, 590000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 33, 590000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 34, 590000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 35, 590000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 36, 590000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 37, 590000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 38, 590000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 39, 740000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 40, 740000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 41, 740000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 42, 235000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 43, 270000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 44, 480000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 45, 480000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 46, 520000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 47, 520000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 48, 550000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 49, 550000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 50, 570000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 51, 570000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 52, 570000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 53, 380000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 54, 380000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 55, 420000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 56, 850000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 57, 2100000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 58, 400000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 59, 550000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 60, 590000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 61, 590000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 62, 630000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 63, 630000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 64, 290000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 65, 290000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 66, 290000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 67, 290000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 68, 120000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 69, 190000)
INSERT [dbo].[ProductOptions] ([OptionId], [ProductId], [Price]) VALUES (2, 70, 190000)
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (1, 1, N'CHẢ HOÀNG KIM', N'https://flyfood.vn/vnt_upload/product/01_2019/thumbs/370_crop_khai-vi-flyfood-2-trong-1-1_1.png', N'Chả Hoàng Kim là món đặc biệt với tên gọi và cách chế biến riêng của Flyfood. Món ăn đẹp mắt, chất lượng. Chả Hoàng Kim đã thể siện sự đẵng cấp của đầu bếp tài hoa, có thể chạm được cảm xúc của thực khách.', N'cha-hoang-kim', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (2, 1, N'HẢI SẢN TAM GIÁC VÀNG', N'https://flyfood.vn/vnt_upload/product/01_2019/thumbs/370_crop_hai-san-tam-giac-vang-flyfood-new-2.jpg', N'Hải Sản Tam Giác Vàng Món đặc biệt của Flyfood được gói hình Tam Giác bằng bánh bía đậu xanh với nhân bên trong gồm các loại Hải Sản tôm, mực, hạt bắp mĩ trộn Mayonnaise được lăn qua bột mì, nhúng qua trứng, lăn qua bột chiên xù. Sau đó, bỏ vào chảo dầu nóng và đem chiên lên Vàng giòn rụm.', N'hai-san-tam-giac-vang
', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (3, 1, N'THỊT HEO NƯỚNG LỤI- BÁNH HỎI', N'https://flyfood.vn/vnt_upload/product/04_2020/thumbs/370_crop_thit-heo-nuong-lui-banh-hoi-size-chuan-02_copy.jpg', N'Thịt Heo Xiên Nướng Lụi là một món ăn dân dã nhưng rất đậm đà hương vị. Thịt được chọn làm món này là thịt heo nạc dăm, loại thịt có phần mỡ và thịt xen lẫn vào nhau, được FLYFOOD tẩm ướp gia vị thơm ngon và nướng xém cạnh nhưng bên trong vẫn mọng nước, mềm mại ngon tuyệt với.', N'thit-heo-nuong-lui-banh-hoi', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (4, 1, N'CHẠO ỐC', N'https://flyfood.vn/vnt_upload/product/01_2019/thumbs/370_crop_chao-oc-flyfood-2.png', N'Khai vị, món Ốc đối với những khách sành ăn chắc không còn xa lạ nữa nhưng với món Chạo Ốc lại là một “ đặc sản” không đụng hàng mà Flyfood.vn vừa mới ra lò. Chạo ốc bao gốc sả là một món ăn tuyệt vời cho cả gia đình và bạn bè…', N'chao-oc', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (5, 1, N'KHAI VỊ EAT-WELL SONG HỶ', N'https://flyfood.vn/vnt_upload/product/01_2019/thumbs/370_crop_khai-vi-flyfood-2-trong-1-1_1.png', N'Khai Vị Flyfood Song Hỷ là sự kết hợp giữa 2 món Chả Hoàng Kim và món Hải Sản Tam Giác Vàng thơm ngon, giòn rụm. Món ăn khai vị phù hợp trong các bữa tiệc, đặc biệt tiệc cưới.', N'khai-vi-flyfood-song-hy', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (6, 1, N'CHẠO TÔM', N'https://flyfood.vn/vnt_upload/product/11_2019/thumbs/370_crop_chao-tom-flyfood-new-02.png', N'Chạo Tôm - Món ăn dân dã miền Nam dưới công thức chế biến đặc biệt của Flyfood sẽ đánh gục bạn ngay bởi mùi thơm ngậy từ thịt tôm hòa quyện cùng vị ngọt thanh của mía nướng. Một món khai vị nhẹ nhàng và lạ miệng cho bữa tiệc thêm vui.', N'chao-tom', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (7, 1, N'KHAI VỊ EAT-WELL TAM HỢP', N'https://flyfood.vn/vnt_upload/product/01_2019/thumbs/370_crop_khai-vi-flyfood-3-trong-1-1.png', N'Khai vị Flyfood Tam Hợp là sự kết hợp giữa 3 món chả hoàng kim, món chả mực và món hải sản tam giác vàng thơm ngon, giòn rụm. Món ăn khai vị phù hợp trong các bữa tiệc nhỏ trong gia đình và bạn bè.', N'khai-vi-eatwell-tam-hop', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (8, 2, N'GỎI CỦ HŨ DỪA TÔM THỊT', N'https://flyfood.vn/vnt_upload/product/05_2019/hinhmonan/thumbs/370__goi-cu-hu-dua-tom-thit-flyfood-2.png', N'Gỏi Củ Hũ Dừa là phần thân non rất trắng trên cùng của cây dừa. Đây là loại thực phẩm giàu dinh dưỡng và tốt cho sức khỏe. Củ hũ dừa được chế biến ra các món ăn thơm ngon như xào với thơm (dứa), ngâm xổi, canh nấu thịt, củ hũ dừa tôm thịt hoặc bóp gỏi.', N'goi-cu-hu-dua-tom-thit', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (9, 2, N'GỎI BÒ BÓP THẤU', N'https://flyfood.vn/vnt_upload/product/05_2019/hinhmonan/thumbs/370_crop_goi-bo-bop-thau-flyfood-3.png', N'Gỏi Bò Bóp Thấu là món ăn hấp dẫn với thịt bò tái chanh, kết hợp vị chua chua từ khế, vị hơi chát của chuối xanh, và mùi thơm từ hành sim hòa lẫn đậu phộng rang vàng.', N'goi-bo-bop-thau', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (10, 2, N'SALAD TÔM', N'https://flyfood.vn/vnt_upload/product/05_2019/thumbs/370__salad-tom-flyfood-1.png', N'Món Salad Tôm tuy đơn giản nhưng lại ngon miệng. Thời gian chế biến cũng khá nhanh đủ để giữ nguyên cho bạn cảm giác tươi giòn và tự nhiên khi thưởng thức. Món Salad Tôm thanh đạm và đầy màu sắc, không chỉ ngon miệng mà còn rất bổ dưỡng. Khi thưởng thức, món salad tôm tưởng như quen thuộc lại khá lạ với cái vị thanh dịu của rau xà lách, bắp cải tím, cà chua và tôm thịt lẫn trong cái béo béo của sốt Mayonnaise sần sật của trứng cá muối. Hương dầu mè thơm phức cũng khiến cho món  Salad Tôm thêm phần kích thích và hấp dẫn.', N'salad-tom', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (11, 2, N'SALAD CÁ NGỪ', N'https://flyfood.vn/vnt_upload/product/03_2018/thumbs/370__AVT.png', N'Món salad cá ngừ tuy khá đơn giản và quen thuộc với mọi người nhưng với cách chế biến sáng tạo và độc đáo hơn món salad này sẽ khiến bạn "phải lòng" ngay từ lần ăn đầu tiên. Vị béo của cá ngừ, hòa quyện hài hòa với salad dầu giấm và cà chua tươi mát kèm với vị chua ngọt thật thanh của nước sốt dầu dấm, tất cả làm cho món salad trở nên kích thích , hấp dẫn không cưỡng lại được. ', N'salad-ca-ngu', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (12, 2, N'GỎI BÒ NGŨ SẮC', N'https://flyfood.vn/vnt_upload/product/05_2019/hinhmonan/thumbs/370__goi-bo-ngu-sac-flyfood-01.png', N'Gỏi Bò Ngũ Sắc với 5 màu chủ đạo là tím, đỏ, xanh, trắng, vàng của 5 loại rau củ là bắp cải tím, cà rốt, dưa leo, củ cải và bắp chuối, gỏi ngũ sắc đã trở thành một món ăn ngon không chỉ có cả hương, sắc, vị mà còn rất tốt cho sức khỏe bởi chứa nhiều chất sơ cùng vitamin từ các loại rau củ xanh tươi.', N'goi-bo-ngu-sac', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (13, 2, N'GỎI GÂN BÒ', N'https://flyfood.vn/vnt_upload/product/05_2019/thumbs/370__goi-gan-bo-flyfood-1_1.jpg', N'Gỏi Gân Bò được làm mềm không quá dai, trộn lẫn với củ hành tây sắt sợi, ớt sắt sợi, rau râm, khế xanh sắt mỏng, mè. Tất cả được phối trộn với gia vị tạo nên món gỏi gân bò giòn giòn mê đắm lòng người.', N'goi-gan-bo', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (14, 2, N'GỎI MỰC THÁI', N'https://flyfood.vn/vnt_upload/product/05_2019/hinhmonan/thumbs/370__goi-muc-thai-flyfood-02.png', N'Gỏi mực kiểu thái mang đậm hương vị đặc trưng của cách chế biến. Cái tên có thể làm ta cảm nhận được đầy đủ vị chua cay của chanh ớt, vị ngọt dai của mực, độ thanh của rau củ.', N'goi-muc-thai', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (15, 3, N'SÚP ĐÔNG CÔ GÀ XÉ', N'https://flyfood.vn/vnt_upload/product/05_2019/hinhmonan/thumbs/370__sup-dong-co-ga-xe-flyfood-1.png', N'Soup Đông Cô Gà Xé Tiệc Trọn Gói sẽ cho chúng ta một món ăn khai vị nhẹ nhàng trong mỗi bữa tiệc. Món soup được nhiều thực khách ưa chuộng, với vị ngọt đậm đà từ thịt gà kết hợp với vị ngọt thanh tao của nấm đông cô khiến món soup không bị ngán, nước soup nhẹ nhàng giúp dạ dày dễ tiêu hóa và tạo cảm giác ăn ngon miệng hơn.', N'sup-dong-co-ga-xe', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (16, 3, N'SÚP NGỌC BÍCH', N'https://flyfood.vn/vnt_upload/product/11_2017/thumbs/370__sup-ngoc-bich-flyfood-new-3.png', N'Súp Ngọc Bích Tiệc Trọn Gói Flyfood, món khai vị "quý phái", nguyên liệu khá "sang chảnh": Nước ép cải bó xôi, viên tôm thịt, nấm tuyết, hạt bắp, trứng gà. Món khai vị được chuộng nhiều trong tiệc cưới, càng chứng minh cho sự sang trọng của món này.', N'sup-ngoc-bich', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (17, 3, N'SÚP SÒ ĐIỆP TÓC TIÊN', N'https://flyfood.vn/vnt_upload/product/05_2019/hinhmonan/thumbs/370__sup-so-diep-toc-tien-flyfood-1_1.jpg', N'Súp Sò Điệp Tóc Tiên với sò điệp là thành phần chính của món soup này nhưng chính tóc tiên mới tạo nên được sự đặc trưng về màu sắc và mùi vị của món, làm cho món soup sò điệp bổ dưỡng thêm phần bắt mắt hơn.', N'sup-so-diep-toc-tien', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (18, 3, N'SÚP HẢI SẢN', N'https://flyfood.vn/vnt_upload/product/05_2019/hinhmonan/thumbs/370__sup-hai-san-flyfood-1_1.png', N'Súp hải sản được xem là món khai vị  tốt cho dạ day cũng như bổ sung dưỡng chất cho cơ thể. Một chén súp nóng hổi, thơm lừng sẽ giúp bạn bổ sung nhiều năng lượng, chống lại bệnh tật hiệu quả. ', N'sup-hai-san', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (19, 4, N'TÔM SÚ HẤP BIA', N'https://flyfood.vn/vnt_upload/product/05_2019/hinhmonan/thumbs/370__tom-su-hap-bia-flyfood-3.jpg', N'Tôm sú hấp bia món ăn mang đến cho bạn một món ăn cực kì thơm ngon và hấp dẫn. Hương bia thơm nồng hòa quyện cùng với tôm tươi, các loại gia vị tẩm ướp làm cho món tôm thêm đậm đà, ngon ngọt.', N'tom-su-hap-bia', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (20, 4, N'TÔM SÚ HẤP NƯỚC DỪA', N'https://flyfood.vn/vnt_upload/product/05_2019/hinhmonan/thumbs/370__tom-su-hap-nuoc-dua-flyfood-2.jpg', N'Tôm Sú Hấp Nước Dừa được xếp vào nhóm thực đơn mới lạ với nguyên liệu là tôm sú tươi còn nguyên vỏ kết hợp với hấp nước dừa tạo nên món ăn sang trọng, bổ dưỡng.', N'tom-su-hap-nuoc-dua', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (21, 4, N'TÔM SÚ RANG MUỐI HONG KONG', N'https://flyfood.vn/vnt_upload/product/04_2019/thumbs/370__tom-su-rang-muoi-hong-kong-flyfood-03.jpg', N'Món tôm sú rang muối Hong Kong là những con tôm sú có kích cỡ to đồng đều nhau, giữ nguyên phần vỏ rang muối với gia vị nêm nếm đậm phong cách Hong Kong tạo nên sự mới lạ cho thực khách.', N'tom-su-rang-muoi-hong-kong', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (22, 4, N'TÔM SÚ Ủ MUỐI', N'https://flyfood.vn/vnt_upload/product/05_2019/hinhmonan/thumbs/370__tom-su-u-muoi-flyfood-02.png', N'Tôm Sú Ủ Muối là đặc sản truyền thống của người dân miền biển. Tôm sú sống ở vùng nước lợ giáp giữa sông với biển. Tôm được vùi trong muối, cuốn trong giấy bạc, đốt nóng. Sức nóng của muối làm chín tôm, đồng thời vị mặn của muối thắm vào tôm, giúp tôm săn chắc, ngọt mềm nhưng không khô, đó là nét đặc trưng của món này', N'tom-su-u-muoi', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (23, 4, N'TÔM SÚ CÀ RI', N'https://flyfood.vn/vnt_upload/product/04_2019/thumbs/370__tom-su-sot-cari-4.jpg', N'Cà ri kết hợp với hải sản tôm tạo thành món Cà Ri Tôm thật sự là món ăn mới lạ, sáng tạo và hấp dẫn.', N'tom-su-ca-ri', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (24, 4, N'TÔM SÚ HOÀNG KIM', N'https://flyfood.vn/vnt_upload/product/12_2018/thumbs/370__tom-su-sot-hoang-kim-flyfood-500x500-1.jpg', N'Những con tôm sú có kích cỡ to đồng đều nhau, giữ nguyên phần vỏ, kết hợp với nước sốt Hoàng Kim đặc biệt Flyfood tạo nên món Tôm Sú Sốt Hoàng Kim hấp dẫn. Món này sẽ làm cho bàn tiệc của bạn thêm tưng bừng đấy!', N'tom-su-hoang-kim', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (25, 4, N'TÔM SÚ SỐT ME', N'https://flyfood.vn/vnt_upload/product/12_2018/thumbs/370__tom-su-sot-me-flyfood-500X500-1.jpg', N'Món Tôm Sú Sốt Me là sự kết hợp hương vị hoàn hảo giữa vị ngọt thơm của tôm với vị chua chua đặc trưng của sốt me tạo nên món ăn thơm ngon, hấp dẫn vị giác. Món ăn này sẽ là lựa chọn tuyệt vời cho bàn tiệc thêm tưng bừng đấy.', N'tom-su-sot-me', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (26, 5, N'RIÊU CÁ CHÉP', N'https://flyfood.vn/vnt_upload/product/03_2020/thumbs/370__rieu-ca-chep-flyfood-01.jpg', N'Cá chép là một trong những thực phẩm giàu dinh dưỡng và rất tốt cho sức khỏe. Rất nhiều món ngon được chế biến từ cá chép, nhưng trong đó nổi bật và độc đáo nhất có lẽ chính là món riêu cá chép.Cá chép 1kg được chiên sơ và nấu riêu với nước mẻ và mùi đặc trưng của lá thì là. Món ăn kèm với bún tươi, thích hợp cho bữa ăn 3 người như bữa ăn chính.', N'rieu-ca-chep', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (27, 5, N'CÁ LÓC QUAY ME', N'https://flyfood.vn/vnt_upload/product/11_2019/thumbs/370_ca_loc_quay_me_flyfood_081.png', N'Món Cá Lóc Quay Me áp dụng kỹ thuật quay cùng với nước sốt me chua ngọt đặc biệt hiếm có. Cá lóc quay dùng cùng với bánh hỏi và rau sống, phù hợp cho mọi hình thức sử dụng: bữa trưa văn phòng, bữa tối gia đình, các loại tiệc lớn nhỏ.', N'ca-loc-quay-me-eatwell', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (28, 5, N'CÁ DIÊU HỒNG SỐT CHANH DÂY', N'https://flyfood.vn/vnt_upload/product/05_2019/hinhmonan/thumbs/370__ca-dieu-hong-sot-chanh-day-flyfood-new-4.png', N'Cá Diêu Hồng Sốt Chanh Dây Flyfood, Cá diêu hồng quen thuộc nhưng chế biến cầu kỳ, cùng với nguyên liệu hấp dẫn "chanh dây" tạo món Cá Diêu Hồng Sốt Chanh Dây sang trọng, thu hút và cực kỳ ngon miệng bởi mùi thơm đặc trưng và vị chua ngọt tuyệt hảo.', N'ca-dieu-hong-sot-chanh-day', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (29, 5, N'CÁ TAI TƯỢNG BÔNG XÙ EATWELL - KHÔNG CHIÊN DẦU', N'https://flyfood.vn/vnt_upload/product/03_2020/thumbs/370__CA-TAI-TUONG-CHIEN-XU-04-min.jpg', N'Món Cá Tai Tượng Chiên xù giòn rụm, được giữ định hình từng cái vảy, cái vi, cái kỳ con cá đến tận nơi bạn. Món đặc sản miền Tây, cuốn bánh tráng với rau sống chấm mắm nêm hoặc mắm chua ngọt, tuyệt vời không thể tả, cho mọi hoàng cảnh, mọi nơi các bạn nhé!', N'ca-tai-tuong-chien-xu', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (30, 5, N'LẨU CHÁO CÁ LÓC MIỀN TÂY', N'https://flyfood.vn/vnt_upload/product/07_2019/thumbs/370__chao-ca-loc-mien-tay-flyfood-09.jpg', N'Cháo được nấu với cá lóc, thịt heo xay nấm rơm và gạo nàng hương. Mùi vị gừng không chỉ làm mất mùi tanh của cá mà còn tạo sự ấm áp thu hút bất kỳ ai khi ngửi được món ăn từ xa. Cá lóc được xử lý đặc biệt không hề có mùi tanh đến miếng cuối cùng.', N'lau-chao-ca-loc-mien-tay', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (31, 5, N'CÁ CHẼM CHƯNG TƯƠNG - CUỐN BÁNH TRÁNH', N'https://flyfood.vn/vnt_upload/product/07_2019/thumbs/370__ca-chem-chung-tuong-flyfood-03.png', N'Món cá chưng tương (tương hột) là món ăn phổ biến miền Tây Việt Nam. Ủ tương từ đậu nành cùng với muối và mật đường mía. Tương hột thật ngon, ướp vào cá cho thấm đều, cùng với các nguyên liệu như: nấm mèo, bún tàu, rau cần,… hấp cách thủy. Món ăn thuần Việt có ngoại hình gần giống các món cá hấp Trung Hoa. Vị đặc trưng của món này là vị tương, hơi ngọt hơn các món cá hấp khác', N'ca-chem-chung-tuong-cuon-banh-tranh', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (32, 5, N'CÁ CHẼM HẤP HONGKONG - CUỐN BÁNH TRÁNG', N'https://flyfood.vn/vnt_upload/product/07_2019/thumbs/370__ca-chem-hap-hongkong2-02.jpg', N'Cá Chẽm hay còn gọi là cá Vược, loài cá này sống vùng nước lợ và hiện nay được nuôi bè khắp các vùng miền Việt Nam. Cá da đen, thịt trắng, dai và ngọt. So với cá Mú thì chất lượng cá Chẽm không sánh bằng nhưng cũng thuộc loại ngon, đắt tiền và sang trong cho những bữa tiệc.', N'ca-chem-hap-hongkong-cuon-banh-trang', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (33, 5, N'CÁ CHẼM HẤP TÀU XÌ - CUỐN BÁNH TRÁNG', N'https://flyfood.vn/vnt_upload/product/07_2019/thumbs/370__ca-chem-hap-tau-xi-flyfood-04.png', N'Eat-well giao đến quý khách món ăn đã thành phẩm 100%, trong hộp chuyên dụng. Đối với món này quý khách nên ăn nóng trên dĩa inox và bếp làm nóng. Trường hợp không có dĩa inox, Quý khách nên để nguyên giấy bạc, làm nóng trực tiếp trước khi xé giấy bạc ra.', N'ca-chem-hap-tau-xi-cuon-banh-trang', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (34, 5, N'CÁ CHẼM HẤP THƯỢNG HẢI - CUỐN BÁNH TRÁNG', N'https://flyfood.vn/vnt_upload/product/07_2019/thumbs/370__ca-chep-hap-thuong-hai-flyfood-04.png', N'Thượng Hải là một trong những đô thị sầm uất nhất Trung Quốc, dẫn đầu cả nước về tốc độ phát triển và sự giao thoa văn hóa, trong đó ẩm thực Thượng Hải tiêu biểu về trình độ ẩm thực và phong cách hòa quyện nhiều vùng miền. Tuy nhiên, phong cách ẩm thực vẫn mang nét đặc trưng riêng của văn hóa Phương Đông.', N'ca-chem-hap-thuong-hai-cuon-banh-trang', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (35, 5, N'CÁ CHẼM HẤP TRIỀU CHÂU - CUỐN BÁNH TRÁNG', N'https://flyfood.vn/vnt_upload/product/07_2019/thumbs/370__ca-chem-hap-trieu-chau-flyfood-02.png', N'Triều Châu là thành phố ven biển. Vì vậy, món ăn nổi tiếng với hải sản và nguyên liệu tươi. Theo thói quen ẩm thực, hải sản phải được chế biến, không ăn sống như người Nhật. Kỹ thuật chế biến thức ăn đạt đến trình độ tất cả mùi vị đều toát ra. Đặc biệt, món Triều Châu chú trọng tới các rau củ ngọt, lấy chất ngọt từ thực vật như khoai lang, khoai môn, bí đỏ, ngân hạnh, hạt sen, cam, củ cải trắng và các loại đậu.', N'ca-chem-hap-trieu-chau-cuon-banh-trang', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (36, 5, N'CÁ BỐNG MÚ CHƯNG TƯƠNG - CUỐN BÁNH TRÁNG', N'https://flyfood.vn/vnt_upload/product/07_2019/thumbs/370__ca-bong-mu-chung-tuong-flyfood-02.png', N'Đây là loài cá sống nước mặn, thịt trắng, dai, chắt, rất ngọt,… được xếp vào loại cá đắt tiền thượng lưu. Cá Mú được dùng cho các món hấp phổ biến nhất hiện nay trong các nhà hàng đó cá Mú Đen – loại cá mú có thể nuôi được nhiều vùng biễn Việt Nam. Cá Mú Đen thường được chọn có trọng lượng từ 1kg – 1,2kg là loại cá cho thịt ngon nhất. Cá lớn hơn thường không ưu chuộng và giá hơi rẻ hơn. Trong thực đơn tiệc hạng sang hoặc các buổi tiệc gia đình, dùng cá Mú thể hiện sự sang trọng và hiếu khách của Gia Chủ, đồng thời đem lại chất lượng thật sự cho bữa ăn bởi dinh dưỡng của cá Mú rất lớn.', N'ca-bong-mu-chung-tuong-cuon-banh-trang', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (37, 5, N'CÁ BỐNG MÚ HẤP HONGKONG - CUỐN BÁNH TRÁNG', N'https://flyfood.vn/vnt_upload/product/07_2019/thumbs/370__ca-bong-mu-hap-hongkong-01.png', N'Ẩm thực Hồng Kông chủ yếu chịu ảnh hưởng của ẩm thực Quảng Đông, ẩm thực Trung Hoa không phải Quảng Đông (đặc biệt là Triều Châu, Khách Gia, Phúc Kiến và Giang Tô & Chiết Giang), thế giới phương Tây, Nhật Bản và khu vực Đông Nam Á, do quá khứ của Hồng Kông như là một thuộc địa của Anh và dài lịch sử là một thành phố thương mại quốc tế. Từ các quầy hàng bên đường để các nhà hàng cao cấp nhất, Hong Kong cung cấp một loạt không giới hạn các món ăn của mọi tầng lớp. Sự kết hợp phức tạp và trình độ chế biến thực phẩm của các đầu bếp Hong Kong đã mang lại cho Hồng Kông danh hiệu uy tín "Thiên đường của người sàn ăn" và "Hội chợ Thực phẩm Thế giới"', N'ca-bong-mu-hap-hongkong-cuon-banh-trang', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (38, 5, N'CÁ BỐNG MÚ HẤP TÀU XÌ - CUỐN BÁNH TRÁNG', N'https://flyfood.vn/vnt_upload/product/07_2019/thumbs/370__ca-bong-mu-hap-tau-xi-flyfood-05.png', N'Tàu xì (hay còn gọi là đậu mặn) là món ăn có nguồn gốc từ người Hoa. Món ăn này đã du nhập vào Đầm Hà, Quảng Ninh từ nhiều thập kỷ trước và được người dân nơi đây “Việt hóa”, trở thành món ăn truyền thống của người Đầm Hà. Vào những ngày hè nóng bức, được thưởng thức một bát cháo trắng kèm với thịt kho tàu xì đậm đà hương vị vùng quê sẽ khó ai có thể kìm lòng. Món ăn này tuy dân dã nhưng mang hương vị đặc trưng không đâu có được. Tàu xì gồm 2 nguyên liệu chính, là: Đậu tương đen và muối trắng hạt to. Trước tiên chọn đậu tương đen, sau đó đem luộc chừng hơn 1 tiếng. Khi mùi thơm của đậu lan tỏa và nếm thử nếu hạt đậu đã bở thì đổ ra thúng để cho ráo nước. Sau đó trãi đậu ra nia, phủ kín bằng một lớp vải mềm, ủ khoảng 5-7 ngày cho lên men. Khi đậu đã lên men, đem phơi khô, dùng tay vò sạch lớp men bám trên đậu và rửa lại bằng nước sạch, sau đó trộn cùng với muối trắng và ủ khoảng 1-2 ngày là sử dụng được. Thường cứ 1kg đậu tương ứng với 2 lạng muối, như vậy tàu xì sẽ có đủ độ mặn và mềm, để được lâu hơn.', N'ca-bong-mu-hap-tau-xi-cuon-banh', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (39, 5, N'CÁ BỐNG MÚ HẤP THƯỢNG HẢI - CUỐN BÁNH TRÁNG', N'https://flyfood.vn/vnt_upload/product/07_2019/thumbs/370__ca-bong-mu-hap-thuong-hai-flyfood-02.png', N'Thượng Hải là một trong những đô thị sầm uất nhất Trung Quốc, dẫn đầu cả nước về tốc độ phát triển và sự giao thoa văn hóa, trong đó ẩm thực Thượng Hải tiêu biểu về trình độ ẩm thực và phong cách hòa quyện nhiều vùng miền. Tuy nhiên, phong cách ẩm thực vẫn mang nét đặc trưng riêng của văn hóa Phương Đông.', N'ca-bong-mu-hap-thuong-hai-cuon-banh-trang', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (40, 5, N'CÁ BỐNG MÚ HẤP TRIỀU CHÂU - CUỐN BÁNH TRÁNG', N'https://flyfood.vn/vnt_upload/product/08_2019/thumbs/370__ca-bong-mu-hap-trieu-chau-03.png', N'Triều Châu là thành phố ven biển. Vì vậy, món ăn nổi tiếng với hải sản và nguyên liệu tươi. Theo thói quen ẩm thực, hải sản phải được chế biến, không ăn sống như người Nhật. Kỹ thuật chế biến thức ăn đạt đến trình độ tất cả mùi vị đều toát ra. Đặc biệt, món Triều Châu chú trọng tới các rau củ ngọt, lấy chất ngọt từ thực vật như khoai lang, khoai môn, bí đỏ, ngân hạnh, hạt sen, cam, củ cải trắng và các loại đậu.', N'ca-bong-mu-hap-trieu-chau-cuon-banh-trang', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (41, 5, N'LẨU CHÁO CÁ BỐNG MÚ', N'https://flyfood.vn/vnt_upload/product/07_2019/thumbs/370__chao-ca-bong-mu-flyfood-01.jpg', N'Cháo Cá Miền Tây là món ăn đặc sản mang hương vị miền Tây thơm ngon không thể lẫn vào đâu được, có tính giải nhiệt và giàu dinh dưỡng tốt cho sức khỏe của người dùng. Cháo được nấu với cá bống mú, thịt heo xay nấm rơm và gạo nàng hương. Mùi vị gừng không chỉ làm mất mùi tanh của cá mà còn tạo sự ấm áp thu hút bất kỳ ai khi ngửi được món ăn từ xa. Cá bống mú được xử lý đặc biệt không hề có mùi tanh đến miếng cuối cùng. Ăn kèm rau đắng, cải bẹ xanh có tính mát, giải nhiệt, có thể ăn thêm cùng trứng cút sống hoặc trứng vịt lộn sống (có phụ thu: trứng vịt lộn 60.000đ/vỉ 6 trứng, trứng cút 40.000đ/1 vỉ 30 trứng).', N'lau-chao-ca-bong-mu', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (42, 6, N'GÀ QUAY EATWELL', N'https://flyfood.vn/vnt_upload/product/04_2020/thumbs/370__ga-quay-flyfood-02.jpg', N'Gà được quay trong lò quay chuyên dụng, tuyệt đối không xối dầu hoặc chiên trong dầu. Trong bụng gà có nấm mèo và nấm đông cô. Gà ăn kèm với rau răm, dưa leo, cà chua, chấm với nước chấm riêng.', N'ga-quay-eatwell', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (43, 6, N'ĐÙI GÀ SỐT BBQ - XÔI GẤC', N'https://flyfood.vn/vnt_upload/product/03_2020/thumbs/370__dui-ga-nuong-sot-bbq-flyfood-03-min.jpg', N'Đùi Gà- nướng sốt BBQ + Xôi tím độc đáo. Thịt gà đùi vàng ươm. Kích thích mọi giác quan của bạn, sẽ làm bạn bị yêu ngay từ cái nhìn đầu tiên.', N'dui-ga-sot-bbq-xoi-gac', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (44, 6, N'GÀ BÓ XÔI TRUYỀN THỐNG EATWELL', N'https://flyfood.vn/vnt_upload/product/01_2019/thumbs/370__ga-bo-xoi-truyen-thong-flyfood-1.png', N'Gà Bó Xôi Truyền Thống sử dụng là gà mái nòi, loại cao cấp nhất của gà ta do chính Flyfood kết hợp với người dân nuôi tại Bến Tre theo kỹ thuật riêng để thị gà ngon nhất chưa từng có. Gà tẩm ướp đặc biệt, hấp cách thuỷ tạo món gà độc đáo.', N'ga-bo-xoi-truyen-thong', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (45, 6, N'GÀ TA HẤP CÁCH THỦY', N'https://flyfood.vn/vnt_upload/product/05_2019/hinhmonan/thumbs/370__Ga_ta_cung_3.png', N'Gà Ta Hấp Cách Thủy - Gà Cúng Cao Cấp, món không chỉ ngon mà còn đẹp mắt, sang trọng phù hợp để cúng trong dịp Tết. Gà ta chéo cánh, hấp cách thủy, đầy đủ gan  mề kèm với xôi.', N'ga-ta-hap-cach-thuy-ga-cung-cao-cap', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (46, 6, N'GÀ HẤP CẢI BẸ XANH', N'https://flyfood.vn/vnt_upload/product/05_2019/hinhmonan/thumbs/370__unnamed_1_1.jpg', N'Món gà hấp cải bẹ xanh - một phiên bản mới của món gà hấp hành, đầy tính sáng tạo, sang trọng và hấp dẫn hơn. Với nước sốt hấp gà đậm đà, sệt sệt ăn cùng cải bẹ xanh sẽ giúp dung hòa khẩu vị trong món ăn. Chọn cải để hấp cùng gà là một cách khéo léo, tinh tế để giúp mọi người ăn đỡ bị ngán và nhàm chán. ', N'ga-hap-cai-be-xanh', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (47, 6, N'GÀ TIỀM HẠT SEN', N'https://flyfood.vn/vnt_upload/product/01_2018/thumbs/370__ga-tiem-hat-sen-flyfood.png', N'Nếu quý khách muốn có một món gà thật ngon, đặc sắc và sang trọng trên bàn tiệc thì món Gà Tiềm Hạt Sen là sự lựa chọn đúng đắn nhất. Gà tiềm với hạt sen cùng với một số vị thuốc Bắc có tính lành, mát và trị bệnh như hạt sen, táo đỏ ... sẽ giúp thực khách cảm thấy thật ngon miệng lại còn tốt cho sức khỏe. ', N'ga-tiem-hat-sen', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (48, 6, N'GÀ HẤP NƯỚC MẮM', N'https://flyfood.vn/vnt_upload/product/05_2019/hinhmonan/thumbs/370__ga-gap-nuoc-mam-flyfood-13.png', N'Ngon không cưỡng nổi vị gà hấp nước mắm nhĩ đậm đà, thơm ngon cùng xôi 3 màu, 3 vị đẹp mắt, ngon miệng. Gà Hấp Nước Mắm sẽ để lại dấu ấn khó quên với thực khách khi món ăn hấp dẫn này xuất hiện trên bàn tiệc.', N'ga-hap-nuoc-mam', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (49, 6, N'GÀ BÓ XÔI 2 MÀU EATWELL', N'https://flyfood.vn/vnt_upload/product/05_2019/hinhmonan/thumbs/370__ga-bo-xoi-2-mau-om-trung-hat-sen-1.jpg', N'Gà Bó Xôi 2 Màu Ôm Trứng thể hiện sự đẳng cấp của món gà bó xôi được Flyfood thể hiện bằng kỹ thuật cao tạo xôi 2 lớp, lớp trong (lớp áp sát với da gà là tới xôi gấc thấm vị ngọt của nước gà tiết ra trong quá trình chế biến). Lớp xôi ngoài cùng là xôi trắng mùi lá dứa chiên giòn 1 lớp mỏng. Gà sử dụng cho món này là gà mái nòi, loại cao cấp nhất của gà ta do chính Flyfood kết hợp với người dân nuôi tại Bến Tre theo kỹ thuật riêng để thị gà ngon nhất chưa từng có, gà mái tơ, ôm trứng và hạt sen tạo sự đẳng cấp và khác biệt.', N'ga-bo-xoi-2-mau-om-trung-hat-sen', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (50, 6, N'GÀ QUAY NGŨ VỊ - BÁNH BAO', N'https://flyfood.vn/vnt_upload/product/05_2019/hinhmonan/thumbs/370__ga-quay-ngu-vi-banh-bao-2_1.png', N'Gà Quay Ngũ Vị Bánh Bao là một món khá phổ biến tại Việt Nam, đây là món khoái khẩu của nhiều "tín đồ" mê thịt gà. Thông thường trên thị trường thì gà quay hoặc gà nướng người ta sử dụng loại gà Tam Hoàng, ưu điểm của quà này là mềm, quay không bị khô. Tuy nhiên, Flyfood vẫn tự tin sử dụng loại gà ta lai nòi được nuôi tại huyện Mỏ Cày, tỉnh Bến Tre để làm gà quay.Gà Ta Thả Vườn Nổ Muối Hột Trong Nồi Đất ăn cùng với xôi gấc - món ăn truyền thống mang tính dân dã nhưng hấp dẫn mọi hoàn cảnh, đây không chỉ đơn thuần là món ăn mà còn là giá trị cao của nghệ thuật ẩm thực.', N'ga-quay-ngu-vi-banh-bao', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (51, 6, N'GÀ QUAY BÓ XÔI CHÀ BÔNG EATWELL', N'https://flyfood.vn/vnt_upload/product/05_2019/hinhmonan/thumbs/370__ga-quay-bo-xoi-cha-bong-flyfood-12.png', N'Gà Quay Bó Xôi Chà Bông thể hiện sự đẳng cấp của món gà bó xôi. Là "model" thứ 4 của món gà bó xôi, được Flyfood thể hiện bằng kỹ thuật cao tạo 2 lớp xôi trắng, ở giữa 2 lớp xôi có 1 lớp chà bông.  Bên trong là một con gà ta được ngâm trong thảo mộc từ 2 đến 3 tiếng và sau đó quay trên lò quay chuyên dụng, gà quay mềm, không bị khô, tuyệt hảo từ mùi đến vị.', N'ga-quay-bo-xoi-cha-bong', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (52, 6, N'GÀ BÓ XÔI 3 MÀU', N'https://flyfood.vn/vnt_upload/product/01_2019/thumbs/370__ga-bo-xoi-3-mau-om-trung-non-hat-sen-flyfood_6.png', N'Một phiên bản gà bó xôi mới toanh, độc đáo, mới lạ và hấp dẫn hơn bao giờ hết với Gà bó xôi 3 màu ôm trứng non hạt sen. Nếu bạn là đã là "fan" của các món Gà bó xôi 2 màu thì chắc chắn người anh em mới Gà bó xôi 3 màu mới này chắc chắn sẽ không làm bạn thất vọng đâu nhé. Điểm đặc biệt thú vị của món Gà bó xôi 3 màu ôm trứng hạt sen này phải kể đến lớp xôi 3 màu thần thánh.', N'ga-bo-xoi-3-mau-om-trung-non-hat-sen', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (53, 7, N'BÒ NẤU TIÊU XANH', N'https://flyfood.vn/vnt_upload/product/05_2019/hinhmonan/thumbs/370__bo-nau-tieu-xanh-flyfood-3.png', N'Món Bò Nấu Tiêu Xanh có vị thơm đặc trưng của tiêu xanh và thịt bò mềm quyện lẫn với vị đậm đà của nước sốt, dùng kèm với bánh mì hay cơm trắng đều ngon. Món ăn này giàu đạm, ít chất béo, cũng là thực đơn rất tốt cho người mới ốm dậy, người cao tuổi cần bồi bổ sức khỏe.', N'bo-nau-tieu-xanh', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (54, 7, N'BÒ SỐT RƯỢU VANG', N'https://flyfood.vn/vnt_upload/product/05_2019/hinhmonan/thumbs/370__bo-sot-ruou-vang-02.png', N'Món Bò Sốt Rượu Vang vừa nghe qua cứ nghĩ đây là món âu sang chảnh và khó chế biến. Nhưng thực ra đây là một món ăn đơn giản, nguyên liệu dễ chế biến. Được biết đến là loại món ăn giàu protein, giúp cung cấp và chuyển hóa năng lượng trong cơ thể.', N'bo-sot-ruou-vang', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (55, 7, N'ĐÙI DÊ ĐÚT LÒ EATWELL', N'https://flyfood.vn/vnt_upload/product/08_2019/thumbs/370__dui-de-dut-lo-flyfood-01.png', N'Đùi Dê Đút Lò là món ăn tại bàn độc đáo chưa từng có, sang trọng chưa từng thấy, hấp dẫn không đối thủ,  ngon không thể tả và hơn thế nữa,... Đùi dê đút lò ngon phải đạt được các yếu tố: Da vàng giòn lúc mới quay xong, da giòn không giữ được lâu do thịt dê còn nhiều nước thấm ra da nhưng da phải mềm. Thịt dê còn tươm nước, hơi ửng đỏ bên trong (lòng đào), thịt phải mềm và ngọt.', N'dui-de-dut-lo', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (56, 7, N'HEO SỮA QUAY EATWELL', N'https://flyfood.vn/vnt_upload/product/01_2019/thumbs/370__heo-sua-quay-flyfood_20.jpg', N'Ngay không chỉ ở những buổi lễ cúng kiếng mà ở tất cả các loại hình tiệc điều rất ưa chuộng và quen thuộc với món Heo Sữa Quay. Bởi nó là món ăn vừa đẹp mắt vừa thơm ngon hấp dẫn.', N'heo-sua-quay', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (57, 7, N'GIÒ HEO CHIÊN GIÒN EATWELL', N'https://flyfood.vn/vnt_upload/product/01_2019/thumbs/370__gio-heo-chien-gion-flyfood-010.png', N'Giò Heo Muối Chiên Giòn được dùng để chế biến là loại bắp giò heo trước, ít mỡ, không quá nhiều thịt, gân sụn mềm giòn và ngon. Bắp giò heo được rút hết xương và đem ướp với muối và các gia vị khác theo công thức tẩm ướp thịt riêng của Flyfood vừa thơm ngon, vừa an toàn vệ sinh thực phẩm.', N'gio-heo-chien-gion', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (58, 8, N'LẨU CÁ LĂNG MĂNG CHUA', N'https://flyfood.vn/vnt_upload/product/05_2019/hinhmonan/thumbs/370__lau-ca-lang-mang-chua-flyfood-01_1.png', N'Lẩu Cá Lăng Măng Chua món ăn truyền thống với nước lẩu, vừa đậm đà, vừa chua chua cay cay, cùng với những món ăn phụ khác sẽ mang đến cho quý khách một buổi ăn quây quần cùng bạn bè, người thân một cách ấm cúng trong những buổi tối trời trở lạnh.', N'lau-ca-lang-mang-chua', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (59, 8, N'LẨU GÀ TIỀM ỚT HIỂM', N'https://flyfood.vn/vnt_upload/product/05_2019/hinhmonan/thumbs/370__ga-tiem-ot-hiem-Flyfood_07.png', N'Món “Lẩu Gà Tiềm Ớt Hiểm” là sự kết hợp độc đáo 3 nguyên liệu tạo vị và mùi đặc biệt: ớt xanh, hương quế, nấm đông cô và gà ta được chiên sơ, hầm mềm trên lửa nhỏ tạo cảm giác ấm áp, thơm và ngọt khi thưởng thức. Gà mái nòi (giống gà đá), sử dụng loại gà mái tơ, chưa ôm trứng, thịt dai mềm, ít mỡ, gà mái ít xương hơn gà trống.', N'lau-ga-tiem-ot-hiem', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (60, 8, N'LẨU THÁI', N'https://flyfood.vn/vnt_upload/product/05_2019/hinhmonan/thumbs/370__lau-thai-flyfood-0001_1.png', N'Lẩu Thái - Món lẩu được đa số thực khách ưa chuộng với hương vị đặc trưng không lẫn với bất kì một món lẩu nào khác, đó là hương thơm của sả, riềng, lá chanh và vị chua chua cay cay hấp dẫn.', N'lau-thai', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (61, 8, N'LẨU CÁ TẦM MĂNG CHUA', N'https://flyfood.vn/vnt_upload/product/05_2019/hinhmonan/thumbs/370__lau-ca-tam-mang-chua-flyfood-5_1.jpg', N'Cá tầm được biết đến nhiều qua các món ăn khác nhau. Với món lẩu cá tầm măng chua thì cá tầm nấu lẩu với nước lẩu thơm ngon có vị chua ngọt nhẹ chỉ bấy nhiêu thôi cũng làm sao xuyến lòng người.', N'lau-ca-tam-mang-chu', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (62, 8, N'LẨU NẤM HẢI SẢN', N'https://flyfood.vn/vnt_upload/product/05_2019/hinhmonan/thumbs/370__lau-nam-hai-san-flyfood-7.png', N'Món Lẩu Nấm Hải Sản rất giàu chất dinh dưỡng và không gây xơ cứng động mạch, không làm tăng cholesterol trong máu giống như các loại thực phẩm có nguồn gốc từ động vật. Chống lại sự đông máu, công hiệu như aspirin trong việc phòng ngừa bệnh tim và tai biến mạch máu não, tăng cường sức đề kháng.', N'lau-nam-hai-san', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (63, 8, N'VỊT NẤU CHAO EATWELL', N'https://flyfood.vn/vnt_upload/product/05_2019/hinhmonan/thumbs/370__lau-vit-nau-chao-flyfood-10.png', N'Lẩu Vịt Xiêm Nấu Chao là món ăn đặc sản mang hương vị miền Tây có sự hòa trộn giữa 4 loại gia vị lên men chủ lực là rượu trắng, gừng già, chao trắng và chao đỏ tẩm ướp trong 4 tiếng để tạo nên hương vị độc đáo mà không thể có ở bất kì món nào khác. Loại VỊT XIÊM 1/2 con nặng 1,6kg lúc còn sống ăn kèm với khoai môn cao, cải bẹ xanh, rau muống và bún tươi tạo nên món ăn có mùi thơm đặc trưng, hương vị đậm đà, cảm nhận thịt vịt săn chắc và gia vị thấm sâu vào thịt.', N'lau-vit-xiem-nau-chao', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (64, 9, N'CƠM CHIÊN CÁ MẶN', N'https://flyfood.vn/vnt_upload/product/05_2019/hinhmonan/thumbs/370__com-chien-ca-man-flyfood-2.jpg', N'Cơm chiên với những thành phần như cá mặn xé nhỏ, trứng vịt muối, bơ, hành phi…chiên cùng với cơm tạo nên món Cơm Chiên Cá Mặn có mùi vị độc đáo, đầy tầng lớp hương vị.', N'com-chien-ca-man', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (65, 9, N'CƠM CHIÊN DƯƠNG CHÂU', N'https://flyfood.vn/vnt_upload/product/05_2019/hinhmonan/thumbs/370__com-chien-duong-chau-01.png', N'Nói đến cơm chiên thì không thể nào không nhắc đến món Cơm Chiên Dương Châu bởi nó đã quá quen thuộc với giới mộ điệu sành ăn tại Sài Gòn. Những nguyên liệu hỗn hợp như lạp xưởng, đậu hà lan, củ cà rốt…đầy màu sắc tạo nên nét đặc trưng của nó.', N'com-chien-duong-chau', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (66, 9, N'CƠM CHIÊN HẢI SẢN', N'https://flyfood.vn/vnt_upload/product/05_2019/hinhmonan/thumbs/370__com-chien-hai-san-01.png', N'Cơm Chiên Hải Sản giữ trọn được hương vị những thành phần chủ đạo của hải sản như tôm, mực, cá, nghêu...đan xen với hạt cơm thơm lừng làm nên món cơm chiên đa dạng này.', N'com-chien-hai-san', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (67, 9, N'CƠM GÀ LÁ SEN', N'https://flyfood.vn/vnt_upload/product/05_2019/hinhmonan/thumbs/370__com-ga-la-sen-flyfood-4.png', N'Cơm Gà Lá Sen là món ăn truyền thống với cách trang trí có một không hai. Những hạt cơm trộn lẫn hạt sen được gói trọn trong những lá sen xanh mát góp phần tạo nên món cơm lá sen truyền thống mang đậm chất quê hương.', N'com-ga-la-sen', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (68, 10, N'RAU CÂU TRÁI CÂY - CHANH DÂY', N'https://flyfood.vn/vnt_upload/product/01_2019/thumbs/370__rau-cau-trai-cay-chanh-day-flyfood-1.jpg', N'Rau Câu là một món dùng cuối tiệc vô cùng hợp lý và tiện lợi, với nhiều màu sắc và vị ngọt thanh mát khác nhau', N'rau-cau-trai-cay-chanh-day', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (69, 10, N'NHO MỸ', N'https://flyfood.vn/vnt_upload/product/05_2019/hinhmonan/thumbs/370__NHO_MY.png', N'Nho Mỹ là một món dùng cuối tiệc vô cùng hợp lý và tiện lợi, với màu sắc hấp dẫn và vị ngọt thanh mát.', N'nho-my', 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [Photo], [Description], [ProductSlug], [IsActive]) VALUES (70, 10, N'TRÁI CÂY THẬP CẨM', N'https://flyfood.vn/vnt_upload/product/05_2019/hinhmonan/thumbs/370__trai-cay.jpg', N'Trái cây Tráng miệng cho buổi tiệc. ', N'trai-cay-thap', 1)
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserId], [Username], [Email], [FullName], [Password], [Address], [Phone], [IsAdmin], [IsActive]) VALUES (1, N'adm', N'adm@gmail.com', N'admin', N'123', N'HCMC', N'0333333333', 0, 1)
INSERT [dbo].[Users] ([UserId], [Username], [Email], [FullName], [Password], [Address], [Phone], [IsAdmin], [IsActive]) VALUES (2, N'bao', N'bao@gmail,com', N'bao', N'123', N'Ha Noi', N'0345458878', 0, 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([OrderId])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Users]
GO
ALTER TABLE [dbo].[ProductOptions]  WITH CHECK ADD  CONSTRAINT [FK_ProductOptions_Options] FOREIGN KEY([OptionId])
REFERENCES [dbo].[Options] ([OptionId])
GO
ALTER TABLE [dbo].[ProductOptions] CHECK CONSTRAINT [FK_ProductOptions_Options]
GO
ALTER TABLE [dbo].[ProductOptions]  WITH CHECK ADD  CONSTRAINT [FK_ProductOptions_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[ProductOptions] CHECK CONSTRAINT [FK_ProductOptions_Products]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
/****** Object:  StoredProcedure [dbo].[SpSel_getOrderWithUserId]    Script Date: 23/6/2020 11:24:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Lê Thiên Bảo
-- Create date: 14/5/2020
-- Description:	Nhập vào Id khách hàng xuất ra danh sách Order của khách.
-- Run: exec SpSel_getOrderWithUserId 1
-- =============================================
Create PROCEDURE [dbo].[SpSel_getOrderWithUserId]
	-- Add the parameters for the stored procedure here
    @userid int = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT a.UserId, b.Username, b.FullName, d.ProductName, c.Price, c.Quantity, a.OrderTotal, a.OrderDate
	FROM Orders a inner join Users b on a.UserId = b.UserId
	              inner join OrderDetails c on a.OrderId = c.OrderId
				  inner join Products d on c.ProductId = d.ProductId
	WHERE a.UserId = @userid
END
GO
/****** Object:  StoredProcedure [dbo].[SpSel_getRevenueWithMonth]    Script Date: 23/6/2020 11:24:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Le Thien Bao	
-- Create date: 14/5/2020	
-- Description:	Nhập vào tháng năm xuất ra danh sách doanh thu của tháng năm đó.
-- Run: exec SpSel_getRevenueWithMonth 6,2020
-- =============================================
Create PROCEDURE [dbo].[SpSel_getRevenueWithMonth]
	-- Add the parameters for the stored procedure here
	@month int = null,
	@year int = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT a.OrderId, a.IsCompleted, a.OrderDate,
	Revenue = sum(round(convert(money, b.Price * b.Quantity), 2))
	FROM Orders a inner join OrderDetails b on a.OrderId = b.OrderId
	WHERE month(a.OrderDate) = @month
	and   year(a.OrderDate) = @year
	GROUP BY a.OrderId, a.IsCompleted, a.OrderDate
END
GO
/****** Object:  StoredProcedure [dbo].[spSel_SearchProduct]    Script Date: 23/6/2020 11:24:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		LE THIEN BAO
-- Create date: 23/6/2020
-- Description:	tim kiem product co phan trang
-- Run: exec spSel_SearchProduct 'KHA', '1', '5' 
-- =============================================
Create PROCEDURE [dbo].[spSel_SearchProduct]
	-- Add the parameters for the stored procedure here
	@key NVARCHAR(50) = null,
	@page int= null,
	@size int = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	declare @start int = (@page-1)*@size + 1;
    declare @end int = @page*@size;

	with s as
	(
	    select ROW_NUMBER () over ( order by p.ProductId desc ) 
		as STT, p.ProductId, p.ProductName, c.CategoryName, p.Description, p.Photo, p.IsActive, p.ProductSlug
		from Products p inner join Categories c on p.CategoryId = c.CategoryId
		where p.ProductName like '%'+@key+'%' 
	)
	select *
	from s
	where STT>=@start and STT <= @end
END
GO
/****** Object:  Trigger [dbo].[Alert_DeletetUser]    Script Date: 23/6/2020 11:24:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Le Thien Bao
-- Create date: 23/5/2020
-- Description:	Alert
-- =============================================
CREATE TRIGGER [dbo].[Alert_DeletetUser]
   ON  [dbo].[Users]
   AFTER DELETE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for trigger here
	PRINT 'Xóa thành công!'
END
GO
ALTER TABLE [dbo].[Users] ENABLE TRIGGER [Alert_DeletetUser]
GO
/****** Object:  Trigger [dbo].[Alert_InsertUser]    Script Date: 23/6/2020 11:24:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Le Thien Bao
-- Create date: 23/5/2020
-- Description:	Alert
-- =============================================
CREATE TRIGGER [dbo].[Alert_InsertUser]
   ON  [dbo].[Users]
   AFTER INSERT
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for trigger here
	PRINT 'Thêm thành công!'
END
GO
ALTER TABLE [dbo].[Users] ENABLE TRIGGER [Alert_InsertUser]
GO
