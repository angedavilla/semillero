-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 08-06-2021 a las 21:51:41
-- Versión del servidor: 8.0.25-0ubuntu0.20.04.1
-- Versión de PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mascotas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mascota`
--

CREATE TABLE `mascota` (
  `idmascota` int NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `tipo_mascota` int NOT NULL,
  `propietario` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `mascota`
--

INSERT INTO `mascota` (`idmascota`, `nombre`, `tipo_mascota`, `propietario`) VALUES
(1, 'isa', 1, 4),
(2, 'Tito', 2, 3),
(3, 'David', 1, 4),
(4, 'Angel', 2, 3),
(5, 'Sebas', 1, NULL),
(6, 'Mateo', 2, NULL),
(7, 'Carlos', 2, NULL),
(8, 'Miguel', 2, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propietario`
--

CREATE TABLE `propietario` (
  `idpropietario` int NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `correo` varchar(60) NOT NULL,
  `comentario` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `propietario`
--

INSERT INTO `propietario` (`idpropietario`, `nombre`, `direccion`, `telefono`, `correo`, `comentario`) VALUES
(3, 'David', 'Calle 52', '3123123123', 'angel@gmail.com', 'Prueba David'),
(4, 'Angel', 'Avenida 32', '12312312', 'angel@gmail.com', 'Prueba angel'),
(5, 'Arley', 'Calle 43', '31231', 'arley@gmail.com', 'arley prueba'),
(6, 'Diego', 'Calle 52', '12312312', 'diego@gmail.com', 'diego');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_mascotas`
--

CREATE TABLE `tipo_mascotas` (
  `idtipo_mascota` int NOT NULL,
  `descripcion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `tipo_mascotas`
--

INSERT INTO `tipo_mascotas` (`idtipo_mascota`, `descripcion`) VALUES
(1, 'Mascota perro color amarillo '),
(2, 'Mascota gato color negro');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `mascota`
--
ALTER TABLE `mascota`
  ADD PRIMARY KEY (`idmascota`),
  ADD KEY `tipo_mascota` (`tipo_mascota`),
  ADD KEY `propietario` (`propietario`);

--
-- Indices de la tabla `propietario`
--
ALTER TABLE `propietario`
  ADD PRIMARY KEY (`idpropietario`);

--
-- Indices de la tabla `tipo_mascotas`
--
ALTER TABLE `tipo_mascotas`
  ADD PRIMARY KEY (`idtipo_mascota`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `mascota`
--
ALTER TABLE `mascota`
  MODIFY `idmascota` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `propietario`
--
ALTER TABLE `propietario`
  MODIFY `idpropietario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tipo_mascotas`
--
ALTER TABLE `tipo_mascotas`
  MODIFY `idtipo_mascota` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `mascota`
--
ALTER TABLE `mascota`
  ADD CONSTRAINT `mascota_ibfk_1` FOREIGN KEY (`tipo_mascota`) REFERENCES `tipo_mascotas` (`idtipo_mascota`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mascota_ibfk_2` FOREIGN KEY (`propietario`) REFERENCES `propietario` (`idpropietario`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
