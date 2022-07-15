-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-05-2022 a las 08:45:09
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- Proyecto María Picazo Sánchez
-- Creación de usuario
--
CREATE USER 'asix'@'localhost' IDENTIFIED VIA mysql_native_password USING '***';
GRANT ALL PRIVILEGES ON *.* TO 'asix'@'localhost' REQUIRE NONE WITH GRANT OPTION MAX_QUERIES_PER_HOUR 0 
MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;GRANT ALL PRIVILEGES ON `cine`.* TO 'asix'@'localhost'; 

-- Base de datos: `cine`
--
CREATE DATABASE IF NOT EXISTS `cine` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cine`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `butacas`
--

CREATE TABLE `butacas` (
  `cod_butacas` varchar(7) NOT NULL,
  `fila` int(2) NOT NULL,
  `butaca` int(2) NOT NULL,
  `cod_sala` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `butacas`
--

INSERT INTO `butacas` VALUES('1A1-10', 1, 10, 'A1');
INSERT INTO `butacas` VALUES('1A1-2', 1, 2, 'A1');
INSERT INTO `butacas` VALUES('1A1-3', 1, 3, 'A1');
INSERT INTO `butacas` VALUES('1A1-4', 1, 4, 'A1');
INSERT INTO `butacas` VALUES('1A1-5', 1, 5, 'A1');
INSERT INTO `butacas` VALUES('1A1-6', 1, 6, 'A1');
INSERT INTO `butacas` VALUES('1A1-7', 1, 7, 'A1');
INSERT INTO `butacas` VALUES('1A1-8', 1, 8, 'A1');
INSERT INTO `butacas` VALUES('1A1-9', 1, 9, 'A1');
INSERT INTO `butacas` VALUES('1A2-1', 2, 1, 'A1');
INSERT INTO `butacas` VALUES('1A2-10', 2, 10, 'A1');
INSERT INTO `butacas` VALUES('1A2-11', 2, 11, 'A1');
INSERT INTO `butacas` VALUES('1A2-12', 2, 12, 'A1');
INSERT INTO `butacas` VALUES('1A2-13', 2, 13, 'A1');
INSERT INTO `butacas` VALUES('1A2-14', 2, 14, 'A1');
INSERT INTO `butacas` VALUES('1A2-15', 2, 15, 'A1');
INSERT INTO `butacas` VALUES('1A2-16', 2, 16, 'A1');
INSERT INTO `butacas` VALUES('1A2-2', 2, 2, 'A1');
INSERT INTO `butacas` VALUES('1A2-3', 2, 3, 'A1');
INSERT INTO `butacas` VALUES('1A2-4', 2, 4, 'A1');
INSERT INTO `butacas` VALUES('1A2-5', 2, 5, 'A1');
INSERT INTO `butacas` VALUES('1A2-6', 2, 6, 'A1');
INSERT INTO `butacas` VALUES('1A2-7', 2, 7, 'A1');
INSERT INTO `butacas` VALUES('1A2-8', 2, 8, 'A1');
INSERT INTO `butacas` VALUES('1A2-9', 2, 9, 'A1');
INSERT INTO `butacas` VALUES('1A3-1', 3, 1, 'A1');
INSERT INTO `butacas` VALUES('1A3-10', 3, 10, 'A1');
INSERT INTO `butacas` VALUES('1A3-11', 3, 11, 'A1');
INSERT INTO `butacas` VALUES('1A3-12', 3, 12, 'A1');
INSERT INTO `butacas` VALUES('1A3-13', 3, 13, 'A1');
INSERT INTO `butacas` VALUES('1A3-14', 3, 14, 'A1');
INSERT INTO `butacas` VALUES('1A3-15', 3, 15, 'A1');
INSERT INTO `butacas` VALUES('1A3-16', 3, 16, 'A1');
INSERT INTO `butacas` VALUES('1A3-2', 3, 2, 'A1');
INSERT INTO `butacas` VALUES('1A3-3', 3, 3, 'A1');
INSERT INTO `butacas` VALUES('1A3-4', 3, 4, 'A1');
INSERT INTO `butacas` VALUES('1A3-5', 3, 5, 'A1');
INSERT INTO `butacas` VALUES('1A3-6', 3, 6, 'A1');
INSERT INTO `butacas` VALUES('1A3-7', 3, 7, 'A1');
INSERT INTO `butacas` VALUES('1A3-8', 3, 8, 'A1');
INSERT INTO `butacas` VALUES('1A3-9', 3, 9, 'A1');
INSERT INTO `butacas` VALUES('1A4-1', 4, 1, 'A1');
INSERT INTO `butacas` VALUES('1A4-10', 4, 10, 'A1');
INSERT INTO `butacas` VALUES('1A4-11', 4, 11, 'A1');
INSERT INTO `butacas` VALUES('1A4-12', 4, 12, 'A1');
INSERT INTO `butacas` VALUES('1A4-13', 4, 13, 'A1');
INSERT INTO `butacas` VALUES('1A4-14', 4, 14, 'A1');
INSERT INTO `butacas` VALUES('1A4-15', 4, 15, 'A1');
INSERT INTO `butacas` VALUES('1A4-16', 4, 16, 'A1');
INSERT INTO `butacas` VALUES('1A4-2', 4, 2, 'A1');
INSERT INTO `butacas` VALUES('1A4-3', 4, 3, 'A1');
INSERT INTO `butacas` VALUES('1A4-4', 4, 4, 'A1');
INSERT INTO `butacas` VALUES('1A4-5', 4, 5, 'A1');
INSERT INTO `butacas` VALUES('1A4-6', 4, 6, 'A1');
INSERT INTO `butacas` VALUES('1A4-7', 4, 7, 'A1');
INSERT INTO `butacas` VALUES('1A4-8', 4, 8, 'A1');
INSERT INTO `butacas` VALUES('1A4-9', 4, 9, 'A1');
INSERT INTO `butacas` VALUES('1A5-1', 5, 1, 'A1');
INSERT INTO `butacas` VALUES('1A5-10', 5, 10, 'A1');
INSERT INTO `butacas` VALUES('1A5-2', 5, 2, 'A1');
INSERT INTO `butacas` VALUES('1A5-3', 5, 3, 'A1');
INSERT INTO `butacas` VALUES('1A5-4', 5, 4, 'A1');
INSERT INTO `butacas` VALUES('1A5-5', 5, 5, 'A1');
INSERT INTO `butacas` VALUES('1A5-6', 5, 6, 'A1');
INSERT INTO `butacas` VALUES('1A5-7', 5, 7, 'A1');
INSERT INTO `butacas` VALUES('1A5-8', 5, 8, 'A1');
INSERT INTO `butacas` VALUES('1A5-9', 5, 9, 'A1');
INSERT INTO `butacas` VALUES('1C1-10', 1, 10, 'C1');
INSERT INTO `butacas` VALUES('1C1-2', 1, 2, 'C1');
INSERT INTO `butacas` VALUES('1C1-3', 1, 3, 'C1');
INSERT INTO `butacas` VALUES('1C1-4', 1, 4, 'C1');
INSERT INTO `butacas` VALUES('1C1-5', 1, 5, 'C1');
INSERT INTO `butacas` VALUES('1C1-6', 1, 6, 'C1');
INSERT INTO `butacas` VALUES('1C1-7', 1, 7, 'C1');
INSERT INTO `butacas` VALUES('1C1-8', 1, 8, 'C1');
INSERT INTO `butacas` VALUES('1C1-9', 1, 9, 'C1');
INSERT INTO `butacas` VALUES('1C2-1', 2, 1, 'C1');
INSERT INTO `butacas` VALUES('1C2-10', 2, 10, 'C1');
INSERT INTO `butacas` VALUES('1C2-11', 2, 11, 'C1');
INSERT INTO `butacas` VALUES('1C2-12', 2, 12, 'C1');
INSERT INTO `butacas` VALUES('1C2-13', 2, 13, 'C1');
INSERT INTO `butacas` VALUES('1C2-14', 2, 14, 'C1');
INSERT INTO `butacas` VALUES('1C2-15', 2, 15, 'C1');
INSERT INTO `butacas` VALUES('1C2-16', 2, 16, 'C1');
INSERT INTO `butacas` VALUES('1C2-2', 2, 2, 'C1');
INSERT INTO `butacas` VALUES('1C2-3', 2, 3, 'C1');
INSERT INTO `butacas` VALUES('1C2-4', 2, 4, 'C1');
INSERT INTO `butacas` VALUES('1C2-5', 2, 5, 'C1');
INSERT INTO `butacas` VALUES('1C2-6', 2, 6, 'C1');
INSERT INTO `butacas` VALUES('1C2-7', 2, 7, 'C1');
INSERT INTO `butacas` VALUES('1C2-8', 2, 8, 'C1');
INSERT INTO `butacas` VALUES('1C2-9', 2, 9, 'C1');
INSERT INTO `butacas` VALUES('1C3-1', 3, 1, 'C1');
INSERT INTO `butacas` VALUES('1C3-10', 3, 10, 'C1');
INSERT INTO `butacas` VALUES('1C3-11', 3, 11, 'C1');
INSERT INTO `butacas` VALUES('1C3-12', 3, 12, 'C1');
INSERT INTO `butacas` VALUES('1C3-13', 3, 13, 'C1');
INSERT INTO `butacas` VALUES('1C3-14', 3, 14, 'C1');
INSERT INTO `butacas` VALUES('1C3-15', 3, 15, 'C1');
INSERT INTO `butacas` VALUES('1C3-16', 3, 16, 'C1');
INSERT INTO `butacas` VALUES('1C3-2', 3, 2, 'C1');
INSERT INTO `butacas` VALUES('1C3-3', 3, 3, 'C1');
INSERT INTO `butacas` VALUES('1C3-4', 3, 4, 'C1');
INSERT INTO `butacas` VALUES('1C3-5', 3, 5, 'C1');
INSERT INTO `butacas` VALUES('1C3-6', 3, 6, 'C1');
INSERT INTO `butacas` VALUES('1C3-7', 3, 7, 'C1');
INSERT INTO `butacas` VALUES('1C3-8', 3, 8, 'C1');
INSERT INTO `butacas` VALUES('1C3-9', 3, 9, 'C1');
INSERT INTO `butacas` VALUES('1C4-1', 4, 1, 'C1');
INSERT INTO `butacas` VALUES('1C4-10', 4, 10, 'C1');
INSERT INTO `butacas` VALUES('1C4-11', 4, 11, 'C1');
INSERT INTO `butacas` VALUES('1C4-12', 4, 12, 'C1');
INSERT INTO `butacas` VALUES('1C4-13', 4, 13, 'C1');
INSERT INTO `butacas` VALUES('1C4-14', 4, 14, 'C1');
INSERT INTO `butacas` VALUES('1C4-15', 4, 15, 'C1');
INSERT INTO `butacas` VALUES('1C4-16', 4, 16, 'C1');
INSERT INTO `butacas` VALUES('1C4-2', 4, 2, 'C1');
INSERT INTO `butacas` VALUES('1C4-3', 4, 3, 'C1');
INSERT INTO `butacas` VALUES('1C4-4', 4, 4, 'C1');
INSERT INTO `butacas` VALUES('1C4-5', 4, 5, 'C1');
INSERT INTO `butacas` VALUES('1C4-6', 4, 6, 'C1');
INSERT INTO `butacas` VALUES('1C4-7', 4, 7, 'C1');
INSERT INTO `butacas` VALUES('1C4-8', 4, 8, 'C1');
INSERT INTO `butacas` VALUES('1C4-9', 4, 9, 'C1');
INSERT INTO `butacas` VALUES('1C5-1', 5, 1, 'C1');
INSERT INTO `butacas` VALUES('1C5-10', 5, 10, 'C1');
INSERT INTO `butacas` VALUES('1C5-2', 5, 2, 'C1');
INSERT INTO `butacas` VALUES('1C5-3', 5, 3, 'C1');
INSERT INTO `butacas` VALUES('1C5-4', 5, 4, 'C1');
INSERT INTO `butacas` VALUES('1C5-5', 5, 5, 'C1');
INSERT INTO `butacas` VALUES('1C5-6', 5, 6, 'C1');
INSERT INTO `butacas` VALUES('1C5-7', 5, 7, 'C1');
INSERT INTO `butacas` VALUES('1C5-8', 5, 8, 'C1');
INSERT INTO `butacas` VALUES('1C5-9', 5, 9, 'C1');
INSERT INTO `butacas` VALUES('1G1-10', 1, 10, 'G1');
INSERT INTO `butacas` VALUES('1G1-2', 1, 2, 'G1');
INSERT INTO `butacas` VALUES('1G1-3', 1, 3, 'G1');
INSERT INTO `butacas` VALUES('1G1-4', 1, 4, 'G1');
INSERT INTO `butacas` VALUES('1G1-5', 1, 5, 'G1');
INSERT INTO `butacas` VALUES('1G1-6', 1, 6, 'G1');
INSERT INTO `butacas` VALUES('1G1-7', 1, 7, 'G1');
INSERT INTO `butacas` VALUES('1G1-8', 1, 8, 'G1');
INSERT INTO `butacas` VALUES('1G1-9', 1, 9, 'G1');
INSERT INTO `butacas` VALUES('1G2-1', 2, 1, 'G1');
INSERT INTO `butacas` VALUES('1G2-10', 2, 10, 'G1');
INSERT INTO `butacas` VALUES('1G2-11', 2, 11, 'G1');
INSERT INTO `butacas` VALUES('1G2-12', 2, 12, 'G1');
INSERT INTO `butacas` VALUES('1G2-13', 2, 13, 'G1');
INSERT INTO `butacas` VALUES('1G2-14', 2, 14, 'G1');
INSERT INTO `butacas` VALUES('1G2-15', 2, 15, 'G1');
INSERT INTO `butacas` VALUES('1G2-16', 2, 16, 'G1');
INSERT INTO `butacas` VALUES('1G2-2', 2, 2, 'G1');
INSERT INTO `butacas` VALUES('1G2-3', 2, 3, 'G1');
INSERT INTO `butacas` VALUES('1G2-4', 2, 4, 'G1');
INSERT INTO `butacas` VALUES('1G2-5', 2, 5, 'G1');
INSERT INTO `butacas` VALUES('1G2-6', 2, 6, 'G1');
INSERT INTO `butacas` VALUES('1G2-7', 2, 7, 'G1');
INSERT INTO `butacas` VALUES('1G2-8', 2, 8, 'G1');
INSERT INTO `butacas` VALUES('1G2-9', 2, 9, 'G1');
INSERT INTO `butacas` VALUES('1G3-1', 3, 1, 'G1');
INSERT INTO `butacas` VALUES('1G3-10', 3, 10, 'G1');
INSERT INTO `butacas` VALUES('1G3-11', 3, 11, 'G1');
INSERT INTO `butacas` VALUES('1G3-12', 3, 12, 'G1');
INSERT INTO `butacas` VALUES('1G3-13', 3, 13, 'G1');
INSERT INTO `butacas` VALUES('1G3-14', 3, 14, 'G1');
INSERT INTO `butacas` VALUES('1G3-15', 3, 15, 'G1');
INSERT INTO `butacas` VALUES('1G3-16', 3, 16, 'G1');
INSERT INTO `butacas` VALUES('1G3-2', 3, 2, 'G1');
INSERT INTO `butacas` VALUES('1G3-3', 3, 3, 'G1');
INSERT INTO `butacas` VALUES('1G3-4', 3, 4, 'G1');
INSERT INTO `butacas` VALUES('1G3-5', 3, 5, 'G1');
INSERT INTO `butacas` VALUES('1G3-6', 3, 6, 'G1');
INSERT INTO `butacas` VALUES('1G3-7', 3, 7, 'G1');
INSERT INTO `butacas` VALUES('1G3-8', 3, 8, 'G1');
INSERT INTO `butacas` VALUES('1G3-9', 3, 9, 'G1');
INSERT INTO `butacas` VALUES('1G4-1', 4, 1, 'G1');
INSERT INTO `butacas` VALUES('1G4-10', 4, 10, 'G1');
INSERT INTO `butacas` VALUES('1G4-11', 4, 11, 'G1');
INSERT INTO `butacas` VALUES('1G4-12', 4, 12, 'G1');
INSERT INTO `butacas` VALUES('1G4-13', 4, 13, 'G1');
INSERT INTO `butacas` VALUES('1G4-14', 4, 14, 'G1');
INSERT INTO `butacas` VALUES('1G4-15', 4, 15, 'G1');
INSERT INTO `butacas` VALUES('1G4-16', 4, 16, 'G1');
INSERT INTO `butacas` VALUES('1G4-2', 4, 2, 'G1');
INSERT INTO `butacas` VALUES('1G4-3', 4, 3, 'G1');
INSERT INTO `butacas` VALUES('1G4-4', 4, 4, 'G1');
INSERT INTO `butacas` VALUES('1G4-5', 4, 5, 'G1');
INSERT INTO `butacas` VALUES('1G4-6', 4, 6, 'G1');
INSERT INTO `butacas` VALUES('1G4-7', 4, 7, 'G1');
INSERT INTO `butacas` VALUES('1G4-8', 4, 8, 'G1');
INSERT INTO `butacas` VALUES('1G4-9', 4, 9, 'G1');
INSERT INTO `butacas` VALUES('1G5-1', 5, 1, 'G1');
INSERT INTO `butacas` VALUES('1G5-10', 5, 10, 'G1');
INSERT INTO `butacas` VALUES('1G5-2', 5, 2, 'G1');
INSERT INTO `butacas` VALUES('1G5-3', 5, 3, 'G1');
INSERT INTO `butacas` VALUES('1G5-4', 5, 4, 'G1');
INSERT INTO `butacas` VALUES('1G5-5', 5, 5, 'G1');
INSERT INTO `butacas` VALUES('1G5-6', 5, 6, 'G1');
INSERT INTO `butacas` VALUES('1G5-7', 5, 7, 'G1');
INSERT INTO `butacas` VALUES('1G5-8', 5, 8, 'G1');
INSERT INTO `butacas` VALUES('1G5-9', 5, 9, 'G1');
INSERT INTO `butacas` VALUES('1S1-10', 1, 10, 'S1');
INSERT INTO `butacas` VALUES('1S1-2', 1, 2, 'S1');
INSERT INTO `butacas` VALUES('1S1-3', 1, 3, 'S1');
INSERT INTO `butacas` VALUES('1S1-4', 1, 4, 'S1');
INSERT INTO `butacas` VALUES('1S1-5', 1, 5, 'S1');
INSERT INTO `butacas` VALUES('1S1-6', 1, 6, 'S1');
INSERT INTO `butacas` VALUES('1S1-7', 1, 7, 'S1');
INSERT INTO `butacas` VALUES('1S1-8', 1, 8, 'S1');
INSERT INTO `butacas` VALUES('1S1-9', 1, 9, 'S1');
INSERT INTO `butacas` VALUES('1S2-1', 2, 1, 'S1');
INSERT INTO `butacas` VALUES('1S2-10', 2, 10, 'S1');
INSERT INTO `butacas` VALUES('1S2-11', 2, 11, 'S1');
INSERT INTO `butacas` VALUES('1S2-12', 2, 12, 'S1');
INSERT INTO `butacas` VALUES('1S2-13', 2, 13, 'S1');
INSERT INTO `butacas` VALUES('1S2-14', 2, 14, 'S1');
INSERT INTO `butacas` VALUES('1S2-15', 2, 15, 'S1');
INSERT INTO `butacas` VALUES('1S2-16', 2, 16, 'S1');
INSERT INTO `butacas` VALUES('1S2-2', 2, 2, 'S1');
INSERT INTO `butacas` VALUES('1S2-3', 2, 3, 'S1');
INSERT INTO `butacas` VALUES('1S2-4', 2, 4, 'S1');
INSERT INTO `butacas` VALUES('1S2-5', 2, 5, 'S1');
INSERT INTO `butacas` VALUES('1S2-6', 2, 6, 'S1');
INSERT INTO `butacas` VALUES('1S2-7', 2, 7, 'S1');
INSERT INTO `butacas` VALUES('1S2-8', 2, 8, 'S1');
INSERT INTO `butacas` VALUES('1S2-9', 2, 9, 'S1');
INSERT INTO `butacas` VALUES('1S3-1', 3, 1, 'S1');
INSERT INTO `butacas` VALUES('1S3-10', 3, 10, 'S1');
INSERT INTO `butacas` VALUES('1S3-11', 3, 11, 'S1');
INSERT INTO `butacas` VALUES('1S3-12', 3, 12, 'S1');
INSERT INTO `butacas` VALUES('1S3-13', 3, 13, 'S1');
INSERT INTO `butacas` VALUES('1S3-14', 3, 14, 'S1');
INSERT INTO `butacas` VALUES('1S3-15', 3, 15, 'S1');
INSERT INTO `butacas` VALUES('1S3-16', 3, 16, 'S1');
INSERT INTO `butacas` VALUES('1S3-2', 3, 2, 'S1');
INSERT INTO `butacas` VALUES('1S3-3', 3, 3, 'S1');
INSERT INTO `butacas` VALUES('1S3-4', 3, 4, 'S1');
INSERT INTO `butacas` VALUES('1S3-5', 3, 5, 'S1');
INSERT INTO `butacas` VALUES('1S3-6', 3, 6, 'S1');
INSERT INTO `butacas` VALUES('1S3-7', 3, 7, 'S1');
INSERT INTO `butacas` VALUES('1S3-8', 3, 8, 'S1');
INSERT INTO `butacas` VALUES('1S3-9', 3, 9, 'S1');
INSERT INTO `butacas` VALUES('1S4-1', 4, 1, 'S1');
INSERT INTO `butacas` VALUES('1S4-10', 4, 10, 'S1');
INSERT INTO `butacas` VALUES('1S4-11', 4, 11, 'S1');
INSERT INTO `butacas` VALUES('1S4-12', 4, 12, 'S1');
INSERT INTO `butacas` VALUES('1S4-13', 4, 13, 'S1');
INSERT INTO `butacas` VALUES('1S4-14', 4, 14, 'S1');
INSERT INTO `butacas` VALUES('1S4-15', 4, 15, 'S1');
INSERT INTO `butacas` VALUES('1S4-16', 4, 16, 'S1');
INSERT INTO `butacas` VALUES('1S4-2', 4, 2, 'S1');
INSERT INTO `butacas` VALUES('1S4-3', 4, 3, 'S1');
INSERT INTO `butacas` VALUES('1S4-4', 4, 4, 'S1');
INSERT INTO `butacas` VALUES('1S4-5', 4, 5, 'S1');
INSERT INTO `butacas` VALUES('1S4-6', 4, 6, 'S1');
INSERT INTO `butacas` VALUES('1S4-7', 4, 7, 'S1');
INSERT INTO `butacas` VALUES('1S4-8', 4, 8, 'S1');
INSERT INTO `butacas` VALUES('1S4-9', 4, 9, 'S1');
INSERT INTO `butacas` VALUES('1S5-1', 5, 1, 'S1');
INSERT INTO `butacas` VALUES('1S5-10', 5, 10, 'S1');
INSERT INTO `butacas` VALUES('1S5-2', 5, 2, 'S1');
INSERT INTO `butacas` VALUES('1S5-3', 5, 3, 'S1');
INSERT INTO `butacas` VALUES('1S5-4', 5, 4, 'S1');
INSERT INTO `butacas` VALUES('1S5-5', 5, 5, 'S1');
INSERT INTO `butacas` VALUES('1S5-6', 5, 6, 'S1');
INSERT INTO `butacas` VALUES('1S5-7', 5, 7, 'S1');
INSERT INTO `butacas` VALUES('1S5-8', 5, 8, 'S1');
INSERT INTO `butacas` VALUES('1S5-9', 5, 9, 'S1');
INSERT INTO `butacas` VALUES('1T1-10', 1, 10, 'T1');
INSERT INTO `butacas` VALUES('1T1-2', 1, 2, 'T1');
INSERT INTO `butacas` VALUES('1T1-3', 1, 3, 'T1');
INSERT INTO `butacas` VALUES('1T1-4', 1, 4, 'T1');
INSERT INTO `butacas` VALUES('1T1-5', 1, 5, 'T1');
INSERT INTO `butacas` VALUES('1T1-6', 1, 6, 'T1');
INSERT INTO `butacas` VALUES('1T1-7', 1, 7, 'T1');
INSERT INTO `butacas` VALUES('1T1-8', 1, 8, 'T1');
INSERT INTO `butacas` VALUES('1T1-9', 1, 9, 'T1');
INSERT INTO `butacas` VALUES('1T2-1', 2, 1, 'T1');
INSERT INTO `butacas` VALUES('1T2-10', 2, 10, 'T1');
INSERT INTO `butacas` VALUES('1T2-11', 2, 11, 'T1');
INSERT INTO `butacas` VALUES('1T2-12', 2, 12, 'T1');
INSERT INTO `butacas` VALUES('1T2-13', 2, 13, 'T1');
INSERT INTO `butacas` VALUES('1T2-14', 2, 14, 'T1');
INSERT INTO `butacas` VALUES('1T2-15', 2, 15, 'T1');
INSERT INTO `butacas` VALUES('1T2-16', 2, 16, 'T1');
INSERT INTO `butacas` VALUES('1T2-2', 2, 2, 'T1');
INSERT INTO `butacas` VALUES('1T2-3', 2, 3, 'T1');
INSERT INTO `butacas` VALUES('1T2-4', 2, 4, 'T1');
INSERT INTO `butacas` VALUES('1T2-5', 2, 5, 'T1');
INSERT INTO `butacas` VALUES('1T2-6', 2, 6, 'T1');
INSERT INTO `butacas` VALUES('1T2-7', 2, 7, 'T1');
INSERT INTO `butacas` VALUES('1T2-8', 2, 8, 'T1');
INSERT INTO `butacas` VALUES('1T2-9', 2, 9, 'T1');
INSERT INTO `butacas` VALUES('1T3-1', 3, 1, 'T1');
INSERT INTO `butacas` VALUES('1T3-10', 3, 10, 'T1');
INSERT INTO `butacas` VALUES('1T3-11', 3, 11, 'T1');
INSERT INTO `butacas` VALUES('1T3-12', 3, 12, 'T1');
INSERT INTO `butacas` VALUES('1T3-13', 3, 13, 'T1');
INSERT INTO `butacas` VALUES('1T3-14', 3, 14, 'T1');
INSERT INTO `butacas` VALUES('1T3-15', 3, 15, 'T1');
INSERT INTO `butacas` VALUES('1T3-16', 3, 16, 'T1');
INSERT INTO `butacas` VALUES('1T3-2', 3, 2, 'T1');
INSERT INTO `butacas` VALUES('1T3-3', 3, 3, 'T1');
INSERT INTO `butacas` VALUES('1T3-4', 3, 4, 'T1');
INSERT INTO `butacas` VALUES('1T3-5', 3, 5, 'T1');
INSERT INTO `butacas` VALUES('1T3-6', 3, 6, 'T1');
INSERT INTO `butacas` VALUES('1T3-7', 3, 7, 'T1');
INSERT INTO `butacas` VALUES('1T3-8', 3, 8, 'T1');
INSERT INTO `butacas` VALUES('1T3-9', 3, 9, 'T1');
INSERT INTO `butacas` VALUES('1T4-1', 4, 1, 'T1');
INSERT INTO `butacas` VALUES('1T4-10', 4, 10, 'T1');
INSERT INTO `butacas` VALUES('1T4-11', 4, 11, 'T1');
INSERT INTO `butacas` VALUES('1T4-12', 4, 12, 'T1');
INSERT INTO `butacas` VALUES('1T4-13', 4, 13, 'T1');
INSERT INTO `butacas` VALUES('1T4-14', 4, 14, 'T1');
INSERT INTO `butacas` VALUES('1T4-15', 4, 15, 'T1');
INSERT INTO `butacas` VALUES('1T4-16', 4, 16, 'T1');
INSERT INTO `butacas` VALUES('1T4-2', 4, 2, 'T1');
INSERT INTO `butacas` VALUES('1T4-3', 4, 3, 'T1');
INSERT INTO `butacas` VALUES('1T4-4', 4, 4, 'T1');
INSERT INTO `butacas` VALUES('1T4-5', 4, 5, 'T1');
INSERT INTO `butacas` VALUES('1T4-6', 4, 6, 'T1');
INSERT INTO `butacas` VALUES('1T4-7', 4, 7, 'T1');
INSERT INTO `butacas` VALUES('1T4-8', 4, 8, 'T1');
INSERT INTO `butacas` VALUES('1T4-9', 4, 9, 'T1');
INSERT INTO `butacas` VALUES('1T5-1', 5, 1, 'T1');
INSERT INTO `butacas` VALUES('1T5-10', 5, 10, 'T1');
INSERT INTO `butacas` VALUES('1T5-2', 5, 2, 'T1');
INSERT INTO `butacas` VALUES('1T5-3', 5, 3, 'T1');
INSERT INTO `butacas` VALUES('1T5-4', 5, 4, 'T1');
INSERT INTO `butacas` VALUES('1T5-5', 5, 5, 'T1');
INSERT INTO `butacas` VALUES('1T5-6', 5, 6, 'T1');
INSERT INTO `butacas` VALUES('1T5-7', 5, 7, 'T1');
INSERT INTO `butacas` VALUES('1T5-8', 5, 8, 'T1');
INSERT INTO `butacas` VALUES('1T5-9', 5, 9, 'T1');
INSERT INTO `butacas` VALUES('1V1-10', 1, 10, 'V1');
INSERT INTO `butacas` VALUES('1V1-2', 1, 2, 'V1');
INSERT INTO `butacas` VALUES('1V1-3', 1, 3, 'V1');
INSERT INTO `butacas` VALUES('1V1-4', 1, 4, 'V1');
INSERT INTO `butacas` VALUES('1V1-5', 1, 5, 'V1');
INSERT INTO `butacas` VALUES('1V1-6', 1, 6, 'V1');
INSERT INTO `butacas` VALUES('1V1-7', 1, 7, 'V1');
INSERT INTO `butacas` VALUES('1V1-8', 1, 8, 'V1');
INSERT INTO `butacas` VALUES('1V1-9', 1, 9, 'V1');
INSERT INTO `butacas` VALUES('1V2-1', 2, 1, 'V1');
INSERT INTO `butacas` VALUES('1V2-10', 2, 10, 'V1');
INSERT INTO `butacas` VALUES('1V2-11', 2, 11, 'V1');
INSERT INTO `butacas` VALUES('1V2-12', 2, 12, 'V1');
INSERT INTO `butacas` VALUES('1V2-13', 2, 13, 'V1');
INSERT INTO `butacas` VALUES('1V2-14', 2, 14, 'V1');
INSERT INTO `butacas` VALUES('1V2-15', 2, 15, 'V1');
INSERT INTO `butacas` VALUES('1V2-16', 2, 16, 'V1');
INSERT INTO `butacas` VALUES('1V2-2', 2, 2, 'V1');
INSERT INTO `butacas` VALUES('1V2-3', 2, 3, 'V1');
INSERT INTO `butacas` VALUES('1V2-4', 2, 4, 'V1');
INSERT INTO `butacas` VALUES('1V2-5', 2, 5, 'V1');
INSERT INTO `butacas` VALUES('1V2-6', 2, 6, 'V1');
INSERT INTO `butacas` VALUES('1V2-7', 2, 7, 'V1');
INSERT INTO `butacas` VALUES('1V2-8', 2, 8, 'V1');
INSERT INTO `butacas` VALUES('1V2-9', 2, 9, 'V1');
INSERT INTO `butacas` VALUES('1V3-1', 3, 1, 'V1');
INSERT INTO `butacas` VALUES('1V3-10', 3, 10, 'V1');
INSERT INTO `butacas` VALUES('1V3-11', 3, 11, 'V1');
INSERT INTO `butacas` VALUES('1V3-12', 3, 12, 'V1');
INSERT INTO `butacas` VALUES('1V3-13', 3, 13, 'V1');
INSERT INTO `butacas` VALUES('1V3-14', 3, 14, 'V1');
INSERT INTO `butacas` VALUES('1V3-15', 3, 15, 'V1');
INSERT INTO `butacas` VALUES('1V3-16', 3, 16, 'V1');
INSERT INTO `butacas` VALUES('1V3-2', 3, 2, 'V1');
INSERT INTO `butacas` VALUES('1V3-3', 3, 3, 'V1');
INSERT INTO `butacas` VALUES('1V3-4', 3, 4, 'V1');
INSERT INTO `butacas` VALUES('1V3-5', 3, 5, 'V1');
INSERT INTO `butacas` VALUES('1V3-6', 3, 6, 'V1');
INSERT INTO `butacas` VALUES('1V3-7', 3, 7, 'V1');
INSERT INTO `butacas` VALUES('1V3-8', 3, 8, 'V1');
INSERT INTO `butacas` VALUES('1V3-9', 3, 9, 'V1');
INSERT INTO `butacas` VALUES('1V4-1', 4, 1, 'V1');
INSERT INTO `butacas` VALUES('1V4-10', 4, 10, 'V1');
INSERT INTO `butacas` VALUES('1V4-11', 4, 11, 'V1');
INSERT INTO `butacas` VALUES('1V4-12', 4, 12, 'V1');
INSERT INTO `butacas` VALUES('1V4-13', 4, 13, 'V1');
INSERT INTO `butacas` VALUES('1V4-14', 4, 14, 'V1');
INSERT INTO `butacas` VALUES('1V4-15', 4, 15, 'V1');
INSERT INTO `butacas` VALUES('1V4-16', 4, 16, 'V1');
INSERT INTO `butacas` VALUES('1V4-2', 4, 2, 'V1');
INSERT INTO `butacas` VALUES('1V4-3', 4, 3, 'V1');
INSERT INTO `butacas` VALUES('1V4-4', 4, 4, 'V1');
INSERT INTO `butacas` VALUES('1V4-5', 4, 5, 'V1');
INSERT INTO `butacas` VALUES('1V4-6', 4, 6, 'V1');
INSERT INTO `butacas` VALUES('1V4-7', 4, 7, 'V1');
INSERT INTO `butacas` VALUES('1V4-8', 4, 8, 'V1');
INSERT INTO `butacas` VALUES('1V4-9', 4, 9, 'V1');
INSERT INTO `butacas` VALUES('1V5-1', 5, 1, 'V1');
INSERT INTO `butacas` VALUES('1V5-10', 5, 10, 'V1');
INSERT INTO `butacas` VALUES('1V5-2', 5, 2, 'V1');
INSERT INTO `butacas` VALUES('1V5-3', 5, 3, 'V1');
INSERT INTO `butacas` VALUES('1V5-4', 5, 4, 'V1');
INSERT INTO `butacas` VALUES('1V5-5', 5, 5, 'V1');
INSERT INTO `butacas` VALUES('1V5-6', 5, 6, 'V1');
INSERT INTO `butacas` VALUES('1V5-7', 5, 7, 'V1');
INSERT INTO `butacas` VALUES('1V5-8', 5, 8, 'V1');
INSERT INTO `butacas` VALUES('1V5-9', 5, 9, 'V1');
INSERT INTO `butacas` VALUES('2A1-10', 1, 10, 'A2');
INSERT INTO `butacas` VALUES('2A1-2', 1, 2, 'A2');
INSERT INTO `butacas` VALUES('2A1-3', 1, 3, 'A2');
INSERT INTO `butacas` VALUES('2A1-4', 1, 4, 'A2');
INSERT INTO `butacas` VALUES('2A1-5', 1, 5, 'A2');
INSERT INTO `butacas` VALUES('2A1-6', 1, 6, 'A2');
INSERT INTO `butacas` VALUES('2A1-7', 1, 7, 'A2');
INSERT INTO `butacas` VALUES('2A1-8', 1, 8, 'A2');
INSERT INTO `butacas` VALUES('2A1-9', 1, 9, 'A2');
INSERT INTO `butacas` VALUES('2A2-1', 2, 1, 'A2');
INSERT INTO `butacas` VALUES('2A2-10', 2, 10, 'A2');
INSERT INTO `butacas` VALUES('2A2-11', 2, 11, 'A2');
INSERT INTO `butacas` VALUES('2A2-12', 2, 12, 'A2');
INSERT INTO `butacas` VALUES('2A2-13', 2, 13, 'A2');
INSERT INTO `butacas` VALUES('2A2-14', 2, 14, 'A2');
INSERT INTO `butacas` VALUES('2A2-15', 2, 15, 'A2');
INSERT INTO `butacas` VALUES('2A2-16', 2, 16, 'A2');
INSERT INTO `butacas` VALUES('2A2-2', 2, 2, 'A2');
INSERT INTO `butacas` VALUES('2A2-3', 2, 3, 'A2');
INSERT INTO `butacas` VALUES('2A2-4', 2, 4, 'A2');
INSERT INTO `butacas` VALUES('2A2-5', 2, 5, 'A2');
INSERT INTO `butacas` VALUES('2A2-6', 2, 6, 'A2');
INSERT INTO `butacas` VALUES('2A2-7', 2, 7, 'A2');
INSERT INTO `butacas` VALUES('2A2-8', 2, 8, 'A2');
INSERT INTO `butacas` VALUES('2A2-9', 2, 9, 'A2');
INSERT INTO `butacas` VALUES('2A3-1', 3, 1, 'A2');
INSERT INTO `butacas` VALUES('2A3-10', 3, 10, 'A2');
INSERT INTO `butacas` VALUES('2A3-11', 3, 11, 'A2');
INSERT INTO `butacas` VALUES('2A3-12', 3, 12, 'A2');
INSERT INTO `butacas` VALUES('2A3-13', 3, 13, 'A2');
INSERT INTO `butacas` VALUES('2A3-14', 3, 14, 'A2');
INSERT INTO `butacas` VALUES('2A3-15', 3, 15, 'A2');
INSERT INTO `butacas` VALUES('2A3-16', 3, 16, 'A2');
INSERT INTO `butacas` VALUES('2A3-2', 3, 2, 'A2');
INSERT INTO `butacas` VALUES('2A3-3', 3, 3, 'A2');
INSERT INTO `butacas` VALUES('2A3-4', 3, 4, 'A2');
INSERT INTO `butacas` VALUES('2A3-5', 3, 5, 'A2');
INSERT INTO `butacas` VALUES('2A3-6', 3, 6, 'A2');
INSERT INTO `butacas` VALUES('2A3-7', 3, 7, 'A2');
INSERT INTO `butacas` VALUES('2A3-8', 3, 8, 'A2');
INSERT INTO `butacas` VALUES('2A3-9', 3, 9, 'A2');
INSERT INTO `butacas` VALUES('2A4-1', 4, 1, 'A2');
INSERT INTO `butacas` VALUES('2A4-10', 4, 10, 'A2');
INSERT INTO `butacas` VALUES('2A4-11', 4, 11, 'A2');
INSERT INTO `butacas` VALUES('2A4-12', 4, 12, 'A2');
INSERT INTO `butacas` VALUES('2A4-13', 4, 13, 'A2');
INSERT INTO `butacas` VALUES('2A4-14', 4, 14, 'A2');
INSERT INTO `butacas` VALUES('2A4-15', 4, 15, 'A2');
INSERT INTO `butacas` VALUES('2A4-16', 4, 16, 'A2');
INSERT INTO `butacas` VALUES('2A4-2', 4, 2, 'A2');
INSERT INTO `butacas` VALUES('2A4-3', 4, 3, 'A2');
INSERT INTO `butacas` VALUES('2A4-4', 4, 4, 'A2');
INSERT INTO `butacas` VALUES('2A4-5', 4, 5, 'A2');
INSERT INTO `butacas` VALUES('2A4-6', 4, 6, 'A2');
INSERT INTO `butacas` VALUES('2A4-7', 4, 7, 'A2');
INSERT INTO `butacas` VALUES('2A4-8', 4, 8, 'A2');
INSERT INTO `butacas` VALUES('2A4-9', 4, 9, 'A2');
INSERT INTO `butacas` VALUES('2A5-1', 5, 1, 'A2');
INSERT INTO `butacas` VALUES('2A5-10', 5, 10, 'A2');
INSERT INTO `butacas` VALUES('2A5-2', 5, 2, 'A2');
INSERT INTO `butacas` VALUES('2A5-3', 5, 3, 'A2');
INSERT INTO `butacas` VALUES('2A5-4', 5, 4, 'A2');
INSERT INTO `butacas` VALUES('2A5-5', 5, 5, 'A2');
INSERT INTO `butacas` VALUES('2A5-6', 5, 6, 'A2');
INSERT INTO `butacas` VALUES('2A5-7', 5, 7, 'A2');
INSERT INTO `butacas` VALUES('2A5-8', 5, 8, 'A2');
INSERT INTO `butacas` VALUES('2A5-9', 5, 9, 'A2');
INSERT INTO `butacas` VALUES('2C1-10', 1, 10, 'C2');
INSERT INTO `butacas` VALUES('2C1-2', 1, 2, 'C2');
INSERT INTO `butacas` VALUES('2C1-3', 1, 3, 'C2');
INSERT INTO `butacas` VALUES('2C1-4', 1, 4, 'C2');
INSERT INTO `butacas` VALUES('2C1-5', 1, 5, 'C2');
INSERT INTO `butacas` VALUES('2C1-6', 1, 6, 'C2');
INSERT INTO `butacas` VALUES('2C1-7', 1, 7, 'C2');
INSERT INTO `butacas` VALUES('2C1-8', 1, 8, 'C2');
INSERT INTO `butacas` VALUES('2C1-9', 1, 9, 'C2');
INSERT INTO `butacas` VALUES('2C2-1', 2, 1, 'C2');
INSERT INTO `butacas` VALUES('2C2-10', 2, 10, 'C2');
INSERT INTO `butacas` VALUES('2C2-11', 2, 11, 'C2');
INSERT INTO `butacas` VALUES('2C2-12', 2, 12, 'C2');
INSERT INTO `butacas` VALUES('2C2-13', 2, 13, 'C2');
INSERT INTO `butacas` VALUES('2C2-14', 2, 14, 'C2');
INSERT INTO `butacas` VALUES('2C2-15', 2, 15, 'C2');
INSERT INTO `butacas` VALUES('2C2-16', 2, 16, 'C2');
INSERT INTO `butacas` VALUES('2C2-2', 2, 2, 'C2');
INSERT INTO `butacas` VALUES('2C2-3', 2, 3, 'C2');
INSERT INTO `butacas` VALUES('2C2-4', 2, 4, 'C2');
INSERT INTO `butacas` VALUES('2C2-5', 2, 5, 'C2');
INSERT INTO `butacas` VALUES('2C2-6', 2, 6, 'C2');
INSERT INTO `butacas` VALUES('2C2-7', 2, 7, 'C2');
INSERT INTO `butacas` VALUES('2C2-8', 2, 8, 'C2');
INSERT INTO `butacas` VALUES('2C2-9', 2, 9, 'C2');
INSERT INTO `butacas` VALUES('2C3-1', 3, 1, 'C2');
INSERT INTO `butacas` VALUES('2C3-10', 3, 10, 'C2');
INSERT INTO `butacas` VALUES('2C3-11', 3, 11, 'C2');
INSERT INTO `butacas` VALUES('2C3-12', 3, 12, 'C2');
INSERT INTO `butacas` VALUES('2C3-13', 3, 13, 'C2');
INSERT INTO `butacas` VALUES('2C3-14', 3, 14, 'C2');
INSERT INTO `butacas` VALUES('2C3-15', 3, 15, 'C2');
INSERT INTO `butacas` VALUES('2C3-16', 3, 16, 'C2');
INSERT INTO `butacas` VALUES('2C3-2', 3, 2, 'C2');
INSERT INTO `butacas` VALUES('2C3-3', 3, 3, 'C2');
INSERT INTO `butacas` VALUES('2C3-4', 3, 4, 'C2');
INSERT INTO `butacas` VALUES('2C3-5', 3, 5, 'C2');
INSERT INTO `butacas` VALUES('2C3-6', 3, 6, 'C2');
INSERT INTO `butacas` VALUES('2C3-7', 3, 7, 'C2');
INSERT INTO `butacas` VALUES('2C3-8', 3, 8, 'C2');
INSERT INTO `butacas` VALUES('2C3-9', 3, 9, 'C2');
INSERT INTO `butacas` VALUES('2C4-1', 4, 1, 'C2');
INSERT INTO `butacas` VALUES('2C4-10', 4, 10, 'C2');
INSERT INTO `butacas` VALUES('2C4-11', 4, 11, 'C2');
INSERT INTO `butacas` VALUES('2C4-12', 4, 12, 'C2');
INSERT INTO `butacas` VALUES('2C4-13', 4, 13, 'C2');
INSERT INTO `butacas` VALUES('2C4-14', 4, 14, 'C2');
INSERT INTO `butacas` VALUES('2C4-15', 4, 15, 'C2');
INSERT INTO `butacas` VALUES('2C4-16', 4, 16, 'C2');
INSERT INTO `butacas` VALUES('2C4-2', 4, 2, 'C2');
INSERT INTO `butacas` VALUES('2C4-3', 4, 3, 'C2');
INSERT INTO `butacas` VALUES('2C4-4', 4, 4, 'C2');
INSERT INTO `butacas` VALUES('2C4-5', 4, 5, 'C2');
INSERT INTO `butacas` VALUES('2C4-6', 4, 6, 'C2');
INSERT INTO `butacas` VALUES('2C4-7', 4, 7, 'C2');
INSERT INTO `butacas` VALUES('2C4-8', 4, 8, 'C2');
INSERT INTO `butacas` VALUES('2C4-9', 4, 9, 'C2');
INSERT INTO `butacas` VALUES('2C5-1', 5, 1, 'C2');
INSERT INTO `butacas` VALUES('2C5-10', 5, 10, 'C2');
INSERT INTO `butacas` VALUES('2C5-2', 5, 2, 'C2');
INSERT INTO `butacas` VALUES('2C5-3', 5, 3, 'C2');
INSERT INTO `butacas` VALUES('2C5-4', 5, 4, 'C2');
INSERT INTO `butacas` VALUES('2C5-5', 5, 5, 'C2');
INSERT INTO `butacas` VALUES('2C5-6', 5, 6, 'C2');
INSERT INTO `butacas` VALUES('2C5-7', 5, 7, 'C2');
INSERT INTO `butacas` VALUES('2C5-8', 5, 8, 'C2');
INSERT INTO `butacas` VALUES('2C5-9', 5, 9, 'C2');
INSERT INTO `butacas` VALUES('2G1-10', 1, 10, 'G2');
INSERT INTO `butacas` VALUES('2G1-2', 1, 2, 'G2');
INSERT INTO `butacas` VALUES('2G1-3', 1, 3, 'G2');
INSERT INTO `butacas` VALUES('2G1-4', 1, 4, 'G2');
INSERT INTO `butacas` VALUES('2G1-5', 1, 5, 'G2');
INSERT INTO `butacas` VALUES('2G1-6', 1, 6, 'G2');
INSERT INTO `butacas` VALUES('2G1-7', 1, 7, 'G2');
INSERT INTO `butacas` VALUES('2G1-8', 1, 8, 'G2');
INSERT INTO `butacas` VALUES('2G1-9', 1, 9, 'G2');
INSERT INTO `butacas` VALUES('2G2-1', 2, 1, 'G2');
INSERT INTO `butacas` VALUES('2G2-10', 2, 10, 'G2');
INSERT INTO `butacas` VALUES('2G2-11', 2, 11, 'G2');
INSERT INTO `butacas` VALUES('2G2-12', 2, 12, 'G2');
INSERT INTO `butacas` VALUES('2G2-13', 2, 13, 'G2');
INSERT INTO `butacas` VALUES('2G2-14', 2, 14, 'G2');
INSERT INTO `butacas` VALUES('2G2-15', 2, 15, 'G2');
INSERT INTO `butacas` VALUES('2G2-16', 2, 16, 'G2');
INSERT INTO `butacas` VALUES('2G2-2', 2, 2, 'G2');
INSERT INTO `butacas` VALUES('2G2-3', 2, 3, 'G2');
INSERT INTO `butacas` VALUES('2G2-4', 2, 4, 'G2');
INSERT INTO `butacas` VALUES('2G2-5', 2, 5, 'G2');
INSERT INTO `butacas` VALUES('2G2-6', 2, 6, 'G2');
INSERT INTO `butacas` VALUES('2G2-7', 2, 7, 'G2');
INSERT INTO `butacas` VALUES('2G2-8', 2, 8, 'G2');
INSERT INTO `butacas` VALUES('2G2-9', 2, 9, 'G2');
INSERT INTO `butacas` VALUES('2G3-1', 3, 1, 'G2');
INSERT INTO `butacas` VALUES('2G3-10', 3, 10, 'G2');
INSERT INTO `butacas` VALUES('2G3-11', 3, 11, 'G2');
INSERT INTO `butacas` VALUES('2G3-12', 3, 12, 'G2');
INSERT INTO `butacas` VALUES('2G3-13', 3, 13, 'G2');
INSERT INTO `butacas` VALUES('2G3-14', 3, 14, 'G2');
INSERT INTO `butacas` VALUES('2G3-15', 3, 15, 'G2');
INSERT INTO `butacas` VALUES('2G3-16', 3, 16, 'G2');
INSERT INTO `butacas` VALUES('2G3-2', 3, 2, 'G2');
INSERT INTO `butacas` VALUES('2G3-3', 3, 3, 'G2');
INSERT INTO `butacas` VALUES('2G3-4', 3, 4, 'G2');
INSERT INTO `butacas` VALUES('2G3-5', 3, 5, 'G2');
INSERT INTO `butacas` VALUES('2G3-6', 3, 6, 'G2');
INSERT INTO `butacas` VALUES('2G3-7', 3, 7, 'G2');
INSERT INTO `butacas` VALUES('2G3-8', 3, 8, 'G2');
INSERT INTO `butacas` VALUES('2G3-9', 3, 9, 'G2');
INSERT INTO `butacas` VALUES('2G4-1', 4, 1, 'G2');
INSERT INTO `butacas` VALUES('2G4-10', 4, 10, 'G2');
INSERT INTO `butacas` VALUES('2G4-11', 4, 11, 'G2');
INSERT INTO `butacas` VALUES('2G4-12', 4, 12, 'G2');
INSERT INTO `butacas` VALUES('2G4-13', 4, 13, 'G2');
INSERT INTO `butacas` VALUES('2G4-14', 4, 14, 'G2');
INSERT INTO `butacas` VALUES('2G4-15', 4, 15, 'G2');
INSERT INTO `butacas` VALUES('2G4-16', 4, 16, 'G2');
INSERT INTO `butacas` VALUES('2G4-2', 4, 2, 'G2');
INSERT INTO `butacas` VALUES('2G4-3', 4, 3, 'G2');
INSERT INTO `butacas` VALUES('2G4-4', 4, 4, 'G2');
INSERT INTO `butacas` VALUES('2G4-5', 4, 5, 'G2');
INSERT INTO `butacas` VALUES('2G4-6', 4, 6, 'G2');
INSERT INTO `butacas` VALUES('2G4-7', 4, 7, 'G2');
INSERT INTO `butacas` VALUES('2G4-8', 4, 8, 'G2');
INSERT INTO `butacas` VALUES('2G4-9', 4, 9, 'G2');
INSERT INTO `butacas` VALUES('2G5-1', 5, 1, 'G2');
INSERT INTO `butacas` VALUES('2G5-10', 5, 10, 'G2');
INSERT INTO `butacas` VALUES('2G5-2', 5, 2, 'G2');
INSERT INTO `butacas` VALUES('2G5-3', 5, 3, 'G2');
INSERT INTO `butacas` VALUES('2G5-4', 5, 4, 'G2');
INSERT INTO `butacas` VALUES('2G5-5', 5, 5, 'G2');
INSERT INTO `butacas` VALUES('2G5-6', 5, 6, 'G2');
INSERT INTO `butacas` VALUES('2G5-7', 5, 7, 'G2');
INSERT INTO `butacas` VALUES('2G5-8', 5, 8, 'G2');
INSERT INTO `butacas` VALUES('2G5-9', 5, 9, 'G2');
INSERT INTO `butacas` VALUES('2S1-10', 1, 10, 'S2');
INSERT INTO `butacas` VALUES('2S1-2', 1, 2, 'S2');
INSERT INTO `butacas` VALUES('2S1-3', 1, 3, 'S2');
INSERT INTO `butacas` VALUES('2S1-4', 1, 4, 'S2');
INSERT INTO `butacas` VALUES('2S1-5', 1, 5, 'S2');
INSERT INTO `butacas` VALUES('2S1-6', 1, 6, 'S2');
INSERT INTO `butacas` VALUES('2S1-7', 1, 7, 'S2');
INSERT INTO `butacas` VALUES('2S1-8', 1, 8, 'S2');
INSERT INTO `butacas` VALUES('2S1-9', 1, 9, 'S2');
INSERT INTO `butacas` VALUES('2S2-1', 2, 1, 'S2');
INSERT INTO `butacas` VALUES('2S2-10', 2, 10, 'S2');
INSERT INTO `butacas` VALUES('2S2-11', 2, 11, 'S2');
INSERT INTO `butacas` VALUES('2S2-12', 2, 12, 'S2');
INSERT INTO `butacas` VALUES('2S2-13', 2, 13, 'S2');
INSERT INTO `butacas` VALUES('2S2-14', 2, 14, 'S2');
INSERT INTO `butacas` VALUES('2S2-15', 2, 15, 'S2');
INSERT INTO `butacas` VALUES('2S2-16', 2, 16, 'S2');
INSERT INTO `butacas` VALUES('2S2-2', 2, 2, 'S2');
INSERT INTO `butacas` VALUES('2S2-3', 2, 3, 'S2');
INSERT INTO `butacas` VALUES('2S2-4', 2, 4, 'S2');
INSERT INTO `butacas` VALUES('2S2-5', 2, 5, 'S2');
INSERT INTO `butacas` VALUES('2S2-6', 2, 6, 'S2');
INSERT INTO `butacas` VALUES('2S2-7', 2, 7, 'S2');
INSERT INTO `butacas` VALUES('2S2-8', 2, 8, 'S2');
INSERT INTO `butacas` VALUES('2S2-9', 2, 9, 'S2');
INSERT INTO `butacas` VALUES('2S3-1', 3, 1, 'S2');
INSERT INTO `butacas` VALUES('2S3-10', 3, 10, 'S2');
INSERT INTO `butacas` VALUES('2S3-11', 3, 11, 'S2');
INSERT INTO `butacas` VALUES('2S3-12', 3, 12, 'S2');
INSERT INTO `butacas` VALUES('2S3-13', 3, 13, 'S2');
INSERT INTO `butacas` VALUES('2S3-14', 3, 14, 'S2');
INSERT INTO `butacas` VALUES('2S3-15', 3, 15, 'S2');
INSERT INTO `butacas` VALUES('2S3-16', 3, 16, 'S2');
INSERT INTO `butacas` VALUES('2S3-2', 3, 2, 'S2');
INSERT INTO `butacas` VALUES('2S3-3', 3, 3, 'S2');
INSERT INTO `butacas` VALUES('2S3-4', 3, 4, 'S2');
INSERT INTO `butacas` VALUES('2S3-5', 3, 5, 'S2');
INSERT INTO `butacas` VALUES('2S3-6', 3, 6, 'S2');
INSERT INTO `butacas` VALUES('2S3-7', 3, 7, 'S2');
INSERT INTO `butacas` VALUES('2S3-8', 3, 8, 'S2');
INSERT INTO `butacas` VALUES('2S3-9', 3, 9, 'S2');
INSERT INTO `butacas` VALUES('2S4-1', 4, 1, 'S2');
INSERT INTO `butacas` VALUES('2S4-10', 4, 10, 'S2');
INSERT INTO `butacas` VALUES('2S4-11', 4, 11, 'S2');
INSERT INTO `butacas` VALUES('2S4-12', 4, 12, 'S2');
INSERT INTO `butacas` VALUES('2S4-13', 4, 13, 'S2');
INSERT INTO `butacas` VALUES('2S4-14', 4, 14, 'S2');
INSERT INTO `butacas` VALUES('2S4-15', 4, 15, 'S2');
INSERT INTO `butacas` VALUES('2S4-16', 4, 16, 'S2');
INSERT INTO `butacas` VALUES('2S4-2', 4, 2, 'S2');
INSERT INTO `butacas` VALUES('2S4-3', 4, 3, 'S2');
INSERT INTO `butacas` VALUES('2S4-4', 4, 4, 'S2');
INSERT INTO `butacas` VALUES('2S4-5', 4, 5, 'S2');
INSERT INTO `butacas` VALUES('2S4-6', 4, 6, 'S2');
INSERT INTO `butacas` VALUES('2S4-7', 4, 7, 'S2');
INSERT INTO `butacas` VALUES('2S4-8', 4, 8, 'S2');
INSERT INTO `butacas` VALUES('2S4-9', 4, 9, 'S2');
INSERT INTO `butacas` VALUES('2S5-1', 5, 1, 'S2');
INSERT INTO `butacas` VALUES('2S5-10', 5, 10, 'S2');
INSERT INTO `butacas` VALUES('2S5-2', 5, 2, 'S2');
INSERT INTO `butacas` VALUES('2S5-3', 5, 3, 'S2');
INSERT INTO `butacas` VALUES('2S5-4', 5, 4, 'S2');
INSERT INTO `butacas` VALUES('2S5-5', 5, 5, 'S2');
INSERT INTO `butacas` VALUES('2S5-6', 5, 6, 'S2');
INSERT INTO `butacas` VALUES('2S5-7', 5, 7, 'S2');
INSERT INTO `butacas` VALUES('2S5-8', 5, 8, 'S2');
INSERT INTO `butacas` VALUES('2S5-9', 5, 9, 'S2');
INSERT INTO `butacas` VALUES('2T1-10', 1, 10, 'T2');
INSERT INTO `butacas` VALUES('2T1-2', 1, 2, 'T2');
INSERT INTO `butacas` VALUES('2T1-3', 1, 3, 'T2');
INSERT INTO `butacas` VALUES('2T1-4', 1, 4, 'T2');
INSERT INTO `butacas` VALUES('2T1-5', 1, 5, 'T2');
INSERT INTO `butacas` VALUES('2T1-6', 1, 6, 'T2');
INSERT INTO `butacas` VALUES('2T1-7', 1, 7, 'T2');
INSERT INTO `butacas` VALUES('2T1-8', 1, 8, 'T2');
INSERT INTO `butacas` VALUES('2T1-9', 1, 9, 'T2');
INSERT INTO `butacas` VALUES('2T2-1', 2, 1, 'T2');
INSERT INTO `butacas` VALUES('2T2-10', 2, 10, 'T2');
INSERT INTO `butacas` VALUES('2T2-11', 2, 11, 'T2');
INSERT INTO `butacas` VALUES('2T2-12', 2, 12, 'T2');
INSERT INTO `butacas` VALUES('2T2-13', 2, 13, 'T2');
INSERT INTO `butacas` VALUES('2T2-14', 2, 14, 'T2');
INSERT INTO `butacas` VALUES('2T2-15', 2, 15, 'T2');
INSERT INTO `butacas` VALUES('2T2-16', 2, 16, 'T2');
INSERT INTO `butacas` VALUES('2T2-2', 2, 2, 'T2');
INSERT INTO `butacas` VALUES('2T2-3', 2, 3, 'T2');
INSERT INTO `butacas` VALUES('2T2-4', 2, 4, 'T2');
INSERT INTO `butacas` VALUES('2T2-5', 2, 5, 'T2');
INSERT INTO `butacas` VALUES('2T2-6', 2, 6, 'T2');
INSERT INTO `butacas` VALUES('2T2-7', 2, 7, 'T2');
INSERT INTO `butacas` VALUES('2T2-8', 2, 8, 'T2');
INSERT INTO `butacas` VALUES('2T2-9', 2, 9, 'T2');
INSERT INTO `butacas` VALUES('2T3-1', 3, 1, 'T2');
INSERT INTO `butacas` VALUES('2T3-10', 3, 10, 'T2');
INSERT INTO `butacas` VALUES('2T3-11', 3, 11, 'T2');
INSERT INTO `butacas` VALUES('2T3-12', 3, 12, 'T2');
INSERT INTO `butacas` VALUES('2T3-13', 3, 13, 'T2');
INSERT INTO `butacas` VALUES('2T3-14', 3, 14, 'T2');
INSERT INTO `butacas` VALUES('2T3-15', 3, 15, 'T2');
INSERT INTO `butacas` VALUES('2T3-16', 3, 16, 'T2');
INSERT INTO `butacas` VALUES('2T3-2', 3, 2, 'T2');
INSERT INTO `butacas` VALUES('2T3-3', 3, 3, 'T2');
INSERT INTO `butacas` VALUES('2T3-4', 3, 4, 'T2');
INSERT INTO `butacas` VALUES('2T3-5', 3, 5, 'T2');
INSERT INTO `butacas` VALUES('2T3-6', 3, 6, 'T2');
INSERT INTO `butacas` VALUES('2T3-7', 3, 7, 'T2');
INSERT INTO `butacas` VALUES('2T3-8', 3, 8, 'T2');
INSERT INTO `butacas` VALUES('2T3-9', 3, 9, 'T2');
INSERT INTO `butacas` VALUES('2T4-1', 4, 1, 'T2');
INSERT INTO `butacas` VALUES('2T4-10', 4, 10, 'T2');
INSERT INTO `butacas` VALUES('2T4-11', 4, 11, 'T2');
INSERT INTO `butacas` VALUES('2T4-12', 4, 12, 'T2');
INSERT INTO `butacas` VALUES('2T4-13', 4, 13, 'T2');
INSERT INTO `butacas` VALUES('2T4-14', 4, 14, 'T2');
INSERT INTO `butacas` VALUES('2T4-15', 4, 15, 'T2');
INSERT INTO `butacas` VALUES('2T4-16', 4, 16, 'T2');
INSERT INTO `butacas` VALUES('2T4-2', 4, 2, 'T2');
INSERT INTO `butacas` VALUES('2T4-3', 4, 3, 'T2');
INSERT INTO `butacas` VALUES('2T4-4', 4, 4, 'T2');
INSERT INTO `butacas` VALUES('2T4-5', 4, 5, 'T2');
INSERT INTO `butacas` VALUES('2T4-6', 4, 6, 'T2');
INSERT INTO `butacas` VALUES('2T4-7', 4, 7, 'T2');
INSERT INTO `butacas` VALUES('2T4-8', 4, 8, 'T2');
INSERT INTO `butacas` VALUES('2T4-9', 4, 9, 'T2');
INSERT INTO `butacas` VALUES('2T5-1', 5, 1, 'T2');
INSERT INTO `butacas` VALUES('2T5-10', 5, 10, 'T2');
INSERT INTO `butacas` VALUES('2T5-2', 5, 2, 'T2');
INSERT INTO `butacas` VALUES('2T5-3', 5, 3, 'T2');
INSERT INTO `butacas` VALUES('2T5-4', 5, 4, 'T2');
INSERT INTO `butacas` VALUES('2T5-5', 5, 5, 'T2');
INSERT INTO `butacas` VALUES('2T5-6', 5, 6, 'T2');
INSERT INTO `butacas` VALUES('2T5-7', 5, 7, 'T2');
INSERT INTO `butacas` VALUES('2T5-8', 5, 8, 'T2');
INSERT INTO `butacas` VALUES('2T5-9', 5, 9, 'T2');
INSERT INTO `butacas` VALUES('2V1-10', 1, 10, 'V2');
INSERT INTO `butacas` VALUES('2V1-2', 1, 2, 'V2');
INSERT INTO `butacas` VALUES('2V1-3', 1, 3, 'V2');
INSERT INTO `butacas` VALUES('2V1-4', 1, 4, 'V2');
INSERT INTO `butacas` VALUES('2V1-5', 1, 5, 'V2');
INSERT INTO `butacas` VALUES('2V1-6', 1, 6, 'V2');
INSERT INTO `butacas` VALUES('2V1-7', 1, 7, 'V2');
INSERT INTO `butacas` VALUES('2V1-8', 1, 8, 'V2');
INSERT INTO `butacas` VALUES('2V1-9', 1, 9, 'V2');
INSERT INTO `butacas` VALUES('2V2-1', 2, 1, 'V2');
INSERT INTO `butacas` VALUES('2V2-10', 2, 10, 'V2');
INSERT INTO `butacas` VALUES('2V2-11', 2, 11, 'V2');
INSERT INTO `butacas` VALUES('2V2-12', 2, 12, 'V2');
INSERT INTO `butacas` VALUES('2V2-13', 2, 13, 'V2');
INSERT INTO `butacas` VALUES('2V2-14', 2, 14, 'V2');
INSERT INTO `butacas` VALUES('2V2-15', 2, 15, 'V2');
INSERT INTO `butacas` VALUES('2V2-16', 2, 16, 'V2');
INSERT INTO `butacas` VALUES('2V2-2', 2, 2, 'V2');
INSERT INTO `butacas` VALUES('2V2-3', 2, 3, 'V2');
INSERT INTO `butacas` VALUES('2V2-4', 2, 4, 'V2');
INSERT INTO `butacas` VALUES('2V2-5', 2, 5, 'V2');
INSERT INTO `butacas` VALUES('2V2-6', 2, 6, 'V2');
INSERT INTO `butacas` VALUES('2V2-7', 2, 7, 'V2');
INSERT INTO `butacas` VALUES('2V2-8', 2, 8, 'V2');
INSERT INTO `butacas` VALUES('2V2-9', 2, 9, 'V2');
INSERT INTO `butacas` VALUES('2V3-1', 3, 1, 'V2');
INSERT INTO `butacas` VALUES('2V3-10', 3, 10, 'V2');
INSERT INTO `butacas` VALUES('2V3-11', 3, 11, 'V2');
INSERT INTO `butacas` VALUES('2V3-12', 3, 12, 'V2');
INSERT INTO `butacas` VALUES('2V3-13', 3, 13, 'V2');
INSERT INTO `butacas` VALUES('2V3-14', 3, 14, 'V2');
INSERT INTO `butacas` VALUES('2V3-15', 3, 15, 'V2');
INSERT INTO `butacas` VALUES('2V3-16', 3, 16, 'V2');
INSERT INTO `butacas` VALUES('2V3-2', 3, 2, 'V2');
INSERT INTO `butacas` VALUES('2V3-3', 3, 3, 'V2');
INSERT INTO `butacas` VALUES('2V3-4', 3, 4, 'V2');
INSERT INTO `butacas` VALUES('2V3-5', 3, 5, 'V2');
INSERT INTO `butacas` VALUES('2V3-6', 3, 6, 'V2');
INSERT INTO `butacas` VALUES('2V3-7', 3, 7, 'V2');
INSERT INTO `butacas` VALUES('2V3-8', 3, 8, 'V2');
INSERT INTO `butacas` VALUES('2V3-9', 3, 9, 'V2');
INSERT INTO `butacas` VALUES('2V4-1', 4, 1, 'V2');
INSERT INTO `butacas` VALUES('2V4-10', 4, 10, 'V2');
INSERT INTO `butacas` VALUES('2V4-11', 4, 11, 'V2');
INSERT INTO `butacas` VALUES('2V4-12', 4, 12, 'V2');
INSERT INTO `butacas` VALUES('2V4-13', 4, 13, 'V2');
INSERT INTO `butacas` VALUES('2V4-14', 4, 14, 'V2');
INSERT INTO `butacas` VALUES('2V4-15', 4, 15, 'V2');
INSERT INTO `butacas` VALUES('2V4-16', 4, 16, 'V2');
INSERT INTO `butacas` VALUES('2V4-2', 4, 2, 'V2');
INSERT INTO `butacas` VALUES('2V4-3', 4, 3, 'V2');
INSERT INTO `butacas` VALUES('2V4-4', 4, 4, 'V2');
INSERT INTO `butacas` VALUES('2V4-5', 4, 5, 'V2');
INSERT INTO `butacas` VALUES('2V4-6', 4, 6, 'V2');
INSERT INTO `butacas` VALUES('2V4-7', 4, 7, 'V2');
INSERT INTO `butacas` VALUES('2V4-8', 4, 8, 'V2');
INSERT INTO `butacas` VALUES('2V4-9', 4, 9, 'V2');
INSERT INTO `butacas` VALUES('2V5-1', 5, 1, 'V2');
INSERT INTO `butacas` VALUES('2V5-10', 5, 10, 'V2');
INSERT INTO `butacas` VALUES('2V5-2', 5, 2, 'V2');
INSERT INTO `butacas` VALUES('2V5-3', 5, 3, 'V2');
INSERT INTO `butacas` VALUES('2V5-4', 5, 4, 'V2');
INSERT INTO `butacas` VALUES('2V5-5', 5, 5, 'V2');
INSERT INTO `butacas` VALUES('2V5-6', 5, 6, 'V2');
INSERT INTO `butacas` VALUES('2V5-7', 5, 7, 'V2');
INSERT INTO `butacas` VALUES('2V5-8', 5, 8, 'V2');
INSERT INTO `butacas` VALUES('2V5-9', 5, 9, 'V2');
INSERT INTO `butacas` VALUES('33-10', 3, 10, 'V3');
INSERT INTO `butacas` VALUES('3A1-10', 1, 10, 'A3');
INSERT INTO `butacas` VALUES('3A1-2', 1, 2, 'A3');
INSERT INTO `butacas` VALUES('3A1-3', 1, 3, 'A3');
INSERT INTO `butacas` VALUES('3A1-4', 1, 4, 'A3');
INSERT INTO `butacas` VALUES('3A1-5', 1, 5, 'A3');
INSERT INTO `butacas` VALUES('3A1-6', 1, 6, 'A3');
INSERT INTO `butacas` VALUES('3A1-7', 1, 7, 'A3');
INSERT INTO `butacas` VALUES('3A1-8', 1, 8, 'A3');
INSERT INTO `butacas` VALUES('3A1-9', 1, 9, 'A3');
INSERT INTO `butacas` VALUES('3A2-1', 2, 1, 'A3');
INSERT INTO `butacas` VALUES('3A2-10', 2, 10, 'A3');
INSERT INTO `butacas` VALUES('3A2-11', 2, 11, 'A3');
INSERT INTO `butacas` VALUES('3A2-12', 2, 12, 'A3');
INSERT INTO `butacas` VALUES('3A2-13', 2, 13, 'A3');
INSERT INTO `butacas` VALUES('3A2-14', 2, 14, 'A3');
INSERT INTO `butacas` VALUES('3A2-15', 2, 15, 'A3');
INSERT INTO `butacas` VALUES('3A2-16', 2, 16, 'A3');
INSERT INTO `butacas` VALUES('3A2-2', 2, 2, 'A3');
INSERT INTO `butacas` VALUES('3A2-3', 2, 3, 'A3');
INSERT INTO `butacas` VALUES('3A2-4', 2, 4, 'A3');
INSERT INTO `butacas` VALUES('3A2-5', 2, 5, 'A3');
INSERT INTO `butacas` VALUES('3A2-6', 2, 6, 'A3');
INSERT INTO `butacas` VALUES('3A2-7', 2, 7, 'A3');
INSERT INTO `butacas` VALUES('3A2-8', 2, 8, 'A3');
INSERT INTO `butacas` VALUES('3A2-9', 2, 9, 'A3');
INSERT INTO `butacas` VALUES('3A3-1', 3, 1, 'A3');
INSERT INTO `butacas` VALUES('3A3-10', 3, 10, 'A3');
INSERT INTO `butacas` VALUES('3A3-11', 3, 11, 'A3');
INSERT INTO `butacas` VALUES('3A3-12', 3, 12, 'A3');
INSERT INTO `butacas` VALUES('3A3-13', 3, 13, 'A3');
INSERT INTO `butacas` VALUES('3A3-14', 3, 14, 'A3');
INSERT INTO `butacas` VALUES('3A3-15', 3, 15, 'A3');
INSERT INTO `butacas` VALUES('3A3-16', 3, 16, 'A3');
INSERT INTO `butacas` VALUES('3A3-2', 3, 2, 'A3');
INSERT INTO `butacas` VALUES('3A3-3', 3, 3, 'A3');
INSERT INTO `butacas` VALUES('3A3-4', 3, 4, 'A3');
INSERT INTO `butacas` VALUES('3A3-5', 3, 5, 'A3');
INSERT INTO `butacas` VALUES('3A3-6', 3, 6, 'A3');
INSERT INTO `butacas` VALUES('3A3-7', 3, 7, 'A3');
INSERT INTO `butacas` VALUES('3A3-8', 3, 8, 'A3');
INSERT INTO `butacas` VALUES('3A3-9', 3, 9, 'A3');
INSERT INTO `butacas` VALUES('3A4-1', 4, 1, 'A3');
INSERT INTO `butacas` VALUES('3A4-10', 4, 10, 'A3');
INSERT INTO `butacas` VALUES('3A4-11', 4, 11, 'A3');
INSERT INTO `butacas` VALUES('3A4-12', 4, 12, 'A3');
INSERT INTO `butacas` VALUES('3A4-13', 4, 13, 'A3');
INSERT INTO `butacas` VALUES('3A4-14', 4, 14, 'A3');
INSERT INTO `butacas` VALUES('3A4-15', 4, 15, 'A3');
INSERT INTO `butacas` VALUES('3A4-16', 4, 16, 'A3');
INSERT INTO `butacas` VALUES('3A4-2', 4, 2, 'A3');
INSERT INTO `butacas` VALUES('3A4-3', 4, 3, 'A3');
INSERT INTO `butacas` VALUES('3A4-4', 4, 4, 'A3');
INSERT INTO `butacas` VALUES('3A4-5', 4, 5, 'A3');
INSERT INTO `butacas` VALUES('3A4-6', 4, 6, 'A3');
INSERT INTO `butacas` VALUES('3A4-7', 4, 7, 'A3');
INSERT INTO `butacas` VALUES('3A4-8', 4, 8, 'A3');
INSERT INTO `butacas` VALUES('3A4-9', 4, 9, 'A3');
INSERT INTO `butacas` VALUES('3A5-1', 5, 1, 'A3');
INSERT INTO `butacas` VALUES('3A5-10', 5, 10, 'A3');
INSERT INTO `butacas` VALUES('3A5-2', 5, 2, 'A3');
INSERT INTO `butacas` VALUES('3A5-3', 5, 3, 'A3');
INSERT INTO `butacas` VALUES('3A5-4', 5, 4, 'A3');
INSERT INTO `butacas` VALUES('3A5-5', 5, 5, 'A3');
INSERT INTO `butacas` VALUES('3A5-6', 5, 6, 'A3');
INSERT INTO `butacas` VALUES('3A5-7', 5, 7, 'A3');
INSERT INTO `butacas` VALUES('3A5-8', 5, 8, 'A3');
INSERT INTO `butacas` VALUES('3A5-9', 5, 9, 'A3');
INSERT INTO `butacas` VALUES('3C1-10', 1, 10, 'C3');
INSERT INTO `butacas` VALUES('3C1-2', 1, 2, 'C3');
INSERT INTO `butacas` VALUES('3C1-3', 1, 3, 'C3');
INSERT INTO `butacas` VALUES('3C1-4', 1, 4, 'C3');
INSERT INTO `butacas` VALUES('3C1-5', 1, 5, 'C3');
INSERT INTO `butacas` VALUES('3C1-6', 1, 6, 'C3');
INSERT INTO `butacas` VALUES('3C1-7', 1, 7, 'C3');
INSERT INTO `butacas` VALUES('3C1-8', 1, 8, 'C3');
INSERT INTO `butacas` VALUES('3C1-9', 1, 9, 'C3');
INSERT INTO `butacas` VALUES('3C2-1', 2, 1, 'C3');
INSERT INTO `butacas` VALUES('3C2-10', 2, 10, 'C3');
INSERT INTO `butacas` VALUES('3C2-11', 2, 11, 'C3');
INSERT INTO `butacas` VALUES('3C2-12', 2, 12, 'C3');
INSERT INTO `butacas` VALUES('3C2-13', 2, 13, 'C3');
INSERT INTO `butacas` VALUES('3C2-14', 2, 14, 'C3');
INSERT INTO `butacas` VALUES('3C2-15', 2, 15, 'C3');
INSERT INTO `butacas` VALUES('3C2-16', 2, 16, 'C3');
INSERT INTO `butacas` VALUES('3C2-2', 2, 2, 'C3');
INSERT INTO `butacas` VALUES('3C2-3', 2, 3, 'C3');
INSERT INTO `butacas` VALUES('3C2-4', 2, 4, 'C3');
INSERT INTO `butacas` VALUES('3C2-5', 2, 5, 'C3');
INSERT INTO `butacas` VALUES('3C2-6', 2, 6, 'C3');
INSERT INTO `butacas` VALUES('3C2-7', 2, 7, 'C3');
INSERT INTO `butacas` VALUES('3C2-8', 2, 8, 'C3');
INSERT INTO `butacas` VALUES('3C2-9', 2, 9, 'C3');
INSERT INTO `butacas` VALUES('3C3-1', 3, 1, 'C3');
INSERT INTO `butacas` VALUES('3C3-10', 3, 10, 'C3');
INSERT INTO `butacas` VALUES('3C3-11', 3, 11, 'C3');
INSERT INTO `butacas` VALUES('3C3-12', 3, 12, 'C3');
INSERT INTO `butacas` VALUES('3C3-13', 3, 13, 'C3');
INSERT INTO `butacas` VALUES('3C3-14', 3, 14, 'C3');
INSERT INTO `butacas` VALUES('3C3-15', 3, 15, 'C3');
INSERT INTO `butacas` VALUES('3C3-16', 3, 16, 'C3');
INSERT INTO `butacas` VALUES('3C3-2', 3, 2, 'C3');
INSERT INTO `butacas` VALUES('3C3-3', 3, 3, 'C3');
INSERT INTO `butacas` VALUES('3C3-4', 3, 4, 'C3');
INSERT INTO `butacas` VALUES('3C3-5', 3, 5, 'C3');
INSERT INTO `butacas` VALUES('3C3-6', 3, 6, 'C3');
INSERT INTO `butacas` VALUES('3C3-7', 3, 7, 'C3');
INSERT INTO `butacas` VALUES('3C3-8', 3, 8, 'C3');
INSERT INTO `butacas` VALUES('3C3-9', 3, 9, 'C3');
INSERT INTO `butacas` VALUES('3C4-1', 4, 13, 'C3');
INSERT INTO `butacas` VALUES('3C4-10', 4, 10, 'C3');
INSERT INTO `butacas` VALUES('3C4-11', 4, 11, 'C3');
INSERT INTO `butacas` VALUES('3C4-12', 4, 12, 'C3');
INSERT INTO `butacas` VALUES('3C4-13', 4, 1, 'C3');
INSERT INTO `butacas` VALUES('3C4-14', 4, 14, 'C3');
INSERT INTO `butacas` VALUES('3C4-15', 4, 15, 'C3');
INSERT INTO `butacas` VALUES('3C4-16', 4, 16, 'C3');
INSERT INTO `butacas` VALUES('3C4-2', 4, 2, 'C3');
INSERT INTO `butacas` VALUES('3C4-3', 4, 3, 'C3');
INSERT INTO `butacas` VALUES('3C4-4', 4, 4, 'C3');
INSERT INTO `butacas` VALUES('3C4-5', 4, 5, 'C3');
INSERT INTO `butacas` VALUES('3C4-6', 4, 6, 'C3');
INSERT INTO `butacas` VALUES('3C4-7', 4, 7, 'C3');
INSERT INTO `butacas` VALUES('3C4-8', 4, 8, 'C3');
INSERT INTO `butacas` VALUES('3C4-9', 4, 9, 'C3');
INSERT INTO `butacas` VALUES('3C5-1', 5, 1, 'C3');
INSERT INTO `butacas` VALUES('3C5-10', 5, 10, 'C3');
INSERT INTO `butacas` VALUES('3C5-2', 5, 2, 'C3');
INSERT INTO `butacas` VALUES('3C5-3', 5, 3, 'C3');
INSERT INTO `butacas` VALUES('3C5-4', 5, 4, 'C3');
INSERT INTO `butacas` VALUES('3C5-5', 5, 5, 'C3');
INSERT INTO `butacas` VALUES('3C5-6', 5, 6, 'C3');
INSERT INTO `butacas` VALUES('3C5-7', 5, 7, 'C3');
INSERT INTO `butacas` VALUES('3C5-8', 5, 8, 'C3');
INSERT INTO `butacas` VALUES('3C5-9', 5, 9, 'C3');
INSERT INTO `butacas` VALUES('3G1-10', 1, 10, 'G3');
INSERT INTO `butacas` VALUES('3G1-2', 1, 2, 'G3');
INSERT INTO `butacas` VALUES('3G1-3', 1, 3, 'G3');
INSERT INTO `butacas` VALUES('3G1-4', 1, 4, 'G3');
INSERT INTO `butacas` VALUES('3G1-5', 1, 5, 'G3');
INSERT INTO `butacas` VALUES('3G1-6', 1, 6, 'G3');
INSERT INTO `butacas` VALUES('3G1-7', 1, 7, 'G3');
INSERT INTO `butacas` VALUES('3G1-8', 1, 8, 'G3');
INSERT INTO `butacas` VALUES('3G1-9', 1, 9, 'G3');
INSERT INTO `butacas` VALUES('3G2-1', 2, 1, 'G3');
INSERT INTO `butacas` VALUES('3G2-10', 2, 10, 'G3');
INSERT INTO `butacas` VALUES('3G2-11', 2, 11, 'G3');
INSERT INTO `butacas` VALUES('3G2-12', 2, 12, 'G3');
INSERT INTO `butacas` VALUES('3G2-13', 2, 13, 'G3');
INSERT INTO `butacas` VALUES('3G2-14', 2, 14, 'G3');
INSERT INTO `butacas` VALUES('3G2-15', 2, 15, 'G3');
INSERT INTO `butacas` VALUES('3G2-16', 2, 16, 'G3');
INSERT INTO `butacas` VALUES('3G2-2', 2, 2, 'G3');
INSERT INTO `butacas` VALUES('3G2-3', 2, 3, 'G3');
INSERT INTO `butacas` VALUES('3G2-4', 2, 4, 'G3');
INSERT INTO `butacas` VALUES('3G2-5', 2, 5, 'G3');
INSERT INTO `butacas` VALUES('3G2-6', 2, 6, 'G3');
INSERT INTO `butacas` VALUES('3G2-7', 2, 7, 'G3');
INSERT INTO `butacas` VALUES('3G2-8', 2, 8, 'G3');
INSERT INTO `butacas` VALUES('3G2-9', 2, 9, 'G3');
INSERT INTO `butacas` VALUES('3G3-1', 3, 1, 'G3');
INSERT INTO `butacas` VALUES('3G3-10', 3, 10, 'G3');
INSERT INTO `butacas` VALUES('3G3-11', 3, 11, 'G3');
INSERT INTO `butacas` VALUES('3G3-12', 3, 12, 'G3');
INSERT INTO `butacas` VALUES('3G3-13', 3, 13, 'G3');
INSERT INTO `butacas` VALUES('3G3-14', 3, 14, 'G3');
INSERT INTO `butacas` VALUES('3G3-15', 3, 15, 'G3');
INSERT INTO `butacas` VALUES('3G3-16', 3, 16, 'G3');
INSERT INTO `butacas` VALUES('3G3-2', 3, 2, 'G3');
INSERT INTO `butacas` VALUES('3G3-3', 3, 3, 'G3');
INSERT INTO `butacas` VALUES('3G3-4', 3, 4, 'G3');
INSERT INTO `butacas` VALUES('3G3-5', 3, 5, 'G3');
INSERT INTO `butacas` VALUES('3G3-6', 3, 6, 'G3');
INSERT INTO `butacas` VALUES('3G3-7', 3, 7, 'G3');
INSERT INTO `butacas` VALUES('3G3-8', 3, 8, 'G3');
INSERT INTO `butacas` VALUES('3G3-9', 3, 9, 'G3');
INSERT INTO `butacas` VALUES('3G4-1', 4, 1, 'G3');
INSERT INTO `butacas` VALUES('3G4-10', 4, 10, 'G3');
INSERT INTO `butacas` VALUES('3G4-11', 4, 11, 'G3');
INSERT INTO `butacas` VALUES('3G4-12', 4, 12, 'G3');
INSERT INTO `butacas` VALUES('3G4-13', 4, 13, 'G3');
INSERT INTO `butacas` VALUES('3G4-14', 4, 14, 'G3');
INSERT INTO `butacas` VALUES('3G4-15', 4, 15, 'G3');
INSERT INTO `butacas` VALUES('3G4-16', 4, 16, 'G3');
INSERT INTO `butacas` VALUES('3G4-2', 4, 2, 'G3');
INSERT INTO `butacas` VALUES('3G4-3', 4, 3, 'G3');
INSERT INTO `butacas` VALUES('3G4-4', 4, 4, 'G3');
INSERT INTO `butacas` VALUES('3G4-5', 4, 5, 'G3');
INSERT INTO `butacas` VALUES('3G4-6', 4, 6, 'G3');
INSERT INTO `butacas` VALUES('3G4-7', 4, 7, 'G3');
INSERT INTO `butacas` VALUES('3G4-8', 4, 8, 'G3');
INSERT INTO `butacas` VALUES('3G4-9', 4, 9, 'G3');
INSERT INTO `butacas` VALUES('3G5-1', 5, 1, 'G3');
INSERT INTO `butacas` VALUES('3G5-10', 5, 10, 'G3');
INSERT INTO `butacas` VALUES('3G5-2', 5, 2, 'G3');
INSERT INTO `butacas` VALUES('3G5-3', 5, 3, 'G3');
INSERT INTO `butacas` VALUES('3G5-4', 5, 4, 'G3');
INSERT INTO `butacas` VALUES('3G5-5', 5, 5, 'G3');
INSERT INTO `butacas` VALUES('3G5-6', 5, 6, 'G3');
INSERT INTO `butacas` VALUES('3G5-7', 5, 7, 'G3');
INSERT INTO `butacas` VALUES('3G5-8', 5, 8, 'G3');
INSERT INTO `butacas` VALUES('3G5-9', 5, 9, 'G3');
INSERT INTO `butacas` VALUES('3S1-10', 1, 10, 'S3');
INSERT INTO `butacas` VALUES('3S1-2', 1, 2, 'S3');
INSERT INTO `butacas` VALUES('3S1-3', 1, 3, 'S3');
INSERT INTO `butacas` VALUES('3S1-4', 1, 4, 'S3');
INSERT INTO `butacas` VALUES('3S1-5', 1, 5, 'S3');
INSERT INTO `butacas` VALUES('3S1-6', 1, 6, 'S3');
INSERT INTO `butacas` VALUES('3S1-7', 1, 7, 'S3');
INSERT INTO `butacas` VALUES('3S1-8', 1, 8, 'S3');
INSERT INTO `butacas` VALUES('3S1-9', 1, 9, 'S3');
INSERT INTO `butacas` VALUES('3S2-1', 2, 1, 'S3');
INSERT INTO `butacas` VALUES('3S2-10', 2, 10, 'S3');
INSERT INTO `butacas` VALUES('3S2-11', 2, 11, 'S3');
INSERT INTO `butacas` VALUES('3S2-12', 2, 12, 'S3');
INSERT INTO `butacas` VALUES('3S2-13', 2, 13, 'S3');
INSERT INTO `butacas` VALUES('3S2-14', 2, 14, 'S3');
INSERT INTO `butacas` VALUES('3S2-15', 2, 15, 'S3');
INSERT INTO `butacas` VALUES('3S2-16', 2, 16, 'S3');
INSERT INTO `butacas` VALUES('3S2-2', 2, 2, 'S3');
INSERT INTO `butacas` VALUES('3S2-3', 2, 3, 'S3');
INSERT INTO `butacas` VALUES('3S2-4', 2, 4, 'S3');
INSERT INTO `butacas` VALUES('3S2-5', 2, 5, 'S3');
INSERT INTO `butacas` VALUES('3S2-6', 2, 6, 'S3');
INSERT INTO `butacas` VALUES('3S2-7', 2, 7, 'S3');
INSERT INTO `butacas` VALUES('3S2-8', 2, 8, 'S3');
INSERT INTO `butacas` VALUES('3S2-9', 2, 9, 'S3');
INSERT INTO `butacas` VALUES('3S3-1', 3, 1, 'S3');
INSERT INTO `butacas` VALUES('3S3-10', 3, 10, 'S3');
INSERT INTO `butacas` VALUES('3S3-11', 3, 11, 'S3');
INSERT INTO `butacas` VALUES('3S3-12', 3, 12, 'S3');
INSERT INTO `butacas` VALUES('3S3-13', 3, 13, 'S3');
INSERT INTO `butacas` VALUES('3S3-14', 3, 14, 'S3');
INSERT INTO `butacas` VALUES('3S3-15', 3, 15, 'S3');
INSERT INTO `butacas` VALUES('3S3-16', 3, 16, 'S3');
INSERT INTO `butacas` VALUES('3S3-2', 3, 2, 'S3');
INSERT INTO `butacas` VALUES('3S3-3', 3, 3, 'S3');
INSERT INTO `butacas` VALUES('3S3-4', 3, 4, 'S3');
INSERT INTO `butacas` VALUES('3S3-5', 3, 5, 'S3');
INSERT INTO `butacas` VALUES('3S3-6', 3, 6, 'S3');
INSERT INTO `butacas` VALUES('3S3-7', 3, 7, 'S3');
INSERT INTO `butacas` VALUES('3S3-8', 3, 8, 'S3');
INSERT INTO `butacas` VALUES('3S3-9', 3, 9, 'S3');
INSERT INTO `butacas` VALUES('3S4-1', 4, 1, 'S3');
INSERT INTO `butacas` VALUES('3S4-10', 4, 10, 'S3');
INSERT INTO `butacas` VALUES('3S4-11', 4, 11, 'S3');
INSERT INTO `butacas` VALUES('3S4-12', 4, 12, 'S3');
INSERT INTO `butacas` VALUES('3S4-13', 4, 13, 'S3');
INSERT INTO `butacas` VALUES('3S4-14', 4, 14, 'S3');
INSERT INTO `butacas` VALUES('3S4-15', 4, 15, 'S3');
INSERT INTO `butacas` VALUES('3S4-16', 4, 16, 'S3');
INSERT INTO `butacas` VALUES('3S4-2', 4, 2, 'S3');
INSERT INTO `butacas` VALUES('3S4-3', 4, 3, 'S3');
INSERT INTO `butacas` VALUES('3S4-4', 4, 4, 'S3');
INSERT INTO `butacas` VALUES('3S4-5', 4, 5, 'S3');
INSERT INTO `butacas` VALUES('3S4-6', 4, 6, 'S3');
INSERT INTO `butacas` VALUES('3S4-7', 4, 7, 'S3');
INSERT INTO `butacas` VALUES('3S4-8', 4, 8, 'S3');
INSERT INTO `butacas` VALUES('3S4-9', 4, 9, 'S3');
INSERT INTO `butacas` VALUES('3S5-1', 5, 1, 'S3');
INSERT INTO `butacas` VALUES('3S5-10', 5, 10, 'S3');
INSERT INTO `butacas` VALUES('3S5-2', 5, 2, 'S3');
INSERT INTO `butacas` VALUES('3S5-3', 5, 3, 'S3');
INSERT INTO `butacas` VALUES('3S5-4', 5, 4, 'S3');
INSERT INTO `butacas` VALUES('3S5-5', 5, 5, 'S3');
INSERT INTO `butacas` VALUES('3S5-6', 5, 6, 'S3');
INSERT INTO `butacas` VALUES('3S5-7', 5, 7, 'S3');
INSERT INTO `butacas` VALUES('3S5-8', 5, 8, 'S3');
INSERT INTO `butacas` VALUES('3S5-9', 5, 9, 'S3');
INSERT INTO `butacas` VALUES('3T1-10', 1, 10, 'T3');
INSERT INTO `butacas` VALUES('3T1-2', 1, 2, 'T3');
INSERT INTO `butacas` VALUES('3T1-3', 1, 3, 'T3');
INSERT INTO `butacas` VALUES('3T1-4', 1, 4, 'T3');
INSERT INTO `butacas` VALUES('3T1-5', 1, 5, 'T3');
INSERT INTO `butacas` VALUES('3T1-6', 1, 6, 'T3');
INSERT INTO `butacas` VALUES('3T1-7', 1, 7, 'T3');
INSERT INTO `butacas` VALUES('3T1-8', 1, 8, 'T3');
INSERT INTO `butacas` VALUES('3T1-9', 1, 9, 'T3');
INSERT INTO `butacas` VALUES('3T2-1', 2, 1, 'T3');
INSERT INTO `butacas` VALUES('3T2-10', 2, 10, 'T3');
INSERT INTO `butacas` VALUES('3T2-11', 2, 11, 'T3');
INSERT INTO `butacas` VALUES('3T2-12', 2, 12, 'T3');
INSERT INTO `butacas` VALUES('3T2-13', 2, 13, 'T3');
INSERT INTO `butacas` VALUES('3T2-14', 2, 14, 'T3');
INSERT INTO `butacas` VALUES('3T2-15', 2, 15, 'T3');
INSERT INTO `butacas` VALUES('3T2-16', 2, 16, 'T3');
INSERT INTO `butacas` VALUES('3T2-2', 2, 2, 'T3');
INSERT INTO `butacas` VALUES('3T2-3', 2, 3, 'T3');
INSERT INTO `butacas` VALUES('3T2-4', 2, 4, 'T3');
INSERT INTO `butacas` VALUES('3T2-5', 2, 5, 'T3');
INSERT INTO `butacas` VALUES('3T2-6', 2, 6, 'T3');
INSERT INTO `butacas` VALUES('3T2-7', 2, 7, 'T3');
INSERT INTO `butacas` VALUES('3T2-8', 2, 8, 'T3');
INSERT INTO `butacas` VALUES('3T2-9', 2, 9, 'T3');
INSERT INTO `butacas` VALUES('3T3-1', 3, 1, 'T3');
INSERT INTO `butacas` VALUES('3T3-10', 3, 10, 'T3');
INSERT INTO `butacas` VALUES('3T3-11', 3, 11, 'T3');
INSERT INTO `butacas` VALUES('3T3-12', 3, 12, 'T3');
INSERT INTO `butacas` VALUES('3T3-13', 3, 13, 'T3');
INSERT INTO `butacas` VALUES('3T3-14', 3, 14, 'T3');
INSERT INTO `butacas` VALUES('3T3-15', 3, 15, 'T3');
INSERT INTO `butacas` VALUES('3T3-16', 3, 16, 'T3');
INSERT INTO `butacas` VALUES('3T3-2', 3, 2, 'T3');
INSERT INTO `butacas` VALUES('3T3-3', 3, 3, 'T3');
INSERT INTO `butacas` VALUES('3T3-4', 3, 4, 'T3');
INSERT INTO `butacas` VALUES('3T3-5', 3, 5, 'T3');
INSERT INTO `butacas` VALUES('3T3-6', 3, 6, 'T3');
INSERT INTO `butacas` VALUES('3T3-7', 3, 7, 'T3');
INSERT INTO `butacas` VALUES('3T3-8', 3, 8, 'T3');
INSERT INTO `butacas` VALUES('3T3-9', 3, 9, 'T3');
INSERT INTO `butacas` VALUES('3T4-1', 4, 1, 'T3');
INSERT INTO `butacas` VALUES('3T4-10', 4, 10, 'T3');
INSERT INTO `butacas` VALUES('3T4-11', 4, 11, 'T3');
INSERT INTO `butacas` VALUES('3T4-12', 4, 12, 'T3');
INSERT INTO `butacas` VALUES('3T4-13', 4, 13, 'T3');
INSERT INTO `butacas` VALUES('3T4-14', 4, 14, 'T3');
INSERT INTO `butacas` VALUES('3T4-15', 4, 15, 'T3');
INSERT INTO `butacas` VALUES('3T4-16', 4, 16, 'T3');
INSERT INTO `butacas` VALUES('3T4-2', 4, 2, 'T3');
INSERT INTO `butacas` VALUES('3T4-3', 4, 3, 'T3');
INSERT INTO `butacas` VALUES('3T4-4', 4, 4, 'T3');
INSERT INTO `butacas` VALUES('3T4-5', 4, 5, 'T3');
INSERT INTO `butacas` VALUES('3T4-6', 4, 6, 'T3');
INSERT INTO `butacas` VALUES('3T4-7', 4, 7, 'T3');
INSERT INTO `butacas` VALUES('3T4-8', 4, 8, 'T3');
INSERT INTO `butacas` VALUES('3T4-9', 4, 9, 'T3');
INSERT INTO `butacas` VALUES('3T5-1', 5, 1, 'T3');
INSERT INTO `butacas` VALUES('3T5-10', 5, 10, 'T3');
INSERT INTO `butacas` VALUES('3T5-2', 5, 2, 'T3');
INSERT INTO `butacas` VALUES('3T5-3', 5, 3, 'T3');
INSERT INTO `butacas` VALUES('3T5-4', 5, 4, 'T3');
INSERT INTO `butacas` VALUES('3T5-5', 5, 5, 'T3');
INSERT INTO `butacas` VALUES('3T5-6', 5, 6, 'T3');
INSERT INTO `butacas` VALUES('3T5-7', 5, 7, 'T3');
INSERT INTO `butacas` VALUES('3T5-8', 5, 8, 'T3');
INSERT INTO `butacas` VALUES('3T5-9', 5, 9, 'T3');
INSERT INTO `butacas` VALUES('3V1-10', 1, 10, 'V3');
INSERT INTO `butacas` VALUES('3V1-2', 1, 2, 'V3');
INSERT INTO `butacas` VALUES('3V1-3', 1, 3, 'V3');
INSERT INTO `butacas` VALUES('3V1-4', 1, 4, 'V3');
INSERT INTO `butacas` VALUES('3V1-5', 1, 5, 'V3');
INSERT INTO `butacas` VALUES('3V1-6', 1, 6, 'V3');
INSERT INTO `butacas` VALUES('3V1-7', 1, 7, 'V3');
INSERT INTO `butacas` VALUES('3V1-8', 1, 8, 'V3');
INSERT INTO `butacas` VALUES('3V1-9', 1, 9, 'V3');
INSERT INTO `butacas` VALUES('3V2-1', 2, 1, 'V3');
INSERT INTO `butacas` VALUES('3V2-10', 2, 10, 'V3');
INSERT INTO `butacas` VALUES('3V2-11', 2, 11, 'V3');
INSERT INTO `butacas` VALUES('3V2-12', 2, 12, 'V3');
INSERT INTO `butacas` VALUES('3V2-13', 2, 13, 'V3');
INSERT INTO `butacas` VALUES('3V2-14', 2, 14, 'V3');
INSERT INTO `butacas` VALUES('3V2-15', 2, 15, 'V3');
INSERT INTO `butacas` VALUES('3V2-16', 2, 16, 'V3');
INSERT INTO `butacas` VALUES('3V2-2', 2, 2, 'V3');
INSERT INTO `butacas` VALUES('3V2-3', 2, 3, 'V3');
INSERT INTO `butacas` VALUES('3V2-4', 2, 4, 'V3');
INSERT INTO `butacas` VALUES('3V2-5', 2, 5, 'V3');
INSERT INTO `butacas` VALUES('3V2-6', 2, 6, 'V3');
INSERT INTO `butacas` VALUES('3V2-7', 2, 7, 'V3');
INSERT INTO `butacas` VALUES('3V2-8', 2, 8, 'V3');
INSERT INTO `butacas` VALUES('3V2-9', 2, 9, 'V3');
INSERT INTO `butacas` VALUES('3V3-1', 3, 1, 'V3');
INSERT INTO `butacas` VALUES('3V3-11', 3, 11, 'V3');
INSERT INTO `butacas` VALUES('3V3-12', 3, 12, 'V3');
INSERT INTO `butacas` VALUES('3V3-13', 3, 13, 'V3');
INSERT INTO `butacas` VALUES('3V3-14', 3, 14, 'V3');
INSERT INTO `butacas` VALUES('3V3-15', 3, 15, 'V3');
INSERT INTO `butacas` VALUES('3V3-16', 3, 16, 'V3');
INSERT INTO `butacas` VALUES('3V3-2', 3, 2, 'V3');
INSERT INTO `butacas` VALUES('3V3-3', 3, 3, 'V3');
INSERT INTO `butacas` VALUES('3V3-4', 3, 4, 'V3');
INSERT INTO `butacas` VALUES('3V3-5', 3, 5, 'V3');
INSERT INTO `butacas` VALUES('3V3-6', 3, 6, 'V3');
INSERT INTO `butacas` VALUES('3V3-7', 3, 7, 'V3');
INSERT INTO `butacas` VALUES('3V3-8', 3, 8, 'V3');
INSERT INTO `butacas` VALUES('3V3-9', 3, 9, 'V3');
INSERT INTO `butacas` VALUES('3V4-1', 4, 1, 'V3');
INSERT INTO `butacas` VALUES('3V4-10', 4, 10, 'V3');
INSERT INTO `butacas` VALUES('3V4-11', 4, 11, 'V3');
INSERT INTO `butacas` VALUES('3V4-12', 4, 12, 'V3');
INSERT INTO `butacas` VALUES('3V4-13', 4, 13, 'V3');
INSERT INTO `butacas` VALUES('3V4-14', 4, 14, 'V3');
INSERT INTO `butacas` VALUES('3V4-15', 4, 15, 'V3');
INSERT INTO `butacas` VALUES('3V4-16', 4, 16, 'V3');
INSERT INTO `butacas` VALUES('3V4-2', 4, 2, 'V3');
INSERT INTO `butacas` VALUES('3V4-3', 4, 3, 'V3');
INSERT INTO `butacas` VALUES('3V4-4', 4, 4, 'V3');
INSERT INTO `butacas` VALUES('3V4-5', 4, 5, 'V3');
INSERT INTO `butacas` VALUES('3V4-6', 4, 6, 'V3');
INSERT INTO `butacas` VALUES('3V4-7', 4, 7, 'V3');
INSERT INTO `butacas` VALUES('3V4-8', 4, 8, 'V3');
INSERT INTO `butacas` VALUES('3V4-9', 4, 9, 'V3');
INSERT INTO `butacas` VALUES('3V5-1', 5, 1, 'V3');
INSERT INTO `butacas` VALUES('3V5-10', 5, 10, 'V3');
INSERT INTO `butacas` VALUES('3V5-2', 5, 2, 'V3');
INSERT INTO `butacas` VALUES('3V5-3', 5, 3, 'V3');
INSERT INTO `butacas` VALUES('3V5-4', 5, 4, 'V3');
INSERT INTO `butacas` VALUES('3V5-5', 5, 5, 'V3');
INSERT INTO `butacas` VALUES('3V5-6', 5, 6, 'V3');
INSERT INTO `butacas` VALUES('3V5-7', 5, 7, 'V3');
INSERT INTO `butacas` VALUES('3V5-8', 5, 8, 'V3');
INSERT INTO `butacas` VALUES('3V5-9', 5, 9, 'V3');
INSERT INTO `butacas` VALUES('4A1-10', 1, 10, 'A4');
INSERT INTO `butacas` VALUES('4A1-2', 1, 2, 'A4');
INSERT INTO `butacas` VALUES('4A1-3', 1, 3, 'A4');
INSERT INTO `butacas` VALUES('4A1-4', 1, 4, 'A4');
INSERT INTO `butacas` VALUES('4A1-5', 1, 5, 'A4');
INSERT INTO `butacas` VALUES('4A1-6', 1, 6, 'A4');
INSERT INTO `butacas` VALUES('4A1-7', 1, 7, 'A4');
INSERT INTO `butacas` VALUES('4A1-8', 1, 8, 'A4');
INSERT INTO `butacas` VALUES('4A1-9', 1, 9, 'A4');
INSERT INTO `butacas` VALUES('4A2-1', 2, 1, 'A4');
INSERT INTO `butacas` VALUES('4A2-10', 2, 10, 'A4');
INSERT INTO `butacas` VALUES('4A2-11', 2, 11, 'A4');
INSERT INTO `butacas` VALUES('4A2-12', 2, 12, 'A4');
INSERT INTO `butacas` VALUES('4A2-13', 2, 13, 'A4');
INSERT INTO `butacas` VALUES('4A2-14', 2, 14, 'A4');
INSERT INTO `butacas` VALUES('4A2-15', 2, 15, 'A4');
INSERT INTO `butacas` VALUES('4A2-16', 2, 16, 'A4');
INSERT INTO `butacas` VALUES('4A2-2', 2, 2, 'A4');
INSERT INTO `butacas` VALUES('4A2-3', 2, 3, 'A4');
INSERT INTO `butacas` VALUES('4A2-4', 2, 4, 'A4');
INSERT INTO `butacas` VALUES('4A2-5', 2, 5, 'A4');
INSERT INTO `butacas` VALUES('4A2-6', 2, 6, 'A4');
INSERT INTO `butacas` VALUES('4A2-7', 2, 7, 'A4');
INSERT INTO `butacas` VALUES('4A2-8', 2, 8, 'A4');
INSERT INTO `butacas` VALUES('4A2-9', 2, 9, 'A4');
INSERT INTO `butacas` VALUES('4A3-1', 3, 1, 'A4');
INSERT INTO `butacas` VALUES('4A3-10', 3, 10, 'A4');
INSERT INTO `butacas` VALUES('4A3-11', 3, 11, 'A4');
INSERT INTO `butacas` VALUES('4A3-12', 3, 12, 'A4');
INSERT INTO `butacas` VALUES('4A3-13', 3, 13, 'A4');
INSERT INTO `butacas` VALUES('4A3-14', 3, 14, 'A4');
INSERT INTO `butacas` VALUES('4A3-15', 3, 15, 'A4');
INSERT INTO `butacas` VALUES('4A3-16', 3, 16, 'A4');
INSERT INTO `butacas` VALUES('4A3-2', 3, 2, 'A4');
INSERT INTO `butacas` VALUES('4A3-3', 3, 3, 'A4');
INSERT INTO `butacas` VALUES('4A3-4', 3, 4, 'A4');
INSERT INTO `butacas` VALUES('4A3-5', 3, 5, 'A4');
INSERT INTO `butacas` VALUES('4A3-6', 3, 6, 'A4');
INSERT INTO `butacas` VALUES('4A3-7', 3, 7, 'A4');
INSERT INTO `butacas` VALUES('4A3-8', 3, 8, 'A4');
INSERT INTO `butacas` VALUES('4A3-9', 3, 9, 'A4');
INSERT INTO `butacas` VALUES('4A4-1', 4, 1, 'A4');
INSERT INTO `butacas` VALUES('4A4-10', 4, 10, 'A4');
INSERT INTO `butacas` VALUES('4A4-11', 4, 11, 'A4');
INSERT INTO `butacas` VALUES('4A4-12', 4, 12, 'A4');
INSERT INTO `butacas` VALUES('4A4-13', 4, 13, 'A4');
INSERT INTO `butacas` VALUES('4A4-14', 4, 14, 'A4');
INSERT INTO `butacas` VALUES('4A4-15', 4, 15, 'A4');
INSERT INTO `butacas` VALUES('4A4-16', 4, 16, 'A4');
INSERT INTO `butacas` VALUES('4A4-2', 4, 2, 'A4');
INSERT INTO `butacas` VALUES('4A4-3', 4, 3, 'A4');
INSERT INTO `butacas` VALUES('4A4-4', 4, 4, 'A4');
INSERT INTO `butacas` VALUES('4A4-5', 4, 5, 'A4');
INSERT INTO `butacas` VALUES('4A4-6', 4, 6, 'A4');
INSERT INTO `butacas` VALUES('4A4-7', 4, 7, 'A4');
INSERT INTO `butacas` VALUES('4A4-8', 4, 8, 'A4');
INSERT INTO `butacas` VALUES('4A4-9', 4, 9, 'A4');
INSERT INTO `butacas` VALUES('4A5-1', 5, 1, 'A4');
INSERT INTO `butacas` VALUES('4A5-10', 5, 10, 'A4');
INSERT INTO `butacas` VALUES('4A5-2', 5, 2, 'A4');
INSERT INTO `butacas` VALUES('4A5-3', 5, 3, 'A4');
INSERT INTO `butacas` VALUES('4A5-4', 5, 4, 'A4');
INSERT INTO `butacas` VALUES('4A5-5', 5, 5, 'A4');
INSERT INTO `butacas` VALUES('4A5-6', 5, 6, 'A4');
INSERT INTO `butacas` VALUES('4A5-7', 5, 7, 'A4');
INSERT INTO `butacas` VALUES('4A5-8', 5, 8, 'A4');
INSERT INTO `butacas` VALUES('4A5-9', 5, 9, 'A4');
INSERT INTO `butacas` VALUES('4C1-10', 1, 10, 'C4');
INSERT INTO `butacas` VALUES('4C1-2', 1, 2, 'C4');
INSERT INTO `butacas` VALUES('4C1-3', 1, 3, 'C4');
INSERT INTO `butacas` VALUES('4C1-4', 1, 4, 'C4');
INSERT INTO `butacas` VALUES('4C1-5', 1, 5, 'C4');
INSERT INTO `butacas` VALUES('4C1-6', 1, 6, 'C4');
INSERT INTO `butacas` VALUES('4C1-7', 1, 7, 'C4');
INSERT INTO `butacas` VALUES('4C1-8', 1, 8, 'C4');
INSERT INTO `butacas` VALUES('4C1-9', 1, 9, 'C4');
INSERT INTO `butacas` VALUES('4C2-1', 2, 1, 'C4');
INSERT INTO `butacas` VALUES('4C2-10', 2, 10, 'C4');
INSERT INTO `butacas` VALUES('4C2-11', 2, 11, 'C4');
INSERT INTO `butacas` VALUES('4C2-12', 2, 12, 'C4');
INSERT INTO `butacas` VALUES('4C2-13', 2, 13, 'C4');
INSERT INTO `butacas` VALUES('4C2-14', 2, 14, 'C4');
INSERT INTO `butacas` VALUES('4C2-15', 2, 15, 'C4');
INSERT INTO `butacas` VALUES('4C2-16', 2, 16, 'C4');
INSERT INTO `butacas` VALUES('4C2-2', 2, 2, 'C4');
INSERT INTO `butacas` VALUES('4C2-3', 2, 3, 'C4');
INSERT INTO `butacas` VALUES('4C2-4', 2, 4, 'C4');
INSERT INTO `butacas` VALUES('4C2-5', 2, 5, 'C4');
INSERT INTO `butacas` VALUES('4C2-6', 2, 6, 'C4');
INSERT INTO `butacas` VALUES('4C2-7', 2, 7, 'C4');
INSERT INTO `butacas` VALUES('4C2-8', 2, 8, 'C4');
INSERT INTO `butacas` VALUES('4C2-9', 2, 9, 'C4');
INSERT INTO `butacas` VALUES('4C3-1', 3, 1, 'C4');
INSERT INTO `butacas` VALUES('4C3-10', 3, 10, 'C4');
INSERT INTO `butacas` VALUES('4C3-11', 3, 11, 'C4');
INSERT INTO `butacas` VALUES('4C3-12', 3, 12, 'C4');
INSERT INTO `butacas` VALUES('4C3-13', 3, 13, 'C4');
INSERT INTO `butacas` VALUES('4C3-14', 3, 14, 'C4');
INSERT INTO `butacas` VALUES('4C3-15', 3, 15, 'C4');
INSERT INTO `butacas` VALUES('4C3-16', 3, 16, 'C4');
INSERT INTO `butacas` VALUES('4C3-2', 3, 2, 'C4');
INSERT INTO `butacas` VALUES('4C3-3', 3, 3, 'C4');
INSERT INTO `butacas` VALUES('4C3-4', 3, 4, 'C4');
INSERT INTO `butacas` VALUES('4C3-5', 3, 5, 'C4');
INSERT INTO `butacas` VALUES('4C3-6', 3, 6, 'C4');
INSERT INTO `butacas` VALUES('4C3-7', 3, 7, 'C4');
INSERT INTO `butacas` VALUES('4C3-8', 3, 8, 'C4');
INSERT INTO `butacas` VALUES('4C3-9', 3, 9, 'C4');
INSERT INTO `butacas` VALUES('4C4-1', 4, 1, 'C4');
INSERT INTO `butacas` VALUES('4C4-10', 4, 10, 'C4');
INSERT INTO `butacas` VALUES('4C4-11', 4, 11, 'C4');
INSERT INTO `butacas` VALUES('4C4-12', 4, 12, 'C4');
INSERT INTO `butacas` VALUES('4C4-13', 4, 13, 'C4');
INSERT INTO `butacas` VALUES('4C4-14', 4, 14, 'C4');
INSERT INTO `butacas` VALUES('4C4-15', 4, 15, 'C4');
INSERT INTO `butacas` VALUES('4C4-16', 4, 16, 'C4');
INSERT INTO `butacas` VALUES('4C4-2', 4, 2, 'C4');
INSERT INTO `butacas` VALUES('4C4-3', 4, 3, 'C4');
INSERT INTO `butacas` VALUES('4C4-4', 4, 4, 'C4');
INSERT INTO `butacas` VALUES('4C4-5', 4, 5, 'C4');
INSERT INTO `butacas` VALUES('4C4-6', 4, 6, 'C4');
INSERT INTO `butacas` VALUES('4C4-7', 4, 7, 'C4');
INSERT INTO `butacas` VALUES('4C4-8', 4, 8, 'C4');
INSERT INTO `butacas` VALUES('4C4-9', 4, 9, 'C4');
INSERT INTO `butacas` VALUES('4C5-1', 5, 1, 'C4');
INSERT INTO `butacas` VALUES('4C5-10', 5, 10, 'C4');
INSERT INTO `butacas` VALUES('4C5-2', 5, 2, 'C4');
INSERT INTO `butacas` VALUES('4C5-3', 5, 3, 'C4');
INSERT INTO `butacas` VALUES('4C5-4', 5, 4, 'C4');
INSERT INTO `butacas` VALUES('4C5-5', 5, 5, 'C4');
INSERT INTO `butacas` VALUES('4C5-6', 5, 6, 'C4');
INSERT INTO `butacas` VALUES('4C5-7', 5, 7, 'C4');
INSERT INTO `butacas` VALUES('4C5-8', 5, 8, 'C4');
INSERT INTO `butacas` VALUES('4C5-9', 5, 9, 'C4');
INSERT INTO `butacas` VALUES('4S1-10', 1, 10, 'S4');
INSERT INTO `butacas` VALUES('4S1-2', 1, 2, 'S4');
INSERT INTO `butacas` VALUES('4S1-3', 1, 3, 'S4');
INSERT INTO `butacas` VALUES('4S1-4', 1, 4, 'S4');
INSERT INTO `butacas` VALUES('4S1-5', 1, 5, 'S4');
INSERT INTO `butacas` VALUES('4S1-6', 1, 6, 'S4');
INSERT INTO `butacas` VALUES('4S1-7', 1, 7, 'S4');
INSERT INTO `butacas` VALUES('4S1-8', 1, 8, 'S4');
INSERT INTO `butacas` VALUES('4S1-9', 1, 9, 'S4');
INSERT INTO `butacas` VALUES('4S2-1', 2, 1, 'S4');
INSERT INTO `butacas` VALUES('4S2-10', 2, 10, 'S4');
INSERT INTO `butacas` VALUES('4S2-11', 2, 11, 'S4');
INSERT INTO `butacas` VALUES('4S2-12', 2, 12, 'S4');
INSERT INTO `butacas` VALUES('4S2-13', 2, 13, 'S4');
INSERT INTO `butacas` VALUES('4S2-14', 2, 14, 'S4');
INSERT INTO `butacas` VALUES('4S2-15', 2, 15, 'S4');
INSERT INTO `butacas` VALUES('4S2-16', 2, 16, 'S4');
INSERT INTO `butacas` VALUES('4S2-2', 2, 2, 'S4');
INSERT INTO `butacas` VALUES('4S2-3', 2, 3, 'S4');
INSERT INTO `butacas` VALUES('4S2-4', 2, 4, 'S4');
INSERT INTO `butacas` VALUES('4S2-5', 2, 5, 'S4');
INSERT INTO `butacas` VALUES('4S2-6', 2, 6, 'S4');
INSERT INTO `butacas` VALUES('4S2-7', 2, 7, 'S4');
INSERT INTO `butacas` VALUES('4S2-8', 2, 8, 'S4');
INSERT INTO `butacas` VALUES('4S2-9', 2, 9, 'S4');
INSERT INTO `butacas` VALUES('4S3-1', 3, 1, 'S4');
INSERT INTO `butacas` VALUES('4S3-10', 3, 10, 'S4');
INSERT INTO `butacas` VALUES('4S3-11', 3, 11, 'S4');
INSERT INTO `butacas` VALUES('4S3-12', 3, 12, 'S4');
INSERT INTO `butacas` VALUES('4S3-13', 3, 13, 'S4');
INSERT INTO `butacas` VALUES('4S3-14', 3, 14, 'S4');
INSERT INTO `butacas` VALUES('4S3-15', 3, 15, 'S4');
INSERT INTO `butacas` VALUES('4S3-16', 3, 16, 'S4');
INSERT INTO `butacas` VALUES('4S3-2', 3, 2, 'S4');
INSERT INTO `butacas` VALUES('4S3-3', 3, 3, 'S4');
INSERT INTO `butacas` VALUES('4S3-4', 3, 4, 'S4');
INSERT INTO `butacas` VALUES('4S3-5', 3, 5, 'S4');
INSERT INTO `butacas` VALUES('4S3-6', 3, 6, 'S4');
INSERT INTO `butacas` VALUES('4S3-7', 3, 7, 'S4');
INSERT INTO `butacas` VALUES('4S3-8', 3, 8, 'S4');
INSERT INTO `butacas` VALUES('4S3-9', 3, 9, 'S4');
INSERT INTO `butacas` VALUES('4S4-1', 4, 1, 'S4');
INSERT INTO `butacas` VALUES('4S4-10', 4, 10, 'S4');
INSERT INTO `butacas` VALUES('4S4-11', 4, 11, 'S4');
INSERT INTO `butacas` VALUES('4S4-12', 4, 12, 'S4');
INSERT INTO `butacas` VALUES('4S4-13', 4, 13, 'S4');
INSERT INTO `butacas` VALUES('4S4-14', 4, 14, 'S4');
INSERT INTO `butacas` VALUES('4S4-15', 4, 15, 'S4');
INSERT INTO `butacas` VALUES('4S4-16', 4, 16, 'S4');
INSERT INTO `butacas` VALUES('4S4-2', 4, 2, 'S4');
INSERT INTO `butacas` VALUES('4S4-3', 4, 3, 'S4');
INSERT INTO `butacas` VALUES('4S4-4', 4, 4, 'S4');
INSERT INTO `butacas` VALUES('4S4-5', 4, 5, 'S4');
INSERT INTO `butacas` VALUES('4S4-6', 4, 6, 'S4');
INSERT INTO `butacas` VALUES('4S4-7', 4, 7, 'S4');
INSERT INTO `butacas` VALUES('4S4-8', 4, 8, 'S4');
INSERT INTO `butacas` VALUES('4S4-9', 4, 9, 'S4');
INSERT INTO `butacas` VALUES('4S5-1', 5, 1, 'S4');
INSERT INTO `butacas` VALUES('4S5-10', 5, 10, 'S4');
INSERT INTO `butacas` VALUES('4S5-2', 5, 2, 'S4');
INSERT INTO `butacas` VALUES('4S5-3', 5, 3, 'S4');
INSERT INTO `butacas` VALUES('4S5-4', 5, 4, 'S4');
INSERT INTO `butacas` VALUES('4S5-5', 5, 5, 'S4');
INSERT INTO `butacas` VALUES('4S5-6', 5, 6, 'S4');
INSERT INTO `butacas` VALUES('4S5-7', 5, 7, 'S4');
INSERT INTO `butacas` VALUES('4S5-8', 5, 8, 'S4');
INSERT INTO `butacas` VALUES('4S5-9', 5, 9, 'S4');
INSERT INTO `butacas` VALUES('4T1-10', 1, 10, 'T4');
INSERT INTO `butacas` VALUES('4T1-2', 1, 2, 'T4');
INSERT INTO `butacas` VALUES('4T1-3', 1, 3, 'T4');
INSERT INTO `butacas` VALUES('4T1-4', 1, 4, 'T4');
INSERT INTO `butacas` VALUES('4T1-5', 1, 5, 'T4');
INSERT INTO `butacas` VALUES('4T1-6', 1, 6, 'T4');
INSERT INTO `butacas` VALUES('4T1-7', 1, 7, 'T4');
INSERT INTO `butacas` VALUES('4T1-8', 1, 8, 'T4');
INSERT INTO `butacas` VALUES('4T1-9', 1, 9, 'T4');
INSERT INTO `butacas` VALUES('4T2-1', 2, 1, 'T4');
INSERT INTO `butacas` VALUES('4T2-10', 2, 10, 'T4');
INSERT INTO `butacas` VALUES('4T2-11', 2, 11, 'T4');
INSERT INTO `butacas` VALUES('4T2-12', 2, 12, 'T4');
INSERT INTO `butacas` VALUES('4T2-13', 2, 13, 'T4');
INSERT INTO `butacas` VALUES('4T2-14', 2, 14, 'T4');
INSERT INTO `butacas` VALUES('4T2-15', 2, 15, 'T4');
INSERT INTO `butacas` VALUES('4T2-16', 2, 16, 'T4');
INSERT INTO `butacas` VALUES('4T2-2', 2, 2, 'T4');
INSERT INTO `butacas` VALUES('4T2-3', 2, 3, 'T4');
INSERT INTO `butacas` VALUES('4T2-4', 2, 4, 'T4');
INSERT INTO `butacas` VALUES('4T2-5', 2, 5, 'T4');
INSERT INTO `butacas` VALUES('4T2-6', 2, 6, 'T4');
INSERT INTO `butacas` VALUES('4T2-7', 2, 7, 'T4');
INSERT INTO `butacas` VALUES('4T2-8', 2, 8, 'T4');
INSERT INTO `butacas` VALUES('4T2-9', 2, 9, 'T4');
INSERT INTO `butacas` VALUES('4T3-1', 3, 1, 'T4');
INSERT INTO `butacas` VALUES('4T3-10', 3, 10, 'T4');
INSERT INTO `butacas` VALUES('4T3-11', 3, 11, 'T4');
INSERT INTO `butacas` VALUES('4T3-12', 3, 12, 'T4');
INSERT INTO `butacas` VALUES('4T3-13', 3, 13, 'T4');
INSERT INTO `butacas` VALUES('4T3-14', 3, 14, 'T4');
INSERT INTO `butacas` VALUES('4T3-15', 3, 15, 'T4');
INSERT INTO `butacas` VALUES('4T3-16', 3, 16, 'T4');
INSERT INTO `butacas` VALUES('4T3-2', 3, 2, 'T4');
INSERT INTO `butacas` VALUES('4T3-3', 3, 3, 'T4');
INSERT INTO `butacas` VALUES('4T3-4', 3, 4, 'T4');
INSERT INTO `butacas` VALUES('4T3-5', 3, 5, 'T4');
INSERT INTO `butacas` VALUES('4T3-6', 3, 6, 'T4');
INSERT INTO `butacas` VALUES('4T3-7', 3, 7, 'T4');
INSERT INTO `butacas` VALUES('4T3-8', 3, 8, 'T4');
INSERT INTO `butacas` VALUES('4T3-9', 3, 9, 'T4');
INSERT INTO `butacas` VALUES('4T4-1', 4, 1, 'T4');
INSERT INTO `butacas` VALUES('4T4-10', 4, 10, 'T4');
INSERT INTO `butacas` VALUES('4T4-11', 4, 11, 'T4');
INSERT INTO `butacas` VALUES('4T4-12', 4, 12, 'T4');
INSERT INTO `butacas` VALUES('4T4-13', 4, 13, 'T4');
INSERT INTO `butacas` VALUES('4T4-14', 4, 14, 'T4');
INSERT INTO `butacas` VALUES('4T4-15', 4, 15, 'T4');
INSERT INTO `butacas` VALUES('4T4-16', 4, 16, 'T4');
INSERT INTO `butacas` VALUES('4T4-2', 4, 2, 'T4');
INSERT INTO `butacas` VALUES('4T4-3', 4, 3, 'T4');
INSERT INTO `butacas` VALUES('4T4-4', 4, 4, 'T4');
INSERT INTO `butacas` VALUES('4T4-5', 4, 5, 'T4');
INSERT INTO `butacas` VALUES('4T4-6', 4, 6, 'T4');
INSERT INTO `butacas` VALUES('4T4-7', 4, 7, 'T4');
INSERT INTO `butacas` VALUES('4T4-8', 4, 8, 'T4');
INSERT INTO `butacas` VALUES('4T4-9', 4, 9, 'T4');
INSERT INTO `butacas` VALUES('4T5-1', 5, 1, 'T4');
INSERT INTO `butacas` VALUES('4T5-10', 5, 10, 'T4');
INSERT INTO `butacas` VALUES('4T5-2', 5, 2, 'T4');
INSERT INTO `butacas` VALUES('4T5-3', 5, 3, 'T4');
INSERT INTO `butacas` VALUES('4T5-4', 5, 4, 'T4');
INSERT INTO `butacas` VALUES('4T5-5', 5, 5, 'T4');
INSERT INTO `butacas` VALUES('4T5-6', 5, 6, 'T4');
INSERT INTO `butacas` VALUES('4T5-7', 5, 7, 'T4');
INSERT INTO `butacas` VALUES('4T5-8', 5, 8, 'T4');
INSERT INTO `butacas` VALUES('4T5-9', 5, 9, 'T4');
INSERT INTO `butacas` VALUES('4V1-10', 1, 10, 'V4');
INSERT INTO `butacas` VALUES('4V1-2', 1, 2, 'V4');
INSERT INTO `butacas` VALUES('4V1-3', 1, 3, 'V4');
INSERT INTO `butacas` VALUES('4V1-4', 1, 4, 'V4');
INSERT INTO `butacas` VALUES('4V1-5', 1, 5, 'V4');
INSERT INTO `butacas` VALUES('4V1-6', 1, 6, 'V4');
INSERT INTO `butacas` VALUES('4V1-7', 1, 7, 'V4');
INSERT INTO `butacas` VALUES('4V1-8', 1, 8, 'V4');
INSERT INTO `butacas` VALUES('4V1-9', 1, 9, 'V4');
INSERT INTO `butacas` VALUES('4V2-1', 2, 1, 'V4');
INSERT INTO `butacas` VALUES('4V2-10', 2, 10, 'V4');
INSERT INTO `butacas` VALUES('4V2-11', 2, 11, 'V4');
INSERT INTO `butacas` VALUES('4V2-12', 2, 12, 'V4');
INSERT INTO `butacas` VALUES('4V2-13', 2, 13, 'V4');
INSERT INTO `butacas` VALUES('4V2-14', 2, 14, 'V4');
INSERT INTO `butacas` VALUES('4V2-15', 2, 15, 'V4');
INSERT INTO `butacas` VALUES('4V2-16', 2, 16, 'V4');
INSERT INTO `butacas` VALUES('4V2-2', 2, 2, 'V4');
INSERT INTO `butacas` VALUES('4V2-3', 2, 3, 'V4');
INSERT INTO `butacas` VALUES('4V2-4', 2, 4, 'V4');
INSERT INTO `butacas` VALUES('4V2-5', 2, 5, 'V4');
INSERT INTO `butacas` VALUES('4V2-6', 2, 6, 'V4');
INSERT INTO `butacas` VALUES('4V2-7', 2, 7, 'V4');
INSERT INTO `butacas` VALUES('4V2-8', 2, 8, 'V4');
INSERT INTO `butacas` VALUES('4V2-9', 2, 9, 'V4');
INSERT INTO `butacas` VALUES('4V3-1', 3, 1, 'V4');
INSERT INTO `butacas` VALUES('4V3-10', 3, 10, 'V4');
INSERT INTO `butacas` VALUES('4V3-11', 3, 11, 'V4');
INSERT INTO `butacas` VALUES('4V3-12', 3, 12, 'V4');
INSERT INTO `butacas` VALUES('4V3-13', 3, 13, 'V4');
INSERT INTO `butacas` VALUES('4V3-14', 3, 14, 'V4');
INSERT INTO `butacas` VALUES('4V3-15', 3, 15, 'V4');
INSERT INTO `butacas` VALUES('4V3-16', 3, 16, 'V4');
INSERT INTO `butacas` VALUES('4V3-2', 3, 2, 'V4');
INSERT INTO `butacas` VALUES('4V3-3', 3, 3, 'V4');
INSERT INTO `butacas` VALUES('4V3-4', 3, 4, 'V4');
INSERT INTO `butacas` VALUES('4V3-5', 3, 5, 'V4');
INSERT INTO `butacas` VALUES('4V3-6', 3, 6, 'V4');
INSERT INTO `butacas` VALUES('4V3-7', 3, 7, 'V4');
INSERT INTO `butacas` VALUES('4V3-8', 3, 8, 'V4');
INSERT INTO `butacas` VALUES('4V3-9', 3, 9, 'V4');
INSERT INTO `butacas` VALUES('4V4-1', 4, 1, 'V4');
INSERT INTO `butacas` VALUES('4V4-10', 4, 10, 'V4');
INSERT INTO `butacas` VALUES('4V4-11', 4, 11, 'V4');
INSERT INTO `butacas` VALUES('4V4-12', 4, 12, 'V4');
INSERT INTO `butacas` VALUES('4V4-13', 4, 13, 'V4');
INSERT INTO `butacas` VALUES('4V4-14', 4, 14, 'V4');
INSERT INTO `butacas` VALUES('4V4-15', 4, 15, 'V4');
INSERT INTO `butacas` VALUES('4V4-16', 4, 16, 'V4');
INSERT INTO `butacas` VALUES('4V4-2', 4, 2, 'V4');
INSERT INTO `butacas` VALUES('4V4-3', 4, 3, 'V4');
INSERT INTO `butacas` VALUES('4V4-4', 4, 4, 'V4');
INSERT INTO `butacas` VALUES('4V4-5', 4, 5, 'V4');
INSERT INTO `butacas` VALUES('4V4-6', 4, 6, 'V4');
INSERT INTO `butacas` VALUES('4V4-7', 4, 7, 'V4');
INSERT INTO `butacas` VALUES('4V4-8', 4, 8, 'V4');
INSERT INTO `butacas` VALUES('4V4-9', 4, 9, 'V4');
INSERT INTO `butacas` VALUES('4V5-1', 5, 1, 'V4');
INSERT INTO `butacas` VALUES('4V5-10', 5, 10, 'V4');
INSERT INTO `butacas` VALUES('4V5-2', 5, 2, 'V4');
INSERT INTO `butacas` VALUES('4V5-3', 5, 3, 'V4');
INSERT INTO `butacas` VALUES('4V5-4', 5, 4, 'V4');
INSERT INTO `butacas` VALUES('4V5-5', 5, 5, 'V4');
INSERT INTO `butacas` VALUES('4V5-6', 5, 6, 'V4');
INSERT INTO `butacas` VALUES('4V5-7', 5, 7, 'V4');
INSERT INTO `butacas` VALUES('4V5-8', 5, 8, 'V4');
INSERT INTO `butacas` VALUES('4V5-9', 5, 9, 'V4');
INSERT INTO `butacas` VALUES('54T-2', 4, 2, 'T5');
INSERT INTO `butacas` VALUES('5A1-10', 1, 10, 'A5');
INSERT INTO `butacas` VALUES('5A1-2', 1, 2, 'A5');
INSERT INTO `butacas` VALUES('5A1-3', 1, 3, 'A5');
INSERT INTO `butacas` VALUES('5A1-4', 1, 4, 'A5');
INSERT INTO `butacas` VALUES('5A1-5', 1, 5, 'A5');
INSERT INTO `butacas` VALUES('5A1-6', 1, 6, 'A5');
INSERT INTO `butacas` VALUES('5A1-7', 1, 7, 'A5');
INSERT INTO `butacas` VALUES('5A1-8', 1, 8, 'A5');
INSERT INTO `butacas` VALUES('5A1-9', 1, 9, 'A5');
INSERT INTO `butacas` VALUES('5A2-1', 2, 1, 'A5');
INSERT INTO `butacas` VALUES('5A2-10', 2, 10, 'A5');
INSERT INTO `butacas` VALUES('5A2-11', 2, 11, 'A5');
INSERT INTO `butacas` VALUES('5A2-12', 2, 12, 'A5');
INSERT INTO `butacas` VALUES('5A2-13', 2, 13, 'A5');
INSERT INTO `butacas` VALUES('5A2-14', 2, 14, 'A5');
INSERT INTO `butacas` VALUES('5A2-15', 2, 15, 'A5');
INSERT INTO `butacas` VALUES('5A2-16', 2, 16, 'A5');
INSERT INTO `butacas` VALUES('5A2-2', 2, 2, 'A5');
INSERT INTO `butacas` VALUES('5A2-3', 2, 3, 'A5');
INSERT INTO `butacas` VALUES('5A2-4', 2, 4, 'A5');
INSERT INTO `butacas` VALUES('5A2-5', 2, 5, 'A5');
INSERT INTO `butacas` VALUES('5A2-6', 2, 6, 'A5');
INSERT INTO `butacas` VALUES('5A2-7', 2, 7, 'A5');
INSERT INTO `butacas` VALUES('5A2-8', 2, 8, 'A5');
INSERT INTO `butacas` VALUES('5A2-9', 2, 9, 'A5');
INSERT INTO `butacas` VALUES('5A3-1', 3, 1, 'A5');
INSERT INTO `butacas` VALUES('5A3-10', 3, 10, 'A5');
INSERT INTO `butacas` VALUES('5A3-11', 3, 11, 'A5');
INSERT INTO `butacas` VALUES('5A3-12', 3, 12, 'A5');
INSERT INTO `butacas` VALUES('5A3-13', 3, 13, 'A5');
INSERT INTO `butacas` VALUES('5A3-14', 3, 14, 'A5');
INSERT INTO `butacas` VALUES('5A3-15', 3, 15, 'A5');
INSERT INTO `butacas` VALUES('5A3-16', 3, 16, 'A5');
INSERT INTO `butacas` VALUES('5A3-2', 3, 2, 'A5');
INSERT INTO `butacas` VALUES('5A3-3', 3, 3, 'A5');
INSERT INTO `butacas` VALUES('5A3-4', 3, 4, 'A5');
INSERT INTO `butacas` VALUES('5A3-5', 3, 5, 'A5');
INSERT INTO `butacas` VALUES('5A3-6', 3, 6, 'A5');
INSERT INTO `butacas` VALUES('5A3-7', 3, 7, 'A5');
INSERT INTO `butacas` VALUES('5A3-8', 3, 8, 'A5');
INSERT INTO `butacas` VALUES('5A3-9', 3, 9, 'A5');
INSERT INTO `butacas` VALUES('5A4-1', 4, 1, 'A5');
INSERT INTO `butacas` VALUES('5A4-10', 4, 10, 'A5');
INSERT INTO `butacas` VALUES('5A4-11', 4, 11, 'A5');
INSERT INTO `butacas` VALUES('5A4-12', 4, 12, 'A5');
INSERT INTO `butacas` VALUES('5A4-13', 4, 13, 'A5');
INSERT INTO `butacas` VALUES('5A4-14', 4, 14, 'A5');
INSERT INTO `butacas` VALUES('5A4-15', 4, 15, 'A5');
INSERT INTO `butacas` VALUES('5A4-16', 4, 16, 'A5');
INSERT INTO `butacas` VALUES('5A4-2', 4, 2, 'A5');
INSERT INTO `butacas` VALUES('5A4-3', 4, 3, 'A5');
INSERT INTO `butacas` VALUES('5A4-4', 4, 4, 'A5');
INSERT INTO `butacas` VALUES('5A4-5', 4, 5, 'A5');
INSERT INTO `butacas` VALUES('5A4-6', 4, 6, 'A5');
INSERT INTO `butacas` VALUES('5A4-7', 4, 7, 'A5');
INSERT INTO `butacas` VALUES('5A4-8', 4, 8, 'A5');
INSERT INTO `butacas` VALUES('5A4-9', 4, 9, 'A5');
INSERT INTO `butacas` VALUES('5A5-1', 5, 1, 'A5');
INSERT INTO `butacas` VALUES('5A5-10', 5, 10, 'A5');
INSERT INTO `butacas` VALUES('5A5-2', 5, 2, 'A5');
INSERT INTO `butacas` VALUES('5A5-3', 5, 3, 'A5');
INSERT INTO `butacas` VALUES('5A5-4', 5, 4, 'A5');
INSERT INTO `butacas` VALUES('5A5-5', 5, 5, 'A5');
INSERT INTO `butacas` VALUES('5A5-6', 5, 6, 'A5');
INSERT INTO `butacas` VALUES('5A5-7', 5, 7, 'A5');
INSERT INTO `butacas` VALUES('5A5-8', 5, 8, 'A5');
INSERT INTO `butacas` VALUES('5A5-9', 5, 9, 'A5');
INSERT INTO `butacas` VALUES('5C1-10', 1, 10, 'C5');
INSERT INTO `butacas` VALUES('5C1-2', 1, 2, 'C5');
INSERT INTO `butacas` VALUES('5C1-3', 1, 3, 'C5');
INSERT INTO `butacas` VALUES('5C1-4', 1, 4, 'C5');
INSERT INTO `butacas` VALUES('5C1-5', 1, 5, 'C5');
INSERT INTO `butacas` VALUES('5C1-6', 1, 6, 'C5');
INSERT INTO `butacas` VALUES('5C1-7', 1, 7, 'C5');
INSERT INTO `butacas` VALUES('5C1-8', 1, 8, 'C5');
INSERT INTO `butacas` VALUES('5C1-9', 1, 9, 'C5');
INSERT INTO `butacas` VALUES('5C2-1', 2, 1, 'C5');
INSERT INTO `butacas` VALUES('5C2-10', 2, 10, 'C5');
INSERT INTO `butacas` VALUES('5C2-11', 2, 11, 'C5');
INSERT INTO `butacas` VALUES('5C2-12', 2, 12, 'C5');
INSERT INTO `butacas` VALUES('5C2-13', 2, 13, 'C5');
INSERT INTO `butacas` VALUES('5C2-14', 2, 14, 'C5');
INSERT INTO `butacas` VALUES('5C2-15', 2, 15, 'C5');
INSERT INTO `butacas` VALUES('5C2-16', 2, 16, 'C5');
INSERT INTO `butacas` VALUES('5C2-2', 2, 2, 'C5');
INSERT INTO `butacas` VALUES('5C2-3', 2, 3, 'C5');
INSERT INTO `butacas` VALUES('5C2-4', 2, 4, 'C5');
INSERT INTO `butacas` VALUES('5C2-5', 2, 5, 'C5');
INSERT INTO `butacas` VALUES('5C2-6', 2, 6, 'C5');
INSERT INTO `butacas` VALUES('5C2-7', 2, 7, 'C5');
INSERT INTO `butacas` VALUES('5C2-8', 2, 8, 'C5');
INSERT INTO `butacas` VALUES('5C2-9', 2, 9, 'C5');
INSERT INTO `butacas` VALUES('5C3-1', 3, 1, 'C5');
INSERT INTO `butacas` VALUES('5C3-10', 3, 10, 'C5');
INSERT INTO `butacas` VALUES('5C3-11', 3, 11, 'C5');
INSERT INTO `butacas` VALUES('5C3-12', 3, 12, 'C5');
INSERT INTO `butacas` VALUES('5C3-13', 3, 13, 'C5');
INSERT INTO `butacas` VALUES('5C3-14', 3, 14, 'C5');
INSERT INTO `butacas` VALUES('5C3-15', 3, 15, 'C5');
INSERT INTO `butacas` VALUES('5C3-16', 3, 16, 'C5');
INSERT INTO `butacas` VALUES('5C3-2', 3, 2, 'C5');
INSERT INTO `butacas` VALUES('5C3-3', 3, 3, 'C5');
INSERT INTO `butacas` VALUES('5C3-4', 3, 4, 'C5');
INSERT INTO `butacas` VALUES('5C3-5', 3, 5, 'C5');
INSERT INTO `butacas` VALUES('5C3-6', 3, 6, 'C5');
INSERT INTO `butacas` VALUES('5C3-7', 3, 7, 'C5');
INSERT INTO `butacas` VALUES('5C3-8', 3, 8, 'C5');
INSERT INTO `butacas` VALUES('5C3-9', 3, 9, 'C5');
INSERT INTO `butacas` VALUES('5C4-1', 4, 1, 'C5');
INSERT INTO `butacas` VALUES('5C4-10', 4, 10, 'C5');
INSERT INTO `butacas` VALUES('5C4-11', 4, 11, 'C5');
INSERT INTO `butacas` VALUES('5C4-12', 4, 12, 'C5');
INSERT INTO `butacas` VALUES('5C4-13', 4, 13, 'C5');
INSERT INTO `butacas` VALUES('5C4-14', 4, 14, 'C5');
INSERT INTO `butacas` VALUES('5C4-15', 4, 15, 'C5');
INSERT INTO `butacas` VALUES('5C4-16', 4, 16, 'C5');
INSERT INTO `butacas` VALUES('5C4-2', 4, 2, 'C5');
INSERT INTO `butacas` VALUES('5C4-3', 4, 3, 'C5');
INSERT INTO `butacas` VALUES('5C4-4', 4, 4, 'C5');
INSERT INTO `butacas` VALUES('5C4-5', 4, 5, 'C5');
INSERT INTO `butacas` VALUES('5C4-6', 4, 6, 'C5');
INSERT INTO `butacas` VALUES('5C4-7', 4, 7, 'C5');
INSERT INTO `butacas` VALUES('5C4-8', 4, 8, 'C5');
INSERT INTO `butacas` VALUES('5C4-9', 4, 9, 'C5');
INSERT INTO `butacas` VALUES('5C5-1', 5, 1, 'C5');
INSERT INTO `butacas` VALUES('5C5-10', 5, 10, 'C5');
INSERT INTO `butacas` VALUES('5C5-2', 5, 2, 'C5');
INSERT INTO `butacas` VALUES('5C5-3', 5, 3, 'C5');
INSERT INTO `butacas` VALUES('5C5-4', 5, 4, 'C5');
INSERT INTO `butacas` VALUES('5C5-5', 5, 5, 'C5');
INSERT INTO `butacas` VALUES('5C5-6', 5, 6, 'C5');
INSERT INTO `butacas` VALUES('5C5-7', 5, 7, 'C5');
INSERT INTO `butacas` VALUES('5C5-8', 5, 8, 'C5');
INSERT INTO `butacas` VALUES('5C5-9', 5, 9, 'C5');
INSERT INTO `butacas` VALUES('5S1-10', 1, 10, 'S5');
INSERT INTO `butacas` VALUES('5S1-2', 1, 2, 'S5');
INSERT INTO `butacas` VALUES('5S1-3', 1, 3, 'S5');
INSERT INTO `butacas` VALUES('5S1-4', 1, 4, 'S5');
INSERT INTO `butacas` VALUES('5S1-5', 1, 5, 'S5');
INSERT INTO `butacas` VALUES('5S1-6', 1, 6, 'S5');
INSERT INTO `butacas` VALUES('5S1-7', 1, 7, 'S5');
INSERT INTO `butacas` VALUES('5S1-8', 1, 8, 'S5');
INSERT INTO `butacas` VALUES('5S1-9', 1, 9, 'S5');
INSERT INTO `butacas` VALUES('5S2-1', 2, 1, 'S5');
INSERT INTO `butacas` VALUES('5S2-10', 2, 10, 'S5');
INSERT INTO `butacas` VALUES('5S2-11', 2, 11, 'S5');
INSERT INTO `butacas` VALUES('5S2-12', 2, 12, 'S5');
INSERT INTO `butacas` VALUES('5S2-13', 2, 13, 'S5');
INSERT INTO `butacas` VALUES('5S2-14', 2, 14, 'S5');
INSERT INTO `butacas` VALUES('5S2-15', 2, 15, 'S5');
INSERT INTO `butacas` VALUES('5S2-16', 2, 16, 'S5');
INSERT INTO `butacas` VALUES('5S2-2', 2, 2, 'S5');
INSERT INTO `butacas` VALUES('5S2-3', 2, 3, 'S5');
INSERT INTO `butacas` VALUES('5S2-4', 2, 4, 'S5');
INSERT INTO `butacas` VALUES('5S2-5', 2, 5, 'S5');
INSERT INTO `butacas` VALUES('5S2-6', 2, 6, 'S5');
INSERT INTO `butacas` VALUES('5S2-7', 2, 7, 'S5');
INSERT INTO `butacas` VALUES('5S2-8', 2, 8, 'S5');
INSERT INTO `butacas` VALUES('5S2-9', 2, 9, 'S5');
INSERT INTO `butacas` VALUES('5S3-1', 3, 1, 'S5');
INSERT INTO `butacas` VALUES('5S3-10', 3, 10, 'S5');
INSERT INTO `butacas` VALUES('5S3-11', 3, 11, 'S5');
INSERT INTO `butacas` VALUES('5S3-12', 3, 12, 'S5');
INSERT INTO `butacas` VALUES('5S3-13', 3, 13, 'S5');
INSERT INTO `butacas` VALUES('5S3-14', 3, 14, 'S5');
INSERT INTO `butacas` VALUES('5S3-15', 3, 15, 'S5');
INSERT INTO `butacas` VALUES('5S3-16', 3, 16, 'S5');
INSERT INTO `butacas` VALUES('5S3-2', 3, 2, 'S5');
INSERT INTO `butacas` VALUES('5S3-3', 3, 3, 'S5');
INSERT INTO `butacas` VALUES('5S3-4', 3, 4, 'S5');
INSERT INTO `butacas` VALUES('5S3-5', 3, 5, 'S5');
INSERT INTO `butacas` VALUES('5S3-6', 3, 6, 'S5');
INSERT INTO `butacas` VALUES('5S3-7', 3, 7, 'S5');
INSERT INTO `butacas` VALUES('5S3-8', 3, 8, 'S5');
INSERT INTO `butacas` VALUES('5S3-9', 3, 9, 'S5');
INSERT INTO `butacas` VALUES('5S4-1', 4, 1, 'S5');
INSERT INTO `butacas` VALUES('5S4-10', 4, 10, 'S5');
INSERT INTO `butacas` VALUES('5S4-11', 4, 11, 'S5');
INSERT INTO `butacas` VALUES('5S4-12', 4, 12, 'S5');
INSERT INTO `butacas` VALUES('5S4-13', 4, 13, 'S5');
INSERT INTO `butacas` VALUES('5S4-14', 4, 14, 'S5');
INSERT INTO `butacas` VALUES('5S4-15', 4, 15, 'S5');
INSERT INTO `butacas` VALUES('5S4-16', 4, 16, 'S5');
INSERT INTO `butacas` VALUES('5S4-2', 4, 2, 'S5');
INSERT INTO `butacas` VALUES('5S4-3', 4, 3, 'S5');
INSERT INTO `butacas` VALUES('5S4-4', 4, 4, 'S5');
INSERT INTO `butacas` VALUES('5S4-5', 4, 5, 'S5');
INSERT INTO `butacas` VALUES('5S4-6', 4, 6, 'S5');
INSERT INTO `butacas` VALUES('5S4-7', 4, 7, 'S5');
INSERT INTO `butacas` VALUES('5S4-8', 4, 8, 'S5');
INSERT INTO `butacas` VALUES('5S4-9', 4, 9, 'S5');
INSERT INTO `butacas` VALUES('5S5-1', 5, 1, 'S5');
INSERT INTO `butacas` VALUES('5S5-10', 5, 10, 'S5');
INSERT INTO `butacas` VALUES('5S5-2', 5, 2, 'S5');
INSERT INTO `butacas` VALUES('5S5-3', 5, 3, 'S5');
INSERT INTO `butacas` VALUES('5S5-4', 5, 4, 'S5');
INSERT INTO `butacas` VALUES('5S5-5', 5, 5, 'S5');
INSERT INTO `butacas` VALUES('5S5-6', 5, 6, 'S5');
INSERT INTO `butacas` VALUES('5S5-7', 5, 7, 'S5');
INSERT INTO `butacas` VALUES('5S5-8', 5, 8, 'S5');
INSERT INTO `butacas` VALUES('5S5-9', 5, 9, 'S5');
INSERT INTO `butacas` VALUES('5T1-10', 1, 10, 'T5');
INSERT INTO `butacas` VALUES('5T1-2', 1, 2, 'T5');
INSERT INTO `butacas` VALUES('5T1-3', 1, 3, 'T5');
INSERT INTO `butacas` VALUES('5T1-4', 1, 4, 'T5');
INSERT INTO `butacas` VALUES('5T1-5', 1, 5, 'T5');
INSERT INTO `butacas` VALUES('5T1-6', 1, 6, 'T5');
INSERT INTO `butacas` VALUES('5T1-7', 1, 7, 'T5');
INSERT INTO `butacas` VALUES('5T1-8', 1, 8, 'T5');
INSERT INTO `butacas` VALUES('5T1-9', 1, 9, 'T5');
INSERT INTO `butacas` VALUES('5T2-1', 2, 1, 'T5');
INSERT INTO `butacas` VALUES('5T2-10', 2, 10, 'T5');
INSERT INTO `butacas` VALUES('5T2-11', 2, 11, 'T5');
INSERT INTO `butacas` VALUES('5T2-12', 2, 12, 'T5');
INSERT INTO `butacas` VALUES('5T2-13', 2, 13, 'T5');
INSERT INTO `butacas` VALUES('5T2-14', 2, 14, 'T5');
INSERT INTO `butacas` VALUES('5T2-15', 2, 15, 'T5');
INSERT INTO `butacas` VALUES('5T2-16', 2, 16, 'T5');
INSERT INTO `butacas` VALUES('5T2-2', 2, 2, 'T5');
INSERT INTO `butacas` VALUES('5T2-3', 2, 3, 'T5');
INSERT INTO `butacas` VALUES('5T2-4', 2, 4, 'T5');
INSERT INTO `butacas` VALUES('5T2-5', 2, 5, 'T5');
INSERT INTO `butacas` VALUES('5T2-6', 2, 6, 'T5');
INSERT INTO `butacas` VALUES('5T2-7', 2, 7, 'T5');
INSERT INTO `butacas` VALUES('5T2-8', 2, 8, 'T5');
INSERT INTO `butacas` VALUES('5T2-9', 2, 9, 'T5');
INSERT INTO `butacas` VALUES('5T3-1', 3, 1, 'T5');
INSERT INTO `butacas` VALUES('5T3-10', 3, 10, 'T5');
INSERT INTO `butacas` VALUES('5T3-11', 3, 11, 'T5');
INSERT INTO `butacas` VALUES('5T3-12', 3, 12, 'T5');
INSERT INTO `butacas` VALUES('5T3-13', 3, 13, 'T5');
INSERT INTO `butacas` VALUES('5T3-14', 3, 14, 'T5');
INSERT INTO `butacas` VALUES('5T3-15', 3, 15, 'T5');
INSERT INTO `butacas` VALUES('5T3-16', 3, 16, 'T5');
INSERT INTO `butacas` VALUES('5T3-2', 3, 2, 'T5');
INSERT INTO `butacas` VALUES('5T3-3', 3, 3, 'T5');
INSERT INTO `butacas` VALUES('5T3-4', 3, 4, 'T5');
INSERT INTO `butacas` VALUES('5T3-5', 3, 5, 'T5');
INSERT INTO `butacas` VALUES('5T3-6', 3, 6, 'T5');
INSERT INTO `butacas` VALUES('5T3-7', 3, 7, 'T5');
INSERT INTO `butacas` VALUES('5T3-8', 3, 8, 'T5');
INSERT INTO `butacas` VALUES('5T3-9', 3, 9, 'T5');
INSERT INTO `butacas` VALUES('5T4-1', 4, 1, 'T5');
INSERT INTO `butacas` VALUES('5T4-10', 4, 10, 'T5');
INSERT INTO `butacas` VALUES('5T4-11', 4, 11, 'T5');
INSERT INTO `butacas` VALUES('5T4-12', 4, 12, 'T5');
INSERT INTO `butacas` VALUES('5T4-13', 4, 13, 'T5');
INSERT INTO `butacas` VALUES('5T4-14', 4, 14, 'T5');
INSERT INTO `butacas` VALUES('5T4-15', 4, 15, 'T5');
INSERT INTO `butacas` VALUES('5T4-16', 4, 16, 'T5');
INSERT INTO `butacas` VALUES('5T4-3', 4, 3, 'T5');
INSERT INTO `butacas` VALUES('5T4-4', 4, 4, 'T5');
INSERT INTO `butacas` VALUES('5T4-5', 4, 5, 'T5');
INSERT INTO `butacas` VALUES('5T4-6', 4, 6, 'T5');
INSERT INTO `butacas` VALUES('5T4-7', 4, 7, 'T5');
INSERT INTO `butacas` VALUES('5T4-8', 4, 8, 'T5');
INSERT INTO `butacas` VALUES('5T4-9', 4, 9, 'T5');
INSERT INTO `butacas` VALUES('5T5-1', 5, 1, 'T5');
INSERT INTO `butacas` VALUES('5T5-10', 5, 10, 'T5');
INSERT INTO `butacas` VALUES('5T5-2', 5, 2, 'T5');
INSERT INTO `butacas` VALUES('5T5-3', 5, 3, 'T5');
INSERT INTO `butacas` VALUES('5T5-4', 5, 4, 'T5');
INSERT INTO `butacas` VALUES('5T5-5', 5, 5, 'T5');
INSERT INTO `butacas` VALUES('5T5-6', 5, 6, 'T5');
INSERT INTO `butacas` VALUES('5T5-7', 5, 7, 'T5');
INSERT INTO `butacas` VALUES('5T5-8', 5, 8, 'T5');
INSERT INTO `butacas` VALUES('5T5-9', 5, 9, 'T5');
INSERT INTO `butacas` VALUES('5V1-10', 1, 10, 'V5');
INSERT INTO `butacas` VALUES('5V1-2', 1, 2, 'V5');
INSERT INTO `butacas` VALUES('5V1-3', 1, 3, 'V5');
INSERT INTO `butacas` VALUES('5V1-4', 1, 4, 'V5');
INSERT INTO `butacas` VALUES('5V1-5', 1, 5, 'V5');
INSERT INTO `butacas` VALUES('5V1-6', 1, 6, 'V5');
INSERT INTO `butacas` VALUES('5V1-7', 1, 7, 'V5');
INSERT INTO `butacas` VALUES('5V1-8', 1, 8, 'V5');
INSERT INTO `butacas` VALUES('5V1-9', 1, 9, 'V5');
INSERT INTO `butacas` VALUES('5V2-1', 2, 1, 'V5');
INSERT INTO `butacas` VALUES('5V2-10', 2, 10, 'V5');
INSERT INTO `butacas` VALUES('5V2-11', 2, 11, 'V5');
INSERT INTO `butacas` VALUES('5V2-12', 2, 12, 'V5');
INSERT INTO `butacas` VALUES('5V2-13', 2, 13, 'V5');
INSERT INTO `butacas` VALUES('5V2-14', 2, 14, 'V5');
INSERT INTO `butacas` VALUES('5V2-15', 2, 15, 'V5');
INSERT INTO `butacas` VALUES('5V2-16', 2, 16, 'V5');
INSERT INTO `butacas` VALUES('5V2-2', 2, 2, 'V5');
INSERT INTO `butacas` VALUES('5V2-3', 2, 3, 'V5');
INSERT INTO `butacas` VALUES('5V2-4', 2, 4, 'V5');
INSERT INTO `butacas` VALUES('5V2-5', 2, 5, 'V5');
INSERT INTO `butacas` VALUES('5V2-6', 2, 6, 'V5');
INSERT INTO `butacas` VALUES('5V2-7', 2, 7, 'V5');
INSERT INTO `butacas` VALUES('5V2-8', 2, 8, 'V5');
INSERT INTO `butacas` VALUES('5V2-9', 2, 9, 'V5');
INSERT INTO `butacas` VALUES('5V3-1', 3, 1, 'V5');
INSERT INTO `butacas` VALUES('5V3-10', 3, 10, 'V5');
INSERT INTO `butacas` VALUES('5V3-11', 3, 11, 'V5');
INSERT INTO `butacas` VALUES('5V3-12', 3, 12, 'V5');
INSERT INTO `butacas` VALUES('5V3-13', 3, 13, 'V5');
INSERT INTO `butacas` VALUES('5V3-14', 3, 14, 'V5');
INSERT INTO `butacas` VALUES('5V3-15', 3, 15, 'V5');
INSERT INTO `butacas` VALUES('5V3-16', 3, 16, 'V5');
INSERT INTO `butacas` VALUES('5V3-2', 3, 2, 'V5');
INSERT INTO `butacas` VALUES('5V3-3', 3, 3, 'V5');
INSERT INTO `butacas` VALUES('5V3-4', 3, 4, 'V5');
INSERT INTO `butacas` VALUES('5V3-5', 3, 5, 'V5');
INSERT INTO `butacas` VALUES('5V3-6', 3, 6, 'V5');
INSERT INTO `butacas` VALUES('5V3-7', 3, 7, 'V5');
INSERT INTO `butacas` VALUES('5V3-8', 3, 8, 'V5');
INSERT INTO `butacas` VALUES('5V3-9', 3, 9, 'V5');
INSERT INTO `butacas` VALUES('5V4-1', 4, 1, 'V5');
INSERT INTO `butacas` VALUES('5V4-10', 4, 10, 'V5');
INSERT INTO `butacas` VALUES('5V4-11', 4, 11, 'V5');
INSERT INTO `butacas` VALUES('5V4-12', 4, 12, 'V5');
INSERT INTO `butacas` VALUES('5V4-13', 4, 13, 'V5');
INSERT INTO `butacas` VALUES('5V4-14', 4, 14, 'V5');
INSERT INTO `butacas` VALUES('5V4-15', 4, 15, 'V5');
INSERT INTO `butacas` VALUES('5V4-16', 4, 16, 'V5');
INSERT INTO `butacas` VALUES('5V4-2', 4, 2, 'V5');
INSERT INTO `butacas` VALUES('5V4-3', 4, 3, 'V5');
INSERT INTO `butacas` VALUES('5V4-4', 4, 4, 'V5');
INSERT INTO `butacas` VALUES('5V4-5', 4, 5, 'V5');
INSERT INTO `butacas` VALUES('5V4-6', 4, 6, 'V5');
INSERT INTO `butacas` VALUES('5V4-7', 4, 7, 'V5');
INSERT INTO `butacas` VALUES('5V4-8', 4, 8, 'V5');
INSERT INTO `butacas` VALUES('5V4-9', 4, 9, 'V5');
INSERT INTO `butacas` VALUES('5V5-1', 5, 1, 'V5');
INSERT INTO `butacas` VALUES('5V5-10', 5, 10, 'V5');
INSERT INTO `butacas` VALUES('5V5-2', 5, 2, 'V5');
INSERT INTO `butacas` VALUES('5V5-3', 5, 3, 'V5');
INSERT INTO `butacas` VALUES('5V5-4', 5, 4, 'V5');
INSERT INTO `butacas` VALUES('5V5-5', 5, 5, 'V5');
INSERT INTO `butacas` VALUES('5V5-6', 5, 6, 'V5');
INSERT INTO `butacas` VALUES('5V5-7', 5, 7, 'V5');
INSERT INTO `butacas` VALUES('5V5-8', 5, 8, 'V5');
INSERT INTO `butacas` VALUES('5V5-9', 5, 9, 'V5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `dni` varchar(25) DEFAULT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellidos` varchar(60) NOT NULL,
  `mail` varchar(60) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  `metodo` varchar(10) NOT NULL,
  `fecha_nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` VALUES('88569321K', 'josefa', 'ramos perez', 'josefita@hotmail.com', 'ddfbe9c0cbf8798315a2c7a98d04c757', 'MD5', '1971-07-05');
INSERT INTO `clientes` VALUES('66789965Y', 'Maria', 'Lapiz Boli', 'maria@gmail.com', '372e49d242e450b924196e30818b8c1e', 'MD5', '2000-04-15');
INSERT INTO `clientes` VALUES('78945613L', 'Marta', 'Sanchís Lopez', 'martita@gmail.com', '5c14afceaac42f72230fac9e6785d71b', 'MD5', '2002-10-08');
INSERT INTO `clientes` VALUES('00000000A', 'Atendido', 'en taquilla', 'null@mail.com', '7262a3bb89b0b015ddd338c01b4e1f0c', 'MD5', '0000-00-00');
INSERT INTO `clientes` VALUES('78945612D', 'Francisco', 'Pérez Saiz', 'pacopsa@gmail.com', 'cf7d3f1a9759bb460806486a7d6b1a03', 'MD5', '1999-04-20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `dni` varchar(25) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellidos` varchar(60) NOT NULL,
  `fech_ini` date NOT NULL,
  `fech_fin` date DEFAULT NULL,
  `contrasena` varchar(255) NOT NULL,
  `telefono` int(11) DEFAULT NULL,
  `lugar_tra` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` VALUES('12345678F', 'Patricia', 'Beltran Bosco', '2010-03-29', NULL, '7d7ce0c01bfac833886d963175989a83', 658987125, 46410);
INSERT INTO `empleados` VALUES('45689125N', 'Ángel', 'Velazquez Vega', '2019-08-29', '2023-01-29', '6348b3e8891a88823e657f561e436214', 621489576, 46900);
INSERT INTO `empleados` VALUES('45786301M', 'María Jose', 'Lorca Milán', '2015-03-28', NULL, 'de45895b440ddde62bc322b7cd7973b0', NULL, 46010);
INSERT INTO `empleados` VALUES('45876215L', 'María', 'Pico Ortiz', '2021-01-23', '2023-01-09', '54223dc1b5a1a67d7a4dd178d63d48e2', NULL, 46730);
INSERT INTO `empleados` VALUES('65891257K', 'Miquel', 'Gimerá Fuentes', '2022-02-01', NULL, '8520889fdb6f3af02f409fccb631f947', 675249968, 46470);
INSERT INTO `empleados` VALUES('KJ4578932', 'Eva', 'Pérez Escrivá', '2013-07-13', NULL, '3feea04fd2eee288f1fa390120c05c91', 688452778, 46900);
INSERT INTO `empleados` VALUES('ND4560037', 'Jose Manuel', 'Lápiz Fuentes', '2018-12-06', NULL, 'e12e823307f5cd39495b5ec6ff560044', 785224689, 46749);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entradas`
--

CREATE TABLE `entradas` (
  `cod_entrada` int(5) NOT NULL,
  `cod_cli` varchar(25) NOT NULL,
  `cod_peli` int(5) NOT NULL,
  `cod_butacas` varchar(7) NOT NULL,
  `cod_precio` varchar(15) NOT NULL,
  `forma_pago` varchar(25) NOT NULL,
  `dia` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `entradas`
--

INSERT INTO `entradas` VALUES(1, 'pacopsa@gmail.com', 5, '1S2-6', 'normal', 'ON', '2022-04-15');
INSERT INTO `entradas` VALUES(2, 'pacopsa@gmail.com', 5, '1S2-7', 'normal', 'ON', '2022-04-15');
INSERT INTO `entradas` VALUES(3, 'martita@gmail.com', 1, '1V2-3', 'jubilados', 'PT-PT', '2022-04-06');
INSERT INTO `entradas` VALUES(4, 'null@mail.com', 2, '2S2-3', 'jubilados', 'PT-T', '2022-04-08');
INSERT INTO `entradas` VALUES(5, 'maria@gmail.com', 4, '3V3-3', 'jubilados', 'ON', '2022-05-05');
INSERT INTO `entradas` VALUES(6, 'maria@gmail.com', 4, '3V3-3', 'jubilados', 'ON', '2022-05-05');
INSERT INTO `entradas` VALUES(7, 'maria@gmail.com', 3, '5S3-1', 'dia_espectador', 'PT-PT', '2022-04-09');
INSERT INTO `entradas` VALUES(8, 'maria@gmail.com', 3, '5S3-1', 'dia_espectador', 'PT-PT', '2022-04-09');
INSERT INTO `entradas` VALUES(9, 'maria@gmail.com', 3, '5S3-1', 'dia_espectador', 'PT-PT', '2022-04-09');
INSERT INTO `entradas` VALUES(10, 'maria@gmail.com', 3, '5S3-4', 'dia_espectador', 'PT-PT', '2022-04-09');
INSERT INTO `entradas` VALUES(11, 'null@mail.com', 1, '1S4-9', 'normal', 'PT-T', '2022-04-11');
INSERT INTO `entradas` VALUES(12, 'null@mail.com', 1, '1S4-9', 'normal', 'PT-T', '2022-04-11');
INSERT INTO `entradas` VALUES(13, 'maria@gmail.com', 5, '4A4-3', 'cumpleaños', 'ON', '2022-05-04');
INSERT INTO `entradas` VALUES(14, 'maria@gmail.com', 5, '4A3-3', 'cumpleaños', 'ON', '2022-05-04');
INSERT INTO `entradas` VALUES(15, 'maria@gmail.com', 2, '2S3-8', 'dia_espectador', 'ON', '2022-04-13');
INSERT INTO `entradas` VALUES(16, 'maria@gmail.com', 2, '2S3-8', 'dia_espectador', 'ON', '2022-04-13');
INSERT INTO `entradas` VALUES(17, 'null@mail.com', 4, '3T1-3', 'grupal', 'PT-T', '2022-04-15');
INSERT INTO `entradas` VALUES(18, 'null@mail.com', 4, '3T1-2', 'grupal', 'PT-T', '2022-04-15');
INSERT INTO `entradas` VALUES(19, 'null@mail.com', 4, '3T2-1', 'grupal', 'PT-T', '2022-04-15');
INSERT INTO `entradas` VALUES(20, 'null@mail.com', 5, '4T2-7', 'grupal', 'PT-T', '2022-04-15');
INSERT INTO `entradas` VALUES(21, 'null@mail.com', 5, '4T5-2', 'grupal', 'PT-T', '2022-04-15');
INSERT INTO `entradas` VALUES(22, 'martita@gmail.com', 5, '4A5-1', 'normal', 'PT-PT', '2022-05-04');
INSERT INTO `entradas` VALUES(23, 'maria@gmail.com', 1, '1T3-7', 'normal', 'PT-PT', '2022-04-30');
INSERT INTO `entradas` VALUES(24, 'maria@gmail.com', 7, '1T5-5', 'cumpleaños', 'PT-PT', '2022-04-29');
INSERT INTO `entradas` VALUES(25, 'maria@gmail.com', 4, '3A2-2', 'jubilados', 'PT-PT', '2022-04-27');
INSERT INTO `entradas` VALUES(26, 'null@mail.com', 1, '1S2-2', 'normal', 'PT-T', '2022-04-24');
INSERT INTO `entradas` VALUES(27, 'null@mail.com', 7, '1S5-3', 'menor 8', 'PT-T', '2022-04-24');
INSERT INTO `entradas` VALUES(28, 'null@mail.com', 7, '1S5-4', 'menor 8', 'PT-T', '2022-04-24');
INSERT INTO `entradas` VALUES(29, 'maria@gmail.com', 9, '3S2-7', 'normal', 'PT-PT', '2022-05-26');
INSERT INTO `entradas` VALUES(30, 'maria@gmail.com', 9, '3S2-8', 'normal', 'PT-PT', '2022-05-26');
INSERT INTO `entradas` VALUES(31, 'pacopsa@gmail.com', 9, '3S2-7', 'normal', 'PT-PT', '2022-05-17');
INSERT INTO `entradas` VALUES(32, 'pacopsa@gmail.com', 9, '3S2-8', 'normal', 'PT-PT', '2022-05-17');
INSERT INTO `entradas` VALUES(33, 'pacopsa@gmail.com', 9, '3C2-7', 'normal', 'PT-PT', '2022-05-24');
INSERT INTO `entradas` VALUES(34, 'pacopsa@gmail.com', 9, '3C2-8', 'normal', 'PT-PT', '2022-05-24');
INSERT INTO `entradas` VALUES(35, 'pacopsa@gmail.com', 18, '2G2-5', 'normal', 'PT-PT', '2022-05-16');
INSERT INTO `entradas` VALUES(36, 'pacopsa@gmail.com', 5, '3G5-8', 'jubilados', 'PT-PT', '2022-05-18');
INSERT INTO `entradas` VALUES(37, 'maria@gmail.com', 24, '2S3-9', 'jubilados', 'ON', '2022-05-05');
INSERT INTO `entradas` VALUES(38, 'maria@gmail.com', 24, '2S3-1', 'jubilados', 'ON', '2022-05-05');
INSERT INTO `entradas` VALUES(39, 'maria@gmail.com', 4, '3C4-13', 'normal', 'PT-PT', '2022-05-08');
INSERT INTO `entradas` VALUES(40, 'maria@gmail.com', 4, '3C4-14', 'normal', 'PT-PT', '2022-05-08');
INSERT INTO `entradas` VALUES(41, 'null@mail.com', 7, '1S2-4', 'normal', 'PT-T', '2022-05-06');
INSERT INTO `entradas` VALUES(42, 'maria@gmail.com', 9, '2V1-5', 'normal', 'PT-PT', '2022-05-25');
INSERT INTO `entradas` VALUES(43, 'maria@gmail.com', 4, '3T3-9', 'normal', 'ON', '2022-05-23');
INSERT INTO `entradas` VALUES(44, 'null@mail.com', 2, '2S3-3', 'normal', 'PT-T', '2022-05-10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forma_pago`
--

CREATE TABLE `forma_pago` (
  `cod_pago` varchar(25) NOT NULL,
  `descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `forma_pago`
--

INSERT INTO `forma_pago` VALUES('ON', 'Online.');
INSERT INTO `forma_pago` VALUES('PT-PT', 'Pago en tienda, por tramitar.');
INSERT INTO `forma_pago` VALUES('PT-T', 'Pago en tienda tramitado.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `cod_hora` varchar(25) NOT NULL,
  `hora` varchar(25) NOT NULL,
  `cod_sala` varchar(25) NOT NULL,
  `cod_peli` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `horario`
--

INSERT INTO `horario` VALUES('A-01', '16:00', 'A1', 1);
INSERT INTO `horario` VALUES('A-02', '17:00', 'A2', 2);
INSERT INTO `horario` VALUES('A-03', '17:15', 'A3', 4);
INSERT INTO `horario` VALUES('A-04', '18:00', 'A4', 5);
INSERT INTO `horario` VALUES('A-05', '18:45', 'A5', 3);
INSERT INTO `horario` VALUES('A-06', '19:10', 'A2', 2);
INSERT INTO `horario` VALUES('A-07', '20:00', 'A1', 1);
INSERT INTO `horario` VALUES('A-08', '20:20', 'A3', 4);
INSERT INTO `horario` VALUES('A-09', '21:05', 'A4', 5);
INSERT INTO `horario` VALUES('A-10', '22:00', 'A5', 3);
INSERT INTO `horario` VALUES('A-11', '21:00', 'A2', 6);
INSERT INTO `horario` VALUES('A-12', '18:05', 'A1', 6);
INSERT INTO `horario` VALUES('A-13', '18:45', 'A3', 7);
INSERT INTO `horario` VALUES('A-14', '16:05', 'A5', 7);
INSERT INTO `horario` VALUES('A-15', '15:00', 'A4', 9);
INSERT INTO `horario` VALUES('A-16', '16:30', 'A4', 22);
INSERT INTO `horario` VALUES('A-17', '18:30', 'A4', 11);
INSERT INTO `horario` VALUES('A-18', '19:00', 'A4', 16);
INSERT INTO `horario` VALUES('A-19', '20:20', 'A4', 12);
INSERT INTO `horario` VALUES('A-20', '22:00', 'A4', 21);
INSERT INTO `horario` VALUES('A-21', '15:00', 'A1', 10);
INSERT INTO `horario` VALUES('A-22', '17:00', 'A1', 13);
INSERT INTO `horario` VALUES('A-23', '17:30', 'A1', 23);
INSERT INTO `horario` VALUES('A-24', '21:00', 'A1', 18);
INSERT INTO `horario` VALUES('A-25', '23:00', 'A1', 24);
INSERT INTO `horario` VALUES('A-26', '16:20', 'A3', 25);
INSERT INTO `horario` VALUES('A-27', '17:00', 'A3', 20);
INSERT INTO `horario` VALUES('A-28', '19:00', 'A3', 17);
INSERT INTO `horario` VALUES('A-29', '21:00', 'A3', 19);
INSERT INTO `horario` VALUES('C-01', '16:00', 'C1', 1);
INSERT INTO `horario` VALUES('C-02', '17:00', 'C2', 2);
INSERT INTO `horario` VALUES('C-03', '17:45', 'C3', 4);
INSERT INTO `horario` VALUES('C-04', '18:00', 'C4', 5);
INSERT INTO `horario` VALUES('C-05', '18:45', 'C5', 3);
INSERT INTO `horario` VALUES('C-06', '19:10', 'C2', 2);
INSERT INTO `horario` VALUES('C-07', '20:00', 'C1', 1);
INSERT INTO `horario` VALUES('C-08', '20:20', 'C3', 4);
INSERT INTO `horario` VALUES('C-09', '21:05', 'C4', 5);
INSERT INTO `horario` VALUES('C-10', '22:00', 'C5', 3);
INSERT INTO `horario` VALUES('C-11', '16:05', 'C3', 7);
INSERT INTO `horario` VALUES('C-12', '21:00', 'C2', 7);
INSERT INTO `horario` VALUES('C-13', '16:10', 'C5', 6);
INSERT INTO `horario` VALUES('C-14', '16:07', 'C4', 6);
INSERT INTO `horario` VALUES('C-15', '15:00', 'C4', 22);
INSERT INTO `horario` VALUES('C-16', '17:00', 'C4', 16);
INSERT INTO `horario` VALUES('C-17', '18:30', 'C4', 19);
INSERT INTO `horario` VALUES('C-18', '20:00', 'C4', 24);
INSERT INTO `horario` VALUES('C-19', '21:50', 'C4', 23);
INSERT INTO `horario` VALUES('C-20', '22:20', 'C4', 11);
INSERT INTO `horario` VALUES('C-21', '16:20', 'C3', 18);
INSERT INTO `horario` VALUES('C-22', '17:50', 'C3', 9);
INSERT INTO `horario` VALUES('C-23', '19:20', 'C3', 12);
INSERT INTO `horario` VALUES('C-24', '22:00', 'C3', 17);
INSERT INTO `horario` VALUES('C-25', '22:00', 'C3', 21);
INSERT INTO `horario` VALUES('C-26', '23:00', 'C3', 25);
INSERT INTO `horario` VALUES('C-27', '15:30', 'C2', 10);
INSERT INTO `horario` VALUES('C-28', '17:00', 'C2', 20);
INSERT INTO `horario` VALUES('G-01', '16:00', 'G1', 1);
INSERT INTO `horario` VALUES('G-02', '17:00', 'G2', 2);
INSERT INTO `horario` VALUES('G-03', '17:15', 'G3', 4);
INSERT INTO `horario` VALUES('G-04', '18:00', 'G1', 5);
INSERT INTO `horario` VALUES('G-05', '18:45', 'G2', 6);
INSERT INTO `horario` VALUES('G-06', '19:10', 'G3', 7);
INSERT INTO `horario` VALUES('G-07', '20:00', 'G1', 1);
INSERT INTO `horario` VALUES('G-08', '20:20', 'G2', 3);
INSERT INTO `horario` VALUES('G-09', '21:05', 'G3', 5);
INSERT INTO `horario` VALUES('G-10', '22:00', 'G1', 6);
INSERT INTO `horario` VALUES('G-11', '15:00', 'G1', 9);
INSERT INTO `horario` VALUES('G-12', '16:30', 'G1', 25);
INSERT INTO `horario` VALUES('G-13', '19:00', 'G1', 16);
INSERT INTO `horario` VALUES('G-14', '20:45', 'G1', 22);
INSERT INTO `horario` VALUES('G-15', '22:30', 'G1', 10);
INSERT INTO `horario` VALUES('G-16', '15:15', 'G2', 18);
INSERT INTO `horario` VALUES('G-17', '16:45', 'G2', 20);
INSERT INTO `horario` VALUES('G-18', '16:20', 'G2', 17);
INSERT INTO `horario` VALUES('G-19', '19:30', 'G2', 23);
INSERT INTO `horario` VALUES('G-20', '20:50', 'G2', 11);
INSERT INTO `horario` VALUES('G-21', '23:00', 'G2', 24);
INSERT INTO `horario` VALUES('G-22', '15:05', 'G3', 12);
INSERT INTO `horario` VALUES('G-23', '16:40', 'G3', 21);
INSERT INTO `horario` VALUES('G-24', '18:50', 'G3', 13);
INSERT INTO `horario` VALUES('G-25', '20:00', 'G3', 19);
INSERT INTO `horario` VALUES('S-01', '16:00', 'S1', 1);
INSERT INTO `horario` VALUES('S-02', '17:00', 'S2', 2);
INSERT INTO `horario` VALUES('S-03', '17:15', 'S3', 4);
INSERT INTO `horario` VALUES('S-04', '18:00', 'S4', 5);
INSERT INTO `horario` VALUES('S-05', '18:45', 'S5', 24);
INSERT INTO `horario` VALUES('S-06', '19:10', 'S2', 2);
INSERT INTO `horario` VALUES('S-07', '20:00', 'S1', 1);
INSERT INTO `horario` VALUES('S-08', '20:20', 'S3', 4);
INSERT INTO `horario` VALUES('S-09', '21:05', 'S4', 5);
INSERT INTO `horario` VALUES('S-11', '21:00', 'S2', 6);
INSERT INTO `horario` VALUES('S-12', '15:30', 'S2', 6);
INSERT INTO `horario` VALUES('S-13', '21:45', 'S1', 7);
INSERT INTO `horario` VALUES('S-14', '18:05', 'S1', 7);
INSERT INTO `horario` VALUES('S-15', '20:00', 'S4', 10);
INSERT INTO `horario` VALUES('S-16', '15:01', 'S1', 25);
INSERT INTO `horario` VALUES('S-17', '17:30', 'S3', 9);
INSERT INTO `horario` VALUES('S-18', '17:30', 'S4', 18);
INSERT INTO `horario` VALUES('S-19', '21:00', 'S2', 24);
INSERT INTO `horario` VALUES('S-20', '19:00', 'S5', 11);
INSERT INTO `horario` VALUES('S-21', '16:00', 'S2', 12);
INSERT INTO `horario` VALUES('S-22', '18:30', 'S4', 13);
INSERT INTO `horario` VALUES('S-23', '15:00', 'S5', 16);
INSERT INTO `horario` VALUES('S-24', '17:20', 'S5', 20);
INSERT INTO `horario` VALUES('S-25', '22:00', 'S1', 17);
INSERT INTO `horario` VALUES('S-26', '18:30', 'S2', 19);
INSERT INTO `horario` VALUES('S-27', '15:00', 'S3', 21);
INSERT INTO `horario` VALUES('S-28', '19:30', 'S1', 22);
INSERT INTO `horario` VALUES('S-29', '18:00', 'S4', 23);
INSERT INTO `horario` VALUES('S-30', '16:20', 'S3', 21);
INSERT INTO `horario` VALUES('S-31', '18:30', 'S2', 22);
INSERT INTO `horario` VALUES('S-32', '15:30', 'S5', 23);
INSERT INTO `horario` VALUES('T-01', '16:00', 'T1', 1);
INSERT INTO `horario` VALUES('T-02', '17:00', 'T2', 2);
INSERT INTO `horario` VALUES('T-03', '17:15', 'T3', 4);
INSERT INTO `horario` VALUES('T-04', '18:00', 'T4', 5);
INSERT INTO `horario` VALUES('T-05', '18:45', 'T5', 3);
INSERT INTO `horario` VALUES('T-06', '19:10', 'T2', 2);
INSERT INTO `horario` VALUES('T-07', '20:00', 'T1', 1);
INSERT INTO `horario` VALUES('T-08', '20:20', 'T3', 4);
INSERT INTO `horario` VALUES('T-09', '21:05', 'T4', 5);
INSERT INTO `horario` VALUES('T-10', '22:00', 'T5', 3);
INSERT INTO `horario` VALUES('T-11', '16:05', 'T4', 6);
INSERT INTO `horario` VALUES('T-12', '21:00', 'T2', 6);
INSERT INTO `horario` VALUES('T-13', '20:10', 'T1', 7);
INSERT INTO `horario` VALUES('T-14', '16:07', 'T1', 7);
INSERT INTO `horario` VALUES('T-15', '15:00', 'T5', 25);
INSERT INTO `horario` VALUES('T-16', '17:30', 'T1', 18);
INSERT INTO `horario` VALUES('T-17', '21:00', 'T2', 9);
INSERT INTO `horario` VALUES('T-18', '17:30', 'T4', 23);
INSERT INTO `horario` VALUES('T-19', '16:30', 'T2', 10);
INSERT INTO `horario` VALUES('T-20', '15:30', 'T4', 11);
INSERT INTO `horario` VALUES('T-21', '17:30', 'T2', 12);
INSERT INTO `horario` VALUES('T-22', '16:00', 'T5', 13);
INSERT INTO `horario` VALUES('T-23', '22:00', 'T1', 22);
INSERT INTO `horario` VALUES('T-24', '19:45', 'T4', 16);
INSERT INTO `horario` VALUES('T-25', '17:30', 'T3', 17);
INSERT INTO `horario` VALUES('T-26', '18:20', 'T2', 19);
INSERT INTO `horario` VALUES('T-27', '15:00', 'T4', 20);
INSERT INTO `horario` VALUES('T-28', '16:45', 'T4', 21);
INSERT INTO `horario` VALUES('T-29', '17:20', 'T1', 24);
INSERT INTO `horario` VALUES('V-01', '16:00', 'V1', 1);
INSERT INTO `horario` VALUES('V-02', '17:00', 'V2', 2);
INSERT INTO `horario` VALUES('V-03', '17:15', 'V3', 4);
INSERT INTO `horario` VALUES('V-04', '18:00', 'V4', 5);
INSERT INTO `horario` VALUES('V-05', '18:45', 'V5', 3);
INSERT INTO `horario` VALUES('V-06', '19:10', 'V2', 2);
INSERT INTO `horario` VALUES('V-07', '20:00', 'V1', 1);
INSERT INTO `horario` VALUES('V-08', '20:20', 'V3', 4);
INSERT INTO `horario` VALUES('V-09', '21:05', 'V4', 5);
INSERT INTO `horario` VALUES('V-10', '22:00', 'V5', 3);
INSERT INTO `horario` VALUES('V-11', '18:05', 'V1', 6);
INSERT INTO `horario` VALUES('V-12', '15:50', 'V4', 6);
INSERT INTO `horario` VALUES('V-13', '21:00', 'V2', 7);
INSERT INTO `horario` VALUES('V-14', '16:05', 'V5', 7);
INSERT INTO `horario` VALUES('V-15', '21:00', 'V2', 9);
INSERT INTO `horario` VALUES('V-16', '15:00', 'V5', 10);
INSERT INTO `horario` VALUES('V-17', '16:30', 'V2', 11);
INSERT INTO `horario` VALUES('V-18', '20:00', 'V4', 12);
INSERT INTO `horario` VALUES('V-19', '17:00', 'V1', 13);
INSERT INTO `horario` VALUES('V-20', '15:00', 'V3', 16);
INSERT INTO `horario` VALUES('V-21', '19:30', 'V2', 17);
INSERT INTO `horario` VALUES('V-22', '16:50', 'V3', 18);
INSERT INTO `horario` VALUES('V-23', '17:30', 'V1', 19);
INSERT INTO `horario` VALUES('V-24', '21:00', 'V2', 20);
INSERT INTO `horario` VALUES('V-25', '18:45', 'V4', 21);
INSERT INTO `horario` VALUES('V-26', '19:00', 'V2', 22);
INSERT INTO `horario` VALUES('V-27', '15:00', 'V1', 22);
INSERT INTO `horario` VALUES('V-28', '17:45', 'V3', 23);
INSERT INTO `horario` VALUES('V-29', '15:00', 'V5', 24);
INSERT INTO `horario` VALUES('V-30', '16:20', 'V4', 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugar`
--

CREATE TABLE `lugar` (
  `cod_postal` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `lugar`
--

INSERT INTO `lugar` VALUES(46010, 'Valencia');
INSERT INTO `lugar` VALUES(46410, 'Sueca');
INSERT INTO `lugar` VALUES(46470, 'Albal');
INSERT INTO `lugar` VALUES(46730, 'Gandia');
INSERT INTO `lugar` VALUES(46749, 'Carcagente');
INSERT INTO `lugar` VALUES(46900, 'Torrente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

CREATE TABLE `peliculas` (
  `cod_peli` int(5) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `tiempo` varchar(20) NOT NULL,
  `descripción` varchar(1024) NOT NULL,
  `trailer` varchar(200) NOT NULL,
  `imagen` varchar(200) NOT NULL,
  `fech_ini` date NOT NULL,
  `fech_fin` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` VALUES(1, 'The Batman', '175', 'En su segundo año luchando \r\ncontra el crimen, Batman explora la corrupción existente en la ciudad de Gotham \r\ny el vínculo de esta con su propia familia. Además, entrará en conflicto con un \r\nasesino en serie conocido como \"el Acertijo\"', 'https://www.youtube.com/watch?v=IqRRLA6pZvo', 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTS2fKwZKo71X7bIMebB-bCggaHitos9MFy85LUpp7j7PE-qd4g', '2022-03-04', '2022-06-14');
INSERT INTO `peliculas` VALUES(2, 'Uncharted', '115', 'Nathan Drake y su compañero \r\nVictor Sullivan se adentran en la peligrosa búsqueda del \"mayor tesoro jamás \r\nencontrado\". Al mismo tiempo, rastrean pistas que puedan conducir al hermano \r\nperdido de Drake.', 'https://www.youtube.com/watch?v=t_uYnyHWOsY', 'https://pics.filmaffinity.com/Uncharted-417211360-large.jpg', '2022-02-18', '2022-05-18');
INSERT INTO `peliculas` VALUES(3, 'Flee', '90', 'Flee es una película documental \r\nde animación de 2021 coproducido internacionalmente, dirigido por Jonas Poher \r\nRasmussen y escrito por Poher Rasmussen y Amin. Sigue la historia de un hombre \r\nllamado Amin, que comparte su pasado oculto por primera vez, de huir de su país.', 'https://www.youtube.com/watch?v=g6MQEfwtyiI', 'https://pics.filmaffinity.com/Flee-547377473-large.jpg', '2022-01-11', '2022-04-11');
INSERT INTO `peliculas` VALUES(4, 'Mamá o papá', '90', 'Flora y Víctor son los padres \r\nque todo niño querría tener: modernos, divertidos y cariñosos. Sin embargo, todo se \r\ntuerce el día que deciden divorciarse y aparece la oportunidad laboral con la que llevan \r\nsoñando toda la vida. Solo hay un problema: la custodia. Ninguno está dispuesto a ceder. \r\n', 'https://www.youtube.com/watch?v=j6l3u0at97o', 'https://pics.filmaffinity.com/Mam_o_pap-466041082-large.jpg', '2021-12-17', '2022-06-17');
INSERT INTO `peliculas` VALUES(5, 'Muerte en el Nilo', '127', 'El detective Hercule Poirot investiga \r\nel asesinato de una rica y joven heredera a bordo del mismo crucero por el río Nilo en el que pasa \r\nlas vacaciones Poirot.', 'https://www.youtube.com/watch?v=2HQPNRtMbJ0', 'https://www.ecartelera.com/carteles/13900/13930/003_m.jpg', '2022-02-18', '2022-07-18');
INSERT INTO `peliculas` VALUES(6, 'Spider-Man No Way Home', '150', 'Tras descubrirse la identidad \r\nsecreta de Peter Parker como Spider-Man, la vida del joven se vuelve una locura. Peter decide pedirle \r\nayuda al Doctor Extraño para recuperar su vida. Pero algo sale mal y provoca una fractura en el multiverso.', 'https://www.youtube.com/watch?v=SkmRT3M4Vx4', 'https://pics.filmaffinity.com/Spider_Man_No_Way_Home-387287198-large.jpg', '2021-12-16', '2022-03-16');
INSERT INTO `peliculas` VALUES(7, 'Competencia Oficial', '114', 'En busca de trascendencia y prestigio \r\nsocial, un empresario multimillonario decide hacer una película que deje huella. Para ello, contrata \r\na los mejores: un equipo estelar formado por la celebérrima cineasta Lola Cuevas (Penélope Cruz) y dos \r\nreconocidos actores, dueños de un talento enorme, pe', 'https://www.youtube.com/watch?v=SObvKkDEbE4', 'https://1.bp.blogspot.com/-thT2C5S3i0c/YaCzHOE5ACI/AAAAAAAANI4/vZO4sJ5xki85y2Q_boE_8HlRWgTfBEMDQCLcBGAsYHQ/s852/COMPETENCIA%2BOFICIAL_POSTER.JPEG', '2022-02-25', '2022-08-25');
INSERT INTO `peliculas` VALUES(8, 'Morbius', '108', 'Enfermo con un peligroso y raro trastorno sanguíneo, está decidido a salvar a otros \r\n	que sufren su mismo destino. El Dr. Morbius lleva a cabo una arriesgada apuesta. Lo que al principio parece ser un éxito radical, \r\n	pronto será la prueba fehaciente de que el remedio, a veces, es peor que la enfe', 'https://www.youtube.com/watch?v=SYOePdCZfqM', 'https://sm.ign.com/ign_es/screenshot/default/euegziqu0aapebe_xrp6.jpg', '2022-04-01', '2022-06-01');
INSERT INTO `peliculas` VALUES(9, 'Doctor Strange', '148', 'Un viejo amigo convertido en enemigo pone fin a sus planes y hace que Strange \r\n	desate un mal indescriptible\" Con esas tres líneas podíamos aventurar qué villano se enfrentará a nuestro héroe.', 'https://www.youtube.com/watch?v=t_khTGpoIQY&t=1s', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/doctor-strange-multiverso-locura-poster-fotogramas-1640199908.jpeg?resize=768:*', '2022-05-06', '2022-07-20');
INSERT INTO `peliculas` VALUES(10, 'The Marvels', '130', 'The Marvels es una futura película de Marvel Studios que volverá a centrarse en Carol Danvers (Brie Larson), una poderosa humana mejorada con poderes de la raza Kree que se ha convertido en todo un símbolo dentro del Universo Cinematográfico de Marvel. ', 'https://www.youtube.com/watch?v=n0JFEZmawpM', 'https://es.web.img3.acsta.net/r_1280_720/pictures/21/02/04/20/33/4853438.jpg', '2023-02-17', '2023-03-30');
INSERT INTO `peliculas` VALUES(11, 'Thor: Love and Thunder', '133', 'Proximamente', 'Proximamente', 'https://www.americatv.com.pe/cinescape/wp-content/uploads/2020/10/37947btdmbb51.jpg', '2023-07-08', '2023-09-30');
INSERT INTO `peliculas` VALUES(12, 'Avatar 2', '150', 'Esta es la historia de la familia Sully y lo que hace una persona para mantener esta unida. Jake y Neytiri tienen una familia en esta película, son obligados a abandonar su hogar, así que salen al exterior y exploran diferentes regiones de Pandora, pasando un tiempo en el agua, alrededor del agua, s', 'Proximamente', 'https://m.media-amazon.com/images/I/61D1jhtXf6S._AC_SX425_.jpg', '2023-12-16', '2023-01-30');
INSERT INTO `peliculas` VALUES(13, 'Guardianes de la galaxia 3', '122', 'Proximamente', 'Proximamente', 'https://www.cinemascomics.com/wp-content/uploads/2019/08/Poster-de-Guardianes-de-la-galaxia-Vol-3.jpg', '2023-05-23', '2023-07-01');
INSERT INTO `peliculas` VALUES(14, 'Red', '100', 'Mei Lee, una niña de 13 años un poco rara pero segura de sí misma, que se debate entre seguir siendo la hija obediente que su madre quiere que sea y el caos de la adolescencia.', 'https://www.youtube.com/watch?v=5IdjR-8MNSE', 'https://lumiere-a.akamaihd.net/v1/images/image_53a52f8d.jpeg?region=0,0,540,810', '2022-02-22', '2022-04-22');
INSERT INTO `peliculas` VALUES(15, 'Código emperador', '106', 'uan trabaja para los servicios secretos; con el fin de tener acceso al chalet de una pareja implicada en el tráfico de armas se acerca a Wendy, la asistenta filipina que vive en la casa y establece con ella una relación que se irá volviendo cada vez mas compleja. En paralelo, Juan realiza otros trab', 'https://www.youtube.com/watch?v=PfuO6_3gFmc', 'https://www.neocine.es/recurso/articulo/codigo_emperador_542616770_large.jpg', '2022-03-18', '2022-04-20');
INSERT INTO `peliculas` VALUES(16, 'Nope', '120', 'Proximamente', 'https://www.youtube.com/watch?v=In8fuzj3gck&t=1s', 'https://www.latercera.com/resizer/Luvi37iWU6DOHN-4tXWn2TZ6hzo=/800x0/smart/cloudfront-us-east-1.images.arcpublishing.com/copesa/IICPTBEC4VA57IZISNDUBSELD4.jpg', '2022-07-22', '2022-10-30');
INSERT INTO `peliculas` VALUES(17, 'Spider-man across the spider-verse 1', '115', 'En la aventura de Morales lo vemos ser el Hombre Araña de su propio universo, sin embargo, gracias a un accidente con el colisionador de hadrones se dará cuenta que existe una cantidad ilimitada de universos. El suceso le permitirá conocer a un nuevo Peter Parker y saltar a la acción de forma impres', 'https://www.youtube.com/watch?v=B0vjczyHxJE', 'https://pics.filmaffinity.com/spider_man_across_the_spider_verse_part_one-524691364-large.jpg', '2022-10-07', '2022-12-07');
INSERT INTO `peliculas` VALUES(18, 'Firestarter', '110', 'Durante más de una década, los padres Andy y Vicky han estado huyendo, desesperados por esconder a su hija Charlie de una oscura agencia federal que quiere aprovechar su don sin precedentes para crear fuego en un arma de destrucción masiva.\nAndy le ha enseñado a Charlie cómo desactivar su poder, que se desencadena por la ira o el dolor. Pero cuando Charlie cumple 11 años, el fuego se vuelve cada vez más difícil de controlar. Después de que un incidente revela la ubicación de la familia, se despliega un agente misterioso para cazar a la familia y capturar a Charlie de una vez por todas. Charlie tiene otros planes.', 'https://www.youtube.com/watch?v=59MJfJPP5eo', 'https://restaurantdelamente.com/portal/wp-content/uploads/2022/02/Firestarter-Llamas-De-Venganza.jpg', '2022-05-13', '2022-06-13');
INSERT INTO `peliculas` VALUES(19, 'Jurasic Word Dominion', '146', 'Los hermanos Zach y Gray Mitchell visitan la isla Nublar, lugar del Parque Jurásico original, donde un nuevo parque temático llamado Jurassic World ha operado durante años. El propietario del parque, Simon Masrani, ha alentado al doctor Henry Wu a crear un dinosaurio híbrido para atraer visitantes.', 'https://www.youtube.com/watch?v=RJ4b1ZQxPmE', 'https://i.pinimg.com/736x/3e/82/8b/3e828b7a0c591dde6b14656344422e99.jpg', '2022-06-11', '2022-09-12');
INSERT INTO `peliculas` VALUES(20, 'Minions the rise of Gru', '90', 'En los años 70, Gru crece siendo un gran admirador de \"Los salvajes seis\", un supergrupo de villanos. Para demostrarles que puede ser malvado, Gru idea un plan con la esperanza de formar parte de la banda. Por suerte, cuenta con la ayuda de sus fieles seguidores, los Minions, siempre dispuestos a sembrar el caos.', 'https://www.youtube.com/watch?v=6DxjJzmYsXo', 'https://pics.filmaffinity.com/minions_the_rise_of_gru-603546631-large.jpg', '2022-07-01', '2022-09-01');
INSERT INTO `peliculas` VALUES(21, 'Lightyear', '100', 'La historia del origen de Buzz Lightyear y sus aventuras hasta el infinito y más allá.', 'https://www.youtube.com/watch?v=wHBBoUtJHhA', 'https://lumiere-a.akamaihd.net/v1/images/hb_placeholder_desktop_7575eb06.jpeg?region=0%2C0%2C540%2C810', '2022-06-17', '2022-07-17');
INSERT INTO `peliculas` VALUES(22, 'Halloween Ends', '105', 'Llega el fin de la historia de Halloween, y recogerá todo el sembrado de las dos películas anteriores', 'https://www.youtube.com/watch?v=IgtjtnLO1xM', 'https://alternativemovieposters.com/wp-content/uploads/2022/02/WaldemarWitt_HalloweenEnds.jpg', '2022-10-15', '2022-12-15');
INSERT INTO `peliculas` VALUES(23, 'Misión imposible 7', '150', 'Proximamente', 'Proximamente', 'https://image.tmdb.org/t/p/w500/zThtCUHegmEZhoYbh1eAJslhfPK.jpg', '2023-06-14', '2023-07-14');
INSERT INTO `peliculas` VALUES(24, 'Sonic 2', '122', 'Después de establecerse en Green Hills, Sonic está ansioso por demostrar que tiene lo que se necesita para ser un verdadero héroe. Su prueba llega cuando el Dr. Robotnik regresa a buscar una esmeralda que tiene el poder de destruir civilizaciones, esta vez con un nuevo aliado, Knuckles. Sonic se une a su propio compañero, Tails, y juntos se embarcan en un viaje alrededor del mundo para encontrar la esmeralda antes de que caiga en las manos equivocadas.', 'https://www.youtube.com/watch?v=xMqnQLeQgSw', 'https://static.cinepolis.com/resources/mx/movies/posters/414x603/38740-771524-20220406012044.jpg', '2022-04-07', '2022-07-20');
INSERT INTO `peliculas` VALUES(25, 'El hombre del norte', '140', 'La historia sigue a un príncipe vikingo en su misión de vengar el asesinato de su padre.', 'https://www.youtube.com/watch?v=7HZ4tBQEiB0&feature=emb_logo', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/hombre-norte-poster-fotogramas-1648568549.jpeg?resize=768:*', '2022-04-22', '2022-07-22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `precios`
--

CREATE TABLE `precios` (
  `cod_precio` varchar(15) NOT NULL,
  `precio` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `precios`
--

INSERT INTO `precios` VALUES('carnet_joven', 4);
INSERT INTO `precios` VALUES('cumpleaños', 0);
INSERT INTO `precios` VALUES('dia_espectador', 3);
INSERT INTO `precios` VALUES('grupal', 38);
INSERT INTO `precios` VALUES('jubilados', 4);
INSERT INTO `precios` VALUES('menor 8', 4);
INSERT INTO `precios` VALUES('normal', 5);
INSERT INTO `precios` VALUES('primera_compra', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salas`
--

CREATE TABLE `salas` (
  `cod_sala` varchar(25) NOT NULL,
  `numero` int(11) NOT NULL,
  `cod_lug` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `salas`
--

INSERT INTO `salas` VALUES('A1', 1, 46470);
INSERT INTO `salas` VALUES('A2', 2, 46470);
INSERT INTO `salas` VALUES('A3', 3, 46470);
INSERT INTO `salas` VALUES('A4', 4, 46470);
INSERT INTO `salas` VALUES('A5', 5, 46470);
INSERT INTO `salas` VALUES('C1', 1, 46749);
INSERT INTO `salas` VALUES('C2', 2, 46749);
INSERT INTO `salas` VALUES('C3', 3, 46749);
INSERT INTO `salas` VALUES('C4', 4, 46749);
INSERT INTO `salas` VALUES('C5', 5, 46749);
INSERT INTO `salas` VALUES('G1', 1, 46730);
INSERT INTO `salas` VALUES('G2', 2, 46730);
INSERT INTO `salas` VALUES('G3', 3, 46730);
INSERT INTO `salas` VALUES('S1', 1, 46410);
INSERT INTO `salas` VALUES('S2', 2, 46410);
INSERT INTO `salas` VALUES('S3', 3, 46410);
INSERT INTO `salas` VALUES('S4', 4, 46410);
INSERT INTO `salas` VALUES('S5', 5, 46410);
INSERT INTO `salas` VALUES('T1', 1, 46900);
INSERT INTO `salas` VALUES('T2', 2, 46900);
INSERT INTO `salas` VALUES('T3', 3, 46900);
INSERT INTO `salas` VALUES('T4', 4, 46900);
INSERT INTO `salas` VALUES('T5', 5, 46900);
INSERT INTO `salas` VALUES('V1', 1, 46010);
INSERT INTO `salas` VALUES('V2', 2, 46010);
INSERT INTO `salas` VALUES('V3', 3, 46010);
INSERT INTO `salas` VALUES('V4', 4, 46010);
INSERT INTO `salas` VALUES('V5', 5, 46010);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `butacas`
--
ALTER TABLE `butacas`
  ADD PRIMARY KEY (`cod_butacas`),
  ADD KEY `FK_BUT_SALA` (`cod_sala`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`mail`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`dni`),
  ADD KEY `FK_emp_lug` (`lugar_tra`);

--
-- Indices de la tabla `entradas`
--
ALTER TABLE `entradas`
  ADD PRIMARY KEY (`cod_entrada`),
  ADD KEY `FK_entra_cli` (`cod_cli`),
  ADD KEY `FK_entra_peli` (`cod_peli`),
  ADD KEY `FK_entra_but` (`cod_butacas`),
  ADD KEY `FK_entra_pre` (`cod_precio`),
  ADD KEY `FK_entra_pago` (`forma_pago`);

--
-- Indices de la tabla `forma_pago`
--
ALTER TABLE `forma_pago`
  ADD PRIMARY KEY (`cod_pago`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`cod_hora`),
  ADD KEY `FK_horario_sala` (`cod_sala`),
  ADD KEY `FK_horario_peli` (`cod_peli`);

--
-- Indices de la tabla `lugar`
--
ALTER TABLE `lugar`
  ADD PRIMARY KEY (`cod_postal`);

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`cod_peli`);

--
-- Indices de la tabla `precios`
--
ALTER TABLE `precios`
  ADD PRIMARY KEY (`cod_precio`);

--
-- Indices de la tabla `salas`
--
ALTER TABLE `salas`
  ADD PRIMARY KEY (`cod_sala`),
  ADD KEY `FK_salas_lug` (`cod_lug`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `cod_peli` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `butacas`
--
ALTER TABLE `butacas`
  ADD CONSTRAINT `FK_BUT_SALA` FOREIGN KEY (`cod_sala`) REFERENCES `salas` (`cod_sala`);

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `FK_emp_lug` FOREIGN KEY (`lugar_tra`) REFERENCES `lugar` (`cod_postal`);

--
-- Filtros para la tabla `entradas`
--
ALTER TABLE `entradas`
  ADD CONSTRAINT `FK_entra_but` FOREIGN KEY (`cod_butacas`) REFERENCES `butacas` (`cod_butacas`),
  ADD CONSTRAINT `FK_entra_cli` FOREIGN KEY (`cod_cli`) REFERENCES `clientes` (`mail`),
  ADD CONSTRAINT `FK_entra_pago` FOREIGN KEY (`forma_pago`) REFERENCES `forma_pago` (`cod_pago`),
  ADD CONSTRAINT `FK_entra_peli` FOREIGN KEY (`cod_peli`) REFERENCES `peliculas` (`cod_peli`),
  ADD CONSTRAINT `FK_entra_pre` FOREIGN KEY (`cod_precio`) REFERENCES `precios` (`cod_precio`);

--
-- Filtros para la tabla `horario`
--
ALTER TABLE `horario`
  ADD CONSTRAINT `FK_horario_peli` FOREIGN KEY (`cod_peli`) REFERENCES `peliculas` (`cod_peli`),
  ADD CONSTRAINT `FK_horario_sala` FOREIGN KEY (`cod_sala`) REFERENCES `salas` (`cod_sala`);

--
-- Filtros para la tabla `salas`
--
ALTER TABLE `salas`
  ADD CONSTRAINT `FK_salas_lug` FOREIGN KEY (`cod_lug`) REFERENCES `lugar` (`cod_postal`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
