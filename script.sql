USE [db_employee]
GO
/****** Object:  Table [dbo].[tbl_employee]    Script Date: 10-08-2024 15:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_employee](
	[employee_id] [int] IDENTITY(1,1) NOT NULL,
	[empname] [nvarchar](50) NULL,
	[housename] [nvarchar](50) NULL,
	[district] [nvarchar](50) NULL,
	[pincode] [int] NULL,
	[regdate] [date] NULL,
	[email] [nvarchar](50) NULL,
	[contact] [bigint] NULL,
	[description] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[employee_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[tbl_employee] ON 

INSERT [dbo].[tbl_employee] ([employee_id], [empname], [housename], [district], [pincode], [regdate], [email], [contact], [description]) VALUES (2, N'sample', N'sample(H) sample', N'Malappuram', 123456, CAST(N'2024-10-08' AS Date), N'saple@gmail.com', 1234567890, N'sample')
INSERT [dbo].[tbl_employee] ([employee_id], [empname], [housename], [district], [pincode], [regdate], [email], [contact], [description]) VALUES (3, N'test', N'test(H) test', N'Ernakulam', 345678, CAST(N'2024-10-08' AS Date), N'test@gmail.com', 3242556177, N'test')
INSERT [dbo].[tbl_employee] ([employee_id], [empname], [housename], [district], [pincode], [regdate], [email], [contact], [description]) VALUES (4, N'abc', N'abc(h) abc', N'Ernakulam', 987678, CAST(N'2024-10-08' AS Date), N'abc@gmail.com', 9087987878, N'sample details')
INSERT [dbo].[tbl_employee] ([employee_id], [empname], [housename], [district], [pincode], [regdate], [email], [contact], [description]) VALUES (5, N'sample1', N'sample1', N'Idukki', 390899, CAST(N'2024-10-08' AS Date), N'sample1@gmail.com', 3242556178, N'sample 1 details')
INSERT [dbo].[tbl_employee] ([employee_id], [empname], [housename], [district], [pincode], [regdate], [email], [contact], [description]) VALUES (6, N'test1', N'test1(h) test1', N'Idukki', 678998, CAST(N'2024-10-08' AS Date), N'test1@gmail.com', 9087987908, N'sample1detais')
INSERT [dbo].[tbl_employee] ([employee_id], [empname], [housename], [district], [pincode], [regdate], [email], [contact], [description]) VALUES (7, N'user', N'user(H)user', N'Idukki', 456765, CAST(N'2024-10-08' AS Date), N'user@gmail.com', 9087987809, N'userdetails')
INSERT [dbo].[tbl_employee] ([employee_id], [empname], [housename], [district], [pincode], [regdate], [email], [contact], [description]) VALUES (8, N'test2', N'test2(H) test2', N'Malappuram', 236788, CAST(N'2024-10-08' AS Date), N'test2@gmail.com', 6789656545, N'test2details')
INSERT [dbo].[tbl_employee] ([employee_id], [empname], [housename], [district], [pincode], [regdate], [email], [contact], [description]) VALUES (9, N'anu', N'anu villa', N'Malappuram', 456789, CAST(N'2024-10-08' AS Date), N'anu@gmail.com', 6789509889, N'anu details')
SET IDENTITY_INSERT [dbo].[tbl_employee] OFF
