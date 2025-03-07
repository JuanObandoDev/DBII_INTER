-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-03-2025 a las 01:26:28
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
-- Base de datos: `finanzas_inteligentes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ahorros`
--

CREATE DATABASE finanzas_inteligentes;
USE finanzas_inteligentes;

CREATE TABLE `ahorros` (
  `id_ahorro` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_objetivo` int(11) NOT NULL,
  `monto` float NOT NULL,
  `creado` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consejos_financieros`
--

CREATE TABLE `consejos_financieros` (
  `id_concejo_financiero` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `creado` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `egresos`
--

CREATE TABLE `egresos` (
  `id_ingreso` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `monto` float NOT NULL,
  `creado` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fuentes`
--

CREATE TABLE `fuentes` (
  `id_fuente` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingresos`
--

CREATE TABLE `ingresos` (
  `id_ingreso` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_fuente` int(11) NOT NULL,
  `monto` float NOT NULL,
  `creado` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inversiones`
--

CREATE TABLE `inversiones` (
  `id_inversion` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_tipo` int(11) NOT NULL,
  `monto` float NOT NULL,
  `creado` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metas_financieras`
--

CREATE TABLE `metas_financieras` (
  `id_meta_financiera` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `monto_objetivo` float NOT NULL,
  `creado` timestamp NULL DEFAULT current_timestamp(),
  `fecha_limite` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `objetivos`
--

CREATE TABLE `objetivos` (
  `id_objetivo` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos`
--

CREATE TABLE `tipos` (
  `id_tipo` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_Usuario` int(11) NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contraseña` varchar(50) NOT NULL,
  `creado` timestamp NULL DEFAULT current_timestamp(),
  `actualizado` timestamp NULL DEFAULT current_timestamp(),
  `eliminado` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_Usuario`, `nombres`, `apellidos`, `email`, `contraseña`, `creado`, `actualizado`, `eliminado`) VALUES
(1, 'Angello Alejandro', 'Portilla Calpa', 'aaportilla.9253@unicesmag.edu.co', 'hD7$s}$f(ui', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(2, 'Juan Jose', 'Obando Patiño', 'jusdai251030@gmail.com', 'kR9>Mg.hM7|80!&', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(3, 'Richard Camilo', 'Riascos Timana', 'richardcamiloriascos@gmail.com', 'uF2*e83w5AFo?', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(4, 'Santiago Samuel', 'Perez Chicaiza\r\n', 'santiago.samuelpch2205@gmail.com', 'gU5>H1+aH72F2n', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(5, 'Eddy', 'Facchini', 'efacchini4@phoca.cz', 'aD9@w_TE*1I8!S?', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(6, 'Caryl', 'Filisov', 'cfilisov5@parallels.com', 'eO8|/~1Dui', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(7, 'Gannon', 'Rameau', 'grameau6@is.gd', 'sR2#u<D9J@twNE!f', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(8, 'Rosaline', 'Disdel', 'rdisdel7@domainmarket.com', 'wJ4\"=ii!zLz$', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(9, 'Junie', 'Wetherby', 'jwetherby8@cafepress.com', 'uA9/yR0O$$', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(10, 'Christan', 'Feehely', 'cfeehely9@wiley.com', 'zW2`#o&0i5R`Zm', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(11, 'Humfrey', 'Ownsworth', 'hownswortha@hao123.com', 'lH3~xjNK<', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(12, 'Matti', 'Sandels', 'msandelsb@walmart.com', 'lZ6),17et7uj?#A', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(13, 'Cosetta', 'Belson', 'cbelsonc@mail.ru', 'fF0@oX8pqAX', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(14, 'Ibbie', 'Menlove', 'imenloved@reuters.com', 'fM4=lrS!', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(15, 'Whitney', 'Heyburn', 'wheyburne@nyu.edu', 'pZ4@4KCy|CemcjL', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(16, 'Torrey', 'Thornbarrow', 'tthornbarrowf@umn.edu', 'rJ0=K>KLb', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(17, 'Ambrosio', 'Leber', 'aleberg@mtv.com', 'zO3_PdvQ!iVL?9', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(18, 'Lucie', 'Torregiani', 'ltorregianih@t-online.de', 'mL3.Zlkjj', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(19, 'Ted', 'Bradly', 'tbradlyi@google.de', 'oQ4dL9t\"', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(20, 'Gran', 'Geydon', 'ggeydonj@apache.org', 'cT1+q~}b~orI}', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(21, 'Carlene', 'Scorer', 'cscorerk@altervista.org', 'lA9$FO~N#PnL', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(22, 'Lindsay', 'Westall', 'lwestalll@wsj.com', 'zC0?mupZ\'', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(23, 'Quent', 'Puddle', 'qpuddlem@goodreads.com', 'cE3<VO73hg)/D%.l', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(24, 'Hally', 'Pleuman', 'hpleumann@mac.com', 'zI2$AQ9~q*uh<`<5', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(25, 'Doro', 'Borrill', 'dborrillo@typepad.com', 'jB3$Q5SC5|11#R', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(26, 'Brandy', 'Pantecost', 'bpantecostp@businesswire.com', 'wH2\"0O6T~&.', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(27, 'Holly', 'Ginsie', 'hginsieq@lycos.com', 'hP8<m6}jd>', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(28, 'Kerry', 'Connop', 'kconnopr@imgur.com', 'kZ2.5|BcL8tD+)hz', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(29, 'Carie', 'Scholig', 'cscholigs@networksolutions.com', 'sZ0<V/K<Dc/', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(30, 'Jorge', 'Pontefract', 'jpontefractt@scientificamerican.com', 'lB9`P2LH2F.', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(31, 'Alyss', 'MacAdam', 'amacadamu@exblog.jp', 'fS3~20Nf', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(32, 'Agathe', 'Minnette', 'aminnettev@indiegogo.com', 'jQ8\'#FtWE?Knn*', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(33, 'Livy', 'McKibben', 'lmckibbenw@istockphoto.com', 'gM5\'bc3!', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(34, 'Kathleen', 'Sinnott', 'ksinnottx@123-reg.co.uk', 'tF4!W|b!dZ', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(35, 'Jacobo', 'Brydell', 'jbrydelly@wsj.com', 'rY3{D0uq%PV', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(36, 'Waldo', 'Stucksbury', 'wstucksburyz@hexun.com', 'hW9_V7/wNm', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(37, 'Melisa', 'Leek', 'mleek10@vk.com', 'hY1/Q9y}B%7sErAk', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(38, 'Gabbie', 'Rustedge', 'grustedge11@tinyurl.com', 'pT5=g=0YLZ', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(39, 'Connie', 'Guiraud', 'cguiraud12@dropbox.com', 'bE0@h//{e)fJ_', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(40, 'Allianora', 'Dennett', 'adennett13@tinypic.com', 'bL7>I=q,cL\"j', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(41, 'Adlai', 'Naris', 'anaris14@dropbox.com', 'uU4\'{erU+WUA_#', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(42, 'Petr', 'Garrard', 'pgarrard15@goodreads.com', 'kC17LtcuiV', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(43, 'Lacy', 'Gaskarth', 'lgaskarth16@cbslocal.com', 'eB4!ZkOLc&y6', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(44, 'Margarita', 'Cunnington', 'mcunnington17@dailymotion.com', 'uY6|W*zKPr%e', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(45, 'Fifine', 'Shevlan', 'fshevlan18@multiply.com', 'fO6)p}O|%', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(46, 'Lenore', 'Tolefree', 'ltolefree19@cbsnews.com', 'tI3@?hxUt*9Qc.', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(47, 'Andrei', 'Grigore', 'agrigore1a@ca.gov', 'jB6(*D2\'3kA.u', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(48, 'Con', 'Chaulk', 'cchaulk1b@usgs.gov', 'wM1%|)z%K<mQL', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(49, 'Amandy', 'Di Franceschi', 'adifranceschi1c@bigcartel.com', 'jK9(x9U==mm$t$Cy', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(50, 'Kalil', 'Mawman', 'kmawman1d@cdc.gov', 'rV2}k.+e7e+', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(51, 'Clari', 'Scrimshire', 'cscrimshire1e@nbcnews.com', 'jQ0*B?y=', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(52, 'Livvie', 'Roggerone', 'lroggerone1f@photobucket.com', 'hD2=Dc8ZR', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(53, 'Rusty', 'Swindell', 'rswindell1g@bandcamp.com', 'yD3{m~9CuI,s2W?', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(54, 'Russell', 'Burth', 'rburth1h@shutterfly.com', 'yB5<IezuG)F1', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(55, 'Arlinda', 'Lawford', 'alawford1i@so-net.ne.jp', 'uB4<gfb\"WKmn', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(56, 'Stephine', 'Lamplugh', 'slamplugh1j@go.com', 'zX7=5%(_!ZD', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(57, 'Justus', 'Tomasoni', 'jtomasoni1k@wired.com', 'qX0!/\"(n6LV', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(58, 'Krissy', 'Dewire', 'kdewire1l@goodreads.com', 'dM8}+*>>*6xXxe9M', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(59, 'Dino', 'Russ', 'druss1m@yahoo.co.jp', 'nB1?,@|N<', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(60, 'Jerrie', 'Rockhall', 'jrockhall1n@cisco.com', 'kK8?1B4BS&y', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(61, 'Zulema', 'Terrett', 'zterrett1o@xinhuanet.com', 'sP0!Upjt~dF', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(62, 'Nixie', 'Bigglestone', 'nbigglestone1p@cmu.edu', 'lH7%,XL3,8v,BoD', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(63, 'Solomon', 'Aartsen', 'saartsen1q@scribd.com', 'cR3~D>3?=$F(', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(64, 'Abigael', 'Brewett', 'abrewett1r@1688.com', 'kM2(t!5\"z31XM\'U', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(65, 'Donavon', 'Caveney', 'dcaveney1s@japanpost.jp', 'bR3@sUs=7H\'PR', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(66, 'Carie', 'Von Der Empten', 'cvonderempten1t@cbc.ca', 'tN9/|Ir<\'rHsmL<', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(67, 'Ilise', 'MacKee', 'imackee1u@e-recht24.de', 'tN0.IOZv+Y8', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(68, 'Francois', 'Epine', 'fepine1v@livejournal.com', 'sJ8/A1c15', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(69, 'Mariquilla', 'Hardwicke', 'mhardwicke1w@tumblr.com', 'rP4<d\'7\"K', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(70, 'Catrina', 'McGrorty', 'cmcgrorty1x@biglobe.ne.jp', 'kC5OjZOcU)', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(71, 'Kaylyn', 'McPhilip', 'kmcphilip1y@shinystat.com', 'sG9\"p)G\'#XfB*', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(72, 'Salaidh', 'Aronsohn', 'saronsohn1z@bing.com', 'gZ1=i3A9t', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(73, 'Ronalda', 'Clutram', 'rclutram20@who.int', 'zW2$=tE<q', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(74, 'Lissie', 'Bigadike', 'lbigadike21@webnode.com', 'dZ7\"F%,{FOP\"K0g', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(75, 'Elysia', 'Lovstrom', 'elovstrom22@amazonaws.com', 'vD4<*L|.wHOB', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(76, 'Angeline', 'Buckerfield', 'abuckerfield23@topsy.com', 'xE4_{}P+\'tdLRc}G', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(77, 'Aliza', 'Varrow', 'avarrow24@booking.com', 'eV7\"}__01I7p', '2024-10-04 21:44:08', '2024-10-04 21:44:08', NULL),
(78, 'Bobbie', 'Clayill', 'bclayill25@constantcontact.com', 'xO1/N}qE4', '2024-10-04 21:44:08', '2024-10-04 21:44:08', NULL),
(79, 'Louie', 'Pollastro', 'lpollastro26@booking.com', 'jC8$%N9S', '2024-10-04 21:44:08', '2024-10-04 21:44:08', NULL),
(80, 'Urson', 'Itchingham', 'uitchingham27@a8.net', 'mE8}5Tx?2s_#lFz', '2024-10-04 21:44:08', '2024-10-04 21:44:08', NULL),
(81, 'Lily', 'Reilly', 'lreilly28@tinyurl.com', 'yX7/F~FI5V91v', '2024-10-04 21:44:08', '2024-10-04 21:44:08', NULL),
(82, 'Rudiger', 'McArtan', 'rmcartan29@drupal.org', 'vZ7@1=A&,', '2024-10-04 21:38:19', '2024-10-04 21:38:19', NULL),
(83, 'Adeline', 'Santhouse', 'asanthouse2a@upenn.edu', 'bK7+q/\"cN_4+)', '2024-10-04 21:44:08', '2024-10-04 21:44:08', NULL),
(84, 'Brenden', 'Throssell', 'bthrossell2b@baidu.com', 'sO1!qBpROiCL`xL', '2024-10-04 21:44:08', '2024-10-04 21:44:08', NULL),
(85, 'Kalina', 'Casajuana', 'kcasajuana2c@vistaprint.com', 'fF0oflbO$#*(>', '2024-10-04 21:44:08', '2024-10-04 21:44:08', NULL),
(86, 'Natala', 'Cauldfield', 'ncauldfield2d@istockphoto.com', 'bM9@0e?v', '2024-10-04 21:44:08', '2024-10-04 21:44:08', NULL),
(87, 'Monroe', 'Stocken', 'mstocken2e@google.pl', 'sP2!Iy1W', '2024-10-04 21:44:08', '2024-10-04 21:44:08', NULL),
(88, 'Aloysia', 'Pond-Jones', 'apondjones2f@blog.com', 'iH9|>PqX$7NkRNG1', '2024-10-04 21:44:09', '2024-10-04 21:44:09', NULL),
(89, 'Vannie', 'Hammand', 'vhammand2g@state.tx.us', 'rT2?YC7sr', '2024-10-04 21:44:09', '2024-10-04 21:44:09', NULL),
(90, 'Fern', 'Friedank', 'ffriedank2h@merriam-webster.com', 'hJ6\'\'s17DZlj', '2024-10-04 21:44:09', '2024-10-04 21:44:09', NULL),
(91, 'Lemmie', 'Dreinan', 'ldreinan2i@tinyurl.com', 'vM0\"EEG\'8UR*}.', '2024-10-04 21:44:09', '2024-10-04 21:44:09', NULL),
(92, 'Gene', 'Schenkel', 'gschenkel2j@theglobeandmail.com', 'zZ8@$*I_', '2024-10-04 21:44:09', '2024-10-04 21:44:09', NULL),
(93, 'Lynea', 'Marsden', 'lmarsden2k@tinyurl.com', 'nY4{mxyQ\"k#', '2024-10-04 21:44:09', '2024-10-04 21:44:09', NULL),
(94, 'Carmine', 'Cawsey', 'ccawsey2l@php.net', 'iK4!gGeg(I1h|*pI', '2024-10-04 21:44:09', '2024-10-04 21:44:09', NULL),
(95, 'Aurthur', 'Veeler', 'aveeler2m@examiner.com', 'pR8~Ib*o+In', '2024-10-04 21:44:09', '2024-10-04 21:44:09', NULL),
(96, 'Chevalier', 'Buxey', 'cbuxey2n@skype.com', 'xA6%B$+K=NeQc4w', '2024-10-04 21:44:09', '2024-10-04 21:44:09', NULL),
(97, 'Louisette', 'Gorgler', 'lgorgler2o@issuu.com', 'vX7.,/Z~f*nl\")1U', '2024-10-04 21:44:09', '2024-10-04 21:44:09', NULL),
(98, 'Letti', 'Francescuzzi', 'lfrancescuzzi2p@soundcloud.com', 'gG1?V?w3vD', '2024-10-04 21:44:09', '2024-10-04 21:44:09', NULL),
(99, 'Annnora', 'Di Matteo', 'adimatteo2q@bloglines.com', 'pR7/A23%C@3zPZ', '2024-10-04 21:44:09', '2024-10-04 21:44:09', NULL),
(100, 'Poul', 'Reboul', 'preboul2r@jimdo.com', 'xE7)u&mZ', '2024-10-04 21:44:09', '2024-10-04 21:44:09', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ahorros`
--
ALTER TABLE `ahorros`
  ADD PRIMARY KEY (`id_ahorro`),
  ADD KEY `fk_usuario_ahorro` (`id_usuario`),
  ADD KEY `fk_objetivo_ahorro` (`id_objetivo`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `consejos_financieros`
--
ALTER TABLE `consejos_financieros`
  ADD PRIMARY KEY (`id_concejo_financiero`),
  ADD KEY `fk_usuario_consejo` (`id_usuario`);

--
-- Indices de la tabla `egresos`
--
ALTER TABLE `egresos`
  ADD PRIMARY KEY (`id_ingreso`),
  ADD KEY `fk_usuario_egreso` (`id_usuario`),
  ADD KEY `fk_categoria_egreso` (`id_categoria`);

--
-- Indices de la tabla `fuentes`
--
ALTER TABLE `fuentes`
  ADD PRIMARY KEY (`id_fuente`);

--
-- Indices de la tabla `ingresos`
--
ALTER TABLE `ingresos`
  ADD PRIMARY KEY (`id_ingreso`),
  ADD KEY `fk_usuario_ingreso` (`id_usuario`),
  ADD KEY `fk_fuente_ingreso` (`id_fuente`);

--
-- Indices de la tabla `inversiones`
--
ALTER TABLE `inversiones`
  ADD PRIMARY KEY (`id_inversion`),
  ADD KEY `fk_usuario_inversion` (`id_usuario`),
  ADD KEY `fk_tipo_inversion` (`id_tipo`);

--
-- Indices de la tabla `metas_financieras`
--
ALTER TABLE `metas_financieras`
  ADD PRIMARY KEY (`id_meta_financiera`),
  ADD KEY `fk_usuario_meta_financiera` (`id_usuario`);

--
-- Indices de la tabla `objetivos`
--
ALTER TABLE `objetivos`
  ADD PRIMARY KEY (`id_objetivo`);

--
-- Indices de la tabla `tipos`
--
ALTER TABLE `tipos`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_Usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ahorros`
--
ALTER TABLE `ahorros`
  MODIFY `id_ahorro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `consejos_financieros`
--
ALTER TABLE `consejos_financieros`
  MODIFY `id_concejo_financiero` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `egresos`
--
ALTER TABLE `egresos`
  MODIFY `id_ingreso` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `fuentes`
--
ALTER TABLE `fuentes`
  MODIFY `id_fuente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ingresos`
--
ALTER TABLE `ingresos`
  MODIFY `id_ingreso` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inversiones`
--
ALTER TABLE `inversiones`
  MODIFY `id_inversion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `metas_financieras`
--
ALTER TABLE `metas_financieras`
  MODIFY `id_meta_financiera` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `objetivos`
--
ALTER TABLE `objetivos`
  MODIFY `id_objetivo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipos`
--
ALTER TABLE `tipos`
  MODIFY `id_tipo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ahorros`
--
ALTER TABLE `ahorros`
  ADD CONSTRAINT `fk_objetivo_ahorro` FOREIGN KEY (`id_objetivo`) REFERENCES `objetivos` (`id_objetivo`),
  ADD CONSTRAINT `fk_usuario_ahorro` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_Usuario`);

--
-- Filtros para la tabla `consejos_financieros`
--
ALTER TABLE `consejos_financieros`
  ADD CONSTRAINT `fk_usuario_consejo` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_Usuario`);

--
-- Filtros para la tabla `egresos`
--
ALTER TABLE `egresos`
  ADD CONSTRAINT `fk_categoria_egreso` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`),
  ADD CONSTRAINT `fk_usuario_egreso` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_Usuario`);

--
-- Filtros para la tabla `ingresos`
--
ALTER TABLE `ingresos`
  ADD CONSTRAINT `fk_fuente_ingreso` FOREIGN KEY (`id_fuente`) REFERENCES `fuentes` (`id_fuente`),
  ADD CONSTRAINT `fk_usuario_ingreso` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_Usuario`);

--
-- Filtros para la tabla `inversiones`
--
ALTER TABLE `inversiones`
  ADD CONSTRAINT `fk_tipo_inversion` FOREIGN KEY (`id_tipo`) REFERENCES `tipos` (`id_tipo`),
  ADD CONSTRAINT `fk_usuario_inversion` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_Usuario`);

--
-- Filtros para la tabla `metas_financieras`
--
ALTER TABLE `metas_financieras`
  ADD CONSTRAINT `fk_usuario_meta_financiera` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_Usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
