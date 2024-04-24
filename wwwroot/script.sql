USE [Login]
GO
/****** Object:  Table [dbo].[Inmobiliaria]    Script Date: 24/4/2024 18:16:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inmobiliaria](
	[Idinmobiliaria] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](500) NULL,
	[Email] [varchar](500) NULL,
	[Telefono] [int] NULL,
	[Direccion] [varchar](500) NULL,
	[imagenInmobiliaria] [varchar](500) NULL,
	[Comision] [varchar](50) NULL,
 CONSTRAINT [PK_Inmobiliaria] PRIMARY KEY CLUSTERED 
(
	[Idinmobiliaria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Propiedades]    Script Date: 24/4/2024 18:16:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Propiedades](
	[IdPropiedad] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](500) NULL,
	[tipoPropiedad] [varchar](500) NULL,
	[Precio] [int] NULL,
	[Ambiente] [int] NULL,
	[ImagenPropiedad] [varchar](1000) NULL,
	[IdDireccion] [int] NULL,
	[IdInmobiliaria] [int] NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_Propiedades] PRIMARY KEY CLUSTERED 
(
	[IdPropiedad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ubicacion]    Script Date: 24/4/2024 18:16:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ubicacion](
	[IdDireccion] [int] IDENTITY(1,1) NOT NULL,
	[Calle] [varchar](500) NOT NULL,
	[Altura] [int] NOT NULL,
	[Barrio] [varchar](500) NOT NULL,
	[Descripcion] [varchar](1000) NULL,
 CONSTRAINT [PK_Ubicacion] PRIMARY KEY CLUSTERED 
(
	[IdDireccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 24/4/2024 18:16:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[Contraseña] [varchar](50) NULL,
	[Nombre] [varchar](50) NULL,
	[Email] [varchar](1000) NULL,
	[Telefono] [int] NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Propiedades]  WITH CHECK ADD  CONSTRAINT [FK_Propiedades_Inmobiliaria] FOREIGN KEY([IdInmobiliaria])
REFERENCES [dbo].[Inmobiliaria] ([Idinmobiliaria])
GO
ALTER TABLE [dbo].[Propiedades] CHECK CONSTRAINT [FK_Propiedades_Inmobiliaria]
GO
ALTER TABLE [dbo].[Propiedades]  WITH CHECK ADD  CONSTRAINT [FK_Propiedades_Ubicacion] FOREIGN KEY([IdDireccion])
REFERENCES [dbo].[Ubicacion] ([IdDireccion])
GO
ALTER TABLE [dbo].[Propiedades] CHECK CONSTRAINT [FK_Propiedades_Ubicacion]
GO
/****** Object:  StoredProcedure [dbo].[sp_ActualizarPropiedad]    Script Date: 24/4/2024 18:16:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ActualizarPropiedad]
@IdPropiedad INT,
@Descripcion VARCHAR(255),
@TipoPropiedad VARCHAR(50),
@Precio INT,
@Ambiente VARCHAR(50),
@ImagenPropiedad VARCHAR(255),
@IdDireccion INT,
@IdInmobiliaria INT
AS
BEGIN

UPDATE Propiedades
SET
  Descripcion = @Descripcion,
  TipoPropiedad = @TipoPropiedad,
  Precio = @Precio,
  Ambiente = @Ambiente,
  ImagenPropiedad = @ImagenPropiedad,
  IdDireccion = @IdDireccion,
  IdInmobiliaria = @IdInmobiliaria
WHERE
  IdPropiedad = @IdPropiedad;

END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ActualizarUsuario]    Script Date: 24/4/2024 18:16:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ActualizarUsuario]
@IdUsuario INT,
@UserName VARCHAR(50),
@Contraseña VARCHAR(50),
@Nombre VARCHAR(50),
@Email VARCHAR(50),
@Telefono INT
AS
BEGIN

UPDATE Usuario
SET
  UserName = @UserName,
  Contraseña = @Contraseña,
  Nombre = @Nombre,
  Email = @Email,
  Telefono = @Telefono
WHERE
  IdUsuario = @IdUsuario;

END;
GO
/****** Object:  StoredProcedure [dbo].[sp_EliminarPropiedad]    Script Date: 24/4/2024 18:16:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_EliminarPropiedad]
@IdPropiedad INT
AS
BEGIN

DELETE FROM Propiedades
WHERE
  IdPropiedad = @IdPropiedad;

END;
GO
/****** Object:  StoredProcedure [dbo].[sp_EliminarUsuario]    Script Date: 24/4/2024 18:16:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_EliminarUsuario]
@IdUsuario INT
AS
BEGIN

DELETE FROM Usuario
WHERE
  IdUsuario = @IdUsuario;

END;
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertarInmobiliaria]    Script Date: 24/4/2024 18:16:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertarInmobiliaria]
@IdInmobiliaria INT,
@Nombre VARCHAR(50),
@Email VARCHAR(50),
@Telefono INT,
@Direccion VARCHAR(255),
@ImagenInmobiliaria VARCHAR(255),
@Comision INT,
@IdUsuario INT
AS
BEGIN

INSERT INTO Inmobiliaria
(
  IdInmobiliaria,
  Nombre,
  Email,
  Telefono,
  Direccion,
  ImagenInmobiliaria,
  Comision,
  IdUsuario
)
VALUES
(
  @IdInmobiliaria,
  @Nombre,
  @Email,
  @Telefono,
  @Direccion,
  @ImagenInmobiliaria,
  @Comision,
  @IdUsuario
);

END;
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertarPropiedad]    Script Date: 24/4/2024 18:16:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertarPropiedad]
@IdPropiedad INT,
@Descripcion VARCHAR(255),
@TipoPropiedad VARCHAR(50),
@Precio INT,
@Ambiente VARCHAR(50),
@ImagenPropiedad VARCHAR(255),
@IdDireccion INT,
@IdInmobiliaria INT
AS
BEGIN

INSERT INTO Propiedades
(
  IdPropiedad,
  Descripcion,
  TipoPropiedad,
  Precio,
  Ambiente,
  ImagenPropiedad,
  IdDireccion,
  IdInmobiliaria
)
VALUES
(
  @IdPropiedad,
  @Descripcion,
  @TipoPropiedad,
  @Precio,
  @Ambiente,
  @ImagenPropiedad,
  @IdDireccion,
  @IdInmobiliaria
);

END;
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertarUbicacion]    Script Date: 24/4/2024 18:16:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertarUbicacion]
@IdDireccion INT,
@IdUsuario INT,
@Calle VARCHAR(500),
@Altura INT,
@Barrio VARCHAR(50),
@Descripcion VARCHAR(255)
AS
BEGIN

INSERT INTO Ubicacion
(
  IdDireccion,
  IdUsuario,
  Calle,
  Altura,
  Barrio,
  Descripcion
)
VALUES
(
  @IdDireccion,
  @IdUsuario,
  @Calle,
  @Altura,
  @Barrio,
  @Descripcion
);

END;
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertarUsuario]    Script Date: 24/4/2024 18:16:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertarUsuario]
@IdUsuario INT,
@UserName VARCHAR(50),
@Contraseña VARCHAR(50),
@Nombre VARCHAR(50),
@Email VARCHAR(50),
@Telefono VARCHAR(50)

AS
BEGIN

INSERT INTO Usuario
(
  IdUsuario,
  UserName,
  Contraseña,
  Nombre,
  Email,
  Telefono
)
VALUES
(
  @IdUsuario,
  @UserName,
  @Contraseña,
  @Nombre,
  @Email,
  @Telefono
);

END;
GO
/****** Object:  StoredProcedure [dbo].[sp_obtener_propiedad]    Script Date: 24/4/2024 18:16:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_obtener_propiedad]
@IdPropiedad INT
AS
BEGIN

SELECT
  IdPropiedad,
  Descripcion,
  tipoPropiedad,
  Precio,
  Ambiente,
  ImagenPropiedad,
  IdDireccion,
  IdInmobiliaria
FROM
  Propiedades p
WHERE
  IdPropiedad = @IdPropiedad

END
GO
/****** Object:  StoredProcedure [dbo].[sp_obtener_propiedades_precio]    Script Date: 24/4/2024 18:16:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_obtener_propiedades_precio]
@precio INT
AS
BEGIN

SELECT
  IdPropiedad,
  Descripcion,
  tipoPropiedad,
  Precio,
  Ambiente,
  ImagenPropiedad,
  IdDireccion,
  IdInmobiliaria
FROM
  Propiedades p
WHERE
  Precio = @precio

END
GO
/****** Object:  StoredProcedure [dbo].[sp_obtener_propiedades_tipo]    Script Date: 24/4/2024 18:16:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_obtener_propiedades_tipo]
@tipoPropiedad INT
AS
BEGIN

SELECT
  IdPropiedad,
  Descripcion,
  tipoPropiedad,
  Precio,
  Ambiente,
  ImagenPropiedad,
  IdDireccion,
  IdInmobiliaria
FROM
  Propiedades p
WHERE
  tipoPropiedad = @tipoPropiedad

END
GO
/****** Object:  StoredProcedure [dbo].[sp_ObtenerInmobiliaria]    Script Date: 24/4/2024 18:16:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ObtenerInmobiliaria]
@IdInmobiliaria INT
AS
BEGIN

SELECT
  IdInmobiliaria,
  Nombre,
  Email,
  Telefono,
  Direccion,
  ImagenInmobiliaria,
  IdUsuario,
  Comision
FROM Inmobiliaria
WHERE IdInmobiliaria = @IdInmobiliaria;

END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ObtenerUbicacion]    Script Date: 24/4/2024 18:16:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ObtenerUbicacion]
@IdDireccion INT
AS
BEGIN

SELECT
  IdDireccion,
  IdUsuario,
  Calle,
  Altura,
  Barrio,
  Descripcion
FROM Ubicacion
WHERE IdDireccion = @IdDireccion;

END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ObtenerUsuario]    Script Date: 24/4/2024 18:16:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ObtenerUsuario]
@IdUsuario INT
AS
BEGIN

SELECT
  IdUsuario,
  UserName,
  Contraseña,
  Nombre,
  Email,
  Telefono
FROM Usuario
WHERE IdUsuario = @IdUsuario;

END;
GO
