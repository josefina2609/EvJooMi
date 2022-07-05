CREATE DATABASE IF NOT EXISTS eval CHARACTER SET utf8 COLLATE utf8_general_ci;

USE eval;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `materias` (
  `idmat` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `durmod` int(8) NOT NULL,
  `hrdesde` int(5) NOT NULL,
  `hrhasta` int(5) NOT NULL,
  `dia` varchar(10) NOT NULL,
  `dni` NOT NULL FOREIGN KEY
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `profesor` (
	`dni` int(8) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`nombre` varchar(100) NOT NULL,
	`apellido` varchar(100) NOT NULL,
	`sitrev` varchar(100) NOT NULL,
  `cicbas` NOT NULL FOREIGN KEY,
  `cicsup` NOT NULL FOREIGN KEY
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `tecnicaturas` (
  `idtec` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tecnicaturas` (`nombre`) VALUES ("Técnico en Programación");
INSERT INTO `tecnicaturas` (`nombre`) VALUES ("Técnico Químico");
INSERT INTO `tecnicaturas` (`nombre`) VALUES ("Técnico Electrmecánico");
INSERT INTO `tecnicaturas` (`nombre`) VALUES ("Técnico Maestro Mayor de Obras");
INSERT INTO `tecnicaturas` (`nombre`) VALUES ("Técnico en Automotores");

CREATE TABLE `cicsup` (
	`idcs` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`nomcur` varchar(100) NOT NULL,
  `idtec` NOT NULL FOREIGN KEY
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `cicbas` (
	`idcb` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`nomcur` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `gruptaller` (
	`idgt` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`num` int(20) NOT NULL,
  `cicbas` NOT NULL FOREIGN KEY,
  `cicsup` NOT NULL FOREIGN KEY
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `permisos` (
  `codPermiso` int(10) NOT NULL,
  `codRol` int(10) UNSIGNED NOT NULL,
  `tipoAcceso` varchar(10) NOT NULL,
  `pagina` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;