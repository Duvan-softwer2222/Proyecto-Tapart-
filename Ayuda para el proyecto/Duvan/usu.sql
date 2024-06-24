-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 13-07-2023 a las 15:24:32
-- Versión del servidor: 5.7.36
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `duvan`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usu`
--

DROP TABLE IF EXISTS `usu`;
CREATE TABLE IF NOT EXISTS `usu` (
  `Nombre` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Apellido` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Fecha` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Email` varchar(200) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Contrasena` varchar(200) COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`Email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `usu`
--

INSERT INTO `usu` (`Nombre`, `Apellido`, `Fecha`, `Email`, `Contrasena`) VALUES
('v', 'v34', '1', 'jcbj@ga.com', 'dfdfd'),
('v', 'v34', '1', 'jcbvfj@ga.com', 'dfdfd'),
('Laura', 'Toro', '19', 'uygfiusgfiu@gamail.com', 'sadazsdfasdfsd223');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
