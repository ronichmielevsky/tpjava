USE [login]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 28/9/2023 14:26:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[UserName] [varchar](50) NULL,
	[Contraseña] [varchar](50) NULL,
	[Nombre] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Telefono] [int] NULL
) ON [PRIMARY]
GO
