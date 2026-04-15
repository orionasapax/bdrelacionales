-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-04-2036 a las 17:03:26
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `comoquieras`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `comentario_id` int(11) NOT NULL,
  `pub_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `texto` varchar(300) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`comentario_id`, `pub_id`, `usuario_id`, `texto`, `fecha`) VALUES
(1, 3, 3, 'borra la cuenta', '2022-04-02 18:59:20'),
(2, 5, 5, 'yo', '2036-04-15 17:00:16'),
(3, 5, 2, 'yo', '2036-04-15 17:00:26'),
(4, 5, 3, 'yo', '2036-04-15 17:00:34'),
(5, 5, 4, 'yo', '2036-04-15 17:00:43'),
(6, 5, 1, 'yo no (borra la CUENTA)', '2036-04-15 17:00:52'),
(7, 4, 3, 'gem alert', '2036-04-15 17:01:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hashtags`
--

CREATE TABLE `hashtags` (
  `hashtag_id` int(11) NOT NULL,
  `etiqueta` varchar(60) NOT NULL,
  `creado_en` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `hashtags`
--

INSERT INTO `hashtags` (`hashtag_id`, `etiqueta`, `creado_en`) VALUES
(1, '#theresnolimittotheglaze', '2026-04-08'),
(2, '#zamn', '2019-02-13'),
(3, '#bluebettleeste19dejunio', '2023-04-28'),
(4, '#GFTW', '2009-09-04'),
(5, '#JEFN', '2025-05-05'),
(6, '#diddyblud', '2024-08-06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicaciones`
--

CREATE TABLE `publicaciones` (
  `pub_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `contenido` text NOT NULL,
  `imagen_url` varchar(225) NOT NULL,
  `fecha_pub` datetime NOT NULL,
  `likes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `publicaciones`
--

INSERT INTO `publicaciones` (`pub_id`, `usuario_id`, `contenido`, `imagen_url`, `fecha_pub`, `likes`) VALUES
(1, 3, 'odioatpodos', 'www.reddit.com', '2011-04-15 02:12:39', 99999),
(2, 5, 'amo a todos', 'www.reddit.com', '2017-09-06 16:15:29', 0),
(3, 5, 'e porke nome dan like', 'www.reddit.com', '2019-04-18 13:15:26', -9999999),
(4, 1, 'me pase electrodynamix soy la FRUTA cabra ', 'www.reddit.com', '2036-04-15 12:15:20', 12344),
(5, 4, 'kien quiere venir a una fiesta les juro kva a estar kabrona', 'www.reddit.com', '2036-04-25 12:21:35', -2147483648);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pub_hashtags`
--

CREATE TABLE `pub_hashtags` (
  `pub_id` int(11) NOT NULL,
  `hashtag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pub_hashtags`
--

INSERT INTO `pub_hashtags` (`pub_id`, `hashtag_id`) VALUES
(4, 1),
(5, 4),
(2, 3),
(3, 5),
(1, 6),
(4, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pub_likes`
--

CREATE TABLE `pub_likes` (
  `pub_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `fecha_like` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pub_likes`
--

INSERT INTO `pub_likes` (`pub_id`, `usuario_id`, `fecha_like`) VALUES
(2, 3, '2021-04-13 11:20:20'),
(3, 2, '2019-07-17 09:08:16'),
(5, 3, '1996-04-15 07:56:13'),
(4, 1, '2026-04-15 07:57:21'),
(1, 4, '2036-04-30 13:17:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguidores`
--

CREATE TABLE `seguidores` (
  `seguidor_id` int(11) NOT NULL,
  `seguido_id` int(11) NOT NULL,
  `fecha_follow` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `seguidores`
--

INSERT INTO `seguidores` (`seguidor_id`, `seguido_id`, `fecha_follow`) VALUES
(1, 1, '2018-04-10'),
(2, 2, '2025-12-10'),
(3, 3, '2018-01-02'),
(4, 4, '2027-07-01'),
(5, 5, '2020-03-13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `bio` varchar(200) NOT NULL,
  `fecha_reg` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuario_id`, `username`, `email`, `bio`, `fecha_reg`) VALUES
(1, 'Tenefka', 'Tenefkraftnetsapk@gmail.com', 'ceticiaprograchavoespiralidosius, brotatochips', '2022-03-10'),
(2, 'Karlos Hirk', 'sweatherrangerdangerkiddingfingir@gmail.com', 'ceticiaprograchavoespiralidosius, def going for the best of this country gng', '2013-09-11'),
(3, 'kigger_niller', 'JEFN2045@gmail.com', 'ceticiaprograchavoespiralidosius,¨body cam a mith since 2000¨', '2016-08-12'),
(4, 'Nigsparty', 'W3lc0meDiz@gmail.com', 'ceticiaprograchavoespiralidosius, ¨así sin biografia, gracias¨', '2024-04-11'),
(5, 'Jefferson_cawtthon', 'JFw3ttetdrem@gmail.com', 'racistarde de corazón ', '2019-11-01');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`comentario_id`),
  ADD KEY `pub_id` (`pub_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `hashtags`
--
ALTER TABLE `hashtags`
  ADD PRIMARY KEY (`hashtag_id`),
  ADD UNIQUE KEY `etiqueta` (`etiqueta`);

--
-- Indices de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD PRIMARY KEY (`pub_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `pub_hashtags`
--
ALTER TABLE `pub_hashtags`
  ADD KEY `pub_id` (`pub_id`),
  ADD KEY `hashtag_id` (`hashtag_id`);

--
-- Indices de la tabla `pub_likes`
--
ALTER TABLE `pub_likes`
  ADD KEY `pub_id` (`pub_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `seguidores`
--
ALTER TABLE `seguidores`
  ADD KEY `seguidor_id` (`seguidor_id`),
  ADD KEY `seguido_id` (`seguido_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `comentario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `hashtags`
--
ALTER TABLE `hashtags`
  MODIFY `hashtag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  MODIFY `pub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`pub_id`) REFERENCES `publicaciones` (`pub_id`),
  ADD CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`);

--
-- Filtros para la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD CONSTRAINT `publicaciones_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`);

--
-- Filtros para la tabla `pub_hashtags`
--
ALTER TABLE `pub_hashtags`
  ADD CONSTRAINT `pub_hashtags_ibfk_1` FOREIGN KEY (`hashtag_id`) REFERENCES `hashtags` (`hashtag_id`),
  ADD CONSTRAINT `pub_hashtags_ibfk_2` FOREIGN KEY (`pub_id`) REFERENCES `publicaciones` (`pub_id`);

--
-- Filtros para la tabla `pub_likes`
--
ALTER TABLE `pub_likes`
  ADD CONSTRAINT `pub_likes_ibfk_1` FOREIGN KEY (`pub_id`) REFERENCES `publicaciones` (`pub_id`),
  ADD CONSTRAINT `pub_likes_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
