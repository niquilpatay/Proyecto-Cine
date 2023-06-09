USE [cine_17]
GO
/****** Object:  Table [dbo].[Asientos]    Script Date: 18/03/2023 16:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asientos](
	[id_asiento] [int] IDENTITY(1,1) NOT NULL,
	[id_sala] [int] NULL,
	[num_asiento] [int] NULL,
 CONSTRAINT [pk_asiento] PRIMARY KEY CLUSTERED 
(
	[id_asiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Barrios]    Script Date: 18/03/2023 16:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Barrios](
	[id_barrio] [int] IDENTITY(1,1) NOT NULL,
	[nombre_barrio] [varchar](100) NULL,
 CONSTRAINT [pk_barrios] PRIMARY KEY CLUSTERED 
(
	[id_barrio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 18/03/2023 16:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[id_cliente] [int] IDENTITY(1,1) NOT NULL,
	[nombre_cliente] [varchar](50) NULL,
	[dni_cliente] [varchar](8) NULL,
	[email] [varchar](100) NULL,
	[tarjeta_credito] [varchar](16) NULL,
 CONSTRAINT [pk_cliente] PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detalle_Tickets]    Script Date: 18/03/2023 16:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalle_Tickets](
	[id_detalle_ticket] [int] IDENTITY(1,1) NOT NULL,
	[id_funcion] [int] NULL,
	[id_asiento] [int] NULL,
	[descuento] [decimal](18, 0) NULL,
	[id_reserva] [int] NULL,
	[id_ticket] [int] NULL,
	[costo] [money] NULL,
 CONSTRAINT [pk_Detalle_Tickets] PRIMARY KEY CLUSTERED 
(
	[id_detalle_ticket] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Funciones]    Script Date: 18/03/2023 16:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Funciones](
	[id_funcion] [int] IDENTITY(1,1) NOT NULL,
	[id_pelicula] [int] NULL,
	[fecha_hora] [datetime] NULL,
	[idioma] [varchar](100) NULL,
	[pre_unitario] [money] NULL,
 CONSTRAINT [pk_funciones] PRIMARY KEY CLUSTERED 
(
	[id_funcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Peliculas]    Script Date: 18/03/2023 16:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Peliculas](
	[id_pelicula] [int] IDENTITY(1,1) NOT NULL,
	[titulo] [varchar](500) NULL,
	[duracion] [int] NULL,
	[descripcion] [varchar](600) NULL,
	[id_tipo] [int] NULL,
 CONSTRAINT [pk_peliculas] PRIMARY KEY CLUSTERED 
(
	[id_pelicula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservas]    Script Date: 18/03/2023 16:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservas](
	[id_reserva] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](20) NULL,
 CONSTRAINT [pk_Reserva] PRIMARY KEY CLUSTERED 
(
	[id_reserva] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Salas]    Script Date: 18/03/2023 16:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salas](
	[id_sala] [int] IDENTITY(1,1) NOT NULL,
	[nombre_sala] [varchar](30) NULL,
	[id_tipo_sala] [int] NULL,
 CONSTRAINT [pk_salas] PRIMARY KEY CLUSTERED 
(
	[id_sala] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sucursales]    Script Date: 18/03/2023 16:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sucursales](
	[id_sucursal] [int] IDENTITY(1,1) NOT NULL,
	[id_barrio] [int] NULL,
	[nombre_sucursal] [varchar](50) NULL,
	[direccion] [varchar](100) NULL,
 CONSTRAINT [pk_sucursales] PRIMARY KEY CLUSTERED 
(
	[id_sucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tickets]    Script Date: 18/03/2023 16:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tickets](
	[id_ticket] [int] IDENTITY(1,1) NOT NULL,
	[id_tipo_pago] [int] NULL,
	[id_sucursal] [int] NULL,
	[id_cliente] [int] NULL,
	[fecha_compra] [datetime] NULL,
 CONSTRAINT [pk_Tickets] PRIMARY KEY CLUSTERED 
(
	[id_ticket] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_peliculas]    Script Date: 18/03/2023 16:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_peliculas](
	[id_tipo] [int] IDENTITY(1,1) NOT NULL,
	[genero] [varchar](50) NULL,
 CONSTRAINT [pk_tipo_peliculas] PRIMARY KEY CLUSTERED 
(
	[id_tipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Salas]    Script Date: 18/03/2023 16:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Salas](
	[id_tipo_sala] [int] NOT NULL,
	[tipo] [varchar](100) NULL,
 CONSTRAINT [pk_tipo_sala] PRIMARY KEY CLUSTERED 
(
	[id_tipo_sala] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipos_pagos]    Script Date: 18/03/2023 16:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipos_pagos](
	[id_tipo_pago] [int] IDENTITY(1,1) NOT NULL,
	[nombre_tipo_pago] [varchar](50) NULL,
 CONSTRAINT [pk_id_tipo_pago] PRIMARY KEY CLUSTERED 
(
	[id_tipo_pago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Asientos] ON 

INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (1, 1, 1)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (2, 1, 2)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (3, 1, 3)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (4, 1, 4)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (5, 1, 5)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (6, 1, 6)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (7, 1, 7)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (8, 1, 8)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (9, 1, 9)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (10, 1, 10)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (11, 1, 11)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (12, 1, 12)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (13, 1, 13)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (14, 1, 14)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (15, 1, 15)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (16, 1, 16)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (17, 1, 17)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (18, 1, 18)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (19, 1, 19)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (20, 1, 20)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (21, 2, 1)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (22, 2, 2)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (23, 2, 3)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (24, 2, 4)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (25, 2, 5)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (26, 2, 6)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (27, 2, 7)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (28, 2, 8)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (29, 2, 9)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (30, 2, 10)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (31, 2, 11)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (32, 2, 12)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (33, 2, 13)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (34, 2, 14)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (35, 2, 15)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (36, 2, 16)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (37, 2, 17)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (38, 2, 18)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (39, 2, 19)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (40, 2, 20)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (41, 3, 1)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (42, 3, 2)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (43, 3, 3)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (44, 3, 4)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (45, 3, 5)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (46, 3, 6)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (47, 3, 7)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (48, 3, 8)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (49, 3, 9)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (50, 3, 10)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (51, 3, 11)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (52, 3, 12)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (53, 3, 13)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (54, 3, 14)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (55, 3, 15)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (56, 3, 16)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (57, 3, 17)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (58, 3, 18)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (59, 3, 19)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (60, 3, 20)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (61, 4, 1)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (62, 4, 2)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (63, 4, 3)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (64, 4, 4)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (65, 4, 5)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (66, 4, 6)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (67, 4, 7)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (68, 4, 8)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (69, 4, 9)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (70, 4, 10)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (71, 4, 11)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (72, 4, 12)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (73, 4, 13)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (74, 4, 14)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (75, 4, 15)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (76, 4, 16)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (77, 4, 17)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (78, 4, 18)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (79, 4, 19)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (80, 4, 20)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (81, 5, 1)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (82, 5, 2)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (83, 5, 3)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (84, 5, 4)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (85, 5, 5)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (86, 5, 6)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (87, 5, 7)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (88, 5, 8)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (89, 5, 9)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (90, 5, 10)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (91, 5, 11)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (92, 5, 12)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (93, 5, 13)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (94, 5, 14)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (95, 5, 15)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (96, 5, 16)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (97, 5, 17)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (98, 5, 18)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (99, 5, 19)
GO
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (100, 5, 20)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (101, 6, 1)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (102, 6, 2)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (103, 6, 3)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (104, 6, 4)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (105, 6, 5)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (106, 6, 6)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (107, 6, 7)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (108, 6, 8)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (109, 6, 9)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (110, 6, 10)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (111, 6, 11)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (112, 6, 12)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (113, 6, 13)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (114, 6, 14)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (115, 6, 15)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (116, 6, 16)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (117, 6, 17)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (118, 6, 18)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (119, 6, 19)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (120, 6, 20)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (121, 7, 1)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (122, 7, 2)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (123, 7, 3)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (124, 7, 4)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (125, 7, 5)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (126, 7, 6)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (127, 7, 7)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (128, 7, 8)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (129, 7, 9)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (130, 7, 10)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (131, 7, 11)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (132, 7, 12)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (133, 7, 13)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (134, 7, 14)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (135, 7, 15)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (136, 7, 16)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (137, 7, 17)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (138, 7, 18)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (139, 7, 19)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (140, 7, 20)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (141, 8, 1)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (142, 8, 2)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (143, 8, 3)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (144, 8, 4)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (145, 8, 5)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (146, 8, 6)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (147, 8, 7)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (148, 8, 8)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (149, 8, 9)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (150, 8, 10)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (151, 8, 11)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (152, 8, 12)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (153, 8, 13)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (154, 8, 14)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (155, 8, 15)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (156, 8, 16)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (157, 8, 17)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (158, 8, 18)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (159, 8, 19)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (160, 8, 20)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (161, 9, 1)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (162, 9, 2)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (163, 9, 3)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (164, 9, 4)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (165, 9, 5)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (166, 9, 6)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (167, 9, 7)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (168, 9, 8)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (169, 9, 9)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (170, 9, 10)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (171, 9, 11)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (172, 9, 12)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (173, 9, 13)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (174, 9, 14)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (175, 9, 15)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (176, 9, 16)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (177, 9, 17)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (178, 9, 18)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (179, 9, 19)
INSERT [dbo].[Asientos] ([id_asiento], [id_sala], [num_asiento]) VALUES (180, 9, 20)
SET IDENTITY_INSERT [dbo].[Asientos] OFF
GO
SET IDENTITY_INSERT [dbo].[Barrios] ON 

INSERT [dbo].[Barrios] ([id_barrio], [nombre_barrio]) VALUES (1, N'Villa Cabrera')
INSERT [dbo].[Barrios] ([id_barrio], [nombre_barrio]) VALUES (2, N'Alto Verde')
INSERT [dbo].[Barrios] ([id_barrio], [nombre_barrio]) VALUES (3, N'General Paz')
INSERT [dbo].[Barrios] ([id_barrio], [nombre_barrio]) VALUES (4, N'Centro')
INSERT [dbo].[Barrios] ([id_barrio], [nombre_barrio]) VALUES (5, N'Matienzo')
SET IDENTITY_INSERT [dbo].[Barrios] OFF
GO
SET IDENTITY_INSERT [dbo].[Clientes] ON 

INSERT [dbo].[Clientes] ([id_cliente], [nombre_cliente], [dni_cliente], [email], [tarjeta_credito]) VALUES (1, N'Hugo Gonzalez', N'58151852', N'gonzalezhugo@gmail.com', N'3553522962919620')
INSERT [dbo].[Clientes] ([id_cliente], [nombre_cliente], [dni_cliente], [email], [tarjeta_credito]) VALUES (2, N'Alejandro Rodriguez', N'25452452', N'ale2001@gmail.com', N'3578268019578020')
INSERT [dbo].[Clientes] ([id_cliente], [nombre_cliente], [dni_cliente], [email], [tarjeta_credito]) VALUES (3, N'Gabriela Gomez', N'54642452', N'gabig0@gmail.com', N'5002352832203880')
INSERT [dbo].[Clientes] ([id_cliente], [nombre_cliente], [dni_cliente], [email], [tarjeta_credito]) VALUES (4, N'Lucas Fernandez', N'43545342', N'lukitasf@gmail.com', N'3536518167376410')
INSERT [dbo].[Clientes] ([id_cliente], [nombre_cliente], [dni_cliente], [email], [tarjeta_credito]) VALUES (5, N'Sofia Lopez', N'24524845', N'sofilope5@gmail.com', N'6397994849264720')
INSERT [dbo].[Clientes] ([id_cliente], [nombre_cliente], [dni_cliente], [email], [tarjeta_credito]) VALUES (6, N'Raul Díaz', N'42424845', N'raul1967@gmail.com', N'3534943035988060')
INSERT [dbo].[Clientes] ([id_cliente], [nombre_cliente], [dni_cliente], [email], [tarjeta_credito]) VALUES (7, N'Catalina Martínez', N'67434766', N'catmartinez2000@gmail.com', N'4175005070101880')
INSERT [dbo].[Clientes] ([id_cliente], [nombre_cliente], [dni_cliente], [email], [tarjeta_credito]) VALUES (8, N'Jorge Perez', N'64131467', N'jorgep@gmail.com', N'5558530331440800')
INSERT [dbo].[Clientes] ([id_cliente], [nombre_cliente], [dni_cliente], [email], [tarjeta_credito]) VALUES (9, N'Oscar García', N'55658498', N'garciaoscar@gmail.com', N'4936540162170008')
INSERT [dbo].[Clientes] ([id_cliente], [nombre_cliente], [dni_cliente], [email], [tarjeta_credito]) VALUES (10, N'Clarisa Sanchez', N'56158142', N'clarisan@gmail.com', N'3746224205536376')
INSERT [dbo].[Clientes] ([id_cliente], [nombre_cliente], [dni_cliente], [email], [tarjeta_credito]) VALUES (11, N'Mariana Romero', N'87945585', N'romeromari1913@gmail.com', N'2016720902660011')
INSERT [dbo].[Clientes] ([id_cliente], [nombre_cliente], [dni_cliente], [email], [tarjeta_credito]) VALUES (12, N'Mariano Sosa', N'35782152', N'marianosos@gmail.com', N'3586157215602940')
INSERT [dbo].[Clientes] ([id_cliente], [nombre_cliente], [dni_cliente], [email], [tarjeta_credito]) VALUES (13, N'Tomas Torres', N'81097851', N'tttomitt@gmail.com', N'6764104527630000')
INSERT [dbo].[Clientes] ([id_cliente], [nombre_cliente], [dni_cliente], [email], [tarjeta_credito]) VALUES (14, N'Leonel Messi', N'74584185', N'messilionel10@gmail.com', N'5100144164988520')
INSERT [dbo].[Clientes] ([id_cliente], [nombre_cliente], [dni_cliente], [email], [tarjeta_credito]) VALUES (15, N'Fulanito Fulanez', N'45244598', NULL, N'5783589527638877')
INSERT [dbo].[Clientes] ([id_cliente], [nombre_cliente], [dni_cliente], [email], [tarjeta_credito]) VALUES (16, N'Mengano Menganez', N'11456395', NULL, N'7589124635894165')
SET IDENTITY_INSERT [dbo].[Clientes] OFF
GO
SET IDENTITY_INSERT [dbo].[Detalle_Tickets] ON 

INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (1, 2, 7, CAST(20 AS Decimal(18, 0)), 2, 180, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (2, 3, 2, CAST(0 AS Decimal(18, 0)), 2, 230, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (3, 5, 6, CAST(10 AS Decimal(18, 0)), 2, 220, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (4, 6, 9, CAST(15 AS Decimal(18, 0)), 1, 271, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (5, 9, 1, CAST(10 AS Decimal(18, 0)), 1, 44, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (6, 2, 7, CAST(20 AS Decimal(18, 0)), 2, 199, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (7, 3, 2, CAST(0 AS Decimal(18, 0)), 2, 241, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (8, 5, 6, CAST(10 AS Decimal(18, 0)), 2, 86, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (9, 6, 9, CAST(15 AS Decimal(18, 0)), 1, 52, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (11, 2, 9, CAST(0 AS Decimal(18, 0)), 2, 224, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (12, 3, 12, CAST(10 AS Decimal(18, 0)), 2, 237, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (13, 5, 9, CAST(15 AS Decimal(18, 0)), 1, 134, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (14, 6, 9, CAST(10 AS Decimal(18, 0)), 1, 72, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (15, 9, 2, CAST(20 AS Decimal(18, 0)), 2, 167, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (16, 12, 20, CAST(0 AS Decimal(18, 0)), 2, 256, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (18, 14, 6, CAST(15 AS Decimal(18, 0)), 1, 140, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (19, 15, 8, CAST(20 AS Decimal(18, 0)), 2, 231, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (20, 17, 8, CAST(0 AS Decimal(18, 0)), 2, 211, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (22, 21, 11, CAST(15 AS Decimal(18, 0)), 1, 48, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (24, 1, 18, CAST(20 AS Decimal(18, 0)), 2, 223, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (25, 2, 6, CAST(0 AS Decimal(18, 0)), 2, 184, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (28, 6, 1, CAST(20 AS Decimal(18, 0)), 2, 271, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (29, 9, 12, CAST(0 AS Decimal(18, 0)), 2, 152, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (30, 12, 6, CAST(10 AS Decimal(18, 0)), 2, 232, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (31, 13, 10, CAST(15 AS Decimal(18, 0)), 1, 211, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (32, 14, 3, CAST(10 AS Decimal(18, 0)), 1, 55, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (33, 15, 11, CAST(20 AS Decimal(18, 0)), 2, 62, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (34, 17, 19, CAST(0 AS Decimal(18, 0)), 2, 87, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (35, 18, 13, CAST(10 AS Decimal(18, 0)), 2, 103, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (36, 21, 14, CAST(15 AS Decimal(18, 0)), 1, 116, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (37, 24, 17, CAST(20 AS Decimal(18, 0)), 1, 254, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (38, 1, 14, CAST(0 AS Decimal(18, 0)), 2, 115, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (39, 2, 10, CAST(10 AS Decimal(18, 0)), 2, 230, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (40, 3, 9, CAST(15 AS Decimal(18, 0)), 2, 83, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (41, 5, 6, CAST(10 AS Decimal(18, 0)), 1, 95, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (42, 6, 3, CAST(20 AS Decimal(18, 0)), 1, 70, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (43, 9, 12, CAST(0 AS Decimal(18, 0)), 2, 76, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (44, 12, 13, CAST(10 AS Decimal(18, 0)), 2, 250, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (45, 13, 5, CAST(15 AS Decimal(18, 0)), 2, 84, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (46, 14, 5, CAST(20 AS Decimal(18, 0)), 1, 230, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (47, 15, 6, CAST(0 AS Decimal(18, 0)), 2, 98, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (48, 17, 7, CAST(10 AS Decimal(18, 0)), 2, 243, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (49, 18, 12, CAST(15 AS Decimal(18, 0)), 2, 166, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (50, 21, 12, CAST(10 AS Decimal(18, 0)), 1, 253, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (51, 24, 16, CAST(20 AS Decimal(18, 0)), 1, 135, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (52, 1, 13, CAST(0 AS Decimal(18, 0)), 2, 69, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (53, 2, 14, CAST(10 AS Decimal(18, 0)), 2, 211, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (54, 3, 3, CAST(15 AS Decimal(18, 0)), 2, 126, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (55, 5, 13, CAST(20 AS Decimal(18, 0)), 1, 153, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (57, 9, 20, CAST(10 AS Decimal(18, 0)), 2, 199, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (58, 12, 9, CAST(15 AS Decimal(18, 0)), 2, 119, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (59, 13, 8, CAST(10 AS Decimal(18, 0)), 1, 186, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (60, 14, 11, CAST(20 AS Decimal(18, 0)), 1, 229, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (63, 18, 6, CAST(15 AS Decimal(18, 0)), 2, 124, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (64, 21, 11, CAST(20 AS Decimal(18, 0)), 1, 161, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (65, 24, 20, CAST(0 AS Decimal(18, 0)), 2, 243, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (66, 2, 17, CAST(10 AS Decimal(18, 0)), 2, 142, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (67, 3, 11, CAST(15 AS Decimal(18, 0)), 2, 161, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (68, 5, 9, CAST(10 AS Decimal(18, 0)), 1, 147, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (69, 6, 12, CAST(20 AS Decimal(18, 0)), 1, 96, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (70, 9, 9, CAST(0 AS Decimal(18, 0)), 2, 165, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (72, 3, 12, CAST(15 AS Decimal(18, 0)), 2, 137, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (75, 1, 13, CAST(10 AS Decimal(18, 0)), 2, 261, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (76, 2, 3, CAST(15 AS Decimal(18, 0)), 2, 261, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (77, 3, 6, CAST(10 AS Decimal(18, 0)), 1, 69, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (78, 5, 4, CAST(20 AS Decimal(18, 0)), 1, 262, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (79, 6, 16, CAST(0 AS Decimal(18, 0)), 2, 230, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (80, 9, 18, CAST(10 AS Decimal(18, 0)), 2, 255, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (81, 12, 7, CAST(15 AS Decimal(18, 0)), 2, 83, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (82, 13, 7, CAST(20 AS Decimal(18, 0)), 1, 192, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (84, 15, 4, CAST(10 AS Decimal(18, 0)), 2, 235, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (85, 17, 9, CAST(15 AS Decimal(18, 0)), 2, 150, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (86, 18, 15, CAST(10 AS Decimal(18, 0)), 1, 99, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (87, 21, 3, CAST(20 AS Decimal(18, 0)), 1, 66, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (89, 1, 16, CAST(10 AS Decimal(18, 0)), 2, 42, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (90, 2, 8, CAST(15 AS Decimal(18, 0)), 2, 172, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (92, 5, 17, CAST(0 AS Decimal(18, 0)), 2, 152, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (93, 6, 1, CAST(10 AS Decimal(18, 0)), 2, 237, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (94, 9, 2, CAST(15 AS Decimal(18, 0)), 2, 193, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (95, 12, 13, CAST(10 AS Decimal(18, 0)), 1, 48, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (96, 13, 18, CAST(20 AS Decimal(18, 0)), 1, 270, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (99, 17, 12, CAST(15 AS Decimal(18, 0)), 2, 183, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (100, 18, 17, CAST(20 AS Decimal(18, 0)), 1, 121, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (104, 2, 2, CAST(10 AS Decimal(18, 0)), 1, 208, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (105, 3, 5, CAST(20 AS Decimal(18, 0)), 1, 251, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (106, 5, 14, CAST(0 AS Decimal(18, 0)), 2, 63, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (107, 6, 14, CAST(10 AS Decimal(18, 0)), 2, 92, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (108, 9, 20, CAST(15 AS Decimal(18, 0)), 2, 194, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (109, 12, 8, CAST(20 AS Decimal(18, 0)), 1, 174, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (111, 14, 12, CAST(10 AS Decimal(18, 0)), 2, 185, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (113, 17, 7, CAST(10 AS Decimal(18, 0)), 1, 248, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (114, 18, 20, CAST(20 AS Decimal(18, 0)), 1, 44, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (115, 21, 15, CAST(0 AS Decimal(18, 0)), 2, 259, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (117, 1, 7, CAST(15 AS Decimal(18, 0)), 2, 152, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (118, 2, 2, CAST(20 AS Decimal(18, 0)), 1, 58, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (119, 3, 13, CAST(0 AS Decimal(18, 0)), 2, 188, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (120, 5, 2, CAST(10 AS Decimal(18, 0)), 2, 263, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (122, 9, 20, CAST(10 AS Decimal(18, 0)), 1, 244, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (123, 12, 18, CAST(20 AS Decimal(18, 0)), 1, 132, 300.0000)
GO
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (124, 13, 16, CAST(0 AS Decimal(18, 0)), 2, 144, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (125, 14, 17, CAST(10 AS Decimal(18, 0)), 2, 75, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (126, 15, 15, CAST(15 AS Decimal(18, 0)), 2, 114, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (127, 17, 9, CAST(20 AS Decimal(18, 0)), 1, 83, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (128, 18, 9, CAST(0 AS Decimal(18, 0)), 1, 158, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (129, 21, 8, CAST(10 AS Decimal(18, 0)), 2, 176, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (130, 24, 20, CAST(15 AS Decimal(18, 0)), 2, 232, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (131, 2, 20, CAST(10 AS Decimal(18, 0)), 2, 145, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (132, 3, 13, CAST(20 AS Decimal(18, 0)), 1, 134, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (134, 6, 1, CAST(10 AS Decimal(18, 0)), 2, 60, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (135, 9, 17, CAST(15 AS Decimal(18, 0)), 2, 222, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (136, 2, 15, CAST(20 AS Decimal(18, 0)), 2, 214, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (137, 3, 8, CAST(0 AS Decimal(18, 0)), 1, 225, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (138, 5, 1, CAST(10 AS Decimal(18, 0)), 2, 253, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (139, 6, 10, CAST(15 AS Decimal(18, 0)), 2, 235, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (140, 1, 10, CAST(10 AS Decimal(18, 0)), 2, 104, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (142, 3, 8, CAST(0 AS Decimal(18, 0)), 1, 204, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (144, 6, 6, CAST(15 AS Decimal(18, 0)), 2, 261, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (145, 9, 20, CAST(20 AS Decimal(18, 0)), 2, 192, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (146, 12, 11, CAST(0 AS Decimal(18, 0)), 1, 250, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (148, 14, 1, CAST(15 AS Decimal(18, 0)), 2, 172, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (149, 15, 4, CAST(10 AS Decimal(18, 0)), 2, 260, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (150, 17, 16, CAST(20 AS Decimal(18, 0)), 1, 88, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (151, 18, 14, CAST(0 AS Decimal(18, 0)), 1, 130, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (152, 21, 13, CAST(10 AS Decimal(18, 0)), 2, 137, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (153, 24, 19, CAST(15 AS Decimal(18, 0)), 2, 227, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (154, 1, 8, CAST(20 AS Decimal(18, 0)), 2, 55, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (155, 2, 9, CAST(0 AS Decimal(18, 0)), 1, 183, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (158, 6, 16, CAST(10 AS Decimal(18, 0)), 2, 123, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (159, 9, 15, CAST(20 AS Decimal(18, 0)), 1, 78, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (160, 12, 18, CAST(0 AS Decimal(18, 0)), 1, 124, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (161, 13, 11, CAST(10 AS Decimal(18, 0)), 2, 253, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (162, 14, 2, CAST(15 AS Decimal(18, 0)), 2, 230, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (163, 15, 4, CAST(20 AS Decimal(18, 0)), 2, 261, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (164, 17, 19, CAST(0 AS Decimal(18, 0)), 1, 232, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (165, 18, 14, CAST(10 AS Decimal(18, 0)), 2, 103, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (166, 21, 16, CAST(15 AS Decimal(18, 0)), 2, 121, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (168, 1, 16, CAST(20 AS Decimal(18, 0)), 1, 45, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (170, 3, 9, CAST(10 AS Decimal(18, 0)), 2, 50, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (171, 5, 9, CAST(15 AS Decimal(18, 0)), 2, 228, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (172, 6, 3, CAST(20 AS Decimal(18, 0)), 2, 52, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (173, 9, 1, CAST(0 AS Decimal(18, 0)), 1, 137, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (174, 12, 8, CAST(10 AS Decimal(18, 0)), 2, 138, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (175, 13, 3, CAST(15 AS Decimal(18, 0)), 2, 206, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (176, 14, 11, CAST(10 AS Decimal(18, 0)), 2, 182, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (177, 15, 16, CAST(20 AS Decimal(18, 0)), 1, 191, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (178, 17, 14, CAST(0 AS Decimal(18, 0)), 1, 143, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (179, 18, 1, CAST(10 AS Decimal(18, 0)), 2, 122, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (180, 21, 11, CAST(15 AS Decimal(18, 0)), 2, 88, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (181, 24, 11, CAST(20 AS Decimal(18, 0)), 2, 64, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (182, 1, 5, CAST(0 AS Decimal(18, 0)), 1, 189, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (183, 2, 10, CAST(10 AS Decimal(18, 0)), 2, 141, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (184, 3, 19, CAST(15 AS Decimal(18, 0)), 2, 234, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (185, 5, 5, CAST(10 AS Decimal(18, 0)), 2, 157, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (186, 6, 18, CAST(20 AS Decimal(18, 0)), 1, 225, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (188, 12, 9, CAST(10 AS Decimal(18, 0)), 2, 204, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (189, 13, 20, CAST(15 AS Decimal(18, 0)), 2, 270, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (190, 14, 1, CAST(20 AS Decimal(18, 0)), 2, 210, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (192, 17, 12, CAST(10 AS Decimal(18, 0)), 2, 53, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (193, 18, 1, CAST(15 AS Decimal(18, 0)), 2, 87, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (194, 21, 2, CAST(10 AS Decimal(18, 0)), 2, 204, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (195, 24, 16, CAST(20 AS Decimal(18, 0)), 1, 90, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (197, 3, 20, CAST(10 AS Decimal(18, 0)), 2, 113, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (198, 5, 4, CAST(15 AS Decimal(18, 0)), 2, 203, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (199, 6, 13, CAST(20 AS Decimal(18, 0)), 2, 44, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (200, 9, 17, CAST(0 AS Decimal(18, 0)), 1, 84, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (201, 2, 6, CAST(10 AS Decimal(18, 0)), 2, 218, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (203, 5, 19, CAST(10 AS Decimal(18, 0)), 2, 206, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (204, 6, 5, CAST(20 AS Decimal(18, 0)), 1, 157, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (205, 1, 2, CAST(0 AS Decimal(18, 0)), 1, 59, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (206, 2, 19, CAST(10 AS Decimal(18, 0)), 2, 217, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (207, 3, 1, CAST(15 AS Decimal(18, 0)), 2, 97, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (210, 9, 4, CAST(10 AS Decimal(18, 0)), 2, 71, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (211, 12, 12, CAST(15 AS Decimal(18, 0)), 2, 208, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (212, 13, 15, CAST(10 AS Decimal(18, 0)), 2, 194, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (213, 14, 11, CAST(20 AS Decimal(18, 0)), 1, 241, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (214, 15, 12, CAST(0 AS Decimal(18, 0)), 1, 242, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (215, 17, 20, CAST(10 AS Decimal(18, 0)), 2, 220, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (216, 18, 4, CAST(15 AS Decimal(18, 0)), 2, 182, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (217, 21, 8, CAST(20 AS Decimal(18, 0)), 2, 201, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (218, 24, 4, CAST(0 AS Decimal(18, 0)), 1, 75, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (219, 1, 4, CAST(10 AS Decimal(18, 0)), 1, 55, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (220, 2, 12, CAST(15 AS Decimal(18, 0)), 2, 148, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (222, 5, 14, CAST(20 AS Decimal(18, 0)), 2, 55, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (224, 9, 12, CAST(10 AS Decimal(18, 0)), 1, 221, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (225, 12, 13, CAST(15 AS Decimal(18, 0)), 2, 91, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (226, 13, 19, CAST(20 AS Decimal(18, 0)), 2, 168, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (227, 14, 10, CAST(0 AS Decimal(18, 0)), 2, 264, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (228, 15, 18, CAST(10 AS Decimal(18, 0)), 1, 205, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (229, 17, 3, CAST(15 AS Decimal(18, 0)), 2, 65, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (230, 18, 16, CAST(10 AS Decimal(18, 0)), 2, 233, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (231, 21, 6, CAST(20 AS Decimal(18, 0)), 2, 47, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (232, 24, 20, CAST(0 AS Decimal(18, 0)), 1, 223, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (233, 1, 8, CAST(10 AS Decimal(18, 0)), 1, 43, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (234, 2, 5, CAST(15 AS Decimal(18, 0)), 2, 77, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (235, 3, 2, CAST(20 AS Decimal(18, 0)), 2, 135, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (236, 5, 11, CAST(0 AS Decimal(18, 0)), 2, 57, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (237, 6, 11, CAST(10 AS Decimal(18, 0)), 1, 259, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (238, 9, 5, CAST(15 AS Decimal(18, 0)), 2, 183, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (239, 12, 17, CAST(10 AS Decimal(18, 0)), 2, 49, 350.0000)
GO
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (241, 14, 11, CAST(0 AS Decimal(18, 0)), 1, 46, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (242, 15, 5, CAST(10 AS Decimal(18, 0)), 1, 258, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (243, 17, 7, CAST(15 AS Decimal(18, 0)), 2, 206, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (245, 21, 3, CAST(20 AS Decimal(18, 0)), 2, 262, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (246, 24, 7, CAST(0 AS Decimal(18, 0)), 1, 211, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (248, 2, 2, CAST(15 AS Decimal(18, 0)), 2, 207, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (249, 3, 11, CAST(10 AS Decimal(18, 0)), 2, 77, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (252, 9, 12, CAST(10 AS Decimal(18, 0)), 2, 234, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (253, 12, 16, CAST(15 AS Decimal(18, 0)), 2, 242, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (255, 14, 5, CAST(0 AS Decimal(18, 0)), 1, 192, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (256, 15, 8, CAST(10 AS Decimal(18, 0)), 2, 94, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (257, 17, 13, CAST(15 AS Decimal(18, 0)), 2, 185, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (258, 18, 6, CAST(10 AS Decimal(18, 0)), 2, 257, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (259, 21, 8, CAST(20 AS Decimal(18, 0)), 1, 65, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (260, 24, 11, CAST(0 AS Decimal(18, 0)), 1, 270, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (261, 2, 15, CAST(10 AS Decimal(18, 0)), 2, 186, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (262, 3, 20, CAST(15 AS Decimal(18, 0)), 2, 144, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (263, 5, 15, CAST(20 AS Decimal(18, 0)), 2, 234, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (264, 6, 20, CAST(0 AS Decimal(18, 0)), 1, 70, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (266, 2, 16, CAST(15 AS Decimal(18, 0)), 2, 81, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (267, 3, 11, CAST(10 AS Decimal(18, 0)), 2, 166, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (268, 5, 15, CAST(20 AS Decimal(18, 0)), 1, 72, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (269, 6, 13, CAST(0 AS Decimal(18, 0)), 1, 82, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (270, 1, 14, CAST(10 AS Decimal(18, 0)), 2, 267, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (271, 2, 3, CAST(15 AS Decimal(18, 0)), 2, 73, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (272, 3, 17, CAST(20 AS Decimal(18, 0)), 2, 92, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (273, 5, 11, CAST(0 AS Decimal(18, 0)), 1, 121, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (274, 6, 9, CAST(10 AS Decimal(18, 0)), 2, 46, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (275, 9, 10, CAST(15 AS Decimal(18, 0)), 2, 265, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (276, 12, 1, CAST(10 AS Decimal(18, 0)), 2, 225, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (278, 14, 5, CAST(0 AS Decimal(18, 0)), 1, 116, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (279, 15, 9, CAST(10 AS Decimal(18, 0)), 2, 158, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (280, 17, 10, CAST(15 AS Decimal(18, 0)), 2, 271, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (281, 18, 20, CAST(20 AS Decimal(18, 0)), 2, 265, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (282, 21, 7, CAST(0 AS Decimal(18, 0)), 1, 45, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (283, 24, 1, CAST(10 AS Decimal(18, 0)), 2, 231, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (285, 2, 1, CAST(10 AS Decimal(18, 0)), 2, 172, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (286, 3, 4, CAST(20 AS Decimal(18, 0)), 1, 262, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (287, 5, 15, CAST(0 AS Decimal(18, 0)), 1, 158, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (288, 6, 18, CAST(10 AS Decimal(18, 0)), 2, 86, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (289, 9, 5, CAST(15 AS Decimal(18, 0)), 2, 168, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (290, 12, 6, CAST(20 AS Decimal(18, 0)), 2, 181, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (291, 13, 1, CAST(0 AS Decimal(18, 0)), 1, 167, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (293, 15, 6, CAST(15 AS Decimal(18, 0)), 2, 96, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (294, 17, 19, CAST(10 AS Decimal(18, 0)), 2, 269, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (295, 18, 2, CAST(20 AS Decimal(18, 0)), 1, 185, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (297, 24, 16, CAST(10 AS Decimal(18, 0)), 2, 74, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (299, 2, 4, CAST(20 AS Decimal(18, 0)), 2, 70, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (300, 3, 8, CAST(0 AS Decimal(18, 0)), 1, 262, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (301, 5, 8, CAST(10 AS Decimal(18, 0)), 2, 229, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (302, 6, 9, CAST(15 AS Decimal(18, 0)), 2, 244, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (303, 9, 13, CAST(10 AS Decimal(18, 0)), 2, 85, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (304, 12, 4, CAST(20 AS Decimal(18, 0)), 1, 80, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (305, 13, 17, CAST(0 AS Decimal(18, 0)), 1, 197, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (307, 15, 18, CAST(15 AS Decimal(18, 0)), 2, 190, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (308, 17, 16, CAST(20 AS Decimal(18, 0)), 2, 216, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (309, 18, 5, CAST(0 AS Decimal(18, 0)), 1, 162, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (311, 24, 16, CAST(15 AS Decimal(18, 0)), 2, 87, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (313, 2, 1, CAST(20 AS Decimal(18, 0)), 2, 261, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (314, 3, 3, CAST(0 AS Decimal(18, 0)), 1, 190, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (315, 5, 14, CAST(10 AS Decimal(18, 0)), 1, 57, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (316, 6, 15, CAST(15 AS Decimal(18, 0)), 2, 53, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (317, 9, 4, CAST(20 AS Decimal(18, 0)), 2, 217, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (318, 12, 9, CAST(0 AS Decimal(18, 0)), 2, 239, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (319, 13, 16, CAST(10 AS Decimal(18, 0)), 1, 45, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (320, 14, 1, CAST(15 AS Decimal(18, 0)), 2, 183, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (321, 15, 8, CAST(10 AS Decimal(18, 0)), 2, 84, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (322, 17, 3, CAST(20 AS Decimal(18, 0)), 2, 163, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (323, 18, 12, CAST(0 AS Decimal(18, 0)), 1, 59, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (324, 21, 4, CAST(10 AS Decimal(18, 0)), 1, 231, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (325, 24, 17, CAST(15 AS Decimal(18, 0)), 2, 161, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (327, 3, 3, CAST(0 AS Decimal(18, 0)), 2, 46, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (328, 5, 5, CAST(10 AS Decimal(18, 0)), 1, 69, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (329, 6, 11, CAST(15 AS Decimal(18, 0)), 2, 161, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (331, 2, 20, CAST(20 AS Decimal(18, 0)), 2, 259, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (332, 3, 8, CAST(0 AS Decimal(18, 0)), 1, 268, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (333, 5, 1, CAST(10 AS Decimal(18, 0)), 1, 198, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (335, 1, 7, CAST(20 AS Decimal(18, 0)), 2, 244, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (336, 2, 11, CAST(0 AS Decimal(18, 0)), 2, 181, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (338, 5, 19, CAST(15 AS Decimal(18, 0)), 2, 186, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (340, 9, 9, CAST(20 AS Decimal(18, 0)), 2, 228, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (341, 12, 2, CAST(0 AS Decimal(18, 0)), 1, 82, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (344, 15, 13, CAST(20 AS Decimal(18, 0)), 2, 71, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (345, 17, 11, CAST(0 AS Decimal(18, 0)), 2, 183, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (346, 18, 16, CAST(10 AS Decimal(18, 0)), 1, 124, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (348, 24, 14, CAST(10 AS Decimal(18, 0)), 2, 207, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (349, 1, 16, CAST(20 AS Decimal(18, 0)), 2, 118, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (350, 2, 10, CAST(0 AS Decimal(18, 0)), 1, 112, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (351, 3, 3, CAST(10 AS Decimal(18, 0)), 1, 248, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (352, 5, 4, CAST(15 AS Decimal(18, 0)), 2, 56, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (354, 9, 4, CAST(0 AS Decimal(18, 0)), 2, 257, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (355, 12, 6, CAST(10 AS Decimal(18, 0)), 1, 88, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (356, 13, 11, CAST(15 AS Decimal(18, 0)), 2, 136, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (358, 15, 20, CAST(20 AS Decimal(18, 0)), 2, 163, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (359, 17, 17, CAST(0 AS Decimal(18, 0)), 1, 221, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (360, 18, 7, CAST(10 AS Decimal(18, 0)), 1, 74, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (361, 21, 15, CAST(15 AS Decimal(18, 0)), 2, 209, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (362, 24, 7, CAST(20 AS Decimal(18, 0)), 2, 202, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (363, 1, 8, CAST(0 AS Decimal(18, 0)), 2, 159, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (364, 2, 4, CAST(10 AS Decimal(18, 0)), 1, 226, 29999.0000)
GO
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (365, 3, 10, CAST(15 AS Decimal(18, 0)), 2, 263, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (366, 5, 14, CAST(10 AS Decimal(18, 0)), 2, 245, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (367, 6, 13, CAST(20 AS Decimal(18, 0)), 2, 190, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (368, 9, 15, CAST(0 AS Decimal(18, 0)), 1, 269, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (370, 13, 3, CAST(15 AS Decimal(18, 0)), 2, 162, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (371, 14, 18, CAST(20 AS Decimal(18, 0)), 2, 76, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (372, 15, 1, CAST(0 AS Decimal(18, 0)), 2, 61, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (374, 18, 10, CAST(15 AS Decimal(18, 0)), 2, 99, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (375, 21, 18, CAST(10 AS Decimal(18, 0)), 2, 75, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (376, 24, 19, CAST(20 AS Decimal(18, 0)), 2, 262, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (377, 1, 6, CAST(0 AS Decimal(18, 0)), 1, 91, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (380, 5, 19, CAST(20 AS Decimal(18, 0)), 2, 75, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (381, 6, 4, CAST(0 AS Decimal(18, 0)), 2, 136, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (382, 9, 11, CAST(10 AS Decimal(18, 0)), 1, 68, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (383, 12, 12, CAST(15 AS Decimal(18, 0)), 2, 73, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (384, 13, 14, CAST(10 AS Decimal(18, 0)), 2, 152, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (385, 14, 5, CAST(20 AS Decimal(18, 0)), 2, 60, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (387, 17, 5, CAST(10 AS Decimal(18, 0)), 1, 48, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (388, 18, 12, CAST(15 AS Decimal(18, 0)), 2, 122, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (389, 21, 10, CAST(20 AS Decimal(18, 0)), 2, 125, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (390, 24, 5, CAST(0 AS Decimal(18, 0)), 2, 44, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (391, 2, 9, CAST(10 AS Decimal(18, 0)), 1, 210, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (392, 3, 12, CAST(15 AS Decimal(18, 0)), 2, 128, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (393, 5, 18, CAST(10 AS Decimal(18, 0)), 2, 206, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (394, 6, 14, CAST(20 AS Decimal(18, 0)), 2, 66, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (395, 9, 11, CAST(0 AS Decimal(18, 0)), 1, 128, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (396, 2, 15, CAST(10 AS Decimal(18, 0)), 1, 246, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (397, 3, 9, CAST(15 AS Decimal(18, 0)), 2, 100, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (398, 5, 9, CAST(20 AS Decimal(18, 0)), 2, 218, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (399, 6, 6, CAST(0 AS Decimal(18, 0)), 2, 164, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (400, 1, 8, CAST(10 AS Decimal(18, 0)), 1, 105, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (401, 2, 6, CAST(15 AS Decimal(18, 0)), 1, 172, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (402, 3, 9, CAST(10 AS Decimal(18, 0)), 2, 56, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (403, 5, 20, CAST(20 AS Decimal(18, 0)), 2, 163, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (404, 6, 11, CAST(0 AS Decimal(18, 0)), 2, 217, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (405, 9, 3, CAST(10 AS Decimal(18, 0)), 1, 262, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (406, 12, 5, CAST(15 AS Decimal(18, 0)), 1, 210, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (407, 13, 9, CAST(20 AS Decimal(18, 0)), 2, 118, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (408, 14, 9, CAST(0 AS Decimal(18, 0)), 2, 268, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (409, 15, 1, CAST(10 AS Decimal(18, 0)), 2, 85, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (410, 17, 8, CAST(15 AS Decimal(18, 0)), 1, 109, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (411, 18, 14, CAST(10 AS Decimal(18, 0)), 2, 246, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (413, 24, 9, CAST(0 AS Decimal(18, 0)), 2, 75, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (414, 1, 12, CAST(10 AS Decimal(18, 0)), 1, 127, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (415, 2, 7, CAST(15 AS Decimal(18, 0)), 1, 128, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (416, 3, 20, CAST(20 AS Decimal(18, 0)), 2, 154, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (417, 5, 10, CAST(0 AS Decimal(18, 0)), 2, 96, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (418, 6, 10, CAST(10 AS Decimal(18, 0)), 2, 125, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (420, 12, 4, CAST(10 AS Decimal(18, 0)), 2, 130, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (422, 14, 1, CAST(0 AS Decimal(18, 0)), 2, 128, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (423, 15, 7, CAST(10 AS Decimal(18, 0)), 1, 85, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (424, 17, 16, CAST(15 AS Decimal(18, 0)), 1, 193, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (425, 18, 12, CAST(20 AS Decimal(18, 0)), 2, 87, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (426, 21, 1, CAST(0 AS Decimal(18, 0)), 2, 159, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (427, 24, 4, CAST(10 AS Decimal(18, 0)), 2, 216, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (428, 1, 1, CAST(15 AS Decimal(18, 0)), 1, 79, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (429, 2, 13, CAST(10 AS Decimal(18, 0)), 2, 80, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (430, 3, 15, CAST(20 AS Decimal(18, 0)), 2, 104, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (431, 5, 4, CAST(0 AS Decimal(18, 0)), 2, 236, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (434, 12, 5, CAST(20 AS Decimal(18, 0)), 2, 215, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (436, 14, 11, CAST(10 AS Decimal(18, 0)), 2, 237, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (438, 17, 17, CAST(10 AS Decimal(18, 0)), 2, 105, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (439, 18, 4, CAST(20 AS Decimal(18, 0)), 2, 172, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (440, 21, 8, CAST(0 AS Decimal(18, 0)), 2, 168, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (441, 24, 6, CAST(10 AS Decimal(18, 0)), 1, 258, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (442, 1, 18, CAST(15 AS Decimal(18, 0)), 1, 248, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (443, 2, 4, CAST(20 AS Decimal(18, 0)), 2, 164, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (444, 3, 19, CAST(0 AS Decimal(18, 0)), 2, 99, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (445, 5, 14, CAST(10 AS Decimal(18, 0)), 2, 214, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (446, 6, 13, CAST(15 AS Decimal(18, 0)), 1, 252, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (447, 9, 18, CAST(10 AS Decimal(18, 0)), 2, 232, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (448, 12, 18, CAST(20 AS Decimal(18, 0)), 2, 185, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (449, 13, 6, CAST(0 AS Decimal(18, 0)), 2, 64, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (450, 14, 9, CAST(10 AS Decimal(18, 0)), 1, 196, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (451, 15, 9, CAST(15 AS Decimal(18, 0)), 1, 164, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (452, 17, 18, CAST(20 AS Decimal(18, 0)), 2, 248, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (453, 18, 3, CAST(0 AS Decimal(18, 0)), 2, 56, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (454, 21, 19, CAST(10 AS Decimal(18, 0)), 2, 90, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (455, 24, 15, CAST(15 AS Decimal(18, 0)), 1, 212, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (456, 2, 7, CAST(10 AS Decimal(18, 0)), 2, 148, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (457, 3, 2, CAST(20 AS Decimal(18, 0)), 2, 190, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (458, 5, 5, CAST(0 AS Decimal(18, 0)), 2, 233, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (459, 6, 14, CAST(10 AS Decimal(18, 0)), 1, 78, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (460, 9, 2, CAST(15 AS Decimal(18, 0)), 1, 178, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (461, 2, 20, CAST(20 AS Decimal(18, 0)), 2, 55, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (462, 3, 6, CAST(0 AS Decimal(18, 0)), 2, 74, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (463, 5, 11, CAST(10 AS Decimal(18, 0)), 2, 235, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (464, 6, 15, CAST(15 AS Decimal(18, 0)), 1, 255, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (466, 2, 4, CAST(20 AS Decimal(18, 0)), 2, 55, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (467, 3, 1, CAST(0 AS Decimal(18, 0)), 2, 64, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (468, 5, 15, CAST(10 AS Decimal(18, 0)), 1, 155, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (469, 6, 20, CAST(15 AS Decimal(18, 0)), 1, 116, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (470, 9, 17, CAST(20 AS Decimal(18, 0)), 2, 119, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (471, 12, 17, CAST(0 AS Decimal(18, 0)), 2, 174, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (472, 13, 12, CAST(10 AS Decimal(18, 0)), 2, 52, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (473, 14, 8, CAST(15 AS Decimal(18, 0)), 1, 194, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (474, 15, 6, CAST(10 AS Decimal(18, 0)), 2, 114, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (475, 17, 6, CAST(20 AS Decimal(18, 0)), 2, 251, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (478, 24, 12, CAST(15 AS Decimal(18, 0)), 1, 46, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (479, 1, 12, CAST(20 AS Decimal(18, 0)), 2, 84, 400.0000)
GO
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (480, 2, 3, CAST(0 AS Decimal(18, 0)), 2, 185, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (481, 3, 17, CAST(10 AS Decimal(18, 0)), 2, 162, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (482, 5, 9, CAST(15 AS Decimal(18, 0)), 1, 205, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (483, 6, 17, CAST(10 AS Decimal(18, 0)), 2, 74, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (484, 9, 18, CAST(20 AS Decimal(18, 0)), 2, 110, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (485, 12, 20, CAST(0 AS Decimal(18, 0)), 2, 206, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (486, 13, 6, CAST(10 AS Decimal(18, 0)), 1, 93, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (487, 14, 8, CAST(15 AS Decimal(18, 0)), 1, 224, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (488, 15, 20, NULL, 2, 185, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (490, 18, 12, CAST(0 AS Decimal(18, 0)), 2, 96, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (491, 21, 10, CAST(10 AS Decimal(18, 0)), 1, 141, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (492, 24, 9, CAST(15 AS Decimal(18, 0)), 1, 230, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (493, 1, 9, CAST(10 AS Decimal(18, 0)), 2, 150, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (494, 2, 17, CAST(20 AS Decimal(18, 0)), 2, 216, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (495, 3, 5, CAST(0 AS Decimal(18, 0)), 2, 227, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (496, 5, 14, CAST(10 AS Decimal(18, 0)), 1, 271, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (497, 6, 3, CAST(15 AS Decimal(18, 0)), 1, 92, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (498, 9, 2, CAST(20 AS Decimal(18, 0)), 2, 63, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (501, 14, 6, CAST(15 AS Decimal(18, 0)), 1, 203, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (502, 15, 6, CAST(10 AS Decimal(18, 0)), 2, 213, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (503, 17, 8, CAST(20 AS Decimal(18, 0)), 2, 192, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (504, 18, 11, CAST(0 AS Decimal(18, 0)), 2, 195, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (506, 24, 17, CAST(15 AS Decimal(18, 0)), 1, 230, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (507, 1, 18, CAST(20 AS Decimal(18, 0)), 2, 148, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (508, 2, 2, CAST(0 AS Decimal(18, 0)), 2, 48, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (509, 3, 16, CAST(10 AS Decimal(18, 0)), 2, 47, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (510, 5, 14, CAST(15 AS Decimal(18, 0)), 1, 55, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (511, 6, 17, CAST(10 AS Decimal(18, 0)), 2, 197, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (512, 9, 7, CAST(20 AS Decimal(18, 0)), 2, 137, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (513, 12, 12, CAST(0 AS Decimal(18, 0)), 2, 59, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (514, 13, 5, CAST(10 AS Decimal(18, 0)), 1, 257, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (515, 14, 18, CAST(15 AS Decimal(18, 0)), 1, 50, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (516, 15, 19, CAST(20 AS Decimal(18, 0)), 2, 245, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (517, 17, 5, CAST(0 AS Decimal(18, 0)), 2, 108, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (519, 21, 13, CAST(15 AS Decimal(18, 0)), 1, 134, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (520, 24, 9, CAST(10 AS Decimal(18, 0)), 2, 231, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (521, 2, 10, CAST(20 AS Decimal(18, 0)), 2, 99, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (522, 3, 2, CAST(0 AS Decimal(18, 0)), 2, 264, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (524, 6, 9, CAST(15 AS Decimal(18, 0)), 1, 230, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (525, 9, 11, CAST(20 AS Decimal(18, 0)), 2, 164, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (526, 2, 13, CAST(0 AS Decimal(18, 0)), 2, 262, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (527, 3, 11, CAST(10 AS Decimal(18, 0)), 2, 212, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (528, 5, 18, CAST(15 AS Decimal(18, 0)), 1, 208, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (529, 6, 2, CAST(10 AS Decimal(18, 0)), 2, 139, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (530, 1, 17, CAST(20 AS Decimal(18, 0)), 2, 250, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (531, 2, 17, CAST(0 AS Decimal(18, 0)), 2, 265, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (532, 3, 2, CAST(10 AS Decimal(18, 0)), 1, 89, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (533, 5, 2, CAST(15 AS Decimal(18, 0)), 1, 193, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (534, 6, 18, CAST(20 AS Decimal(18, 0)), 2, 97, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (535, 9, 10, CAST(0 AS Decimal(18, 0)), 2, 269, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (536, 12, 11, CAST(10 AS Decimal(18, 0)), 2, 155, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (537, 13, 15, CAST(15 AS Decimal(18, 0)), 1, 235, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (538, 14, 8, CAST(10 AS Decimal(18, 0)), 2, 148, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (539, 15, 18, CAST(20 AS Decimal(18, 0)), 2, 77, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (540, 17, 1, CAST(0 AS Decimal(18, 0)), 2, 192, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (541, 18, 20, CAST(10 AS Decimal(18, 0)), 1, 252, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (542, 21, 20, CAST(15 AS Decimal(18, 0)), 1, 168, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (543, 24, 6, CAST(20 AS Decimal(18, 0)), 2, 65, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (544, 1, 16, CAST(0 AS Decimal(18, 0)), 2, 267, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (545, 2, 2, CAST(10 AS Decimal(18, 0)), 2, 83, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (546, 3, 12, CAST(15 AS Decimal(18, 0)), 1, 140, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (547, 5, 12, CAST(10 AS Decimal(18, 0)), 2, 138, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (548, 6, 11, CAST(20 AS Decimal(18, 0)), 2, 235, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (549, 9, 5, CAST(0 AS Decimal(18, 0)), 2, 191, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (550, 12, 19, CAST(10 AS Decimal(18, 0)), 1, 47, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (551, 13, 10, CAST(15 AS Decimal(18, 0)), 1, 44, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (552, 14, 5, CAST(20 AS Decimal(18, 0)), 2, 265, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (554, 17, 3, CAST(10 AS Decimal(18, 0)), 2, 56, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (555, 18, 3, CAST(15 AS Decimal(18, 0)), 1, 164, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (556, 21, 9, CAST(10 AS Decimal(18, 0)), 2, 106, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (557, 24, 3, CAST(20 AS Decimal(18, 0)), 2, 243, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (558, 1, 17, CAST(0 AS Decimal(18, 0)), 2, 97, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (560, 3, 16, CAST(15 AS Decimal(18, 0)), 1, 111, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (561, 5, 5, CAST(20 AS Decimal(18, 0)), 2, 73, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (562, 6, 3, CAST(0 AS Decimal(18, 0)), 2, 114, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (563, 9, 4, CAST(10 AS Decimal(18, 0)), 2, 229, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (564, 12, 9, CAST(15 AS Decimal(18, 0)), 1, 97, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (565, 13, 5, CAST(10 AS Decimal(18, 0)), 2, 263, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (566, 14, 18, CAST(20 AS Decimal(18, 0)), 2, 60, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (567, 15, 9, CAST(0 AS Decimal(18, 0)), 2, 123, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (568, 17, 15, CAST(10 AS Decimal(18, 0)), 1, 80, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (570, 21, 9, CAST(20 AS Decimal(18, 0)), 2, 183, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (571, 24, 18, CAST(0 AS Decimal(18, 0)), 2, 191, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (572, 1, 7, CAST(10 AS Decimal(18, 0)), 2, 215, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (573, 2, 10, CAST(15 AS Decimal(18, 0)), 1, 239, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (574, 3, 19, CAST(10 AS Decimal(18, 0)), 2, 181, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (575, 5, 16, CAST(20 AS Decimal(18, 0)), 2, 82, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (576, 6, 18, CAST(0 AS Decimal(18, 0)), 2, 240, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (577, 9, 6, CAST(10 AS Decimal(18, 0)), 1, 196, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (578, 12, 13, CAST(15 AS Decimal(18, 0)), 1, 191, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (579, 13, 5, CAST(20 AS Decimal(18, 0)), 2, 220, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (580, 14, 11, CAST(0 AS Decimal(18, 0)), 2, 63, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (581, 15, 11, CAST(10 AS Decimal(18, 0)), 2, 130, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (582, 17, 9, CAST(15 AS Decimal(18, 0)), 1, 251, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (583, 18, 3, CAST(10 AS Decimal(18, 0)), 1, 225, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (584, 21, 14, CAST(20 AS Decimal(18, 0)), 2, 229, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (585, 24, 5, CAST(0 AS Decimal(18, 0)), 2, 125, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (586, 2, 17, CAST(10 AS Decimal(18, 0)), 2, 185, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (587, 3, 6, CAST(15 AS Decimal(18, 0)), 1, 206, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (588, 5, 20, CAST(20 AS Decimal(18, 0)), 1, 196, 300.0000)
GO
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (589, 6, 8, CAST(0 AS Decimal(18, 0)), 2, 176, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (593, 5, 3, CAST(20 AS Decimal(18, 0)), 2, 254, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (594, 6, 2, CAST(0 AS Decimal(18, 0)), 2, 205, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (595, 1, 19, CAST(10 AS Decimal(18, 0)), 2, 173, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (596, 2, 10, CAST(15 AS Decimal(18, 0)), 1, 256, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (597, 3, 10, CAST(20 AS Decimal(18, 0)), 1, 48, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (598, 5, 5, CAST(0 AS Decimal(18, 0)), 2, 261, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (599, 6, 7, CAST(10 AS Decimal(18, 0)), 2, 133, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (600, 9, 14, CAST(15 AS Decimal(18, 0)), 2, 262, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (601, 12, 12, CAST(10 AS Decimal(18, 0)), 1, 249, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (602, 13, 18, CAST(20 AS Decimal(18, 0)), 2, 116, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (604, 15, 17, CAST(10 AS Decimal(18, 0)), 2, 208, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (606, 18, 14, CAST(20 AS Decimal(18, 0)), 1, 213, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (607, 21, 14, CAST(0 AS Decimal(18, 0)), 2, 53, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (608, 24, 11, CAST(10 AS Decimal(18, 0)), 2, 177, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (609, 1, 3, CAST(15 AS Decimal(18, 0)), 2, 184, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (610, 2, 19, CAST(10 AS Decimal(18, 0)), 1, 207, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (612, 5, 10, CAST(0 AS Decimal(18, 0)), 2, 55, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (613, 6, 3, CAST(10 AS Decimal(18, 0)), 2, 67, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (614, 9, 14, CAST(15 AS Decimal(18, 0)), 1, 151, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (616, 13, 2, CAST(0 AS Decimal(18, 0)), 2, 167, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (618, 15, 19, CAST(15 AS Decimal(18, 0)), 2, 110, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (619, 17, 15, CAST(10 AS Decimal(18, 0)), 1, 205, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (620, 18, 6, CAST(20 AS Decimal(18, 0)), 2, 264, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (621, 21, 14, CAST(0 AS Decimal(18, 0)), 2, 127, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (622, 24, 11, CAST(10 AS Decimal(18, 0)), 2, 53, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (623, 1, 16, CAST(15 AS Decimal(18, 0)), 1, 270, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (624, 2, 7, CAST(20 AS Decimal(18, 0)), 1, 71, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (625, 3, 10, CAST(0 AS Decimal(18, 0)), 2, 151, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (626, 5, 4, CAST(10 AS Decimal(18, 0)), 2, 54, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (628, 9, 15, CAST(10 AS Decimal(18, 0)), 1, 144, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (629, 12, 1, CAST(20 AS Decimal(18, 0)), 2, 265, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (631, 14, 20, CAST(10 AS Decimal(18, 0)), 2, 167, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (632, 15, 8, CAST(15 AS Decimal(18, 0)), 1, 104, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (634, 18, 14, CAST(0 AS Decimal(18, 0)), 2, 101, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (635, 21, 13, CAST(10 AS Decimal(18, 0)), 2, 237, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (637, 1, 7, CAST(10 AS Decimal(18, 0)), 1, 232, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (638, 2, 12, CAST(20 AS Decimal(18, 0)), 2, 81, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (639, 3, 1, CAST(0 AS Decimal(18, 0)), 2, 74, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (640, 5, 9, CAST(10 AS Decimal(18, 0)), 2, 159, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (641, 6, 9, CAST(15 AS Decimal(18, 0)), 1, 170, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (642, 9, 10, CAST(20 AS Decimal(18, 0)), 1, 51, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (643, 12, 15, CAST(0 AS Decimal(18, 0)), 2, 155, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (644, 13, 16, CAST(10 AS Decimal(18, 0)), 2, 62, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (646, 15, 6, CAST(10 AS Decimal(18, 0)), 1, 46, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (647, 17, 8, CAST(20 AS Decimal(18, 0)), 2, 185, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (648, 18, 13, CAST(0 AS Decimal(18, 0)), 2, 175, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (650, 24, 13, CAST(15 AS Decimal(18, 0)), 1, 129, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (651, 2, 2, CAST(20 AS Decimal(18, 0)), 1, 110, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (652, 3, 17, CAST(0 AS Decimal(18, 0)), 2, 104, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (654, 6, 12, CAST(15 AS Decimal(18, 0)), 2, 86, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (655, 9, 19, CAST(10 AS Decimal(18, 0)), 1, 135, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (656, 2, 1, CAST(20 AS Decimal(18, 0)), 2, 252, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (657, 3, 8, CAST(0 AS Decimal(18, 0)), 2, 119, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (658, 5, 5, CAST(10 AS Decimal(18, 0)), 2, 214, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (659, 6, 7, CAST(15 AS Decimal(18, 0)), 1, 204, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (660, 1, 6, CAST(20 AS Decimal(18, 0)), 1, 92, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (661, 2, 12, CAST(0 AS Decimal(18, 0)), 2, 119, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (662, 3, 11, CAST(10 AS Decimal(18, 0)), 2, 181, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (663, 5, 15, CAST(15 AS Decimal(18, 0)), 2, 171, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (664, 6, 3, CAST(10 AS Decimal(18, 0)), 1, 68, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (665, 9, 19, CAST(20 AS Decimal(18, 0)), 2, 93, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (666, 12, 3, CAST(0 AS Decimal(18, 0)), 2, 102, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (667, 13, 7, CAST(10 AS Decimal(18, 0)), 2, 107, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (668, 14, 4, CAST(15 AS Decimal(18, 0)), 1, 181, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (669, 15, 7, CAST(20 AS Decimal(18, 0)), 1, 92, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (671, 18, 12, CAST(10 AS Decimal(18, 0)), 2, 139, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (672, 21, 6, CAST(15 AS Decimal(18, 0)), 2, 266, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (673, 24, 3, CAST(10 AS Decimal(18, 0)), 1, 70, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (674, 1, 9, CAST(20 AS Decimal(18, 0)), 1, 185, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (675, 2, 10, CAST(0 AS Decimal(18, 0)), 2, 199, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (678, 6, 1, CAST(20 AS Decimal(18, 0)), 1, 73, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (679, 9, 7, CAST(0 AS Decimal(18, 0)), 1, 196, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (680, 12, 9, CAST(10 AS Decimal(18, 0)), 2, 216, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (682, 14, 12, CAST(10 AS Decimal(18, 0)), 2, 109, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (683, 15, 8, CAST(20 AS Decimal(18, 0)), 1, 51, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (684, 17, 13, CAST(0 AS Decimal(18, 0)), 2, 182, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (685, 18, 4, CAST(10 AS Decimal(18, 0)), 2, 113, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (686, 21, 16, CAST(15 AS Decimal(18, 0)), 2, 225, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (687, 24, 8, CAST(20 AS Decimal(18, 0)), 1, 135, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (688, 1, 16, CAST(0 AS Decimal(18, 0)), 1, 53, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (689, 2, 20, CAST(10 AS Decimal(18, 0)), 2, 189, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (690, 3, 14, CAST(15 AS Decimal(18, 0)), 2, 183, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (691, 5, 7, CAST(10 AS Decimal(18, 0)), 2, 119, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (692, 6, 2, CAST(20 AS Decimal(18, 0)), 1, 246, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (693, 9, 7, CAST(0 AS Decimal(18, 0)), 2, 120, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (694, 12, 5, CAST(10 AS Decimal(18, 0)), 2, 100, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (695, 13, 6, CAST(15 AS Decimal(18, 0)), 2, 188, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (696, 14, 5, CAST(20 AS Decimal(18, 0)), 1, 82, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (697, 15, 9, CAST(0 AS Decimal(18, 0)), 1, 95, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (698, 17, 1, CAST(10 AS Decimal(18, 0)), 2, 194, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (699, 18, 12, CAST(15 AS Decimal(18, 0)), 2, 131, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (700, 21, 7, CAST(10 AS Decimal(18, 0)), 2, 132, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (701, 24, 11, CAST(20 AS Decimal(18, 0)), 1, 213, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (702, 1, 6, CAST(0 AS Decimal(18, 0)), 2, 58, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (703, 2, 13, CAST(10 AS Decimal(18, 0)), 2, 147, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (705, 5, 10, CAST(20 AS Decimal(18, 0)), 1, 258, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (707, 9, 5, CAST(10 AS Decimal(18, 0)), 2, 77, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (709, 13, 6, CAST(10 AS Decimal(18, 0)), 2, 218, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (710, 14, 7, CAST(20 AS Decimal(18, 0)), 1, 149, 25049.0000)
GO
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (711, 15, 3, CAST(0 AS Decimal(18, 0)), 2, 162, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (712, 17, 1, CAST(10 AS Decimal(18, 0)), 2, 266, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (713, 18, 4, CAST(15 AS Decimal(18, 0)), 2, 212, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (714, 21, 19, CAST(20 AS Decimal(18, 0)), 1, 106, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (715, 24, 18, CAST(0 AS Decimal(18, 0)), 1, 210, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (716, 2, 4, CAST(10 AS Decimal(18, 0)), 2, 151, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (717, 3, 18, CAST(15 AS Decimal(18, 0)), 2, 125, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (718, 5, 1, CAST(10 AS Decimal(18, 0)), 2, 120, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (719, 6, 19, CAST(20 AS Decimal(18, 0)), 1, 238, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (720, 9, 15, CAST(0 AS Decimal(18, 0)), 2, 259, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (722, 3, 5, CAST(15 AS Decimal(18, 0)), 2, 154, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (723, 5, 18, CAST(20 AS Decimal(18, 0)), 1, 236, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (725, 1, 17, CAST(10 AS Decimal(18, 0)), 2, 63, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (726, 2, 14, CAST(15 AS Decimal(18, 0)), 2, 193, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (727, 3, 18, CAST(10 AS Decimal(18, 0)), 2, 242, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (729, 6, 17, CAST(0 AS Decimal(18, 0)), 2, 252, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (730, 9, 10, CAST(10 AS Decimal(18, 0)), 2, 186, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (731, 12, 17, CAST(15 AS Decimal(18, 0)), 2, 221, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (732, 13, 19, CAST(20 AS Decimal(18, 0)), 1, 270, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (735, 17, 15, CAST(15 AS Decimal(18, 0)), 2, 194, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (736, 18, 20, CAST(10 AS Decimal(18, 0)), 2, 257, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (737, 21, 20, CAST(20 AS Decimal(18, 0)), 1, 128, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (738, 24, 20, CAST(0 AS Decimal(18, 0)), 2, 106, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (739, 1, 19, CAST(10 AS Decimal(18, 0)), 2, 216, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (740, 2, 19, CAST(15 AS Decimal(18, 0)), 2, 141, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (741, 3, 2, CAST(20 AS Decimal(18, 0)), 1, 149, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (742, 5, 9, CAST(0 AS Decimal(18, 0)), 1, 183, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (743, 6, 13, CAST(10 AS Decimal(18, 0)), 2, 61, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (744, 9, 15, CAST(15 AS Decimal(18, 0)), 2, 248, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (745, 12, 15, CAST(10 AS Decimal(18, 0)), 2, 75, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (746, 13, 10, CAST(20 AS Decimal(18, 0)), 1, 214, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (747, 14, 12, CAST(0 AS Decimal(18, 0)), 2, 199, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (748, 15, 10, CAST(10 AS Decimal(18, 0)), 2, 73, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (749, 17, 13, CAST(15 AS Decimal(18, 0)), 2, 117, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (750, 18, 3, CAST(20 AS Decimal(18, 0)), 1, 97, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (751, 21, 11, CAST(0 AS Decimal(18, 0)), 1, 207, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (752, 24, 15, CAST(10 AS Decimal(18, 0)), 2, 215, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (753, 1, 2, CAST(15 AS Decimal(18, 0)), 2, 118, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (754, 2, 12, CAST(10 AS Decimal(18, 0)), 2, 191, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (755, 3, 1, CAST(20 AS Decimal(18, 0)), 1, 131, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (756, 5, 16, CAST(0 AS Decimal(18, 0)), 2, 123, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (757, 6, 4, CAST(10 AS Decimal(18, 0)), 2, 225, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (758, 9, 16, CAST(15 AS Decimal(18, 0)), 2, 219, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (759, 12, 20, CAST(20 AS Decimal(18, 0)), 1, 193, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (760, 13, 14, CAST(0 AS Decimal(18, 0)), 1, 50, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (761, 14, 5, CAST(10 AS Decimal(18, 0)), 2, 148, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (762, 15, 9, CAST(15 AS Decimal(18, 0)), 2, 221, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (763, 17, 16, CAST(10 AS Decimal(18, 0)), 2, 143, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (765, 21, 17, CAST(0 AS Decimal(18, 0)), 1, 191, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (766, 24, 16, CAST(10 AS Decimal(18, 0)), 2, 231, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (767, 1, 8, CAST(15 AS Decimal(18, 0)), 2, 153, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (768, 2, 10, CAST(20 AS Decimal(18, 0)), 2, 100, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (769, 3, 13, CAST(0 AS Decimal(18, 0)), 1, 147, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (770, 5, 17, CAST(10 AS Decimal(18, 0)), 1, 210, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (771, 6, 20, CAST(15 AS Decimal(18, 0)), 2, 116, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (772, 9, 12, CAST(10 AS Decimal(18, 0)), 2, 60, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (773, 12, 6, CAST(20 AS Decimal(18, 0)), 2, 71, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (774, 13, 17, CAST(0 AS Decimal(18, 0)), 1, 170, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (775, 14, 20, CAST(10 AS Decimal(18, 0)), 2, 198, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (776, 15, 10, CAST(15 AS Decimal(18, 0)), 2, 270, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (777, 17, 19, CAST(20 AS Decimal(18, 0)), 2, 165, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (778, 18, 8, CAST(0 AS Decimal(18, 0)), 1, 161, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (779, 21, 18, CAST(10 AS Decimal(18, 0)), 1, 135, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (781, 2, 20, CAST(10 AS Decimal(18, 0)), 2, 122, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (782, 3, 17, CAST(20 AS Decimal(18, 0)), 2, 44, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (783, 5, 13, CAST(0 AS Decimal(18, 0)), 1, 266, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (784, 6, 8, CAST(10 AS Decimal(18, 0)), 2, 130, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (785, 9, 1, CAST(15 AS Decimal(18, 0)), 2, 124, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (787, 3, 15, CAST(0 AS Decimal(18, 0)), 1, 122, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (788, 5, 11, CAST(10 AS Decimal(18, 0)), 1, 102, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (791, 2, 14, CAST(20 AS Decimal(18, 0)), 2, 100, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (792, 3, 16, CAST(0 AS Decimal(18, 0)), 1, 52, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (793, 5, 8, CAST(10 AS Decimal(18, 0)), 2, 248, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (794, 6, 8, CAST(15 AS Decimal(18, 0)), 2, 247, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (795, 9, 8, CAST(20 AS Decimal(18, 0)), 2, 255, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (796, 12, 17, CAST(0 AS Decimal(18, 0)), 1, 97, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (797, 13, 5, CAST(10 AS Decimal(18, 0)), 1, 256, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (801, 18, 19, CAST(0 AS Decimal(18, 0)), 1, 112, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (802, 21, 13, CAST(10 AS Decimal(18, 0)), 2, 109, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (803, 24, 1, CAST(15 AS Decimal(18, 0)), 2, 109, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (805, 2, 6, CAST(0 AS Decimal(18, 0)), 1, 186, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (806, 3, 2, CAST(10 AS Decimal(18, 0)), 1, 54, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (807, 5, 5, CAST(15 AS Decimal(18, 0)), 2, 108, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (808, 6, 1, CAST(10 AS Decimal(18, 0)), 2, 175, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (810, 12, 13, CAST(0 AS Decimal(18, 0)), 1, 122, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (811, 13, 18, CAST(10 AS Decimal(18, 0)), 2, 67, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (812, 14, 4, CAST(15 AS Decimal(18, 0)), 2, 140, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (813, 15, 1, CAST(20 AS Decimal(18, 0)), 2, 181, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (814, 17, 17, CAST(0 AS Decimal(18, 0)), 1, 150, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (816, 21, 18, CAST(15 AS Decimal(18, 0)), 2, 143, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (818, 1, 11, CAST(20 AS Decimal(18, 0)), 2, 154, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (819, 2, 7, CAST(0 AS Decimal(18, 0)), 1, 191, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (820, 3, 19, CAST(10 AS Decimal(18, 0)), 2, 223, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (821, 5, 3, CAST(15 AS Decimal(18, 0)), 2, 172, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (822, 6, 2, CAST(20 AS Decimal(18, 0)), 2, 204, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (823, 9, 19, CAST(0 AS Decimal(18, 0)), 1, 250, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (824, 12, 1, CAST(10 AS Decimal(18, 0)), 1, 66, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (826, 14, 6, CAST(10 AS Decimal(18, 0)), 2, 215, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (827, 15, 7, CAST(20 AS Decimal(18, 0)), 2, 256, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (829, 18, 19, CAST(10 AS Decimal(18, 0)), 2, 176, 300.0000)
GO
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (830, 21, 19, CAST(15 AS Decimal(18, 0)), 2, 42, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (832, 1, 11, CAST(0 AS Decimal(18, 0)), 1, 153, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (833, 2, 13, CAST(10 AS Decimal(18, 0)), 1, 76, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (834, 3, 4, CAST(15 AS Decimal(18, 0)), 2, 83, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (835, 5, 9, CAST(10 AS Decimal(18, 0)), 2, 147, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (836, 6, 18, CAST(20 AS Decimal(18, 0)), 2, 167, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (837, 9, 20, CAST(0 AS Decimal(18, 0)), 1, 52, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (838, 12, 9, CAST(10 AS Decimal(18, 0)), 2, 45, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (840, 14, 12, CAST(20 AS Decimal(18, 0)), 2, 172, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (841, 15, 18, CAST(0 AS Decimal(18, 0)), 1, 73, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (842, 17, 19, CAST(10 AS Decimal(18, 0)), 1, 146, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (843, 18, 8, CAST(15 AS Decimal(18, 0)), 2, 179, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (844, 21, 18, CAST(10 AS Decimal(18, 0)), 2, 205, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (845, 24, 12, CAST(20 AS Decimal(18, 0)), 2, 71, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (846, 2, 18, CAST(0 AS Decimal(18, 0)), 1, 121, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (847, 3, 8, CAST(10 AS Decimal(18, 0)), 2, 173, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (848, 5, 3, CAST(15 AS Decimal(18, 0)), 2, 45, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (851, 2, 5, CAST(10 AS Decimal(18, 0)), 1, 70, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (852, 3, 8, CAST(15 AS Decimal(18, 0)), 2, 88, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (853, 5, 9, CAST(10 AS Decimal(18, 0)), 2, 231, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (854, 6, 6, CAST(20 AS Decimal(18, 0)), 2, 240, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (855, 1, 15, CAST(0 AS Decimal(18, 0)), 1, 88, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (856, 2, 7, CAST(10 AS Decimal(18, 0)), 1, 169, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (857, 3, 7, CAST(15 AS Decimal(18, 0)), 2, 251, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (858, 5, 20, CAST(20 AS Decimal(18, 0)), 2, 44, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (859, 6, 11, CAST(0 AS Decimal(18, 0)), 2, 103, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (860, 9, 2, CAST(10 AS Decimal(18, 0)), 1, 52, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (861, 12, 15, CAST(15 AS Decimal(18, 0)), 1, 67, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (863, 14, 1, CAST(20 AS Decimal(18, 0)), 2, 111, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (864, 15, 6, CAST(0 AS Decimal(18, 0)), 2, 158, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (865, 17, 3, CAST(10 AS Decimal(18, 0)), 1, 196, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (866, 18, 12, CAST(15 AS Decimal(18, 0)), 2, 53, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (867, 21, 3, CAST(20 AS Decimal(18, 0)), 2, 162, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (868, 24, 16, CAST(0 AS Decimal(18, 0)), 2, 185, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (869, 1, 9, CAST(10 AS Decimal(18, 0)), 1, 188, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (870, 2, 9, CAST(15 AS Decimal(18, 0)), 1, 215, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (871, 3, 20, CAST(10 AS Decimal(18, 0)), 2, 163, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (872, 5, 12, CAST(20 AS Decimal(18, 0)), 2, 197, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (874, 9, 6, CAST(10 AS Decimal(18, 0)), 1, 165, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (875, 12, 9, CAST(15 AS Decimal(18, 0)), 2, 88, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (876, 13, 14, CAST(20 AS Decimal(18, 0)), 2, 86, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (877, 14, 18, CAST(0 AS Decimal(18, 0)), 2, 205, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (878, 15, 6, CAST(10 AS Decimal(18, 0)), 1, 106, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (879, 17, 11, CAST(15 AS Decimal(18, 0)), 1, 60, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (880, 18, 14, CAST(10 AS Decimal(18, 0)), 2, 260, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (881, 21, 19, CAST(20 AS Decimal(18, 0)), 2, 159, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (883, 1, 4, CAST(10 AS Decimal(18, 0)), 1, 91, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (884, 2, 7, CAST(15 AS Decimal(18, 0)), 2, 138, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (885, 3, 11, CAST(20 AS Decimal(18, 0)), 2, 97, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (886, 5, 7, CAST(0 AS Decimal(18, 0)), 2, 257, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (887, 6, 6, CAST(10 AS Decimal(18, 0)), 1, 122, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (888, 9, 12, CAST(15 AS Decimal(18, 0)), 1, 166, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (889, 12, 15, CAST(10 AS Decimal(18, 0)), 2, 110, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (890, 13, 15, CAST(20 AS Decimal(18, 0)), 2, 98, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (891, 14, 13, CAST(0 AS Decimal(18, 0)), 2, 153, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (893, 17, 1, CAST(15 AS Decimal(18, 0)), 2, 98, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (894, 18, 4, CAST(20 AS Decimal(18, 0)), 2, 262, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (895, 21, 8, CAST(0 AS Decimal(18, 0)), 2, 49, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (897, 1, 7, CAST(15 AS Decimal(18, 0)), 1, 159, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (899, 3, 10, CAST(20 AS Decimal(18, 0)), 2, 264, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (900, 5, 11, CAST(0 AS Decimal(18, 0)), 2, 201, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (901, 6, 17, CAST(10 AS Decimal(18, 0)), 1, 236, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (902, 9, 6, CAST(15 AS Decimal(18, 0)), 2, 107, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (903, 12, 3, CAST(20 AS Decimal(18, 0)), 2, 222, 350.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (904, 13, 5, CAST(0 AS Decimal(18, 0)), 2, 164, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (905, 14, 5, CAST(10 AS Decimal(18, 0)), 1, 172, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (906, 15, 18, CAST(15 AS Decimal(18, 0)), 1, 141, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (907, 17, 6, CAST(10 AS Decimal(18, 0)), 2, 170, 300.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (908, 18, 5, CAST(20 AS Decimal(18, 0)), 2, 123, 25049.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (909, 21, 13, CAST(0 AS Decimal(18, 0)), 2, 164, 400.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (910, 24, 5, CAST(10 AS Decimal(18, 0)), 1, 132, 29999.0000)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (911, 10, 1, CAST(0 AS Decimal(18, 0)), 1, 312, 250.4900)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (912, 10, 2, CAST(0 AS Decimal(18, 0)), 1, 312, 250.4900)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (913, 10, 3, CAST(0 AS Decimal(18, 0)), 1, 312, 250.4900)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (914, 2, 3, CAST(0 AS Decimal(18, 0)), 1, 312, 250.4900)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (915, 2, 4, CAST(0 AS Decimal(18, 0)), 1, 312, 250.4900)
INSERT [dbo].[Detalle_Tickets] ([id_detalle_ticket], [id_funcion], [id_asiento], [descuento], [id_reserva], [id_ticket], [costo]) VALUES (916, 8, 4, CAST(2 AS Decimal(18, 0)), 1, 313, 3.0000)
SET IDENTITY_INSERT [dbo].[Detalle_Tickets] OFF
GO
SET IDENTITY_INSERT [dbo].[Funciones] ON 

INSERT [dbo].[Funciones] ([id_funcion], [id_pelicula], [fecha_hora], [idioma], [pre_unitario]) VALUES (1, 2, CAST(N'2022-12-11T00:00:00.000' AS DateTime), N'Español Doblado', 250.4900)
INSERT [dbo].[Funciones] ([id_funcion], [id_pelicula], [fecha_hora], [idioma], [pre_unitario]) VALUES (2, 1, CAST(N'2022-10-10T20:00:00.000' AS DateTime), N'Inglés Subtitulado', 250.4900)
INSERT [dbo].[Funciones] ([id_funcion], [id_pelicula], [fecha_hora], [idioma], [pre_unitario]) VALUES (3, 3, CAST(N'2022-11-06T21:30:00.000' AS DateTime), N'Inglés Subtitulado', 250.4900)
INSERT [dbo].[Funciones] ([id_funcion], [id_pelicula], [fecha_hora], [idioma], [pre_unitario]) VALUES (4, 5, CAST(N'2022-10-25T00:00:00.000' AS DateTime), N'Español Subtitulado', 299.9900)
INSERT [dbo].[Funciones] ([id_funcion], [id_pelicula], [fecha_hora], [idioma], [pre_unitario]) VALUES (5, 4, CAST(N'2022-12-10T18:00:00.000' AS DateTime), N'Inglés Subtitulado', 269.9900)
INSERT [dbo].[Funciones] ([id_funcion], [id_pelicula], [fecha_hora], [idioma], [pre_unitario]) VALUES (6, 7, CAST(N'2022-11-04T19:30:00.000' AS DateTime), N'Español Doblado', 300.0000)
INSERT [dbo].[Funciones] ([id_funcion], [id_pelicula], [fecha_hora], [idioma], [pre_unitario]) VALUES (7, 6, CAST(N'2022-12-15T21:30:00.000' AS DateTime), N'Inglés Subtitulado', 400.0000)
INSERT [dbo].[Funciones] ([id_funcion], [id_pelicula], [fecha_hora], [idioma], [pre_unitario]) VALUES (8, 12, CAST(N'2022-10-21T20:00:00.000' AS DateTime), N'Español Subtitulado', 400.0000)
INSERT [dbo].[Funciones] ([id_funcion], [id_pelicula], [fecha_hora], [idioma], [pre_unitario]) VALUES (9, 8, CAST(N'2022-12-09T22:30:00.000' AS DateTime), N'Inglés Subtitulado', 400.0000)
INSERT [dbo].[Funciones] ([id_funcion], [id_pelicula], [fecha_hora], [idioma], [pre_unitario]) VALUES (10, 11, CAST(N'2022-11-26T21:30:00.000' AS DateTime), N'Inglés Subtitulado', 350.0000)
INSERT [dbo].[Funciones] ([id_funcion], [id_pelicula], [fecha_hora], [idioma], [pre_unitario]) VALUES (11, 9, CAST(N'2022-10-14T19:30:00.000' AS DateTime), N'Español Doblado', 350.0000)
INSERT [dbo].[Funciones] ([id_funcion], [id_pelicula], [fecha_hora], [idioma], [pre_unitario]) VALUES (12, 10, CAST(N'2022-11-06T21:30:00.000' AS DateTime), N'Español Original', 350.0000)
INSERT [dbo].[Funciones] ([id_funcion], [id_pelicula], [fecha_hora], [idioma], [pre_unitario]) VALUES (13, 2, CAST(N'2022-12-11T18:30:00.000' AS DateTime), N'Español Doblado', 300.0000)
INSERT [dbo].[Funciones] ([id_funcion], [id_pelicula], [fecha_hora], [idioma], [pre_unitario]) VALUES (14, 1, CAST(N'2022-10-10T20:00:00.000' AS DateTime), N'Inglés Subtitulado', 400.0000)
INSERT [dbo].[Funciones] ([id_funcion], [id_pelicula], [fecha_hora], [idioma], [pre_unitario]) VALUES (15, 3, CAST(N'2022-11-06T21:30:00.000' AS DateTime), N'Inglés Subtitulado', 400.0000)
INSERT [dbo].[Funciones] ([id_funcion], [id_pelicula], [fecha_hora], [idioma], [pre_unitario]) VALUES (16, 5, CAST(N'2022-10-25T19:00:00.000' AS DateTime), N'Español Subtitulado', 300.0000)
INSERT [dbo].[Funciones] ([id_funcion], [id_pelicula], [fecha_hora], [idioma], [pre_unitario]) VALUES (17, 4, CAST(N'2022-12-10T18:00:00.000' AS DateTime), N'Inglés Subtitulado', 300.0000)
INSERT [dbo].[Funciones] ([id_funcion], [id_pelicula], [fecha_hora], [idioma], [pre_unitario]) VALUES (18, 7, CAST(N'2022-11-04T19:30:00.000' AS DateTime), N'Español Doblado', 300.0000)
INSERT [dbo].[Funciones] ([id_funcion], [id_pelicula], [fecha_hora], [idioma], [pre_unitario]) VALUES (19, 6, CAST(N'2022-12-15T21:30:00.000' AS DateTime), N'Inglés Subtitulado', 400.0000)
INSERT [dbo].[Funciones] ([id_funcion], [id_pelicula], [fecha_hora], [idioma], [pre_unitario]) VALUES (20, 12, CAST(N'2022-10-21T20:00:00.000' AS DateTime), N'Español Subtitulado', 400.0000)
INSERT [dbo].[Funciones] ([id_funcion], [id_pelicula], [fecha_hora], [idioma], [pre_unitario]) VALUES (21, 8, CAST(N'2022-12-09T22:30:00.000' AS DateTime), N'Inglés Subtitulado', 400.0000)
INSERT [dbo].[Funciones] ([id_funcion], [id_pelicula], [fecha_hora], [idioma], [pre_unitario]) VALUES (22, 11, CAST(N'2022-11-26T21:30:00.000' AS DateTime), N'Inglés Subtitulado', 400.0000)
INSERT [dbo].[Funciones] ([id_funcion], [id_pelicula], [fecha_hora], [idioma], [pre_unitario]) VALUES (23, 9, CAST(N'2022-10-14T19:30:00.000' AS DateTime), N'Español Doblado', 300.0000)
INSERT [dbo].[Funciones] ([id_funcion], [id_pelicula], [fecha_hora], [idioma], [pre_unitario]) VALUES (24, 10, CAST(N'2022-11-06T21:30:00.000' AS DateTime), N'Español Original', 400.0000)
SET IDENTITY_INSERT [dbo].[Funciones] OFF
GO
SET IDENTITY_INSERT [dbo].[Peliculas] ON 

INSERT [dbo].[Peliculas] ([id_pelicula], [titulo], [duracion], [descripcion], [id_tipo]) VALUES (1, N'Toy Story 3', 103, N'Woody (Tom Hanks), Buzz (Tim Allen) y el resto de los juguetes terminan en una guardería luego de que Andy se va al colegio.', 5)
INSERT [dbo].[Peliculas] ([id_pelicula], [titulo], [duracion], [descripcion], [id_tipo]) VALUES (2, N'Cisne Negro', 107, N'Una bailarina empieza a perder el frágil sentido de la realidad cuando una compañera recién llegada amenaza con usurpar su posición en el papel principal de "El lago de los cisnes".', 6)
INSERT [dbo].[Peliculas] ([id_pelicula], [titulo], [duracion], [descripcion], [id_tipo]) VALUES (3, N'Scott Pilgrim contra el mundo', 112, N'Después de conocer a la mujer de sus sueños, Scott Pilgrim debe enfrentarse a un ejército de exparejas que quieren deshacerse de él.', 4)
INSERT [dbo].[Peliculas] ([id_pelicula], [titulo], [duracion], [descripcion], [id_tipo]) VALUES (4, N'Drive', 100, N'Un doble de cine de Hollywood que trabaja como conductor para criminales empieza a recibir amenazas de muerte después de un robo fallido', 1)
INSERT [dbo].[Peliculas] ([id_pelicula], [titulo], [duracion], [descripcion], [id_tipo]) VALUES (5, N'Los Vengadores', 143, N'El director de la Agencia SHIELD decide reclutar a un equipo para salvar al mundo de un desastre casi seguro cuando un enemigo inesperado surge como una gran amenaza para la seguridad mundial.', 3)
INSERT [dbo].[Peliculas] ([id_pelicula], [titulo], [duracion], [descripcion], [id_tipo]) VALUES (6, N'The Lords of Salem', 101, N'La DJ de una radio en Salem comienza a ser hostigada por visiones y pesadillas de unas brujas vengativas después de programar una canción de un misterioso grupo del que sólo se conoce su nombre, "The Lords". ', 9)
INSERT [dbo].[Peliculas] ([id_pelicula], [titulo], [duracion], [descripcion], [id_tipo]) VALUES (7, N'Los ilusos', 93, N'Película sobre el deseo de hacer cine, o sobre lo que hacen algunos cineastas cuando no hacen cine; sobre perder el tiempo y el tiempo perdido; sobre conversaciones, borracheras, comidas y rutinas; sobre los paseos al salir del cine.
', 5)
INSERT [dbo].[Peliculas] ([id_pelicula], [titulo], [duracion], [descripcion], [id_tipo]) VALUES (8, N'Interstellar ', 169, N'Gracias a un descubrimiento, un grupo de científicos y exploradores, encabezados por Cooper, se embarcan en un viaje espacial para encontrar un lugar con las condiciones necesarias para reemplazar a la Tierra y comenzar una nueva vida allí.', 2)
INSERT [dbo].[Peliculas] ([id_pelicula], [titulo], [duracion], [descripcion], [id_tipo]) VALUES (9, N'El Gran Hotel Budapest', 100, N'El conserje de un elegante hotel europeo inicia una interesante amistad con un joven compañero de trabajo.', 4)
INSERT [dbo].[Peliculas] ([id_pelicula], [titulo], [duracion], [descripcion], [id_tipo]) VALUES (10, N'Relatos salvajes', 122, N'Seis relatos que alternan la intriga, la comedia y la violencia. Sus personajes se verán empujados hacia el abismo y hacia el innegable placer de perder el control al cruzar la delgada línea que separa la civilización de la barbarie.', 6)
INSERT [dbo].[Peliculas] ([id_pelicula], [titulo], [duracion], [descripcion], [id_tipo]) VALUES (11, N'La bruja', 92, N'Nueva Inglaterra, 1630. Una familia compuesta por un matrimonio de colonos cristianos, padres de cinco hijos, vive cerca de un bosque al que la leyenda popular atribuye un carácter demoníaco. La convivencia estalla y la familia se desgarra al sospechar que su hija mayor practica la brujería, debido a que las cosechas no crecen y su bebé ha desaparecido.', 10)
INSERT [dbo].[Peliculas] ([id_pelicula], [titulo], [duracion], [descripcion], [id_tipo]) VALUES (12, N'La ciudad de las estrellas', 128, N'Sebastian, un pianista de jazz, y Mia, una aspirante a actriz, se enamoran locamente; pero la ambición desmedida que tienen por triunfar en sus respectivas carreras, en una ciudad como Los Ángeles, repleta de competencia y carente de piedad, pone en peligro su amor.', 8)
INSERT [dbo].[Peliculas] ([id_pelicula], [titulo], [duracion], [descripcion], [id_tipo]) VALUES (13, N'Toy Story 3', 103, N'Woody (Tom Hanks), Buzz (Tim Allen) y el resto de los juguetes terminan en una guardería luego de que Andy se va al colegio.', 5)
INSERT [dbo].[Peliculas] ([id_pelicula], [titulo], [duracion], [descripcion], [id_tipo]) VALUES (14, N'Cisne Negro', 107, N'Una bailarina empieza a perder el frágil sentido de la realidad cuando una compañera recién llegada amenaza con usurpar su posición en el papel principal de "El lago de los cisnes".', 6)
INSERT [dbo].[Peliculas] ([id_pelicula], [titulo], [duracion], [descripcion], [id_tipo]) VALUES (15, N'Scott Pilgrim contra el mundo', 112, N'Después de conocer a la mujer de sus sueños, Scott Pilgrim debe enfrentarse a un ejército de exparejas que quieren deshacerse de él.', 4)
INSERT [dbo].[Peliculas] ([id_pelicula], [titulo], [duracion], [descripcion], [id_tipo]) VALUES (16, N'Drive', 100, N'Un doble de cine de Hollywood que trabaja como conductor para criminales empieza a recibir amenazas de muerte después de un robo fallido', 1)
INSERT [dbo].[Peliculas] ([id_pelicula], [titulo], [duracion], [descripcion], [id_tipo]) VALUES (17, N'Los Vengadores', 143, N'El director de la Agencia SHIELD decide reclutar a un equipo para salvar al mundo de un desastre casi seguro cuando un enemigo inesperado surge como una gran amenaza para la seguridad mundial.', 3)
INSERT [dbo].[Peliculas] ([id_pelicula], [titulo], [duracion], [descripcion], [id_tipo]) VALUES (18, N'The Lords of Salem', 101, N'La DJ de una radio en Salem comienza a ser hostigada por visiones y pesadillas de unas brujas vengativas después de programar una canción de un misterioso grupo del que sólo se conoce su nombre, "The Lords". ', 9)
INSERT [dbo].[Peliculas] ([id_pelicula], [titulo], [duracion], [descripcion], [id_tipo]) VALUES (19, N'Los ilusos', 93, N'Película sobre el deseo de hacer cine, o sobre lo que hacen algunos cineastas cuando no hacen cine; sobre perder el tiempo y el tiempo perdido; sobre conversaciones, borracheras, comidas y rutinas; sobre los paseos al salir del cine.
', 5)
INSERT [dbo].[Peliculas] ([id_pelicula], [titulo], [duracion], [descripcion], [id_tipo]) VALUES (20, N'Interstellar ', 169, N'Gracias a un descubrimiento, un grupo de científicos y exploradores, encabezados por Cooper, se embarcan en un viaje espacial para encontrar un lugar con las condiciones necesarias para reemplazar a la Tierra y comenzar una nueva vida allí.', 2)
INSERT [dbo].[Peliculas] ([id_pelicula], [titulo], [duracion], [descripcion], [id_tipo]) VALUES (21, N'El Gran Hotel Budapest', 100, N'El conserje de un elegante hotel europeo inicia una interesante amistad con un joven compañero de trabajo.', 4)
INSERT [dbo].[Peliculas] ([id_pelicula], [titulo], [duracion], [descripcion], [id_tipo]) VALUES (22, N'Relatos salvajes', 122, N'Seis relatos que alternan la intriga, la comedia y la violencia. Sus personajes se verán empujados hacia el abismo y hacia el innegable placer de perder el control al cruzar la delgada línea que separa la civilización de la barbarie.', 6)
INSERT [dbo].[Peliculas] ([id_pelicula], [titulo], [duracion], [descripcion], [id_tipo]) VALUES (23, N'La bruja', 92, N'Nueva Inglaterra, 1630. Una familia compuesta por un matrimonio de colonos cristianos, padres de cinco hijos, vive cerca de un bosque al que la leyenda popular atribuye un carácter demoníaco. La convivencia estalla y la familia se desgarra al sospechar que su hija mayor practica la brujería, debido a que las cosechas no crecen y su bebé ha desaparecido.', 10)
INSERT [dbo].[Peliculas] ([id_pelicula], [titulo], [duracion], [descripcion], [id_tipo]) VALUES (24, N'La ciudad de las estrellas', 128, N'Sebastian, un pianista de jazz, y Mia, una aspirante a actriz, se enamoran locamente; pero la ambición desmedida que tienen por triunfar en sus respectivas carreras, en una ciudad como Los Ángeles, repleta de competencia y carente de piedad, pone en peligro su amor.', 8)
SET IDENTITY_INSERT [dbo].[Peliculas] OFF
GO
SET IDENTITY_INSERT [dbo].[Reservas] ON 

INSERT [dbo].[Reservas] ([id_reserva], [descripcion]) VALUES (1, N'Reservado')
INSERT [dbo].[Reservas] ([id_reserva], [descripcion]) VALUES (2, N'NO Reservado')
SET IDENTITY_INSERT [dbo].[Reservas] OFF
GO
SET IDENTITY_INSERT [dbo].[Salas] ON 

INSERT [dbo].[Salas] ([id_sala], [nombre_sala], [id_tipo_sala]) VALUES (1, N'Sala 2d 1', 1)
INSERT [dbo].[Salas] ([id_sala], [nombre_sala], [id_tipo_sala]) VALUES (2, N'Sala 2d 2', 1)
INSERT [dbo].[Salas] ([id_sala], [nombre_sala], [id_tipo_sala]) VALUES (3, N'Sala 2d 3', 1)
INSERT [dbo].[Salas] ([id_sala], [nombre_sala], [id_tipo_sala]) VALUES (4, N'Sala 3d 1', 2)
INSERT [dbo].[Salas] ([id_sala], [nombre_sala], [id_tipo_sala]) VALUES (5, N'Sala 3d 2', 2)
INSERT [dbo].[Salas] ([id_sala], [nombre_sala], [id_tipo_sala]) VALUES (6, N'Sala 3d 3', 2)
INSERT [dbo].[Salas] ([id_sala], [nombre_sala], [id_tipo_sala]) VALUES (7, N'Sala 3D+ 1', 3)
INSERT [dbo].[Salas] ([id_sala], [nombre_sala], [id_tipo_sala]) VALUES (8, N'Sala 4D 1', 4)
INSERT [dbo].[Salas] ([id_sala], [nombre_sala], [id_tipo_sala]) VALUES (9, N'Sala 4D 2', 4)
INSERT [dbo].[Salas] ([id_sala], [nombre_sala], [id_tipo_sala]) VALUES (10, N'Sala 2d 1', NULL)
INSERT [dbo].[Salas] ([id_sala], [nombre_sala], [id_tipo_sala]) VALUES (11, N'Sala 2d 2', NULL)
INSERT [dbo].[Salas] ([id_sala], [nombre_sala], [id_tipo_sala]) VALUES (12, N'Sala 2d 3', NULL)
INSERT [dbo].[Salas] ([id_sala], [nombre_sala], [id_tipo_sala]) VALUES (13, N'Sala 3d 1', NULL)
INSERT [dbo].[Salas] ([id_sala], [nombre_sala], [id_tipo_sala]) VALUES (14, N'Sala 3d 2', NULL)
INSERT [dbo].[Salas] ([id_sala], [nombre_sala], [id_tipo_sala]) VALUES (15, N'Sala 3d 3', NULL)
INSERT [dbo].[Salas] ([id_sala], [nombre_sala], [id_tipo_sala]) VALUES (16, N'Sala 3d 4', NULL)
INSERT [dbo].[Salas] ([id_sala], [nombre_sala], [id_tipo_sala]) VALUES (17, N'Sala 4d 1', NULL)
INSERT [dbo].[Salas] ([id_sala], [nombre_sala], [id_tipo_sala]) VALUES (18, N'Sala 4d 2', NULL)
SET IDENTITY_INSERT [dbo].[Salas] OFF
GO
SET IDENTITY_INSERT [dbo].[Sucursales] ON 

INSERT [dbo].[Sucursales] ([id_sucursal], [id_barrio], [nombre_sucursal], [direccion]) VALUES (1, 1, N'Sucursal Villa Cabrera ', N'Los Sauces 1990')
INSERT [dbo].[Sucursales] ([id_sucursal], [id_barrio], [nombre_sucursal], [direccion]) VALUES (2, 2, N'Sucursal Alto Verde ', N'Azor Grimaut 3268')
INSERT [dbo].[Sucursales] ([id_sucursal], [id_barrio], [nombre_sucursal], [direccion]) VALUES (3, 3, N'Sucursal General Paz ', N'Hugo Miatello 230')
INSERT [dbo].[Sucursales] ([id_sucursal], [id_barrio], [nombre_sucursal], [direccion]) VALUES (4, 4, N'Sucursal Centro ', N'Las Vertienes 6210')
INSERT [dbo].[Sucursales] ([id_sucursal], [id_barrio], [nombre_sucursal], [direccion]) VALUES (5, 5, N'Sucursal Matienzo ', N'Av Colon 921')
SET IDENTITY_INSERT [dbo].[Sucursales] OFF
GO
SET IDENTITY_INSERT [dbo].[Tickets] ON 

INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (42, 2, 5, 1, CAST(N'2021-10-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (43, 3, 3, 1, CAST(N'2022-05-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (44, 3, 1, 1, CAST(N'2022-05-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (45, 1, 4, 3, CAST(N'2022-05-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (46, 4, 5, 5, CAST(N'2022-08-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (47, 1, 3, 1, CAST(N'2022-03-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (48, 4, 4, 2, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (49, 2, 3, 3, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (50, 2, 5, 4, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (51, 4, 3, 5, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (52, 2, 3, 1, CAST(N'2021-10-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (53, 4, 3, 1, CAST(N'2022-05-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (54, 4, 2, 1, CAST(N'2022-05-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (55, 4, 3, 3, CAST(N'2022-05-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (56, 4, 4, 5, CAST(N'2022-08-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (57, 1, 4, 1, CAST(N'2022-03-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (58, 3, 3, 2, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (59, 4, 4, 3, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (60, 1, 4, 4, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (61, 4, 5, 5, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (62, 1, 3, 1, CAST(N'2021-10-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (63, 2, 4, 1, CAST(N'2022-05-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (64, 4, 4, 1, CAST(N'2022-05-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (65, 3, 3, 3, CAST(N'2022-05-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (66, 3, 5, 5, CAST(N'2022-08-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (67, 3, 4, 1, CAST(N'2022-03-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (68, 3, 5, 2, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (69, 1, 4, 3, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (70, 3, 4, 4, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (71, 4, 1, 5, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (72, 3, 4, 1, CAST(N'2021-10-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (73, 4, 4, 1, CAST(N'2022-05-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (74, 4, 2, 1, CAST(N'2022-05-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (75, 4, 4, 3, CAST(N'2022-05-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (76, 4, 5, 5, CAST(N'2022-08-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (77, 4, 4, 1, CAST(N'2022-03-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (78, 2, 4, 2, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (79, 1, 5, 3, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (80, 4, 4, 4, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (81, 3, 2, 5, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (82, 2, 2, 1, CAST(N'2021-10-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (83, 4, 1, 1, CAST(N'2022-05-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (84, 3, 5, 1, CAST(N'2022-05-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (85, 3, 5, 3, CAST(N'2022-05-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (86, 1, 1, 5, CAST(N'2022-08-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (87, 2, 1, 1, CAST(N'2022-03-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (88, 4, 3, 2, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (89, 2, 3, 3, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (90, 1, 2, 4, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (91, 4, 3, 5, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (92, 2, 5, 1, CAST(N'2021-10-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (93, 3, 3, 1, CAST(N'2022-05-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (94, 1, 3, 1, CAST(N'2022-05-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (95, 3, 3, 3, CAST(N'2022-05-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (96, 1, 4, 5, CAST(N'2022-08-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (97, 1, 4, 1, CAST(N'2022-03-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (98, 3, 3, 2, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (99, 2, 3, 3, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (100, 3, 1, 4, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (101, 4, 5, 5, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (102, 2, 3, 1, CAST(N'2021-10-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (103, 1, 4, 1, CAST(N'2022-05-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (104, 2, 4, 1, CAST(N'2022-05-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (105, 3, 1, 3, CAST(N'2022-05-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (106, 2, 1, 5, CAST(N'2022-08-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (107, 4, 4, 1, CAST(N'2022-03-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (108, 4, 5, 2, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (109, 4, 4, 3, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (110, 1, 3, 4, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (111, 4, 1, 5, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (112, 2, 4, 1, CAST(N'2021-10-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (113, 3, 1, 1, CAST(N'2022-05-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (114, 4, 4, 1, CAST(N'2022-05-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (115, 3, 4, 3, CAST(N'2022-05-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (116, 1, 3, 5, CAST(N'2022-08-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (117, 4, 4, 1, CAST(N'2022-03-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (118, 4, 5, 2, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (119, 2, 1, 3, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (120, 4, 4, 4, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (121, 4, 5, 5, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (122, 3, 4, 1, CAST(N'2021-10-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (123, 3, 4, 1, CAST(N'2022-05-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (124, 1, 5, 1, CAST(N'2022-05-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (125, 4, 5, 3, CAST(N'2022-05-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (126, 4, 4, 5, CAST(N'2022-08-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (127, 1, 4, 1, CAST(N'2022-03-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (128, 1, 1, 2, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (129, 3, 3, 3, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (130, 1, 2, 4, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (131, 3, 1, 5, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (132, 1, 1, 1, CAST(N'2021-10-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (133, 1, 1, 1, CAST(N'2022-05-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (134, 1, 1, 1, CAST(N'2022-05-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (135, 4, 4, 3, CAST(N'2022-05-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (136, 3, 4, 5, CAST(N'2022-08-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (137, 3, 2, 1, CAST(N'2022-03-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (138, 1, 1, 2, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (139, 3, 5, 3, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (140, 2, 1, 4, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (141, 4, 3, 5, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (142, 3, 4, 1, CAST(N'2021-10-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (143, 3, 3, 1, CAST(N'2022-05-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (144, 4, 1, 1, CAST(N'2022-05-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (145, 2, 2, 3, CAST(N'2022-05-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (146, 2, 4, 5, CAST(N'2022-08-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (147, 3, 2, 1, CAST(N'2022-03-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (148, 3, 3, 2, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (149, 2, 4, 3, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (150, 4, 2, 4, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (151, 3, 4, 5, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (152, 4, 3, 1, CAST(N'2021-10-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (153, 3, 3, 1, CAST(N'2022-05-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (154, 1, 4, 1, CAST(N'2022-05-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (155, 2, 4, 3, CAST(N'2022-05-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (156, 2, 1, 5, CAST(N'2022-08-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (157, 3, 2, 1, CAST(N'2022-03-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (158, 3, 1, 2, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (159, 3, 2, 3, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (160, 3, 2, 4, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (161, 4, 2, 5, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (162, 4, 2, 1, CAST(N'2021-10-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (163, 2, 2, 1, CAST(N'2022-05-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (164, 1, 2, 1, CAST(N'2022-05-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (165, 1, 3, 3, CAST(N'2022-05-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (166, 2, 3, 5, CAST(N'2022-08-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (167, 1, 4, 1, CAST(N'2022-03-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (168, 2, 2, 2, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (169, 4, 1, 3, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (170, 4, 1, 4, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (171, 3, 3, 5, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (172, 3, 3, 1, CAST(N'2021-10-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (173, 3, 5, 1, CAST(N'2022-05-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (174, 2, 2, 1, CAST(N'2022-05-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (175, 4, 3, 3, CAST(N'2022-05-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (176, 4, 4, 5, CAST(N'2022-08-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (177, 1, 3, 1, CAST(N'2022-03-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (178, 2, 4, 2, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (179, 4, 4, 3, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (180, 3, 5, 4, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (181, 2, 5, 5, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (182, 4, 3, 1, CAST(N'2021-10-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (183, 1, 4, 1, CAST(N'2022-05-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (184, 4, 4, 1, CAST(N'2022-05-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (185, 1, 2, 3, CAST(N'2022-05-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (186, 4, 4, 5, CAST(N'2022-08-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (187, 3, 4, 1, CAST(N'2022-03-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (188, 2, 3, 2, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (189, 4, 3, 3, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (190, 2, 1, 4, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (191, 2, 3, 5, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (192, 1, 2, 1, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (193, 3, 5, 3, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (194, 1, 4, 5, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (195, 3, 4, 1, CAST(N'2021-10-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (196, 1, 1, 2, CAST(N'2022-05-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (197, 4, 5, 3, CAST(N'2022-05-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (198, 2, 1, 4, CAST(N'2022-05-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (199, 2, 3, 5, CAST(N'2022-08-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (200, 4, 1, 1, CAST(N'2022-03-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (201, 4, 5, 1, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (202, 4, 3, 1, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (203, 3, 5, 3, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (204, 3, 3, 5, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (205, 3, 2, 1, CAST(N'2021-10-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (206, 4, 3, 2, CAST(N'2022-05-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (207, 1, 5, 3, CAST(N'2022-05-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (208, 2, 5, 4, CAST(N'2022-05-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (209, 2, 2, 5, CAST(N'2022-08-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (210, 1, 5, 10, CAST(N'2022-03-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (211, 4, 1, 11, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (212, 4, 3, 12, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (213, 3, 5, 13, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (214, 1, 2, 14, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (215, 1, 2, 15, CAST(N'2021-10-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (216, 1, 3, 16, CAST(N'2022-05-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (217, 1, 2, 17, CAST(N'2022-05-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (218, 3, 4, 18, CAST(N'2022-05-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (219, 2, 5, 19, CAST(N'2022-08-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (220, 4, 3, 20, CAST(N'2022-03-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (221, 1, 2, 21, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (222, 4, 4, 22, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (223, 1, 3, 23, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (224, 4, 1, 24, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (225, 3, 5, 25, CAST(N'2021-10-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (226, 2, 1, 26, CAST(N'2022-05-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (227, 3, 5, 27, CAST(N'2022-05-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (228, 1, 5, 28, CAST(N'2022-05-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (229, 1, 5, 29, CAST(N'2022-08-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (230, 1, 1, 30, CAST(N'2022-03-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (231, 4, 5, 31, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (232, 3, 1, 10, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (233, 1, 2, 11, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (234, 4, 1, 12, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (235, 1, 3, 13, CAST(N'2021-10-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (236, 3, 2, 14, CAST(N'2022-05-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (237, 2, 4, 15, CAST(N'2022-05-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (238, 2, 3, 16, CAST(N'2022-05-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (239, 1, 5, 17, CAST(N'2022-08-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (240, 2, 3, 18, CAST(N'2022-03-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (241, 4, 2, 19, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (242, 1, 3, 20, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (243, 3, 5, 21, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (244, 1, 2, 22, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (245, 1, 2, 23, CAST(N'2021-10-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (246, 3, 3, 24, CAST(N'2022-05-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (247, 3, 3, 25, CAST(N'2022-05-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (248, 1, 1, 26, CAST(N'2022-05-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (249, 4, 4, 27, CAST(N'2022-08-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (250, 3, 4, 28, CAST(N'2022-03-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (251, 1, 3, 29, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (252, 3, 4, 30, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (253, 2, 4, 31, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (254, 3, 3, 10, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (255, 4, 2, 11, CAST(N'2021-10-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (256, 1, 1, 12, CAST(N'2022-05-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (257, 4, 5, 13, CAST(N'2022-05-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (258, 4, 3, 14, CAST(N'2022-05-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (259, 4, 2, 15, CAST(N'2022-08-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (260, 2, 2, 16, CAST(N'2022-03-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (261, 2, 5, 17, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (262, 2, 3, 18, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (263, 2, 1, 19, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (264, 3, 3, 20, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (265, 2, 4, 21, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (266, 3, 2, 22, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (267, 1, 2, 23, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (268, 3, 5, 24, CAST(N'2021-10-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (269, 4, 3, 25, CAST(N'2022-05-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (270, 2, 1, 26, CAST(N'2022-05-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (271, 1, 2, 27, CAST(N'2022-05-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (272, 3, 3, 28, CAST(N'2022-08-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (273, 1, 1, 29, CAST(N'2022-03-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (274, 2, 5, 30, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (275, 1, 3, 31, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (276, 2, 1, 10, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (277, 3, 4, 11, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (278, 1, 4, 12, CAST(N'2021-10-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (279, 2, 4, 13, CAST(N'2022-05-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (280, 4, 5, 14, CAST(N'2022-05-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (281, 2, 1, 15, CAST(N'2022-05-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (282, 1, 4, 16, CAST(N'2022-08-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (283, 2, 5, 17, CAST(N'2022-03-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (284, 3, 2, 18, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (285, 3, 3, 19, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (286, 3, 2, 20, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (287, 2, 4, 21, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (288, 3, 2, 22, CAST(N'2021-10-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (289, 1, 4, 23, CAST(N'2022-05-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (290, 1, 3, 24, CAST(N'2022-05-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (291, 2, 5, 25, CAST(N'2022-05-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (292, 3, 3, 26, CAST(N'2022-08-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (293, 3, 3, 27, CAST(N'2022-03-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (294, 4, 4, 28, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (295, 2, 4, 29, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (296, 3, 4, 30, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (297, 1, 4, 31, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (298, 3, 3, 10, CAST(N'2021-10-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (299, 1, 1, 11, CAST(N'2022-05-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (300, 3, 4, 12, CAST(N'2022-05-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (301, 3, 4, 13, CAST(N'2022-05-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (302, 1, 3, 14, CAST(N'2022-08-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (303, 2, 4, 15, CAST(N'2022-03-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (304, 1, 1, 16, CAST(N'2022-02-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (305, 2, 1, 17, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (306, 4, 2, 18, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (307, 4, 1, 19, CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (308, 1, 1, 20, CAST(N'2021-10-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (309, 3, 4, 21, CAST(N'2022-05-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (310, 1, 5, 22, CAST(N'2022-05-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (311, 1, 4, 23, CAST(N'2022-05-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (312, 1, 2, 2, CAST(N'2022-11-11T00:00:00.000' AS DateTime))
INSERT [dbo].[Tickets] ([id_ticket], [id_tipo_pago], [id_sucursal], [id_cliente], [fecha_compra]) VALUES (313, 1, 1, 14, CAST(N'2023-03-19T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Tickets] OFF
GO
SET IDENTITY_INSERT [dbo].[Tipo_peliculas] ON 

INSERT [dbo].[Tipo_peliculas] ([id_tipo], [genero]) VALUES (1, N'Acción')
INSERT [dbo].[Tipo_peliculas] ([id_tipo], [genero]) VALUES (2, N'Aventuras')
INSERT [dbo].[Tipo_peliculas] ([id_tipo], [genero]) VALUES (3, N'Ciencia Ficción')
INSERT [dbo].[Tipo_peliculas] ([id_tipo], [genero]) VALUES (4, N'Comedia')
INSERT [dbo].[Tipo_peliculas] ([id_tipo], [genero]) VALUES (5, N'Animacion')
INSERT [dbo].[Tipo_peliculas] ([id_tipo], [genero]) VALUES (6, N'Drama')
INSERT [dbo].[Tipo_peliculas] ([id_tipo], [genero]) VALUES (7, N'Fantasía')
INSERT [dbo].[Tipo_peliculas] ([id_tipo], [genero]) VALUES (8, N'Musical')
INSERT [dbo].[Tipo_peliculas] ([id_tipo], [genero]) VALUES (9, N'Suspense')
INSERT [dbo].[Tipo_peliculas] ([id_tipo], [genero]) VALUES (10, N'Terror')
INSERT [dbo].[Tipo_peliculas] ([id_tipo], [genero]) VALUES (11, N'Acción')
INSERT [dbo].[Tipo_peliculas] ([id_tipo], [genero]) VALUES (12, N'Aventuras')
INSERT [dbo].[Tipo_peliculas] ([id_tipo], [genero]) VALUES (13, N'Ciencia Ficción')
INSERT [dbo].[Tipo_peliculas] ([id_tipo], [genero]) VALUES (14, N'Comedia')
INSERT [dbo].[Tipo_peliculas] ([id_tipo], [genero]) VALUES (15, N'Animacion')
INSERT [dbo].[Tipo_peliculas] ([id_tipo], [genero]) VALUES (16, N'Drama')
INSERT [dbo].[Tipo_peliculas] ([id_tipo], [genero]) VALUES (17, N'Fantasía')
INSERT [dbo].[Tipo_peliculas] ([id_tipo], [genero]) VALUES (18, N'Musical')
INSERT [dbo].[Tipo_peliculas] ([id_tipo], [genero]) VALUES (19, N'Suspense')
INSERT [dbo].[Tipo_peliculas] ([id_tipo], [genero]) VALUES (20, N'Terror')
SET IDENTITY_INSERT [dbo].[Tipo_peliculas] OFF
GO
INSERT [dbo].[Tipo_Salas] ([id_tipo_sala], [tipo]) VALUES (1, N'2D')
INSERT [dbo].[Tipo_Salas] ([id_tipo_sala], [tipo]) VALUES (2, N'3D')
INSERT [dbo].[Tipo_Salas] ([id_tipo_sala], [tipo]) VALUES (3, N'3D envolvente')
INSERT [dbo].[Tipo_Salas] ([id_tipo_sala], [tipo]) VALUES (4, N'4D')
GO
SET IDENTITY_INSERT [dbo].[Tipos_pagos] ON 

INSERT [dbo].[Tipos_pagos] ([id_tipo_pago], [nombre_tipo_pago]) VALUES (1, N'tarjeta de credito')
INSERT [dbo].[Tipos_pagos] ([id_tipo_pago], [nombre_tipo_pago]) VALUES (2, N'pago en efectivo ')
INSERT [dbo].[Tipos_pagos] ([id_tipo_pago], [nombre_tipo_pago]) VALUES (3, N'tarjeta de debito')
INSERT [dbo].[Tipos_pagos] ([id_tipo_pago], [nombre_tipo_pago]) VALUES (4, N'transferencia')
INSERT [dbo].[Tipos_pagos] ([id_tipo_pago], [nombre_tipo_pago]) VALUES (5, N'Tarjeta de crédito')
INSERT [dbo].[Tipos_pagos] ([id_tipo_pago], [nombre_tipo_pago]) VALUES (6, N'Pago en efectivo ')
INSERT [dbo].[Tipos_pagos] ([id_tipo_pago], [nombre_tipo_pago]) VALUES (7, N'Tarjeta de débito')
INSERT [dbo].[Tipos_pagos] ([id_tipo_pago], [nombre_tipo_pago]) VALUES (8, N'Transferencia')
SET IDENTITY_INSERT [dbo].[Tipos_pagos] OFF
GO
ALTER TABLE [dbo].[Asientos]  WITH CHECK ADD  CONSTRAINT [fk_asiento_sala] FOREIGN KEY([id_sala])
REFERENCES [dbo].[Salas] ([id_sala])
GO
ALTER TABLE [dbo].[Asientos] CHECK CONSTRAINT [fk_asiento_sala]
GO
ALTER TABLE [dbo].[Detalle_Tickets]  WITH NOCHECK ADD  CONSTRAINT [fk_asiento] FOREIGN KEY([id_asiento])
REFERENCES [dbo].[Asientos] ([id_asiento])
GO
ALTER TABLE [dbo].[Detalle_Tickets] CHECK CONSTRAINT [fk_asiento]
GO
ALTER TABLE [dbo].[Detalle_Tickets]  WITH NOCHECK ADD  CONSTRAINT [fk_funciones] FOREIGN KEY([id_funcion])
REFERENCES [dbo].[Funciones] ([id_funcion])
GO
ALTER TABLE [dbo].[Detalle_Tickets] CHECK CONSTRAINT [fk_funciones]
GO
ALTER TABLE [dbo].[Detalle_Tickets]  WITH NOCHECK ADD  CONSTRAINT [fk_reserva] FOREIGN KEY([id_reserva])
REFERENCES [dbo].[Reservas] ([id_reserva])
GO
ALTER TABLE [dbo].[Detalle_Tickets] CHECK CONSTRAINT [fk_reserva]
GO
ALTER TABLE [dbo].[Detalle_Tickets]  WITH NOCHECK ADD  CONSTRAINT [fk_tickets] FOREIGN KEY([id_ticket])
REFERENCES [dbo].[Tickets] ([id_ticket])
GO
ALTER TABLE [dbo].[Detalle_Tickets] CHECK CONSTRAINT [fk_tickets]
GO
ALTER TABLE [dbo].[Funciones]  WITH CHECK ADD  CONSTRAINT [fk_pelicula] FOREIGN KEY([id_pelicula])
REFERENCES [dbo].[Peliculas] ([id_pelicula])
GO
ALTER TABLE [dbo].[Funciones] CHECK CONSTRAINT [fk_pelicula]
GO
ALTER TABLE [dbo].[Peliculas]  WITH CHECK ADD  CONSTRAINT [fk_peliculas_tipo_peliculas] FOREIGN KEY([id_tipo])
REFERENCES [dbo].[Tipo_peliculas] ([id_tipo])
GO
ALTER TABLE [dbo].[Peliculas] CHECK CONSTRAINT [fk_peliculas_tipo_peliculas]
GO
ALTER TABLE [dbo].[Salas]  WITH CHECK ADD  CONSTRAINT [fk_tipo_Saal] FOREIGN KEY([id_tipo_sala])
REFERENCES [dbo].[Tipo_Salas] ([id_tipo_sala])
GO
ALTER TABLE [dbo].[Salas] CHECK CONSTRAINT [fk_tipo_Saal]
GO
ALTER TABLE [dbo].[Sucursales]  WITH CHECK ADD  CONSTRAINT [fk_sucursal_barrios] FOREIGN KEY([id_barrio])
REFERENCES [dbo].[Barrios] ([id_barrio])
GO
ALTER TABLE [dbo].[Sucursales] CHECK CONSTRAINT [fk_sucursal_barrios]
GO
ALTER TABLE [dbo].[Tickets]  WITH NOCHECK ADD  CONSTRAINT [fk_cliente] FOREIGN KEY([id_cliente])
REFERENCES [dbo].[Clientes] ([id_cliente])
GO
ALTER TABLE [dbo].[Tickets] CHECK CONSTRAINT [fk_cliente]
GO
ALTER TABLE [dbo].[Tickets]  WITH NOCHECK ADD  CONSTRAINT [fk_sucursal] FOREIGN KEY([id_sucursal])
REFERENCES [dbo].[Sucursales] ([id_sucursal])
GO
ALTER TABLE [dbo].[Tickets] CHECK CONSTRAINT [fk_sucursal]
GO
ALTER TABLE [dbo].[Tickets]  WITH NOCHECK ADD  CONSTRAINT [fk_tipo_pago] FOREIGN KEY([id_tipo_pago])
REFERENCES [dbo].[Tipos_pagos] ([id_tipo_pago])
GO
ALTER TABLE [dbo].[Tickets] CHECK CONSTRAINT [fk_tipo_pago]
GO
/****** Object:  StoredProcedure [dbo].[consultaClientesComprasMes]    Script Date: 18/03/2023 16:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[consultaClientesComprasMes]
@mes int
as
Select id_ticket, format(fecha_compra, 'dd/MM/yyyy')'Fecha', 
t.id_cliente,c.nombre_cliente 'Nombre'
from Tickets t join clientes c on t.id_cliente=c.id_cliente
where @mes = all(select MONTH(fecha_compra)
from Tickets t1
where t1.id_cliente=c.id_cliente)
GO
/****** Object:  StoredProcedure [dbo].[consultaClientesComprasMes2]    Script Date: 18/03/2023 16:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[consultaClientesComprasMes2]
@mes int
as
Select id_ticket, format(fecha_compra, 'dd/MM/yyyy'), 
t.id_cliente,c.nombre_cliente
from Tickets t join clientes c on t.id_cliente=c.id_cliente
where @mes = all(select MONTH(fecha_compra)
from Tickets t1
where t1.id_cliente=c.id_cliente)
GO
/****** Object:  StoredProcedure [dbo].[consultaClientesNoVinieron2]    Script Date: 18/03/2023 16:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[consultaClientesNoVinieron2]
@fecha1 date,
@fecha2 date
as 
begin 
select id_cliente , nombre_cliente
from Clientes c
where not exists (select id_cliente 
from Tickets t
where t.id_cliente = c.id_cliente and 
(fecha_compra) between @fecha1 and @fecha2)
end 
GO
/****** Object:  StoredProcedure [dbo].[consultaClientesTickets2]    Script Date: 18/03/2023 16:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[consultaClientesTickets2]
as
select c.id_cliente,nombre_cliente,dni_cliente,email,nombre_tipo_pago,
min(fecha_compra),
max(fecha_compra),
count(distinct t.id_ticket),
sum(costo)
from Tickets t join Detalle_Tickets d on t.id_ticket=d.id_ticket
join Tipos_pagos tp on tp.id_tipo_pago=t.id_tipo_pago
join Clientes c on c.id_cliente=t.id_cliente
where email is not null
group by c.id_cliente,nombre_cliente,dni_cliente,email,nombre_tipo_pago
GO
/****** Object:  StoredProcedure [dbo].[consultaClientesTicketsMesPasado]    Script Date: 18/03/2023 16:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[consultaClientesTicketsMesPasado]
as
begin
select id_cliente, nombre_cliente
from Clientes c
group by id_cliente, nombre_cliente
having 1 <(select count(id_ticket)
 from Tickets t where c.id_cliente = t.id_cliente and
 DATEDIFF(month, fecha_compra, GETDATE())=1)
end
GO
/****** Object:  StoredProcedure [dbo].[consultaPelisTaquilleras2]    Script Date: 18/03/2023 16:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[consultaPelisTaquilleras2]
@año int
as
begin
	select TOP 1 p.id_pelicula , titulo,
	sum(pre_unitario) ,
	count(id_detalle_ticket)
	from Detalle_Tickets dt join Funciones f on dt.id_funcion = f.id_funcion
	join Peliculas p on f.id_pelicula = p.id_pelicula
	where year(fecha_hora) = @año
	group by p.id_pelicula, titulo
	order by sum(pre_unitario) desc
end
GO
/****** Object:  StoredProcedure [dbo].[consultaSalasAsientos2]    Script Date: 18/03/2023 16:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[consultaSalasAsientos2]
as
select s.id_sala,nombre_sala,
count(num_asiento)
from Salas s join Asientos a on s.id_sala=a.id_sala
group by s.id_sala,nombre_sala
having count(num_asiento) > (select(count(a1.num_asiento)/count(s.id_sala))
							 from Asientos a1 join Salas s1
							 on a1.id_sala=s1.id_sala
							 where s1.id_sala=s.id_sala)
GO
/****** Object:  StoredProcedure [dbo].[consultaTicketsClientesSept2]    Script Date: 18/03/2023 16:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[consultaTicketsClientesSept2]
@mes int
as
Select id_ticket, format(fecha_compra, 'dd/MM/yyyy')'Fecha', 
t.id_cliente,c.nombre_cliente 'Nombre'
from Tickets t join clientes c on t.id_cliente=c.id_cliente
where @mes = all(select MONTH(fecha_compra)
from Tickets t1
where t1.id_cliente=c.id_cliente)
GO
/****** Object:  StoredProcedure [dbo].[pa_consulta_6]    Script Date: 18/03/2023 16:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[pa_consulta_6]
@fecha1 varchar(20),
@fecha2 varchar(20)
as 
begin 
select id_cliente, nombre_cliente
from Clientes c
where not exists (select id_cliente 
from Tickets t
where t.id_cliente = c.id_cliente and 
(fecha_compra) between @fecha1 and @fecha2)
end 
GO
/****** Object:  StoredProcedure [dbo].[sp_clientesquevinieron_consulta2]    Script Date: 18/03/2023 16:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_clientesquevinieron_consulta2]
@fechaCompra int,
@cantVeces int
AS
BEGIN
	select id_cliente , nombre_cliente
	from Clientes c 
	where exists (select id_cliente
	from Tickets t
	where t.id_cliente = c.id_cliente 
	and (year(fecha_compra) = year(@fechaCompra))
	group by id_cliente
	having count(t.id_cliente) <= @cantVeces )
END
GO
/****** Object:  StoredProcedure [dbo].[sp_clientesquevinieron_consulta3]    Script Date: 18/03/2023 16:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[sp_clientesquevinieron_consulta3]
@fechaCompra int,
@cantVeces int
AS
BEGIN
	select id_cliente , nombre_cliente
	from Clientes c 
	where exists (select id_cliente
	from Tickets t
	where t.id_cliente = c.id_cliente 
	and (year(fecha_compra) = year(@fechaCompra))
	group by id_cliente
	having count(t.id_cliente) <= @cantVeces )
END

GO
/****** Object:  StoredProcedure [dbo].[sp_clientesquevinieron_consulta4]    Script Date: 18/03/2023 16:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[sp_clientesquevinieron_consulta4]
@fechaCompra int,
@cantVeces int
AS
BEGIN
	select id_cliente , nombre_cliente
	from Clientes c 
	where exists (select id_cliente
	from Tickets t
	where t.id_cliente = c.id_cliente 
	and (year(fecha_compra) = year(@fechaCompra))
	group by id_cliente
	having count(t.id_cliente) <= @cantVeces )
END
GO
/****** Object:  StoredProcedure [dbo].[sp_clientesquevinieron_consulta6]    Script Date: 18/03/2023 16:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[sp_clientesquevinieron_consulta6]
@cantVeces int
AS
BEGIN
	select id_cliente , nombre_cliente
	from Clientes c 
	where exists (select id_cliente
	from Tickets t
	where t.id_cliente = c.id_cliente 
	and (year(fecha_compra) = year(getdate()))
	group by id_cliente
	having count(t.id_cliente) > @cantVeces )
END
GO
/****** Object:  StoredProcedure [dbo].[SP_CONSULTAR_CLIENTES]    Script Date: 18/03/2023 16:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CONSULTAR_CLIENTES]
AS
BEGIN
	SELECT * FROM Clientes
END
GO
/****** Object:  StoredProcedure [dbo].[SP_CONSULTAR_CLIENTES2]    Script Date: 18/03/2023 16:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SP_CONSULTAR_CLIENTES2]
AS
BEGIN
	select id_cliente, nombre_cliente+' (DNI: '+dni_cliente+')' 'cliente'
	from clientes
END
GO
/****** Object:  StoredProcedure [dbo].[SP_CONSULTAR_FUNCIONES]    Script Date: 18/03/2023 16:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CONSULTAR_FUNCIONES]
AS
BEGIN
	SELECT id_funcion,f.id_pelicula,titulo,fecha_hora,idioma, pre_unitario
	FROM Funciones f join Peliculas p
	on f.id_pelicula=p.id_pelicula
END
GO
/****** Object:  StoredProcedure [dbo].[SP_CONSULTAR_RESERVAS]    Script Date: 18/03/2023 16:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CONSULTAR_RESERVAS]
AS
BEGIN
	SELECT * FROM Reservas
END
GO
/****** Object:  StoredProcedure [dbo].[SP_CONSULTAR_SUCURSALES]    Script Date: 18/03/2023 16:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CONSULTAR_SUCURSALES]
AS
BEGIN
	SELECT * FROM Sucursales
END
GO
/****** Object:  StoredProcedure [dbo].[SP_CONSULTAR_TIPOSPAGO]    Script Date: 18/03/2023 16:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CONSULTAR_TIPOSPAGO]
AS
BEGIN
	SELECT * FROM Tipos_pagos
END
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTAR_DETALLES]    Script Date: 18/03/2023 16:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_INSERTAR_DETALLES]
	@id_funcion int,
	@id_asiento int,
	@descuento decimal,
	@id_reserva int,
	@id_ticket int,
	@costo money
AS
BEGIN
	INSERT INTO Detalle_Tickets(id_funcion,id_asiento,descuento,id_reserva,id_ticket,costo)
    VALUES (@id_funcion,@id_asiento,@descuento,@id_reserva,@id_ticket,@costo);
END
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTAR_TICKET]    Script Date: 18/03/2023 16:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_INSERTAR_TICKET]
	@id_tipo_pago int,
	@id_sucursal int,
	@id_cliente int,
	@fecha_compra datetime
AS
BEGIN
	INSERT INTO Tickets (id_tipo_pago,id_sucursal,id_cliente,fecha_compra)
    VALUES (@id_tipo_pago,@id_sucursal,@id_cliente,@fecha_compra);
END
-----------
GO
/****** Object:  StoredProcedure [dbo].[SP_PROXIMO_TICKET]    Script Date: 18/03/2023 16:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_PROXIMO_TICKET]
@prox int output
AS
BEGIN
SET @prox = (SELECT MAX(id_ticket)+1  FROM Tickets);
END
GO
/****** Object:  StoredProcedure [dbo].[spClientesVinieron]    Script Date: 18/03/2023 16:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spClientesVinieron]
@fechaCompra int,
@cantVeces int
as
begin
Select id_cliente, nombre_cliente
from Clientes c
where exists (select id_cliente
from Tickets t
where t.id_cliente = c.id_cliente
and (year(fecha_compra) = year(@fechaCompra))
group by id_cliente
having count(id_cliente) = @cantVeces )
end
GO
/****** Object:  StoredProcedure [dbo].[spConsultarFuncionesParametro]    Script Date: 18/03/2023 16:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spConsultarFuncionesParametro]
as
begin
	SELECT id_funcion '#',titulo 'Película',fecha_hora 'Fecha',idioma 'Idioma', pre_unitario 'Precio'
	FROM Funciones f join Peliculas p
	on f.id_pelicula=p.id_pelicula
	where fecha_hora > getdate()
end
GO
/****** Object:  StoredProcedure [dbo].[spConsultarSucursalPoranio]    Script Date: 18/03/2023 16:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spConsultarSucursalPoranio]
@fechaAnio int
as
BEGIN
SELECT s.nombre_sucursal ,
count(dt.id_ticket), 
sum(dt.costo), 
avg(costo)
FROM Tickets t join Detalle_Tickets dt on dt.id_ticket = t.id_ticket join Sucursales s on 
s.id_sucursal = t.id_sucursal
WHERE YEAR(fecha_compra) = @fechaAnio
GROUP BY t.id_sucursal,s.nombre_sucursal
ORDER BY s.nombre_sucursal asc
END
GO
/****** Object:  StoredProcedure [dbo].[spSucursalTickets]    Script Date: 18/03/2023 16:26:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spSucursalTickets]
as
begin
SELECT s.nombre_sucursal ,
count(dt.id_ticket) ,
sum(dt.costo) ,
avg(costo) 
FROM Tickets t join Detalle_Tickets dt on dt.id_ticket = t.id_ticket join Sucursales s on
s.id_sucursal = t.id_sucursal
WHERE DATEDIFF(YEAR,fecha_compra,getdate())=0
GROUP BY t.id_sucursal,s.nombre_sucursal
ORDER BY s.nombre_sucursal asc
end
GO
