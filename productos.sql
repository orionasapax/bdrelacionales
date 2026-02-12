-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-02-2026 a las 16:23:10
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
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `precio` double NOT NULL,
  `marca` varchar(50) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `marca`, `descripcion`, `cantidad`) VALUES
(1, 'Destornillador De Manguera Flexible Con Manguito Destornilla', 59, 'generic', 'Destornillador de manga flexible, destornillador de tuerca cuadrada de 1/4 de pulgada\r\n\r\n\r\n, destornillador de manguera flexible. El destornillador de abrazadera de manguera flexible cuenta con un eje flexible que permite un fácil acceso a las abrazaderas de manguera difíciles de llegar, lo que lo convierte en la herramienta ideal para técnicos y entusiastas. Mango ergonómico para mayor comodidad: diseñada con un mango ergonómico, esta herramienta proporciona un agarre cómodo durante el uso, lo ', 1),
(4, 'Kit Gamer de Teclado y Mouse MSI FORGE GK100, Alámbrico, USB, Negro, Español', 371, ' MSI FORGE', 'El MSI Kit Gamer de Teclado y Mouse Alámbrico USB Negro es un conjunto diseñado para ofrecer una experiencia de juego óptima. Este kit incluye un teclado de tamaño completo con un diseño QWERTY y un mouse, ambos en color negro. El teclado cuenta con un interruptor de membrana y botones presionados, lo que proporciona una respuesta táctil adecuada durante el uso. Además, incluye un teclado numérico y 12 teclas de acceso rápido, facilitando el acceso a funciones adicionales.\r\n\r\nLa retroiluminación', 1),
(6, 'Guitarra eléctrica de doble mástil color rojo vino envejecida personalizada con 12 y 6 cuerdas: perfecta for guitarristas profesionales y entusiastas que buscan un sonido alto', 8701.66, 'JOEBO', 'Recordatorio amistoso:Antes de pedir una guitarra eléctrica, comuníquese con el vendedor for comunicarle la fecha estimada de entrega de su guitarra. Si tenemos esta guitarra, se la enviaremos lo antes posible. Si necesitamos algo de tiempo for fabricar esta guitarra, entonces tal vez la fecha de entrega se retrase y le daremos un período de producción específico. ¡Le pedimos que organice su tiempo de manera razonable y le agradecemos su cooperación!\r\nAlta personalización: nuestras guitarras elé', 1),
(8, 'Clarinete Yamaha De Pasta En Bb Con Estuche', 13905, 'Yamaha', 'El YCL-255 combina la producción de vanguardia con las funciones de alta gama de los clarinetes de Yamaha. El resultado es un instrumento de estudio excepcional que reproduce un cálido y resonante timbre que es notablemente similar al de un clarinete de madera. Tiene un cuerpo de resina ABS con un acabado mate que imita al clarinete de madera y un apoyo para el pulgar ajustable con un anillo de correa del diapasón que permite que incluso quienes tienen manos pequeñas puedan sujetar fácilmente el', 1),
(10, 'Force1 Dron de juguete de inodoro Skibidi oficialmente licenciado RC - Drones voladores con mochila a reacción y motosierra, modo sin cabeza, mantenimiento de altitud, control de velocidad, control', 314.85, 'Force1', 'Dron de inodoro Skibidi con licencia oficial: prepárate para la batalla del inodoro Skibidist del siglo contra los camarógrafos con este mini dron Force1 Skibidi Toilet Flying Buzzsaw con licencia oficial Conquista el mundo con 2 velocidades, batería recargable, modo sin cabeza, retención de altitud y control remoto.\r\nAuthentic Jetpack Buzzsaw Skibidi Toilet: El Jetblack Buzzsaw Skibidi Toilet apareció por primera vez en el Episodio 48, con una gran sierra circular y torretas laterales duales en', 1),
(12, '24 Recipientes Herméticos Plástico Almacenamiento Cocina Color Blanco', 467.22, 'ShopMall', 'Descripción del Producto:\r\n\r\nMantén tu cocina ordenada y tus alimentos frescos con este increíble conjunto de 24 tuppers contenedores herméticos. Diseñados para ofrecer la máxima versatilidad y durabilidad, estos contenedores son ideales para almacenar desde ingredientes secos hasta sobras de comida.\r\n\r\nCaracterísticas Principales:\r\n\r\nHerméticos y Antiderrames: Cada contenedor cuenta con una tapa de sellado hermético que asegura que tus alimentos se mantengan frescos por más tiempo y evita derra', 1),
(13, '4runner Limited Hev 2026', 1, 'Toyota', 'NUEVA EN AGENCIA!!!\r\nENGANCHE DESDE $200,00\r\nresto a 72 meses!!\r\nGarantia extendida de 7 años o 150,000 kms!!\r\nReposición valor factura por 4 años!!\r\n\r\nDejanos tu auto a cuenta!! (2018-2026)\r\n\r\n\r\nCaracterísticas Generales\r\nAire acondicionado automático de 2 zonas, con salidas de aire traseras\r\nBolsas de aire frontales (2), laterales (2), para rodillas (2) y tipo cortina (2)\r\nCámara de reversa 360° + limpiador\r\nSensores de estacionamiento delanteros y traseros con Sistema de Frenado de Emergencia', 1),
(15, 'Colchón Matrimonial Roomi Convoluted Memory Foam Eco-Friendly 20cm', 6999, 'ROOMI', 'CONVOLUTED MEMORY FOAM: Su diseño ondulado distribuye mejor tu peso, balance perfecto entre suavidad y soporte.\r\n\r\nCONFORT Y CALIDAD: Gracias a su confort medio, el colchón Smile cuenta con su diseño ergonómico y materiales premium.\r\n\r\nALMOHADA AJUSTABLE: Relleno memory foam triturado que permite ajustar la altura y así lograr la firmeza ideal.\r\n\r\nSOPORTE ERGONÓMICO: Memory foam que se adapta a la forma de tu cabeza y cuello, logrando una postura óptima.\r\n\r\nEl Colchón Matrimonial Roomi Smile es ', 1),
(17, 'Compresor Aire Inflador Llantas Llantas Portatil Inalámbrico Negro', 250.11, 'Komate', 'Gracias por adquirir la bomba de aire portátil, que facilita y hace más cómodo el inflado. Este producto se puede usar para inflar coches, motos, bicicletas, vehículos eléctricos y pequeños juguetes inflables como pelotas, etc. También se puede usar como medidor de presión de neumáticos y linterna.\r\n\r\n1. Presión de neumáticos preajustada, se detiene al llenarse y funciona automáticamente.\r\n2. Nuevo núcleo de inflado mejorado.\r\n3. Luz nocturna para garantizar la seguridad del inflado nocturno.\r\n\r', 1),
(19, 'Faja Post Operatoria Body Traje Para Perros Chaleco Mascotas', 251.48, 'AutoWT', '1.Apto para Inodoro Unisex --- No es necesario enrollarse o quitarse, las mascotas pueden usar el baño libremente mientras llevan puesto este traje de recuperación, evitando ensuciarse la ropa. Esta característica le permite evitar quitarse el traje quirúrgico con frecuencia, así libre de preocupaciones. Si su perro es macho, recorte la línea circular en el abdomen para permitir la excreción.\r\n\r\n2.Diseño de Cremallera y Cinta Mágica para un Uso Fácil --- El diseño del traje de recuperación posto', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
