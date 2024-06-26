USE [Login]
GO
/****** Object:  Table [dbo].[Inmobiliaria]    Script Date: 3/5/2024 00:23:41 ******/
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
/****** Object:  Table [dbo].[Propiedades]    Script Date: 3/5/2024 00:23:41 ******/
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
/****** Object:  Table [dbo].[Ubicacion]    Script Date: 3/5/2024 00:23:41 ******/
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
/****** Object:  Table [dbo].[Usuario]    Script Date: 3/5/2024 00:23:41 ******/
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
SET IDENTITY_INSERT [dbo].[Inmobiliaria] ON 

INSERT [dbo].[Inmobiliaria] ([Idinmobiliaria], [Nombre], [Email], [Telefono], [Direccion], [imagenInmobiliaria], [Comision]) VALUES (7, N'Estudio de Agrimensura - Agrimensor Palacios', N'lucas.j.palacios@gmail.com', 65049220, N'C. 71 1050, Ringuelet', N'content/uploads/2016/08/depto.jpg', N'1000')
INSERT [dbo].[Inmobiliaria] ([Idinmobiliaria], [Nombre], [Email], [Telefono], [Direccion], [imagenInmobiliaria], [Comision]) VALUES (9, N'Lucas Sanchez Constructora', N'lucas.sanchez@gmail.com', 35415260, N'Av. los Olmos 232', N'https://images.homify.com/images/a_0,c_fit,f_auto,q_auto,w_554/v1512601972/p/photo/image/2350734/DSC_0453-Editar-Editar/fotos-de-livings-de-estilo-moderno-de-bhavana.jpg', N'12000')
INSERT [dbo].[Inmobiliaria] ([Idinmobiliaria], [Nombre], [Email], [Telefono], [Direccion], [imagenInmobiliaria], [Comision]) VALUES (11, N'Estilo Leal', N'estiloelal1@gmail.com', 22914592, N'Camargo 870', N'https://media-cdn.tripadvisor.com/media/vr-splice-https://www.infobae.com/new-resizer/YaTBVrRJ8WC2wkao0xMRqkdF5sU=/arc-anglerfish-arc2-prod-infobae/public/5HOAQMBWMFHQJO7QY32CQHFEVY.jpg', N'11111')
INSERT [dbo].[Inmobiliaria] ([Idinmobiliaria], [Nombre], [Email], [Telefono], [Direccion], [imagenInmobiliaria], [Comision]) VALUES (13, N'Guillermo Castro Propiedades', N'gcastropropiedades@hotmail.com', 22357860, N'Corrientes 2432', N'https://media-cdn.tripadvisor.com/media/vr-splice-j/05/64/7b/84.jpg', N'122222')
INSERT [dbo].[Inmobiliaria] ([Idinmobiliaria], [Nombre], [Email], [Telefono], [Direccion], [imagenInmobiliaria], [Comision]) VALUES (17, N'icios Inmobiliarios', N'info@montanezyasocinmobiliaria.com', 35168894, N'José Gigena 1810', N'https://media.admagazine.com/photos/6467b71e70d3fa4f8a2aa26c/16:9/w_2560%2Cc_limit/FedeC-LowRes7463.jpg', N'333332')
INSERT [dbo].[Inmobiliaria] ([Idinmobiliaria], [Nombre], [Email], [Telefono], [Direccion], [imagenInmobiliaria], [Comision]) VALUES (18, N'BUEPROP', N'info@bueprop.com', 11576000, N'French 2300', N'https://static.tokkobroker.com/pictures/68205740913431444680916613908131000731380668971994925055665699330236172408635.jpg', N'222222')
INSERT [dbo].[Inmobiliaria] ([Idinmobiliaria], [Nombre], [Email], [Telefono], [Direccion], [imagenInmobiliaria], [Comision]) VALUES (19, N'La City Propiedades', N'infocity@citypropiedades.com', 11482732, N'Aguero 1709', N'gfgfdg', N'550000')
INSERT [dbo].[Inmobiliaria] ([Idinmobiliaria], [Nombre], [Email], [Telefono], [Direccion], [imagenInmobiliaria], [Comision]) VALUES (20, N'Altamirano propiedades', N'altamirano.propiedades@hotmail.com', 11484919, N'Alvear 2400', N'fgfgf', N'700000')
INSERT [dbo].[Inmobiliaria] ([Idinmobiliaria], [Nombre], [Email], [Telefono], [Direccion], [imagenInmobiliaria], [Comision]) VALUES (21, N'Noe Garay Inmobiliaria', N'noegarayinmobiliaria@gmail.com', 35416409, N'San Martin 650 ', N'fgfdg', N'25000')
INSERT [dbo].[Inmobiliaria] ([Idinmobiliaria], [Nombre], [Email], [Telefono], [Direccion], [imagenInmobiliaria], [Comision]) VALUES (22, N'Walker Inmobiliaria Rafaela', N'claudia.walker@gmail.com', 34922421, N'GUEMES 153', N'cvxbvb', N'100000')
SET IDENTITY_INSERT [dbo].[Inmobiliaria] OFF
GO
SET IDENTITY_INSERT [dbo].[Propiedades] ON 

INSERT [dbo].[Propiedades] ([IdPropiedad], [Descripcion], [tipoPropiedad], [Precio], [Ambiente], [ImagenPropiedad], [IdDireccion], [IdInmobiliaria], [Estado]) VALUES (5, N'Espectacular casa en venta en Belgrano Chico, con una ubicación privilegiada a metros de Av. Del Libertador. La propiedad cuenta con un amplio jardín con piscina, un garage para dos autos y cuatro dormitorios, dos de ellos en suite.', N'Casa', 500000, 4, N'https://imgar.zonapropcdn.com/avisos/1/00/52/51/00/09/720x532/1885325556.jpg', 3, 7, 1)
INSERT [dbo].[Propiedades] ([IdPropiedad], [Descripcion], [tipoPropiedad], [Precio], [Ambiente], [ImagenPropiedad], [IdDireccion], [IdInmobiliaria], [Estado]) VALUES (6, N'Moderno PH en alquiler en Palermo, con una ubicación ideal a metros de Av. Santa Fe. La propiedad cuenta con una terraza con vistas a la ciudad, un balcón, tres dormitorios y una cocina independiente.', N'PH', 450000, 3, N'https://imgar.zonapropcdn.com/avisos/1/00/52/36/64/70/720x532/1882095407.jpg', 4, 9, 1)
INSERT [dbo].[Propiedades] ([IdPropiedad], [Descripcion], [tipoPropiedad], [Precio], [Ambiente], [ImagenPropiedad], [IdDireccion], [IdInmobiliaria], [Estado]) VALUES (7, N'Práctico departamento en venta en Recoleta, con una ubicación privilegiada a metros de la Plaza Francia. La propiedad cuenta con un balcón, dos dormitorios y cocheras.', N'Departamento', 300000, 2, N'https://imgar.zonapropcdn.com/avisos/1/00/52/50/42/83/720x532/1885193234.jpg', 5, 11, 1)
INSERT [dbo].[Propiedades] ([IdPropiedad], [Descripcion], [tipoPropiedad], [Precio], [Ambiente], [ImagenPropiedad], [IdDireccion], [IdInmobiliaria], [Estado]) VALUES (8, N'Amplio duplex en alquiler en San Telmo, con una ubicación ideal a metros de la calle Defensa. La propiedad cuenta con un patio, tres dormitorios y una cocina integrada.', N'Duplex', 350000, 3, N'https://imgar.zonapropcdn.com/avisos/1/00/51/91/77/98/720x532/1871825347.jpg', 6, 13, 1)
INSERT [dbo].[Propiedades] ([IdPropiedad], [Descripcion], [tipoPropiedad], [Precio], [Ambiente], [ImagenPropiedad], [IdDireccion], [IdInmobiliaria], [Estado]) VALUES (9, N'Hermosa casa en venta en Nordelta, con una ubicación privilegiada a metros del lago. La propiedad cuenta con una piscina, cuatro dormitorios, un jardín y un garage.', N'Casa ', 700000, 4, N'https://imgar.zonapropcdn.com/avisos/1/00/52/37/51/48/720x532/1882281344.jpg', 7, 17, 1)
INSERT [dbo].[Propiedades] ([IdPropiedad], [Descripcion], [tipoPropiedad], [Precio], [Ambiente], [ImagenPropiedad], [IdDireccion], [IdInmobiliaria], [Estado]) VALUES (10, N'Espacioso PH en alquiler en Villa Urquiza, con una ubicación ideal a metros de la Av. Triunvirato. La propiedad cuenta con un balcón, dos dormitorios y una cocina independiente.', N'PH', 250000, 2, N'https://imgar.zonapropcdn.com/avisos/1/00/52/46/46/33/720x532/1884278356.jpg', 8, 18, 1)
INSERT [dbo].[Propiedades] ([IdPropiedad], [Descripcion], [tipoPropiedad], [Precio], [Ambiente], [ImagenPropiedad], [IdDireccion], [IdInmobiliaria], [Estado]) VALUES (11, N'Cómodo departamento en venta en Caballito, con una ubicación ideal a metros de la Av. Rivadavia. La propiedad cuenta con un balcón, un dormitorio y una cocina incorporada.', N'Departamento', 200000, 1, N'https://imgar.zonapropcdn.com/avisos/1/00/51/03/91/22/720x532/1852039669.jpg', 9, 19, 1)
INSERT [dbo].[Propiedades] ([IdPropiedad], [Descripcion], [tipoPropiedad], [Precio], [Ambiente], [ImagenPropiedad], [IdDireccion], [IdInmobiliaria], [Estado]) VALUES (12, N'Moderno duplex en alquiler en Palermo Hollywood, con una ubicación ideal a metros de la Av. Scalabrini Ortiz. La propiedad cuenta con un patio, tres dormitorios y una cocina integrada.', N'Duplex', 400000, 3, N'https://imgar.zonapropcdn.com/avisos/1/00/51/17/97/18/720x532/1855787241.jpg', 10, 20, 1)
INSERT [dbo].[Propiedades] ([IdPropiedad], [Descripcion], [tipoPropiedad], [Precio], [Ambiente], [ImagenPropiedad], [IdDireccion], [IdInmobiliaria], [Estado]) VALUES (13, N'Espectacular casa en venta en Vicente López, con una ubicación privilegiada a metros del río. La propiedad cuenta con una terraza, cinco dormitorios, un jardín y un garage.', N'Casa', 650000, 5, N'https://imgar.zonapropcdn.com/avisos/1/00/52/27/35/72/720x532/1880029492.jpg', 11, 21, 1)
INSERT [dbo].[Propiedades] ([IdPropiedad], [Descripcion], [tipoPropiedad], [Precio], [Ambiente], [ImagenPropiedad], [IdDireccion], [IdInmobiliaria], [Estado]) VALUES (14, N'Amplio PH en alquiler en San Isidro, con una ubicación ideal a metros de la Av. Libertador. La propiedad cuenta con un balcón, tres dormitorios y una cocina independiente.', N'PH', 550000, 3, N'https://imgar.zonapropcdn.com/avisos/1/00/52/23/36/78/720x532/1879051831.jpg', 13, 22, 1)
SET IDENTITY_INSERT [dbo].[Propiedades] OFF
GO
SET IDENTITY_INSERT [dbo].[Ubicacion] ON 

INSERT [dbo].[Ubicacion] ([IdDireccion], [Calle], [Altura], [Barrio], [Descripcion]) VALUES (3, N'Av. Cabildo', 2427, N'Belgrano', N'El Estadio Monumental de River Plate es uno de los estadios de fútbol más grandes del mundo. Además, en el corazón de Belgrano se encuentra el Barrio Chino, un barrio tradicional chino. Otro lugar destacado es el Parque de la Memoria, un espacio dedicado a la memoria de las víctimas de la última dictadura militar argentina. También, podemos encontrar el Museo de Arte Español Enrique Larreta, dedicado al arte español y ubicado en una hermosa mansión de estilo colonial. Por último, tenemos las Barrancas de Belgrano, un parque ubicado a orillas del río de la Plata con hermosas vistas de la ciudad.')
INSERT [dbo].[Ubicacion] ([IdDireccion], [Calle], [Altura], [Barrio], [Descripcion]) VALUES (4, N'Av. Santa Fe', 5494, N'Palermo', N'Palermo Viejo es un barrio histórico con calles adoquinadas, bares y restaurantes. En este barrio también se encuentra el Museo de Arte Latinoamericano de Buenos Aires (MALBA), que está dedicado al arte latinoamericano y cuenta con obras de destacados artistas como Frida Kahlo, Diego Rivera y Fernando Botero. Otro lugar destacado en Palermo es el Rosedal, un hermoso jardín de rosas con más de 18.000 rosales de diferentes especies. Además, encontramos Palermo Soho, un barrio bohemio con boutiques, galerías de arte, restaurantes y bares. Y por último, tenemos Palermo Hollywood, un barrio hipster con una gran variedad de restaurantes, bares, cervecerías artesanales y clubes nocturnos.
')
INSERT [dbo].[Ubicacion] ([IdDireccion], [Calle], [Altura], [Barrio], [Descripcion]) VALUES (5, N'Av. Hipolito Yrigoyen
', 1100, N'Recoleta', N'El Cementerio de la Recoleta es un cementerio histórico y emblemático, donde descansan algunos de los personajes más importantes de la historia argentina, como Eva Perón y Alfonsina Storni. Otro lugar destacado es el Museo Nacional de Bellas Artes, que alberga una colección de arte argentino y europeo de renombre mundial. También tenemos el Ateneo Grand Splendid, una librería y café histórico que fue declarado monumento histórico nacional en 2000. En el corazón de Recoleta se encuentra la Plaza Francia, una plaza pública muy popular entre artistas, músicos y turistas. Por último, tenemos la Floralis Genérica, una impresionante flor de metal de 23 metros de altura ubicada en el Parque Thays.
')
INSERT [dbo].[Ubicacion] ([IdDireccion], [Calle], [Altura], [Barrio], [Descripcion]) VALUES (6, N'Av. Independencia', 3456, N'San Telmo', N'La Plaza Dorrego es la plaza principal de San Telmo, un popular lugar de encuentro para artistas, músicos y turistas. En esta plaza se celebra todos los domingos la Feria de San Telmo, una feria de artesanías y antigüedades. Otro lugar destacado en San Telmo es el Museo de Arte Moderno de Buenos Aires, que alberga una colección de arte argentino y latinoamericano del siglo XX. Además, encontramos el Museo Histórico Nacional, que exhibe la historia de Argentina desde la época colonial hasta la actualidad. Por último, tenemos el Paseo de la Historieta, un paseo de esculturas que representa a los personajes de historietas más emblemáticos de Argentina.
')
INSERT [dbo].[Ubicacion] ([IdDireccion], [Calle], [Altura], [Barrio], [Descripcion]) VALUES (7, N'Av. La Alameda', 1000, N'Nordelta', N'El Bahia Grande es un centro comercial a cielo abierto con tiendas, restaurantes y bares. También se encuentra el Parque Aéreo Euca, un parque de aventuras con tirolesas, puentes colgantes y otras atracciones. Otro lugar destacado es el Museo del Tigre, que exhibe la historia y la cultura de la región del Tigre. Además, podemos disfrutar del Paseo Victorica, un paseo ribereño con vistas al río Luján. Y por último, encontramos el Puerto de Frutos, un mercado flotante con puestos de artesanías, souvenirs y productos regionales.')
INSERT [dbo].[Ubicacion] ([IdDireccion], [Calle], [Altura], [Barrio], [Descripcion]) VALUES (8, N'Av. Triunvirato', 4484, N'Villa Urquiza', N' El Museo del Humor exhibe una colección de dibujos, caricaturas y humor gráfico argentino. Junto a este museo, se encuentra el Parque Los Andes, un parque con jardines, lagos y un anfiteatro. Otro museo destacado es el Museo de Arte Contemporáneo de Buenos Aires, que alberga una colección de arte argentino y latinoamericano. En la Plaza Marcos Sastre, se pueden encontrar juegos infantiles, un anfiteatro y un mural de Martín Ron. Además, tenemos el Santuario Jesús Misericordioso, una iglesia con una arquitectura moderna y un vitral de 120 metros cuadrados.')
INSERT [dbo].[Ubicacion] ([IdDireccion], [Calle], [Altura], [Barrio], [Descripcion]) VALUES (9, N'Av. Rivadavia', 5716, N'Caballito', N'El Parque Centenario es un parque de 14 hectáreas ubicado en el corazón de Caballito, con jardines, lagos, monumentos y actividades culturales. También encontramos el Museo de Ciencias Naturales Bernardino Rivadavia, que alberga una colección de fósiles, minerales y animales de todo el mundo. Otro lugar destacado es el Barrio Inglés, un barrio residencial con casas de estilo inglés y una arquitectura colonial. Además, podemos visitar el Patio de los Lecheros, un mercado gastronómico con puestos de comida de todo el mundo. Y por último, tenemos la Plaza Irlanda, un parque con una fuente de agua, un anfiteatro y un monumento a la inmigración irlandesa.')
INSERT [dbo].[Ubicacion] ([IdDireccion], [Calle], [Altura], [Barrio], [Descripcion]) VALUES (10, N'Av. Scalabrini Ortiz', 1875, N'Palermo', N'El Jardín Japonés es un jardín de estilo japonés ubicado en el Parque Tres de Febrero. Este parque, de 80 hectáreas y ubicado en el corazón de Palermo, cuenta con jardines, lagos, monumentos y actividades culturales. Además, en Palermo también encontramos los Bosques de Palermo, un gran parque con jardines, lagos, monumentos y actividades culturales, ideal para pasear, hacer ejercicio y disfrutar de la naturaleza. Otro lugar destacado es la Plaza Serrano, una plaza peatonal con tiendas, restaurantes y bares, que ofrece un ambiente animado y vibrante para pasar el tiempo.')
INSERT [dbo].[Ubicacion] ([IdDireccion], [Calle], [Altura], [Barrio], [Descripcion]) VALUES (11, N'Carlos Francisco Melo', 1133, N'Vicente Lopez', N'El Paseo de la Costa es un paseo ribereño con vistas al Río de la Plata. Es un lugar ideal para pasear, hacer ejercicio y disfrutar de la naturaleza. En el Parque Tres de Febrero se encuentra la Quinta Trabucco, una casa histórica de estilo italiano que ofrece la oportunidad de aprender sobre la historia de Vicente López. También podemos visitar la Reserva Ecológica Vicente López, un área natural protegida con senderos para caminatas, ciclismo y observación de aves. Es un lugar ideal para disfrutar de la naturaleza. Otro lugar emblemático es la Torre Ader, una torre de estilo neogótico ubicada en Villa Adelina. Y para un plan divertido y educativo en familia, podemos visitar Technópolis, un parque temático de ciencia y tecnología ubicado en Villa Martelli.')
INSERT [dbo].[Ubicacion] ([IdDireccion], [Calle], [Altura], [Barrio], [Descripcion]) VALUES (13, N'Av. del Libertador', 1839, N'San Isidro', N'La Catedral de San Isidro es una catedral neogótica construida en 1896, siendo un lugar importante para la comunidad católica de San Isidro. En el mismo lugar, se encuentra el Museo de Arte de San Isidro, que alberga una colección de arte argentino y latinoamericano. Además, contamos con el Parque de la Familia, un parque público con juegos infantiles, un anfiteatro y un lago, siendo el lugar ideal para pasar tiempo en familia. Otro lugar destacado es el Hipódromo de San Isidro, donde se llevan a cabo carreras de caballos, siendo popular entre los amantes de los caballos y las apuestas. Por último, cerca de San Isidro se encuentra el Delta del Tigre, un sistema fluvial perfecto para realizar paseos en barco, pesca y observación de aves.')
SET IDENTITY_INSERT [dbo].[Ubicacion] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([IdUsuario], [UserName], [Contraseña], [Nombre], [Email], [Telefono]) VALUES (1, N'Juanito', N'123456', N'Juan', N'juanito@gmail.com', 658123)
INSERT [dbo].[Usuario] ([IdUsuario], [UserName], [Contraseña], [Nombre], [Email], [Telefono]) VALUES (2, N'Mariana', N'654321', N'Maria', N'mariana@gmail.com', 234463)
INSERT [dbo].[Usuario] ([IdUsuario], [UserName], [Contraseña], [Nombre], [Email], [Telefono]) VALUES (3, N'Pedrito', N'abc123', N'Pedro', N'pedrito@gmail.com', 342545)
INSERT [dbo].[Usuario] ([IdUsuario], [UserName], [Contraseña], [Nombre], [Email], [Telefono]) VALUES (4, N'Anita', N'453253', N'Ana', N'anita@gmail.com ', 345520)
INSERT [dbo].[Usuario] ([IdUsuario], [UserName], [Contraseña], [Nombre], [Email], [Telefono]) VALUES (5, N'joshino', N'324123', N'Jose', N'joshino@gmail.com', 768344)
INSERT [dbo].[Usuario] ([IdUsuario], [UserName], [Contraseña], [Nombre], [Email], [Telefono]) VALUES (6, N'Luisito', N'675773', N'Luis', N'luisito@gmail.com', 135424)
INSERT [dbo].[Usuario] ([IdUsuario], [UserName], [Contraseña], [Nombre], [Email], [Telefono]) VALUES (7, N'Pablito', N'161101', N'Pablo', N'pablito@gmail.com', 345353)
INSERT [dbo].[Usuario] ([IdUsuario], [UserName], [Contraseña], [Nombre], [Email], [Telefono]) VALUES (8, N'Luci', N'043825', N'Lucia', N'luci@gmail.com', 563635)
INSERT [dbo].[Usuario] ([IdUsuario], [UserName], [Contraseña], [Nombre], [Email], [Telefono]) VALUES (9, N'Dani', N'166337', N'Daniel', N'dani@gmail.com', 412457)
INSERT [dbo].[Usuario] ([IdUsuario], [UserName], [Contraseña], [Nombre], [Email], [Telefono]) VALUES (10, N'Gustavito', N'18122022', N'Gustavo', N'gustavo@gmail.com', 894234)
INSERT [dbo].[Usuario] ([IdUsuario], [UserName], [Contraseña], [Nombre], [Email], [Telefono]) VALUES (13, N'Jasloff', N'777', N'Mateo', N'mateopekeman@gmail.com', 999)
SET IDENTITY_INSERT [dbo].[Usuario] OFF
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
/****** Object:  StoredProcedure [dbo].[sp_ActualizarPropiedad]    Script Date: 3/5/2024 00:23:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ActualizarUsuario]    Script Date: 3/5/2024 00:23:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarPropiedad]    Script Date: 3/5/2024 00:23:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarUsuario]    Script Date: 3/5/2024 00:23:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_InsertarInmobiliaria]    Script Date: 3/5/2024 00:23:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_InsertarPropiedad]    Script Date: 3/5/2024 00:23:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_InsertarUbicacion]    Script Date: 3/5/2024 00:23:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_InsertarUsuario]    Script Date: 3/5/2024 00:23:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_obtener_propiedad]    Script Date: 3/5/2024 00:23:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_obtener_propiedades_precio]    Script Date: 3/5/2024 00:23:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_obtener_propiedades_tipo]    Script Date: 3/5/2024 00:23:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ObtenerInmobiliaria]    Script Date: 3/5/2024 00:23:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ObtenerUbicacion]    Script Date: 3/5/2024 00:23:41 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ObtenerUsuario]    Script Date: 3/5/2024 00:23:41 ******/
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
