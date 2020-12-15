-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 07-12-2020 a las 23:19:16
-- Versión del servidor: 5.7.31
-- Versión de PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cursos-gab`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `capitulos`
--

DROP TABLE IF EXISTS `capitulos`;
CREATE TABLE IF NOT EXISTS `capitulos` (
  `idcapitulo` int(11) NOT NULL AUTO_INCREMENT,
  `idcurso` int(11) NOT NULL,
  `nombre_cap` varchar(200) NOT NULL,
  `desc_cap` varchar(600) NOT NULL,
  `fecha_add_cap` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_time_cap` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `duracion_cap` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  PRIMARY KEY (`idcapitulo`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

DROP TABLE IF EXISTS `carrito`;
CREATE TABLE IF NOT EXISTS `carrito` (
  `idcarrito` int(11) NOT NULL AUTO_INCREMENT,
  `idcurso` int(11) NOT NULL,
  `matricula` int(11) NOT NULL,
  `fecha_tiempo_add` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_add` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idcarrito`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cupones`
--

DROP TABLE IF EXISTS `cupones`;
CREATE TABLE IF NOT EXISTS `cupones` (
  `idcupon` int(11) NOT NULL AUTO_INCREMENT,
  `descuento` int(10) NOT NULL,
  PRIMARY KEY (`idcupon`)
) ENGINE=MyISAM AUTO_INCREMENT=1124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

DROP TABLE IF EXISTS `cursos`;
CREATE TABLE IF NOT EXISTS `cursos` (
  `idcurso` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `precio` int(11) NOT NULL,
  `imagen` varchar(200) NOT NULL,
  `fecha_add` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idcurso`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`idcurso`, `nombre`, `descripcion`, `precio`, `imagen`, `fecha_add`) VALUES
(30, 'curso 1', 'adadasdad', 2323, '', '2020-12-04 00:00:00'),
(31, 'DESARROLLO Y HACKING', 'el mejor', 345, 'Captura1.PNG', '2020-12-07 16:52:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursoscomprados`
--

DROP TABLE IF EXISTS `cursoscomprados`;
CREATE TABLE IF NOT EXISTS `cursoscomprados` (
  `id_curso_comp` int(11) NOT NULL AUTO_INCREMENT,
  `matricula` int(11) NOT NULL,
  `idcurso` int(11) NOT NULL,
  PRIMARY KEY (`id_curso_comp`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `cursoscomprados`
--

INSERT INTO `cursoscomprados` (`id_curso_comp`, `matricula`, `idcurso`) VALUES
(8, 2020010, 31);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datostarjeta`
--

DROP TABLE IF EXISTS `datostarjeta`;
CREATE TABLE IF NOT EXISTS `datostarjeta` (
  `id_datot` int(11) NOT NULL AUTO_INCREMENT,
  `matricula` int(11) NOT NULL,
  `no_tarjeta` varchar(300) COLLATE utf8mb4_spanish_ci NOT NULL,
  `mes` int(20) NOT NULL,
  `año` int(20) NOT NULL,
  `ccv` int(20) NOT NULL,
  PRIMARY KEY (`id_datot`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `datostarjeta`
--

INSERT INTO `datostarjeta` (`id_datot`, `matricula`, `no_tarjeta`, `mes`, `año`, `ccv`) VALUES
(9, 2020010, '4152313663111495', 10, 25, 1805);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservaciones`
--

DROP TABLE IF EXISTS `reservaciones`;
CREATE TABLE IF NOT EXISTS `reservaciones` (
  `idreservacion` int(11) NOT NULL AUTO_INCREMENT,
  `matricula` int(11) NOT NULL,
  `placa` varchar(20) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `ubicacion` varchar(200) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `hora_inicio` time(6) NOT NULL,
  `fecha_final` datetime NOT NULL,
  `hora_final` time(6) NOT NULL,
  `cupon` varchar(10) COLLATE utf8mb4_spanish2_ci NOT NULL,
  PRIMARY KEY (`idreservacion`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `matricula` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(200) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `apellidos` varchar(200) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `correo` varchar(200) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `telefono` varchar(20) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `password` varchar(200) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `rol` int(11) NOT NULL,
  `imguser` varchar(400) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`matricula`)
) ENGINE=MyISAM AUTO_INCREMENT=2020011 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`matricula`, `nombres`, `apellidos`, `correo`, `telefono`, `password`, `rol`, `imguser`, `status`) VALUES
(2020001, 'admin', 'admin', 'admin@hotmail.com', '9381234567', 'admin', 1, '', 1),
(2020010, 'Fernando', 'García', 'fgabriel_22_09@hotmail.com', '9382071491', 'laravel', 2, NULL, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
