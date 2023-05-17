-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-03-2023 a las 23:37:01
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `usersdb`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `spBuscarUsers` (IN `_ID` INT(10))   BEGIN
	SELECT id, name FROM users where id = _ID;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `spEliminarUser` (IN `_ID` INT(10))   BEGIN
	DELETE FROM users WHERE id = _ID;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertarUser` (IN `_NAME` VARCHAR(200))   BEGIN
	IF(_NAME<>"")THEN
		INSERT INTO users ( name ) VALUES ( _NAME);
    END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `spListarUsers` ()   BEGIN
	SELECT id, name FROM users;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `spModificarUser` (IN `_ID` INT(10), IN `_NAME` VARCHAR(200))   BEGIN
	UPDATE users SET name = _NAME WHERE id = _ID;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`) VALUES
(1, 'Emanuel'),
(2, 'emonuel'),
(3, 'sofi'),
(9, 'sofilamejor');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
