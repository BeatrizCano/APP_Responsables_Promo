-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-08-2023 a las 11:21:55
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `coder_flow`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coder_cumple_requisito`
--

CREATE TABLE `coder_cumple_requisito` (
  `coder_identificador` bigint(255) NOT NULL,
  `requisito_identificador` bigint(255) NOT NULL,
  `cumplido` tinyint(1) NOT NULL,
  `descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comunidades_autonomas`
--

CREATE TABLE `comunidades_autonomas` (
  `identificador` bigint(255) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `identificador` bigint(255) NOT NULL,
  `estado` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `identificador` bigint(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `edad` int(11) NOT NULL,
  `localidad` varchar(255) NOT NULL,
  `comunidad_autonoma` varchar(255) NOT NULL,
  `DNI` bigint(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `genero` varchar(255) NOT NULL,
  `certificado_discapacidad` tinyint(1) NOT NULL,
  `telefono` bigint(255) NOT NULL,
  `promo_id` bigint(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`identificador`, `nombre`, `apellidos`, `email`, `edad`, `localidad`, `comunidad_autonoma`, `DNI`, `estado`, `genero`, `certificado_discapacidad`, `telefono`, `promo_id`) VALUES
(3, 'Pablo', 'Hernández', 'user3@example.com', 1, 'Gijón', 'Asturias', 5436798, 'coder', '2', 0, 66655555, 0),
(4, 'Pablo', '', '', 0, '', '', 0, '', '0', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promo`
--

CREATE TABLE `promo` (
  `identificador` bigint(255) NOT NULL,
  `nombre_promo` varchar(255) NOT NULL,
  `stack` varchar(255) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `formador` varchar(255) NOT NULL,
  `coformador` varchar(255) NOT NULL,
  `rp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `promo`
--

INSERT INTO `promo` (`identificador`, `nombre_promo`, `stack`, `fecha_inicio`, `fecha_fin`, `formador`, `coformador`, `rp`) VALUES
(2, 'FemCoders', 'HTML', '2023-07-13', '2024-02-10', 'Manu', 'María', 'Ana');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `requisito`
--

CREATE TABLE `requisito` (
  `identificador` bigint(255) NOT NULL,
  `nombre_requisito` varchar(255) NOT NULL,
  `tipo_requisito` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stack`
--

CREATE TABLE `stack` (
  `identificador` bigint(255) NOT NULL,
  `nombre_stack` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stacks_por_promo`
--

CREATE TABLE `stacks_por_promo` (
  `promo_identificador` bigint(255) NOT NULL,
  `stack_identificador` bigint(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `coder_cumple_requisito`
--
ALTER TABLE `coder_cumple_requisito`
  ADD PRIMARY KEY (`coder_identificador`);

--
-- Indices de la tabla `comunidades_autonomas`
--
ALTER TABLE `comunidades_autonomas`
  ADD PRIMARY KEY (`identificador`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`identificador`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`identificador`);

--
-- Indices de la tabla `promo`
--
ALTER TABLE `promo`
  ADD PRIMARY KEY (`identificador`);

--
-- Indices de la tabla `requisito`
--
ALTER TABLE `requisito`
  ADD PRIMARY KEY (`identificador`);

--
-- Indices de la tabla `stack`
--
ALTER TABLE `stack`
  ADD PRIMARY KEY (`identificador`);

--
-- Indices de la tabla `stacks_por_promo`
--
ALTER TABLE `stacks_por_promo`
  ADD PRIMARY KEY (`promo_identificador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `coder_cumple_requisito`
--
ALTER TABLE `coder_cumple_requisito`
  MODIFY `coder_identificador` bigint(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `comunidades_autonomas`
--
ALTER TABLE `comunidades_autonomas`
  MODIFY `identificador` bigint(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `identificador` bigint(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `identificador` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `promo`
--
ALTER TABLE `promo`
  MODIFY `identificador` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `requisito`
--
ALTER TABLE `requisito`
  MODIFY `identificador` bigint(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `stack`
--
ALTER TABLE `stack`
  MODIFY `identificador` bigint(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `stacks_por_promo`
--
ALTER TABLE `stacks_por_promo`
  MODIFY `promo_identificador` bigint(255) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
