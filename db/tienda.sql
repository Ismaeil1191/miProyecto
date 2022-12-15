-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-12-2022 a las 14:11:01
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `baño`
--

CREATE TABLE `baño` (
  `PID` int(50) NOT NULL,
  `PRODUCT` varchar(200) NOT NULL,
  `PRICE` double DEFAULT NULL,
  `IMAGE` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `baño`
--

INSERT INTO `baño` (`PID`, `PRODUCT`, `PRICE`, `IMAGE`, `DESCRIPTION`) VALUES
(3, 'Lavamanos', 70, '15.jpg', 'Lavamanos árabe de cerámica realizado artesanalmente y pintad de varios colores.\r\n\r\nMedidas:\r\n35cm diámetro x 15 cm alto.'),
(4, 'Jabonera', 15, '16.jpg', 'Jabonera artesanal realizado y pintado a mano con diseños inspirados en la cultura árabe.\r\nIdeal para colocar en la ducha.\r\nTan práctico como decorativo.\r\nJabonera árabe decorada con colores muy vivos y alegres.\r\n\r\nMedidas:\r\n13cm alto x 11,5cm largo '),
(5, 'Toallero', 39, '22.jpg', 'Toallero de forja artesanal. Elaborada artesanalmente en Marruecos.\r\nPieza de gran calidad realizada con remaches y grapas de forja, durabilidad asegurada.\r\nIdeal para crear ambientes rústicos y antiguos.\r\nMedidas: 78 cm largo x 14 cm ancho.'),
(6, 'Lavamanos estilo árabe', 70, '28.jpg', 'Lavamanos árabe de cerámica multicolor 40cm, realizado artesanalmente en Marruecos por maestros artesanales. Ideal para recrear decoraciones árabes, marroquíes, andalusíes, moriscas.\r\nProducto de gran calidad, que podrá instalarse tanto en casas rust');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cocina`
--

CREATE TABLE `cocina` (
  `PID` int(20) NOT NULL,
  `PRODUCT` varchar(20) NOT NULL,
  `PRICE` double NOT NULL,
  `IMAGE` varchar(20) NOT NULL,
  `DESCRIPTION` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cocina`
--

INSERT INTO `cocina` (`PID`, `PRODUCT`, `PRICE`, `IMAGE`, `DESCRIPTION`) VALUES
(1, 'Molinillo', 10, '17.jpg', 'Molinillo de café, especias.\r\nElaborado en metal con grabados florales.\r\nLa esencia elegante y al mismo tiempo tradicional que posee este artículo hará que sus comidas tengan un toque único.\r\nProducto original de gran calidad.\r\nMedidos: 11 cm x 5 cm'),
(2, 'Cuenco de ensalada', 29, '18.jpg', 'Cuenco ensaladera con base de cerámica verde, es único y original. Alegrará la mesa de tu hogar y le dará un toque rústico y diferente. Esta cerámica se realiza a mano, en barro o arcilla esmaltada con Oxido de cobre y manganeso. Una vez salida del h'),
(4, 'Pack de vasos', 29, '20.jpg', 'Set de 6 vasos de té arabé con sus platitos. Realizados en cristal templado de gran calidad y decorado con diseños geométricos inspirados en al-Andalus. Ideal para tomar te negro al estilo arabé.'),
(5, 'Jarra de cerámica', 14, '21.jpg', 'Jarra de cerámica que también se puede usar con florero, de terracota roja Marroquí artesano pintado a mano con (brea) alquitrán natural, Tradicionalmente estos cuencos se utilizan para beber agua, ya que desinfectan el agua y además le otorga un sab'),
(6, 'Cuchara ', 10, '27.jpg', 'Cuchara de madera molde galleta Maamul de dátil árabe.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dormitorio`
--

CREATE TABLE `dormitorio` (
  `PID` int(20) NOT NULL,
  `PRODUCT` varchar(20) NOT NULL,
  `PRICE` double NOT NULL,
  `IMAGE` varchar(20) NOT NULL,
  `DESCRIPTION` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `dormitorio`
--

INSERT INTO `dormitorio` (`PID`, `PRODUCT`, `PRICE`, `IMAGE`, `DESCRIPTION`) VALUES
(1, 'Lámpara cristal', 29, '24.jpg', 'Lámpara de techo, de cristal multicolor.\r\nDisponible en varios tamaños.\r\nAl Ser productos Artesanales las medidas y diseños pueden variar ligeramente.\r\nIdeal para colgar en sálones, dormitorios, patios, porches, entradas.'),
(2, 'Lámpara turca', 120, '25.jpg', 'Lampara turca realizada artesanalmente con cristal murano. \r\nCrea un ambiente muy agradable gracias a su diseño y a sus colores.\r\nSe puede combinar con la decoración de su casa o negocio.\r\nPerfecta para iluminar el sálon o salas de estar, dormitorios'),
(3, 'Espejo individual', 195, '26.jpg', 'Espejo árabe de gran tamaño, ideal para dormitorios o para decorar cualquier pared de su hogar.\r\nSu diseño reproduce la elegancia del lejano oriente.\r\nEl modelo \"Califato\" da un toque único a su hogar, si es amante de la cultura árabe... no dude en a'),
(4, 'Cabecero de cama', 175, 'cabecero-de-cama.jpg', 'Cabecero de cama de mucha calidad hecho a mano y disponible en diferentes colores y tamaños. ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jardin`
--

CREATE TABLE `jardin` (
  `PID` int(20) NOT NULL,
  `PRODUCT` varchar(20) NOT NULL,
  `PRICE` double DEFAULT NULL,
  `IMAGE` varchar(20) NOT NULL,
  `DESCRIPTION` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `jardin`
--

INSERT INTO `jardin` (`PID`, `PRODUCT`, `PRICE`, `IMAGE`, `DESCRIPTION`) VALUES
(1, 'Mesa de jardín', 300, '9.jpg', 'Mesa de mosaico para Jardin, terraza, exterior para verano realizada artesanalmente, estilo árabe elaborada, \r\nIncreíble elemento para la decoración árabe con mezcla de colores y diseños geométricos que nos trasladarán al interior más profundo de los'),
(2, 'Fuente de agua', 600, '10.jpg', 'Fuente de mosaico realizada artesanalmente en Marruecos por maestros de la artesanía andalusí, ideal para decorar su jardín terraza patio o incluso en interior de su hogar andalusí gracias a su sistema de recirculación del agua no necesitara mas que '),
(3, 'Lámpara de suelo', 120, '11.jpg', 'Lámpara de hierro para decoración al estilo árabe para su terraza, jardín, porche o para decorar el interior de su casa al puro estilo árabe. \r\nSe puede utilizar tanto en exterior como interior. \r\nIdeal para velones o instalación eléctrica (a parte) '),
(4, 'Gancho colgador', 35, '12.jpg', 'Gancho para Lámparas y Faroles, Perchero, Colgador Árabe Modelo HASIRA.\r\nRealizado artesanalmente con hierro Forjado, por maestros artesanos Árabe moriscos.\r\nPerfecto para colgar lámparas al exterior o interior. Gran durabilidad. Calidad inmejorable\r');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opiniones`
--

CREATE TABLE `opiniones` (
  `id` int(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `opiniones` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `opiniones`
--

INSERT INTO `opiniones` (`id`, `nombre`, `correo`, `opiniones`) VALUES
(22, 'Ismaeil Maddallah', 'ISMAEIL@GMAIL.COM', 'Prueba de conexión del formulario de la página contacto'),
(24, 'Ismaeil', 'info@gmail.com', 'Hola mi nombre es ismaeil'),
(25, 'Ismaeil', 'Ismaeil@infi.com', 'Hola mi nombre es ismaeil');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `OID` int(10) UNSIGNED NOT NULL,
  `ORDER_NO` varchar(45) NOT NULL DEFAULT '',
  `ORDER_DATE` date NOT NULL,
  `UID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `TOTAL_AMT` double(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`OID`, `ORDER_NO`, `ORDER_DATE`, `UID`, `TOTAL_AMT`) VALUES
(21, '19298', '2022-12-13', 21, 39.00),
(23, '80062', '2022-12-15', 23, 770.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_details`
--

CREATE TABLE `order_details` (
  `ID` int(10) UNSIGNED NOT NULL,
  `OID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `PID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `PNAME` varchar(45) NOT NULL DEFAULT '',
  `PRICE` double(10,2) NOT NULL DEFAULT 0.00,
  `QTY` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `TOTAL` double(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `order_details`
--

INSERT INTO `order_details` (`ID`, `OID`, `PID`, `PNAME`, `PRICE`, `QTY`, `TOTAL`) VALUES
(38, 21, 5, 'Toallero', 39.00, 1, 39.00),
(42, 23, 8, 'Marco para espejo', 200.00, 1, 200.00),
(43, 23, 1, 'Puerta de madera', 400.00, 1, 400.00),
(44, 23, 3, 'Lámpara de suelo', 120.00, 1, 120.00),
(45, 23, 2, 'Silla para jardín', 50.00, 1, 50.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `outlet`
--

CREATE TABLE `outlet` (
  `PID` int(20) NOT NULL,
  `PRODUCT` varchar(20) NOT NULL,
  `PRICE` int(20) NOT NULL,
  `IMAGE` varchar(20) NOT NULL,
  `DESCRIPTION` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `outlet`
--

INSERT INTO `outlet` (`PID`, `PRODUCT`, `PRICE`, `IMAGE`, `DESCRIPTION`) VALUES
(1, 'Cabecero de sofá', 80, 'out1.jpg', 'Cabecero de sofá realizado en madera.\r\nPresentado en 2 piezas de 100 x 60 cm para mayor comodidad en transporte e instalación.\r\nInstalación: se puede colgar directamente sobre 2 escarpias (no incluidas), pegar con silicona o cola rápida tipo \"N'),
(2, 'Silla para jardín', 50, 'out2.jpg', 'Silla para jardín realizada artesanalmente en forja, la silla es plegable. Ideal para usarla en verano y sentarse a la fresca. \r\nMuy resistentes.\r\nMedidas:\r\nAsiento: 40 cm x 38cm \r\nAlto: 100cm x 40 cm\r\nRespaldo: 49 cm x 43cm'),
(3, 'Mesita', 60, 'out3.jpg', 'Mesita o taburete de madera para decoración árabe, realizado artesanalmente. Disponible en varios colores.\r\nSe puede usar como taburete o como mesita para tomar el té, mesa auxiliar o mesita de noche. Muy resistente, gran durabilidad, esta barnizado '),
(4, 'Servilletero', 35, 'out4.jpg', 'Le presentamos nuestro nuevo producto. Se trata de un servilletero doble con posavasos a juego, también se puede usar como frutero o porta objetos, como cubiertos, para poner vasos, salsas y etc...\r\nSi compra este articulo online a través de la web l');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `PID` int(10) UNSIGNED NOT NULL,
  `PRODUCT` varchar(45) NOT NULL DEFAULT '',
  `PRICE` double DEFAULT NULL,
  `IMAGE` varchar(45) NOT NULL DEFAULT '',
  `DESCRIPTION` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`PID`, `PRODUCT`, `PRICE`, `IMAGE`, `DESCRIPTION`) VALUES
(8, 'Marco para espejo', 200, '23.jpg', 'Marco Celosía árabe, valido para instalar en un espejo, Decoración morisca inspirada en la alhambra de Granada.\r\n\r\nUna decoración árabe de lujo única e inigualable.\r\n\r\nMedidas:\r\n\r\n2m x 1m x 1cm '),
(9, 'Colgador llavero', 30, '3.jpg', 'Colgador de Llaves artesanal realizado y forjado a mano. El diseño es el de una llave antigua. Dispone de 2 colgadores. \r\nSe fija a la pared mediante 2 tornillo. \r\n\r\nTamaño: \r\n19cm x 8cm'),
(10, 'Lámpara techo', 35, '4.jpg', 'Lampara Estrella de Techo árabe estilo andalusí ideal para la decoración de su hogar, creara una luz ambientada en las mil y una noches gracias a su forma y colores, creando un ambiente acogedor y cálido para instalar en la entrada de su casa, salon, dormitorio dándole un toque a su casa estilo árabe.\r\n\r\n\r\nMedidas:\r\nPequeña: 25 cm diámetro.\r\nMediana: 30 cm diámetro.\r\nGrande: 37 cm diámetro.\r\nGigante:45 cm diámetro'),
(11, 'Mesita de entrada', 94, '5.jpg', 'Mesita de noche andalusí pintada a mano, ideal para decoración árabe. Decorado y pintado a mano en tonos negros y Blanco. La puerta está decorada con una celosía de madera muy bonita. Realizado artesanalmente.\r\n\r\nTamaño:\r\n\r\n45cm ancho\r\n67cm Alto\r\n30 cm profundidad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salon`
--

CREATE TABLE `salon` (
  `PID` int(11) NOT NULL,
  `PRODUCT` varchar(50) NOT NULL,
  `PRICE` double DEFAULT NULL,
  `IMAGE` varchar(250) NOT NULL,
  `DESCRIPTION` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `salon`
--

INSERT INTO `salon` (`PID`, `PRODUCT`, `PRICE`, `IMAGE`, `DESCRIPTION`) VALUES
(1, 'Puerta de madera', 400, '6.jpg', 'Puerta de madera laminada inspirada en las celosías y cenefas de Alhambra.\r\nEs una puerta de 2 hojas pensada para instalar en interior preferiblemente.\r\nIdeal para separación de ambientes, hacer una puerta corrediza, etc.\r\n\r\nMedidas: 200 x 120 cm - ('),
(3, 'Mesa Central', 120, '7.jpg', 'Mesa auxiliar de Madera Cortada por láser. Ideal para usarla para la decoración oriental de su hogar.\r\n\r\nTamaño:\r\n45cm de Diámetro.\r\n42cm altura.'),
(4, 'Funda Puff', 35, '8.jpg', 'Funda Puff Árabe.\r\nFabricado en Marruecos artesanalmente decorado mediante mosaico de colores y decorado con motivos dorados. Ideal para la decoración al estilo de las mil y una noches. \r\nDiseño totalmente oriental, ideal para salón o rincón del té.\r'),
(5, 'Separador de Madera', 250, '13.jpg', 'Separador de Madera realizado artesanalmente y pintado a mano por maestros artesanos. \r\n\r\nBiombo separador árabe, también se puede usar como cabecero, separador de ambientes ideal para la decoración Árabe, para crear ambientes especiales e íntimos en'),
(6, 'Baul de Madera', 17, '14.jpg', 'Baul de Madera con trabajo de taracea de Siria decorada con varios tipos de Madera incrustada.\r\nEste producto ha sido realizado cuidando hasta el más mínimo detalle mediante la técnica artesanal de la Taracea en Siria, uno de los pocos lugares donde '),
(7, 'Mesa de Madera', 65, 'mesa-de-madera.jpg', 'Mesa de madera artesanal fabricada con mucho detalle.\r\nPintada a mano alzada con motivos geométricos andalusís y florales con colores muy vivos.\r\nIdeal como mesita de noche o de rincón, tan práctica como elegante en cualquier rincón.\r\n\r\nDisponible en');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `UID` int(11) NOT NULL,
  `NAME` varchar(150) NOT NULL DEFAULT '',
  `CONTACT` varchar(150) NOT NULL DEFAULT '',
  `ADDRESS` text DEFAULT NULL,
  `CITY` varchar(45) NOT NULL DEFAULT '',
  `EMAIL` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`UID`, `NAME`, `CONTACT`, `ADDRESS`, `CITY`, `EMAIL`) VALUES
(21, 'Pepe Pepe', '111222333', '15000', 'A Coruña', 'PepeInfo@info.com'),
(23, 'Ismaeil', '000000000', '15000', 'A Coruña', 'Ismaeil@info.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `baño`
--
ALTER TABLE `baño`
  ADD PRIMARY KEY (`PID`);

--
-- Indices de la tabla `cocina`
--
ALTER TABLE `cocina`
  ADD PRIMARY KEY (`PID`);

--
-- Indices de la tabla `dormitorio`
--
ALTER TABLE `dormitorio`
  ADD PRIMARY KEY (`PID`);

--
-- Indices de la tabla `jardin`
--
ALTER TABLE `jardin`
  ADD PRIMARY KEY (`PID`);

--
-- Indices de la tabla `opiniones`
--
ALTER TABLE `opiniones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OID`);

--
-- Indices de la tabla `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `outlet`
--
ALTER TABLE `outlet`
  ADD PRIMARY KEY (`PID`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`PID`);

--
-- Indices de la tabla `salon`
--
ALTER TABLE `salon`
  ADD PRIMARY KEY (`PID`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `baño`
--
ALTER TABLE `baño`
  MODIFY `PID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `cocina`
--
ALTER TABLE `cocina`
  MODIFY `PID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `dormitorio`
--
ALTER TABLE `dormitorio`
  MODIFY `PID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `jardin`
--
ALTER TABLE `jardin`
  MODIFY `PID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `opiniones`
--
ALTER TABLE `opiniones`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `OID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `order_details`
--
ALTER TABLE `order_details`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `outlet`
--
ALTER TABLE `outlet`
  MODIFY `PID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `PID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `salon`
--
ALTER TABLE `salon`
  MODIFY `PID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `UID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
