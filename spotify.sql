-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-02-2026 a las 16:11:57
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
-- Base de datos: `spotify`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE `artistas` (
  `id_artista` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`id_artista`, `nombre`) VALUES
(1, 'Kanye West'),
(2, 'Frank Ocean'),
(3, 'Will Wood'),
(4, 'CG5'),
(5, 'Post Malone'),
(6, 'Bad Bunny'),
(7, 'Ricky Martin'),
(8, 'Luis Fonsi'),
(9, 'Ha-sh'),
(10, 'The Living Tombstone'),
(11, 'MiloJ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artista_canciones`
--

CREATE TABLE `artista_canciones` (
  `id_artista` int(11) NOT NULL,
  `id_cancion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `artista_canciones`
--

INSERT INTO `artista_canciones` (`id_artista`, `id_cancion`) VALUES
(4, 12),
(6, 8),
(1, 10),
(1, 4),
(10, 11),
(8, 5),
(5, 2),
(2, 1),
(9, 3),
(11, 6),
(7, 7),
(3, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id_cancion` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `duracion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`id_cancion`, `nombre`, `duracion`) VALUES
(1, 'Mañanitas_cepillin', '3:02:00'),
(2, 'La Chona', '3:20:00'),
(3, 'Payaso_Rodeo', '4:03:00'),
(4, 'POWER', '5:32:00'),
(5, 'Despacito', '10:02:00'),
(6, 'Ladron', '4:12:00'),
(7, 'Virgen', '4:12:00'),
(8, 'Yonaguni', '6:21:00'),
(9, 'Domingo', '2:56:00'),
(10, 'HH', '4:26:00'),
(11, 'My Ordinary Life', '4:26:00'),
(12, 'FREDDY', '3:33:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cancion_genero`
--

CREATE TABLE `cancion_genero` (
  `id_cancion` int(11) NOT NULL,
  `id_genero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cancion_genero`
--

INSERT INTO `cancion_genero` (`id_cancion`, `id_genero`) VALUES
(12, 1),
(5, 3),
(1, 6),
(2, 8),
(9, 5),
(10, 5),
(6, 9),
(7, 9),
(11, 1),
(3, 2),
(3, 6),
(4, 5),
(8, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `faves`
--

CREATE TABLE `faves` (
  `id_usuario` int(11) NOT NULL,
  `id_cancion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `faves`
--

INSERT INTO `faves` (`id_usuario`, `id_cancion`) VALUES
(4, 10),
(6, 6),
(13, 12),
(5, 1),
(10, 12),
(15, 3),
(14, 11),
(1, 7),
(11, 2),
(12, 8),
(3, 9),
(8, 4),
(9, 7),
(2, 10),
(7, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id_generos` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`id_generos`, `nombre`) VALUES
(1, 'Pop'),
(2, 'Bachata'),
(3, 'Reggeaton'),
(4, 'Rock'),
(5, 'Rap'),
(6, 'Phonk'),
(7, 'Jazz'),
(8, 'Alternativo'),
(9, 'Salsa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresias`
--

CREATE TABLE `membresias` (
  `id_membresia` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `precio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `membresias`
--

INSERT INTO `membresias` (`id_membresia`, `nombre`, `precio`) VALUES
(3, 'Super Premium', 695),
(4, 'Premium', 139),
(5, 'Premium', 139),
(6, 'Super Premium', 695),
(7, 'Premium', 139),
(9, 'Premium', 139),
(10, 'Premium', 139),
(13, 'Premium', 139),
(15, 'Super Premium', 695);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlists`
--

CREATE TABLE `playlists` (
  `id_playlist` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `n_canciones` int(11) NOT NULL,
  `duracion` varchar(100) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `playlists`
--

INSERT INTO `playlists` (`id_playlist`, `nombre`, `n_canciones`, `duracion`, `id_usuario`) VALUES
(1, 'Cumpleaños', 2, '8:32:00', 3),
(2, 'Fiesta En La Isla', 3, '10:00:00', 1),
(3, 'Relax', 3, '10:21:00', 2),
(4, 'Fruta', 5, '26:21:00', 1),
(5, 'Me gusta el pollo', 11, '2:01:12', 8),
(6, 'Hola', 12, '2:45:32', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist_canciones`
--

CREATE TABLE `playlist_canciones` (
  `id_playlist` int(11) NOT NULL,
  `id_cancion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `playlist_canciones`
--

INSERT INTO `playlist_canciones` (`id_playlist`, `id_cancion`) VALUES
(1, 1),
(1, 5),
(1, 12),
(2, 5),
(2, 2),
(2, 3),
(3, 10),
(3, 11),
(3, 7),
(4, 6),
(4, 8),
(4, 3),
(4, 4),
(4, 6),
(5, 5),
(5, 9),
(5, 12),
(5, 10),
(5, 2),
(5, 6),
(5, 1),
(5, 11),
(5, 3),
(5, 4),
(5, 7),
(6, 5),
(6, 9),
(6, 12),
(6, 10),
(6, 2),
(6, 6),
(6, 1),
(6, 11),
(6, 3),
(6, 4),
(6, 7),
(6, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `id_membresia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `id_membresia`) VALUES
(1, 'León', 1),
(2, 'Vegón', 2),
(3, 'Mohito', 3),
(4, 'Arturo', 4),
(5, 'Epstein', 5),
(6, 'Benjamin', 6),
(7, 'Yovara', 7),
(8, 'Orpinela', 8),
(9, 'Quevedo', 9),
(10, 'Fernando', 10),
(11, 'Luis Carlos', 11),
(12, 'Marisela', 12),
(13, 'Creshe', 13),
(14, 'Kristoff', 14),
(15, 'Jesús Kristo', 15);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`id_artista`);

--
-- Indices de la tabla `artista_canciones`
--
ALTER TABLE `artista_canciones`
  ADD KEY `id_artista` (`id_artista`),
  ADD KEY `id_cancion` (`id_cancion`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id_cancion`);

--
-- Indices de la tabla `cancion_genero`
--
ALTER TABLE `cancion_genero`
  ADD KEY `id_cancion` (`id_cancion`),
  ADD KEY `id_genero` (`id_genero`);

--
-- Indices de la tabla `faves`
--
ALTER TABLE `faves`
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_cancion` (`id_cancion`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id_generos`);

--
-- Indices de la tabla `membresias`
--
ALTER TABLE `membresias`
  ADD PRIMARY KEY (`id_membresia`);

--
-- Indices de la tabla `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id_playlist`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  ADD KEY `id_playlist` (`id_playlist`),
  ADD KEY `id_cancion` (`id_cancion`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_membresia` (`id_membresia`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `artistas`
--
ALTER TABLE `artistas`
  MODIFY `id_artista` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id_cancion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `id_generos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `membresias`
--
ALTER TABLE `membresias`
  MODIFY `id_membresia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id_playlist` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `artista_canciones`
--
ALTER TABLE `artista_canciones`
  ADD CONSTRAINT `artista_canciones_ibfk_1` FOREIGN KEY (`id_artista`) REFERENCES `artistas` (`id_artista`),
  ADD CONSTRAINT `artista_canciones_ibfk_2` FOREIGN KEY (`id_cancion`) REFERENCES `canciones` (`id_cancion`);

--
-- Filtros para la tabla `cancion_genero`
--
ALTER TABLE `cancion_genero`
  ADD CONSTRAINT `cancion_genero_ibfk_1` FOREIGN KEY (`id_cancion`) REFERENCES `canciones` (`id_cancion`),
  ADD CONSTRAINT `cancion_genero_ibfk_2` FOREIGN KEY (`id_genero`) REFERENCES `generos` (`id_generos`);

--
-- Filtros para la tabla `faves`
--
ALTER TABLE `faves`
  ADD CONSTRAINT `faves_ibfk_1` FOREIGN KEY (`id_cancion`) REFERENCES `canciones` (`id_cancion`),
  ADD CONSTRAINT `faves_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `membresias`
--
ALTER TABLE `membresias`
  ADD CONSTRAINT `membresias_ibfk_1` FOREIGN KEY (`id_membresia`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `playlists`
--
ALTER TABLE `playlists`
  ADD CONSTRAINT `playlists_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  ADD CONSTRAINT `playlist_canciones_ibfk_1` FOREIGN KEY (`id_cancion`) REFERENCES `canciones` (`id_cancion`),
  ADD CONSTRAINT `playlist_canciones_ibfk_2` FOREIGN KEY (`id_playlist`) REFERENCES `playlists` (`id_playlist`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
