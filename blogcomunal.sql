-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-10-2017 a las 12:55:30
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `blogcomunal`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores`
--

CREATE TABLE `administradores` (
  `idAdministrador` int(11) NOT NULL,
  `nombreAdministrador` varchar(100) NOT NULL,
  `claveAdministrador` varchar(150) NOT NULL,
  `emailAdministrador` varchar(150) NOT NULL,
  `imagenAdministrador` varchar(150) DEFAULT NULL,
  `estaOnline` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `administradores`
--

INSERT INTO `administradores` (`idAdministrador`, `nombreAdministrador`, `claveAdministrador`, `emailAdministrador`, `imagenAdministrador`, `estaOnline`) VALUES
(1, 'root@atc.com', 'root', 'root@developerinfire.com', NULL, 0),
(2, 'phpBossI', 'phpBossI', 'phpBossI@developerinllamas.com', NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `idCat(11)` int(11) NOT NULL,
  `nombreCat` varchar(100) NOT NULL,
  `idSubcat` int(11) NOT NULL,
  `descripcionCat` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`idCat(11)`, `nombreCat`, `idSubcat`, `descripcionCat`) VALUES
(1, 'Programación', 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `idComentario` int(11) NOT NULL,
  `idPost` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `comentario` mediumtext NOT NULL,
  `fechaComentario` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`idComentario`, `idPost`, `idUsuario`, `comentario`, `fechaComentario`) VALUES
(1, 1, 2, 'Seguro que la vida es hard?', '2017-10-10 10:53:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datosadministradores`
--

CREATE TABLE `datosadministradores` (
  `emailAdministrador` varchar(150) NOT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `facebook` varchar(45) DEFAULT NULL,
  `twitter` varchar(45) DEFAULT NULL,
  `googlemas` varchar(45) DEFAULT NULL,
  `linkedin` varchar(45) DEFAULT NULL,
  `youtube` varchar(45) DEFAULT NULL,
  `github` varchar(45) DEFAULT NULL,
  `descripcionAdmin` varchar(45) DEFAULT NULL,
  `idWeb` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `datosadministradores`
--

INSERT INTO `datosadministradores` (`emailAdministrador`, `telefono`, `facebook`, `twitter`, `googlemas`, `linkedin`, `youtube`, `github`, `descripcionAdmin`, `idWeb`) VALUES
('root@developerinfire.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('phpBossI@developerinllamas.com', '645221133', 'facebookmishuevos', 'notengotwitter', 'googleisless', 'elputoamolinkedin', 'dalelike', 'githubsavelifes', 'Soy una persona humilda y campechana', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `indexprincipal`
--

CREATE TABLE `indexprincipal` (
  `logo` varchar(200) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `email` varchar(155) NOT NULL,
  `titulo` varchar(300) NOT NULL,
  `metaDescripcion` varchar(445) NOT NULL,
  `keywords` varchar(345) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `indexprincipal`
--

INSERT INTO `indexprincipal` (`logo`, `telefono`, `email`, `titulo`, `metaDescripcion`, `keywords`) VALUES
('../img/loquesea', '985112233', 'developerinllamas@developerinllamas.com', 'Developer in llamas', 'Blog de programación etc', 'programación, bla bla');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `idPost` int(11) NOT NULL,
  `idCat` int(11) NOT NULL,
  `nombrePost` varchar(120) NOT NULL,
  `contenidoPost` longtext NOT NULL,
  `fechaPost` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `idAdministrador` int(11) NOT NULL,
  `imagenDestacada` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`idPost`, `idCat`, `nombrePost`, `contenidoPost`, `fechaPost`, `idAdministrador`, `imagenDestacada`) VALUES
(1, 1, 'La vida en PHP', 'LA vida en PHP es hard very hard-........', '2017-10-10 10:53:10', 2, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategorias`
--

CREATE TABLE `subcategorias` (
  `idSubcat(11)` int(11) NOT NULL,
  `nombreSubcat` varchar(100) NOT NULL,
  `descripcionSubcat` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `subcategorias`
--

INSERT INTO `subcategorias` (`idSubcat(11)`, `nombreSubcat`, `descripcionSubcat`) VALUES
(1, 'PHP', 'Lenguaje de programación en el lado del Servidor'),
(2, 'Java', 'Lenguaje de programación');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL,
  `nombreUsuario` varchar(100) DEFAULT NULL,
  `claveUsuario` varchar(150) NOT NULL,
  `emailUsuario` varchar(150) NOT NULL,
  `fechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estaOnline` int(1) NOT NULL DEFAULT '0',
  `imagenUsuario` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `nombreUsuario`, `claveUsuario`, `emailUsuario`, `fechaRegistro`, `estaOnline`, `imagenUsuario`) VALUES
(2, 'Mi nombre puede ser nulo', 'lordPhp', 'lordphp@atc.com', '2017-10-10 10:54:59', 0, ''),
(3, 'Jesus', 'onlyonegod', 'jesusislove@creator.com', '2017-10-09 22:38:03', 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `webs`
--

CREATE TABLE `webs` (
  `idWeb` int(11) NOT NULL,
  `web` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `webs`
--

INSERT INTO `webs` (`idWeb`, `web`) VALUES
(1, 'developerinllamas.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`idAdministrador`,`emailAdministrador`),
  ADD UNIQUE KEY `emailAdministrador_UNIQUE` (`emailAdministrador`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`idCat(11)`),
  ADD UNIQUE KEY `nombreCat_UNIQUE` (`nombreCat`),
  ADD KEY `fk_categorias_subcategorias1_idx` (`idSubcat`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`idComentario`),
  ADD KEY `fk_comentarios_usuarios1_idx` (`idUsuario`),
  ADD KEY `fk_comentarios_posts1_idx` (`idPost`);

--
-- Indices de la tabla `datosadministradores`
--
ALTER TABLE `datosadministradores`
  ADD UNIQUE KEY `telefono_UNIQUE` (`telefono`),
  ADD UNIQUE KEY `facebook_UNIQUE` (`facebook`),
  ADD UNIQUE KEY `twitter_UNIQUE` (`twitter`),
  ADD UNIQUE KEY `googlemas_UNIQUE` (`googlemas`),
  ADD UNIQUE KEY `linkedin_UNIQUE` (`linkedin`),
  ADD UNIQUE KEY `youtube_UNIQUE` (`youtube`),
  ADD UNIQUE KEY `github_UNIQUE` (`github`),
  ADD KEY `fk_datosadministradores_webs1_idx` (`idWeb`),
  ADD KEY `fk_datosadministradores_administradores1_idx` (`emailAdministrador`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`idPost`),
  ADD KEY `fk_posts_administradores1_idx` (`idAdministrador`),
  ADD KEY `fk_posts_categorias1_idx` (`idCat`);

--
-- Indices de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  ADD PRIMARY KEY (`idSubcat(11)`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`),
  ADD UNIQUE KEY `emailUsuario_UNIQUE` (`emailUsuario`),
  ADD UNIQUE KEY `claveUsuario_UNIQUE` (`claveUsuario`);

--
-- Indices de la tabla `webs`
--
ALTER TABLE `webs`
  ADD PRIMARY KEY (`idWeb`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administradores`
--
ALTER TABLE `administradores`
  MODIFY `idAdministrador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `idCat(11)` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `idComentario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `idPost` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  MODIFY `idSubcat(11)` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `webs`
--
ALTER TABLE `webs`
  MODIFY `idWeb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD CONSTRAINT `fk_categorias_subcategorias1` FOREIGN KEY (`idSubcat`) REFERENCES `subcategorias` (`idSubcat(11)`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `fk_comentarios_posts1` FOREIGN KEY (`idPost`) REFERENCES `posts` (`idPost`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_comentarios_usuarios1` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `datosadministradores`
--
ALTER TABLE `datosadministradores`
  ADD CONSTRAINT `fk_datosadministradores_administradores1` FOREIGN KEY (`emailAdministrador`) REFERENCES `administradores` (`emailAdministrador`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_datosadministradores_webs1` FOREIGN KEY (`idWeb`) REFERENCES `webs` (`idWeb`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `fk_posts_administradores1` FOREIGN KEY (`idAdministrador`) REFERENCES `administradores` (`idAdministrador`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_posts_categorias1` FOREIGN KEY (`idCat`) REFERENCES `categorias` (`idCat(11)`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
