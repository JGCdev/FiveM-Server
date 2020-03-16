-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-06-2019 a las 00:02:45
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `essentialmode`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `addon_account`
--

CREATE TABLE `addon_account` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `addon_account`
--

INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
('bank_savings', 'Banco', 0),
('caution', 'Peligro', 0),
('property_black_money', 'Agente de la propiedad', 0),
('society_ambulance', 'Ambulancia', 1),
('society_banker', 'Banco', 1),
('society_cardealer', 'Concesionario', 1),
('society_cartel', 'Cartel', 1),
('society_gang', 'Banda', 1),
('society_mafia', 'Mafia', 1),
('society_mechanic', 'Macánico', 1),
('society_nightclub', 'Club Nocturno', 1),
('society_police', 'Policía', 1),
('society_taxi', 'Taxi', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `addon_account_data`
--

CREATE TABLE `addon_account_data` (
  `id` int(11) NOT NULL,
  `account_name` varchar(100) DEFAULT NULL,
  `money` int(11) NOT NULL,
  `owner` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `addon_account_data`
--

INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
(1, 'society_banker', 0, NULL),
(2, 'society_cardealer', 0, NULL),
(3, 'society_mechanic', 3677249, NULL),
(4, 'society_police', 171624, NULL),
(11, 'society_cartel', 0, NULL),
(12, 'society_gang', 0, NULL),
(13, 'society_mafia', 50600, NULL),
(20, 'society_ambulance', 757790, NULL),
(48, 'society_nightclub', 0, NULL),
(133, 'bank_savings', 0, 'steam:11000010febf2f0'),
(134, 'caution', 0, 'steam:11000010febf2f0'),
(135, 'property_black_money', 0, 'steam:11000010febf2f0'),
(136, 'bank_savings', 0, 'steam:11000010f2fc36c'),
(137, 'caution', 0, 'steam:11000010f2fc36c'),
(138, 'property_black_money', 0, 'steam:11000010f2fc36c'),
(139, 'bank_savings', 0, 'steam:110000135fc6b1e'),
(140, 'caution', 0, 'steam:110000135fc6b1e'),
(141, 'property_black_money', 0, 'steam:110000135fc6b1e'),
(142, 'bank_savings', 0, 'steam:11000010bc9777a'),
(143, 'caution', 0, 'steam:11000010bc9777a'),
(144, 'property_black_money', 0, 'steam:11000010bc9777a'),
(145, 'bank_savings', 0, 'steam:11000010a16ed9a'),
(146, 'caution', 2000, 'steam:11000010a16ed9a'),
(147, 'property_black_money', 0, 'steam:11000010a16ed9a'),
(148, 'bank_savings', 0, 'steam:11000011a1c13e8'),
(149, 'caution', 0, 'steam:11000011a1c13e8'),
(150, 'property_black_money', 0, 'steam:11000011a1c13e8'),
(151, 'bank_savings', 0, 'steam:110000107d06976'),
(152, 'caution', 80, 'steam:110000107d06976'),
(153, 'property_black_money', 0, 'steam:110000107d06976'),
(154, 'bank_savings', 0, 'steam:110000134c6b441'),
(155, 'caution', 0, 'steam:110000134c6b441'),
(156, 'property_black_money', 0, 'steam:110000134c6b441'),
(157, 'bank_savings', 0, 'steam:11000010b13ed15'),
(158, 'caution', 0, 'steam:11000010b13ed15'),
(159, 'property_black_money', 0, 'steam:11000010b13ed15'),
(160, 'bank_savings', 0, 'steam:11000013b6d8507'),
(161, 'caution', 0, 'steam:11000013b6d8507'),
(162, 'property_black_money', 0, 'steam:11000013b6d8507'),
(163, 'bank_savings', 0, 'steam:110000117222fb4'),
(164, 'caution', 0, 'steam:110000117222fb4'),
(165, 'property_black_money', 0, 'steam:110000117222fb4'),
(166, 'bank_savings', 0, 'steam:11000010f3310ac'),
(167, 'caution', 0, 'steam:11000010f3310ac'),
(168, 'property_black_money', 0, 'steam:11000010f3310ac'),
(169, 'bank_savings', 0, 'steam:11000013c2ce0a6'),
(170, 'caution', 0, 'steam:11000013c2ce0a6'),
(171, 'property_black_money', 0, 'steam:11000013c2ce0a6'),
(172, 'bank_savings', 0, 'steam:11000010b08ef51'),
(173, 'caution', 0, 'steam:11000010b08ef51'),
(174, 'property_black_money', 0, 'steam:11000010b08ef51'),
(175, 'bank_savings', 0, 'steam:11000011bb7624b'),
(176, 'caution', 1280, 'steam:11000011bb7624b'),
(177, 'property_black_money', 0, 'steam:11000011bb7624b'),
(178, 'bank_savings', 0, 'steam:11000010d0c1172'),
(179, 'caution', 0, 'steam:11000010d0c1172'),
(180, 'property_black_money', 0, 'steam:11000010d0c1172'),
(181, 'society_taxi', 449244, NULL),
(182, 'bank_savings', 0, 'steam:11000010726b8b3'),
(183, 'caution', 0, 'steam:11000010726b8b3'),
(184, 'property_black_money', 0, 'steam:11000010726b8b3'),
(185, 'bank_savings', 0, 'steam:1100001384ce0d6'),
(186, 'caution', 0, 'steam:1100001384ce0d6'),
(187, 'property_black_money', 0, 'steam:1100001384ce0d6'),
(188, 'bank_savings', 0, 'steam:11000013294aa18'),
(189, 'caution', 0, 'steam:11000013294aa18'),
(190, 'property_black_money', 0, 'steam:11000013294aa18'),
(191, 'bank_savings', 0, 'steam:1100001074b358f'),
(192, 'caution', 0, 'steam:1100001074b358f'),
(193, 'property_black_money', 0, 'steam:1100001074b358f'),
(194, 'bank_savings', 0, 'steam:11000010f742b73'),
(195, 'caution', 100, 'steam:11000010f742b73'),
(196, 'property_black_money', 0, 'steam:11000010f742b73'),
(197, 'property_black_money', 0, 'steam:11000010e572719'),
(198, 'bank_savings', 0, 'steam:11000010e572719'),
(199, 'caution', 0, 'steam:11000010e572719'),
(200, 'bank_savings', 0, 'steam:110000115821821'),
(201, 'caution', 0, 'steam:110000115821821'),
(202, 'property_black_money', 0, 'steam:110000115821821'),
(203, 'bank_savings', 0, 'steam:11000010d328fae'),
(204, 'caution', 0, 'steam:11000010d328fae'),
(205, 'property_black_money', 0, 'steam:11000010d328fae'),
(206, 'bank_savings', 0, 'steam:110000132368c6a'),
(207, 'caution', 0, 'steam:110000132368c6a'),
(208, 'property_black_money', 0, 'steam:110000132368c6a'),
(209, 'bank_savings', 0, 'steam:1100001138a08d6'),
(210, 'caution', 380, 'steam:1100001138a08d6'),
(211, 'property_black_money', 0, 'steam:1100001138a08d6'),
(212, 'bank_savings', 0, 'steam:110000116d82e19'),
(213, 'caution', 0, 'steam:110000116d82e19'),
(214, 'property_black_money', 0, 'steam:110000116d82e19'),
(215, 'bank_savings', 0, 'steam:110000111a49c66'),
(216, 'caution', 0, 'steam:110000111a49c66'),
(217, 'property_black_money', 0, 'steam:110000111a49c66'),
(218, 'bank_savings', 0, 'steam:1100001186b7a77'),
(219, 'caution', 0, 'steam:1100001186b7a77'),
(220, 'property_black_money', 0, 'steam:1100001186b7a77'),
(221, 'bank_savings', 0, 'steam:1100001348c4d8b'),
(222, 'caution', 0, 'steam:1100001348c4d8b'),
(223, 'property_black_money', 0, 'steam:1100001348c4d8b'),
(224, 'bank_savings', 0, 'steam:11000013c51ade8'),
(225, 'caution', 0, 'steam:11000013c51ade8'),
(226, 'property_black_money', 0, 'steam:11000013c51ade8');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `addon_inventory`
--

CREATE TABLE `addon_inventory` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `addon_inventory`
--

INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
('property', 'Propietario', 0),
('society_ambulance', 'Ambulancia', 1),
('society_cardealer', 'Concesionario', 1),
('society_cartel', 'Cartel', 1),
('society_gang', 'Banda', 1),
('society_mafia', 'Mafia', 1),
('society_mechanic', 'Macánico', 1),
('society_nightclub', 'Club Nocturno', 1),
('society_nightclub_fridge', 'Club Nocturno (frigorífico)', 1),
('society_police', 'Policía', 1),
('society_taxi', 'Taxi', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `addon_inventory_items`
--

CREATE TABLE `addon_inventory_items` (
  `id` int(11) NOT NULL,
  `inventory_name` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `addon_inventory_items`
--

INSERT INTO `addon_inventory_items` (`id`, `inventory_name`, `name`, `count`, `owner`) VALUES
(1, 'property', 'drill', 4, 'steam:11000010febf2f0'),
(2, 'property', 'water', 0, 'steam:11000011a1c13e8'),
(3, 'property', 'morf', 0, 'steam:11000010f2fc36c');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `billing`
--

CREATE TABLE `billing` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `billing`
--

INSERT INTO `billing` (`id`, `identifier`, `sender`, `target_type`, `target`, `label`, `amount`) VALUES
(38, 'steam:1100001074b358f', 'steam:11000013c2ce0a6', 'society', 'society_police', 'Multa total: No respetar la prioridad', 120),
(39, 'steam:11000010e572719', 'steam:11000013c2ce0a6', 'society', 'society_police', 'Multa total: Conducir sin carnet', 1500),
(41, 'steam:11000010febf2f0', 'steam:11000010f3310ac', 'society', 'society_mechanic', 'Mecánico', 56000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cardealer_vehicles`
--

CREATE TABLE `cardealer_vehicles` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `characters`
--

CREATE TABLE `characters` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `dateofbirth` varchar(255) NOT NULL,
  `sex` varchar(1) NOT NULL DEFAULT 'M',
  `height` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `characters`
--

INSERT INTO `characters` (`id`, `identifier`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`) VALUES
(50, 'steam:11000010f2fc36c', 'Armando', 'Jaleo', '13/04/1992', 'm', '160'),
(51, 'steam:110000135fc6b1e', 'Franchu', 'Klein', '14-2-1989', 'm', '200'),
(52, 'steam:11000010bc9777a', 'Soy', 'Leyenda', '1983/06/24', 'm', '185'),
(53, 'steam:11000011a1c13e8', 'Oscar', 'Martin', '1987', 'm', '144'),
(54, 'steam:11000010a16ed9a', 'Purp', 'Gimenez Gimenez', '1993 10 10', 'm', '180'),
(55, 'steam:110000135fc6b1e', 'Franchu', 'Klein', '14-2-1989', 'm', '200'),
(56, 'steam:110000135fc6b1e', 'Franchu', 'Klein', '14-2-1989', 'm', '200'),
(57, 'steam:110000107d06976', 'Damius', 'Fusco', '1993-02-02', 'm', '170'),
(58, 'steam:110000134c6b441', 'Franky', 'Santa', '1973/04/27', 'm', '175'),
(59, 'steam:11000010b13ed15', 'Amapola', 'Sanz', '24/04/94', 'f', '140'),
(60, 'steam:11000013b6d8507', 'Edu', 'Poveda', '30-04-2002', 'm', '190'),
(61, 'steam:110000117222fb4', 'Benito ', 'Camelas', '2000-5-5', 'm', '200'),
(62, 'steam:11000010b13ed15', 'Amapola', 'Los Santos', '24/04/94', 'f', '140'),
(63, 'steam:11000010f3310ac', 'Anuel', 'AA', '4/5/1888', 'm', '199'),
(64, 'steam:11000010f3310ac', 'Anuel', 'AA', '4/5/1888', 'm', '199'),
(67, 'steam:11000010b08ef51', 'Thomas', 'Turbado', '1998/04/28', 'm', '184'),
(68, 'steam:11000011bb7624b', 'The', 'Sentex', '2000/11/30', 'm', '185'),
(69, 'steam:11000010d0c1172', 'Kasaka', 'Nigga', '28/06/2000', 'm', '185'),
(70, 'steam:11000010726b8b3', 'Adry', 'Lopez', '17/04/1998', 'm', '150'),
(71, 'steam:1100001384ce0d6', 'Carlos', 'Staman', '1992-11-01', 'm', '180'),
(72, 'steam:11000013294aa18', 'Eustaquia', 'Martinez', '1995-02-04', 'f', '165'),
(73, 'steam:1100001384ce0d6', 'Carlos', 'Statman', '1992-11-01', 'm', '180'),
(74, 'steam:1100001074b358f', 'Joel', 'Martin', '06/06/199', 'm', '178'),
(75, 'steam:1100001074b358f', 'Joel', 'Martin', '06/06/199', 'm', '178'),
(76, 'steam:11000010f742b73', 'Hijo', 'Puta', '2000-04-1', 'm', '200'),
(77, 'steam:11000010e572719', 'Alex', 'MArediez', '22222222', 'm', '180'),
(78, 'steam:11000010e572719', 'Alex', 'MArediez', '22222222', 'f', '180'),
(79, 'steam:11000010e572719', 'Samanta', 'Feledespatp', '111111', 'f', '200'),
(80, 'steam:110000115821821', 'Simon', 'Walker', '2000/7/4', 'm', '190'),
(81, 'steam:11000010d328fae', 'Sergio', 'Carrasco', '22/07/1999', 'm', '170'),
(82, 'steam:110000132368c6a', 'Jose', 'Chuletillo', '1992-04-23', 'm', '150'),
(83, 'steam:1100001138a08d6', 'Adhara', 'Kuroneko', '1999-10-07', 'f', '160'),
(84, 'steam:110000116d82e19', 'Gennaro', 'Petrucci', '1997 10 25', 'm', '174'),
(85, 'steam:110000111a49c66', 'Juan Pablo', 'Osorio', '1995920', 'm', '190'),
(86, 'steam:1100001186b7a77', 'Yiyo', 'Ferreira Torres', '1995/19/16', 'm', '178'),
(87, 'steam:1100001348c4d8b', 'Alejandro', 'Dominguez', '1995-07-01', 'm', '187'),
(88, 'steam:11000013c51ade8', 'Coman', 'Garcia Sanchez', '1998-04-20', 'm', '186'),
(90, 'steam:11000013c2ce0a6', 'Valentina', 'Marin', '29-04-2001', 'f', '165');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datastore`
--

CREATE TABLE `datastore` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `datastore`
--

INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
('property', 'Casa', 0),
('society_ambulance', 'Ambulancia', 1),
('society_cartel', 'Cartel', 1),
('society_gang', 'Banda', 1),
('society_mafia', 'Mafia', 1),
('society_nightclub', 'Club Nocturno', 1),
('society_police', 'Policía', 1),
('society_taxi', 'Taxi', 1),
('user_ears', 'Ears', 0),
('user_glasses', 'Glasses', 0),
('user_helmet', 'Helmet', 0),
('user_mask', 'Mask', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datastore_data`
--

CREATE TABLE `datastore_data` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `owner` varchar(60) DEFAULT NULL,
  `data` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `datastore_data`
--

INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
(1, 'society_police', NULL, '{\"weapons\":[{\"count\":0,\"name\":\"WEAPON_APPISTOL\"},{\"count\":0,\"name\":\"WEAPON_NIGHTSTICK\"},{\"count\":0,\"name\":\"WEAPON_STUNGUN\"},{\"count\":0,\"name\":\"WEAPON_FLASHLIGHT\"},{\"count\":0,\"name\":\"WEAPON_BAT\"},{\"count\":0,\"name\":\"WEAPON_PISTOL\"},{\"count\":0,\"name\":\"WEAPON_SMG\"},{\"count\":0,\"name\":\"WEAPON_PUMPSHOTGUN\"},{\"count\":0,\"name\":\"WEAPON_CARBINERIFLE\"},{\"count\":0,\"name\":\"WEAPON_ADVANCEDRIFLE\"},{\"count\":0,\"name\":\"WEAPON_SNIPERRIFLE\"},{\"count\":0,\"name\":\"WEAPON_MACHETE\"}]}'),
(4, 'society_cartel', NULL, '{}'),
(5, 'society_gang', NULL, '{}'),
(6, 'society_mafia', NULL, '{\"weapons\":[{\"count\":0,\"name\":\"WEAPON_NIGHTSTICK\"},{\"count\":1,\"name\":\"WEAPON_FLAREGUN\"}]}'),
(9, 'society_ambulance', NULL, '{}'),
(19, 'society_nightclub', NULL, '{}'),
(48, 'property', 'steam:11000010febf2f0', '{}'),
(49, 'property', 'steam:11000010f2fc36c', '{\"dressing\":[{\"skin\":{\"glasses_2\":5,\"moles_1\":0,\"ears_2\":0,\"hair_color_1\":10,\"bags_1\":0,\"bodyb_2\":0,\"complexion_2\":0,\"bodyb_1\":0,\"blemishes_2\":0,\"torso_2\":21,\"makeup_2\":0,\"helmet_1\":56,\"beard_1\":0,\"shoes_1\":8,\"skin\":3,\"arms\":0,\"bproof_2\":0,\"shoes_2\":2,\"makeup_4\":0,\"sex\":0,\"face\":2,\"bags_2\":0,\"beard_4\":0,\"eye_color\":0,\"ears_1\":-1,\"hair_color_2\":5,\"arms_2\":0,\"complexion_1\":0,\"age_1\":0,\"pants_2\":2,\"hair_2\":2,\"sun_2\":0,\"watches_1\":2,\"eyebrows_4\":0,\"tshirt_1\":106,\"chest_2\":0,\"bracelets_2\":0,\"helmet_2\":0,\"tshirt_2\":0,\"blemishes_1\":0,\"beard_2\":0,\"chain_1\":5,\"glasses_1\":5,\"decals_1\":13,\"torso_1\":191,\"lipstick_1\":0,\"mask_1\":0,\"makeup_1\":0,\"blush_3\":0,\"makeup_3\":0,\"blush_2\":0,\"moles_2\":0,\"chest_1\":0,\"lipstick_2\":0,\"bproof_1\":0,\"pants_1\":5,\"age_2\":0,\"blush_1\":0,\"lipstick_4\":0,\"chain_2\":4,\"eyebrows_3\":0,\"sun_1\":0,\"hair_1\":14,\"decals_2\":0,\"mask_2\":0,\"lipstick_3\":0,\"eyebrows_1\":0,\"watches_2\":2,\"bracelets_1\":-1,\"chest_3\":0,\"eyebrows_2\":0,\"beard_3\":0},\"label\":\"maffis pro nigga\"}]}'),
(50, 'property', 'steam:110000135fc6b1e', '{\"dressing\":[[]]}'),
(51, 'property', 'steam:11000010bc9777a', '{}'),
(52, 'property', 'steam:11000010a16ed9a', '{\"dressing\":[[],[]]}'),
(53, 'property', 'steam:11000011a1c13e8', '{\"weapons\":[{\"ammo\":10,\"name\":\"WEAPON_PUMPSHOTGUN\"},{\"ammo\":9,\"name\":\"WEAPON_PUMPSHOTGUN\"},{\"ammo\":10,\"name\":\"WEAPON_SNIPERRIFLE\"},{\"ammo\":20,\"name\":\"WEAPON_SNIPERRIFLE\"}]}'),
(54, 'property', 'steam:110000107d06976', '{\"dressing\":[[]]}'),
(55, 'property', 'steam:110000134c6b441', '{}'),
(56, 'property', 'steam:11000010b13ed15', '{}'),
(57, 'property', 'steam:11000013b6d8507', '{}'),
(58, 'property', 'steam:110000117222fb4', '{}'),
(59, 'property', 'steam:11000010f3310ac', '{\"dressing\":[[]]}'),
(60, 'user_ears', 'steam:11000010a16ed9a', '{}'),
(61, 'user_glasses', 'steam:11000010a16ed9a', '{}'),
(62, 'user_helmet', 'steam:11000010a16ed9a', '{}'),
(63, 'user_mask', 'steam:11000010a16ed9a', '{}'),
(64, 'user_ears', 'steam:11000010f3310ac', '{}'),
(65, 'user_glasses', 'steam:11000010f3310ac', '{}'),
(66, 'user_helmet', 'steam:11000010f3310ac', '{}'),
(67, 'user_mask', 'steam:11000010f3310ac', '{\"hasMask\":true,\"skin\":{\"mask_2\":0,\"mask_1\":3}}'),
(68, 'user_ears', 'steam:110000135fc6b1e', '{}'),
(69, 'user_glasses', 'steam:110000135fc6b1e', '{\"hasGlasses\":true,\"skin\":{\"glasses_2\":6,\"glasses_1\":5}}'),
(70, 'user_helmet', 'steam:110000135fc6b1e', '{}'),
(71, 'user_mask', 'steam:110000135fc6b1e', '{}'),
(72, 'user_ears', 'steam:11000010bc9777a', '{}'),
(73, 'user_glasses', 'steam:11000010bc9777a', '{}'),
(74, 'user_helmet', 'steam:11000010bc9777a', '{}'),
(75, 'user_mask', 'steam:11000010bc9777a', '{}'),
(76, 'user_ears', 'steam:11000010f2fc36c', '{}'),
(77, 'user_glasses', 'steam:11000010f2fc36c', '{}'),
(78, 'user_helmet', 'steam:11000010f2fc36c', '{\"hasHelmet\":true,\"skin\":{\"helmet_2\":7,\"helmet_1\":130}}'),
(79, 'user_mask', 'steam:11000010f2fc36c', '{\"skin\":{\"mask_1\":111,\"mask_2\":14},\"hasMask\":true}'),
(80, 'user_ears', 'steam:11000010febf2f0', '{}'),
(81, 'user_glasses', 'steam:11000010febf2f0', '{}'),
(82, 'user_helmet', 'steam:11000010febf2f0', '{}'),
(83, 'user_mask', 'steam:11000010febf2f0', '{}'),
(84, 'user_ears', 'steam:11000011a1c13e8', '{}'),
(85, 'user_glasses', 'steam:11000011a1c13e8', '{}'),
(86, 'user_helmet', 'steam:11000011a1c13e8', '{}'),
(87, 'user_mask', 'steam:11000011a1c13e8', '{}'),
(88, 'property', 'steam:11000013c2ce0a6', '{}'),
(89, 'user_ears', 'steam:11000013c2ce0a6', '{}'),
(90, 'user_glasses', 'steam:11000013c2ce0a6', '{}'),
(91, 'user_helmet', 'steam:11000013c2ce0a6', '{}'),
(92, 'user_mask', 'steam:11000013c2ce0a6', '{}'),
(93, 'user_ears', 'steam:110000134c6b441', '{}'),
(94, 'user_glasses', 'steam:110000134c6b441', '{}'),
(95, 'user_helmet', 'steam:110000134c6b441', '{}'),
(96, 'user_mask', 'steam:110000134c6b441', '{}'),
(97, 'property', 'steam:11000010b08ef51', '{}'),
(98, 'user_glasses', 'steam:11000010b08ef51', '{}'),
(99, 'user_ears', 'steam:11000010b08ef51', '{}'),
(100, 'user_helmet', 'steam:11000010b08ef51', '{}'),
(101, 'user_mask', 'steam:11000010b08ef51', '{}'),
(102, 'property', 'steam:11000011bb7624b', '{}'),
(103, 'user_ears', 'steam:11000011bb7624b', '{}'),
(104, 'user_glasses', 'steam:11000011bb7624b', '{}'),
(105, 'user_helmet', 'steam:11000011bb7624b', '{}'),
(106, 'user_mask', 'steam:11000011bb7624b', '{}'),
(107, 'property', 'steam:11000010d0c1172', '{}'),
(108, 'user_ears', 'steam:11000010d0c1172', '{}'),
(109, 'user_glasses', 'steam:11000010d0c1172', '{}'),
(110, 'user_helmet', 'steam:11000010d0c1172', '{}'),
(111, 'user_mask', 'steam:11000010d0c1172', '{}'),
(112, 'user_ears', 'steam:110000107d06976', '{}'),
(113, 'user_glasses', 'steam:110000107d06976', '{}'),
(114, 'user_helmet', 'steam:110000107d06976', '{}'),
(115, 'user_mask', 'steam:110000107d06976', '{\"hasMask\":true,\"skin\":{\"mask_2\":0,\"mask_1\":3}}'),
(116, 'society_taxi', NULL, '{}'),
(117, 'property', 'steam:11000010726b8b3', '{}'),
(118, 'user_ears', 'steam:11000010726b8b3', '{}'),
(119, 'user_glasses', 'steam:11000010726b8b3', '{}'),
(120, 'user_helmet', 'steam:11000010726b8b3', '{}'),
(121, 'user_mask', 'steam:11000010726b8b3', '{}'),
(122, 'property', 'steam:1100001384ce0d6', '{\"weapons\":[{\"ammo\":200,\"name\":\"WEAPON_APPISTOL\"}],\"dressing\":[[],[],[],[],[],[]]}'),
(123, 'user_mask', 'steam:1100001384ce0d6', '{}'),
(124, 'user_glasses', 'steam:1100001384ce0d6', '{\"skin\":{\"glasses_1\":8,\"glasses_2\":3},\"hasGlasses\":true}'),
(125, 'user_helmet', 'steam:1100001384ce0d6', '{}'),
(126, 'user_ears', 'steam:1100001384ce0d6', '{}'),
(127, 'property', 'steam:11000013294aa18', '{}'),
(128, 'user_ears', 'steam:11000013294aa18', '{}'),
(129, 'user_glasses', 'steam:11000013294aa18', '{}'),
(130, 'user_mask', 'steam:11000013294aa18', '{}'),
(131, 'user_helmet', 'steam:11000013294aa18', '{}'),
(132, 'property', 'steam:1100001074b358f', '{}'),
(133, 'user_ears', 'steam:1100001074b358f', '{}'),
(134, 'user_glasses', 'steam:1100001074b358f', '{}'),
(135, 'user_helmet', 'steam:1100001074b358f', '{}'),
(136, 'user_mask', 'steam:1100001074b358f', '{}'),
(137, 'property', 'steam:11000010f742b73', '{}'),
(138, 'user_ears', 'steam:11000010f742b73', '{}'),
(139, 'user_glasses', 'steam:11000010f742b73', '{}'),
(140, 'user_helmet', 'steam:11000010f742b73', '{}'),
(141, 'user_mask', 'steam:11000010f742b73', '{}'),
(142, 'property', 'steam:11000010e572719', '{}'),
(143, 'user_glasses', 'steam:11000010e572719', '{}'),
(144, 'user_ears', 'steam:11000010e572719', '{}'),
(145, 'user_mask', 'steam:11000010e572719', '{}'),
(146, 'user_helmet', 'steam:11000010e572719', '{}'),
(147, 'property', 'steam:110000115821821', '{}'),
(148, 'user_ears', 'steam:110000115821821', '{}'),
(149, 'user_glasses', 'steam:110000115821821', '{}'),
(150, 'user_mask', 'steam:110000115821821', '{}'),
(151, 'user_helmet', 'steam:110000115821821', '{}'),
(152, 'property', 'steam:11000010d328fae', '{}'),
(153, 'user_ears', 'steam:11000010d328fae', '{}'),
(154, 'user_helmet', 'steam:11000010d328fae', '{}'),
(155, 'user_glasses', 'steam:11000010d328fae', '{}'),
(156, 'user_mask', 'steam:11000010d328fae', '{}'),
(157, 'property', 'steam:110000132368c6a', '{}'),
(158, 'user_ears', 'steam:110000132368c6a', '{}'),
(159, 'user_glasses', 'steam:110000132368c6a', '{}'),
(160, 'user_helmet', 'steam:110000132368c6a', '{}'),
(161, 'user_mask', 'steam:110000132368c6a', '{}'),
(162, 'property', 'steam:1100001138a08d6', '{}'),
(163, 'user_ears', 'steam:1100001138a08d6', '{}'),
(164, 'user_glasses', 'steam:1100001138a08d6', '{}'),
(165, 'user_helmet', 'steam:1100001138a08d6', '{}'),
(166, 'user_mask', 'steam:1100001138a08d6', '{}'),
(167, 'user_ears', 'steam:110000116d82e19', '{}'),
(168, 'property', 'steam:110000116d82e19', '{}'),
(169, 'user_glasses', 'steam:110000116d82e19', '{}'),
(170, 'user_helmet', 'steam:110000116d82e19', '{}'),
(171, 'user_mask', 'steam:110000116d82e19', '{}'),
(172, 'property', 'steam:110000111a49c66', '{\"dressing\":[[]]}'),
(173, 'user_ears', 'steam:110000111a49c66', '{}'),
(174, 'user_helmet', 'steam:110000111a49c66', '{}'),
(175, 'user_glasses', 'steam:110000111a49c66', '{\"skin\":{\"glasses_1\":3,\"glasses_2\":0},\"hasGlasses\":true}'),
(176, 'user_mask', 'steam:110000111a49c66', '{}'),
(177, 'property', 'steam:1100001186b7a77', '{}'),
(178, 'user_ears', 'steam:1100001186b7a77', '{}'),
(179, 'user_glasses', 'steam:1100001186b7a77', '{}'),
(180, 'user_helmet', 'steam:1100001186b7a77', '{}'),
(181, 'user_mask', 'steam:1100001186b7a77', '{\"hasMask\":true,\"skin\":{\"mask_2\":0,\"mask_1\":23}}'),
(182, 'property', 'steam:1100001348c4d8b', '{\"dressing\":[[]]}'),
(183, 'user_ears', 'steam:1100001348c4d8b', '{}'),
(184, 'user_mask', 'steam:1100001348c4d8b', '{\"hasMask\":true,\"skin\":{\"mask_2\":0,\"mask_1\":99}}'),
(185, 'user_glasses', 'steam:1100001348c4d8b', '{}'),
(186, 'user_helmet', 'steam:1100001348c4d8b', '{}'),
(187, 'property', 'steam:11000013c51ade8', '{}'),
(188, 'user_ears', 'steam:11000013c51ade8', '{}'),
(189, 'user_glasses', 'steam:11000013c51ade8', '{}'),
(190, 'user_helmet', 'steam:11000013c51ade8', '{}'),
(191, 'user_mask', 'steam:11000013c51ade8', '{}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fine_types`
--

CREATE TABLE `fine_types` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `fine_types`
--

INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Uso abusivo del claxon', 40, 0),
(2, 'Sobrepasar línea continua', 55, 0),
(3, 'Circular en sentido contrario', 250, 0),
(4, 'Giro en U no autorizado', 250, 0),
(5, 'Circular fuera de ruta', 170, 0),
(6, 'No respetar distancias de seguridad', 50, 0),
(7, 'Parada peligrosa / prohibida', 250, 0),
(8, 'Estacionamiento indebido', 150, 0),
(9, 'No respetar la prioridad', 120, 0),
(10, 'No respetar a un vehículo prioritario', 150, 0),
(11, 'No respetar señal de STOP', 105, 0),
(12, 'Saltarse semáforo en rojo', 130, 0),
(13, 'Adelantamiento peligroso', 100, 0),
(14, 'Vehículo robado', 2900, 0),
(15, 'Conducir sin carnet', 1500, 0),
(16, 'Delito de fuga', 800, 0),
(17, 'Exceso de velocidad < 5 kmh', 90, 0),
(18, 'Exceso de velocidad 5-15 kmh', 120, 0),
(19, 'Exceso de velocidad 15-30 kmh', 180, 0),
(20, 'Exceso de velocidad > 30 kmh', 300, 0),
(21, 'Obstruccion del trafico', 110, 1),
(22, 'Alteración de la vía pública', 120, 1),
(23, 'Falta a un agente de la autoridad', 350, 1),
(24, 'Intervenir en operación policial', 130, 1),
(25, 'Insulto entre civiles', 85, 1),
(26, 'Indignación al oficial de policía', 110, 1),
(27, 'Amenaza verbal o intimidación hacia lo civil.', 90, 1),
(28, 'Amenaza verbal o intimidación de un oficial de policía', 150, 1),
(29, 'Manifestación ilegal', 250, 1),
(30, 'Tentativa de corrupción', 1500, 1),
(31, 'Arma blanca en la ciudad', 120, 2),
(32, 'Arma letal en la ciudad', 300, 2),
(33, 'Portar arma no permitida (Fallo de licencia)', 600, 2),
(34, 'Portar arma ilegal', 700, 2),
(35, 'Precio de una bandera de lockpick', 300, 2),
(36, 'Robo de autos', 1800, 2),
(37, 'Venta de droga', 1500, 2),
(38, 'Fabricación de drogas', 1500, 2),
(39, 'Posesión de drogas', 650, 2),
(40, 'Aterrizaje civil', 1500, 2),
(41, 'Agente de toma de posesión del estado', 2000, 2),
(42, 'Braquage particulier', 650, 2),
(43, 'Robo de tienda', 650, 2),
(44, 'Robo de banco', 1500, 2),
(45, 'Tiro a un civil', 2000, 3),
(46, 'Disparos en agente estatal', 2500, 3),
(47, 'Intento de asesinato en ropa lisa', 3000, 3),
(48, 'Intento de asesinato de un agente del estado', 5000, 3),
(49, 'Asesinato en civil', 10000, 3),
(50, 'Asesinato en agente estatal', 30000, 3),
(51, 'Muerte involuntaria', 1800, 3),
(101, 'Asesinato en civil', 10000, 3),
(102, 'Asesinato en agente estatal', 30000, 3),
(103, 'Asesinato involuntariamente', 1800, 3),
(104, 'Estafa de negocios', 2000, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fine_types_cartel`
--

CREATE TABLE `fine_types_cartel` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `fine_types_cartel`
--

INSERT INTO `fine_types_cartel` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fine_types_gang`
--

CREATE TABLE `fine_types_gang` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `fine_types_gang`
--

INSERT INTO `fine_types_gang` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fine_types_mafia`
--

CREATE TABLE `fine_types_mafia` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `fine_types_mafia`
--

INSERT INTO `fine_types_mafia` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `items`
--

CREATE TABLE `items` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `limit` int(11) NOT NULL DEFAULT '-1',
  `rare` int(11) NOT NULL DEFAULT '0',
  `can_remove` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `items`
--

INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES
('alive_chicken', 'Pollo vivo', 20, 0, 1),
('amfa', 'MDMA', 50, 0, 1),
('amfa_pooch', 'Paquete de MDMA', 10, 0, 1),
('bandage', 'Bendaje', 20, 0, 1),
('blowpipe', 'Chalumeaux', 10, 0, 1),
('blowtorch', 'Soplete', 1, 0, 1),
('bread', 'Pan', 10, 0, 1),
('c4_bank', 'C4 de 10 kilos', 1, 0, 1),
('cannabis', 'Cannabis', 40, 0, 1),
('carokit', 'Repair kit', 3, 0, 1),
('carotool', 'Herramientas', 4, 0, 1),
('clothe', 'Trozo de tela', 40, 0, 1),
('copper', 'Cobre', 56, 0, 1),
('cutted_wood', 'Madera cortada', 20, 0, 1),
('diamond', 'Diamante', 50, 0, 1),
('drill', 'Taladro', 1, 0, 1),
('essence', 'Esencia', 24, 0, 1),
('fabric', 'Paño', 80, 0, 1),
('fish', 'Pez', 100, 0, 1),
('fixkit', 'Kit de reparación', 5, 0, 1),
('fixtool', 'Herramientas de reparación', 6, 0, 1),
('gazbottle', 'botella de gas', 11, 0, 1),
('gold', 'Oro', 21, 0, 1),
('iron', 'Metal', 42, 0, 1),
('jewels', 'Joyas', -1, 0, 1),
('koda', 'Codeína', 50, 0, 1),
('koda_pooch', 'Paquete de codeína', 10, 0, 1),
('marijuana', 'Marihuana', 14, 0, 1),
('medikit', 'Medikit', 5, 0, 1),
('morf', 'Morfina', 50, 0, 1),
('morf_pooch', 'Paquete de morfina', 10, 0, 1),
('multi_key', 'Carrera callejera', 10, 0, 1),
('packaged_chicken', 'Pollo envasado', 100, 0, 1),
('packaged_plank', 'Madera tratada', 100, 0, 1),
('petrol', 'Pétrole', 24, 0, 1),
('petrol_raffin', 'Pétrole Raffiné', 24, 0, 1),
('pizza', 'Pizza', -1, 0, 1),
('rasperry', 'Rasperry', 1, 0, 1),
('slaughtered_chicken', 'Poulet abattu', 20, 0, 1),
('solo_key', 'contrareloj', 10, 0, 1),
('stone', 'Piedra', 7, 0, 1),
('washed_stone', 'Piedra lavada', 7, 0, 1),
('water', 'Agua', 5, 0, 1),
('wood', 'Madera', 20, 0, 1),
('wool', 'Lana', 40, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jail`
--

CREATE TABLE `jail` (
  `identifier` varchar(100) NOT NULL,
  `jail_time` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `jobs`
--

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('ambulance', 'Médico', 1),
('cartel', 'Cartel', 1),
('desempleado', 'Desempleado', 0),
('gang', 'Banda', 1),
('lumberjack', 'Leñador', 0),
('mafia', 'Mafia', 1),
('mechanic', 'Mecánico', 1),
('miner', 'Minero', 0),
('nightclub', 'Club Nocturno', 1),
('offambulance', 'Sin servicio', 1),
('offpolice', 'Sin servicio', 1),
('pilot', 'Piloto', 1),
('police', 'Policía', 1),
('reporter', 'Reportero', 0),
('slaughterer', 'Carnicero', 0),
('tailor', 'Sastre', 0),
('taxi', 'Taxi', 0),
('trucker', 'Camionero', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_grades`
--

CREATE TABLE `job_grades` (
  `id` int(11) NOT NULL,
  `job_name` varchar(50) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'desempleado', 0, 'desempleado', 'Desempleado', 45, '{}', '{}'),
(12, 'mechanic', 0, 'recrue', 'En prácticas', 300, '{}', '{}'),
(13, 'mechanic', 1, 'novice', 'Novato', 600, '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":0,\"shoes_1\":59,\"shoes_2\":20,\"pants_1\":90, \"pants_2\":1, \"arms\":11, \"helmet_1\":6, \"helmet_2\":2,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}\', \'{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":23,\"torso_2\":0,\"shoes_1\":62,\"shoes_2\":20,\"pants_1\":93, \"pants_2\":1, \"arms\":0, \"helmet_1\":60, \"helmet_2\":6,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{}'),
(14, 'mechanic', 2, 'experimente', 'Experto', 700, '{\"tshirt_1\":90,\"tshirt_2\":0,\"torso_1\":248,\"torso_2\":8,\"shoes_1\":59,\"shoes_2\":20,\"pants_1\":98, \"pants_2\":3, \"arms\":17, \"helmet_1\":6, \"helmet_2\":2,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}\', \'{\"tshirt_1\":41,\"tshirt_2\":0,\"torso_1\":252,\"torso_2\":2,\"shoes_1\":62,\"shoes_2\":20,\"pants_1\":103, \"pants_2\":3, \"arms\":0, \"helmet_1\":60, \"helmet_2\":6,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{}'),
(15, 'mechanic', 3, 'chief', 'Jefe de Taller', 900, '{\"tshirt_1\":90,\"tshirt_2\":0,\"torso_1\":248,\"torso_2\":8,\"shoes_1\":59,\"shoes_2\":20,\"pants_1\":98, \"pants_2\":3, \"arms\":17, \"helmet_1\":6, \"helmet_2\":2,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}\', \'{\"tshirt_1\":41,\"tshirt_2\":0,\"torso_1\":252,\"torso_2\":2,\"shoes_1\":62,\"shoes_2\":20,\"pants_1\":103, \"pants_2\":3, \"arms\":0, \"helmet_1\":60, \"helmet_2\":6,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{}'),
(16, 'mechanic', 4, 'boss', 'Dueño', 2000, '{\"tshirt_1\":90,\"tshirt_2\":0,\"torso_1\":248,\"torso_2\":8,\"shoes_1\":59,\"shoes_2\":20,\"pants_1\":98, \"pants_2\":3, \"arms\":17, \"helmet_1\":6, \"helmet_2\":1,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}\', \'{\"tshirt_1\":41,\"tshirt_2\":0,\"torso_1\":252,\"torso_2\":2,\"shoes_1\":62,\"shoes_2\":20,\"pants_1\":103, \"pants_2\":3, \"arms\":0, \"helmet_1\":60, \"helmet_2\":9,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}\r\n', '{}'),
(21, 'lumberjack', 0, 'employee', 'Interino', 150, '{}', '{}'),
(24, 'reporter', 0, 'employee', 'Interino', 0, '{}', '{}'),
(25, 'tailor', 0, 'employee', 'Interino', 0, '{\"mask_1\":0,\"arms\":1,\"glasses_1\":0,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":0,\"torso_1\":24,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":0,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":0,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":36,\"tshirt_2\":0,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":48,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}', '{\"mask_1\":0,\"arms\":5,\"glasses_1\":5,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":1,\"torso_1\":52,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":1,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":23,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":42,\"tshirt_2\":4,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":36,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}'),
(26, 'miner', 0, 'employee', 'Interino', 150, '{\"tshirt_2\":1,\"ears_1\":8,\"glasses_1\":15,\"torso_2\":0,\"ears_2\":2,\"glasses_2\":3,\"shoes_2\":1,\"pants_1\":75,\"shoes_1\":51,\"bags_1\":0,\"helmet_2\":0,\"pants_2\":7,\"torso_1\":71,\"tshirt_1\":59,\"arms\":2,\"bags_2\":0,\"helmet_1\":0}', '{}'),
(27, 'slaughterer', 0, 'employee', 'Interino', 150, '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":67,\"pants_1\":36,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":0,\"torso_1\":56,\"beard_2\":6,\"shoes_1\":12,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":15,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":0,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}', '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":72,\"pants_1\":45,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":1,\"torso_1\":49,\"beard_2\":6,\"shoes_1\":24,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":9,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":5,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}'),
(28, 'trucker', 0, 'employee', 'Empleado', 400, '{\"tshirt_1\":59,\"torso_1\":89,\"arms\":31,\"pants_1\":36,\"glasses_1\":19,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":0,\"face\":2,\"glasses_2\":0,\"torso_2\":1,\"shoes\":35,\"hair_1\":0,\"skin\":0,\"sex\":0,\"glasses_1\":19,\"pants_2\":0,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":5}', '{\"tshirt_1\":36,\"torso_1\":0,\"arms\":68,\"pants_1\":30,\"glasses_1\":15,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":0,\"face\":27,\"glasses_2\":0,\"torso_2\":11,\"shoes\":26,\"hair_1\":5,\"skin\":0,\"sex\":1,\"glasses_1\":15,\"pants_2\":2,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":19}'),
(29, 'mafia', 0, 'soldato', 'Soldado', 200, '{}', '{}'),
(30, 'mafia', 1, 'capo', 'Capo', 250, '{}', '{}'),
(31, 'mafia', 2, 'consigliere', 'Consigliere', 300, '{}', '{}'),
(32, 'mafia', 3, 'boss', 'Padrino', 400, '{}', '{}'),
(33, 'cartel', 0, 'soldato', 'Soldado', 150, '{}', '{}'),
(34, 'cartel', 1, 'capo', 'Capo', 250, '{}', '{}'),
(35, 'cartel', 2, 'consigliere', 'Consejero', 300, '{}', '{}'),
(36, 'cartel', 3, 'boss', 'Jefe de cartel', 400, '{}', '{}'),
(37, 'gang', 0, 'soldato', 'Traficante', 150, '{}', '{}'),
(38, 'gang', 1, 'capo', 'Jefe de Zona', 250, '{}', '{}'),
(39, 'gang', 2, 'consigliere', 'Cabecilla', 300, '{}', '{}'),
(40, 'gang', 3, 'boss', 'Patron', 400, '{}', '{}'),
(45, 'police', 0, 'recruit', 'Recluta', 500, '{}', '{}'),
(46, 'police', 1, 'officer', 'Oficial', 600, '{}', '{}'),
(47, 'police', 2, 'sergeant', 'Sargento', 800, '{}', '{}'),
(48, 'police', 3, 'lieutenant', 'Teniente', 900, '{}', '{}'),
(49, 'police', 4, 'boss', 'Jefe de policía', 1500, '{}', '{}'),
(50, 'ambulance', 0, 'ambulance', 'Enfermero', 400, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(51, 'ambulance', 1, 'doctor', 'Médico', 600, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(52, 'ambulance', 2, 'chief_doctor', 'Médico experto', 800, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(53, 'ambulance', 3, 'boss', 'Cirujano', 1000, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(54, 'pilot', 0, 'hobbypilot', 'Piloto aficionado', 60, '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":0,\"torso_2\":0,\"arms\":0,\"pants_1\":0,\"pants_2\":0,\"glasses\":0,\"glasses_1\":0,\"glasses_2\":0,\"decals_1\":0,\"decals_2\":0,\"hair_color_1\":0,\"hair_color_2\":0,\"helmet_1\":0,\"helmet_2\":0,\"hair_1\":0,\"hair_2\":0,\"face\":0,\"shoes\":0,\"skin\":0,\"sex\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":0,\"torso_2\":0,\"arms\":0,\"pants_1\":0,\"pants_2\":0,\"decals_1\":0,\"decals_2\":0,\"hair_color_1\":0,\"hair_color_2\":0,\"shoes\":0,\"helmet_1\":0,\"helmet_2\":0,\"hair_1\":0,\"hair_2\":0,\"face\":0,\"skin\":0,\"sex\":1,\"glasses_1\":0,\"glasses_2\":0,\"glasses\":0}'),
(55, 'pilot', 1, 'freightpilot', 'Oficial', 80, '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":0,\"torso_2\":0,\"arms\":0,\"pants_1\":0,\"pants_2\":0,\"glasses\":0,\"glasses_1\":0,\"glasses_2\":0,\"decals_1\":0,\"decals_2\":0,\"hair_color_1\":0,\"hair_color_2\":0,\"helmet_1\":0,\"helmet_2\":0,\"hair_1\":0,\"hair_2\":0,\"face\":0,\"shoes\":0,\"skin\":0,\"sex\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":0,\"torso_2\":0,\"arms\":0,\"pants_1\":0,\"pants_2\":0,\"decals_1\":0,\"decals_2\":0,\"hair_color_1\":0,\"hair_color_2\":0,\"shoes\":0,\"helmet_1\":0,\"helmet_2\":0,\"hair_1\":0,\"hair_2\":0,\"face\":0,\"skin\":0,\"sex\":1,\"glasses_1\":0,\"glasses_2\":0,\"glasses\":0}'),
(56, 'pilot', 2, 'airlinepilot', 'Aerolíneas', 150, '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":0,\"torso_2\":0,\"arms\":0,\"pants_1\":0,\"pants_2\":0,\"glasses\":0,\"glasses_1\":0,\"glasses_2\":0,\"decals_1\":0,\"decals_2\":0,\"hair_color_1\":0,\"hair_color_2\":0,\"helmet_1\":0,\"helmet_2\":0,\"hair_1\":0,\"hair_2\":0,\"face\":0,\"shoes\":0,\"skin\":0,\"sex\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":0,\"torso_2\":0,\"arms\":0,\"pants_1\":0,\"pants_2\":0,\"decals_1\":0,\"decals_2\":0,\"hair_color_1\":0,\"hair_color_2\":0,\"shoes\":0,\"helmet_1\":0,\"helmet_2\":0,\"hair_1\":0,\"hair_2\":0,\"face\":0,\"skin\":0,\"sex\":1,\"glasses_1\":0,\"glasses_2\":0,\"glasses\":0}'),
(57, 'nightclub', 0, 'barman', 'Barman', 150, '{}', '{}'),
(58, 'nightclub', 1, 'dancer', 'Bailarina', 200, '{}', '{}'),
(59, 'nightclub', 2, 'viceboss', 'Manager', 300, '{}', '{}'),
(60, 'nightclub', 3, 'boss', 'Propietario', 400, '{}', '{}'),
(61, 'taxi', 0, 'recrue', 'En prácticas', 140, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(62, 'taxi', 1, 'novice', 'Novato', 240, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(63, 'taxi', 2, 'experimente', 'Experimente', 36, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(64, 'taxi', 3, 'uber', 'Uber', 48, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(65, 'taxi', 4, 'boss', 'Patron', 0, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":29,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":1,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":4,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(66, 'offpolice', 0, 'recruit', 'Recluta', 12, '{}', '{}'),
(67, 'offpolice', 1, 'officer', 'Oficial', 24, '{}', '{}'),
(68, 'offpolice', 2, 'sergeant', 'Sargento', 36, '{}', '{}'),
(69, 'offpolice', 3, 'lieutenant', 'Teniente', 48, '{}', '{}'),
(70, 'offpolice', 4, 'boss', 'Jefe de policía', 0, '{}', '{}'),
(71, 'offambulance', 0, 'ambulance', 'Enfermero', 12, '{}', '{}'),
(72, 'offambulance', 1, 'doctor', 'Médico', 24, '{}', '{}'),
(73, 'offambulance', 2, 'chief_doctor', 'Médico experto', 36, '{}', '{}'),
(74, 'offambulance', 3, 'boss', 'Cirujano', 48, '{}', '{}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `licenses`
--

CREATE TABLE `licenses` (
  `type` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `licenses`
--

INSERT INTO `licenses` (`type`, `label`) VALUES
('boat', 'Patrón de barco'),
('dmv', 'Recuperación de puntos'),
('drive', 'Carnet de conducir'),
('drive_bike', 'Carnet de moto'),
('drive_truck', 'Carnet de camión'),
('weapon', 'Licencia de armas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `multi_race`
--

CREATE TABLE `multi_race` (
  `id` int(11) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `race` int(11) NOT NULL,
  `nb_laps` int(11) NOT NULL,
  `nb_pers` int(11) NOT NULL,
  `ended` tinyint(1) NOT NULL,
  `created_date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `owned_properties`
--

CREATE TABLE `owned_properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `rented` int(11) NOT NULL,
  `owner` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `owned_properties`
--

INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
(45, 'LowEndApartment', 2813, 1, 'steam:11000011a1c13e8'),
(46, 'LowEndApartment', 2813, 1, 'steam:11000010f2fc36c'),
(47, 'Modern1Apartment', 1300000, 0, 'steam:11000010febf2f0'),
(48, 'LowEndApartment', 2813, 1, 'steam:1100001384ce0d6'),
(49, 'LowEndApartment', 2813, 1, 'steam:11000010febf2f0'),
(50, 'WildOatsDrive', 7500, 1, 'steam:11000010febf2f0'),
(51, 'LowEndApartment', 2813, 1, 'steam:11000013c51ade8');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `owned_vehicles`
--

CREATE TABLE `owned_vehicles` (
  `owner` varchar(22) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Etat de la voiture',
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext,
  `type` varchar(20) NOT NULL DEFAULT 'car',
  `job` varchar(20) DEFAULT NULL,
  `stored` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `owned_vehicles`
--

INSERT INTO `owned_vehicles` (`owner`, `state`, `plate`, `vehicle`, `type`, `job`, `stored`) VALUES
('steam:11000011bb7624b', 1, 'AHR 654', '{\"extras\":{\"2\":false},\"modAirFilter\":-1,\"wheelColor\":156,\"modAerials\":-1,\"modEngine\":1,\"modDashboard\":-1,\"modSideSkirt\":-1,\"modBackWheels\":-1,\"modTransmission\":-1,\"modXenon\":false,\"modShifterLeavers\":-1,\"windowTint\":1,\"modAPlate\":-1,\"modTank\":-1,\"modWindows\":-1,\"modTrimA\":-1,\"color1\":0,\"neonEnabled\":[1,1,1,1],\"modExhaust\":-1,\"tyreSmokeColor\":[255,0,255],\"modArmor\":-1,\"plate\":\"AHR 654\",\"modTurbo\":false,\"modTrimB\":-1,\"color2\":8,\"modSuspension\":-1,\"plateIndex\":0,\"modHorns\":-1,\"neonColor\":[153,0,153],\"modDial\":-1,\"modOrnaments\":-1,\"modSpoilers\":-1,\"dirtLevel\":10.266225814819,\"modStruts\":-1,\"modRoof\":-1,\"modFrame\":-1,\"modRightFender\":-1,\"model\":-506359117,\"modVanityPlate\":-1,\"pearlescentColor\":134,\"modHydrolic\":-1,\"modSteeringWheel\":-1,\"modBrakes\":-1,\"modEngineBlock\":-1,\"wheels\":3,\"modDoorSpeaker\":-1,\"modHood\":-1,\"modLivery\":-1,\"modGrille\":-1,\"modFender\":-1,\"modPlateHolder\":-1,\"modFrontWheels\":-1,\"modTrunk\":-1,\"modSpeakers\":-1,\"modArchCover\":-1,\"health\":995,\"modFrontBumper\":-1,\"modRearBumper\":-1,\"modSeats\":-1,\"modSmokeEnabled\":1}', 'car', NULL, 0),
('steam:1100001138a08d6', 0, 'ALB 462', '{\"modStruts\":-1,\"modHorns\":-1,\"modPlateHolder\":-1,\"modEngineBlock\":-1,\"color1\":112,\"modTurbo\":false,\"model\":1171614426,\"dirtLevel\":8.0,\"modRoof\":-1,\"color2\":28,\"modBrakes\":-1,\"wheelColor\":156,\"modArmor\":-1,\"modHydrolic\":-1,\"modAPlate\":-1,\"modSpoilers\":-1,\"modOrnaments\":-1,\"modVanityPlate\":-1,\"extras\":{\"11\":false,\"12\":false,\"10\":false},\"modTank\":-1,\"modTrunk\":-1,\"windowTint\":-1,\"modTrimA\":-1,\"modTrimB\":-1,\"modFender\":-1,\"modExhaust\":-1,\"modSideSkirt\":-1,\"modXenon\":false,\"modEngine\":-1,\"modRearBumper\":-1,\"modBackWheels\":-1,\"modSpeakers\":-1,\"modSteeringWheel\":-1,\"pearlescentColor\":112,\"modSmokeEnabled\":false,\"modSuspension\":-1,\"modHood\":-1,\"modRightFender\":-1,\"neonColor\":[255,0,255],\"modGrille\":-1,\"modShifterLeavers\":-1,\"modLivery\":-1,\"modDial\":-1,\"modFrontBumper\":-1,\"modAerials\":-1,\"wheels\":0,\"modArchCover\":-1,\"plate\":\"ALB 462\",\"modAirFilter\":-1,\"modDoorSpeaker\":-1,\"health\":1000,\"modDashboard\":-1,\"plateIndex\":4,\"modSeats\":-1,\"modWindows\":-1,\"tyreSmokeColor\":[255,255,255],\"modTransmission\":-1,\"neonEnabled\":[false,false,false,false],\"modFrontWheels\":-1,\"modFrame\":-1}', 'car', 'ambulance', 0),
('steam:110000134c6b441', 1, 'BIG 794', '{\"modTank\":-1,\"color2\":0,\"modDoorSpeaker\":-1,\"modWindows\":-1,\"modVanityPlate\":-1,\"modHood\":-1,\"modSpeakers\":-1,\"modStruts\":-1,\"neonColor\":[255,0,255],\"modTrunk\":-1,\"extras\":[],\"modFrame\":-1,\"modFender\":-1,\"modEngineBlock\":-1,\"modTrimA\":-1,\"health\":1000,\"neonEnabled\":[false,false,false,false],\"modRightFender\":-1,\"modXenon\":false,\"modRearBumper\":-1,\"modExhaust\":-1,\"modShifterLeavers\":-1,\"wheels\":0,\"modTurbo\":false,\"modTransmission\":-1,\"modSpoilers\":-1,\"modDashboard\":-1,\"modAirFilter\":-1,\"modLivery\":-1,\"modSeats\":-1,\"modRoof\":-1,\"dirtLevel\":14.000522613525,\"plate\":\"BIG 794\",\"modSteeringWheel\":-1,\"color1\":33,\"tyreSmokeColor\":[255,255,255],\"modGrille\":-1,\"plateIndex\":0,\"modBackWheels\":-1,\"pearlescentColor\":38,\"wheelColor\":156,\"model\":736902334,\"modAPlate\":-1,\"modPlateHolder\":-1,\"modArmor\":-1,\"modSideSkirt\":-1,\"modSuspension\":-1,\"modHorns\":-1,\"modOrnaments\":-1,\"modTrimB\":-1,\"modFrontWheels\":-1,\"windowTint\":-1,\"modDial\":-1,\"modEngine\":1,\"modAerials\":-1,\"modBrakes\":-1,\"modHydrolic\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modSmokeEnabled\":1}', 'car', NULL, 0),
('steam:11000010f2fc36c', 1, 'BSF 330', '{\"extras\":[],\"modAirFilter\":-1,\"wheelColor\":156,\"modAerials\":-1,\"modEngine\":1,\"modDashboard\":-1,\"modSideSkirt\":-1,\"modBackWheels\":-1,\"modTransmission\":-1,\"modSmokeEnabled\":1,\"modStruts\":-1,\"modOrnaments\":-1,\"modArmor\":-1,\"modTank\":-1,\"modWindows\":-1,\"modTrimA\":-1,\"modFrontWheels\":-1,\"modAPlate\":-1,\"modExhaust\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"plate\":\"BSF 330\",\"modTurbo\":false,\"modTrimB\":-1,\"neonEnabled\":[false,false,false,false],\"modSuspension\":-1,\"plateIndex\":3,\"modHorns\":-1,\"color2\":0,\"windowTint\":-1,\"modLivery\":-1,\"modSpoilers\":-1,\"modXenon\":false,\"modRightFender\":-1,\"modRoof\":-1,\"modFrame\":-1,\"modShifterLeavers\":-1,\"model\":55628203,\"modVanityPlate\":-1,\"pearlescentColor\":5,\"modHydrolic\":-1,\"modSteeringWheel\":-1,\"modBrakes\":2,\"modDial\":-1,\"wheels\":6,\"modDoorSpeaker\":-1,\"modHood\":-1,\"dirtLevel\":10.382565498352,\"modGrille\":-1,\"modFender\":-1,\"modPlateHolder\":-1,\"color1\":7,\"modTrunk\":-1,\"modSpeakers\":-1,\"modArchCover\":-1,\"health\":958,\"modFrontBumper\":-1,\"modRearBumper\":-1,\"modEngineBlock\":-1,\"modSeats\":-1}', 'car', NULL, 0),
('steam:110000135fc6b1e', 1, 'CFL 395', '{\"pearlescentColor\":0,\"modWindows\":-1,\"modSpeakers\":-1,\"plateIndex\":4,\"modBrakes\":-1,\"modEngine\":-1,\"tyreSmokeColor\":[255,255,255],\"modTransmission\":-1,\"modRightFender\":-1,\"modHorns\":-1,\"modTrimB\":-1,\"model\":-2007026063,\"modGrille\":-1,\"modTrunk\":-1,\"modFrontWheels\":-1,\"modSteeringWheel\":-1,\"modXenon\":false,\"modExhaust\":-1,\"modSideSkirt\":-1,\"modTurbo\":false,\"windowTint\":-1,\"modHydrolic\":-1,\"neonColor\":[255,0,255],\"wheels\":0,\"modTrimA\":-1,\"modLivery\":-1,\"modFrontBumper\":-1,\"modAPlate\":-1,\"modRearBumper\":-1,\"modTank\":-1,\"modHood\":-1,\"modStruts\":-1,\"plate\":\"CFL 395\",\"modPlateHolder\":-1,\"health\":1000,\"dirtLevel\":6.0,\"modSuspension\":-1,\"modDashboard\":-1,\"modDoorSpeaker\":-1,\"modEngineBlock\":-1,\"modShifterLeavers\":-1,\"modBackWheels\":-1,\"color1\":77,\"modSpoilers\":-1,\"modOrnaments\":-1,\"modDial\":-1,\"modSmokeEnabled\":false,\"color2\":0,\"modFrame\":-1,\"modArmor\":-1,\"wheelColor\":156,\"modFender\":-1,\"modArchCover\":-1,\"neonEnabled\":[false,false,false,false],\"modVanityPlate\":-1,\"extras\":[],\"modRoof\":-1,\"modSeats\":-1,\"modAerials\":-1,\"modAirFilter\":-1}', 'car', 'police', 1),
('steam:11000010b08ef51', 1, 'COI 605', '{\"modAPlate\":-1,\"color2\":0,\"modTurbo\":false,\"modFrame\":-1,\"modFender\":-1,\"modHydrolic\":-1,\"extras\":[],\"modDial\":-1,\"modRearBumper\":-1,\"modSmokeEnabled\":false,\"modAerials\":-1,\"modSpoilers\":-1,\"pearlescentColor\":5,\"modLivery\":-1,\"dirtLevel\":15.0,\"modVanityPlate\":-1,\"color1\":2,\"modSpeakers\":-1,\"neonColor\":[255,0,255],\"wheelColor\":156,\"wheels\":0,\"modShifterLeavers\":-1,\"modAirFilter\":-1,\"modSteeringWheel\":-1,\"modSideSkirt\":-1,\"modTransmission\":-1,\"modStruts\":-1,\"model\":-1651067813,\"modFrontBumper\":-1,\"windowTint\":-1,\"modRightFender\":-1,\"plateIndex\":0,\"modPlateHolder\":-1,\"modTrunk\":-1,\"modExhaust\":-1,\"modBrakes\":-1,\"modDoorSpeaker\":-1,\"plate\":\"COI 605\",\"modHood\":-1,\"modWindows\":-1,\"neonEnabled\":[false,false,false,false],\"modXenon\":false,\"modBackWheels\":-1,\"modArchCover\":-1,\"modFrontWheels\":-1,\"modTrimA\":-1,\"modArmor\":-1,\"modDashboard\":-1,\"modTank\":-1,\"tyreSmokeColor\":[255,255,255],\"modSeats\":-1,\"modEngineBlock\":-1,\"modHorns\":-1,\"modSuspension\":-1,\"health\":1000,\"modOrnaments\":-1,\"modGrille\":-1,\"modEngine\":-1,\"modRoof\":-1,\"modTrimB\":-1}', 'car', NULL, 0),
('steam:11000011a1c13e8', 1, 'CTI 181', '{\"modTank\":-1,\"color2\":28,\"modDoorSpeaker\":-1,\"modWindows\":-1,\"modVanityPlate\":-1,\"modHood\":-1,\"modSpeakers\":-1,\"modStruts\":-1,\"modHydrolic\":-1,\"modTrunk\":-1,\"extras\":{\"1\":false},\"modFrame\":-1,\"modFender\":-1,\"neonColor\":[255,0,255],\"modTrimA\":-1,\"health\":985,\"modEngine\":-1,\"modRightFender\":-1,\"modXenon\":false,\"modRearBumper\":-1,\"modPlateHolder\":-1,\"modShifterLeavers\":-1,\"modAirFilter\":-1,\"modTurbo\":false,\"modDashboard\":-1,\"modSpoilers\":-1,\"modSeats\":-1,\"modGrille\":-1,\"modLivery\":0,\"modSteeringWheel\":-1,\"modRoof\":-1,\"dirtLevel\":2.7175168991089,\"plate\":\"CTI 181\",\"modArmor\":-1,\"color1\":112,\"wheelColor\":156,\"neonEnabled\":[false,false,false,false],\"plateIndex\":4,\"modSideSkirt\":-1,\"pearlescentColor\":112,\"modExhaust\":-1,\"model\":1171614426,\"modAPlate\":-1,\"modBackWheels\":-1,\"modOrnaments\":-1,\"modTrimB\":-1,\"modSuspension\":-1,\"modHorns\":-1,\"modEngineBlock\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrontWheels\":-1,\"windowTint\":-1,\"modDial\":-1,\"wheels\":0,\"modAerials\":-1,\"modBrakes\":-1,\"modTransmission\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modSmokeEnabled\":1}', 'car', 'ambulance', 0),
('steam:11000010bc9777a', 1, 'CVL 389', '{\"extras\":{\"10\":false,\"2\":false},\"modAirFilter\":-1,\"wheelColor\":0,\"modAerials\":-1,\"modEngine\":1,\"modFender\":-1,\"modSideSkirt\":-1,\"modBackWheels\":-1,\"modTransmission\":-1,\"modXenon\":false,\"modStruts\":-1,\"dirtLevel\":2.9856872558594,\"modSmokeEnabled\":1,\"modTank\":-1,\"modWindows\":-1,\"modTrimA\":-1,\"color1\":12,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"tyreSmokeColor\":[255,255,255],\"modArmor\":-1,\"plate\":\"CVL 389\",\"modTurbo\":false,\"modTrimB\":-1,\"modDashboard\":-1,\"modSuspension\":-1,\"plateIndex\":0,\"modHorns\":-1,\"neonColor\":[255,0,255],\"modOrnaments\":-1,\"modAPlate\":-1,\"modSpoilers\":-1,\"modEngineBlock\":-1,\"modRightFender\":-1,\"modRoof\":-1,\"modFrame\":-1,\"modLivery\":-1,\"model\":-789894171,\"modVanityPlate\":-1,\"pearlescentColor\":12,\"modHydrolic\":-1,\"modSteeringWheel\":-1,\"modBrakes\":-1,\"modDial\":-1,\"wheels\":3,\"modDoorSpeaker\":-1,\"modHood\":-1,\"windowTint\":1,\"modGrille\":-1,\"modShifterLeavers\":-1,\"modPlateHolder\":-1,\"modFrontWheels\":10,\"modTrunk\":-1,\"modSpeakers\":-1,\"modArchCover\":-1,\"health\":998,\"modFrontBumper\":-1,\"modRearBumper\":-1,\"modSeats\":-1,\"color2\":34}', 'car', NULL, 0),
('steam:11000011a1c13e8', 1, 'DQV 223', '{\"modDial\":-1,\"modEngine\":-1,\"health\":917,\"modExhaust\":-1,\"modFrame\":-1,\"modTank\":-1,\"dirtLevel\":15.0,\"modLivery\":-1,\"modSideSkirt\":-1,\"neonEnabled\":[false,false,false,false],\"wheels\":0,\"plate\":\"DQV 223\",\"modDoorSpeaker\":-1,\"modAerials\":-1,\"modRightFender\":-1,\"modRearBumper\":-1,\"modTrimB\":-1,\"modArchCover\":-1,\"tyreSmokeColor\":[255,255,255],\"modSuspension\":-1,\"modEngineBlock\":-1,\"pearlescentColor\":28,\"plateIndex\":0,\"modXenon\":false,\"modRoof\":-1,\"modBackWheels\":-1,\"modAirFilter\":-1,\"modSeats\":-1,\"modBrakes\":-1,\"modTrunk\":-1,\"modPlateHolder\":-1,\"extras\":[],\"modSpeakers\":-1,\"color2\":4,\"modFender\":-1,\"modSmokeEnabled\":1,\"modSpoilers\":-1,\"color1\":28,\"modTurbo\":false,\"modTrimA\":-1,\"modTransmission\":-1,\"modGrille\":-1,\"modAPlate\":-1,\"neonColor\":[255,0,255],\"modSteeringWheel\":-1,\"windowTint\":-1,\"model\":-1978168465,\"modHood\":-1,\"modShifterLeavers\":-1,\"modDashboard\":-1,\"modFrontBumper\":-1,\"wheelColor\":156,\"modVanityPlate\":-1,\"modWindows\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modHorns\":-1,\"modArmor\":-1,\"modStruts\":-1,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:11000010a16ed9a', 1, 'DQZ 579', '{\"modTransmission\":-1,\"modEngine\":-1,\"modShifterLeavers\":-1,\"modExhaust\":-1,\"modFrame\":-1,\"wheelColor\":0,\"model\":-189485405,\"modLivery\":-1,\"modSideSkirt\":-1,\"neonEnabled\":[false,false,false,false],\"modDoorSpeaker\":-1,\"color1\":134,\"modOrnaments\":-1,\"modAerials\":-1,\"modRightFender\":-1,\"modRearBumper\":-1,\"modTrimB\":-1,\"modArchCover\":-1,\"tyreSmokeColor\":[255,255,255],\"modSuspension\":-1,\"modBackWheels\":-1,\"pearlescentColor\":0,\"plateIndex\":4,\"modXenon\":false,\"modRoof\":-1,\"extras\":{\"5\":true,\"4\":true,\"6\":true,\"1\":true,\"3\":true,\"2\":true},\"modAirFilter\":-1,\"modSeats\":-1,\"modBrakes\":-1,\"modWindows\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSpeakers\":-1,\"wheels\":0,\"plate\":\"DQZ 579\",\"modSpoilers\":-1,\"modTank\":-1,\"modEngineBlock\":-1,\"modTrunk\":-1,\"modTurbo\":false,\"modTrimA\":-1,\"modGrille\":-1,\"modSmokeEnabled\":1,\"neonColor\":[255,0,255],\"modSteeringWheel\":-1,\"windowTint\":-1,\"health\":1000,\"modHood\":-1,\"modFrontBumper\":-1,\"modDashboard\":-1,\"modDial\":-1,\"modArmor\":-1,\"modVanityPlate\":-1,\"color2\":134,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modHorns\":-1,\"modFender\":-1,\"modStruts\":-1,\"dirtLevel\":9.0189828872681}', 'car', NULL, 0),
('steam:11000010bc9777a', 1, 'DWO 587', '{\"modTransmission\":-1,\"modEngine\":-1,\"modShifterLeavers\":-1,\"modExhaust\":-1,\"modFrame\":-1,\"wheelColor\":77,\"modAPlate\":-1,\"modLivery\":-1,\"modSideSkirt\":-1,\"neonEnabled\":[1,1,1,1],\"modDoorSpeaker\":-1,\"modSmokeEnabled\":1,\"modOrnaments\":-1,\"modAerials\":-1,\"modEngineBlock\":-1,\"modRearBumper\":-1,\"modTrimB\":-1,\"modArchCover\":-1,\"model\":-1978168465,\"dirtLevel\":2.927267074585,\"modSuspension\":-1,\"pearlescentColor\":5,\"modFender\":-1,\"modXenon\":false,\"modRoof\":-1,\"color2\":12,\"modAirFilter\":-1,\"modSeats\":-1,\"modBrakes\":-1,\"modTrunk\":-1,\"modPlateHolder\":-1,\"extras\":[],\"modSpeakers\":-1,\"wheels\":0,\"color1\":12,\"tyreSmokeColor\":[0,245,255],\"modSpoilers\":-1,\"modArmor\":-1,\"health\":988,\"modTurbo\":false,\"modTrimA\":-1,\"modGrille\":-1,\"modTank\":-1,\"neonColor\":[50,255,155],\"modSteeringWheel\":-1,\"windowTint\":1,\"plate\":\"DWO 587\",\"modHood\":-1,\"modRightFender\":-1,\"modDashboard\":-1,\"modFrontBumper\":-1,\"modDial\":-1,\"modVanityPlate\":-1,\"modWindows\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modHorns\":-1,\"modBackWheels\":-1,\"modStruts\":-1,\"plateIndex\":3}', 'car', NULL, 0),
('steam:1100001138a08d6', 0, 'DYE 542', '{\"modStruts\":-1,\"modHorns\":-1,\"modPlateHolder\":-1,\"modEngineBlock\":-1,\"color1\":112,\"modTurbo\":false,\"model\":1171614426,\"dirtLevel\":5.0,\"modRoof\":-1,\"color2\":28,\"modBrakes\":-1,\"wheelColor\":156,\"modArmor\":-1,\"modHydrolic\":-1,\"modAPlate\":-1,\"modSpoilers\":-1,\"modOrnaments\":-1,\"modVanityPlate\":-1,\"extras\":{\"11\":true,\"12\":false,\"10\":false},\"modTank\":-1,\"modTrunk\":-1,\"windowTint\":-1,\"modTrimA\":-1,\"modTrimB\":-1,\"modFender\":-1,\"modExhaust\":-1,\"modSideSkirt\":-1,\"modXenon\":false,\"modEngine\":-1,\"modRearBumper\":-1,\"modBackWheels\":-1,\"modSpeakers\":-1,\"modSteeringWheel\":-1,\"pearlescentColor\":112,\"modSmokeEnabled\":false,\"modSuspension\":-1,\"modHood\":-1,\"modRightFender\":-1,\"neonColor\":[255,0,255],\"modGrille\":-1,\"modShifterLeavers\":-1,\"modLivery\":-1,\"modDial\":-1,\"modFrontBumper\":-1,\"modAerials\":-1,\"wheels\":0,\"modArchCover\":-1,\"plate\":\"DYE 542\",\"modAirFilter\":-1,\"modDoorSpeaker\":-1,\"health\":1000,\"modDashboard\":-1,\"plateIndex\":4,\"modSeats\":-1,\"modWindows\":-1,\"tyreSmokeColor\":[255,255,255],\"modTransmission\":-1,\"neonEnabled\":[false,false,false,false],\"modFrontWheels\":-1,\"modFrame\":-1}', 'car', 'ambulance', 0),
('steam:11000013c2ce0a6', 1, 'EAG 961', '{\"extras\":{\"1\":false,\"7\":false,\"2\":false,\"9\":false,\"4\":false,\"3\":false,\"6\":true,\"5\":false},\"modAirFilter\":-1,\"wheelColor\":156,\"modAerials\":-1,\"modEngine\":1,\"modDashboard\":-1,\"modRightFender\":-1,\"modBackWheels\":-1,\"modTransmission\":-1,\"modSmokeEnabled\":1,\"modShifterLeavers\":-1,\"modArmor\":-1,\"windowTint\":-1,\"modTank\":-1,\"modWindows\":-1,\"modTrimA\":-1,\"color1\":134,\"modAPlate\":-1,\"modExhaust\":-1,\"tyreSmokeColor\":[255,255,255],\"modEngineBlock\":-1,\"plate\":\"EAG 961\",\"modTurbo\":false,\"modTrimB\":-1,\"neonColor\":[255,0,255],\"modSuspension\":-1,\"plateIndex\":4,\"modHorns\":-1,\"modFender\":-1,\"modSideSkirt\":-1,\"modOrnaments\":-1,\"modSpoilers\":-1,\"modStruts\":-1,\"dirtLevel\":2.1344249248505,\"modRoof\":-1,\"modFrame\":-1,\"modXenon\":false,\"model\":2046537925,\"modVanityPlate\":-1,\"pearlescentColor\":0,\"modHydrolic\":-1,\"modSteeringWheel\":-1,\"modBrakes\":-1,\"modLivery\":0,\"wheels\":1,\"modDoorSpeaker\":-1,\"modHood\":-1,\"color2\":134,\"modGrille\":-1,\"neonEnabled\":[false,false,false,false],\"modPlateHolder\":-1,\"modDial\":-1,\"modTrunk\":-1,\"modSpeakers\":-1,\"modArchCover\":-1,\"health\":956,\"modFrontBumper\":-1,\"modRearBumper\":-1,\"modFrontWheels\":-1,\"modSeats\":-1}', 'car', 'police', 0),
('steam:11000010a16ed9a', 1, 'ELJ 792', '{\"modExhaust\":-1,\"modSpeakers\":-1,\"modDoorSpeaker\":-1,\"modSpoilers\":-1,\"modEngine\":3,\"modTrimA\":-1,\"modWindows\":-1,\"wheels\":7,\"model\":736902334,\"modGrille\":-1,\"modRoof\":-1,\"color1\":12,\"modDashboard\":-1,\"modPlateHolder\":-1,\"dirtLevel\":5.4450826644897,\"plateIndex\":0,\"pearlescentColor\":38,\"color2\":0,\"modStruts\":-1,\"tyreSmokeColor\":[255,255,255],\"modRightFender\":-1,\"modArmor\":-1,\"modHydrolic\":-1,\"modAPlate\":-1,\"modHood\":-1,\"wheelColor\":36,\"modShifterLeavers\":-1,\"modXenon\":false,\"modSmokeEnabled\":1,\"windowTint\":-1,\"health\":1000,\"modSuspension\":3,\"neonColor\":[255,0,255],\"modFrontWheels\":13,\"extras\":[],\"modVanityPlate\":-1,\"plate\":\"ELJ 792\",\"modBackWheels\":-1,\"modAerials\":-1,\"modTransmission\":2,\"modFrontBumper\":-1,\"modSideSkirt\":-1,\"modTrunk\":-1,\"modArchCover\":-1,\"modAirFilter\":-1,\"modSteeringWheel\":-1,\"modTrimB\":-1,\"modSeats\":-1,\"modRearBumper\":-1,\"modFrame\":-1,\"modBrakes\":2,\"modOrnaments\":-1,\"neonEnabled\":[false,false,false,false],\"modTurbo\":1,\"modEngineBlock\":-1,\"modFender\":-1,\"modDial\":-1,\"modLivery\":-1,\"modHorns\":-1,\"modTank\":-1}', 'car', NULL, 0),
('steam:11000010a16ed9a', 1, 'EPB 767', '{\"modTrunk\":-1,\"modLivery\":-1,\"modGrille\":-1,\"modRightFender\":-1,\"color2\":0,\"modShifterLeavers\":-1,\"modAPlate\":-1,\"modDoorSpeaker\":-1,\"modHorns\":-1,\"modSmokeEnabled\":1,\"modEngineBlock\":-1,\"modTrimA\":-1,\"modSpoilers\":-1,\"wheelColor\":0,\"modDashboard\":-1,\"modTrimB\":-1,\"modTransmission\":-1,\"modXenon\":false,\"modPlateHolder\":-1,\"modTurbo\":false,\"modFrontWheels\":-1,\"model\":1369247176,\"windowTint\":-1,\"extras\":[],\"modOrnaments\":-1,\"modStruts\":-1,\"plate\":\"EPB 767\",\"modDial\":-1,\"modSteeringWheel\":-1,\"modWindows\":-1,\"plateIndex\":4,\"dirtLevel\":11.013434410095,\"modAirFilter\":-1,\"neonEnabled\":[false,false,false,false],\"modTank\":-1,\"modSuspension\":-1,\"modFender\":-1,\"modSideSkirt\":-1,\"modFrontBumper\":-1,\"modRearBumper\":-1,\"modEngine\":-1,\"tyreSmokeColor\":[255,255,255],\"color1\":29,\"health\":1000,\"modExhaust\":-1,\"modSeats\":-1,\"modBackWheels\":-1,\"modSpeakers\":-1,\"modFrame\":-1,\"modArchCover\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":29,\"modRoof\":-1,\"modBrakes\":-1,\"modHydrolic\":-1,\"neonColor\":[255,0,255],\"modArmor\":-1,\"modHood\":-1,\"modAerials\":-1,\"wheels\":3}', 'car', NULL, 0),
('steam:11000011a1c13e8', 0, 'EPD 001', '{\"modStruts\":-1,\"modHorns\":-1,\"modPlateHolder\":-1,\"modEngineBlock\":-1,\"color1\":112,\"modSeats\":-1,\"model\":1171614426,\"dirtLevel\":5.0,\"modTank\":-1,\"color2\":28,\"modBrakes\":-1,\"modDial\":-1,\"modRearBumper\":-1,\"modHydrolic\":-1,\"neonEnabled\":[false,false,false,false],\"modArmor\":-1,\"modOrnaments\":-1,\"modVanityPlate\":-1,\"modRoof\":-1,\"modSuspension\":-1,\"modTrunk\":-1,\"windowTint\":-1,\"modTrimA\":-1,\"modAPlate\":-1,\"modFender\":-1,\"modExhaust\":-1,\"modAerials\":-1,\"modXenon\":false,\"modEngine\":-1,\"extras\":{\"11\":false,\"12\":false,\"10\":false},\"modBackWheels\":-1,\"modSpeakers\":-1,\"modSteeringWheel\":-1,\"pearlescentColor\":112,\"modSmokeEnabled\":false,\"wheelColor\":156,\"modHood\":-1,\"modRightFender\":-1,\"neonColor\":[255,0,255],\"modTransmission\":-1,\"modShifterLeavers\":-1,\"modLivery\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrontBumper\":-1,\"modTrimB\":-1,\"wheels\":0,\"modArchCover\":-1,\"plate\":\"EPD 001\",\"modAirFilter\":-1,\"modDoorSpeaker\":-1,\"health\":1000,\"modDashboard\":-1,\"plateIndex\":4,\"modTurbo\":false,\"modWindows\":-1,\"modGrille\":-1,\"modFrame\":-1,\"modSideSkirt\":-1,\"modFrontWheels\":-1,\"modSpoilers\":-1}', 'car', 'ambulance', 0),
('steam:110000135fc6b1e', 0, 'EWZ 102', '{\"extras\":{\"12\":true,\"1\":true},\"modAirFilter\":-1,\"wheelColor\":156,\"modAerials\":-1,\"modEngine\":1,\"modFender\":-1,\"modSideSkirt\":-1,\"modBackWheels\":-1,\"modTransmission\":-1,\"modSmokeEnabled\":1,\"modShifterLeavers\":-1,\"color1\":111,\"modArmor\":-1,\"modTank\":-1,\"modWindows\":-1,\"modTrimA\":-1,\"modFrontWheels\":-1,\"modAPlate\":-1,\"modExhaust\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"plate\":\"EWZ 102\",\"modTurbo\":false,\"modTrimB\":-1,\"modXenon\":false,\"modSuspension\":-1,\"plateIndex\":4,\"modHorns\":-1,\"modSeats\":-1,\"modOrnaments\":-1,\"modRoof\":-1,\"modSpoilers\":-1,\"modRightFender\":-1,\"windowTint\":-1,\"modStruts\":-1,\"dirtLevel\":14.266911506653,\"modEngineBlock\":-1,\"model\":1912215274,\"modVanityPlate\":-1,\"pearlescentColor\":1,\"modHydrolic\":-1,\"modSteeringWheel\":-1,\"modBrakes\":-1,\"neonEnabled\":[false,false,false,false],\"wheels\":0,\"modDoorSpeaker\":-1,\"modHood\":-1,\"modLivery\":7,\"modGrille\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modDashboard\":-1,\"modTrunk\":-1,\"modSpeakers\":-1,\"modArchCover\":-1,\"health\":999,\"modFrontBumper\":-1,\"modRearBumper\":-1,\"modFrame\":-1,\"color2\":0}', 'car', 'police', 1),
('steam:110000135fc6b1e', 1, 'FDI 020', '{\"extras\":{\"12\":true,\"1\":true},\"modAirFilter\":-1,\"wheelColor\":156,\"modAerials\":-1,\"modEngine\":1,\"modDashboard\":-1,\"modRightFender\":-1,\"modBackWheels\":-1,\"modTransmission\":-1,\"modSmokeEnabled\":1,\"modStruts\":-1,\"windowTint\":-1,\"modArmor\":-1,\"modTank\":-1,\"modWindows\":-1,\"modTrimA\":-1,\"modFrontWheels\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"tyreSmokeColor\":[255,255,255],\"color2\":0,\"plate\":\"FDI 020\",\"modTurbo\":false,\"modTrimB\":-1,\"neonColor\":[255,0,255],\"modSuspension\":-1,\"plateIndex\":4,\"modHorns\":-1,\"modEngineBlock\":-1,\"modSideSkirt\":-1,\"modFender\":-1,\"modSpoilers\":-1,\"modShifterLeavers\":-1,\"modAPlate\":-1,\"modRoof\":-1,\"modFrame\":-1,\"modLivery\":1,\"model\":1912215274,\"modVanityPlate\":-1,\"pearlescentColor\":1,\"modHydrolic\":-1,\"modSteeringWheel\":-1,\"modBrakes\":-1,\"modOrnaments\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modHood\":-1,\"dirtLevel\":12.378622055054,\"modGrille\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"color1\":111,\"modTrunk\":-1,\"modSpeakers\":-1,\"modArchCover\":-1,\"health\":998,\"modFrontBumper\":-1,\"modRearBumper\":-1,\"modXenon\":false,\"modSeats\":-1}', 'car', 'police', 0),
('steam:11000013c2ce0a6', 0, 'FEB 497', '{\"pearlescentColor\":0,\"modWindows\":-1,\"modSpeakers\":-1,\"plateIndex\":4,\"modBrakes\":-1,\"modEngine\":-1,\"modExhaust\":-1,\"modTransmission\":-1,\"modRightFender\":-1,\"modHorns\":-1,\"modTrimB\":-1,\"model\":2046537925,\"modGrille\":-1,\"color1\":134,\"modFrontWheels\":-1,\"modSteeringWheel\":-1,\"modXenon\":false,\"modPlateHolder\":-1,\"modFender\":-1,\"modTurbo\":false,\"modEngineBlock\":-1,\"modHydrolic\":-1,\"modTrimA\":-1,\"wheels\":1,\"modSeats\":-1,\"modLivery\":1,\"modFrontBumper\":-1,\"modAPlate\":-1,\"modRearBumper\":-1,\"modHood\":-1,\"neonColor\":[255,0,255],\"modStruts\":-1,\"plate\":\"FEB 497\",\"tyreSmokeColor\":[255,255,255],\"health\":1000,\"dirtLevel\":3.0,\"modSuspension\":-1,\"modDashboard\":-1,\"modTrunk\":-1,\"modTank\":-1,\"modShifterLeavers\":-1,\"modDoorSpeaker\":-1,\"modBackWheels\":-1,\"modSpoilers\":-1,\"modOrnaments\":-1,\"modDial\":-1,\"modSmokeEnabled\":false,\"modArchCover\":-1,\"modFrame\":-1,\"modArmor\":-1,\"wheelColor\":156,\"color2\":134,\"windowTint\":-1,\"neonEnabled\":[false,false,false,false],\"modVanityPlate\":-1,\"extras\":{\"4\":false,\"5\":false,\"6\":false,\"7\":false,\"1\":true,\"9\":false,\"2\":false,\"3\":false},\"modRoof\":-1,\"modSideSkirt\":-1,\"modAerials\":-1,\"modAirFilter\":-1}', 'car', 'police', 0),
('steam:1100001348c4d8b', 0, 'FOK 159', '{\"extras\":[],\"modAirFilter\":-1,\"wheelColor\":156,\"modAerials\":-1,\"modEngine\":-1,\"modFender\":-1,\"modSideSkirt\":-1,\"modBackWheels\":-1,\"modTransmission\":-1,\"modSmokeEnabled\":1,\"modShifterLeavers\":-1,\"modFrontWheels\":-1,\"windowTint\":-1,\"modTank\":-1,\"modWindows\":-1,\"modTrimA\":-1,\"color1\":10,\"modAPlate\":-1,\"modExhaust\":-1,\"tyreSmokeColor\":[255,255,255],\"modArmor\":-1,\"plate\":\"FOK 159\",\"modTurbo\":false,\"modTrimB\":-1,\"modRightFender\":-1,\"modSuspension\":-1,\"plateIndex\":0,\"modHorns\":-1,\"neonColor\":[255,0,255],\"modStruts\":-1,\"modOrnaments\":-1,\"modSpoilers\":-1,\"modDashboard\":-1,\"color2\":0,\"modRoof\":-1,\"dirtLevel\":10.301788330078,\"modEngineBlock\":-1,\"model\":1348744438,\"modVanityPlate\":-1,\"pearlescentColor\":5,\"modHydrolic\":-1,\"modSteeringWheel\":-1,\"modBrakes\":-1,\"modLivery\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modHood\":-1,\"neonEnabled\":[false,false,false,false],\"modGrille\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modFrame\":-1,\"modTrunk\":-1,\"modSpeakers\":-1,\"modArchCover\":-1,\"health\":1000,\"modFrontBumper\":-1,\"modRearBumper\":-1,\"modSeats\":-1,\"modXenon\":false}', 'car', NULL, 0),
('steam:1100001384ce0d6', 0, 'FPE 225', '{\"modStruts\":-1,\"modHorns\":-1,\"modPlateHolder\":-1,\"modEngineBlock\":-1,\"color1\":112,\"modTurbo\":false,\"model\":1171614426,\"dirtLevel\":4.0,\"modLivery\":-1,\"color2\":28,\"modDial\":-1,\"modRearBumper\":-1,\"wheelColor\":156,\"modHydrolic\":-1,\"modAPlate\":-1,\"modArmor\":-1,\"modOrnaments\":-1,\"modVanityPlate\":-1,\"modSpoilers\":-1,\"modAerials\":-1,\"modTrunk\":-1,\"windowTint\":-1,\"modTrimA\":-1,\"modRoof\":-1,\"modFender\":-1,\"modExhaust\":-1,\"modSuspension\":-1,\"modXenon\":false,\"modEngine\":-1,\"extras\":{\"11\":false,\"12\":false,\"10\":false},\"modBackWheels\":-1,\"modSpeakers\":-1,\"modSteeringWheel\":-1,\"pearlescentColor\":112,\"modSmokeEnabled\":false,\"modTank\":-1,\"modHood\":-1,\"modRightFender\":-1,\"neonColor\":[255,0,255],\"modTransmission\":-1,\"modShifterLeavers\":-1,\"modBrakes\":-1,\"modTrimB\":-1,\"modFrontBumper\":-1,\"modDashboard\":-1,\"wheels\":0,\"modArchCover\":-1,\"plate\":\"FPE 225\",\"modAirFilter\":-1,\"modDoorSpeaker\":-1,\"health\":1000,\"modSeats\":-1,\"plateIndex\":4,\"modGrille\":-1,\"modWindows\":-1,\"tyreSmokeColor\":[255,255,255],\"neonEnabled\":[false,false,false,false],\"modFrame\":-1,\"modFrontWheels\":-1,\"modSideSkirt\":-1}', 'car', 'ambulance', 0),
('steam:1100001138a08d6', 0, 'GIZ 734', '{\"extras\":{\"1\":true},\"modAirFilter\":-1,\"wheelColor\":156,\"modAerials\":-1,\"modEngine\":-1,\"modDashboard\":-1,\"modRightFender\":-1,\"modBackWheels\":-1,\"modTransmission\":-1,\"modSmokeEnabled\":1,\"modShifterLeavers\":-1,\"color1\":0,\"modArmor\":-1,\"modTank\":-1,\"modWindows\":-1,\"modTrimA\":-1,\"modFrontWheels\":-1,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"tyreSmokeColor\":[255,255,255],\"windowTint\":-1,\"plate\":\"GIZ 734\",\"modTurbo\":false,\"modTrimB\":-1,\"neonColor\":[255,0,255],\"modSuspension\":-1,\"plateIndex\":3,\"modHorns\":-1,\"modSideSkirt\":-1,\"modStruts\":-1,\"modEngineBlock\":-1,\"modSpoilers\":-1,\"modLivery\":-1,\"modFrame\":-1,\"modRoof\":-1,\"dirtLevel\":7.8145890235901,\"modFender\":-1,\"model\":-1883869285,\"modVanityPlate\":-1,\"pearlescentColor\":5,\"modHydrolic\":-1,\"modSteeringWheel\":-1,\"modBrakes\":-1,\"modDial\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modHood\":-1,\"modOrnaments\":-1,\"modGrille\":-1,\"modXenon\":false,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modTrunk\":-1,\"modSpeakers\":-1,\"modArchCover\":-1,\"health\":999,\"modFrontBumper\":-1,\"modRearBumper\":-1,\"modSeats\":-1,\"color2\":0}', 'car', NULL, 0),
('steam:11000010febf2f0', 1, 'HDO 985', '{\"windowTint\":-1,\"neonColor\":[255,0,255],\"modTransmission\":-1,\"modTank\":-1,\"modWindows\":-1,\"modDashboard\":-1,\"modSpeakers\":-1,\"modBackWheels\":-1,\"modSuspension\":-1,\"modShifterLeavers\":-1,\"modRearBumper\":-1,\"modRightFender\":-1,\"health\":1000,\"modTurbo\":false,\"modHood\":-1,\"modExhaust\":-1,\"model\":-2007026063,\"modOrnaments\":-1,\"modHorns\":-1,\"modSpoilers\":-1,\"modFrontBumper\":-1,\"modSteeringWheel\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modTrunk\":-1,\"modLivery\":-1,\"modHydrolic\":-1,\"neonEnabled\":[false,false,false,false],\"color1\":77,\"modSideSkirt\":-1,\"modSmokeEnabled\":false,\"modVanityPlate\":-1,\"plate\":\"HDO 985\",\"modTrimB\":-1,\"modSeats\":-1,\"modFrontWheels\":-1,\"modTrimA\":-1,\"plateIndex\":4,\"modAirFilter\":-1,\"tyreSmokeColor\":[255,255,255],\"modFender\":-1,\"modDoorSpeaker\":-1,\"modArmor\":-1,\"modGrille\":-1,\"modEngineBlock\":-1,\"modAerials\":-1,\"extras\":[],\"modRoof\":-1,\"modFrame\":-1,\"pearlescentColor\":0,\"modAPlate\":-1,\"modBrakes\":-1,\"color2\":0,\"wheels\":0,\"dirtLevel\":10.0,\"modStruts\":-1,\"wheelColor\":156,\"modXenon\":false,\"modArchCover\":-1,\"modEngine\":-1}', 'car', 'police', 1),
('steam:11000011a1c13e8', 0, 'HDW 497', '{\"neonEnabled\":[false,false,false,false],\"modSuspension\":-1,\"health\":1000,\"modEngineBlock\":-1,\"modEngine\":-1,\"modRightFender\":-1,\"modWindows\":-1,\"modAPlate\":-1,\"modArmor\":-1,\"modFrame\":-1,\"windowTint\":-1,\"modHydrolic\":-1,\"modTrunk\":-1,\"modStruts\":-1,\"modXenon\":false,\"modFender\":-1,\"dirtLevel\":8.0,\"extras\":{\"1\":false},\"modTrimB\":-1,\"modAerials\":-1,\"modHorns\":-1,\"modVanityPlate\":-1,\"modGrille\":-1,\"modTurbo\":false,\"modDoorSpeaker\":-1,\"modShifterLeavers\":-1,\"modTransmission\":-1,\"color1\":112,\"modSideSkirt\":-1,\"modArchCover\":-1,\"modSpoilers\":-1,\"modSpeakers\":-1,\"tyreSmokeColor\":[255,255,255],\"modDial\":-1,\"modRoof\":-1,\"modDashboard\":-1,\"modOrnaments\":-1,\"wheels\":0,\"modTrimA\":-1,\"plate\":\"HDW 497\",\"model\":1171614426,\"modFrontWheels\":-1,\"modSeats\":-1,\"color2\":28,\"modExhaust\":-1,\"modFrontBumper\":-1,\"plateIndex\":4,\"modPlateHolder\":-1,\"modAirFilter\":-1,\"modSteeringWheel\":-1,\"modHood\":-1,\"wheelColor\":156,\"pearlescentColor\":112,\"modRearBumper\":-1,\"modSmokeEnabled\":false,\"modBackWheels\":-1,\"modLivery\":2,\"neonColor\":[255,0,255],\"modBrakes\":-1,\"modTank\":-1}', 'car', 'ambulance', 0),
('steam:110000135fc6b1e', 1, 'HGQ 456', '{\"modTransmission\":-1,\"modEngine\":-1,\"health\":1000,\"modExhaust\":-1,\"modFrame\":-1,\"wheelColor\":0,\"modAPlate\":-1,\"modLivery\":3,\"modSideSkirt\":-1,\"neonEnabled\":[false,false,false,false],\"modSpoilers\":-1,\"modSmokeEnabled\":1,\"modOrnaments\":-1,\"modAerials\":-1,\"modArmor\":-1,\"modRearBumper\":-1,\"modTrimB\":-1,\"modArchCover\":-1,\"modRightFender\":-1,\"modSuspension\":-1,\"modEngineBlock\":-1,\"pearlescentColor\":0,\"plateIndex\":4,\"modXenon\":false,\"modRoof\":-1,\"color2\":134,\"modAirFilter\":-1,\"modSeats\":-1,\"modBrakes\":-1,\"modWindows\":-1,\"modPlateHolder\":-1,\"extras\":{\"5\":true,\"4\":true,\"7\":true,\"1\":true,\"3\":true,\"2\":true},\"modSpeakers\":-1,\"wheels\":0,\"modTank\":-1,\"modTrunk\":-1,\"modFrontBumper\":-1,\"color1\":134,\"modDoorSpeaker\":-1,\"modTurbo\":false,\"modTrimA\":-1,\"modGrille\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modSteeringWheel\":-1,\"windowTint\":-1,\"plate\":\"HGQ 456\",\"modHood\":-1,\"modFender\":-1,\"modDashboard\":-1,\"dirtLevel\":1.0251764059067,\"modShifterLeavers\":-1,\"modVanityPlate\":-1,\"modDial\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modHorns\":-1,\"modBackWheels\":-1,\"modStruts\":-1,\"model\":1341474454}', 'car', 'police', 1),
('steam:11000010a16ed9a', 1, 'HLU 664', '{\"modDashboard\":-1,\"modTransmission\":-1,\"color2\":0,\"modFender\":-1,\"modPlateHolder\":-1,\"extras\":[],\"modSteeringWheel\":-1,\"windowTint\":-1,\"modArmor\":-1,\"modHorns\":-1,\"modTrunk\":-1,\"modEngine\":-1,\"modStruts\":-1,\"pearlescentColor\":5,\"modShifterLeavers\":-1,\"modOrnaments\":-1,\"modRoof\":-1,\"tyreSmokeColor\":[255,255,255],\"modSmokeEnabled\":false,\"modHood\":-1,\"wheelColor\":156,\"modSpeakers\":-1,\"modRightFender\":-1,\"modGrille\":-1,\"modDoorSpeaker\":-1,\"modFrontWheels\":-1,\"modWindows\":-1,\"modSpoilers\":-1,\"modLivery\":-1,\"modHydrolic\":-1,\"plateIndex\":3,\"plate\":\"HLU 664\",\"modExhaust\":-1,\"wheels\":6,\"modAPlate\":-1,\"modVanityPlate\":-1,\"modSuspension\":-1,\"modEngineBlock\":-1,\"neonColor\":[255,0,255],\"modFrontBumper\":-1,\"health\":1000,\"modFrame\":-1,\"neonEnabled\":[false,false,false,false],\"modTurbo\":false,\"modTank\":-1,\"modAerials\":-1,\"modSeats\":-1,\"modTrimA\":-1,\"modArchCover\":-1,\"modBackWheels\":-1,\"modXenon\":false,\"modDial\":-1,\"modTrimB\":-1,\"modSideSkirt\":-1,\"modRearBumper\":-1,\"dirtLevel\":8.0000133514404,\"color1\":7,\"model\":55628203,\"modAirFilter\":-1,\"modBrakes\":-1}', 'car', NULL, 0),
('steam:11000010f742b73', 1, 'HMS 088', '{\"modDial\":-1,\"modEngine\":-1,\"health\":873,\"modExhaust\":-1,\"modFrame\":-1,\"wheelColor\":156,\"model\":-1978168465,\"modLivery\":-1,\"modSideSkirt\":-1,\"neonEnabled\":[1,1,1,1],\"modSpoilers\":-1,\"modDoorSpeaker\":-1,\"modOrnaments\":-1,\"modAerials\":-1,\"modSuspension\":-1,\"modRearBumper\":-1,\"modTrimB\":-1,\"modArchCover\":-1,\"modRightFender\":-1,\"dirtLevel\":8.8102617263794,\"modBackWheels\":-1,\"pearlescentColor\":6,\"plateIndex\":2,\"modXenon\":false,\"modRoof\":-1,\"extras\":[],\"modAirFilter\":-1,\"modSeats\":-1,\"modAPlate\":-1,\"modTrunk\":-1,\"modPlateHolder\":-1,\"plate\":\"HMS 088\",\"modSpeakers\":-1,\"wheels\":0,\"modEngineBlock\":-1,\"modTank\":-1,\"modTransmission\":-1,\"color1\":0,\"modTurbo\":false,\"modTrimA\":-1,\"tyreSmokeColor\":[255,255,255],\"modGrille\":-1,\"modSmokeEnabled\":1,\"neonColor\":[255,0,0],\"modSteeringWheel\":-1,\"windowTint\":-1,\"modShifterLeavers\":-1,\"modHood\":-1,\"modFrontBumper\":-1,\"modDashboard\":-1,\"modWindows\":-1,\"color2\":3,\"modVanityPlate\":-1,\"modArmor\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modHorns\":-1,\"modFender\":-1,\"modStruts\":-1,\"modBrakes\":-1}', 'car', NULL, 0),
('steam:11000010f2fc36c', 1, 'HZR 997', '{\"extras\":[],\"modAirFilter\":-1,\"wheelColor\":156,\"modAerials\":-1,\"modEngine\":-1,\"modDashboard\":-1,\"modSideSkirt\":-1,\"modBackWheels\":-1,\"modTransmission\":-1,\"modSmokeEnabled\":1,\"modStruts\":-1,\"modOrnaments\":-1,\"modArmor\":-1,\"modTank\":-1,\"modWindows\":-1,\"modTrimA\":-1,\"modFrontWheels\":-1,\"modAPlate\":-1,\"modExhaust\":-1,\"tyreSmokeColor\":[0,150,255],\"neonColor\":[0,0,255],\"plate\":\"HZR 997\",\"modTurbo\":false,\"modTrimB\":-1,\"neonEnabled\":[1,1,1,1],\"modSuspension\":-1,\"plateIndex\":0,\"modHorns\":-1,\"color2\":4,\"windowTint\":-1,\"modLivery\":-1,\"modSpoilers\":-1,\"modXenon\":false,\"modRightFender\":-1,\"modRoof\":-1,\"modFrame\":-1,\"modShifterLeavers\":-1,\"model\":-1978168465,\"modVanityPlate\":-1,\"pearlescentColor\":143,\"modHydrolic\":-1,\"modSteeringWheel\":-1,\"modBrakes\":-1,\"modDial\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modHood\":-1,\"dirtLevel\":12.215980529785,\"modGrille\":-1,\"modFender\":-1,\"modPlateHolder\":-1,\"color1\":64,\"modTrunk\":-1,\"modSpeakers\":-1,\"modArchCover\":-1,\"health\":975,\"modFrontBumper\":-1,\"modRearBumper\":-1,\"modEngineBlock\":-1,\"modSeats\":-1}', 'car', NULL, 0),
('steam:1100001384ce0d6', 1, 'IBZ 992', '{\"modDial\":-1,\"modEngine\":-1,\"health\":1000,\"modExhaust\":-1,\"modFrame\":-1,\"wheelColor\":156,\"dirtLevel\":0.0057253814302385,\"modLivery\":0,\"modSideSkirt\":-1,\"neonEnabled\":[false,false,false,false],\"wheels\":0,\"modSmokeEnabled\":1,\"modDoorSpeaker\":-1,\"modAerials\":-1,\"modFender\":-1,\"modRearBumper\":-1,\"modTrimB\":-1,\"modArchCover\":-1,\"model\":1171614426,\"modSuspension\":-1,\"modEngineBlock\":-1,\"pearlescentColor\":112,\"plateIndex\":4,\"modXenon\":false,\"modRoof\":-1,\"extras\":{\"1\":true},\"modAirFilter\":-1,\"modSeats\":-1,\"modBrakes\":-1,\"modWindows\":-1,\"modPlateHolder\":-1,\"modBackWheels\":-1,\"modSpeakers\":-1,\"color2\":28,\"modTrunk\":-1,\"modRightFender\":-1,\"modTank\":-1,\"color1\":112,\"modTurbo\":false,\"modTrimA\":-1,\"tyreSmokeColor\":[255,255,255],\"modGrille\":-1,\"plate\":\"IBZ 992\",\"modSpoilers\":-1,\"modSteeringWheel\":-1,\"windowTint\":-1,\"modShifterLeavers\":-1,\"modHood\":-1,\"modFrontBumper\":-1,\"modDashboard\":-1,\"modAPlate\":-1,\"neonColor\":[255,0,255],\"modVanityPlate\":-1,\"modArmor\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modHorns\":-1,\"modOrnaments\":-1,\"modStruts\":-1,\"modTransmission\":-1}', 'car', 'ambulance', 0),
('steam:11000011a1c13e8', 1, 'IUV 696', '{\"modTank\":-1,\"color2\":28,\"modDoorSpeaker\":-1,\"modWindows\":-1,\"modVanityPlate\":-1,\"modHood\":-1,\"modSpeakers\":-1,\"modStruts\":-1,\"modHydrolic\":-1,\"modTrunk\":-1,\"extras\":{\"1\":true},\"modFrame\":-1,\"modFender\":-1,\"neonColor\":[255,0,255],\"modTrimA\":-1,\"health\":996,\"modEngine\":-1,\"modRightFender\":-1,\"modXenon\":false,\"modRearBumper\":-1,\"modPlateHolder\":-1,\"modShifterLeavers\":-1,\"modAirFilter\":-1,\"modTurbo\":false,\"modDashboard\":-1,\"modSpoilers\":-1,\"modSeats\":-1,\"modGrille\":-1,\"modLivery\":2,\"modSteeringWheel\":-1,\"modRoof\":-1,\"dirtLevel\":0.76637959480286,\"plate\":\"IUV 696\",\"modArmor\":-1,\"color1\":112,\"wheelColor\":156,\"neonEnabled\":[false,false,false,false],\"plateIndex\":4,\"modSideSkirt\":-1,\"pearlescentColor\":112,\"modExhaust\":-1,\"model\":1171614426,\"modAPlate\":-1,\"modBackWheels\":-1,\"modOrnaments\":-1,\"modTrimB\":-1,\"modSuspension\":-1,\"modHorns\":-1,\"modEngineBlock\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrontWheels\":-1,\"windowTint\":-1,\"modDial\":-1,\"wheels\":0,\"modAerials\":-1,\"modBrakes\":-1,\"modTransmission\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modSmokeEnabled\":1}', 'car', 'ambulance', 0),
('steam:11000010a16ed9a', 1, 'IZZ 382', '{\"health\":985,\"modSuspension\":-1,\"modLivery\":-1,\"modArchCover\":-1,\"pearlescentColor\":0,\"modTrimA\":-1,\"modSmokeEnabled\":1,\"modTrimB\":-1,\"modHorns\":-1,\"tyreSmokeColor\":[255,255,255],\"wheelColor\":147,\"modExhaust\":-1,\"modSpoilers\":-1,\"modDial\":-1,\"modShifterLeavers\":-1,\"modBrakes\":-1,\"color2\":0,\"wheels\":0,\"modGrille\":-1,\"modHood\":-1,\"modOrnaments\":-1,\"modFrontWheels\":-1,\"modSideSkirt\":-1,\"modFrontBumper\":-1,\"plate\":\"IZZ 382\",\"modWindows\":-1,\"modEngine\":-1,\"modSpeakers\":-1,\"modAirFilter\":-1,\"modFrame\":-1,\"color1\":112,\"plateIndex\":3,\"extras\":[],\"modPlateHolder\":-1,\"modHydrolic\":-1,\"modRearBumper\":-1,\"neonColor\":[255,0,255],\"modSteeringWheel\":-1,\"neonEnabled\":[false,false,false,false],\"modTrunk\":-1,\"modAPlate\":-1,\"modXenon\":false,\"modDashboard\":-1,\"modDoorSpeaker\":-1,\"modEngineBlock\":-1,\"modAerials\":-1,\"modBackWheels\":-1,\"windowTint\":-1,\"model\":1913688065,\"modTank\":-1,\"modArmor\":-1,\"modTurbo\":false,\"modSeats\":-1,\"modStruts\":-1,\"dirtLevel\":0.20983681082726,\"modTransmission\":-1,\"modVanityPlate\":-1,\"modRoof\":-1,\"modFender\":-1,\"modRightFender\":-1}', 'car', NULL, 0),
('steam:110000107d06976', 1, 'JJN 324', '{\"modTransmission\":-1,\"modEngine\":-1,\"health\":960,\"modExhaust\":-1,\"modFrame\":-1,\"modTank\":-1,\"dirtLevel\":12.350415229797,\"modLivery\":-1,\"modSideSkirt\":-1,\"neonEnabled\":[false,false,false,false],\"model\":-2064372143,\"modTrimA\":-1,\"modOrnaments\":-1,\"modAerials\":-1,\"modWindows\":-1,\"modRearBumper\":-1,\"modTrimB\":-1,\"modArchCover\":-1,\"modRightFender\":-1,\"modSuspension\":-1,\"modEngineBlock\":-1,\"pearlescentColor\":0,\"plateIndex\":3,\"modXenon\":false,\"modRoof\":-1,\"wheels\":4,\"modAirFilter\":-1,\"modSeats\":-1,\"modBrakes\":-1,\"modTrunk\":-1,\"modPlateHolder\":-1,\"extras\":[],\"modSpeakers\":-1,\"color2\":153,\"modFender\":-1,\"modSmokeEnabled\":1,\"wheelColor\":153,\"modArmor\":-1,\"plate\":\"JJN 324\",\"modBackWheels\":-1,\"modTurbo\":false,\"modGrille\":-1,\"color1\":152,\"modSpoilers\":-1,\"modSteeringWheel\":-1,\"windowTint\":-1,\"modDoorSpeaker\":-1,\"modHood\":-1,\"modAPlate\":-1,\"modDashboard\":-1,\"modShifterLeavers\":-1,\"modFrontBumper\":-1,\"modVanityPlate\":-1,\"modDial\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modHorns\":-1,\"tyreSmokeColor\":[255,255,255],\"modStruts\":-1,\"neonColor\":[255,0,255]}', 'car', NULL, 0),
('steam:110000116d82e19', 0, 'JSB 880', '{\"modStruts\":-1,\"modHorns\":-1,\"modPlateHolder\":-1,\"modEngineBlock\":-1,\"color1\":112,\"modTurbo\":false,\"model\":1171614426,\"dirtLevel\":5.0,\"modRoof\":-1,\"color2\":28,\"modBrakes\":-1,\"modTank\":-1,\"wheelColor\":156,\"modHydrolic\":-1,\"modAPlate\":-1,\"modArmor\":-1,\"modOrnaments\":-1,\"modVanityPlate\":-1,\"extras\":{\"11\":false,\"12\":false,\"10\":false},\"modRightFender\":-1,\"modTrunk\":-1,\"windowTint\":-1,\"modTrimA\":-1,\"modSideSkirt\":-1,\"modFender\":-1,\"modExhaust\":-1,\"modSuspension\":-1,\"modXenon\":false,\"modEngine\":-1,\"modRearBumper\":-1,\"modBackWheels\":-1,\"modSpeakers\":-1,\"modSteeringWheel\":-1,\"modTrimB\":-1,\"modSmokeEnabled\":false,\"modDashboard\":-1,\"modHood\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modGrille\":-1,\"modShifterLeavers\":-1,\"modDial\":-1,\"modLivery\":-1,\"modFrontBumper\":-1,\"modAerials\":-1,\"wheels\":0,\"modArchCover\":-1,\"plate\":\"JSB 880\",\"modAirFilter\":-1,\"modDoorSpeaker\":-1,\"health\":1000,\"pearlescentColor\":112,\"plateIndex\":4,\"modSeats\":-1,\"modWindows\":-1,\"modTransmission\":-1,\"modSpoilers\":-1,\"neonEnabled\":[false,false,false,false],\"modFrontWheels\":-1,\"modFrame\":-1}', 'car', 'ambulance', 0),
('steam:11000011a1c13e8', 0, 'JUG 189', '{\"modStruts\":-1,\"modHorns\":-1,\"modPlateHolder\":-1,\"modEngineBlock\":-1,\"color1\":112,\"modSeats\":-1,\"model\":1171614426,\"dirtLevel\":7.0,\"modTank\":-1,\"color2\":28,\"modBrakes\":-1,\"modDial\":-1,\"modRearBumper\":-1,\"modHydrolic\":-1,\"neonEnabled\":[false,false,false,false],\"modArmor\":-1,\"modOrnaments\":-1,\"modVanityPlate\":-1,\"modRoof\":-1,\"modSuspension\":-1,\"modTrunk\":-1,\"windowTint\":-1,\"modTrimA\":-1,\"modAPlate\":-1,\"modFender\":-1,\"modExhaust\":-1,\"modAerials\":-1,\"modXenon\":false,\"modEngine\":-1,\"extras\":{\"11\":false,\"12\":false,\"10\":false},\"modBackWheels\":-1,\"modSpeakers\":-1,\"modSteeringWheel\":-1,\"pearlescentColor\":112,\"modSmokeEnabled\":false,\"wheelColor\":156,\"modHood\":-1,\"modRightFender\":-1,\"neonColor\":[255,0,255],\"modTransmission\":-1,\"modShifterLeavers\":-1,\"modLivery\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrontBumper\":-1,\"modTrimB\":-1,\"wheels\":0,\"modArchCover\":-1,\"plate\":\"JUG 189\",\"modAirFilter\":-1,\"modDoorSpeaker\":-1,\"health\":1000,\"modDashboard\":-1,\"plateIndex\":4,\"modTurbo\":false,\"modWindows\":-1,\"modGrille\":-1,\"modFrame\":-1,\"modSideSkirt\":-1,\"modFrontWheels\":-1,\"modSpoilers\":-1}', 'car', 'ambulance', 0),
('steam:11000011a1c13e8', 1, 'KHJ 618', '{\"modHood\":-1,\"modDoorSpeaker\":-1,\"modRightFender\":-1,\"modSideSkirt\":-1,\"modSeats\":-1,\"modEngine\":-1,\"modVanityPlate\":-1,\"modFrontBumper\":-1,\"modTrunk\":-1,\"modAPlate\":-1,\"neonColor\":[255,0,255],\"modShifterLeavers\":-1,\"modEngineBlock\":-1,\"neonEnabled\":[false,false,false,false],\"color2\":28,\"modSteeringWheel\":-1,\"pearlescentColor\":112,\"extras\":{\"1\":false},\"modArmor\":-1,\"modPlateHolder\":-1,\"wheelColor\":156,\"modLivery\":2,\"modArchCover\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modDashboard\":-1,\"wheels\":0,\"plate\":\"KHJ 618\",\"modTank\":-1,\"tyreSmokeColor\":[255,255,255],\"modSpeakers\":-1,\"color1\":112,\"modOrnaments\":-1,\"modBrakes\":-1,\"modRearBumper\":-1,\"modTrimB\":-1,\"modBackWheels\":-1,\"modSpoilers\":-1,\"modGrille\":-1,\"modExhaust\":-1,\"modAerials\":-1,\"modSmokeEnabled\":false,\"modTurbo\":false,\"model\":1171614426,\"modAirFilter\":-1,\"dirtLevel\":5.0,\"modRoof\":-1,\"modStruts\":-1,\"modFender\":-1,\"modSuspension\":-1,\"modHorns\":-1,\"modFrontWheels\":-1,\"plateIndex\":4,\"health\":1000,\"modTransmission\":-1,\"modFrame\":-1,\"windowTint\":-1,\"modXenon\":false,\"modWindows\":-1,\"modTrimA\":-1}', 'car', 'ambulance', 0),
('steam:11000010a16ed9a', 1, 'KSC 577', '{\"modExhaust\":-1,\"modSpeakers\":-1,\"modDoorSpeaker\":-1,\"modSpoilers\":-1,\"modEngine\":-1,\"modTrimA\":-1,\"modWindows\":-1,\"wheels\":0,\"model\":-1978168465,\"modGrille\":-1,\"modRoof\":-1,\"color1\":12,\"modDashboard\":-1,\"modPlateHolder\":-1,\"dirtLevel\":8.899055480957,\"plateIndex\":1,\"pearlescentColor\":92,\"color2\":12,\"modStruts\":-1,\"tyreSmokeColor\":[255,255,255],\"modRightFender\":-1,\"modArmor\":-1,\"modHydrolic\":-1,\"modAPlate\":-1,\"modHood\":-1,\"wheelColor\":156,\"modShifterLeavers\":-1,\"modXenon\":1,\"modSmokeEnabled\":1,\"windowTint\":-1,\"health\":1000,\"modSuspension\":-1,\"neonColor\":[0,255,0],\"modFrontWheels\":-1,\"extras\":[],\"modVanityPlate\":-1,\"plate\":\"KSC 577\",\"modBackWheels\":-1,\"modAerials\":-1,\"modTransmission\":-1,\"modFrontBumper\":-1,\"modSideSkirt\":-1,\"modTrunk\":-1,\"modArchCover\":-1,\"modAirFilter\":-1,\"modSteeringWheel\":-1,\"modTrimB\":-1,\"modSeats\":-1,\"modRearBumper\":-1,\"modFrame\":-1,\"modBrakes\":-1,\"modOrnaments\":-1,\"neonEnabled\":[1,1,1,1],\"modTurbo\":1,\"modEngineBlock\":-1,\"modFender\":-1,\"modDial\":-1,\"modLivery\":-1,\"modHorns\":-1,\"modTank\":-1}', 'car', NULL, 0),
('steam:11000011a1c13e8', 0, 'LFL 323', '{\"modDial\":-1,\"modEngine\":-1,\"health\":989,\"modExhaust\":-1,\"modFrame\":-1,\"wheelColor\":156,\"dirtLevel\":10.689703941345,\"modLivery\":1,\"modBackWheels\":-1,\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"modTank\":-1,\"modOrnaments\":-1,\"modAerials\":-1,\"modRightFender\":-1,\"modRearBumper\":-1,\"modTrimB\":-1,\"modArchCover\":-1,\"tyreSmokeColor\":[255,255,255],\"modSuspension\":-1,\"modSideSkirt\":-1,\"pearlescentColor\":5,\"plateIndex\":2,\"modXenon\":false,\"modRoof\":-1,\"modDoorSpeaker\":-1,\"modAirFilter\":-1,\"modSeats\":-1,\"modAPlate\":-1,\"modWindows\":-1,\"modPlateHolder\":-1,\"extras\":[],\"modSpeakers\":-1,\"wheels\":0,\"model\":-213537235,\"modSmokeEnabled\":1,\"modSpoilers\":-1,\"modEngineBlock\":-1,\"plate\":\"LFL 323\",\"modTurbo\":false,\"modTrimA\":-1,\"modGrille\":-1,\"modTrunk\":-1,\"neonColor\":[255,0,255],\"modSteeringWheel\":-1,\"windowTint\":-1,\"color1\":63,\"modHood\":-1,\"modFender\":-1,\"modDashboard\":-1,\"modShifterLeavers\":-1,\"modFrontBumper\":-1,\"modVanityPlate\":-1,\"color2\":63,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modHorns\":-1,\"modArmor\":-1,\"modStruts\":-1,\"modBrakes\":-1}', 'car', NULL, 0),
('steam:11000010a16ed9a', 1, 'LFP 297', '{\"health\":1000,\"modSuspension\":-1,\"modLivery\":-1,\"modArchCover\":-1,\"pearlescentColor\":0,\"modTrimA\":-1,\"modSmokeEnabled\":1,\"modTrimB\":-1,\"modHorns\":-1,\"tyreSmokeColor\":[255,255,255],\"wheelColor\":96,\"modExhaust\":-1,\"modSpoilers\":-1,\"modDial\":-1,\"modShifterLeavers\":-1,\"modBrakes\":-1,\"color2\":80,\"wheels\":0,\"modGrille\":-1,\"modHood\":-1,\"modOrnaments\":-1,\"modFrontWheels\":-1,\"modSideSkirt\":-1,\"modFrontBumper\":-1,\"plate\":\"LFP 297\",\"modWindows\":-1,\"modEngine\":-1,\"modSpeakers\":-1,\"modAirFilter\":-1,\"modFrame\":-1,\"color1\":224,\"plateIndex\":4,\"extras\":[],\"modPlateHolder\":-1,\"modHydrolic\":-1,\"modRearBumper\":-1,\"neonColor\":[255,0,255],\"modSteeringWheel\":-1,\"neonEnabled\":[false,false,false,false],\"modTrunk\":-1,\"modAPlate\":-1,\"modXenon\":false,\"modDashboard\":-1,\"modDoorSpeaker\":-1,\"modEngineBlock\":-1,\"modAerials\":-1,\"modBackWheels\":-1,\"windowTint\":-1,\"model\":-1364710193,\"modTank\":-1,\"modArmor\":-1,\"modTurbo\":false,\"modSeats\":-1,\"modStruts\":-1,\"dirtLevel\":5.0219416618347,\"modTransmission\":-1,\"modVanityPlate\":-1,\"modRoof\":-1,\"modFender\":-1,\"modRightFender\":-1}', 'car', NULL, 0),
('steam:11000013c2ce0a6', 0, 'LZO 547', '{\"extras\":[],\"modAirFilter\":-1,\"wheelColor\":156,\"modAerials\":-1,\"modEngine\":-1,\"modDashboard\":-1,\"modRightFender\":-1,\"modBackWheels\":-1,\"modTransmission\":-1,\"modSmokeEnabled\":1,\"modShifterLeavers\":-1,\"modArmor\":-1,\"windowTint\":-1,\"modTank\":-1,\"modWindows\":-1,\"modTrimA\":-1,\"color1\":12,\"modAPlate\":-1,\"modExhaust\":-1,\"tyreSmokeColor\":[255,0,0],\"modEngineBlock\":-1,\"plate\":\"LZO 547\",\"modTurbo\":false,\"modTrimB\":-1,\"neonColor\":[255,0,255],\"modSuspension\":-1,\"plateIndex\":3,\"modHorns\":-1,\"modFender\":-1,\"modSideSkirt\":-1,\"modOrnaments\":-1,\"modSpoilers\":-1,\"modStruts\":-1,\"dirtLevel\":10.046510696411,\"modRoof\":-1,\"modFrame\":-1,\"modXenon\":false,\"model\":-1978168465,\"modVanityPlate\":-1,\"pearlescentColor\":21,\"modHydrolic\":-1,\"modSteeringWheel\":-1,\"modBrakes\":-1,\"modLivery\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modHood\":-1,\"color2\":72,\"modGrille\":-1,\"neonEnabled\":[1,1,1,1],\"modPlateHolder\":-1,\"modDial\":-1,\"modTrunk\":-1,\"modSpeakers\":-1,\"modArchCover\":-1,\"health\":459,\"modFrontBumper\":-1,\"modRearBumper\":-1,\"modFrontWheels\":-1,\"modSeats\":-1}', 'car', NULL, 0);
INSERT INTO `owned_vehicles` (`owner`, `state`, `plate`, `vehicle`, `type`, `job`, `stored`) VALUES
('steam:110000135fc6b1e', 1, 'MLB 630', '{\"modTransmission\":-1,\"modEngine\":1,\"health\":999,\"modExhaust\":-1,\"modFrame\":-1,\"wheelColor\":156,\"modAPlate\":-1,\"modLivery\":3,\"modSideSkirt\":-1,\"neonEnabled\":[false,false,false,false],\"modSpoilers\":-1,\"modSmokeEnabled\":1,\"modOrnaments\":-1,\"modAerials\":-1,\"modArmor\":-1,\"modRearBumper\":-1,\"modTrimB\":-1,\"modArchCover\":-1,\"modRightFender\":-1,\"modSuspension\":-1,\"modEngineBlock\":-1,\"pearlescentColor\":1,\"plateIndex\":4,\"modXenon\":false,\"modRoof\":-1,\"color2\":0,\"modAirFilter\":-1,\"modSeats\":-1,\"modBrakes\":-1,\"modWindows\":-1,\"modPlateHolder\":-1,\"extras\":{\"1\":true,\"12\":false},\"modSpeakers\":-1,\"wheels\":0,\"modTank\":-1,\"modTrunk\":-1,\"modFrontBumper\":-1,\"color1\":111,\"modDoorSpeaker\":-1,\"modTurbo\":false,\"modTrimA\":-1,\"modGrille\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modSteeringWheel\":-1,\"windowTint\":-1,\"plate\":\"MLB 630\",\"modHood\":-1,\"modFender\":-1,\"modDashboard\":-1,\"dirtLevel\":1.9595071077347,\"modShifterLeavers\":-1,\"modVanityPlate\":-1,\"modDial\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modHorns\":-1,\"modBackWheels\":-1,\"modStruts\":-1,\"model\":1912215274}', 'car', 'police', 0),
('steam:11000011bb7624b', 0, 'NOW 866', '{\"extras\":{\"12\":true,\"10\":false},\"modAirFilter\":-1,\"wheelColor\":156,\"modAerials\":-1,\"modEngine\":1,\"modDashboard\":-1,\"modSideSkirt\":-1,\"modBackWheels\":-1,\"modTransmission\":-1,\"modXenon\":false,\"modShifterLeavers\":-1,\"windowTint\":-1,\"modAPlate\":-1,\"modTank\":-1,\"modWindows\":-1,\"modTrimA\":-1,\"color1\":0,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"tyreSmokeColor\":[255,255,255],\"modArmor\":-1,\"plate\":\"NOW 866\",\"modTurbo\":false,\"modTrimB\":-1,\"color2\":0,\"modSuspension\":-1,\"plateIndex\":4,\"modHorns\":-1,\"neonColor\":[255,0,255],\"modDial\":-1,\"modOrnaments\":-1,\"modSpoilers\":-1,\"dirtLevel\":13.897894859314,\"modStruts\":-1,\"modRoof\":-1,\"modFrame\":-1,\"modRightFender\":-1,\"model\":-1647941228,\"modVanityPlate\":-1,\"pearlescentColor\":3,\"modHydrolic\":-1,\"modSteeringWheel\":-1,\"modBrakes\":-1,\"modEngineBlock\":-1,\"wheels\":3,\"modDoorSpeaker\":-1,\"modHood\":-1,\"modLivery\":-1,\"modGrille\":-1,\"modFender\":-1,\"modPlateHolder\":-1,\"modFrontWheels\":-1,\"modTrunk\":-1,\"modSpeakers\":-1,\"modArchCover\":-1,\"health\":982,\"modFrontBumper\":-1,\"modRearBumper\":-1,\"modSeats\":-1,\"modSmokeEnabled\":1}', 'car', 'police', 1),
('steam:110000135fc6b1e', 1, 'NVU 594', '{\"modTransmission\":-1,\"modEngine\":-1,\"health\":1000,\"modExhaust\":-1,\"modFrame\":-1,\"wheelColor\":156,\"modAPlate\":-1,\"modLivery\":-1,\"modSideSkirt\":-1,\"neonEnabled\":[false,false,false,false],\"modSpoilers\":-1,\"modSmokeEnabled\":1,\"modOrnaments\":-1,\"modAerials\":-1,\"modArmor\":-1,\"modRearBumper\":-1,\"modTrimB\":-1,\"modArchCover\":-1,\"modRightFender\":-1,\"modSuspension\":-1,\"modEngineBlock\":-1,\"pearlescentColor\":0,\"plateIndex\":4,\"modXenon\":false,\"modRoof\":-1,\"color2\":0,\"modAirFilter\":-1,\"modSeats\":-1,\"modBrakes\":-1,\"modWindows\":-1,\"modPlateHolder\":-1,\"extras\":{\"1\":true},\"modSpeakers\":-1,\"wheels\":0,\"modTank\":-1,\"modTrunk\":-1,\"modFrontBumper\":-1,\"color1\":132,\"modDoorSpeaker\":-1,\"modTurbo\":false,\"modTrimA\":-1,\"modGrille\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modSteeringWheel\":-1,\"windowTint\":-1,\"plate\":\"NVU 594\",\"modHood\":-1,\"modFender\":-1,\"modDashboard\":-1,\"dirtLevel\":0.069375939667225,\"modShifterLeavers\":-1,\"modVanityPlate\":-1,\"modDial\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modHorns\":-1,\"modBackWheels\":-1,\"modStruts\":-1,\"model\":-1205689942}', 'car', 'police', 1),
('steam:11000011a1c13e8', 1, 'OAH 941', '{\"modRearBumper\":-1,\"modTransmission\":-1,\"modDashboard\":-1,\"modAerials\":-1,\"color2\":28,\"modDial\":-1,\"modSpeakers\":-1,\"modSmokeEnabled\":1,\"modGrille\":-1,\"modHood\":-1,\"modPlateHolder\":-1,\"modRoof\":-1,\"wheels\":0,\"modLivery\":1,\"dirtLevel\":2.1464993953705,\"plate\":\"OAH 941\",\"modSpoilers\":-1,\"modAPlate\":-1,\"modFender\":-1,\"modEngine\":-1,\"model\":1171614426,\"modTurbo\":false,\"modFrontBumper\":-1,\"wheelColor\":156,\"modSideSkirt\":-1,\"plateIndex\":4,\"pearlescentColor\":112,\"modFrontWheels\":-1,\"modSeats\":-1,\"modOrnaments\":-1,\"modStruts\":-1,\"modEngineBlock\":-1,\"modDoorSpeaker\":-1,\"neonEnabled\":[false,false,false,false],\"neonColor\":[255,0,255],\"tyreSmokeColor\":[255,255,255],\"modTrimB\":-1,\"extras\":{\"1\":false},\"modTank\":-1,\"modShifterLeavers\":-1,\"color1\":112,\"modBackWheels\":-1,\"modFrame\":-1,\"modVanityPlate\":-1,\"modAirFilter\":-1,\"modArchCover\":-1,\"modRightFender\":-1,\"windowTint\":-1,\"health\":994,\"modSteeringWheel\":-1,\"modExhaust\":-1,\"modHorns\":-1,\"modTrunk\":-1,\"modSuspension\":-1,\"modXenon\":false,\"modArmor\":-1,\"modTrimA\":-1,\"modHydrolic\":-1,\"modWindows\":-1,\"modBrakes\":-1}', 'car', 'ambulance', 0),
('steam:110000107d06976', 1, 'OGV 766', '{\"modTransmission\":-1,\"modEngine\":-1,\"health\":996,\"modExhaust\":-1,\"modFrame\":-1,\"wheelColor\":0,\"modAPlate\":-1,\"modLivery\":-1,\"modBackWheels\":-1,\"neonEnabled\":[false,false,false,false],\"modFender\":-1,\"modTank\":-1,\"modDoorSpeaker\":-1,\"modAerials\":-1,\"color2\":112,\"modRearBumper\":-1,\"modTrimB\":-1,\"modArchCover\":-1,\"model\":403267253,\"dirtLevel\":7.1359119415283,\"modEngineBlock\":-1,\"pearlescentColor\":134,\"plateIndex\":3,\"modXenon\":false,\"modRoof\":-1,\"tyreSmokeColor\":[255,255,255],\"modAirFilter\":-1,\"modSeats\":-1,\"modBrakes\":-1,\"modTrunk\":-1,\"modPlateHolder\":-1,\"extras\":[],\"modSpeakers\":-1,\"wheels\":6,\"modSuspension\":-1,\"plate\":\"OGV 766\",\"modSpoilers\":-1,\"color1\":112,\"modTurbo\":false,\"modTrimA\":-1,\"modSideSkirt\":-1,\"modGrille\":-1,\"modSmokeEnabled\":false,\"neonColor\":[255,0,255],\"modSteeringWheel\":-1,\"windowTint\":-1,\"modShifterLeavers\":-1,\"modHood\":-1,\"modFrontBumper\":-1,\"modDashboard\":-1,\"modDial\":-1,\"modWindows\":-1,\"modVanityPlate\":-1,\"modRightFender\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modHorns\":-1,\"modArmor\":-1,\"modStruts\":-1,\"modOrnaments\":-1}', 'car', NULL, 0),
('steam:11000011a1c13e8', 1, 'OJF 273', '{\"health\":966,\"modSuspension\":-1,\"modLivery\":0,\"modArchCover\":-1,\"pearlescentColor\":112,\"modTrimA\":-1,\"modSmokeEnabled\":1,\"modTrimB\":-1,\"modHorns\":-1,\"tyreSmokeColor\":[255,255,255],\"wheelColor\":156,\"modExhaust\":-1,\"modSpoilers\":-1,\"modDial\":-1,\"modShifterLeavers\":-1,\"modBrakes\":-1,\"modTrunk\":-1,\"wheels\":0,\"modGrille\":-1,\"modRoof\":-1,\"modOrnaments\":-1,\"modFrontWheels\":-1,\"modSideSkirt\":-1,\"plate\":\"OJF 273\",\"modHood\":-1,\"modRightFender\":-1,\"modEngine\":1,\"modSteeringWheel\":-1,\"modAirFilter\":-1,\"modFrame\":-1,\"color1\":112,\"plateIndex\":4,\"extras\":{\"1\":false},\"modRearBumper\":-1,\"modHydrolic\":-1,\"modPlateHolder\":-1,\"neonColor\":[255,0,255],\"modSeats\":-1,\"neonEnabled\":[false,false,false,false],\"modAerials\":-1,\"modAPlate\":-1,\"modXenon\":false,\"modDashboard\":-1,\"modDoorSpeaker\":-1,\"modEngineBlock\":-1,\"modSpeakers\":-1,\"modBackWheels\":-1,\"windowTint\":-1,\"modFrontBumper\":-1,\"modTank\":-1,\"modArmor\":-1,\"modTurbo\":false,\"color2\":28,\"modStruts\":-1,\"dirtLevel\":0.89316338300705,\"modTransmission\":-1,\"modVanityPlate\":-1,\"model\":1171614426,\"modFender\":-1,\"modWindows\":-1}', 'car', 'ambulance', 0),
('steam:11000010a16ed9a', 1, 'OQE 770', '{\"modDashboard\":-1,\"modTransmission\":-1,\"color2\":2,\"modFender\":-1,\"modPlateHolder\":-1,\"extras\":{\"11\":true},\"modSteeringWheel\":-1,\"windowTint\":-1,\"modArmor\":-1,\"modHorns\":-1,\"modTrunk\":-1,\"modEngine\":-1,\"modStruts\":-1,\"pearlescentColor\":7,\"modShifterLeavers\":-1,\"modOrnaments\":-1,\"modRoof\":-1,\"tyreSmokeColor\":[255,255,255],\"modSmokeEnabled\":false,\"modHood\":-1,\"wheelColor\":156,\"modSpeakers\":-1,\"modRightFender\":-1,\"modGrille\":-1,\"modDoorSpeaker\":-1,\"modFrontWheels\":-1,\"modWindows\":-1,\"modSpoilers\":-1,\"modLivery\":-1,\"modHydrolic\":-1,\"plateIndex\":0,\"plate\":\"OQE 770\",\"modExhaust\":-1,\"wheels\":3,\"modAPlate\":-1,\"modVanityPlate\":-1,\"modSuspension\":-1,\"modEngineBlock\":-1,\"neonColor\":[255,0,255],\"modFrontBumper\":-1,\"health\":1000,\"modFrame\":-1,\"neonEnabled\":[false,false,false,false],\"modTurbo\":false,\"modTank\":-1,\"modAerials\":-1,\"modSeats\":-1,\"modTrimA\":-1,\"modArchCover\":-1,\"modBackWheels\":-1,\"modXenon\":false,\"modDial\":-1,\"modTrimB\":-1,\"modSideSkirt\":-1,\"modRearBumper\":-1,\"dirtLevel\":3.0000097751617,\"color1\":2,\"model\":-1193237073,\"modAirFilter\":-1,\"modBrakes\":-1}', 'car', NULL, 0),
('steam:11000013c2ce0a6', 1, 'PPQ 331', '{\"health\":999,\"modSuspension\":-1,\"modLivery\":0,\"modArchCover\":-1,\"pearlescentColor\":0,\"modTrimA\":-1,\"modSmokeEnabled\":1,\"modRearBumper\":-1,\"modHorns\":-1,\"tyreSmokeColor\":[255,255,255],\"wheelColor\":156,\"modPlateHolder\":-1,\"modSpoilers\":-1,\"modDial\":-1,\"modShifterLeavers\":-1,\"modAerials\":-1,\"plate\":\"PPQ 331\",\"wheels\":1,\"modGrille\":-1,\"modRoof\":-1,\"modOrnaments\":-1,\"modFrontWheels\":-1,\"modSideSkirt\":-1,\"color2\":134,\"modHood\":-1,\"modWindows\":-1,\"modEngine\":-1,\"modFrontBumper\":-1,\"modAirFilter\":-1,\"modTrimB\":-1,\"color1\":134,\"plateIndex\":4,\"extras\":{\"2\":false,\"3\":true,\"4\":false,\"5\":false,\"6\":false,\"7\":false,\"9\":false,\"1\":false},\"modBrakes\":-1,\"modHydrolic\":-1,\"modFrame\":-1,\"neonColor\":[255,0,255],\"modTrunk\":-1,\"neonEnabled\":[false,false,false,false],\"modSpeakers\":-1,\"modAPlate\":-1,\"modXenon\":false,\"modDashboard\":-1,\"modDoorSpeaker\":-1,\"modEngineBlock\":-1,\"modFender\":-1,\"modBackWheels\":-1,\"windowTint\":-1,\"modStruts\":-1,\"modTank\":-1,\"modArmor\":-1,\"modTurbo\":false,\"modSteeringWheel\":-1,\"model\":2046537925,\"dirtLevel\":2.3069121837616,\"modTransmission\":-1,\"modVanityPlate\":-1,\"modSeats\":-1,\"modExhaust\":-1,\"modRightFender\":-1}', 'car', 'police', 0),
('steam:1100001384ce0d6', 1, 'PWQ 557', '{\"modDial\":-1,\"modEngine\":-1,\"health\":1000,\"modExhaust\":-1,\"modFrame\":-1,\"wheelColor\":156,\"dirtLevel\":0.21447487175465,\"modLivery\":1,\"modSideSkirt\":-1,\"neonEnabled\":[false,false,false,false],\"wheels\":0,\"modSmokeEnabled\":1,\"modDoorSpeaker\":-1,\"modAerials\":-1,\"modFender\":-1,\"modRearBumper\":-1,\"modTrimB\":-1,\"modArchCover\":-1,\"model\":1171614426,\"modSuspension\":-1,\"modEngineBlock\":-1,\"pearlescentColor\":112,\"plateIndex\":4,\"modXenon\":false,\"modRoof\":-1,\"extras\":{\"1\":true},\"modAirFilter\":-1,\"modSeats\":-1,\"modBrakes\":-1,\"modWindows\":-1,\"modPlateHolder\":-1,\"modBackWheels\":-1,\"modSpeakers\":-1,\"color2\":28,\"modTrunk\":-1,\"modRightFender\":-1,\"modTank\":-1,\"color1\":112,\"modTurbo\":false,\"modTrimA\":-1,\"tyreSmokeColor\":[255,255,255],\"modGrille\":-1,\"plate\":\"PWQ 557\",\"modSpoilers\":-1,\"modSteeringWheel\":-1,\"windowTint\":-1,\"modShifterLeavers\":-1,\"modHood\":-1,\"modFrontBumper\":-1,\"modDashboard\":-1,\"modAPlate\":-1,\"neonColor\":[255,0,255],\"modVanityPlate\":-1,\"modArmor\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modHorns\":-1,\"modOrnaments\":-1,\"modStruts\":-1,\"modTransmission\":-1}', 'car', 'ambulance', 0),
('steam:11000011a1c13e8', 0, 'PYT 665', '{\"modStruts\":-1,\"modHorns\":-1,\"modPlateHolder\":-1,\"modEngineBlock\":-1,\"color1\":112,\"modSeats\":-1,\"model\":1171614426,\"dirtLevel\":6.0,\"modTank\":-1,\"color2\":28,\"modBrakes\":-1,\"modDial\":-1,\"modRearBumper\":-1,\"modHydrolic\":-1,\"neonEnabled\":[false,false,false,false],\"modArmor\":-1,\"modOrnaments\":-1,\"modVanityPlate\":-1,\"modRoof\":-1,\"modSuspension\":-1,\"modTrunk\":-1,\"windowTint\":-1,\"modTrimA\":-1,\"modAPlate\":-1,\"modFender\":-1,\"modExhaust\":-1,\"modAerials\":-1,\"modXenon\":false,\"modEngine\":-1,\"extras\":{\"11\":false,\"12\":true,\"10\":false},\"modBackWheels\":-1,\"modSpeakers\":-1,\"modSteeringWheel\":-1,\"pearlescentColor\":112,\"modSmokeEnabled\":false,\"wheelColor\":156,\"modHood\":-1,\"modRightFender\":-1,\"neonColor\":[255,0,255],\"modTransmission\":-1,\"modShifterLeavers\":-1,\"modLivery\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrontBumper\":-1,\"modTrimB\":-1,\"wheels\":0,\"modArchCover\":-1,\"plate\":\"PYT 665\",\"modAirFilter\":-1,\"modDoorSpeaker\":-1,\"health\":1000,\"modDashboard\":-1,\"plateIndex\":4,\"modTurbo\":false,\"modWindows\":-1,\"modGrille\":-1,\"modFrame\":-1,\"modSideSkirt\":-1,\"modFrontWheels\":-1,\"modSpoilers\":-1}', 'car', 'ambulance', 0),
('steam:1100001348c4d8b', 1, 'QDK 661', '{\"extras\":[],\"modAirFilter\":-1,\"wheelColor\":156,\"modAerials\":-1,\"modEngine\":-1,\"modFender\":-1,\"modSideSkirt\":-1,\"modBackWheels\":-1,\"modTransmission\":-1,\"modSmokeEnabled\":false,\"modShifterLeavers\":-1,\"modFrontWheels\":-1,\"windowTint\":-1,\"modTank\":-1,\"modWindows\":-1,\"modTrimA\":-1,\"color1\":7,\"modAPlate\":-1,\"modExhaust\":-1,\"tyreSmokeColor\":[255,255,255],\"modArmor\":-1,\"plate\":\"QDK 661\",\"modTurbo\":false,\"modTrimB\":-1,\"modRightFender\":-1,\"modSuspension\":-1,\"plateIndex\":3,\"modHorns\":-1,\"neonColor\":[255,0,255],\"modStruts\":-1,\"modOrnaments\":-1,\"modSpoilers\":-1,\"modDashboard\":-1,\"color2\":0,\"modRoof\":-1,\"dirtLevel\":9.131495475769,\"modEngineBlock\":-1,\"model\":55628203,\"modVanityPlate\":-1,\"pearlescentColor\":5,\"modHydrolic\":-1,\"modSteeringWheel\":-1,\"modBrakes\":-1,\"modLivery\":-1,\"wheels\":6,\"modDoorSpeaker\":-1,\"modHood\":-1,\"neonEnabled\":[false,false,false,false],\"modGrille\":-1,\"modDial\":-1,\"modPlateHolder\":-1,\"modFrame\":-1,\"modTrunk\":-1,\"modSpeakers\":-1,\"modArchCover\":-1,\"health\":967,\"modFrontBumper\":-1,\"modRearBumper\":-1,\"modSeats\":-1,\"modXenon\":false}', 'car', NULL, 0),
('steam:11000010f2fc36c', 1, 'QEG 253', '{\"extras\":[],\"modAirFilter\":-1,\"wheelColor\":156,\"modAerials\":-1,\"modEngine\":3,\"modDashboard\":-1,\"modSideSkirt\":-1,\"modBackWheels\":-1,\"modTransmission\":2,\"modSmokeEnabled\":1,\"modStruts\":-1,\"modOrnaments\":-1,\"modArmor\":-1,\"modTank\":-1,\"modWindows\":-1,\"modTrimA\":-1,\"modFrontWheels\":-1,\"modAPlate\":-1,\"modExhaust\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"plate\":\"QEG 253\",\"modTurbo\":1,\"modTrimB\":-1,\"neonEnabled\":[false,false,false,false],\"modSuspension\":3,\"plateIndex\":0,\"modHorns\":-1,\"color2\":1,\"windowTint\":1,\"modLivery\":-1,\"modSpoilers\":-1,\"modXenon\":1,\"modRightFender\":-1,\"modRoof\":-1,\"modFrame\":-1,\"modShifterLeavers\":-1,\"model\":-1651067813,\"modVanityPlate\":-1,\"pearlescentColor\":5,\"modHydrolic\":-1,\"modSteeringWheel\":-1,\"modBrakes\":2,\"modDial\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modHood\":-1,\"dirtLevel\":7.0303230285645,\"modGrille\":-1,\"modFender\":-1,\"modPlateHolder\":-1,\"color1\":1,\"modTrunk\":-1,\"modSpeakers\":-1,\"modArchCover\":-1,\"health\":976,\"modFrontBumper\":-1,\"modRearBumper\":-1,\"modEngineBlock\":-1,\"modSeats\":-1}', 'car', NULL, 0),
('steam:11000010a16ed9a', 0, 'QKO 302', '{\"tyreSmokeColor\":[255,255,255],\"modExhaust\":-1,\"modSideSkirt\":-1,\"neonEnabled\":[false,false,false,false],\"modSpoilers\":-1,\"model\":-1302762077,\"modRightFender\":-1,\"modPlateHolder\":-1,\"modDoorSpeaker\":-1,\"plateIndex\":0,\"health\":1000,\"modLivery\":-1,\"dirtLevel\":8.0000057220459,\"modStruts\":-1,\"modSteeringWheel\":-1,\"modBrakes\":-1,\"neonColor\":[255,0,255],\"modArmor\":-1,\"modTransmission\":-1,\"modTrimA\":-1,\"wheels\":7,\"modTank\":-1,\"modFrontBumper\":-1,\"modAerials\":-1,\"modOrnaments\":-1,\"color1\":29,\"modTurbo\":false,\"modHorns\":-1,\"modDial\":-1,\"modRearBumper\":-1,\"modSeats\":-1,\"plate\":\"QKO 302\",\"modHydrolic\":-1,\"modAPlate\":-1,\"modTrimB\":-1,\"modSpeakers\":-1,\"modAirFilter\":-1,\"modEngine\":-1,\"modHood\":-1,\"windowTint\":-1,\"modRoof\":-1,\"modTrunk\":-1,\"modEngineBlock\":-1,\"modSmokeEnabled\":false,\"modSuspension\":-1,\"extras\":[],\"modFrontWheels\":-1,\"color2\":2,\"modWindows\":-1,\"modShifterLeavers\":-1,\"modVanityPlate\":-1,\"modXenon\":false,\"modFrame\":-1,\"modGrille\":-1,\"modBackWheels\":-1,\"pearlescentColor\":28,\"modFender\":-1,\"wheelColor\":156,\"modDashboard\":-1,\"modArchCover\":-1}', 'car', NULL, 0),
('steam:110000116d82e19', 0, 'QNS 637', '{\"modStruts\":-1,\"modHorns\":-1,\"modPlateHolder\":-1,\"modEngineBlock\":-1,\"color1\":112,\"modTurbo\":false,\"model\":1171614426,\"dirtLevel\":7.0,\"modRoof\":-1,\"color2\":28,\"modBrakes\":-1,\"modTank\":-1,\"wheelColor\":156,\"modHydrolic\":-1,\"modAPlate\":-1,\"modArmor\":-1,\"modOrnaments\":-1,\"modVanityPlate\":-1,\"extras\":{\"11\":false,\"12\":false,\"10\":false},\"modRightFender\":-1,\"modTrunk\":-1,\"windowTint\":-1,\"modTrimA\":-1,\"modSideSkirt\":-1,\"modFender\":-1,\"modExhaust\":-1,\"modSuspension\":-1,\"modXenon\":false,\"modEngine\":-1,\"modRearBumper\":-1,\"modBackWheels\":-1,\"modSpeakers\":-1,\"modSteeringWheel\":-1,\"modTrimB\":-1,\"modSmokeEnabled\":false,\"modDashboard\":-1,\"modHood\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modGrille\":-1,\"modShifterLeavers\":-1,\"modDial\":-1,\"modLivery\":-1,\"modFrontBumper\":-1,\"modAerials\":-1,\"wheels\":0,\"modArchCover\":-1,\"plate\":\"QNS 637\",\"modAirFilter\":-1,\"modDoorSpeaker\":-1,\"health\":1000,\"pearlescentColor\":112,\"plateIndex\":4,\"modSeats\":-1,\"modWindows\":-1,\"modTransmission\":-1,\"modSpoilers\":-1,\"neonEnabled\":[false,false,false,false],\"modFrontWheels\":-1,\"modFrame\":-1}', 'car', 'ambulance', 0),
('steam:11000010a16ed9a', 0, 'QWF 386', '{\"tyreSmokeColor\":[255,255,255],\"modExhaust\":-1,\"modSideSkirt\":-1,\"neonEnabled\":[false,false,false,false],\"modSpoilers\":-1,\"model\":2117711508,\"modRightFender\":-1,\"modPlateHolder\":-1,\"modDoorSpeaker\":-1,\"plateIndex\":3,\"health\":1000,\"modLivery\":-1,\"dirtLevel\":8.0000028610229,\"modStruts\":-1,\"modSteeringWheel\":-1,\"modBrakes\":-1,\"neonColor\":[255,0,255],\"modArmor\":-1,\"modTransmission\":-1,\"modTrimA\":-1,\"wheels\":7,\"modTank\":-1,\"modFrontBumper\":-1,\"modAerials\":-1,\"modOrnaments\":-1,\"color1\":8,\"modTurbo\":false,\"modHorns\":-1,\"modDial\":-1,\"modRearBumper\":-1,\"modSeats\":-1,\"plate\":\"QWF 386\",\"modHydrolic\":-1,\"modAPlate\":-1,\"modTrimB\":-1,\"modSpeakers\":-1,\"modAirFilter\":-1,\"modEngine\":-1,\"modHood\":-1,\"windowTint\":-1,\"modRoof\":-1,\"modTrunk\":-1,\"modEngineBlock\":-1,\"modSmokeEnabled\":false,\"modSuspension\":-1,\"extras\":[],\"modFrontWheels\":-1,\"color2\":8,\"modWindows\":-1,\"modShifterLeavers\":-1,\"modVanityPlate\":-1,\"modXenon\":false,\"modFrame\":-1,\"modGrille\":-1,\"modBackWheels\":-1,\"pearlescentColor\":134,\"modFender\":-1,\"wheelColor\":156,\"modDashboard\":-1,\"modArchCover\":-1}', 'car', NULL, 0),
('steam:11000013c2ce0a6', 1, 'QYH 678', '{\"pearlescentColor\":0,\"modWindows\":-1,\"modSpeakers\":-1,\"plateIndex\":4,\"modBrakes\":-1,\"modEngine\":-1,\"modExhaust\":-1,\"modTransmission\":-1,\"modRightFender\":-1,\"modHorns\":-1,\"modTrimB\":-1,\"model\":2046537925,\"modGrille\":-1,\"color1\":134,\"modFrontWheels\":-1,\"modSteeringWheel\":-1,\"modXenon\":false,\"modPlateHolder\":-1,\"modFender\":-1,\"modTurbo\":false,\"modEngineBlock\":-1,\"modHydrolic\":-1,\"modTrimA\":-1,\"wheels\":1,\"modSeats\":-1,\"modLivery\":0,\"modFrontBumper\":-1,\"modAPlate\":-1,\"modRearBumper\":-1,\"modHood\":-1,\"neonColor\":[255,0,255],\"modStruts\":-1,\"plate\":\"QYH 678\",\"tyreSmokeColor\":[255,255,255],\"health\":1000,\"dirtLevel\":2.0,\"modSuspension\":-1,\"modDashboard\":-1,\"modTrunk\":-1,\"modTank\":-1,\"modShifterLeavers\":-1,\"modDoorSpeaker\":-1,\"modBackWheels\":-1,\"modSpoilers\":-1,\"modOrnaments\":-1,\"modDial\":-1,\"modSmokeEnabled\":false,\"modArchCover\":-1,\"modFrame\":-1,\"modArmor\":-1,\"wheelColor\":156,\"color2\":134,\"windowTint\":-1,\"neonEnabled\":[false,false,false,false],\"modVanityPlate\":-1,\"extras\":{\"4\":false,\"5\":false,\"6\":false,\"7\":true,\"1\":false,\"9\":false,\"2\":false,\"3\":false},\"modRoof\":-1,\"modSideSkirt\":-1,\"modAerials\":-1,\"modAirFilter\":-1}', 'car', 'police', 0),
('steam:110000115821821', 1, 'RBG 755', '{\"modTank\":-1,\"color2\":8,\"modDoorSpeaker\":-1,\"modWindows\":-1,\"modVanityPlate\":-1,\"modHood\":-1,\"modSpeakers\":-1,\"modStruts\":-1,\"modBackWheels\":-1,\"modTrimB\":-1,\"wheels\":7,\"modFrame\":-1,\"modFender\":-1,\"wheelColor\":156,\"modTrimA\":-1,\"health\":1000,\"modEngine\":-1,\"modSmokeEnabled\":false,\"modXenon\":false,\"modRearBumper\":-1,\"extras\":[],\"modShifterLeavers\":-1,\"modAirFilter\":-1,\"modTurbo\":false,\"modArmor\":-1,\"modSpoilers\":-1,\"modTrunk\":-1,\"modDashboard\":-1,\"modLivery\":-1,\"modSeats\":-1,\"modRoof\":-1,\"dirtLevel\":7.1805539131165,\"plate\":\"RBG 755\",\"modSteeringWheel\":-1,\"color1\":8,\"tyreSmokeColor\":[255,255,255],\"modEngineBlock\":-1,\"plateIndex\":0,\"modGrille\":-1,\"pearlescentColor\":134,\"modFrontWheels\":-1,\"model\":-1385753106,\"modAPlate\":-1,\"modExhaust\":-1,\"modPlateHolder\":-1,\"neonColor\":[255,0,255],\"modSuspension\":-1,\"modHorns\":-1,\"modOrnaments\":-1,\"modRightFender\":-1,\"neonEnabled\":[false,false,false,false],\"windowTint\":-1,\"modDial\":-1,\"modTransmission\":-1,\"modAerials\":-1,\"modBrakes\":-1,\"modHydrolic\":-1,\"modArchCover\":-1,\"modFrontBumper\":-1,\"modSideSkirt\":-1}', 'car', NULL, 0),
('steam:11000010f3310ac', 0, 'RFB 077', '{\"modBackWheels\":-1,\"modSteeringWheel\":-1,\"modStruts\":-1,\"modFrontWheels\":18,\"modBrakes\":2,\"modLivery\":-1,\"modWindows\":-1,\"model\":1913688065,\"neonColor\":[255,0,255],\"modAirFilter\":-1,\"modDial\":-1,\"extras\":[],\"plateIndex\":0,\"modRearBumper\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modArchCover\":-1,\"windowTint\":1,\"neonEnabled\":[false,false,false,false],\"modGrille\":-1,\"modShifterLeavers\":-1,\"modSpeakers\":-1,\"modSpoilers\":-1,\"modTrimA\":-1,\"modDashboard\":-1,\"modSuspension\":3,\"health\":1000,\"modRoof\":-1,\"modTrunk\":-1,\"plate\":\"RFB 077\",\"modTrimB\":-1,\"modXenon\":1,\"modFrontBumper\":-1,\"modArmor\":4,\"modSmokeEnabled\":1,\"modDoorSpeaker\":-1,\"color2\":145,\"wheelColor\":145,\"pearlescentColor\":145,\"dirtLevel\":7.2936573028564,\"modEngine\":3,\"modSideSkirt\":-1,\"modTransmission\":2,\"modHood\":-1,\"modHydrolic\":-1,\"modTurbo\":1,\"modPlateHolder\":-1,\"modHorns\":-1,\"modFrame\":-1,\"wheels\":7,\"modTank\":-1,\"modRightFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modAerials\":-1,\"modExhaust\":-1,\"modVanityPlate\":-1,\"modEngineBlock\":-1,\"modOrnaments\":-1,\"modFender\":-1,\"color1\":107}', 'car', NULL, 0),
('steam:11000010a16ed9a', 1, 'RTC 211', '{\"modTrunk\":-1,\"modLivery\":-1,\"modGrille\":-1,\"modRightFender\":-1,\"color2\":8,\"modShifterLeavers\":-1,\"modAPlate\":-1,\"modDoorSpeaker\":-1,\"modHorns\":-1,\"modSmokeEnabled\":1,\"modEngineBlock\":-1,\"modTrimA\":-1,\"modSpoilers\":-1,\"wheelColor\":156,\"modDashboard\":-1,\"modTrimB\":-1,\"modTransmission\":-1,\"modXenon\":false,\"modPlateHolder\":-1,\"modTurbo\":false,\"modFrontWheels\":-1,\"model\":2117711508,\"windowTint\":-1,\"extras\":[],\"modOrnaments\":-1,\"modStruts\":-1,\"plate\":\"RTC 211\",\"modDial\":-1,\"modSteeringWheel\":-1,\"modWindows\":-1,\"plateIndex\":2,\"dirtLevel\":4.0060286521912,\"modAirFilter\":-1,\"neonEnabled\":[false,false,false,false],\"modTank\":-1,\"modSuspension\":-1,\"modFender\":-1,\"modSideSkirt\":-1,\"modFrontBumper\":-1,\"modRearBumper\":-1,\"modEngine\":-1,\"tyreSmokeColor\":[255,255,255],\"color1\":8,\"health\":1000,\"modExhaust\":-1,\"modSeats\":-1,\"modBackWheels\":-1,\"modSpeakers\":-1,\"modFrame\":-1,\"modArchCover\":-1,\"modVanityPlate\":-1,\"pearlescentColor\":134,\"modRoof\":-1,\"modBrakes\":-1,\"modHydrolic\":-1,\"neonColor\":[255,0,255],\"modArmor\":-1,\"modHood\":-1,\"modAerials\":-1,\"wheels\":7}', 'car', NULL, 0),
('steam:11000010f2fc36c', 1, 'STT 375', '{\"extras\":[],\"modAirFilter\":-1,\"wheelColor\":147,\"modAerials\":-1,\"modEngine\":-1,\"modDashboard\":-1,\"modSideSkirt\":-1,\"modBackWheels\":-1,\"modTransmission\":-1,\"modSmokeEnabled\":1,\"modStruts\":-1,\"modOrnaments\":-1,\"modArmor\":-1,\"modTank\":-1,\"modWindows\":-1,\"modTrimA\":-1,\"modFrontWheels\":-1,\"modAPlate\":-1,\"modExhaust\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"plate\":\"STT 375\",\"modTurbo\":false,\"modTrimB\":-1,\"neonEnabled\":[1,1,1,1],\"modSuspension\":-1,\"plateIndex\":3,\"modHorns\":-1,\"color2\":2,\"windowTint\":1,\"modLivery\":-1,\"modSpoilers\":-1,\"modXenon\":false,\"modRightFender\":-1,\"modRoof\":-1,\"modFrame\":-1,\"modShifterLeavers\":-1,\"model\":-1302762077,\"modVanityPlate\":-1,\"pearlescentColor\":28,\"modHydrolic\":-1,\"modSteeringWheel\":-1,\"modBrakes\":-1,\"modDial\":-1,\"wheels\":7,\"modDoorSpeaker\":-1,\"modHood\":-1,\"dirtLevel\":4.0589871406555,\"modGrille\":-1,\"modFender\":-1,\"modPlateHolder\":-1,\"color1\":12,\"modTrunk\":-1,\"modSpeakers\":-1,\"modArchCover\":-1,\"health\":986,\"modFrontBumper\":-1,\"modRearBumper\":-1,\"modEngineBlock\":-1,\"modSeats\":-1}', 'car', NULL, 0),
('steam:110000135fc6b1e', 1, 'TBJ 463', '{\"modTransmission\":-1,\"modEngine\":-1,\"health\":996,\"modExhaust\":-1,\"modFrame\":-1,\"wheelColor\":156,\"modAPlate\":-1,\"modLivery\":-1,\"modSideSkirt\":-1,\"neonEnabled\":[false,false,false,false],\"modSpoilers\":-1,\"modSmokeEnabled\":1,\"modOrnaments\":-1,\"modAerials\":-1,\"modArmor\":-1,\"modRearBumper\":-1,\"modTrimB\":-1,\"modArchCover\":-1,\"modRightFender\":-1,\"modSuspension\":-1,\"modEngineBlock\":-1,\"pearlescentColor\":98,\"plateIndex\":2,\"modXenon\":false,\"modRoof\":-1,\"color2\":95,\"modAirFilter\":-1,\"modSeats\":-1,\"modBrakes\":-1,\"modWindows\":-1,\"modPlateHolder\":-1,\"extras\":[],\"modSpeakers\":-1,\"wheels\":0,\"modTank\":-1,\"modTrunk\":-1,\"modFrontBumper\":-1,\"color1\":93,\"modDoorSpeaker\":-1,\"modTurbo\":false,\"modTrimA\":-1,\"modGrille\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modSteeringWheel\":-1,\"windowTint\":-1,\"plate\":\"TBJ 463\",\"modHood\":-1,\"modFender\":-1,\"modDashboard\":-1,\"dirtLevel\":4.6516032218933,\"modShifterLeavers\":-1,\"modVanityPlate\":-1,\"modDial\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modHorns\":-1,\"modBackWheels\":-1,\"modStruts\":-1,\"model\":-1978168465}', 'car', NULL, 0),
('steam:11000011a1c13e8', 1, 'TMK 829', '{\"neonColor\":[255,0,255],\"modOrnaments\":-1,\"modTurbo\":false,\"modFrontBumper\":-1,\"modRearBumper\":-1,\"tyreSmokeColor\":[255,255,255],\"health\":1000,\"modStruts\":-1,\"modArmor\":-1,\"modEngine\":-1,\"modTransmission\":-1,\"modExhaust\":-1,\"modTrimB\":-1,\"modHorns\":-1,\"modRightFender\":-1,\"modRoof\":-1,\"modSuspension\":-1,\"plate\":\"TMK 829\",\"modSeats\":-1,\"modWindows\":-1,\"modTrimA\":-1,\"modXenon\":false,\"modAPlate\":-1,\"model\":1171614426,\"modVanityPlate\":-1,\"modBrakes\":-1,\"modTrunk\":-1,\"modDoorSpeaker\":-1,\"modSmokeEnabled\":false,\"modShifterLeavers\":-1,\"dirtLevel\":4.0,\"modAerials\":-1,\"plateIndex\":4,\"modFrame\":-1,\"extras\":{\"1\":false},\"modGrille\":-1,\"modSpeakers\":-1,\"neonEnabled\":[false,false,false,false],\"modDial\":-1,\"modLivery\":0,\"color1\":112,\"modSpoilers\":-1,\"wheels\":0,\"modHood\":-1,\"pearlescentColor\":112,\"modEngineBlock\":-1,\"modDashboard\":-1,\"modFrontWheels\":-1,\"modSteeringWheel\":-1,\"modPlateHolder\":-1,\"modTank\":-1,\"modHydrolic\":-1,\"modAirFilter\":-1,\"color2\":28,\"modBackWheels\":-1,\"wheelColor\":156,\"windowTint\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modSideSkirt\":-1}', 'car', 'ambulance', 0),
('steam:110000107d06976', 1, 'TZP 592', '{\"modTransmission\":-1,\"modEngine\":1,\"health\":1000,\"modExhaust\":-1,\"modFrame\":-1,\"modTank\":-1,\"dirtLevel\":3.0061259269714,\"modLivery\":-1,\"modSideSkirt\":-1,\"neonEnabled\":[false,false,false,false],\"model\":-1842748181,\"modTrimA\":-1,\"modOrnaments\":-1,\"modAerials\":-1,\"modWindows\":-1,\"modRearBumper\":-1,\"modTrimB\":-1,\"modArchCover\":-1,\"modRightFender\":-1,\"modSuspension\":-1,\"modEngineBlock\":-1,\"pearlescentColor\":2,\"plateIndex\":0,\"modXenon\":false,\"modRoof\":-1,\"wheels\":6,\"modAirFilter\":-1,\"modSeats\":-1,\"modBrakes\":-1,\"modTrunk\":-1,\"modPlateHolder\":-1,\"extras\":[],\"modSpeakers\":-1,\"color2\":0,\"modFender\":-1,\"modSmokeEnabled\":1,\"wheelColor\":1,\"modArmor\":-1,\"plate\":\"TZP 592\",\"modBackWheels\":-1,\"modTurbo\":false,\"modGrille\":-1,\"color1\":42,\"modSpoilers\":-1,\"modSteeringWheel\":-1,\"windowTint\":-1,\"modDoorSpeaker\":-1,\"modHood\":-1,\"modAPlate\":-1,\"modDashboard\":-1,\"modShifterLeavers\":-1,\"modFrontBumper\":-1,\"modVanityPlate\":-1,\"modDial\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modHorns\":-1,\"tyreSmokeColor\":[255,255,255],\"modStruts\":-1,\"neonColor\":[255,0,255]}', 'car', NULL, 0),
('steam:11000011a1c13e8', 1, 'UAY 049', '{\"modFrame\":-1,\"modEngine\":-1,\"modTrimA\":-1,\"modBackWheels\":-1,\"modRearBumper\":-1,\"modRoof\":-1,\"modSpoilers\":-1,\"modDial\":-1,\"modFender\":-1,\"windowTint\":-1,\"modBrakes\":-1,\"color1\":112,\"color2\":28,\"modExhaust\":-1,\"neonEnabled\":[false,false,false,false],\"modEngineBlock\":-1,\"plate\":\"UAY 049\",\"modLivery\":1,\"modArchCover\":-1,\"modDoorSpeaker\":-1,\"modAirFilter\":-1,\"modHorns\":-1,\"modDashboard\":-1,\"modXenon\":false,\"modSeats\":-1,\"modHood\":-1,\"modSpeakers\":-1,\"modSteeringWheel\":-1,\"modGrille\":-1,\"dirtLevel\":4.0,\"modSmokeEnabled\":false,\"modWindows\":-1,\"modTrunk\":-1,\"health\":1000,\"modAerials\":-1,\"wheelColor\":156,\"modSideSkirt\":-1,\"plateIndex\":4,\"modTransmission\":-1,\"modFrontWheels\":-1,\"modFrontBumper\":-1,\"modHydrolic\":-1,\"pearlescentColor\":112,\"modTurbo\":false,\"model\":1171614426,\"modTrimB\":-1,\"modSuspension\":-1,\"wheels\":0,\"modTank\":-1,\"modPlateHolder\":-1,\"modVanityPlate\":-1,\"extras\":{\"1\":true},\"modOrnaments\":-1,\"modShifterLeavers\":-1,\"neonColor\":[255,0,255],\"modRightFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modAPlate\":-1,\"modStruts\":-1,\"modArmor\":-1}', 'car', 'ambulance', 0),
('steam:11000010a16ed9a', 1, 'UNJ 437', '{\"modTransmission\":-1,\"modEngine\":-1,\"modShifterLeavers\":-1,\"modExhaust\":-1,\"modFrame\":-1,\"wheelColor\":156,\"model\":-1193237073,\"modLivery\":-1,\"modSideSkirt\":-1,\"neonEnabled\":[false,false,false,false],\"modDoorSpeaker\":-1,\"color1\":2,\"modOrnaments\":-1,\"modAerials\":-1,\"modRightFender\":-1,\"modRearBumper\":-1,\"modTrimB\":-1,\"modArchCover\":-1,\"tyreSmokeColor\":[255,255,255],\"modSuspension\":-1,\"modBackWheels\":-1,\"pearlescentColor\":7,\"plateIndex\":0,\"modXenon\":false,\"modRoof\":-1,\"extras\":{\"11\":true},\"modAirFilter\":-1,\"modSeats\":-1,\"modBrakes\":-1,\"modWindows\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSpeakers\":-1,\"wheels\":3,\"plate\":\"UNJ 437\",\"modSpoilers\":-1,\"modTank\":-1,\"modEngineBlock\":-1,\"modTrunk\":-1,\"modTurbo\":false,\"modTrimA\":-1,\"modGrille\":-1,\"modSmokeEnabled\":1,\"neonColor\":[255,0,255],\"modSteeringWheel\":-1,\"windowTint\":-1,\"health\":1000,\"modHood\":-1,\"modFrontBumper\":-1,\"modDashboard\":-1,\"modDial\":-1,\"modArmor\":-1,\"modVanityPlate\":-1,\"color2\":2,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modHorns\":-1,\"modFender\":-1,\"modStruts\":-1,\"dirtLevel\":8.0223007202148}', 'car', NULL, 0),
('steam:11000010a16ed9a', 1, 'UPC 063', '{\"modTurbo\":false,\"modDial\":-1,\"modSmokeEnabled\":false,\"modTrimA\":-1,\"modTrunk\":-1,\"neonEnabled\":[false,false,false,false],\"color2\":0,\"modShifterLeavers\":-1,\"modVanityPlate\":-1,\"color1\":61,\"modHood\":-1,\"modFrame\":-1,\"plate\":\"UPC 063\",\"wheelColor\":156,\"modTrimB\":-1,\"modAirFilter\":-1,\"modEngine\":-1,\"modStruts\":-1,\"modEngineBlock\":-1,\"modDoorSpeaker\":-1,\"modExhaust\":-1,\"model\":-344943009,\"extras\":{\"2\":true,\"1\":false},\"modAerials\":-1,\"modTank\":-1,\"modSuspension\":-1,\"dirtLevel\":7.0000057220459,\"modAPlate\":-1,\"modGrille\":-1,\"modSpeakers\":-1,\"modDashboard\":-1,\"modRightFender\":-1,\"modHorns\":-1,\"modTransmission\":-1,\"wheels\":0,\"modSideSkirt\":-1,\"pearlescentColor\":65,\"plateIndex\":0,\"modXenon\":false,\"modFrontBumper\":-1,\"modSteeringWheel\":-1,\"tyreSmokeColor\":[255,255,255],\"modArchCover\":-1,\"modRearBumper\":-1,\"modPlateHolder\":-1,\"modBrakes\":-1,\"neonColor\":[255,0,255],\"modSeats\":-1,\"modArmor\":-1,\"health\":1000,\"modBackWheels\":-1,\"modFender\":-1,\"modWindows\":-1,\"modSpoilers\":-1,\"windowTint\":-1,\"modFrontWheels\":-1,\"modOrnaments\":-1,\"modLivery\":-1,\"modHydrolic\":-1,\"modRoof\":-1}', 'car', NULL, 0),
('steam:11000010a16ed9a', 1, 'VJR 958', '{\"modTransmission\":-1,\"modEngine\":-1,\"modShifterLeavers\":-1,\"modExhaust\":-1,\"modFrame\":-1,\"wheelColor\":156,\"model\":-213537235,\"modLivery\":0,\"modSideSkirt\":-1,\"neonEnabled\":[false,false,false,false],\"modDoorSpeaker\":-1,\"color1\":63,\"modOrnaments\":-1,\"modAerials\":-1,\"modRightFender\":-1,\"modRearBumper\":-1,\"modTrimB\":-1,\"modArchCover\":-1,\"tyreSmokeColor\":[255,255,255],\"modSuspension\":-1,\"modBackWheels\":-1,\"pearlescentColor\":5,\"plateIndex\":3,\"modXenon\":false,\"modRoof\":-1,\"extras\":[],\"modAirFilter\":-1,\"modSeats\":-1,\"modBrakes\":-1,\"modWindows\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSpeakers\":-1,\"wheels\":0,\"plate\":\"VJR 958\",\"modSpoilers\":-1,\"modTank\":-1,\"modEngineBlock\":-1,\"modTrunk\":-1,\"modTurbo\":false,\"modTrimA\":-1,\"modGrille\":-1,\"modSmokeEnabled\":1,\"neonColor\":[255,0,255],\"modSteeringWheel\":-1,\"windowTint\":-1,\"health\":1000,\"modHood\":-1,\"modFrontBumper\":-1,\"modDashboard\":-1,\"modDial\":-1,\"modArmor\":-1,\"modVanityPlate\":-1,\"color2\":63,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modHorns\":-1,\"modFender\":-1,\"modStruts\":-1,\"dirtLevel\":5.0050430297852}', 'car', NULL, 0),
('steam:11000011a1c13e8', 1, 'VVY 391', '{\"modXenon\":false,\"modTransmission\":-1,\"modTrimB\":-1,\"modRearBumper\":-1,\"modTrunk\":-1,\"neonEnabled\":[false,false,false,false],\"modEngineBlock\":-1,\"modSteeringWheel\":-1,\"modGrille\":-1,\"modSeats\":-1,\"modDashboard\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modArmor\":-1,\"modTrimA\":-1,\"pearlescentColor\":112,\"modFender\":-1,\"modSpeakers\":-1,\"modHydrolic\":-1,\"modStruts\":-1,\"modBackWheels\":-1,\"modOrnaments\":-1,\"modShifterLeavers\":-1,\"modSpoilers\":-1,\"modWindows\":-1,\"modPlateHolder\":-1,\"modExhaust\":-1,\"modEngine\":-1,\"modBrakes\":-1,\"modHorns\":-1,\"modDial\":-1,\"modSideSkirt\":-1,\"extras\":{\"1\":true},\"modFrame\":-1,\"neonColor\":[255,0,255],\"modLivery\":0,\"modRightFender\":-1,\"wheelColor\":156,\"plate\":\"VVY 391\",\"windowTint\":-1,\"modRoof\":-1,\"model\":1171614426,\"plateIndex\":4,\"modSmokeEnabled\":false,\"modFrontWheels\":-1,\"modAerials\":-1,\"modArchCover\":-1,\"modTurbo\":false,\"color1\":112,\"modVanityPlate\":-1,\"health\":1000,\"modHood\":-1,\"modTank\":-1,\"modSuspension\":-1,\"modFrontBumper\":-1,\"modAirFilter\":-1,\"tyreSmokeColor\":[255,255,255],\"color2\":28,\"dirtLevel\":3.0,\"modAPlate\":-1}', 'car', 'ambulance', 0),
('steam:11000010bc9777a', 1, 'VWZ 434', '{\"extras\":{\"2\":true,\"1\":true,\"4\":true,\"3\":true,\"6\":true,\"5\":true},\"modAirFilter\":-1,\"wheelColor\":59,\"modAerials\":-1,\"modEngine\":1,\"modFender\":-1,\"modSideSkirt\":-1,\"modBackWheels\":-1,\"modTransmission\":-1,\"modXenon\":false,\"modStruts\":-1,\"dirtLevel\":9.6664514541626,\"modSmokeEnabled\":1,\"modTank\":-1,\"modWindows\":-1,\"modTrimA\":-1,\"color1\":59,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"tyreSmokeColor\":[0,255,0],\"modArmor\":-1,\"plate\":\"VWZ 434\",\"modTurbo\":false,\"modTrimB\":-1,\"modDashboard\":-1,\"modSuspension\":-1,\"plateIndex\":4,\"modHorns\":-1,\"neonColor\":[255,0,255],\"modOrnaments\":-1,\"modAPlate\":-1,\"modSpoilers\":-1,\"modEngineBlock\":-1,\"modRightFender\":-1,\"modRoof\":-1,\"modFrame\":-1,\"modLivery\":-1,\"model\":-189485405,\"modVanityPlate\":-1,\"pearlescentColor\":0,\"modHydrolic\":-1,\"modSteeringWheel\":-1,\"modBrakes\":-1,\"modDial\":-1,\"wheels\":7,\"modDoorSpeaker\":-1,\"modHood\":-1,\"windowTint\":-1,\"modGrille\":-1,\"modShifterLeavers\":-1,\"modPlateHolder\":-1,\"modFrontWheels\":13,\"modTrunk\":-1,\"modSpeakers\":-1,\"modArchCover\":-1,\"health\":1000,\"modFrontBumper\":-1,\"modRearBumper\":-1,\"modSeats\":-1,\"color2\":134}', 'car', NULL, 0),
('steam:11000011bb7624b', 1, 'WOD 520', '{\"extras\":[],\"modAirFilter\":-1,\"wheelColor\":153,\"modAerials\":-1,\"modEngine\":1,\"modDashboard\":-1,\"modSideSkirt\":-1,\"modBackWheels\":-1,\"modTransmission\":-1,\"modXenon\":false,\"modShifterLeavers\":-1,\"windowTint\":-1,\"modAPlate\":-1,\"modTank\":-1,\"modWindows\":-1,\"modTrimA\":-1,\"color1\":152,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"tyreSmokeColor\":[255,255,255],\"modArmor\":-1,\"plate\":\"WOD 520\",\"modTurbo\":false,\"modTrimB\":-1,\"color2\":153,\"modSuspension\":-1,\"plateIndex\":0,\"modHorns\":-1,\"neonColor\":[255,0,255],\"modDial\":-1,\"modOrnaments\":-1,\"modSpoilers\":-1,\"dirtLevel\":11.408060073853,\"modStruts\":-1,\"modRoof\":-1,\"modFrame\":-1,\"modRightFender\":-1,\"model\":-2064372143,\"modVanityPlate\":-1,\"pearlescentColor\":0,\"modHydrolic\":-1,\"modSteeringWheel\":-1,\"modBrakes\":-1,\"modEngineBlock\":-1,\"wheels\":4,\"modDoorSpeaker\":-1,\"modHood\":-1,\"modLivery\":-1,\"modGrille\":-1,\"modFender\":-1,\"modPlateHolder\":-1,\"modFrontWheels\":-1,\"modTrunk\":-1,\"modSpeakers\":-1,\"modArchCover\":-1,\"health\":538,\"modFrontBumper\":-1,\"modRearBumper\":-1,\"modSeats\":-1,\"modSmokeEnabled\":1}', 'car', NULL, 0),
('steam:1100001384ce0d6', 0, 'WOZ 079', '{\"modStruts\":-1,\"modHorns\":-1,\"modPlateHolder\":-1,\"modEngineBlock\":-1,\"color1\":112,\"modTurbo\":false,\"model\":1171614426,\"dirtLevel\":3.0,\"modLivery\":-1,\"color2\":28,\"modDial\":-1,\"modRearBumper\":-1,\"wheelColor\":156,\"modHydrolic\":-1,\"modAPlate\":-1,\"modArmor\":-1,\"modOrnaments\":-1,\"modVanityPlate\":-1,\"modSpoilers\":-1,\"modAerials\":-1,\"modTrunk\":-1,\"windowTint\":-1,\"modTrimA\":-1,\"modRoof\":-1,\"modFender\":-1,\"modExhaust\":-1,\"modSuspension\":-1,\"modXenon\":false,\"modEngine\":-1,\"extras\":{\"11\":false,\"12\":true,\"10\":false},\"modBackWheels\":-1,\"modSpeakers\":-1,\"modSteeringWheel\":-1,\"pearlescentColor\":112,\"modSmokeEnabled\":false,\"modTank\":-1,\"modHood\":-1,\"modRightFender\":-1,\"neonColor\":[255,0,255],\"modTransmission\":-1,\"modShifterLeavers\":-1,\"modBrakes\":-1,\"modTrimB\":-1,\"modFrontBumper\":-1,\"modDashboard\":-1,\"wheels\":0,\"modArchCover\":-1,\"plate\":\"WOZ 079\",\"modAirFilter\":-1,\"modDoorSpeaker\":-1,\"health\":1000,\"modSeats\":-1,\"plateIndex\":4,\"modGrille\":-1,\"modWindows\":-1,\"tyreSmokeColor\":[255,255,255],\"neonEnabled\":[false,false,false,false],\"modFrame\":-1,\"modFrontWheels\":-1,\"modSideSkirt\":-1}', 'car', 'ambulance', 0),
('steam:1100001384ce0d6', 1, 'WRC 013', '{\"modDial\":-1,\"modEngine\":-1,\"health\":1000,\"modExhaust\":-1,\"modFrame\":-1,\"wheelColor\":156,\"dirtLevel\":0.0064455554820597,\"modLivery\":2,\"modSideSkirt\":-1,\"neonEnabled\":[false,false,false,false],\"wheels\":0,\"modSmokeEnabled\":1,\"modDoorSpeaker\":-1,\"modAerials\":-1,\"modFender\":-1,\"modRearBumper\":-1,\"modTrimB\":-1,\"modArchCover\":-1,\"model\":1171614426,\"modSuspension\":-1,\"modEngineBlock\":-1,\"pearlescentColor\":112,\"plateIndex\":4,\"modXenon\":false,\"modRoof\":-1,\"extras\":{\"1\":false},\"modAirFilter\":-1,\"modSeats\":-1,\"modBrakes\":-1,\"modWindows\":-1,\"modPlateHolder\":-1,\"modBackWheels\":-1,\"modSpeakers\":-1,\"color2\":28,\"modTrunk\":-1,\"modRightFender\":-1,\"modTank\":-1,\"color1\":112,\"modTurbo\":false,\"modTrimA\":-1,\"tyreSmokeColor\":[255,255,255],\"modGrille\":-1,\"plate\":\"WRC 013\",\"modSpoilers\":-1,\"modSteeringWheel\":-1,\"windowTint\":-1,\"modShifterLeavers\":-1,\"modHood\":-1,\"modFrontBumper\":-1,\"modDashboard\":-1,\"modAPlate\":-1,\"neonColor\":[255,0,255],\"modVanityPlate\":-1,\"modArmor\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modHorns\":-1,\"modOrnaments\":-1,\"modStruts\":-1,\"modTransmission\":-1}', 'car', 'ambulance', 0),
('steam:1100001384ce0d6', 0, 'XAS 098', '{\"modStruts\":-1,\"modHorns\":-1,\"modPlateHolder\":-1,\"modEngineBlock\":-1,\"color1\":112,\"modTurbo\":false,\"model\":1171614426,\"dirtLevel\":5.0,\"modLivery\":-1,\"color2\":28,\"modDial\":-1,\"modRearBumper\":-1,\"wheelColor\":156,\"modHydrolic\":-1,\"modAPlate\":-1,\"modArmor\":-1,\"modOrnaments\":-1,\"modVanityPlate\":-1,\"modSpoilers\":-1,\"modAerials\":-1,\"modTrunk\":-1,\"windowTint\":-1,\"modTrimA\":-1,\"modRoof\":-1,\"modFender\":-1,\"modExhaust\":-1,\"modSuspension\":-1,\"modXenon\":false,\"modEngine\":-1,\"extras\":{\"11\":false,\"12\":false,\"10\":true},\"modBackWheels\":-1,\"modSpeakers\":-1,\"modSteeringWheel\":-1,\"pearlescentColor\":112,\"modSmokeEnabled\":false,\"modTank\":-1,\"modHood\":-1,\"modRightFender\":-1,\"neonColor\":[255,0,255],\"modTransmission\":-1,\"modShifterLeavers\":-1,\"modBrakes\":-1,\"modTrimB\":-1,\"modFrontBumper\":-1,\"modDashboard\":-1,\"wheels\":0,\"modArchCover\":-1,\"plate\":\"XAS 098\",\"modAirFilter\":-1,\"modDoorSpeaker\":-1,\"health\":1000,\"modSeats\":-1,\"plateIndex\":4,\"modGrille\":-1,\"modWindows\":-1,\"tyreSmokeColor\":[255,255,255],\"neonEnabled\":[false,false,false,false],\"modFrame\":-1,\"modFrontWheels\":-1,\"modSideSkirt\":-1}', 'car', 'ambulance', 0),
('steam:1100001186b7a77', 1, 'XLA 979', '{\"extras\":[],\"modAirFilter\":-1,\"wheelColor\":156,\"modAerials\":-1,\"modEngine\":-1,\"modDashboard\":-1,\"modRightFender\":-1,\"modBackWheels\":-1,\"modTransmission\":-1,\"modSmokeEnabled\":false,\"modShifterLeavers\":-1,\"windowTint\":-1,\"modArmor\":-1,\"modTank\":-1,\"modWindows\":-1,\"modTrimA\":-1,\"color1\":31,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"tyreSmokeColor\":[255,255,255],\"modFrontWheels\":-1,\"plate\":\"XLA 979\",\"modTurbo\":false,\"modTrimB\":-1,\"modSideSkirt\":-1,\"modSuspension\":-1,\"plateIndex\":3,\"modHorns\":-1,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modOrnaments\":-1,\"modSpoilers\":-1,\"modStruts\":-1,\"dirtLevel\":8.1600160598755,\"modRoof\":-1,\"modFrame\":-1,\"modEngineBlock\":-1,\"model\":1348744438,\"modVanityPlate\":-1,\"pearlescentColor\":32,\"modHydrolic\":-1,\"modSteeringWheel\":-1,\"modBrakes\":-1,\"modLivery\":-1,\"wheels\":0,\"modDoorSpeaker\":-1,\"modHood\":-1,\"modXenon\":false,\"modGrille\":-1,\"modFender\":-1,\"modPlateHolder\":-1,\"modDial\":-1,\"modTrunk\":-1,\"modSpeakers\":-1,\"modArchCover\":-1,\"health\":1000,\"modFrontBumper\":-1,\"modRearBumper\":-1,\"modSeats\":-1,\"color2\":0}', 'car', NULL, 0),
('steam:11000011a1c13e8', 1, 'XMO 924', '{\"neonColor\":[255,0,255],\"modExhaust\":-1,\"modTurbo\":false,\"modRoof\":-1,\"modSeats\":-1,\"tyreSmokeColor\":[255,255,255],\"modSideSkirt\":-1,\"modStruts\":-1,\"modArmor\":-1,\"modEngine\":-1,\"modFrontBumper\":-1,\"modBrakes\":-1,\"modTrimB\":-1,\"modHorns\":-1,\"modRightFender\":-1,\"modTrimA\":-1,\"modSuspension\":-1,\"plate\":\"XMO 924\",\"modSpoilers\":-1,\"modTank\":-1,\"modTransmission\":-1,\"modXenon\":false,\"modAPlate\":-1,\"model\":1171614426,\"modAirFilter\":-1,\"modRearBumper\":-1,\"modTrunk\":-1,\"modDoorSpeaker\":-1,\"modSmokeEnabled\":false,\"modShifterLeavers\":-1,\"dirtLevel\":3.0,\"health\":1000,\"modDial\":-1,\"modFrame\":-1,\"extras\":{\"1\":false},\"modGrille\":-1,\"modAerials\":-1,\"modOrnaments\":-1,\"modSteeringWheel\":-1,\"modLivery\":0,\"color1\":112,\"modSpeakers\":-1,\"wheels\":0,\"modHood\":-1,\"pearlescentColor\":112,\"modEngineBlock\":-1,\"modDashboard\":-1,\"modFrontWheels\":-1,\"neonEnabled\":[false,false,false,false],\"modPlateHolder\":-1,\"modBackWheels\":-1,\"modHydrolic\":-1,\"plateIndex\":4,\"color2\":28,\"wheelColor\":156,\"windowTint\":-1,\"modVanityPlate\":-1,\"modFender\":-1,\"modArchCover\":-1,\"modWindows\":-1}', 'car', 'ambulance', 0),
('steam:110000116d82e19', 0, 'XOO 974', '{\"modTransmission\":-1,\"modEngine\":-1,\"health\":1000,\"modExhaust\":-1,\"modFrame\":-1,\"modTank\":-1,\"dirtLevel\":9.1637210845947,\"modLivery\":-1,\"modSideSkirt\":-1,\"neonEnabled\":[false,false,false,false],\"modFender\":-1,\"modSpoilers\":-1,\"modOrnaments\":-1,\"modAerials\":-1,\"color2\":0,\"modRearBumper\":-1,\"modTrimB\":-1,\"modArchCover\":-1,\"modRightFender\":-1,\"modSuspension\":-1,\"modBackWheels\":-1,\"pearlescentColor\":38,\"plateIndex\":0,\"modXenon\":false,\"modRoof\":-1,\"extras\":[],\"modAirFilter\":-1,\"modSeats\":-1,\"modBrakes\":-1,\"modTrunk\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modSpeakers\":-1,\"wheels\":0,\"plate\":\"XOO 974\",\"modDial\":-1,\"color1\":33,\"modEngineBlock\":-1,\"modTurbo\":false,\"modTrimA\":-1,\"tyreSmokeColor\":[255,255,255],\"modGrille\":-1,\"modSmokeEnabled\":false,\"neonColor\":[255,0,255],\"modSteeringWheel\":-1,\"windowTint\":-1,\"model\":736902334,\"modHood\":-1,\"modShifterLeavers\":-1,\"modDashboard\":-1,\"modFrontBumper\":-1,\"wheelColor\":156,\"modVanityPlate\":-1,\"modWindows\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modHorns\":-1,\"modArmor\":-1,\"modStruts\":-1,\"modDoorSpeaker\":-1}', 'car', NULL, 0),
('steam:11000011a1c13e8', 1, 'YPP 110', '{\"modDial\":-1,\"modSideSkirt\":-1,\"modTrimB\":-1,\"modSuspension\":-1,\"modTrunk\":-1,\"modRoof\":-1,\"color1\":112,\"modArmor\":-1,\"plateIndex\":4,\"modExhaust\":-1,\"modShifterLeavers\":-1,\"modBackWheels\":-1,\"modSteeringWheel\":-1,\"modEngineBlock\":-1,\"modFrame\":-1,\"wheelColor\":156,\"modDashboard\":-1,\"dirtLevel\":3.0,\"modVanityPlate\":-1,\"modDoorSpeaker\":-1,\"modXenon\":false,\"modHydrolic\":-1,\"modBrakes\":-1,\"modAPlate\":-1,\"modEngine\":-1,\"modAirFilter\":-1,\"modSeats\":-1,\"modGrille\":-1,\"modPlateHolder\":-1,\"neonColor\":[255,0,255],\"modTurbo\":false,\"modSmokeEnabled\":false,\"modLivery\":0,\"pearlescentColor\":112,\"modArchCover\":-1,\"modTank\":-1,\"extras\":{\"1\":false},\"windowTint\":-1,\"modHorns\":-1,\"modWindows\":-1,\"modAerials\":-1,\"modRightFender\":-1,\"color2\":28,\"neonEnabled\":[false,false,false,false],\"modSpeakers\":-1,\"modHood\":-1,\"modFrontBumper\":-1,\"model\":1171614426,\"modOrnaments\":-1,\"health\":1000,\"modRearBumper\":-1,\"modTransmission\":-1,\"modSpoilers\":-1,\"modStruts\":-1,\"modFender\":-1,\"modTrimA\":-1,\"plate\":\"YPP 110\",\"modFrontWheels\":-1,\"wheels\":0,\"tyreSmokeColor\":[255,255,255]}', 'car', 'ambulance', 0),
('steam:11000011a1c13e8', 1, 'ZGL 469', '{\"health\":490,\"modSuspension\":-1,\"modLivery\":0,\"modFrontBumper\":-1,\"pearlescentColor\":112,\"modTrimA\":-1,\"modSmokeEnabled\":1,\"modEngineBlock\":-1,\"modHorns\":-1,\"tyreSmokeColor\":[255,255,255],\"modBrakes\":-1,\"color2\":28,\"modSpoilers\":-1,\"modDial\":-1,\"modShifterLeavers\":-1,\"model\":1171614426,\"modTrimB\":-1,\"wheels\":0,\"modGrille\":-1,\"wheelColor\":156,\"modOrnaments\":-1,\"modFrontWheels\":-1,\"modSideSkirt\":-1,\"modRoof\":-1,\"modExhaust\":-1,\"modWindows\":-1,\"modEngine\":1,\"modSteeringWheel\":-1,\"modAirFilter\":-1,\"modFrame\":-1,\"color1\":112,\"plateIndex\":4,\"extras\":{\"1\":false},\"modHood\":-1,\"modHydrolic\":-1,\"modRearBumper\":-1,\"neonColor\":[255,0,255],\"modArchCover\":-1,\"neonEnabled\":[false,false,false,false],\"plate\":\"ZGL 469\",\"modAPlate\":-1,\"modXenon\":false,\"modDashboard\":-1,\"modDoorSpeaker\":-1,\"modTrunk\":-1,\"modSpeakers\":-1,\"modBackWheels\":-1,\"windowTint\":-1,\"modAerials\":-1,\"modTank\":-1,\"modArmor\":-1,\"modTurbo\":false,\"modStruts\":-1,\"modPlateHolder\":-1,\"dirtLevel\":0.66373473405838,\"modTransmission\":-1,\"modVanityPlate\":-1,\"modSeats\":-1,\"modFender\":-1,\"modRightFender\":-1}', 'car', 'ambulance', 0),
('steam:110000135fc6b1e', 1, 'ZJR 747', '{\"modTransmission\":-1,\"modEngine\":-1,\"health\":995,\"modExhaust\":-1,\"modFrame\":-1,\"wheelColor\":156,\"modAPlate\":-1,\"modLivery\":-1,\"modSideSkirt\":-1,\"neonEnabled\":[false,false,false,false],\"modSpoilers\":-1,\"modSmokeEnabled\":1,\"modOrnaments\":-1,\"modAerials\":-1,\"modArmor\":-1,\"modRearBumper\":-1,\"modTrimB\":-1,\"modArchCover\":-1,\"modRightFender\":-1,\"modSuspension\":-1,\"modEngineBlock\":-1,\"pearlescentColor\":3,\"plateIndex\":4,\"modXenon\":false,\"modRoof\":-1,\"color2\":0,\"modAirFilter\":-1,\"modSeats\":-1,\"modBrakes\":-1,\"modWindows\":-1,\"modPlateHolder\":-1,\"extras\":{\"10\":false,\"12\":false},\"modSpeakers\":-1,\"wheels\":3,\"modTank\":-1,\"modTrunk\":-1,\"modFrontBumper\":-1,\"color1\":0,\"modDoorSpeaker\":-1,\"modTurbo\":false,\"modTrimA\":-1,\"modGrille\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modSteeringWheel\":-1,\"windowTint\":-1,\"plate\":\"ZJR 747\",\"modHood\":-1,\"modFender\":-1,\"modDashboard\":-1,\"dirtLevel\":4.6566185951233,\"modShifterLeavers\":-1,\"modVanityPlate\":-1,\"modDial\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modHorns\":-1,\"modBackWheels\":-1,\"modStruts\":-1,\"model\":-1647941228}', 'car', 'police', 0);
INSERT INTO `owned_vehicles` (`owner`, `state`, `plate`, `vehicle`, `type`, `job`, `stored`) VALUES
('steam:11000013c2ce0a6', 1, 'ZPY 774', '{\"pearlescentColor\":0,\"modWindows\":-1,\"modSpeakers\":-1,\"plateIndex\":4,\"modBrakes\":-1,\"modEngine\":-1,\"modExhaust\":-1,\"modTransmission\":-1,\"modRightFender\":-1,\"modHorns\":-1,\"modTrimB\":-1,\"model\":2046537925,\"modGrille\":-1,\"color1\":134,\"modFrontWheels\":-1,\"modSteeringWheel\":-1,\"modXenon\":false,\"modPlateHolder\":-1,\"modFender\":-1,\"modTurbo\":false,\"modEngineBlock\":-1,\"modHydrolic\":-1,\"modTrimA\":-1,\"wheels\":1,\"modSeats\":-1,\"modLivery\":0,\"modFrontBumper\":-1,\"modAPlate\":-1,\"modRearBumper\":-1,\"modHood\":-1,\"neonColor\":[255,0,255],\"modStruts\":-1,\"plate\":\"ZPY 774\",\"tyreSmokeColor\":[255,255,255],\"health\":1000,\"dirtLevel\":2.0,\"modSuspension\":-1,\"modDashboard\":-1,\"modTrunk\":-1,\"modTank\":-1,\"modShifterLeavers\":-1,\"modDoorSpeaker\":-1,\"modBackWheels\":-1,\"modSpoilers\":-1,\"modOrnaments\":-1,\"modDial\":-1,\"modSmokeEnabled\":false,\"modArchCover\":-1,\"modFrame\":-1,\"modArmor\":-1,\"wheelColor\":156,\"color2\":134,\"windowTint\":-1,\"neonEnabled\":[false,false,false,false],\"modVanityPlate\":-1,\"extras\":{\"4\":false,\"5\":true,\"6\":false,\"7\":false,\"1\":false,\"9\":false,\"2\":false,\"3\":false},\"modRoof\":-1,\"modSideSkirt\":-1,\"modAerials\":-1,\"modAirFilter\":-1}', 'car', 'police', 0),
('steam:11000010bc9777a', 1, 'ZXA 980', '{\"extras\":[],\"modAirFilter\":-1,\"wheelColor\":0,\"modAerials\":-1,\"modEngine\":-1,\"modFender\":-1,\"modSideSkirt\":-1,\"modBackWheels\":-1,\"modTransmission\":-1,\"modXenon\":false,\"modStruts\":-1,\"dirtLevel\":15.0,\"modSmokeEnabled\":1,\"modTank\":-1,\"modWindows\":-1,\"modTrimA\":-1,\"color1\":112,\"neonEnabled\":[false,false,false,false],\"modExhaust\":-1,\"tyreSmokeColor\":[255,255,255],\"modArmor\":-1,\"plate\":\"ZXA 980\",\"modTurbo\":false,\"modTrimB\":-1,\"modDashboard\":-1,\"modSuspension\":-1,\"plateIndex\":2,\"modHorns\":-1,\"neonColor\":[255,0,255],\"modOrnaments\":-1,\"modAPlate\":-1,\"modSpoilers\":-1,\"modEngineBlock\":-1,\"modRightFender\":-1,\"modRoof\":-1,\"modFrame\":-1,\"modLivery\":-1,\"model\":403267253,\"modVanityPlate\":-1,\"pearlescentColor\":134,\"modHydrolic\":-1,\"modSteeringWheel\":-1,\"modBrakes\":-1,\"modDial\":-1,\"wheels\":6,\"modDoorSpeaker\":-1,\"modHood\":-1,\"windowTint\":-1,\"modGrille\":-1,\"modShifterLeavers\":-1,\"modPlateHolder\":-1,\"modFrontWheels\":-1,\"modTrunk\":-1,\"modSpeakers\":-1,\"modArchCover\":-1,\"health\":918,\"modFrontBumper\":-1,\"modRearBumper\":-1,\"modSeats\":-1,\"color2\":112}', 'car', NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phone_calls`
--

CREATE TABLE `phone_calls` (
  `id` int(11) NOT NULL,
  `owner` varchar(10) NOT NULL COMMENT 'Num tel proprio',
  `num` varchar(10) NOT NULL COMMENT 'Num reférence du contact',
  `incoming` int(11) NOT NULL COMMENT 'Défini si on est à l''origine de l''appels',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `accepts` int(11) NOT NULL COMMENT 'Appels accepter ou pas'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `phone_calls`
--

INSERT INTO `phone_calls` (`id`, `owner`, `num`, `incoming`, `time`, `accepts`) VALUES
(8, '531', 'ambulance', 1, '2019-06-21 19:22:18', 0),
(12, '906', '873', 0, '2019-06-21 19:39:26', 1),
(13, '531', '906', 1, '2019-06-21 19:40:37', 0),
(14, '906', '531', 0, '2019-06-21 19:40:37', 0),
(15, '531', '906', 1, '2019-06-21 19:41:04', 0),
(16, '906', '531', 0, '2019-06-21 19:41:04', 0),
(19, '531', 'soyleyenda', 1, '2019-06-21 20:33:12', 0),
(21, '906', '873', 0, '2019-06-21 21:44:51', 0),
(24, '906', '873', 0, '2019-06-21 21:50:12', 1),
(25, '906', 'ambulance', 1, '2019-06-21 23:05:54', 0),
(27, '906', '873', 0, '2019-06-21 23:06:31', 0),
(28, '427', '827', 1, '2019-06-21 23:42:35', 0),
(29, '827', '427', 0, '2019-06-21 23:42:35', 0),
(30, '427', '827', 1, '2019-06-21 23:42:45', 1),
(31, '827', '427', 0, '2019-06-21 23:42:45', 1),
(32, '906', 'ambulance', 1, '2019-06-22 08:55:40', 0),
(33, '906', 'police', 1, '2019-06-22 08:55:49', 0),
(35, '531', '873', 0, '2019-06-22 11:17:02', 1),
(36, '531', '873', 1, '2019-06-22 11:17:55', 1),
(39, '531', '873', 1, '2019-06-22 11:19:32', 0),
(41, '531', '911', 1, '2019-06-22 11:25:52', 0),
(42, '531', 'ambulance', 1, '2019-06-22 12:58:48', 0),
(43, '531', 'ambulance', 1, '2019-06-22 13:01:07', 0),
(44, '531', 'ambulance', 1, '2019-06-22 13:01:34', 0),
(46, '771', '873', 0, '2019-06-22 13:22:33', 1),
(48, '771', '873', 0, '2019-06-22 13:24:06', 1),
(50, '531', '873', 0, '2019-06-22 13:43:08', 1),
(51, '906', 'ambulance', 1, '2019-06-22 13:51:06', 0),
(53, '531', '873', 0, '2019-06-22 13:51:33', 1),
(54, '531', '873', 1, '2019-06-22 13:51:46', 1),
(56, '906', 'ambulance', 1, '2019-06-22 13:52:03', 0),
(63, '906', '873', 0, '2019-06-22 14:52:41', 0),
(66, '531', '873', 1, '2019-06-22 15:12:05', 0),
(68, '906', '531', 1, '2019-06-22 15:13:12', 1),
(69, '531', '906', 0, '2019-06-22 15:13:12', 1),
(70, '531', '906', 1, '2019-06-22 15:14:23', 1),
(71, '906', '531', 0, '2019-06-22 15:14:23', 1),
(75, '531', '880', 0, '2019-06-22 16:40:04', 1),
(77, '906', '873', 0, '2019-06-22 16:54:29', 0),
(78, '873', '873', 1, '2019-06-22 16:58:31', 0),
(79, '873', '873', 0, '2019-06-22 16:58:31', 0),
(80, '501', 'bruh', 1, '2019-06-22 17:01:09', 0),
(81, '501', 'staman', 1, '2019-06-22 17:01:30', 0),
(82, '501', 'bbytina', 1, '2019-06-22 17:01:52', 0),
(83, '873', '911', 1, '2019-06-22 18:31:07', 0),
(84, '873', '427', 1, '2019-06-22 18:51:07', 0),
(85, '427', '873', 0, '2019-06-22 18:51:07', 0),
(86, '873', '873', 1, '2019-06-22 18:52:35', 0),
(87, '873', '873', 0, '2019-06-22 18:52:35', 0),
(88, '873', '827', 1, '2019-06-22 19:07:11', 1),
(89, '827', '873', 0, '2019-06-22 19:07:11', 1),
(90, '873', '827', 1, '2019-06-22 19:18:49', 1),
(91, '827', '873', 0, '2019-06-22 19:18:49', 1),
(92, '531', 'police', 1, '2019-06-22 19:21:57', 0),
(93, '873', '911', 1, '2019-06-22 19:22:02', 1),
(94, '873', '427', 1, '2019-06-22 19:38:50', 0),
(95, '427', '873', 0, '2019-06-22 19:38:50', 0),
(96, '873', '827', 1, '2019-06-22 19:39:33', 0),
(97, '827', '873', 0, '2019-06-22 19:39:33', 0),
(98, '873', '906', 1, '2019-06-22 22:39:33', 0),
(99, '906', '873', 0, '2019-06-22 22:39:33', 0),
(100, '873', '906', 1, '2019-06-22 22:40:09', 0),
(101, '906', '873', 0, '2019-06-22 22:40:09', 0),
(102, '873', '880', 1, '2019-06-22 22:40:39', 1),
(104, '873', '696', 1, '2019-06-22 22:51:06', 0),
(105, '696', '873', 0, '2019-06-22 22:51:06', 0),
(106, '696', '873', 0, '2019-06-22 22:52:09', 0),
(107, '873', '696', 1, '2019-06-22 22:52:09', 0),
(108, '827', '873', 1, '2019-06-22 23:19:48', 1),
(109, '873', '827', 0, '2019-06-22 23:19:48', 1),
(110, '873', '827', 1, '2019-06-22 23:20:14', 1),
(111, '827', '873', 0, '2019-06-22 23:20:14', 1),
(112, '873', '827', 1, '2019-06-22 23:20:38', 1),
(113, '827', '873', 0, '2019-06-22 23:20:38', 1),
(114, '614', 'HOla', 1, '2019-06-22 23:44:37', 0),
(115, '531', '880', 1, '2019-06-23 10:22:04', 0),
(116, '880', '531', 0, '2019-06-23 10:22:04', 0),
(117, '531', '880', 1, '2019-06-23 10:23:05', 0),
(118, '880', '531', 0, '2019-06-23 10:23:05', 0),
(119, '531', '827', 1, '2019-06-23 10:26:01', 1),
(120, '827', '531', 0, '2019-06-23 10:26:01', 1),
(121, '827', 'mechanic', 1, '2019-06-23 11:25:37', 0),
(122, '827', 'taxi', 1, '2019-06-23 11:26:20', 0),
(123, '827', 'taxi', 1, '2019-06-23 11:26:32', 0),
(124, '933', 'Jose', 1, '2019-06-23 11:49:06', 0),
(125, '531', '880', 1, '2019-06-23 12:32:21', 1),
(126, '880', '531', 0, '2019-06-23 12:32:21', 1),
(127, '531', '873', 1, '2019-06-23 12:39:48', 1),
(128, '873', '531', 0, '2019-06-23 12:39:48', 1),
(129, '108', '827', 1, '2019-06-23 14:04:10', 1),
(130, '827', '108', 0, '2019-06-23 14:04:10', 1),
(131, '531', '873', 1, '2019-06-23 14:50:08', 1),
(132, '873', '531', 0, '2019-06-23 14:50:08', 1),
(133, '873', '531', 1, '2019-06-23 14:54:04', 0),
(134, '531', '873', 0, '2019-06-23 14:54:04', 0),
(135, '873', '531', 1, '2019-06-23 14:58:34', 1),
(136, '531', '873', 0, '2019-06-23 14:58:34', 1),
(137, '998', '995', 0, '2019-06-23 15:15:22', 0),
(138, '995', '998', 1, '2019-06-23 15:15:22', 0),
(139, '873', 'el neoo te', 1, '2019-06-23 15:25:40', 0),
(140, '873', 'xwxu ', 1, '2019-06-23 15:25:49', 0),
(141, '873', '911', 1, '2019-06-23 15:27:51', 0),
(142, '880', '911', 1, '2019-06-23 15:28:10', 1),
(143, '108', '998', 1, '2019-06-23 15:37:08', 0),
(144, '998', '108', 0, '2019-06-23 15:37:08', 0),
(145, '531', 'police', 1, '2019-06-23 16:43:07', 0),
(146, '771', 'police', 1, '2019-06-23 16:43:22', 0),
(147, '531', '911', 0, '2019-06-23 16:43:27', 0),
(148, '827', '911', 0, '2019-06-23 17:07:35', 1),
(149, '906', 'ambulance', 1, '2019-06-23 18:04:10', 0),
(150, '906', 'ambulance', 1, '2019-06-23 18:11:19', 0),
(151, '873', '880', 1, '2019-06-23 18:54:01', 0),
(152, '880', '873', 0, '2019-06-23 18:54:01', 0),
(153, '998', '995', 1, '2019-06-23 19:44:38', 0),
(154, '995', '998', 0, '2019-06-23 19:44:38', 0),
(155, '998', '995', 1, '2019-06-23 19:45:16', 0),
(156, '995', '998', 0, '2019-06-23 19:45:16', 0),
(157, '998', '995', 1, '2019-06-23 19:45:57', 1),
(158, '995', '998', 0, '2019-06-23 19:45:57', 1),
(159, '998', 'mechanic', 1, '2019-06-23 19:46:57', 0),
(160, '998', 'mechanic', 1, '2019-06-23 19:59:17', 0),
(161, '998', 'mechanic', 1, '2019-06-23 20:02:59', 0),
(162, '998', 'taxi', 1, '2019-06-23 20:07:32', 0),
(163, '995', 'taxi', 1, '2019-06-23 20:08:15', 0),
(164, '995', '998', 1, '2019-06-23 20:08:40', 1),
(165, '998', '995', 0, '2019-06-23 20:08:40', 1),
(166, '427', '531', 1, '2019-06-23 21:23:14', 0),
(167, '531', '427', 0, '2019-06-23 21:23:14', 0),
(168, '995', 'ambulance', 1, '2019-06-23 21:35:31', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phone_messages`
--

CREATE TABLE `phone_messages` (
  `id` int(11) NOT NULL,
  `transmitter` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isRead` int(11) NOT NULL DEFAULT '0',
  `owner` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `phone_messages`
--

INSERT INTO `phone_messages` (`id`, `transmitter`, `receiver`, `message`, `time`, `isRead`, `owner`) VALUES
(373, 'ambulance', '531', 'GPS: 1184.2016601563, -297.40780639648', '2019-06-22 15:12:18', 1, 1),
(371, 'ambulance', '531', 'rápido', '2019-06-22 15:12:15', 1, 1),
(372, 'ambulance', '531', 'GPS: 1184.2016601563, -297.40780639648', '2019-06-22 15:12:17', 1, 1),
(370, 'ambulance', '531', 'necesito ambulancia', '2019-06-22 15:12:12', 1, 1),
(369, 'ambulance', '873', 'De #873 : Se necesita atención médica: ciudadano inconsciente! 413.33645629883, -996.12872314453', '2019-06-22 14:44:54', 1, 0),
(368, 'ambulance', '873', 'hola', '2019-06-22 13:50:47', 1, 1),
(367, 'ambulance', '873', 'De #873 : hola', '2019-06-22 13:50:47', 1, 0),
(365, 'ambulance', '873', 'De #531 : Hola amigo', '2019-06-22 13:50:34', 1, 0),
(364, '531', '906', 'si', '2019-06-22 13:48:15', 1, 1),
(363, '906', '531', 'si', '2019-06-22 13:48:15', 1, 0),
(362, '531', '906', 'cuanto se gana', '2019-06-22 13:47:56', 1, 1),
(366, 'ambulance', '531', 'Hola amigo', '2019-06-22 13:50:34', 1, 1),
(361, '906', '531', 'cuanto se gana', '2019-06-22 13:47:56', 1, 0),
(360, '531', '906', 'vamos y atracamos la joyeria', '2019-06-22 13:47:49', 1, 1),
(359, '906', '531', 'vamos y atracamos la joyeria', '2019-06-22 13:47:49', 1, 0),
(358, 'ambulance', '873', 'De #531 : Se necesita atención médica: ciudadano inconsciente! 263.71908569336, 4474.0366210938', '2019-06-22 13:33:49', 1, 0),
(357, 'ambulance', '873', 'De #873 : Se necesita atención médica: ciudadano inconsciente! 317.84777832031, 4351.134765625', '2019-06-22 13:28:05', 1, 0),
(356, 'ambulance', '873', 'De #771 : Se necesita atención médica: ciudadano inconsciente! 1067.8049316406, -1179.4766845703', '2019-06-22 13:12:53', 1, 0),
(355, '906', '531', 'GPS: -328.32815551758, -302.09548950195', '2019-06-22 10:22:45', 1, 1),
(354, '531', '906', 'GPS: -328.32815551758, -302.09548950195', '2019-06-22 10:22:45', 1, 0),
(353, '427', '827', '827', '2019-06-22 00:36:07', 1, 1),
(352, '827', '427', '827', '2019-06-22 00:36:07', 1, 0),
(351, '827', '427', 'dimelo de nuevo', '2019-06-22 00:35:36', 1, 1),
(343, '427', '827', 'quedamos en el pui', '2019-06-22 00:13:10', 1, 1),
(348, '827', '427', 'pasales mi numero a tus amigos', '2019-06-22 00:33:56', 1, 0),
(349, '427', '827', 'pasales mi numero a tus amigos', '2019-06-22 00:33:56', 1, 1),
(350, '427', '827', 'dimelo de nuevo', '2019-06-22 00:35:36', 1, 0),
(347, '827', '427', 'ok', '2019-06-22 00:14:06', 1, 1),
(345, '427', '827', 'puti', '2019-06-22 00:13:14', 1, 1),
(346, '427', '827', 'ok', '2019-06-22 00:14:06', 1, 0),
(344, '827', '427', 'puti', '2019-06-22 00:13:14', 1, 0),
(342, '827', '427', 'quedamos en el pui', '2019-06-22 00:13:10', 1, 0),
(340, '427', '827', 'ok', '2019-06-22 00:12:55', 1, 0),
(341, '827', '427', 'ok', '2019-06-22 00:12:55', 1, 1),
(338, '827', '427', 'hablame por aqui', '2019-06-22 00:12:40', 1, 0),
(339, '427', '827', 'hablame por aqui', '2019-06-22 00:12:40', 1, 1),
(337, '827', '427', 'Ok el sabe más de esto', '2019-06-21 23:51:36', 1, 1),
(335, '427', '827', 'ok. avisame', '2019-06-21 23:50:04', 1, 1),
(336, '427', '827', 'Ok el sabe más de esto', '2019-06-21 23:51:36', 1, 0),
(334, '827', '427', 'ok. avisame', '2019-06-21 23:50:04', 1, 0),
(333, '827', '427', 'A1', '2019-06-21 23:50:00', 1, 1),
(332, '427', '827', 'A1', '2019-06-21 23:50:00', 1, 0),
(331, '827', '427', 'Vale, mi colega vendrá ahora en breve', '2019-06-21 23:49:51', 1, 1),
(330, '427', '827', 'Vale, mi colega vendrá ahora en breve', '2019-06-21 23:49:51', 1, 0),
(329, '427', '827', 'en el todoterrenp siempre cabe mas, porque tiene el maletero mas grande, perop para empezar cualquiera te vale', '2019-06-21 23:49:29', 1, 1),
(328, '827', '427', 'en el todoterrenp siempre cabe mas, porque tiene el maletero mas grande, perop para empezar cualquiera te vale', '2019-06-21 23:49:29', 1, 0),
(326, '427', '827', 'Ah vale es que me has dicho uno todo terreno', '2019-06-21 23:48:57', 1, 0),
(327, '827', '427', 'Ah vale es que me has dicho uno todo terreno', '2019-06-21 23:48:58', 1, 1),
(325, '427', '827', 'con un coche cualquiera te vale', '2019-06-21 23:48:20', 1, 1),
(323, '427', '827', 'XD', '2019-06-21 23:48:08', 1, 1),
(324, '827', '427', 'con un coche cualquiera te vale', '2019-06-21 23:48:20', 1, 0),
(321, '427', '827', 'pero que coche te quieres comprar?', '2019-06-21 23:48:06', 1, 1),
(320, '827', '427', 'pero que coche te quieres comprar?', '2019-06-21 23:48:06', 1, 0),
(319, '427', '827', 'no. tu solo puedes coger 50 de morfina encima. enhtonces lo que tienes que hacer es ir con el coche al circulo ese que te he llevado. aparacas ahi al lado el coche, y cuando tengas 50 de morfina, los metes en el coche y sigues cogiendo, sasi sucesivamentd', '2019-06-21 23:47:46', 1, 1),
(322, '827', '427', 'XD', '2019-06-21 23:48:08', 1, 0),
(318, '827', '427', 'no. tu solo puedes coger 50 de morfina encima. enhtonces lo que tienes que hacer es ir con el coche al circulo ese que te he llevado. aparacas ahi al lado el coche, y cuando tengas 50 de morfina, los metes en el coche y sigues cogiendo, sasi sucesivamentd', '2019-06-21 23:47:46', 1, 0),
(317, '827', '427', 'Yo creo jefe que no sirvo para esto no tengo dinero para el coche xddd', '2019-06-21 23:47:17', 1, 1),
(315, '827', '427', 'No, tengo 50 de morfina así que  eso no es', '2019-06-21 23:46:01', 1, 1),
(313, '427', '827', '50 kilos?', '2019-06-21 23:45:35', 1, 1),
(314, '427', '827', 'No, tengo 50 de morfina así que  eso no es', '2019-06-21 23:46:01', 1, 0),
(311, '827', '427', 'creo que es 50 la capacidad.', '2019-06-21 23:45:24', 1, 1),
(309, '427', '827', 'y no me cuelgues mas que soy tu jefe eeehhh!!! xD', '2019-06-21 23:44:49', 1, 1),
(310, '427', '827', 'creo que es 50 la capacidad.', '2019-06-21 23:45:24', 1, 0),
(308, '827', '427', 'y no me cuelgues mas que soy tu jefe eeehhh!!! xD', '2019-06-21 23:44:49', 1, 0),
(316, '427', '827', 'Yo creo jefe que no sirvo para esto no tengo dinero para el coche xddd', '2019-06-21 23:47:16', 1, 0),
(312, '827', '427', '50 kilos?', '2019-06-21 23:45:35', 1, 0),
(307, '427', '827', 'cada 10 kilos son 1000 de morfina que te caben', '2019-06-21 23:44:29', 1, 1),
(306, '827', '427', 'cada 10 kilos son 1000 de morfina que te caben', '2019-06-21 23:44:29', 1, 0),
(305, '427', '827', 'mira capacidad', '2019-06-21 23:44:12', 1, 1),
(304, '827', '427', 'mira capacidad', '2019-06-21 23:44:12', 1, 0),
(303, '427', '827', 'para abrir malatero pulsa    Y', '2019-06-21 23:44:01', 1, 1),
(301, '827', '427', 'Oye, que tengo q decirte algo', '2019-06-21 23:42:17', 1, 1),
(302, '827', '427', 'para abrir malatero pulsa    Y', '2019-06-21 23:44:01', 1, 0),
(300, '427', '827', 'Oye, que tengo q decirte algo', '2019-06-21 23:42:17', 1, 0),
(299, '906', '531', 'GPS: 922.67553710938, -1431.2095947266', '2019-06-21 23:18:31', 1, 1),
(298, '531', '906', 'GPS: 922.67553710938, -1431.2095947266', '2019-06-21 23:18:31', 1, 0),
(297, '531', '906', 'GPS: 1205.5745849609, -1274.6818847656', '2019-06-21 23:17:47', 1, 1),
(295, 'ambulance', '906', 'sfsdfddfsfd', '2019-06-21 23:06:05', 1, 1),
(296, '906', '531', 'GPS: 1205.5745849609, -1274.6818847656', '2019-06-21 23:17:47', 1, 0),
(294, 'ambulance', '873', 'De #906 : sfsdfddfsfd', '2019-06-21 23:06:05', 1, 0),
(293, 'police', '531', 'voy', '2019-06-21 23:01:59', 1, 1),
(292, 'police', '531', 'De #531 : voy', '2019-06-21 23:01:59', 1, 0),
(291, 'police', '427', 'Recogerme del aeropuerto xd', '2019-06-21 23:01:54', 1, 1),
(290, 'police', '531', 'De #427 : Recogerme del aeropuerto xd', '2019-06-21 23:01:54', 1, 0),
(289, 'police', '427', 'HOE', '2019-06-21 23:01:42', 1, 1),
(288, 'police', '531', 'De #427 : HOE', '2019-06-21 23:01:42', 1, 0),
(287, '827', '906', 'ya que vale lo mismo un coche de 20 tunearlo que el de 1 millon', '2019-06-21 22:12:55', 1, 1),
(285, '906', '827', 'ok.', '2019-06-21 22:12:53', 1, 1),
(286, '906', '827', 'ya que vale lo mismo un coche de 20 tunearlo que el de 1 millon', '2019-06-21 22:12:55', 1, 0),
(284, '827', '906', 'ok.', '2019-06-21 22:12:53', 1, 0),
(283, '827', '906', 'De momento si  , pero se esta testeando los precios', '2019-06-21 22:12:34', 1, 1),
(282, '906', '827', 'De momento si  , pero se esta testeando los precios', '2019-06-21 22:12:34', 1, 0),
(281, '906', '827', 'ok compadre, vas a ser mecanico mucho tiempo?', '2019-06-21 22:12:03', 1, 1),
(280, '827', '906', 'ok compadre, vas a ser mecanico mucho tiempo?', '2019-06-21 22:12:03', 1, 0),
(279, '827', '906', 'buenas soy el mecanico .', '2019-06-21 21:50:07', 1, 1),
(278, '906', '827', 'buenas soy el mecanico .', '2019-06-21 21:50:07', 1, 0),
(277, 'ambulance', '873', 'De #873 : Se necesita atención médica: ciudadano inconsciente! 302.52142333984, -1435.0433349609', '2019-06-21 19:47:07', 1, 0),
(276, '531', '906', 'ok', '2019-06-21 19:41:34', 1, 1),
(275, '906', '531', 'ok', '2019-06-21 19:41:34', 1, 0),
(273, '531', '906', 'que lo pruebo', '2019-06-21 19:41:33', 1, 0),
(274, '906', '531', 'que lo pruebo', '2019-06-21 19:41:34', 1, 1),
(271, '531', '906', 'contesta porfa', '2019-06-21 19:41:28', 1, 0),
(272, '906', '531', 'contesta porfa', '2019-06-21 19:41:29', 1, 1),
(268, 'ambulance', '873', 'De #873 : h 219.17050170898, -1147.6336669922', '2019-06-21 19:41:20', 1, 0),
(269, '531', '906', 'ahora ?', '2019-06-21 19:41:24', 1, 0),
(261, '906', '873', 'hola', '2019-06-21 19:38:23', 1, 1),
(262, '531', '906', 'contesta a esto leyenda', '2019-06-21 19:38:38', 1, 0),
(266, '531', '906', 'vale', '2019-06-21 19:38:53', 1, 0),
(267, '906', '531', 'vale', '2019-06-21 19:38:53', 1, 1),
(259, '531', '906', 'yeppp hypi colgao', '2019-06-21 19:35:52', 1, 1),
(270, '906', '531', 'ahora ?', '2019-06-21 19:41:24', 1, 1),
(260, '873', '906', 'hola', '2019-06-21 19:38:23', 1, 0),
(255, '873-7104', '906', 'm,n,mnm,nm,', '2019-06-21 19:25:08', 1, 1),
(256, '531', '906-8228', 'Hola ?', '2019-06-21 19:35:35', 1, 0),
(264, '906', '531', 'dime', '2019-06-21 19:38:49', 1, 0),
(265, '531', '906', 'dime', '2019-06-21 19:38:49', 1, 1),
(254, '906', '873-7104', 'm,n,mnm,nm,', '2019-06-21 19:25:08', 1, 0),
(374, 'ambulance', '531', 'GPS: 1184.2016601563, -297.40780639648', '2019-06-22 15:12:19', 1, 1),
(375, 'ambulance', '531', 'GPS: 1184.2016601563, -297.40780639648', '2019-06-22 15:12:19', 1, 1),
(376, 'ambulance', '531', 'GPS: 1184.2016601563, -297.40780639648', '2019-06-22 15:12:20', 1, 1),
(377, 'ambulance', '531', 'GPS: 1184.2016601563, -297.40780639648', '2019-06-22 15:12:20', 1, 1),
(378, 'ambulance', '531', 'GPS: 1184.2016601563, -297.40780639648', '2019-06-22 15:12:20', 1, 1),
(379, 'ambulance', '531', 'GPS: 1184.2016601563, -297.40780639648', '2019-06-22 15:12:21', 1, 1),
(380, 'ambulance', '531', 'GPS: 1184.2016601563, -297.40780639648', '2019-06-22 15:12:21', 1, 1),
(381, 'ambulance', '531', 'GPS: 1184.2016601563, -297.40780639648', '2019-06-22 15:12:21', 1, 1),
(383, '562 3039', '827', 'compadre', '2019-06-22 15:14:59', 1, 1),
(384, '531', '827', 'Buenas ?', '2019-06-22 15:16:19', 1, 0),
(385, '827', '531', 'Buenas ?', '2019-06-22 15:16:19', 1, 1),
(386, '827', '531', ':)', '2019-06-22 15:16:29', 1, 0),
(387, '531', '827', ':)', '2019-06-22 15:16:29', 1, 1),
(388, '531', '827', 'como vas ?', '2019-06-22 15:25:55', 1, 0),
(389, '827', '531', 'como vas ?', '2019-06-22 15:25:55', 1, 1),
(390, '531', '827', 'xD', '2019-06-22 15:25:56', 1, 0),
(391, '827', '531', 'xD', '2019-06-22 15:25:56', 1, 1),
(392, '827', '531', 'en mecanico', '2019-06-22 15:26:12', 1, 0),
(393, '531', '827', 'en mecanico', '2019-06-22 15:26:12', 1, 1),
(394, '531', '827', 'okey', '2019-06-22 15:26:18', 1, 0),
(395, '827', '531', 'okey', '2019-06-22 15:26:18', 1, 1),
(396, '827', '531', 'a ver si me pintan el coche', '2019-06-22 15:26:19', 1, 0),
(397, '531', '827', 'a ver si me pintan el coche', '2019-06-22 15:26:19', 1, 1),
(398, '827', '531', 'que solo me llega para eso', '2019-06-22 15:26:31', 1, 0),
(399, '531', '827', 'que solo me llega para eso', '2019-06-22 15:26:31', 1, 1),
(400, '827', '531', 'XD', '2019-06-22 15:26:33', 1, 0),
(401, '531', '827', 'XD', '2019-06-22 15:26:33', 1, 1),
(402, '531', '827', 'xD a ver si tienen dinero para pintartelo jajajaja', '2019-06-22 15:26:41', 1, 0),
(403, '827', '531', 'xD a ver si tienen dinero para pintartelo jajajaja', '2019-06-22 15:26:41', 1, 1),
(404, '827', '531', 'XD', '2019-06-22 15:26:50', 1, 0),
(405, '531', '827', 'XD', '2019-06-22 15:26:50', 1, 1),
(406, '827', '531', 'manda ubi', '2019-06-22 15:49:04', 1, 0),
(407, '531', '827', 'manda ubi', '2019-06-22 15:49:04', 1, 1),
(408, '827', '531', 'q voy a buscarte', '2019-06-22 15:49:10', 1, 0),
(409, '531', '827', 'q voy a buscarte', '2019-06-22 15:49:10', 1, 1),
(410, '531', '827', 'GPS: -625.68109130859, -262.11096191406', '2019-06-22 15:49:11', 1, 0),
(411, '827', '531', 'GPS: -625.68109130859, -262.11096191406', '2019-06-22 15:49:11', 1, 1),
(412, '906', '827', 'Ya estoy por aqui , tuve que salir de emergencia .', '2019-06-22 16:14:18', 1, 0),
(413, '827', '906', 'Ya estoy por aqui , tuve que salir de emergencia .', '2019-06-22 16:14:18', 1, 1),
(414, '827', '906', 'no ,problem', '2019-06-22 16:14:31', 1, 0),
(415, '906', '827', 'no ,problem', '2019-06-22 16:14:31', 1, 1),
(416, '906', '827', 'es lo que tiene tener 3 crios socio .', '2019-06-22 16:14:57', 1, 0),
(417, '827', '906', 'es lo que tiene tener 3 crios socio .', '2019-06-22 16:14:57', 1, 1),
(418, '827', '906', 'hahahaha, usa condon marrano hahahaha', '2019-06-22 16:15:16', 1, 0),
(419, '906', '827', 'hahahaha, usa condon marrano hahahaha', '2019-06-22 16:15:16', 1, 1),
(420, '906', '827', 'jajajaj los compre en los chinos jur jur', '2019-06-22 16:15:38', 1, 0),
(421, '827', '906', 'jajajaj los compre en los chinos jur jur', '2019-06-22 16:15:38', 1, 1),
(422, '827', '906', 'hahahahhaha', '2019-06-22 16:15:48', 1, 0),
(423, '906', '827', 'hahahahhaha', '2019-06-22 16:15:48', 1, 1),
(424, '906', '827', 'Si vienes y no estoy esperate que e salido a por comida a la tienda , que tengo mas hambre que un caracol en la via del tren .xd', '2019-06-22 16:18:42', 1, 0),
(425, '827', '906', 'Si vienes y no estoy esperate que e salido a por comida a la tienda , que tengo mas hambre que un caracol en la via del tren .xd', '2019-06-22 16:18:42', 1, 1),
(426, '827', '906', 'ok.', '2019-06-22 16:29:22', 1, 0),
(427, '906', '827', 'ok.', '2019-06-22 16:29:23', 1, 1),
(429, '880', '531', 'Buenas caballero', '2019-06-22 16:48:09', 1, 1),
(566, 'ambulance', '873', 'De #696 : Se necesita atención médica: ciudadano inconsciente! -1003.6672973633, -2714.7033691406', '2019-06-22 22:40:58', 1, 0),
(430, 'ambulance', '873', 'De #427 : Se necesita atención médica: ciudadano inconsciente! 429.84722900391, -982.42816162109', '2019-06-22 17:06:52', 1, 0),
(570, 'ambulance', '696', 'samanta', '2019-06-22 22:50:44', 1, 1),
(432, 'ambulance', '873', 'De #427 : Se necesita atención médica: ciudadano inconsciente! 394.36367797852, -978.12908935547', '2019-06-22 17:16:38', 1, 0),
(433, '531', '873', 'oscar al banco central yaaa', '2019-06-22 17:43:58', 1, 0),
(434, '873', '531', 'oscar al banco central yaaa', '2019-06-22 17:43:58', 1, 1),
(435, '531', '873', 'correeeeee que se nos muere coñoooo', '2019-06-22 17:44:07', 1, 0),
(436, '873', '531', 'correeeeee que se nos muere coñoooo', '2019-06-22 17:44:07', 1, 1),
(437, '531', '873', 'correeeeee Óscar', '2019-06-22 17:44:14', 1, 0),
(438, '873', '531', 'correeeeee Óscar', '2019-06-22 17:44:14', 1, 1),
(439, '531', '873', 'GPS: 233.94563293457, 198.81771850586', '2019-06-22 17:44:15', 1, 0),
(440, '873', '531', 'GPS: 233.94563293457, 198.81771850586', '2019-06-22 17:44:15', 1, 1),
(441, '531', '873', 'GPS: 233.94563293457, 198.81771850586', '2019-06-22 17:44:15', 1, 0),
(442, '873', '531', 'GPS: 233.94563293457, 198.81771850586', '2019-06-22 17:44:16', 1, 1),
(443, '531', '873', 'GPS: 233.94563293457, 198.81771850586', '2019-06-22 17:44:16', 1, 0),
(444, '873', '531', 'GPS: 233.94563293457, 198.81771850586', '2019-06-22 17:44:16', 1, 1),
(445, '531', '873', 'GPS: 233.94563293457, 198.81771850586', '2019-06-22 17:44:16', 1, 0),
(446, '873', '531', 'GPS: 233.94563293457, 198.81771850586', '2019-06-22 17:44:17', 1, 1),
(447, '531', '873', 'GPS: 233.94563293457, 198.81771850586', '2019-06-22 17:44:17', 1, 0),
(448, '873', '531', 'GPS: 233.94563293457, 198.81771850586', '2019-06-22 17:44:17', 1, 1),
(449, '531', '873', 'GPS: 233.94563293457, 198.81771850586', '2019-06-22 17:44:17', 1, 0),
(450, '873', '531', 'GPS: 233.94563293457, 198.81771850586', '2019-06-22 17:44:17', 1, 1),
(451, '531', '873', 'GPS: 233.94563293457, 198.81771850586', '2019-06-22 17:44:17', 1, 0),
(452, '873', '531', 'GPS: 233.94563293457, 198.81771850586', '2019-06-22 17:44:18', 1, 1),
(453, '531', '873', 'GPS: 233.94563293457, 198.81771850586', '2019-06-22 17:44:18', 1, 0),
(454, '873', '531', 'GPS: 233.94563293457, 198.81771850586', '2019-06-22 17:44:18', 1, 1),
(455, '531', '873', 'GPS: 233.94563293457, 198.81771850586', '2019-06-22 17:44:18', 1, 0),
(456, '873', '531', 'GPS: 233.94563293457, 198.81771850586', '2019-06-22 17:44:18', 1, 1),
(457, '531', '873', 'GPS: 233.94563293457, 198.81771850586', '2019-06-22 17:44:18', 1, 0),
(458, '873', '531', 'GPS: 233.94563293457, 198.81771850586', '2019-06-22 17:44:18', 1, 1),
(459, '531', '873', 'GPS: 233.94563293457, 198.81771850586', '2019-06-22 17:44:19', 1, 0),
(460, '873', '531', 'GPS: 233.94563293457, 198.81771850586', '2019-06-22 17:44:19', 1, 1),
(461, '531', '873', 'GPS: 233.94563293457, 198.81771850586', '2019-06-22 17:44:19', 1, 0),
(462, '873', '531', 'GPS: 233.94563293457, 198.81771850586', '2019-06-22 17:44:19', 1, 1),
(463, '531', '873', 'GPS: 233.94563293457, 198.81771850586', '2019-06-22 17:44:19', 1, 0),
(464, '873', '531', 'GPS: 233.94563293457, 198.81771850586', '2019-06-22 17:44:19', 1, 1),
(465, '531', '873', 'GPS: 233.94563293457, 198.81771850586', '2019-06-22 17:44:19', 1, 0),
(466, '873', '531', 'GPS: 233.94563293457, 198.81771850586', '2019-06-22 17:44:19', 1, 1),
(467, '531', '873', 'GPS: 233.94563293457, 198.81771850586', '2019-06-22 17:44:20', 1, 0),
(468, '873', '531', 'GPS: 233.94563293457, 198.81771850586', '2019-06-22 17:44:20', 1, 1),
(469, 'ambulance', '873', 'De #501 : Se necesita atención médica: ciudadano inconsciente! 127.97677612305, -1284.4504394531', '2019-06-22 18:09:57', 1, 0),
(470, 'ambulance', '873', 'De #501 : Se necesita atención médica: ciudadano inconsciente! 422.83160400391, -978.14910888672', '2019-06-22 18:20:02', 1, 0),
(471, '827', '427', 'cusnto teneis de droga¿?', '2019-06-22 18:29:24', 1, 0),
(472, '427', '827', 'cusnto teneis de droga¿?', '2019-06-22 18:29:24', 1, 1),
(473, '427', '827', 'Pues somos policias, hemos dejado el rol de mafia ya se lo había comentado es que digamos que aun no hay experiencia', '2019-06-22 18:29:59', 1, 0),
(474, '827', '427', 'Pues somos policias, hemos dejado el rol de mafia ya se lo había comentado es que digamos que aun no hay experiencia', '2019-06-22 18:29:59', 1, 1),
(475, '827', '427', 'pero y la droga que teniasis¿?', '2019-06-22 18:30:26', 0, 0),
(476, '427', '827', 'pero y la droga que teniasis¿?', '2019-06-22 18:30:26', 1, 1),
(477, '531', '873', 'GPS: 277.20834350586, -863.59613037109', '2019-06-22 18:31:17', 1, 0),
(478, '873', '531', 'GPS: 277.20834350586, -863.59613037109', '2019-06-22 18:31:17', 1, 1),
(479, '531', '873', 'GPS: 277.20834350586, -863.59613037109', '2019-06-22 18:31:17', 1, 0),
(480, '873', '531', 'GPS: 277.20834350586, -863.59613037109', '2019-06-22 18:31:17', 1, 1),
(481, '531', '873', 'GPS: 277.20834350586, -863.59613037109', '2019-06-22 18:31:17', 1, 0),
(482, '873', '531', 'GPS: 277.20834350586, -863.59613037109', '2019-06-22 18:31:18', 1, 1),
(483, '531', '873', 'GPS: 277.20834350586, -863.59613037109', '2019-06-22 18:31:18', 1, 0),
(484, '873', '531', 'GPS: 277.20834350586, -863.59613037109', '2019-06-22 18:31:18', 1, 1),
(485, '531', '873', 'GPS: 277.20834350586, -863.59613037109', '2019-06-22 18:31:18', 1, 0),
(486, '873', '531', 'GPS: 277.20834350586, -863.59613037109', '2019-06-22 18:31:19', 1, 1),
(487, '531', '873', 'GPS: 277.20834350586, -863.59613037109', '2019-06-22 18:31:19', 1, 0),
(488, '873', '531', 'GPS: 277.20834350586, -863.59613037109', '2019-06-22 18:31:19', 1, 1),
(489, '531', '873', 'GPS: 277.20834350586, -863.59613037109', '2019-06-22 18:31:20', 1, 0),
(490, '873', '531', 'GPS: 277.20834350586, -863.59613037109', '2019-06-22 18:31:20', 1, 1),
(491, '531', '873', 'GPS: 277.20834350586, -863.59613037109', '2019-06-22 18:31:20', 1, 0),
(492, '873', '531', 'GPS: 277.20834350586, -863.59613037109', '2019-06-22 18:31:20', 1, 1),
(493, '531', '873', 'GPS: 277.20834350586, -863.59613037109', '2019-06-22 18:31:20', 1, 0),
(494, '873', '531', 'GPS: 277.20834350586, -863.59613037109', '2019-06-22 18:31:20', 1, 1),
(495, '531', '873', 'GPS: 277.20834350586, -863.59613037109', '2019-06-22 18:31:21', 1, 0),
(496, '873', '531', 'GPS: 277.20834350586, -863.59613037109', '2019-06-22 18:31:21', 1, 1),
(497, '531', '873', 'GPS: 277.20834350586, -863.59613037109', '2019-06-22 18:31:21', 1, 0),
(498, '873', '531', 'GPS: 277.20834350586, -863.59613037109', '2019-06-22 18:31:21', 1, 1),
(499, '531', '873', 'GPS: 277.20834350586, -863.59613037109', '2019-06-22 18:31:22', 1, 0),
(500, '873', '531', 'GPS: 277.20834350586, -863.59613037109', '2019-06-22 18:31:22', 1, 1),
(501, '531', '873', 'GPS: 277.20834350586, -863.59613037109', '2019-06-22 18:31:23', 1, 0),
(502, '873', '531', 'GPS: 277.20834350586, -863.59613037109', '2019-06-22 18:31:23', 1, 1),
(503, '531', '873', 'GPS: 277.20834350586, -863.59613037109', '2019-06-22 18:31:23', 1, 0),
(504, '873', '531', 'GPS: 277.20834350586, -863.59613037109', '2019-06-22 18:31:23', 1, 1),
(505, '531', '873', 'GPS: 277.20834350586, -863.59613037109', '2019-06-22 18:31:24', 1, 0),
(506, '873', '531', 'GPS: 277.20834350586, -863.59613037109', '2019-06-22 18:31:24', 1, 1),
(507, '531', '873', 'GPS: 277.20834350586, -863.59613037109', '2019-06-22 18:31:24', 1, 0),
(508, '873', '531', 'GPS: 277.20834350586, -863.59613037109', '2019-06-22 18:31:24', 1, 1),
(509, '531', '873', 'GPS: 277.20834350586, -863.59613037109', '2019-06-22 18:31:25', 1, 0),
(510, '873', '531', 'GPS: 277.20834350586, -863.59613037109', '2019-06-22 18:31:25', 1, 1),
(511, '531', '873', 'GPS: 277.20834350586, -863.59613037109', '2019-06-22 18:31:25', 1, 0),
(512, '873', '531', 'GPS: 277.20834350586, -863.59613037109', '2019-06-22 18:31:25', 1, 1),
(513, '531', '873', 'GPS: 277.20834350586, -863.59613037109', '2019-06-22 18:31:26', 1, 0),
(514, '873', '531', 'GPS: 277.20834350586, -863.59613037109', '2019-06-22 18:31:26', 1, 1),
(515, '873', '531', 'no espamesas', '2019-06-22 18:31:26', 1, 0),
(516, '531', '873', 'GPS: 277.20834350586, -863.59613037109', '2019-06-22 18:31:26', 1, 0),
(517, '531', '873', 'no espamesas', '2019-06-22 18:31:26', 1, 1),
(518, '873', '531', 'GPS: 277.20834350586, -863.59613037109', '2019-06-22 18:31:26', 1, 1),
(519, '531', '873', 'GPS: 277.20834350586, -863.59613037109', '2019-06-22 18:31:27', 1, 0),
(520, '873', '531', 'GPS: 277.20834350586, -863.59613037109', '2019-06-22 18:31:27', 1, 1),
(521, '873', '531', 'tio para jodr de spamear', '2019-06-22 18:31:35', 1, 0),
(522, '531', '873', 'tio para jodr de spamear', '2019-06-22 18:31:35', 1, 1),
(523, '531', '873', 'pues para de hacer el mongolo con el helicoptero', '2019-06-22 18:31:54', 1, 0),
(524, '873', '531', 'pues para de hacer el mongolo con el helicoptero', '2019-06-22 18:31:54', 1, 1),
(525, '531', '873', 'y estate por lo que tienes que estar', '2019-06-22 18:32:03', 1, 0),
(526, '873', '531', 'y estate por lo que tienes que estar', '2019-06-22 18:32:03', 1, 1),
(527, '873', '531', 'GPS: 328.47955322266, -1458.7043457031', '2019-06-22 18:39:54', 1, 0),
(528, '531', '873', 'GPS: 328.47955322266, -1458.7043457031', '2019-06-22 18:39:54', 1, 1),
(529, '873', '531', 'GPS: 333.46072387695, -1463.5601806641', '2019-06-22 18:40:12', 1, 0),
(530, '531', '873', 'GPS: 333.46072387695, -1463.5601806641', '2019-06-22 18:40:12', 1, 1),
(531, '873', '531', 'GPS: 333.46072387695, -1463.5601806641', '2019-06-22 18:40:18', 1, 0),
(532, '531', '873', 'GPS: 333.46072387695, -1463.5601806641', '2019-06-22 18:40:18', 1, 1),
(533, 'ambulance', '873', 'De #427 : Se necesita atención médica: ciudadano inconsciente! 322.83828735352, -1505.0316162109', '2019-06-22 18:41:40', 1, 0),
(534, 'ambulance', '873', 'De #531 : Se necesita atención médica: ciudadano inconsciente! 598.88092041016, -1133.0029296875', '2019-06-22 20:08:51', 1, 0),
(535, 'ambulance', '873', 'De #501 : Se necesita atención médica: ciudadano inconsciente! 152.5122833252, -1032.1606445313', '2019-06-22 20:39:32', 1, 0),
(536, 'ambulance', '873', 'De #427 : Se necesita atención médica: ciudadano inconsciente! 151.59242248535, -1038.0422363281', '2019-06-22 20:42:04', 1, 0),
(537, '827', '906', 'compadre', '2019-06-22 21:22:03', 1, 0),
(538, '906', '827', 'compadre', '2019-06-22 21:22:03', 1, 1),
(539, '827', '906', 'donde estas', '2019-06-22 21:22:07', 1, 0),
(540, '906', '827', 'donde estas', '2019-06-22 21:22:07', 1, 1),
(541, '531', '827', 'Eres este  no ??', '2019-06-22 21:50:39', 1, 0),
(542, '827', '531', 'Eres este  no ??', '2019-06-22 21:50:39', 1, 1),
(543, '827', '531', 'si', '2019-06-22 21:50:46', 1, 0),
(544, '531', '827', 'si', '2019-06-22 21:50:46', 1, 1),
(545, 'police', '27663', 'De #827 : policia?', '2019-06-22 22:05:30', 1, 0),
(546, 'police', '827', 'policia?', '2019-06-22 22:05:30', 1, 1),
(548, '531', '113', 'GPS: -225.11708068848, -607.89123535156', '2019-06-22 22:24:20', 1, 1),
(612, '873', '531', 'oscar', '2019-06-22 23:47:57', 1, 1),
(549, '906', '827', 'Estoy fuera de servicio ya lo publique por twt', '2019-06-22 22:25:16', 1, 0),
(550, '827', '906', 'Estoy fuera de servicio ya lo publique por twt', '2019-06-22 22:25:16', 1, 1),
(551, '827', '906', 'ok. no problem ;)', '2019-06-22 22:25:37', 1, 0),
(552, '906', '827', 'ok. no problem ;)', '2019-06-22 22:25:37', 1, 1),
(553, 'ambulance', '873', 'De #427 : Se necesita atención médica: ciudadano inconsciente! -240.80387878418, -651.20794677734', '2019-06-22 22:26:44', 1, 0),
(568, 'ambulance', '873', 'De #696 : samanta', '2019-06-22 22:50:44', 1, 0),
(623, '827', '873', 'ven aqui tu solo', '2019-06-23 00:07:35', 1, 0),
(555, '906', '827', 'Vamos que estoy fuera de servicio viendo con un amigo que tal los trabajos y pagos de nominas  y a cada tiempo de ingresos de nomina . Estamos por radio para dar reportes', '2019-06-22 22:27:27', 1, 0),
(556, '827', '906', 'Vamos que estoy fuera de servicio viendo con un amigo que tal los trabajos y pagos de nominas  y a cada tiempo de ingresos de nomina . Estamos por radio para dar reportes', '2019-06-22 22:27:27', 1, 1),
(557, 'ambulance', '873', 'De #880 : GPS: 156.55729675293, -1036.7185058594', '2019-06-22 22:28:39', 1, 0),
(624, '873', '827', 'ven aqui tu solo', '2019-06-23 00:07:36', 1, 1),
(571, 'ambulance', '873', 'De #696 : soy la de la oposcion', '2019-06-22 22:50:59', 1, 0),
(625, '827', '873', 'vestido de calle porfavor', '2019-06-23 00:07:48', 1, 0),
(560, '906', '827', 'Por radio franky abra pasado varios report', '2019-06-22 22:28:52', 1, 0),
(561, '827', '906', 'Por radio franky abra pasado varios report', '2019-06-22 22:28:52', 1, 1),
(562, '827', '906', 'si si. trankilos que xexus ya ha llegado, dentro de poco vereis que empieza a meter restart', '2019-06-22 22:29:56', 1, 0),
(563, '906', '827', 'si si. trankilos que xexus ya ha llegado, dentro de poco vereis que empieza a meter restart', '2019-06-22 22:29:56', 1, 1),
(564, '906', '827', 'ok', '2019-06-22 22:30:19', 1, 0),
(565, '827', '906', 'ok', '2019-06-22 22:30:19', 1, 1),
(573, 'ambulance', '696', 'soy la de la oposcion', '2019-06-22 22:50:59', 1, 1),
(574, '827', '873', 'soy markuins, puedes venir un momento al garage central y dejar la ems un momento please', '2019-06-22 23:21:34', 1, 0),
(575, '873', '827', 'soy markuins, puedes venir un momento al garage central y dejar la ems un momento please', '2019-06-22 23:21:34', 1, 1),
(576, '827', '873', 'por hacer eso que te comete', '2019-06-22 23:21:42', 1, 0),
(577, '873', '827', 'por hacer eso que te comete', '2019-06-22 23:21:42', 1, 1),
(578, '873', '827', 'okey ya estamos', '2019-06-22 23:22:03', 1, 0),
(579, '827', '873', 'okey ya estamos', '2019-06-22 23:22:03', 1, 1),
(581, '531', '113', 'GPS: 1368.3248291016, 1143.5540771484', '2019-06-22 23:24:42', 1, 1),
(611, '531', '873', 'oscar', '2019-06-22 23:47:57', 1, 0),
(582, '827', '873', 'ven tu solo sin la ropa de ems. deja a tu compañero trabajando. y ven al final del parking solo', '2019-06-22 23:25:29', 1, 0),
(583, '873', '827', 'ven tu solo sin la ropa de ems. deja a tu compañero trabajando. y ven al final del parking solo', '2019-06-22 23:25:29', 1, 1),
(584, '827', '873', 'vienes?', '2019-06-22 23:29:26', 1, 0),
(585, '873', '827', 'vienes?', '2019-06-22 23:29:26', 1, 1),
(586, '873', '827', 'por que apsap', '2019-06-22 23:30:07', 1, 0),
(587, '827', '873', 'por que apsap', '2019-06-22 23:30:07', 1, 1),
(588, '827', '873', 'tranmquilo+', '2019-06-22 23:30:16', 1, 0),
(589, '873', '827', 'tranmquilo+', '2019-06-22 23:30:16', 1, 1),
(590, '827', '873', 'estoy en el hopdpital', '2019-06-22 23:33:14', 1, 0),
(591, '873', '827', 'estoy en el hopdpital', '2019-06-22 23:33:14', 1, 1),
(592, '827', '873', 'kitate la ropa de ems', '2019-06-22 23:33:20', 1, 0),
(593, '873', '827', 'kitate la ropa de ems', '2019-06-22 23:33:20', 1, 1),
(594, 'ambulance', '873', 'De #108 : Se necesita atención médica: ciudadano inconsciente! 648.6162109375, -204.00296020508', '2019-06-22 23:34:18', 1, 0),
(627, '827', '873', 'te pagare bien', '2019-06-23 00:07:54', 1, 0),
(628, '873', '827', 'te pagare bien', '2019-06-23 00:07:54', 1, 1),
(596, 'ambulance', '696', 'De #108 : Se necesita atención médica: ciudadano inconsciente! 648.6162109375, -204.00296020508', '2019-06-22 23:34:18', 0, 0),
(629, '827', '873', 'GPS: -2970.1276855469, 484.31170654297', '2019-06-23 00:07:59', 1, 0),
(598, 'ambulance', '873', 'De #427 : Se necesita atención médica: ciudadano inconsciente! -187.4245300293, -1780.1564941406', '2019-06-22 23:37:57', 1, 0),
(599, 'ambulance', '696', 'De #427 : Se necesita atención médica: ciudadano inconsciente! -187.4245300293, -1780.1564941406', '2019-06-22 23:37:57', 0, 0),
(630, '873', '827', 'GPS: -2970.1276855469, 484.31170654297', '2019-06-23 00:07:59', 1, 1),
(601, 'ambulance', '873', 'De #827 : GPS: -345.31192016602, -1825.5947265625', '2019-06-22 23:38:48', 1, 0),
(602, 'ambulance', '696', 'De #827 : GPS: -345.31192016602, -1825.5947265625', '2019-06-22 23:38:48', 0, 0),
(603, 'ambulance', '827', 'GPS: -345.31192016602, -1825.5947265625', '2019-06-22 23:38:48', 1, 1),
(633, '873', '531', 'GPS: 1297.7156982422, 1174.8687744141', '2019-06-23 09:22:35', 1, 1),
(634, '531', '873', 'GPS: 1300.0712890625, 1129.6961669922', '2019-06-23 09:22:40', 1, 0),
(605, 'ambulance', '873', 'De #880 : Se necesita atención médica: ciudadano inconsciente! 226.9969329834, -1410.2271728516', '2019-06-22 23:42:04', 1, 0),
(606, 'ambulance', '696', 'De #880 : Se necesita atención médica: ciudadano inconsciente! 226.9969329834, -1410.2271728516', '2019-06-22 23:42:04', 0, 0),
(607, '827', '873', 'te estoy esperando wn wl hospital', '2019-06-22 23:44:37', 1, 0),
(608, '873', '827', 'te estoy esperando wn wl hospital', '2019-06-22 23:44:37', 1, 1),
(609, '873', '827', 'okey hay muvho trabajo', '2019-06-22 23:44:51', 1, 0),
(610, '827', '873', 'okey hay muvho trabajo', '2019-06-22 23:44:51', 1, 1),
(613, '531', '873', 'manda ubi', '2019-06-22 23:48:00', 1, 0),
(614, '873', '531', 'manda ubi', '2019-06-22 23:48:00', 1, 1),
(615, '531', '873', 'que me aburro', '2019-06-22 23:48:08', 1, 0),
(616, '873', '531', 'que me aburro', '2019-06-22 23:48:08', 1, 1),
(617, '531', '873', 'porfa', '2019-06-22 23:48:10', 1, 0),
(618, '873', '531', 'porfa', '2019-06-22 23:48:10', 1, 1),
(619, '873', '531', 'ESTOY MUY OCUPADO', '2019-06-22 23:48:42', 1, 0),
(620, '531', '873', 'ESTOY MUY OCUPADO', '2019-06-22 23:48:42', 1, 1),
(632, '531', '873', 'GPS: 1297.7156982422, 1174.8687744141', '2019-06-23 09:22:34', 1, 0),
(622, 'ambulance', '873', 'De #614 : Se necesita atención médica: ciudadano inconsciente! 428.07287597656, -980.57373046875', '2019-06-22 23:50:33', 1, 0),
(626, '873', '827', 'vestido de calle porfavor', '2019-06-23 00:07:48', 1, 1),
(635, '873', '531', 'GPS: 1300.0712890625, 1129.6961669922', '2019-06-23 09:22:40', 1, 1),
(636, '531', '873', 'GPS: 1300.2609863281, 1125.9473876953', '2019-06-23 09:22:40', 1, 0),
(637, '873', '531', 'GPS: 1300.2609863281, 1125.9473876953', '2019-06-23 09:22:40', 1, 1),
(638, '531', '873', 'GPS: 1300.5098876953, 1121.1557617188', '2019-06-23 09:22:42', 1, 0),
(639, '873', '531', 'GPS: 1300.5098876953, 1121.1557617188', '2019-06-23 09:22:42', 1, 1),
(640, '531', '873', 'GPS: 1301.0734863281, 1110.6871337891', '2019-06-23 09:22:43', 1, 0),
(641, '873', '531', 'GPS: 1301.0734863281, 1110.6871337891', '2019-06-23 09:22:43', 1, 1),
(642, '531', '873', 'GPS: 1301.6372070313, 1100.2158203125', '2019-06-23 09:22:44', 1, 0),
(643, '873', '531', 'GPS: 1301.6372070313, 1100.2158203125', '2019-06-23 09:22:44', 1, 1),
(644, '562', '827', 'compadre', '2019-06-23 10:34:06', 1, 0),
(645, '827', '562', 'compadre', '2019-06-23 10:34:07', 1, 1),
(646, '827', '562', 'dime', '2019-06-23 10:34:13', 1, 0),
(647, '562', '827', 'dime', '2019-06-23 10:34:13', 1, 1),
(648, '562', '827', 'quien eres', '2019-06-23 10:34:33', 1, 0),
(649, '827', '562', 'quien eres', '2019-06-23 10:34:34', 1, 1),
(650, '827', '562', 'markuins. y tu? XD', '2019-06-23 10:34:48', 1, 0),
(651, '562', '827', 'markuins. y tu? XD', '2019-06-23 10:34:48', 1, 1),
(652, '562', '827', 'polini xd', '2019-06-23 10:34:58', 1, 0),
(653, '827', '562', 'polini xd', '2019-06-23 10:34:58', 1, 1),
(654, '827', '562', 'hahahaha', '2019-06-23 10:35:04', 1, 0),
(655, '562', '827', 'hahahaha', '2019-06-23 10:35:04', 1, 1),
(656, '827', '562', 'y discord¿?', '2019-06-23 10:35:09', 1, 0),
(657, '562', '827', 'y discord¿?', '2019-06-23 10:35:09', 1, 1),
(658, '562', '827', 'ven', '2019-06-23 10:35:13', 1, 0),
(659, '827', '562', 'ven', '2019-06-23 10:35:13', 1, 1),
(660, '562', '827', 'cambio y corto', '2019-06-23 10:35:25', 1, 0),
(661, '827', '562', 'cambio y corto', '2019-06-23 10:35:25', 1, 1),
(662, '827', '562', 'manda ubi', '2019-06-23 10:35:27', 1, 0),
(663, '562', '827', 'manda ubi', '2019-06-23 10:35:28', 1, 1),
(664, '562', '827', 'no se', '2019-06-23 10:35:40', 1, 0),
(665, '827', '562', 'no se', '2019-06-23 10:35:40', 1, 1),
(666, '827', '562', 'antes de darle al enter para escribirme por aqui dale flacha derecha y te dira de dar gps', '2019-06-23 10:35:55', 1, 0),
(667, '562', '827', 'antes de darle al enter para escribirme por aqui dale flacha derecha y te dira de dar gps', '2019-06-23 10:35:55', 1, 1),
(668, '562', '827', 'GPS: 503.20971679688, -1024.1225585938', '2019-06-23 10:36:32', 1, 0),
(669, '827', '562', 'GPS: 503.20971679688, -1024.1225585938', '2019-06-23 10:36:32', 1, 1),
(670, '827', '562', 'voy', '2019-06-23 10:36:40', 0, 0),
(671, '562', '827', 'voy', '2019-06-23 10:36:40', 1, 1),
(672, '531', '827', 'GPS: 531.20422363281, -1437.5412597656', '2019-06-23 10:37:13', 1, 0),
(673, '827', '531', 'GPS: 531.20422363281, -1437.5412597656', '2019-06-23 10:37:13', 1, 1),
(674, '531', '827', 'GPS: 313.73281860352, -1349.7408447266', '2019-06-23 10:53:31', 1, 0),
(675, '827', '531', 'GPS: 313.73281860352, -1349.7408447266', '2019-06-23 10:53:31', 1, 1),
(676, '531', '827', 'GPS: 313.73281860352, -1349.7408447266', '2019-06-23 10:53:31', 1, 0),
(677, '827', '531', 'GPS: 313.73281860352, -1349.7408447266', '2019-06-23 10:53:32', 1, 1),
(678, '531', '827', 'GPS: 313.73281860352, -1349.7408447266', '2019-06-23 10:53:32', 1, 0),
(679, '827', '531', 'GPS: 313.73281860352, -1349.7408447266', '2019-06-23 10:53:32', 1, 1),
(680, '531', '827', 'GPS: 313.73281860352, -1349.7408447266', '2019-06-23 10:53:32', 1, 0),
(681, '827', '531', 'GPS: 313.73281860352, -1349.7408447266', '2019-06-23 10:53:32', 1, 1),
(682, '531', '827', 'GPS: 313.73281860352, -1349.7408447266', '2019-06-23 10:53:32', 1, 0),
(683, '827', '531', 'GPS: 313.73281860352, -1349.7408447266', '2019-06-23 10:53:32', 1, 1),
(684, '531', '827', 'GPS: 313.73281860352, -1349.7408447266', '2019-06-23 10:53:33', 1, 0),
(685, '827', '531', 'GPS: 313.73281860352, -1349.7408447266', '2019-06-23 10:53:33', 1, 1),
(686, '531', '827', 'GPS: 313.73281860352, -1349.7408447266', '2019-06-23 10:53:33', 1, 0),
(687, '827', '531', 'GPS: 313.73281860352, -1349.7408447266', '2019-06-23 10:53:33', 1, 1),
(688, '531', '827', 'GPS: 313.73281860352, -1349.7408447266', '2019-06-23 10:53:33', 1, 0),
(689, '827', '531', 'GPS: 313.73281860352, -1349.7408447266', '2019-06-23 10:53:33', 1, 1),
(690, '531', '827', 'GPS: 313.73281860352, -1349.7408447266', '2019-06-23 10:53:33', 1, 0),
(691, '827', '531', 'GPS: 313.73281860352, -1349.7408447266', '2019-06-23 10:53:33', 1, 1),
(692, '531', '827', 'GPS: 313.73281860352, -1349.7408447266', '2019-06-23 10:53:33', 1, 0),
(693, '827', '531', 'GPS: 313.73281860352, -1349.7408447266', '2019-06-23 10:53:33', 1, 1),
(694, '531', '827', 'GPS: 313.73281860352, -1349.7408447266', '2019-06-23 10:53:34', 1, 0),
(695, '827', '531', 'GPS: 313.73281860352, -1349.7408447266', '2019-06-23 10:53:34', 1, 1),
(696, '827', '531', 'GPS: 222.3512878418, -784.37847900391', '2019-06-23 10:53:37', 1, 0),
(697, '531', '827', 'GPS: 222.3512878418, -784.37847900391', '2019-06-23 10:53:37', 1, 1),
(698, '827', '531', 'voy', '2019-06-23 10:53:46', 1, 0),
(699, '531', '827', 'voy', '2019-06-23 10:53:46', 1, 1),
(700, '531', '827', 'gracx', '2019-06-23 10:53:49', 1, 0),
(701, '827', '531', 'gracx', '2019-06-23 10:53:49', 1, 1),
(702, '531', '827', 'grax*', '2019-06-23 10:53:52', 1, 0),
(703, '827', '531', 'grax*', '2019-06-23 10:53:53', 1, 1),
(704, 'taxi', '771', 'De #827 : olaaa', '2019-06-23 11:26:44', 1, 0),
(705, 'taxi', '827', 'olaaa', '2019-06-23 11:26:44', 1, 1),
(706, 'taxi', '771', 'De #771 : caramierdaaaaaaaa', '2019-06-23 11:26:58', 1, 0),
(707, 'taxi', '771', 'caramierdaaaaaaaa', '2019-06-23 11:26:58', 1, 1),
(709, '880', '531', 'guiño guiño xD', '2019-06-23 12:43:20', 1, 1),
(722, 'police', '531', 'De #646 : GPS: 1539.8948974609, 3762.8823242188', '2019-06-23 13:33:39', 1, 0),
(723, 'police', '501', 'De #646 : GPS: 1539.8948974609, 3762.8823242188', '2019-06-23 13:33:39', 0, 0),
(711, '880', '531', 'disfrutala amigo y que no se te escape de el bolsillo, solo en caso de vida o muerte =)', '2019-06-23 12:43:58', 1, 1),
(712, '880', '531', 'Gracias amigo', '2019-06-23 12:45:05', 1, 0),
(724, 'police', '646', 'GPS: 1539.8948974609, 3762.8823242188', '2019-06-23 13:33:39', 1, 1),
(751, '995', '998', 'hola', '2019-06-23 15:13:50', 1, 0),
(752, '998', '995', 'hola', '2019-06-23 15:13:51', 1, 1),
(715, '880', '531', 'a usted por salvar vidas caballero, buen día y a disfrutar de esta maravillosa ciudad con estos maravillosos servicios de emergéncia', '2019-06-23 12:46:02', 1, 1),
(716, 'ambulance', '873', 'De #531 : Se necesita atención médica: ciudadano inconsciente! 205.00030517578, -716.98724365234', '2019-06-23 12:50:29', 1, 0),
(719, 'taxi', '646', 'necesito un taxi', '2019-06-23 13:21:44', 1, 1),
(718, 'taxi', '771', 'De #646 : necesito un taxi', '2019-06-23 13:21:44', 1, 0),
(720, 'taxi', '771', 'De #771 : envieme las direccion gps si es tan amable y salgo hacia allá', '2019-06-23 13:22:37', 1, 0),
(721, 'taxi', '771', 'envieme las direccion gps si es tan amable y salgo hacia allá', '2019-06-23 13:22:37', 1, 1),
(753, '995', '998', 'owo', '2019-06-23 15:14:00', 1, 0),
(726, 'ambulance', '873', 'De #646 : Se necesita atención médica: ciudadano inconsciente! 2413.5654296875, 2879.7534179688', '2019-06-23 13:54:35', 1, 0),
(754, '998', '995', 'owo', '2019-06-23 15:14:00', 1, 1),
(727, '108', '827', 'GPS: -745.66772460938, -1085.3471679688', '2019-06-23 14:04:29', 1, 0),
(728, '827', '108', 'GPS: -745.66772460938, -1085.3471679688', '2019-06-23 14:04:29', 1, 1),
(729, '827', '108', 'GPS: -2970.0278320313, 479.18301391602', '2019-06-23 14:22:53', 1, 0),
(730, '108', '827', 'GPS: -2970.0278320313, 479.18301391602', '2019-06-23 14:22:53', 1, 1),
(731, 'taxi', '771', 'De #998 : Vengan por mi', '2019-06-23 14:30:43', 0, 0),
(732, 'taxi', '995', 'De #998 : Vengan por mi', '2019-06-23 14:30:43', 1, 0),
(733, 'taxi', '998', 'Vengan por mi', '2019-06-23 14:30:43', 1, 1),
(734, 'taxi', '771', 'De #995 : Ok', '2019-06-23 14:34:01', 0, 0),
(735, 'taxi', '995', 'De #995 : Ok', '2019-06-23 14:34:01', 1, 0),
(736, 'taxi', '995', 'Ok', '2019-06-23 14:34:01', 1, 1),
(738, 'ambulance', '873', 'De #873 : Se necesita atención médica: ciudadano inconsciente! 262.9885559082, -1003.2232055664', '2019-06-23 14:44:29', 1, 0),
(750, 'ambulance', '873', 'De #108 : Se necesita atención médica: ciudadano inconsciente! 242.45794677734, -812.44378662109', '2019-06-23 15:00:34', 1, 0),
(739, '531', '873', 'GPS: -2974.6875, 486.78985595703', '2019-06-23 14:51:22', 1, 0),
(740, '873', '531', 'GPS: -2974.6875, 486.78985595703', '2019-06-23 14:51:22', 1, 1),
(741, '531', '873', 'GPS: -2974.6875, 486.78985595703', '2019-06-23 14:51:23', 1, 0),
(742, '873', '531', 'GPS: -2974.6875, 486.78985595703', '2019-06-23 14:51:23', 1, 1),
(743, '531', '873', 'GPS: -2974.6875, 486.78985595703', '2019-06-23 14:51:23', 1, 0),
(744, '873', '531', 'GPS: -2974.6875, 486.78985595703', '2019-06-23 14:51:23', 1, 1),
(745, '531', '873', 'GPS: -2974.6875, 486.78985595703', '2019-06-23 14:51:24', 1, 0),
(746, '873', '531', 'GPS: -2974.6875, 486.78985595703', '2019-06-23 14:51:24', 1, 1),
(747, '531', '873', 'GPS: -2974.6875, 486.78985595703', '2019-06-23 14:51:24', 1, 0),
(748, '873', '531', 'GPS: -2974.6875, 486.78985595703', '2019-06-23 14:51:24', 1, 1),
(755, '995', '998', 'me lees ?', '2019-06-23 15:14:07', 1, 0),
(756, '998', '995', 'me lees ?', '2019-06-23 15:14:07', 1, 1),
(757, 'ambulance', '873', 'De #827 : Se necesita atención médica: ciudadano inconsciente! 241.67646789551, -798.65057373047', '2019-06-23 15:19:01', 1, 0),
(768, 'mechanic', '995', 'Mi coche no se enciende. Ayuda', '2019-06-23 15:33:29', 1, 1),
(767, 'mechanic', '108', 'De #995 : Mi coche no se enciende. Ayuda', '2019-06-23 15:33:29', 1, 0),
(759, '998', '995', 'Hola si', '2019-06-23 15:28:25', 1, 0),
(760, '995', '998', 'Hola si', '2019-06-23 15:28:25', 1, 1),
(761, '998', '995', 'COn retraso xD', '2019-06-23 15:28:30', 1, 0),
(762, '995', '998', 'COn retraso xD', '2019-06-23 15:28:30', 1, 1),
(763, 'mechanic', '108', 'De #998 : ¿Algun mecanico disponible?', '2019-06-23 15:29:22', 1, 0),
(764, 'mechanic', '998', '¿Algun mecanico disponible?', '2019-06-23 15:29:22', 1, 1),
(765, 'mechanic', '108', 'De #108 : si, voy al taller', '2019-06-23 15:29:33', 1, 0),
(766, 'mechanic', '108', 'si, voy al taller', '2019-06-23 15:29:33', 1, 1),
(769, 'mechanic', '108', 'De #998 : Quisiera solicitar un mecánico ahora. ¿Alguien disponible?', '2019-06-23 15:33:36', 1, 0),
(770, 'mechanic', '998', 'Quisiera solicitar un mecánico ahora. ¿Alguien disponible?', '2019-06-23 15:33:36', 1, 1),
(771, 'mechanic', '108', 'De #108 : si', '2019-06-23 15:33:49', 1, 0),
(772, 'mechanic', '108', 'si', '2019-06-23 15:33:49', 1, 1),
(773, 'mechanic', '108', 'De #108 : donde está?', '2019-06-23 15:34:43', 1, 0),
(774, 'mechanic', '108', 'donde está?', '2019-06-23 15:34:43', 1, 1),
(775, '906', '531', 'Donde andas hipy colgao . Estoy por radio .', '2019-06-23 17:28:58', 1, 0),
(776, '531', '906', 'Donde andas hipy colgao . Estoy por radio .', '2019-06-23 17:28:58', 1, 1),
(777, '531', '906', 'boi xD', '2019-06-23 17:29:07', 1, 0),
(778, '906', '531', 'boi xD', '2019-06-23 17:29:07', 1, 1),
(779, '906', '531', 'yeeepppp oks', '2019-06-23 17:29:31', 1, 0),
(780, '531', '906', 'yeeepppp oks', '2019-06-23 17:29:31', 1, 1),
(781, 'ambulance', '995', 'De #531 : Se necesita atención médica: ciudadano inconsciente! 408.7053527832, -885.40167236328', '2019-06-23 18:00:09', 1, 0),
(782, 'ambulance', '998', 'De #531 : Se necesita atención médica: ciudadano inconsciente! 408.7053527832, -885.40167236328', '2019-06-23 18:00:09', 1, 0),
(783, 'ambulance', '998', 'De #827 : GPS: 404.07434082031, -881.08850097656', '2019-06-23 18:03:45', 1, 0),
(784, 'ambulance', '827', 'GPS: 404.07434082031, -881.08850097656', '2019-06-23 18:03:45', 1, 1),
(785, 'ambulance', '998', 'De #531 : Se necesita atención médica: ciudadano inconsciente! 410.32235717773, -887.21069335938', '2019-06-23 18:05:34', 1, 0),
(786, 'ambulance', '995', 'De #531 : Se necesita atención médica: ciudadano inconsciente! 410.32235717773, -887.21069335938', '2019-06-23 18:10:36', 1, 0),
(787, 'ambulance', '998', 'De #531 : Se necesita atención médica: ciudadano inconsciente! 410.32235717773, -887.21069335938', '2019-06-23 18:10:36', 1, 0),
(788, 'ambulance', '873', 'De #998 : Se necesita atención médica: ciudadano inconsciente! 400.50439453125, -947.81512451172', '2019-06-23 18:24:01', 1, 0),
(790, 'ambulance', '995', 'De #998 : Se necesita atención médica: ciudadano inconsciente! 400.50439453125, -947.81512451172', '2019-06-23 18:24:01', 1, 0),
(791, 'taxi', '771', 'De #371 : necesito un taxi en el badulaque central -715.32434082031, -920.09423828125', '2019-06-23 18:24:11', 0, 0),
(793, 'ambulance', '873', 'De #873 : Se necesita atención médica: ciudadano inconsciente! -261.33465576172, -971.08337402344', '2019-06-23 18:50:07', 1, 0),
(792, 'taxi', '771', 'De #371 : necesito un taxi pago bien -707.36041259766, -923.79437255859', '2019-06-23 18:26:49', 0, 0),
(794, 'ambulance', '873', 'De #531 : Se necesita atención médica: ciudadano inconsciente! 447.10968017578, -981.40716552734', '2019-06-23 19:00:23', 1, 0),
(795, '753', '827', 'puedes venir cuando quieras', '2019-06-23 19:07:02', 1, 0),
(796, '827', '753', 'puedes venir cuando quieras', '2019-06-23 19:07:02', 1, 1),
(797, '906', '531', 'que te pasa hypi', '2019-06-23 19:07:41', 1, 0),
(798, '531', '906', 'que te pasa hypi', '2019-06-23 19:07:41', 1, 1),
(799, '827', '753', 'manda ubi', '2019-06-23 19:07:55', 1, 0),
(800, '753', '827', 'manda ubi', '2019-06-23 19:07:55', 1, 1),
(801, '753', '827', 'GPS: -707.23071289063, -911.18914794922', '2019-06-23 19:08:00', 1, 0),
(802, '827', '753', 'GPS: -707.23071289063, -911.18914794922', '2019-06-23 19:08:00', 1, 1),
(803, '531', '906', 'nada por ?', '2019-06-23 19:08:04', 1, 0),
(804, '906', '531', 'nada por ?', '2019-06-23 19:08:04', 1, 1),
(805, '906', '531', 'por lo de que hay 7 ems y nadie te revive', '2019-06-23 19:08:39', 1, 0),
(806, '531', '906', 'por lo de que hay 7 ems y nadie te revive', '2019-06-23 19:08:39', 1, 1),
(808, 'mechanic', '906', 'De #998 : ¿Me podrian decir el preico del arreglo de un motor fundido por favor?', '2019-06-23 19:43:25', 1, 0),
(809, 'mechanic', '998', '¿Me podrian decir el preico del arreglo de un motor fundido por favor?', '2019-06-23 19:43:25', 1, 1),
(810, 'ambulance', '873', 'De #501 : Se necesita atención médica: ciudadano inconsciente! 147.72229003906, -1038.7110595703', '2019-06-23 19:49:13', 1, 0),
(824, 'ambulance', '873', 'De #614 : aa', '2019-06-23 20:54:43', 0, 0),
(825, 'ambulance', '880', 'De #614 : aa', '2019-06-23 20:54:43', 1, 0),
(812, 'ambulance', '873', 'De #998 : Se necesita atención médica: ciudadano inconsciente! 481.5556640625, -949.87219238281', '2019-06-23 19:50:53', 1, 0),
(823, 'ambulance', '873', 'De #427 : Se necesita atención médica: ciudadano inconsciente! -1638.4858398438, 2616.80078125', '2019-06-23 20:46:58', 1, 0),
(826, 'ambulance', '614', 'aa', '2019-06-23 20:54:43', 1, 1),
(814, 'mechanic', '108', 'De #906 : Perdon por la tardanza , a habido un servicio que a tenido algun que otro problema .', '2019-06-23 20:23:26', 1, 0),
(815, 'mechanic', '906', 'De #906 : Perdon por la tardanza , a habido un servicio que a tenido algun que otro problema .', '2019-06-23 20:23:26', 1, 0),
(816, 'mechanic', '906', 'Perdon por la tardanza , a habido un servicio que a tenido algun que otro problema .', '2019-06-23 20:23:26', 1, 1),
(817, 'ambulance', '873', 'De #995 : Se necesita atención médica: ciudadano inconsciente! 363.74322509766, 4380.384765625', '2019-06-23 20:23:49', 1, 0),
(828, 'ambulance', '880', 'De #614 : ayuda', '2019-06-23 20:54:45', 1, 0),
(827, 'ambulance', '873', 'De #614 : ayuda', '2019-06-23 20:54:45', 0, 0),
(819, 'mechanic', '108', 'De #906 : 300 el minimo , si hay que salir con el cohe taller seria dependiendo de los km', '2019-06-23 20:24:50', 1, 0),
(820, 'mechanic', '906', 'De #906 : 300 el minimo , si hay que salir con el cohe taller seria dependiendo de los km', '2019-06-23 20:24:50', 1, 0),
(821, 'mechanic', '906', '300 el minimo , si hay que salir con el cohe taller seria dependiendo de los km', '2019-06-23 20:24:50', 1, 1),
(829, 'ambulance', '614', 'ayuda', '2019-06-23 20:54:45', 1, 1),
(830, 'ambulance', '995', 'De #427 : Se necesita atención médica: ciudadano inconsciente! -1619.1932373047, 2606.3627929688', '2019-06-23 20:58:56', 1, 0),
(831, 'ambulance', '873', 'De #427 : Se necesita atención médica: ciudadano inconsciente! -1619.1932373047, 2606.3627929688', '2019-06-23 20:58:56', 0, 0),
(832, 'ambulance', '880', 'De #427 : Se necesita atención médica: ciudadano inconsciente! -1619.1932373047, 2606.3627929688', '2019-06-23 20:58:56', 1, 0),
(833, 'ambulance', '995', 'De #427 : Se necesita atención médica: ciudadano inconsciente! -1613.8414306641, 2584.95703125', '2019-06-23 21:00:15', 1, 0),
(834, 'ambulance', '873', 'De #427 : Se necesita atención médica: ciudadano inconsciente! -1613.8414306641, 2584.95703125', '2019-06-23 21:00:15', 0, 0),
(835, 'ambulance', '880', 'De #427 : Se necesita atención médica: ciudadano inconsciente! -1613.8414306641, 2584.95703125', '2019-06-23 21:00:15', 1, 0),
(836, 'ambulance', '995', 'De #614 : Se necesita atención médica: ciudadano inconsciente! -1614.5510253906, 2581.40234375', '2019-06-23 21:02:41', 1, 0),
(837, 'ambulance', '873', 'De #614 : Se necesita atención médica: ciudadano inconsciente! -1614.5510253906, 2581.40234375', '2019-06-23 21:02:41', 0, 0),
(838, 'ambulance', '880', 'De #614 : Se necesita atención médica: ciudadano inconsciente! -1614.5510253906, 2581.40234375', '2019-06-23 21:02:41', 1, 0),
(839, 'ambulance', '995', 'De #873 : Se necesita atención médica: ciudadano inconsciente! -703.48895263672, 1054.1499023438', '2019-06-23 21:11:50', 1, 0),
(840, 'ambulance', '873', 'De #873 : Se necesita atención médica: ciudadano inconsciente! -703.48895263672, 1054.1499023438', '2019-06-23 21:11:50', 0, 0),
(841, 'ambulance', '880', 'De #873 : Se necesita atención médica: ciudadano inconsciente! -703.48895263672, 1054.1499023438', '2019-06-23 21:11:50', 1, 0),
(842, 'ambulance', '995', 'De #614 : Se necesita atención médica: ciudadano inconsciente! -547.79992675781, 22.885358810425', '2019-06-23 21:20:06', 1, 0);
INSERT INTO `phone_messages` (`id`, `transmitter`, `receiver`, `message`, `time`, `isRead`, `owner`) VALUES
(843, 'ambulance', '880', 'De #614 : Se necesita atención médica: ciudadano inconsciente! -547.79992675781, 22.885358810425', '2019-06-23 21:20:06', 1, 0),
(844, 'police', '531', 'De #531 : valentina coño', '2019-06-23 21:24:21', 1, 0),
(845, 'police', '27663', 'De #531 : valentina coño', '2019-06-23 21:24:21', 0, 0),
(846, 'police', '531', 'valentina coño', '2019-06-23 21:24:21', 1, 1),
(847, 'police', '531', 'De #531 : manda gps', '2019-06-23 21:24:26', 1, 0),
(848, 'police', '27663', 'De #531 : manda gps', '2019-06-23 21:24:26', 0, 0),
(849, 'police', '531', 'manda gps', '2019-06-23 21:24:26', 1, 1),
(850, 'police', '531', 'De #531 : para ver donde estás', '2019-06-23 21:24:37', 1, 0),
(851, 'police', '27663', 'De #531 : para ver donde estás', '2019-06-23 21:24:37', 0, 0),
(852, 'police', '531', 'para ver donde estás', '2019-06-23 21:24:37', 1, 1),
(853, 'ambulance', '880', 'De #880 : Se necesita atención médica: ciudadano inconsciente! 326.74258422852, -1431.9420166016', '2019-06-23 21:25:33', 1, 0),
(854, 'ambulance', '995', 'De #880 : Se necesita atención médica: ciudadano inconsciente! 326.74258422852, -1431.9420166016', '2019-06-23 21:25:33', 1, 0),
(855, 'ambulance', '995', 'De #427 : Se necesita atención médica: ciudadano inconsciente! -508.27029418945, 665.24981689453', '2019-06-23 21:30:08', 1, 0),
(856, 'ambulance', '880', 'De #427 : Se necesita atención médica: ciudadano inconsciente! -508.27029418945, 665.24981689453', '2019-06-23 21:30:08', 1, 0),
(857, 'ambulance', '995', 'De #880 : Se necesita atención médica: ciudadano inconsciente! 326.74258422852, -1431.9420166016', '2019-06-23 21:30:39', 1, 0),
(859, 'ambulance', '995', 'De #880 : Se necesita atención médica: ciudadano inconsciente! 326.74258422852, -1431.9420166016', '2019-06-23 21:36:22', 1, 0),
(862, 'ambulance', '880', 'De #531 : Se necesita atención médica: ciudadano inconsciente! -521.43957519531, 661.82202148438', '2019-06-23 21:37:57', 1, 0),
(861, 'ambulance', '995', 'De #531 : Se necesita atención médica: ciudadano inconsciente! -521.43957519531, 661.82202148438', '2019-06-23 21:37:57', 1, 0),
(863, 'ambulance', '995', 'De #880 : Se necesita atención médica: ciudadano inconsciente! -41.157047271729, -938.97760009766', '2019-06-23 21:43:48', 1, 0),
(864, 'ambulance', '880', 'De #880 : Se necesita atención médica: ciudadano inconsciente! -41.157047271729, -938.97760009766', '2019-06-23 21:43:48', 0, 0),
(865, 'ambulance', '995', 'De #614 : Se necesita atención médica: ciudadano inconsciente! -28.099563598633, -954.55712890625', '2019-06-23 21:44:11', 1, 0),
(866, 'ambulance', '880', 'De #614 : Se necesita atención médica: ciudadano inconsciente! -28.099563598633, -954.55712890625', '2019-06-23 21:44:11', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phone_users_contacts`
--

CREATE TABLE `phone_users_contacts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `phone_users_contacts`
--

INSERT INTO `phone_users_contacts` (`id`, `identifier`, `number`, `display`) VALUES
(13, 'steam:11000010bc9777a', '873-7104', 'osquita'),
(12, 'steam:11000010f2fc36c', '562 3039', 'Nuevo contactopol.oikajdnskl'),
(17, 'steam:110000135fc6b1e', '906', 'Leyenda'),
(15, 'steam:11000010bc9777a', '531', 'franchu admi'),
(16, 'steam:11000011a1c13e8', '906', 'Nuevo contacto'),
(18, 'steam:11000010bc9777a', '', 'Nuevo contacto'),
(19, 'steam:11000010bc9777a', '827', 'rrrrr'),
(20, 'steam:11000013c2ce0a6', '827', 'Armando jaleo'),
(21, 'steam:11000010f2fc36c', '427', 'Tina'),
(22, 'steam:11000011bb7624b', '827', 'Jefe Mafia'),
(23, 'steam:11000010b08ef51', '827', 'Armando Jaleo'),
(24, 'steam:110000135fc6b1e', '873', 'Óscar (EMS) '),
(25, 'steam:110000135fc6b1e', '827', 'Armando (atraco)'),
(26, 'steam:110000135fc6b1e', '880', 'Carlos Stackman '),
(27, 'steam:110000134c6b441', '531', 'Franchu'),
(28, 'steam:11000010f2fc36c', '873', 'niátp'),
(29, 'steam:11000010febf2f0', '827', 'jaime'),
(30, 'steam:11000010f3310ac', '827', 'Markina'),
(31, 'steam:1100001138a08d6', '998', 'Cafe'),
(32, 'steam:110000116d82e19', '995', 'Novia'),
(33, 'steam:1100001348c4d8b', '827', 'Armando Jaleo'),
(34, 'steam:1100001186b7a77', '827', 'Armando Jaleo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `entering` varchar(255) DEFAULT NULL,
  `exit` varchar(255) DEFAULT NULL,
  `inside` varchar(255) DEFAULT NULL,
  `outside` varchar(255) DEFAULT NULL,
  `ipls` varchar(255) DEFAULT '[]',
  `gateway` varchar(255) DEFAULT NULL,
  `is_single` int(11) DEFAULT NULL,
  `is_room` int(11) DEFAULT NULL,
  `is_gateway` int(11) DEFAULT NULL,
  `room_menu` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `properties`
--

INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
(1, 'WhispymoundDrive', '2677 Whispymound Drive', '{\"y\":564.89,\"z\":182.959,\"x\":119.384}', '{\"x\":117.347,\"y\":559.506,\"z\":183.304}', '{\"y\":557.032,\"z\":183.301,\"x\":118.037}', '{\"y\":567.798,\"z\":182.131,\"x\":119.249}', '[]', NULL, 1, 1, 0, '{\"x\":118.748,\"y\":566.573,\"z\":175.697}', 1500000),
(2, 'NorthConkerAvenue2045', '2045 North Conker Avenue', '{\"x\":372.796,\"y\":428.327,\"z\":144.685}', '{\"x\":373.548,\"y\":422.982,\"z\":144.907},', '{\"y\":420.075,\"z\":145.904,\"x\":372.161}', '{\"x\":372.454,\"y\":432.886,\"z\":143.443}', '[]', NULL, 1, 1, 0, '{\"x\":377.349,\"y\":429.422,\"z\":137.3}', 1500000),
(3, 'RichardMajesticApt2', 'Richard Majestic, Apt 2', '{\"y\":-379.165,\"z\":37.961,\"x\":-936.363}', '{\"y\":-365.476,\"z\":113.274,\"x\":-913.097}', '{\"y\":-367.637,\"z\":113.274,\"x\":-918.022}', '{\"y\":-382.023,\"z\":37.961,\"x\":-943.626}', '[]', NULL, 1, 1, 0, '{\"x\":-927.554,\"y\":-377.744,\"z\":112.674}', 1700000),
(4, 'NorthConkerAvenue2044', '2044 North Conker Avenue', '{\"y\":440.8,\"z\":146.702,\"x\":346.964}', '{\"y\":437.456,\"z\":148.394,\"x\":341.683}', '{\"y\":435.626,\"z\":148.394,\"x\":339.595}', '{\"x\":350.535,\"y\":443.329,\"z\":145.764}', '[]', NULL, 1, 1, 0, '{\"x\":337.726,\"y\":436.985,\"z\":140.77}', 1500000),
(5, 'WildOatsDrive', '3655 Wild Oats Drive', '{\"y\":502.696,\"z\":136.421,\"x\":-176.003}', '{\"y\":497.817,\"z\":136.653,\"x\":-174.349}', '{\"y\":495.069,\"z\":136.666,\"x\":-173.331}', '{\"y\":506.412,\"z\":135.0664,\"x\":-177.927}', '[]', NULL, 1, 1, 0, '{\"x\":-174.725,\"y\":493.095,\"z\":129.043}', 1500000),
(6, 'HillcrestAvenue2862', '2862 Hillcrest Avenue', '{\"y\":596.58,\"z\":142.641,\"x\":-686.554}', '{\"y\":591.988,\"z\":144.392,\"x\":-681.728}', '{\"y\":590.608,\"z\":144.392,\"x\":-680.124}', '{\"y\":599.019,\"z\":142.059,\"x\":-689.492}', '[]', NULL, 1, 1, 0, '{\"x\":-680.46,\"y\":588.6,\"z\":136.769}', 1500000),
(7, 'LowEndApartment', 'Appartement de base', '{\"y\":-1078.735,\"z\":28.4031,\"x\":292.528}', '{\"y\":-1007.152,\"z\":-102.002,\"x\":265.845}', '{\"y\":-1002.802,\"z\":-100.008,\"x\":265.307}', '{\"y\":-1078.669,\"z\":28.401,\"x\":296.738}', '[]', NULL, 1, 1, 0, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 562500),
(8, 'MadWayneThunder', '2113 Mad Wayne Thunder', '{\"y\":454.955,\"z\":96.462,\"x\":-1294.433}', '{\"x\":-1289.917,\"y\":449.541,\"z\":96.902}', '{\"y\":446.322,\"z\":96.899,\"x\":-1289.642}', '{\"y\":455.453,\"z\":96.517,\"x\":-1298.851}', '[]', NULL, 1, 1, 0, '{\"x\":-1287.306,\"y\":455.901,\"z\":89.294}', 1500000),
(9, 'HillcrestAvenue2874', '2874 Hillcrest Avenue', '{\"x\":-853.346,\"y\":696.678,\"z\":147.782}', '{\"y\":690.875,\"z\":151.86,\"x\":-859.961}', '{\"y\":688.361,\"z\":151.857,\"x\":-859.395}', '{\"y\":701.628,\"z\":147.773,\"x\":-855.007}', '[]', NULL, 1, 1, 0, '{\"x\":-858.543,\"y\":697.514,\"z\":144.253}', 1500000),
(10, 'HillcrestAvenue2868', '2868 Hillcrest Avenue', '{\"y\":620.494,\"z\":141.588,\"x\":-752.82}', '{\"y\":618.62,\"z\":143.153,\"x\":-759.317}', '{\"y\":617.629,\"z\":143.153,\"x\":-760.789}', '{\"y\":621.281,\"z\":141.254,\"x\":-750.919}', '[]', NULL, 1, 1, 0, '{\"x\":-762.504,\"y\":618.992,\"z\":135.53}', 1500000),
(11, 'TinselTowersApt12', 'Tinsel Towers, Apt 42', '{\"y\":37.025,\"z\":42.58,\"x\":-618.299}', '{\"y\":58.898,\"z\":97.2,\"x\":-603.301}', '{\"y\":58.941,\"z\":97.2,\"x\":-608.741}', '{\"y\":30.603,\"z\":42.524,\"x\":-620.017}', '[]', NULL, 1, 1, 0, '{\"x\":-622.173,\"y\":54.585,\"z\":96.599}', 1700000),
(12, 'MiltonDrive', 'Milton Drive', '{\"x\":-775.17,\"y\":312.01,\"z\":84.658}', NULL, NULL, '{\"x\":-775.346,\"y\":306.776,\"z\":84.7}', '[]', NULL, 0, 0, 1, NULL, 0),
(13, 'Modern1Apartment', 'Appartement Moderne 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_01_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.661,\"y\":327.672,\"z\":210.396}', 1300000),
(14, 'Modern2Apartment', 'Appartement Moderne 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_01_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.735,\"y\":326.757,\"z\":186.313}', 1300000),
(15, 'Modern3Apartment', 'Appartement Moderne 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_01_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.386,\"y\":330.782,\"z\":195.08}', 1300000),
(16, 'Mody1Apartment', 'Appartement Mode 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_02_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.615,\"y\":327.878,\"z\":210.396}', 1300000),
(17, 'Mody2Apartment', 'Appartement Mode 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_02_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.297,\"y\":327.092,\"z\":186.313}', 1300000),
(18, 'Mody3Apartment', 'Appartement Mode 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_02_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.303,\"y\":330.932,\"z\":195.085}', 1300000),
(19, 'Vibrant1Apartment', 'Appartement Vibrant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_03_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.885,\"y\":327.641,\"z\":210.396}', 1300000),
(20, 'Vibrant2Apartment', 'Appartement Vibrant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_03_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.607,\"y\":327.344,\"z\":186.313}', 1300000),
(21, 'Vibrant3Apartment', 'Appartement Vibrant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_03_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.525,\"y\":330.851,\"z\":195.085}', 1300000),
(22, 'Sharp1Apartment', 'Appartement Persan 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_04_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.527,\"y\":327.89,\"z\":210.396}', 1300000),
(23, 'Sharp2Apartment', 'Appartement Persan 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_04_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.642,\"y\":326.497,\"z\":186.313}', 1300000),
(24, 'Sharp3Apartment', 'Appartement Persan 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_04_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.503,\"y\":331.318,\"z\":195.085}', 1300000),
(25, 'Monochrome1Apartment', 'Appartement Monochrome 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_05_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.289,\"y\":328.086,\"z\":210.396}', 1300000),
(26, 'Monochrome2Apartment', 'Appartement Monochrome 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_05_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.692,\"y\":326.762,\"z\":186.313}', 1300000),
(27, 'Monochrome3Apartment', 'Appartement Monochrome 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_05_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.094,\"y\":330.976,\"z\":195.085}', 1300000),
(28, 'Seductive1Apartment', 'Appartement Séduisant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_06_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.263,\"y\":328.104,\"z\":210.396}', 1300000),
(29, 'Seductive2Apartment', 'Appartement Séduisant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_06_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.655,\"y\":326.611,\"z\":186.313}', 1300000),
(30, 'Seductive3Apartment', 'Appartement Séduisant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_06_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.3,\"y\":331.414,\"z\":195.085}', 1300000),
(31, 'Regal1Apartment', 'Appartement Régal 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_07_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.956,\"y\":328.257,\"z\":210.396}', 1300000),
(32, 'Regal2Apartment', 'Appartement Régal 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_07_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.545,\"y\":326.659,\"z\":186.313}', 1300000),
(33, 'Regal3Apartment', 'Appartement Régal 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_07_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.087,\"y\":331.429,\"z\":195.123}', 1300000),
(34, 'Aqua1Apartment', 'Appartement Aqua 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_08_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.187,\"y\":328.47,\"z\":210.396}', 1300000),
(35, 'Aqua2Apartment', 'Appartement Aqua 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_08_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.658,\"y\":326.563,\"z\":186.313}', 1300000),
(36, 'Aqua3Apartment', 'Appartement Aqua 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_08_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.287,\"y\":331.084,\"z\":195.086}', 1300000),
(37, 'IntegrityWay', '4 Integrity Way', '{\"x\":-47.804,\"y\":-585.867,\"z\":36.956}', NULL, NULL, '{\"x\":-54.178,\"y\":-583.762,\"z\":35.798}', '[]', NULL, 0, 0, 1, NULL, 0),
(38, 'IntegrityWay28', '4 Integrity Way - Apt 28', NULL, '{\"x\":-31.409,\"y\":-594.927,\"z\":79.03}', '{\"x\":-26.098,\"y\":-596.909,\"z\":79.03}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-11.923,\"y\":-597.083,\"z\":78.43}', 1700000),
(39, 'IntegrityWay30', '4 Integrity Way - Apt 30', NULL, '{\"x\":-17.702,\"y\":-588.524,\"z\":89.114}', '{\"x\":-16.21,\"y\":-582.569,\"z\":89.114}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-26.327,\"y\":-588.384,\"z\":89.123}', 1700000),
(40, 'DellPerroHeights', 'Dell Perro Heights', '{\"x\":-1447.06,\"y\":-538.28,\"z\":33.74}', NULL, NULL, '{\"x\":-1440.022,\"y\":-548.696,\"z\":33.74}', '[]', NULL, 0, 0, 1, NULL, 0),
(41, 'DellPerroHeightst4', 'Dell Perro Heights - Apt 28', NULL, '{\"x\":-1452.125,\"y\":-540.591,\"z\":73.044}', '{\"x\":-1455.435,\"y\":-535.79,\"z\":73.044}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1467.058,\"y\":-527.571,\"z\":72.443}', 1700000),
(42, 'DellPerroHeightst7', 'Dell Perro Heights - Apt 30', NULL, '{\"x\":-1451.562,\"y\":-523.535,\"z\":55.928}', '{\"x\":-1456.02,\"y\":-519.209,\"z\":55.929}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1457.026,\"y\":-530.219,\"z\":55.937}', 1700000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `record_multi`
--

CREATE TABLE `record_multi` (
  `id` int(11) NOT NULL,
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `race` int(11) NOT NULL,
  `record` int(11) NOT NULL,
  `vehicle` int(11) NOT NULL,
  `nb_laps` int(11) NOT NULL,
  `multi_race_id` int(11) NOT NULL,
  `ended` tinyint(1) NOT NULL,
  `record_date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rented_vehicles`
--

CREATE TABLE `rented_vehicles` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shops`
--

CREATE TABLE `shops` (
  `id` int(11) NOT NULL,
  `store` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `shops`
--

INSERT INTO `shops` (`id`, `store`, `item`, `price`) VALUES
(1, 'TwentyFourSeven', 'bread', 1),
(2, 'TwentyFourSeven', 'water', 1),
(3, 'RobsLiquor', 'bread', 1),
(4, 'RobsLiquor', 'water', 3),
(5, 'LTDgasoline', 'bread', 2),
(6, 'LTDgasoline', 'water', 2),
(7, 'TwentyFourSeven', 'drill', 1000),
(8, 'RobsLiquor', 'drill', 1000),
(9, 'LTDgasoline', 'drill', 1000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `society_moneywash`
--

CREATE TABLE `society_moneywash` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) NOT NULL,
  `society` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solo_race`
--

CREATE TABLE `solo_race` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `record` int(11) NOT NULL,
  `race` int(11) NOT NULL,
  `vehicle` int(11) NOT NULL,
  `record_date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `truck_inventory`
--

CREATE TABLE `truck_inventory` (
  `id` int(11) NOT NULL,
  `item` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  `plate` varchar(8) NOT NULL,
  `name` varchar(255) NOT NULL,
  `owned` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trunk_inventory`
--

CREATE TABLE `trunk_inventory` (
  `id` int(11) NOT NULL,
  `plate` varchar(8) NOT NULL,
  `data` text NOT NULL,
  `owned` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `trunk_inventory`
--

INSERT INTO `trunk_inventory` (`id`, `plate`, `data`, `owned`) VALUES
(5, 'RFB 077 ', '{\"coffre\":[{\"count\":10,\"name\":\"morf_pooch\"}]}', 1),
(14, 'JJN 324 ', '{\"coffre\":[]}', 1),
(21, 'HZR 997 ', '{\"coffre\":[],\"black_money\":[{\"amount\":1097}]}', 1),
(28, 'BSF 330 ', '{\"coffre\":[{\"name\":\"morf\",\"count\":200}]}', 1),
(30, 'TBJ 463 ', '{\"weapons\":[{\"ammo\":100,\"name\":\"WEAPON_CARBINERIFLE\",\"label\":\"Carbine rifle\"},{\"ammo\":0,\"name\":\"WEAPON_PISTOL\",\"label\":\"Pistola\"},{\"ammo\":0,\"name\":\"WEAPON_APPISTOL\",\"label\":\"AP pistol\"},{\"ammo\":100,\"name\":\"WEAPON_APPISTOL\",\"label\":\"AP pistol\"}],\"coffre\":[{\"name\":\"marijuana\",\"count\":13},{\"name\":\"cannabis\",\"count\":1}]}', 1),
(31, 'EWZ 102 ', '{\"weapons\":[]}', 1),
(33, 'QEG 253 ', '{\"weapons\":[{\"ammo\":13,\"name\":\"WEAPON_FLAREGUN\",\"label\":\"Lanzallamas\"}],\"black_money\":[{\"amount\":8569}],\"coffre\":[{\"name\":\"morf\",\"count\":464}]}', 1),
(34, '89ZZP326', '{}', 0),
(35, 'FDI 020 ', '{}', 0),
(36, 'NOW 866 ', '{}', 0),
(37, 'LFL 323 ', '{}', 0),
(38, '60YJR960', '{}', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `twitter_accounts`
--

CREATE TABLE `twitter_accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `password` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `avatar_url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `twitter_likes`
--

CREATE TABLE `twitter_likes` (
  `id` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `tweetId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `twitter_tweets`
--

CREATE TABLE `twitter_tweets` (
  `id` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `likes` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `identifier` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `skin` longtext COLLATE utf8mb4_bin,
  `job` varchar(50) COLLATE utf8mb4_bin DEFAULT 'Desempleado',
  `job_grade` int(11) DEFAULT '0',
  `loadout` longtext COLLATE utf8mb4_bin,
  `position` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  `permission_level` int(11) DEFAULT NULL,
  `group` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `status` longtext COLLATE utf8mb4_bin,
  `last_property` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `phone_number` int(11) DEFAULT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `lastname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `dateofbirth` varchar(25) COLLATE utf8mb4_bin DEFAULT '',
  `sex` varchar(10) COLLATE utf8mb4_bin DEFAULT '',
  `height` varchar(5) COLLATE utf8mb4_bin DEFAULT '',
  `is_dead` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `status`, `last_property`, `phone_number`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `is_dead`) VALUES
('steam:11000010febf2f0', 'license:ecc3c8ce6e59659aee4d9dec7d4a93be73101a76', 0, 'xexuszgz', '{\"watches_1\":-1,\"bodyb_2\":0,\"eyebrows_1\":0,\"bracelets_1\":-1,\"lipstick_4\":2,\"torso_2\":0,\"bodyb_1\":0,\"watches_2\":0,\"sex\":0,\"beard_2\":0,\"torso_1\":2,\"chest_2\":0,\"face\":0,\"complexion_2\":0,\"arms\":0,\"bproof_2\":0,\"blush_3\":0,\"makeup_1\":0,\"age_2\":0,\"sun_1\":0,\"shoes_1\":0,\"bags_1\":0,\"eyebrows_4\":0,\"mask_1\":0,\"blush_2\":0,\"blemishes_1\":0,\"skin\":2,\"bracelets_2\":0,\"hair_1\":1,\"eyebrows_2\":0,\"beard_3\":0,\"beard_4\":0,\"chest_3\":0,\"tshirt_2\":0,\"eyebrows_3\":0,\"hair_color_1\":1,\"helmet_1\":-1,\"glasses_1\":0,\"pants_2\":4,\"decals_2\":0,\"lipstick_1\":0,\"chain_2\":0,\"shoes_2\":0,\"moles_2\":0,\"arms_2\":0,\"eye_color\":0,\"blemishes_2\":0,\"makeup_3\":0,\"makeup_2\":0,\"lipstick_3\":3,\"chain_1\":0,\"complexion_1\":0,\"pants_1\":0,\"tshirt_1\":1,\"hair_2\":3,\"decals_1\":2,\"lipstick_2\":0,\"moles_1\":0,\"chest_1\":0,\"mask_2\":0,\"age_1\":0,\"blush_1\":0,\"ears_2\":0,\"sun_2\":0,\"ears_1\":-1,\"glasses_2\":0,\"beard_1\":0,\"bproof_1\":0,\"makeup_4\":0,\"bags_2\":0,\"helmet_2\":0,\"hair_color_2\":1}', 'police', 4, '[]', '{\"x\":530.8,\"y\":-255.5,\"z\":48.4}', 867927, 0, 'user', '[{\"percent\":12.15,\"name\":\"hunger\",\"val\":121500},{\"percent\":21.6125,\"name\":\"thirst\",\"val\":216125},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', NULL, 27663, 'Jesus', 'Gimenez', '1993-01-03', 'm', '190', 0),
('steam:11000010f2fc36c', 'license:c3272007a305ebcf964105cb5dbd617ebef7399d', 140, 'markuins', '{\"hair_2\":2,\"beard_1\":0,\"blemishes_2\":0,\"lipstick_2\":0,\"eyebrows_1\":0,\"complexion_2\":0,\"chain_1\":5,\"sun_2\":0,\"makeup_4\":0,\"hair_color_2\":5,\"chest_2\":0,\"blemishes_1\":0,\"helmet_1\":56,\"eye_color\":0,\"blush_3\":0,\"decals_1\":13,\"bodyb_1\":0,\"lipstick_4\":0,\"torso_2\":21,\"bracelets_1\":-1,\"age_2\":0,\"bracelets_2\":0,\"decals_2\":0,\"mask_2\":0,\"bags_1\":0,\"ears_2\":0,\"arms\":0,\"tshirt_1\":106,\"bags_2\":0,\"complexion_1\":0,\"glasses_1\":5,\"beard_3\":0,\"chest_1\":0,\"glasses_2\":5,\"bproof_2\":0,\"watches_1\":2,\"mask_1\":0,\"hair_1\":14,\"blush_2\":0,\"pants_1\":5,\"hair_color_1\":10,\"watches_2\":2,\"helmet_2\":0,\"bproof_1\":0,\"sex\":0,\"chest_3\":0,\"moles_2\":0,\"face\":2,\"bodyb_2\":0,\"skin\":3,\"tshirt_2\":0,\"torso_1\":191,\"eyebrows_3\":0,\"shoes_2\":2,\"sun_1\":0,\"blush_1\":0,\"lipstick_1\":0,\"shoes_1\":8,\"chain_2\":4,\"ears_1\":-1,\"moles_1\":0,\"beard_2\":0,\"makeup_2\":0,\"lipstick_3\":0,\"makeup_1\":0,\"pants_2\":2,\"eyebrows_4\":0,\"eyebrows_2\":0,\"arms_2\":0,\"beard_4\":0,\"makeup_3\":0,\"age_1\":0}', 'mafia', 3, '[{\"name\":\"WEAPON_NIGHTSTICK\",\"label\":\"Nightstick\",\"ammo\":0,\"components\":[]},{\"name\":\"WEAPON_BAT\",\"label\":\"Bate\",\"ammo\":0,\"components\":[]},{\"name\":\"WEAPON_PISTOL\",\"label\":\"Pistola\",\"ammo\":42,\"components\":[\"clip_default\"]},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"label\":\"Pump shotgun\",\"ammo\":0,\"components\":[]},{\"name\":\"WEAPON_MACHETE\",\"label\":\"Machete\",\"ammo\":0,\"components\":[]}]', '{\"x\":230.3,\"y\":-777.9,\"z\":30.7}', 68491, 0, 'user', '[{\"percent\":49.83,\"name\":\"hunger\",\"val\":498300},{\"percent\":49.8725,\"name\":\"thirst\",\"val\":498725},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', NULL, 827, 'Armando', 'Jaleo', '13/04/1992', 'm', '160', 0),
('steam:110000135fc6b1e', 'license:5c14f98dd991a302efbfd56af20bfb6f56a16753', 178, 'Im-Franchu', '{\"hair_2\":0,\"tshirt_2\":1,\"bodyb_2\":0,\"lipstick_2\":0,\"eyebrows_1\":0,\"complexion_2\":0,\"chain_1\":0,\"lipstick_3\":0,\"makeup_4\":0,\"hair_color_2\":0,\"chest_2\":0,\"blemishes_1\":0,\"helmet_1\":-1,\"eye_color\":0,\"blush_3\":0,\"decals_1\":0,\"bodyb_1\":0,\"lipstick_4\":0,\"torso_2\":0,\"bracelets_1\":-1,\"age_2\":0,\"bracelets_2\":0,\"decals_2\":0,\"mask_2\":0,\"bags_1\":0,\"ears_2\":0,\"blush_1\":0,\"tshirt_1\":59,\"bags_2\":0,\"sun_1\":0,\"glasses_1\":5,\"beard_3\":0,\"chest_1\":0,\"glasses_2\":6,\"bproof_2\":0,\"moles_1\":0,\"mask_1\":0,\"hair_1\":2,\"blush_2\":0,\"pants_1\":5,\"hair_color_1\":0,\"watches_2\":0,\"helmet_2\":0,\"bproof_1\":0,\"sex\":0,\"chest_3\":0,\"moles_2\":0,\"watches_1\":-1,\"beard_1\":0,\"eyebrows_3\":0,\"makeup_2\":0,\"face\":0,\"complexion_1\":0,\"shoes_2\":0,\"blemishes_2\":0,\"beard_2\":0,\"lipstick_1\":0,\"shoes_1\":28,\"chain_2\":0,\"ears_1\":2,\"sun_2\":0,\"torso_1\":56,\"makeup_1\":0,\"skin\":0,\"arms\":41,\"arms_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"beard_4\":0,\"pants_2\":1,\"makeup_3\":0,\"age_1\":0}', 'police', 1, '[{\"ammo\":471,\"label\":\"Pistola\",\"name\":\"WEAPON_PISTOL\",\"components\":[\"clip_default\"]},{\"ammo\":471,\"label\":\"AP pistol\",\"name\":\"WEAPON_APPISTOL\",\"components\":[\"clip_default\"]},{\"ammo\":40,\"label\":\"Pump shotgun\",\"name\":\"WEAPON_PUMPSHOTGUN\",\"components\":[]},{\"ammo\":530,\"label\":\"Carbine rifle\",\"name\":\"WEAPON_CARBINERIFLE\",\"components\":[\"clip_default\"]},{\"ammo\":530,\"label\":\"Advanced rifle\",\"name\":\"WEAPON_ADVANCEDRIFLE\",\"components\":[\"clip_default\"]},{\"ammo\":100,\"label\":\"Taser\",\"name\":\"WEAPON_STUNGUN\",\"components\":[]},{\"ammo\":0,\"label\":\"Flashlight\",\"name\":\"WEAPON_FLASHLIGHT\",\"components\":[]}]', '{\"x\":220.9,\"y\":-794.6,\"z\":30.7}', 168800, 0, 'user', '[{\"percent\":78.61,\"name\":\"hunger\",\"val\":786100},{\"percent\":81.4575,\"name\":\"thirst\",\"val\":814575},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', NULL, 531, 'Franchu', 'Klein', '14-2-1989', 'm', '200', 0),
('steam:11000010bc9777a', 'license:8545f9938547b57b189fb5951c453ec229dc091d', 1006, 'ร๏ץlєץєภ๔ค', '{\"mask_2\":0,\"beard_1\":27,\"chain_1\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"beard_2\":10,\"eyebrows_1\":33,\"mask_1\":0,\"ears_1\":26,\"pants_1\":88,\"sun_1\":0,\"hair_color_1\":0,\"torso_2\":17,\"makeup_1\":3,\"lipstick_3\":0,\"blush_2\":0,\"face\":44,\"shoes_2\":15,\"tshirt_1\":107,\"decals_1\":0,\"blush_3\":0,\"complexion_2\":0,\"chest_2\":0,\"ears_2\":2,\"bracelets_2\":0,\"watches_1\":-1,\"bodyb_1\":0,\"watches_2\":0,\"decals_2\":0,\"bodyb_2\":0,\"chain_2\":0,\"sun_2\":0,\"shoes_1\":12,\"sex\":0,\"glasses_1\":23,\"glasses_2\":0,\"makeup_3\":0,\"makeup_2\":2,\"eyebrows_3\":10,\"bproof_1\":0,\"makeup_4\":3,\"age_2\":0,\"arms_2\":0,\"blemishes_2\":0,\"lipstick_1\":0,\"hair_2\":2,\"blemishes_1\":0,\"eyebrows_2\":6,\"helmet_1\":112,\"eye_color\":0,\"chest_1\":0,\"age_1\":0,\"beard_3\":0,\"bags_2\":0,\"arms\":21,\"bags_1\":0,\"pants_2\":17,\"lipstick_4\":0,\"complexion_1\":0,\"bracelets_1\":6,\"torso_1\":219,\"skin\":19,\"beard_4\":0,\"eyebrows_4\":0,\"hair_1\":6,\"blush_1\":0,\"moles_2\":0,\"helmet_2\":9,\"chest_3\":0,\"bproof_2\":0,\"moles_1\":0,\"hair_color_2\":30}', 'mechanic', 2, '[{\"ammo\":100,\"label\":\"AP pistol\",\"name\":\"WEAPON_APPISTOL\",\"components\":[\"clip_default\"]},{\"ammo\":20,\"label\":\"Pump shotgun\",\"name\":\"WEAPON_PUMPSHOTGUN\",\"components\":[]},{\"ammo\":30,\"label\":\"Carbine rifle\",\"name\":\"WEAPON_CARBINERIFLE\",\"components\":[\"clip_default\"]}]', '{\"x\":-63.3,\"y\":-788.7,\"z\":44.2}', 78100, 0, 'user', '[{\"percent\":48.02,\"name\":\"hunger\",\"val\":480200},{\"percent\":57.2075,\"name\":\"thirst\",\"val\":572075},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', NULL, 906, 'Soy', 'Leyenda', '1983/06/24', 'm', '185', 0),
('steam:11000010a16ed9a', 'license:a42dabf1da511dd165241a29b7b10f63be0ba979', 0, 'purput', '{\"hair_2\":0,\"torso_2\":0,\"watches_2\":0,\"lipstick_1\":0,\"moles_1\":0,\"makeup_4\":0,\"bracelets_1\":-1,\"decals_1\":0,\"beard_3\":18,\"decals_2\":0,\"shoes_1\":27,\"blemishes_2\":0,\"complexion_2\":0,\"bproof_2\":0,\"arms\":57,\"moles_2\":0,\"eyebrows_3\":2,\"age_1\":0,\"lipstick_2\":0,\"ears_2\":1,\"helmet_2\":0,\"face\":0,\"beard_2\":6,\"chain_2\":0,\"pants_1\":26,\"hair_1\":42,\"ears_1\":5,\"sun_2\":0,\"blush_3\":0,\"mask_1\":0,\"blemishes_1\":0,\"glasses_1\":0,\"bodyb_2\":0,\"bags_2\":0,\"age_2\":0,\"eyebrows_2\":9,\"bproof_1\":0,\"blush_1\":0,\"makeup_2\":0,\"bags_1\":0,\"torso_1\":161,\"blush_2\":0,\"beard_1\":10,\"sex\":0,\"pants_2\":10,\"eyebrows_1\":0,\"eyebrows_4\":2,\"tshirt_1\":107,\"helmet_1\":-1,\"tshirt_2\":0,\"bracelets_2\":0,\"skin\":5,\"lipstick_3\":0,\"hair_color_1\":36,\"beard_4\":0,\"arms_2\":0,\"makeup_3\":0,\"chest_3\":0,\"complexion_1\":0,\"makeup_1\":0,\"watches_1\":-1,\"hair_color_2\":15,\"chest_1\":0,\"eye_color\":0,\"chain_1\":0,\"lipstick_4\":0,\"chest_2\":0,\"mask_2\":0,\"bodyb_1\":0,\"sun_1\":0,\"glasses_2\":0,\"shoes_2\":0}', 'offpolice', 0, '[]', '{\"x\":341.0,\"y\":-1397.3,\"z\":32.5}', 23649, 0, 'user', '[{\"percent\":43.68,\"name\":\"hunger\",\"val\":436800},{\"percent\":45.26,\"name\":\"thirst\",\"val\":452600},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', NULL, 771, 'Purp', 'Gimenez Gimenez', '1993 10 10', 'm', '180', 0),
('steam:11000011a1c13e8', 'license:46ef12d6292ede17f755096908d39014a95b89d0', 2330, 'oscarmartinbgminecraft', '{\"mask_2\":0,\"beard_1\":0,\"chain_1\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"beard_2\":0,\"eyebrows_1\":0,\"mask_1\":0,\"ears_1\":-1,\"pants_1\":79,\"sun_1\":0,\"hair_color_1\":0,\"torso_2\":8,\"makeup_1\":0,\"lipstick_3\":0,\"blush_2\":0,\"face\":0,\"shoes_2\":0,\"tshirt_1\":15,\"decals_1\":0,\"blush_3\":0,\"complexion_2\":0,\"chest_2\":0,\"hair_2\":0,\"bracelets_2\":0,\"watches_1\":-1,\"bodyb_1\":0,\"shoes\":9,\"watches_2\":0,\"pants_2\":0,\"bodyb_2\":0,\"skin\":0,\"sun_2\":0,\"shoes_1\":53,\"sex\":0,\"glasses_1\":5,\"glasses_2\":0,\"eyebrows_4\":0,\"makeup_2\":0,\"eyebrows_3\":0,\"bproof_1\":0,\"makeup_4\":0,\"age_2\":0,\"makeup_3\":0,\"blemishes_2\":0,\"complexion_1\":0,\"chain_2\":0,\"blush_1\":0,\"eyebrows_2\":0,\"helmet_1\":56,\"lipstick_1\":0,\"chest_1\":0,\"blemishes_1\":0,\"lipstick_4\":0,\"bags_2\":0,\"arms\":57,\"bags_1\":0,\"beard_3\":0,\"beard_4\":0,\"moles_1\":0,\"age_1\":0,\"arms_2\":0,\"bproof_2\":0,\"torso_1\":75,\"moles_2\":0,\"hair_1\":21,\"ears_2\":0,\"decals_2\":0,\"helmet_2\":1,\"chest_3\":0,\"bracelets_1\":-1,\"eye_color\":1,\"hair_color_2\":0}', 'ambulance', 3, '[{\"name\":\"WEAPON_SNIPERRIFLE\",\"label\":\"Sniper rifle\",\"ammo\":0,\"components\":[\"scope\"]}]', '{\"x\":-703.5,\"y\":1054.1,\"z\":246.3}', 18987, 0, 'user', '[{\"percent\":18.82,\"name\":\"hunger\",\"val\":188200},{\"percent\":26.615,\"name\":\"thirst\",\"val\":266150},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', NULL, 873, 'Oscar', 'Martin', '1987', 'm', '144', 1),
('steam:110000107d06976', 'license:959cf893dc28533049849fbd6ba136b476a41587', 22342, 'ThecrazyDriver93', '{\"mask_2\":0,\"lipstick_4\":0,\"chain_1\":0,\"eye_color\":0,\"lipstick_2\":0,\"beard_2\":0,\"eyebrows_1\":0,\"mask_1\":0,\"ears_1\":-1,\"pants_1\":4,\"sun_1\":0,\"hair_color_1\":2,\"torso_2\":0,\"makeup_1\":0,\"lipstick_3\":0,\"blush_2\":0,\"face\":14,\"shoes_2\":1,\"tshirt_1\":19,\"decals_1\":4,\"arms_2\":5,\"complexion_2\":0,\"chest_2\":0,\"hair_2\":4,\"bracelets_2\":0,\"watches_1\":-1,\"bodyb_1\":0,\"watches_2\":0,\"decals_2\":0,\"bodyb_2\":0,\"skin\":1,\"sun_2\":0,\"shoes_1\":0,\"sex\":0,\"glasses_1\":0,\"glasses_2\":0,\"eyebrows_4\":0,\"makeup_2\":0,\"eyebrows_3\":0,\"bproof_1\":0,\"makeup_4\":0,\"age_2\":0,\"blemishes_1\":0,\"blemishes_2\":0,\"bproof_2\":0,\"ears_2\":0,\"lipstick_1\":0,\"eyebrows_2\":0,\"helmet_1\":-1,\"pants_2\":0,\"chest_1\":0,\"age_1\":0,\"tshirt_2\":0,\"bags_2\":0,\"arms\":0,\"bags_1\":0,\"moles_2\":0,\"beard_1\":0,\"moles_1\":0,\"bracelets_1\":-1,\"chain_2\":0,\"beard_4\":0,\"blush_1\":0,\"makeup_3\":0,\"hair_1\":6,\"blush_3\":0,\"beard_3\":0,\"helmet_2\":0,\"chest_3\":0,\"complexion_1\":0,\"torso_1\":4,\"hair_color_2\":2}', 'mafia', 2, '[]', '{\"x\":241.0,\"y\":-794.5,\"z\":30.5}', 300, 0, 'user', '[{\"val\":352300,\"percent\":35.23,\"name\":\"hunger\"},{\"val\":389225,\"percent\":38.9225,\"name\":\"thirst\"},{\"val\":0,\"percent\":0.0,\"name\":\"drunk\"}]', NULL, 562, 'Damius', 'Fusco', '1993-02-02', 'm', '170', 0),
('steam:110000134c6b441', 'license:64a2ef42234dff1268e7c76567b99b67a47acff3', 2448, '*ꄞꌅꁲꋊꀗꐞ*', '{\"eyebrows_1\":0,\"bproof_2\":0,\"beard_4\":0,\"makeup_2\":0,\"blush_2\":0,\"chest_2\":0,\"bracelets_2\":0,\"beard_2\":0,\"ears_2\":0,\"age_2\":0,\"tshirt_2\":0,\"blush_3\":0,\"helmet_1\":12,\"eyebrows_4\":0,\"age_1\":0,\"pants_1\":63,\"blush_1\":0,\"makeup_1\":0,\"makeup_4\":0,\"moles_2\":0,\"helmet_2\":2,\"skin\":0,\"blemishes_1\":0,\"eye_color\":0,\"glasses_2\":7,\"bproof_1\":0,\"complexion_2\":0,\"chain_2\":0,\"face\":0,\"sun_1\":0,\"sex\":0,\"lipstick_3\":0,\"mask_1\":0,\"arms\":1,\"watches_2\":0,\"bracelets_1\":-1,\"bags_1\":0,\"watches_1\":16,\"beard_3\":0,\"sun_2\":0,\"hair_2\":2,\"hair_color_2\":4,\"lipstick_1\":0,\"glasses_1\":5,\"eyebrows_3\":0,\"bodyb_1\":0,\"chest_1\":0,\"chest_3\":0,\"ears_1\":5,\"beard_1\":0,\"blemishes_2\":0,\"pants_2\":0,\"bodyb_2\":0,\"torso_2\":0,\"eyebrows_2\":0,\"makeup_3\":0,\"lipstick_2\":0,\"arms_2\":0,\"complexion_1\":0,\"mask_2\":0,\"bags_2\":0,\"shoes_1\":3,\"tshirt_1\":22,\"hair_1\":14,\"shoes_2\":4,\"lipstick_4\":0,\"decals_2\":0,\"decals_1\":0,\"chain_1\":0,\"moles_1\":0,\"torso_1\":11,\"hair_color_1\":15}', 'taxi', 0, '[{\"label\":\"Pistola\",\"name\":\"WEAPON_PISTOL\",\"components\":[\"clip_default\"],\"ammo\":18},{\"label\":\"Pump shotgun\",\"name\":\"WEAPON_PUMPSHOTGUN\",\"components\":[],\"ammo\":10}]', '{\"y\":-766.6,\"x\":215.0,\"z\":30.9}', 40975, 0, 'user', '[{\"name\":\"hunger\",\"val\":473500,\"percent\":47.35},{\"name\":\"thirst\",\"val\":605875,\"percent\":60.5875},{\"name\":\"drunk\",\"val\":0,\"percent\":0.0}]', NULL, 113, 'Franky', 'Santa', '1973/04/27', 'm', '175', 0),
('steam:11000010b13ed15', 'license:f475139b74ee203451f1f6bf5f275f4cc6a5db1f', 50000, 'Pizza 4 Quesos', '{\"eyebrows_1\":1,\"bproof_2\":0,\"beard_4\":0,\"makeup_2\":10,\"blush_2\":0,\"chest_2\":0,\"bracelets_2\":0,\"torso_2\":2,\"ears_2\":0,\"age_2\":0,\"tshirt_2\":2,\"blush_3\":0,\"helmet_1\":-1,\"eyebrows_4\":0,\"age_1\":0,\"pants_1\":38,\"blush_1\":0,\"makeup_1\":5,\"makeup_4\":0,\"moles_2\":0,\"helmet_2\":0,\"skin\":0,\"blemishes_1\":0,\"eye_color\":1,\"beard_1\":0,\"bproof_1\":0,\"complexion_2\":0,\"chain_2\":0,\"face\":21,\"sun_1\":0,\"mask_2\":0,\"lipstick_3\":0,\"mask_1\":0,\"arms\":0,\"shoes_1\":1,\"bracelets_1\":-1,\"bags_1\":0,\"watches_1\":-1,\"beard_3\":0,\"sun_2\":0,\"hair_2\":0,\"hair_color_2\":2,\"lipstick_1\":0,\"hair_1\":7,\"makeup_3\":0,\"blemishes_2\":0,\"chest_1\":0,\"tshirt_1\":11,\"ears_1\":-1,\"sex\":1,\"moles_1\":0,\"glasses_2\":0,\"bodyb_2\":0,\"eyebrows_3\":13,\"eyebrows_2\":10,\"complexion_1\":0,\"lipstick_2\":0,\"arms_2\":0,\"bodyb_1\":0,\"watches_2\":0,\"bags_2\":0,\"pants_2\":0,\"chest_3\":0,\"beard_2\":0,\"shoes_2\":5,\"lipstick_4\":0,\"decals_2\":0,\"decals_1\":0,\"chain_1\":0,\"torso_1\":10,\"glasses_1\":5,\"hair_color_1\":4}', 'desempleado', 0, '[]', '{\"y\":-2549.8,\"x\":-871.9,\"z\":14.0}', 90, 0, 'user', '[{\"name\":\"hunger\",\"val\":941700,\"percent\":94.17},{\"name\":\"thirst\",\"val\":956275,\"percent\":95.6275},{\"name\":\"drunk\",\"val\":0,\"percent\":0.0}]', NULL, 232, 'Amapola', 'Los Santos', '24/04/94', 'f', '140', 0),
('steam:11000013b6d8507', 'license:ad019fa337a8c36ec1dfa4bdd435904221c8d597', 50000, 'Pove ssj', NULL, 'desempleado', 0, '[]', '{\"y\":-2423.0,\"x\":-1154.2,\"z\":13.9}', 45, 0, 'user', '[{\"name\":\"hunger\",\"val\":989100,\"percent\":98.91},{\"name\":\"thirst\",\"val\":991825,\"percent\":99.1825},{\"name\":\"drunk\",\"val\":0,\"percent\":0.0}]', NULL, 989, 'Edu', 'Poveda', '30-04-2002', 'm', '190', 0),
('steam:110000117222fb4', 'license:7fe6e72f5a459a2f852d1d89773d668f6ab724e7', 50000, 'xxankxx2', NULL, 'desempleado', 0, '[]', '{\"y\":-2444.2,\"x\":-1149.0,\"z\":18.3}', 45, 0, 'user', '[{\"name\":\"hunger\",\"val\":985100,\"percent\":98.51},{\"name\":\"thirst\",\"val\":988825,\"percent\":98.8825},{\"name\":\"drunk\",\"val\":0,\"percent\":0.0}]', NULL, 207, 'Benito ', 'Camelas', '2000-5-5', 'm', '200', 0),
('steam:11000010f3310ac', 'license:19cf637d8da51ea6bdbedbea491b23f4ec620615', -720, 'juanitobanana93', '{\"hair_2\":4,\"beard_1\":28,\"bodyb_2\":0,\"lipstick_2\":0,\"eyebrows_1\":0,\"complexion_2\":4,\"makeup_2\":0,\"lipstick_3\":0,\"makeup_4\":0,\"hair_color_2\":0,\"chest_2\":0,\"blemishes_1\":0,\"helmet_1\":3,\"eye_color\":1,\"blush_3\":0,\"decals_1\":0,\"bodyb_1\":0,\"lipstick_4\":0,\"torso_2\":6,\"arms_2\":0,\"age_2\":0,\"bracelets_2\":0,\"decals_2\":0,\"mask_2\":0,\"bags_1\":0,\"ears_2\":0,\"arms\":0,\"tshirt_1\":15,\"bags_2\":0,\"complexion_1\":7,\"glasses_1\":19,\"beard_3\":0,\"beard_2\":10,\"glasses_2\":8,\"bproof_2\":0,\"watches_1\":-1,\"mask_1\":0,\"hair_1\":12,\"blush_2\":0,\"pants_1\":26,\"hair_color_1\":0,\"watches_2\":0,\"skin\":10,\"bproof_1\":0,\"sex\":0,\"chest_3\":0,\"makeup_1\":0,\"torso_1\":143,\"eyebrows_3\":0,\"face\":3,\"tshirt_2\":0,\"blemishes_2\":0,\"beard_4\":0,\"shoes_2\":13,\"sun_1\":10,\"blush_1\":2,\"lipstick_1\":0,\"shoes_1\":7,\"chain_2\":0,\"ears_1\":4,\"eyebrows_4\":0,\"chest_1\":0,\"moles_1\":0,\"chain_1\":0,\"sun_2\":0,\"pants_2\":0,\"moles_2\":0,\"eyebrows_2\":0,\"helmet_2\":1,\"bracelets_1\":-1,\"makeup_3\":0,\"age_1\":0}', 'mechanic', 4, '[{\"name\":\"WEAPON_APPISTOL\",\"label\":\"AP pistol\",\"ammo\":441,\"components\":[\"clip_default\"]},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"label\":\"Pump shotgun\",\"ammo\":115,\"components\":[]}]', '{\"x\":265.0,\"y\":-750.3,\"z\":30.1}', 90480, 0, 'user', '[{\"percent\":13.68,\"name\":\"hunger\",\"val\":136800},{\"percent\":27.76,\"name\":\"thirst\",\"val\":277600},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', NULL, 108, 'Anuel', 'AA', '4/5/1888', 'm', '199', 0),
('steam:11000013c2ce0a6', 'license:a8ad75797240dd1d28977aefcaf4fde6b5f41040', 2397, 'BbyTina', '{\"hair_2\":0,\"tshirt_2\":0,\"watches_2\":1,\"lipstick_1\":3,\"moles_1\":0,\"makeup_4\":10,\"bracelets_1\":-1,\"decals_1\":0,\"beard_3\":0,\"decals_2\":0,\"shoes_1\":0,\"blemishes_2\":0,\"complexion_2\":0,\"bproof_2\":0,\"arms\":15,\"glasses_2\":0,\"eyebrows_3\":11,\"helmet_1\":-1,\"lipstick_2\":10,\"chain_1\":2,\"helmet_2\":0,\"face\":21,\"beard_2\":0,\"chain_2\":1,\"bracelets_2\":0,\"hair_1\":45,\"ears_1\":-1,\"sun_2\":0,\"blush_3\":14,\"hair_color_1\":5,\"blemishes_1\":0,\"glasses_1\":5,\"bodyb_2\":0,\"bags_2\":0,\"age_2\":0,\"eyebrows_2\":10,\"bproof_1\":0,\"blush_1\":6,\"mask_1\":0,\"moles_2\":0,\"torso_1\":13,\"blush_2\":3,\"beard_1\":0,\"makeup_2\":9,\"eyebrows_1\":1,\"mask_2\":0,\"eyebrows_4\":6,\"sex\":1,\"pants_2\":0,\"makeup_1\":14,\"tshirt_1\":3,\"torso_2\":5,\"lipstick_3\":53,\"bodyb_1\":0,\"beard_4\":0,\"arms_2\":0,\"makeup_3\":38,\"skin\":0,\"complexion_1\":0,\"chest_3\":0,\"watches_1\":7,\"hair_color_2\":2,\"chest_1\":0,\"eye_color\":3,\"ears_2\":0,\"lipstick_4\":6,\"bags_1\":0,\"age_1\":0,\"chest_2\":0,\"sun_1\":0,\"pants_1\":9,\"shoes_2\":0}', 'offpolice', 0, '[{\"ammo\":0,\"label\":\"Nightstick\",\"name\":\"WEAPON_NIGHTSTICK\",\"components\":[]},{\"ammo\":143,\"label\":\"Pistola\",\"name\":\"WEAPON_PISTOL\",\"components\":[\"clip_default\"]},{\"ammo\":143,\"label\":\"AP pistol\",\"name\":\"WEAPON_APPISTOL\",\"components\":[\"clip_default\"]},{\"ammo\":39,\"label\":\"Pump shotgun\",\"name\":\"WEAPON_PUMPSHOTGUN\",\"components\":[]},{\"ammo\":110,\"label\":\"Carbine rifle\",\"name\":\"WEAPON_CARBINERIFLE\",\"components\":[\"clip_default\"]},{\"ammo\":110,\"label\":\"Advanced rifle\",\"name\":\"WEAPON_ADVANCEDRIFLE\",\"components\":[\"clip_default\"]},{\"ammo\":10,\"label\":\"Sniper rifle\",\"name\":\"WEAPON_SNIPERRIFLE\",\"components\":[\"scope\"]},{\"ammo\":0,\"label\":\"Flashlight\",\"name\":\"WEAPON_FLASHLIGHT\",\"components\":[]}]', '{\"x\":415.0,\"y\":-793.7,\"z\":29.3}', 10708, 0, 'user', '[{\"percent\":40.02,\"name\":\"hunger\",\"val\":400200},{\"percent\":42.515,\"name\":\"thirst\",\"val\":425150},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', NULL, 427, 'Valentina', 'Marin', '29-04-2001', 'f', '165', 0),
('steam:11000010b08ef51', 'license:b96e292238a643d53a8b06676b0c8b859ef6d81a', 50, 'Niku69', '{\"shoes_1\":1,\"bodyb_1\":0,\"age_1\":0,\"shoes_2\":0,\"complexion_1\":0,\"eye_color\":0,\"chain_2\":0,\"hair_color_1\":3,\"bags_1\":0,\"blush_1\":0,\"helmet_2\":0,\"eyebrows_1\":0,\"lipstick_3\":0,\"face\":0,\"decals_1\":0,\"ears_1\":-1,\"glasses_2\":0,\"makeup_4\":0,\"sun_1\":0,\"chest_2\":0,\"chain_1\":0,\"moles_1\":0,\"hair_2\":0,\"beard_2\":0,\"blemishes_2\":0,\"eyebrows_2\":0,\"mask_2\":0,\"watches_1\":-1,\"watches_2\":0,\"arms\":0,\"makeup_1\":0,\"chest_3\":0,\"pants_2\":0,\"sex\":0,\"bodyb_2\":0,\"blemishes_1\":0,\"beard_1\":0,\"blush_3\":0,\"hair_1\":13,\"chest_1\":0,\"bproof_2\":0,\"tshirt_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"complexion_2\":0,\"makeup_3\":0,\"bags_2\":0,\"beard_3\":0,\"age_2\":0,\"pants_1\":4,\"torso_2\":0,\"eyebrows_3\":0,\"bproof_1\":0,\"eyebrows_4\":0,\"torso_1\":7,\"skin\":0,\"lipstick_1\":0,\"bracelets_2\":0,\"mask_1\":0,\"decals_2\":0,\"ears_2\":0,\"glasses_1\":0,\"moles_2\":0,\"makeup_2\":0,\"lipstick_4\":0,\"blush_2\":0,\"hair_color_2\":0,\"helmet_1\":-1,\"sun_2\":0,\"tshirt_2\":0,\"bracelets_1\":-1,\"arms_2\":0}', 'desempleado', 0, '[]', '{\"z\":31.3,\"y\":6279.9,\"x\":-120.8}', 12005, 0, 'user', '[{\"percent\":96.69,\"val\":966900,\"name\":\"hunger\"},{\"percent\":97.495,\"val\":974950,\"name\":\"thirst\"},{\"percent\":0.0,\"val\":0,\"name\":\"drunk\"}]', NULL, 249, 'Thomas', 'Turbado', '1998/04/28', 'm', '184', 0),
('steam:11000011bb7624b', 'license:b902e9eb0f245a35f4010857b706c498bfdf0d85', -1485, 'BRUH', '{\"shoes_1\":1,\"bodyb_1\":0,\"age_1\":0,\"shoes_2\":0,\"complexion_1\":0,\"mask_1\":0,\"chain_2\":0,\"hair_color_1\":0,\"bags_1\":0,\"blush_1\":0,\"helmet_2\":0,\"lipstick_1\":0,\"lipstick_3\":0,\"face\":0,\"decals_1\":0,\"eyebrows_3\":0,\"glasses_2\":0,\"makeup_4\":0,\"moles_2\":0,\"chest_2\":0,\"chain_1\":0,\"moles_1\":0,\"hair_2\":0,\"beard_2\":0,\"blemishes_2\":0,\"eyebrows_2\":0,\"mask_2\":0,\"watches_1\":-1,\"watches_2\":0,\"arms\":0,\"makeup_1\":0,\"chest_3\":0,\"pants_2\":0,\"sex\":0,\"bodyb_2\":0,\"blemishes_1\":0,\"beard_1\":0,\"blush_3\":0,\"hair_1\":2,\"chest_1\":0,\"bproof_2\":0,\"tshirt_1\":15,\"lipstick_2\":0,\"beard_4\":0,\"complexion_2\":0,\"makeup_3\":0,\"bags_2\":0,\"bproof_1\":0,\"age_2\":0,\"pants_1\":4,\"torso_1\":187,\"blush_2\":0,\"torso_2\":0,\"eyebrows_4\":0,\"bracelets_2\":0,\"skin\":0,\"eye_color\":0,\"beard_3\":0,\"eyebrows_1\":0,\"ears_1\":-1,\"hair_color_2\":0,\"glasses_1\":0,\"decals_2\":0,\"makeup_2\":0,\"lipstick_4\":0,\"sun_2\":0,\"sun_1\":0,\"helmet_1\":-1,\"ears_2\":0,\"bracelets_1\":-1,\"tshirt_2\":0,\"arms_2\":0}', 'police', 4, '[{\"ammo\":0,\"label\":\"Cuchillo\",\"name\":\"WEAPON_KNIFE\",\"components\":[]},{\"ammo\":9999,\"label\":\"AP pistol\",\"name\":\"WEAPON_APPISTOL\",\"components\":[\"clip_default\"]},{\"ammo\":9999,\"label\":\"Pistol .50\",\"name\":\"WEAPON_PISTOL50\",\"components\":[\"clip_default\"]},{\"ammo\":9999,\"label\":\"Revólver pesado\",\"name\":\"WEAPON_REVOLVER\",\"components\":[]},{\"ammo\":90,\"label\":\"Pump shotgun\",\"name\":\"WEAPON_PUMPSHOTGUN\",\"components\":[]},{\"ammo\":9999,\"label\":\"Carbine rifle\",\"name\":\"WEAPON_CARBINERIFLE\",\"components\":[\"clip_default\"]},{\"ammo\":9999,\"label\":\"Advanced rifle\",\"name\":\"WEAPON_ADVANCEDRIFLE\",\"components\":[\"clip_default\"]},{\"ammo\":200,\"label\":\"Taser\",\"name\":\"WEAPON_STUNGUN\",\"components\":[]}]', '{\"x\":416.8,\"y\":-981.0,\"z\":29.4}', 83103, 0, 'user', '[{\"percent\":21.31,\"name\":\"hunger\",\"val\":213100},{\"percent\":28.4825,\"name\":\"thirst\",\"val\":284825},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', NULL, 501, 'The', 'Sentex', '2000/11/30', 'm', '185', 0),
('steam:11000010d0c1172', 'license:3b0ecb9ea176ad2d3ff0ed2ba55d56aca2b17178', 0, 'CARCEL', '{\"shoes_1\":0,\"bodyb_1\":0,\"age_1\":0,\"shoes_2\":0,\"complexion_1\":0,\"mask_1\":0,\"chain_2\":0,\"hair_color_1\":0,\"bags_1\":0,\"blush_1\":0,\"helmet_2\":0,\"eyebrows_1\":0,\"lipstick_3\":0,\"face\":3,\"decals_1\":0,\"eyebrows_3\":0,\"glasses_2\":0,\"makeup_4\":0,\"moles_2\":0,\"chest_2\":0,\"chain_1\":0,\"moles_1\":0,\"hair_2\":0,\"beard_2\":0,\"blemishes_2\":0,\"eyebrows_2\":0,\"mask_2\":0,\"watches_1\":-1,\"watches_2\":0,\"arms\":0,\"makeup_1\":0,\"chest_3\":0,\"pants_2\":0,\"sex\":0,\"bodyb_2\":0,\"torso_2\":0,\"beard_1\":0,\"blush_3\":0,\"hair_1\":1,\"chest_1\":0,\"decals_2\":0,\"torso_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"complexion_2\":0,\"makeup_3\":0,\"bags_2\":0,\"bproof_1\":0,\"bproof_2\":0,\"pants_1\":0,\"age_2\":0,\"ears_1\":-1,\"tshirt_1\":0,\"tshirt_2\":0,\"bracelets_2\":0,\"skin\":2,\"eye_color\":0,\"beard_3\":0,\"lipstick_1\":0,\"sun_1\":0,\"ears_2\":0,\"glasses_1\":0,\"blush_2\":0,\"bracelets_1\":-1,\"lipstick_4\":0,\"blemishes_1\":0,\"makeup_2\":0,\"sun_2\":0,\"eyebrows_4\":0,\"hair_color_2\":0,\"helmet_1\":-1,\"arms_2\":0}', 'desempleado', 0, '[]', '{\"z\":13.8,\"y\":-2713.8,\"x\":-968.3}', 0, 0, 'user', '[{\"percent\":99.11,\"name\":\"hunger\",\"val\":991100},{\"percent\":99.3325,\"name\":\"thirst\",\"val\":993325},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', NULL, 104, 'Kasaka', 'Nigga', '28/06/2000', 'm', '185', 0),
('steam:11000010726b8b3', 'license:1d144fee34e6ee48cc4800a137df887c65d11629', 0, 'Habibi', '{\"blemishes_1\":0,\"tshirt_1\":4,\"sex\":0,\"bodyb_2\":0,\"sun_1\":0,\"hair_2\":4,\"chest_1\":0,\"shoes_2\":14,\"blemishes_2\":0,\"beard_1\":0,\"moles_2\":0,\"torso_2\":3,\"hair_color_1\":29,\"eyebrows_2\":0,\"makeup_2\":0,\"lipstick_2\":0,\"arms_2\":0,\"helmet_1\":-1,\"arms\":1,\"tshirt_2\":0,\"beard_3\":0,\"hair_1\":3,\"makeup_3\":0,\"age_2\":0,\"eye_color\":0,\"lipstick_1\":0,\"bracelets_1\":-1,\"decals_1\":0,\"beard_2\":0,\"makeup_4\":0,\"ears_1\":-1,\"bracelets_2\":0,\"mask_2\":0,\"mask_1\":0,\"chest_3\":0,\"makeup_1\":0,\"glasses_1\":5,\"glasses_2\":5,\"chain_2\":0,\"torso_1\":23,\"ears_2\":0,\"bodyb_1\":0,\"lipstick_3\":0,\"watches_2\":0,\"moles_1\":0,\"bproof_1\":0,\"age_1\":0,\"hair_color_2\":14,\"beard_4\":0,\"bags_2\":0,\"complexion_1\":0,\"shoes_1\":10,\"chest_2\":0,\"sun_2\":0,\"eyebrows_1\":0,\"watches_1\":-1,\"complexion_2\":0,\"pants_1\":4,\"blush_3\":0,\"bproof_2\":0,\"chain_1\":0,\"blush_1\":0,\"pants_2\":0,\"face\":44,\"skin\":3,\"eyebrows_4\":0,\"eyebrows_3\":0,\"bags_1\":0,\"blush_2\":0,\"decals_2\":0,\"helmet_2\":0,\"lipstick_4\":0}', 'taxi', 0, '[]', '{\"z\":31.1,\"x\":-303.5,\"y\":-987.7}', 90, 0, 'user', '[{\"name\":\"hunger\",\"percent\":93.82,\"val\":938200},{\"name\":\"thirst\",\"percent\":95.365,\"val\":953650},{\"name\":\"drunk\",\"percent\":0.0,\"val\":0}]', NULL, 440, 'Adry', 'Lopez', '17/04/1998', 'm', '150', 0),
('steam:1100001384ce0d6', 'license:b3c409eeb9732a4fffa3c87f30081e32ec4944ae', 0, 'Carlos Statman', '{\"hair_2\":3,\"tshirt_2\":0,\"watches_2\":0,\"lipstick_1\":0,\"moles_1\":2,\"makeup_4\":0,\"chest_2\":10,\"decals_1\":60,\"beard_3\":0,\"decals_2\":0,\"shoes_1\":20,\"blemishes_2\":0,\"complexion_2\":2,\"bproof_2\":0,\"arms\":11,\"glasses_2\":0,\"eyebrows_3\":0,\"helmet_1\":-1,\"lipstick_2\":0,\"ears_2\":0,\"helmet_2\":0,\"face\":25,\"beard_2\":6,\"chain_2\":0,\"pants_1\":25,\"hair_1\":1,\"ears_1\":0,\"skin\":0,\"blush_3\":63,\"hair_color_1\":15,\"blemishes_1\":0,\"glasses_1\":8,\"bodyb_2\":10,\"bags_2\":0,\"tshirt_1\":15,\"eyebrows_2\":10,\"bracelets_2\":0,\"bproof_1\":0,\"blush_1\":31,\"torso_2\":1,\"age_2\":10,\"torso_1\":95,\"blush_2\":2,\"beard_1\":18,\"bracelets_1\":-1,\"sex\":0,\"sun_2\":2,\"eyebrows_4\":0,\"age_1\":1,\"pants_2\":0,\"eyebrows_1\":17,\"makeup_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chest_3\":0,\"beard_4\":0,\"arms_2\":0,\"makeup_3\":0,\"chain_1\":0,\"complexion_1\":3,\"bags_1\":0,\"watches_1\":14,\"hair_color_2\":32,\"chest_1\":4,\"eye_color\":5,\"bodyb_1\":2,\"lipstick_4\":0,\"shoes\":9,\"mask_2\":0,\"moles_2\":3,\"sun_1\":4,\"makeup_2\":0,\"shoes_2\":0}', 'ambulance', 0, '[{\"ammo\":10,\"label\":\"Pump shotgun\",\"name\":\"WEAPON_PUMPSHOTGUN\",\"components\":[]}]', '{\"x\":221.5,\"y\":-794.6,\"z\":30.9}', 110883, 0, 'user', '[{\"percent\":44.48,\"name\":\"hunger\",\"val\":444800},{\"percent\":45.86,\"name\":\"thirst\",\"val\":458600},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', NULL, 880, 'Carlos', 'Statman', '1992-11-01', 'm', '180', 0),
('steam:11000013294aa18', 'license:26a675dda8455d54426f36d51083fd1a58183414', 0, '♔Lely♔', '{\"decals_1\":1,\"chest_2\":0,\"skin\":34,\"makeup_2\":10,\"beard_2\":0,\"mask_1\":0,\"chain_2\":1,\"blush_1\":0,\"moles_1\":2,\"chest_1\":0,\"face\":21,\"eyebrows_4\":3,\"arms\":12,\"eyebrows_2\":6,\"bracelets_2\":0,\"chest_3\":0,\"bproof_1\":0,\"bags_2\":0,\"glasses_2\":7,\"shoes_1\":7,\"blush_2\":0,\"bracelets_1\":-1,\"makeup_4\":0,\"blemishes_1\":0,\"sun_1\":0,\"torso_2\":0,\"sun_2\":0,\"glasses_1\":5,\"bproof_2\":0,\"beard_4\":0,\"eyebrows_3\":4,\"bodyb_2\":0,\"helmet_2\":0,\"helmet_1\":-1,\"blush_3\":0,\"moles_2\":0,\"watches_2\":0,\"tshirt_2\":0,\"decals_2\":0,\"pants_1\":12,\"eyebrows_1\":2,\"bodyb_1\":0,\"hair_1\":10,\"tshirt_1\":2,\"age_1\":0,\"torso_1\":26,\"shoes_2\":1,\"lipstick_1\":4,\"complexion_2\":0,\"lipstick_2\":5,\"arms_2\":0,\"pants_2\":7,\"chain_1\":2,\"makeup_3\":6,\"makeup_1\":0,\"lipstick_4\":1,\"blemishes_2\":0,\"hair_2\":6,\"hair_color_1\":15,\"ears_2\":4,\"lipstick_3\":10,\"beard_3\":0,\"age_2\":0,\"beard_1\":0,\"watches_1\":3,\"mask_2\":0,\"complexion_1\":0,\"sex\":1,\"eye_color\":2,\"hair_color_2\":20,\"bags_1\":0,\"ears_1\":1}', 'trucker', 0, '[{\"components\":[\"clip_default\"],\"ammo\":24,\"label\":\"Pistola\",\"name\":\"WEAPON_PISTOL\"},{\"components\":[],\"ammo\":10,\"label\":\"Pump shotgun\",\"name\":\"WEAPON_PUMPSHOTGUN\"}]', '{\"z\":30.5,\"x\":-231.2,\"y\":-1433.4}', 345, 0, 'user', '[{\"percent\":78.88,\"name\":\"hunger\",\"val\":788800},{\"percent\":84.16,\"name\":\"thirst\",\"val\":841600},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', NULL, 446, 'Eustaquia', 'Martinez', '1995-02-04', 'f', '165', 1),
('steam:1100001074b358f', 'license:9f7113f2b234cc76a4368111dad59edd89ccf856', 1750, 'Joel', '{\"hair_2\":0,\"torso_2\":0,\"watches_2\":0,\"lipstick_1\":0,\"moles_1\":0,\"makeup_1\":0,\"bracelets_1\":-1,\"decals_1\":0,\"beard_3\":0,\"decals_2\":0,\"shoes_1\":8,\"blemishes_2\":0,\"complexion_2\":0,\"bproof_2\":0,\"arms\":0,\"glasses_2\":0,\"eyebrows_3\":0,\"age_1\":0,\"pants_2\":0,\"chain_1\":0,\"helmet_2\":0,\"face\":0,\"beard_2\":0,\"chain_2\":0,\"bracelets_2\":0,\"mask_2\":0,\"ears_1\":-1,\"skin\":5,\"blush_3\":0,\"mask_1\":0,\"blemishes_1\":0,\"glasses_1\":5,\"bodyb_2\":0,\"bags_2\":0,\"age_2\":0,\"bodyb_1\":0,\"bproof_1\":0,\"blush_1\":0,\"moles_2\":0,\"bags_1\":0,\"torso_1\":191,\"blush_2\":0,\"beard_1\":0,\"hair_1\":50,\"pants_1\":26,\"ears_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"eyebrows_1\":0,\"tshirt_1\":65,\"sun_2\":0,\"watches_1\":0,\"lipstick_3\":0,\"tshirt_2\":0,\"beard_4\":0,\"arms_2\":0,\"makeup_3\":0,\"lipstick_2\":0,\"complexion_1\":0,\"helmet_1\":5,\"sex\":0,\"hair_color_2\":0,\"chest_1\":0,\"eye_color\":0,\"hair_color_1\":0,\"lipstick_4\":0,\"chest_3\":0,\"makeup_2\":0,\"makeup_4\":0,\"sun_1\":0,\"chest_2\":0,\"shoes_2\":0}', 'desempleado', 0, '[{\"name\":\"WEAPON_PUMPSHOTGUN\",\"label\":\"Pump shotgun\",\"ammo\":33,\"components\":[]},{\"name\":\"WEAPON_CARBINERIFLE\",\"label\":\"Carbine rifle\",\"ammo\":21,\"components\":[\"clip_default\"]},{\"name\":\"WEAPON_SNIPERRIFLE\",\"label\":\"Sniper rifle\",\"ammo\":24,\"components\":[\"scope\"]}]', '{\"x\":415.2,\"y\":-824.4,\"z\":29.1}', 1440, 0, 'user', '[{\"percent\":45.7,\"name\":\"hunger\",\"val\":457000},{\"percent\":46.775,\"name\":\"thirst\",\"val\":467750},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', NULL, 614, 'Joel', 'Martin', '06/06/199', 'm', '178', 0),
('steam:11000010f742b73', 'license:b5113be54a8ffc04673bc506c8e6ff07ba0a290a', 0, '✪ FR1BER6', '{\"hair_2\":0,\"tshirt_2\":0,\"blemishes_2\":0,\"lipstick_2\":0,\"eyebrows_1\":0,\"complexion_2\":0,\"chain_1\":0,\"beard_4\":0,\"makeup_4\":0,\"hair_color_2\":0,\"chest_2\":0,\"blemishes_1\":0,\"helmet_1\":-1,\"eye_color\":0,\"blush_3\":0,\"decals_1\":0,\"bodyb_1\":0,\"lipstick_4\":0,\"torso_2\":0,\"bracelets_1\":-1,\"age_2\":0,\"bracelets_2\":0,\"decals_2\":0,\"mask_2\":0,\"bags_1\":0,\"ears_2\":0,\"arms\":0,\"tshirt_1\":0,\"bags_2\":0,\"sun_1\":0,\"glasses_1\":0,\"beard_3\":0,\"chest_1\":0,\"glasses_2\":0,\"bproof_2\":0,\"moles_1\":0,\"mask_1\":0,\"hair_1\":0,\"blush_2\":0,\"pants_1\":0,\"hair_color_1\":0,\"watches_2\":0,\"pants_2\":0,\"bproof_1\":0,\"torso_1\":0,\"chest_3\":0,\"moles_2\":0,\"beard_1\":0,\"eyebrows_4\":0,\"beard_2\":0,\"makeup_1\":0,\"eyebrows_3\":0,\"face\":0,\"shoes_2\":0,\"helmet_2\":0,\"complexion_1\":0,\"lipstick_1\":0,\"shoes_1\":0,\"chain_2\":0,\"ears_1\":-1,\"watches_1\":-1,\"bodyb_2\":0,\"lipstick_3\":0,\"sun_2\":0,\"skin\":0,\"arms_2\":0,\"sex\":0,\"eyebrows_2\":0,\"makeup_2\":0,\"blush_1\":0,\"makeup_3\":0,\"age_1\":0}', 'tailor', 0, '[{\"ammo\":30,\"components\":[\"clip_default\"],\"name\":\"WEAPON_CARBINERIFLE\",\"label\":\"Carbine rifle\"}]', '{\"x\":1731.8,\"y\":6419.8,\"z\":35.0}', 1496, 0, 'user', '[{\"val\":587500,\"percent\":58.75,\"name\":\"hunger\"},{\"val\":712225,\"percent\":71.2225,\"name\":\"thirst\"},{\"val\":0,\"percent\":0.0,\"name\":\"drunk\"}]', NULL, 646, 'Hijo', 'Puta', '2000-04-1', 'm', '200', 0),
('steam:11000010e572719', 'license:b033e583892bb126d0ca96eb73dea072e40711b1', 47250, 'alexfdezperera', '{\"hair_2\":5,\"tshirt_2\":0,\"blemishes_2\":0,\"lipstick_2\":0,\"eyebrows_1\":0,\"complexion_2\":0,\"makeup_2\":0,\"beard_4\":0,\"makeup_4\":0,\"hair_color_2\":5,\"chest_2\":0,\"blemishes_1\":0,\"helmet_1\":-1,\"eye_color\":0,\"blush_3\":0,\"decals_1\":0,\"bodyb_1\":0,\"lipstick_4\":0,\"torso_2\":0,\"bracelets_1\":-1,\"age_2\":0,\"bracelets_2\":0,\"decals_2\":0,\"mask_2\":0,\"bags_1\":0,\"ears_2\":0,\"arms\":0,\"tshirt_1\":7,\"bags_2\":0,\"sun_1\":0,\"glasses_1\":2,\"beard_3\":0,\"beard_2\":0,\"glasses_2\":0,\"bproof_2\":0,\"moles_1\":0,\"mask_1\":0,\"hair_1\":9,\"blush_2\":0,\"pants_1\":7,\"hair_color_1\":3,\"watches_2\":0,\"pants_2\":0,\"bproof_1\":0,\"eyebrows_4\":0,\"chest_3\":0,\"makeup_1\":0,\"chest_1\":0,\"chain_1\":0,\"skin\":3,\"face\":4,\"beard_1\":0,\"eyebrows_3\":0,\"shoes_2\":0,\"complexion_1\":0,\"lipstick_3\":0,\"lipstick_1\":0,\"shoes_1\":0,\"chain_2\":0,\"ears_1\":-1,\"sun_2\":0,\"bodyb_2\":0,\"helmet_2\":0,\"watches_1\":-1,\"sex\":1,\"torso_1\":7,\"moles_2\":0,\"eyebrows_2\":0,\"blush_1\":0,\"arms_2\":0,\"makeup_3\":0,\"age_1\":0}', 'unemployed', 0, '[{\"label\":\"Sniper rifle\",\"name\":\"WEAPON_SNIPERRIFLE\",\"components\":[\"scope\"],\"ammo\":20}]', '{\"y\":-1407.5,\"x\":224.5,\"z\":29.6}', 2935, 0, 'user', '[{\"name\":\"hunger\",\"val\":415400,\"percent\":41.54},{\"name\":\"thirst\",\"val\":436550,\"percent\":43.655},{\"name\":\"drunk\",\"val\":0,\"percent\":0.0}]', NULL, 696, 'Samanta', 'Feledespatp', '111111', 'f', '200', 0),
('steam:110000115821821', 'license:58da23c3761844dfcd25d7d9d12eb8df964c373c', 0, 'Simon', '{\"hair_2\":0,\"tshirt_2\":0,\"bodyb_2\":0,\"lipstick_2\":0,\"eyebrows_1\":0,\"complexion_2\":0,\"makeup_2\":0,\"sun_2\":0,\"makeup_4\":0,\"hair_color_2\":0,\"chest_2\":0,\"blemishes_1\":0,\"helmet_1\":-1,\"eye_color\":0,\"blush_3\":0,\"decals_1\":0,\"bodyb_1\":0,\"lipstick_4\":0,\"torso_2\":2,\"bracelets_1\":-1,\"age_2\":0,\"bracelets_2\":0,\"decals_2\":0,\"mask_2\":0,\"bags_1\":0,\"ears_2\":0,\"blush_1\":0,\"tshirt_1\":15,\"eyebrows_3\":0,\"sun_1\":0,\"glasses_1\":0,\"beard_3\":0,\"chest_1\":0,\"glasses_2\":0,\"bproof_2\":0,\"moles_1\":0,\"mask_1\":0,\"hair_1\":30,\"blush_2\":0,\"pants_1\":5,\"hair_color_1\":0,\"watches_2\":0,\"helmet_2\":0,\"bproof_1\":0,\"eyebrows_4\":0,\"chest_3\":0,\"makeup_1\":0,\"arms_2\":0,\"bags_2\":0,\"torso_1\":128,\"watches_1\":-1,\"arms\":0,\"lipstick_3\":0,\"shoes_2\":0,\"face\":21,\"beard_1\":0,\"lipstick_1\":0,\"shoes_1\":8,\"chain_2\":0,\"ears_1\":-1,\"chain_1\":0,\"complexion_1\":0,\"sex\":0,\"beard_2\":0,\"beard_4\":0,\"skin\":2,\"pants_2\":0,\"eyebrows_2\":0,\"moles_2\":0,\"blemishes_2\":0,\"makeup_3\":0,\"age_1\":0}', 'miner', 0, '[]', '{\"y\":-814.6,\"x\":244.2,\"z\":30.2}', 115840, 0, 'user', '[{\"name\":\"hunger\",\"val\":720200,\"percent\":72.02},{\"name\":\"thirst\",\"val\":790150,\"percent\":79.015},{\"name\":\"drunk\",\"val\":0,\"percent\":0.0}]', NULL, 416, 'Simon', 'Walker', '2000/7/4', 'm', '190', 0),
('steam:11000010d328fae', 'license:fdb8f993258bb9ed391834612f06560281181991', 50000, 'SeergioVlc', '{\"mask_2\":0,\"moles_2\":0,\"chain_1\":0,\"bracelets_1\":-1,\"lipstick_2\":0,\"beard_2\":0,\"eyebrows_1\":0,\"mask_1\":0,\"ears_1\":-1,\"pants_1\":0,\"sun_1\":0,\"hair_color_1\":0,\"torso_2\":0,\"beard_3\":0,\"bproof_2\":0,\"blush_2\":0,\"face\":0,\"torso_1\":0,\"tshirt_1\":0,\"decals_1\":0,\"blush_3\":0,\"complexion_2\":0,\"chest_2\":0,\"hair_2\":0,\"bracelets_2\":0,\"watches_1\":-1,\"blush_1\":0,\"watches_2\":0,\"decals_2\":0,\"bodyb_2\":0,\"lipstick_1\":0,\"sun_2\":0,\"shoes_1\":0,\"sex\":0,\"glasses_1\":0,\"glasses_2\":0,\"eyebrows_4\":0,\"makeup_2\":0,\"eyebrows_3\":0,\"bproof_1\":0,\"makeup_4\":0,\"age_2\":0,\"arms_2\":0,\"blemishes_2\":0,\"ears_2\":0,\"beard_1\":0,\"chain_2\":0,\"eyebrows_2\":0,\"helmet_1\":-1,\"pants_2\":0,\"chest_1\":0,\"age_1\":0,\"shoes_2\":0,\"bags_2\":0,\"arms\":0,\"bags_1\":0,\"lipstick_4\":0,\"makeup_1\":0,\"moles_1\":0,\"skin\":0,\"bodyb_1\":0,\"beard_4\":0,\"lipstick_3\":0,\"makeup_3\":0,\"hair_1\":11,\"eye_color\":0,\"tshirt_2\":0,\"helmet_2\":0,\"chest_3\":0,\"complexion_1\":0,\"blemishes_1\":0,\"hair_color_2\":0}', 'tailor', 0, '[]', '{\"x\":714.6,\"y\":-978.8,\"z\":24.1}', 45, 0, 'user', '[{\"val\":807600,\"percent\":80.76,\"name\":\"hunger\"},{\"val\":855700,\"percent\":85.57,\"name\":\"thirst\"},{\"val\":0,\"percent\":0.0,\"name\":\"drunk\"}]', NULL, 822, 'Sergio', 'Carrasco', '22/07/1999', 'm', '170', 0),
('steam:110000132368c6a', 'license:cf7b4d3950fb3fbb157458ac36088e9ba071d8fb', 3450, 'Jose Chuletón', '{\"mask_2\":0,\"moles_2\":0,\"chain_1\":0,\"eye_color\":0,\"lipstick_2\":0,\"beard_2\":0,\"eyebrows_1\":0,\"mask_1\":0,\"ears_1\":-1,\"pants_1\":0,\"sun_1\":0,\"hair_color_1\":0,\"torso_2\":0,\"beard_3\":0,\"lipstick_3\":0,\"blush_2\":0,\"face\":0,\"torso_1\":0,\"tshirt_1\":0,\"decals_1\":0,\"blush_3\":0,\"complexion_2\":0,\"chest_2\":0,\"ears_2\":0,\"bracelets_2\":0,\"watches_1\":-1,\"bodyb_1\":0,\"watches_2\":0,\"pants_2\":0,\"bodyb_2\":0,\"chain_2\":0,\"sun_2\":0,\"shoes_1\":0,\"sex\":0,\"glasses_1\":0,\"glasses_2\":0,\"eyebrows_4\":0,\"makeup_2\":0,\"eyebrows_3\":0,\"bproof_1\":0,\"makeup_4\":0,\"age_2\":0,\"bracelets_1\":-1,\"blemishes_2\":0,\"arms_2\":0,\"lipstick_1\":0,\"bproof_2\":0,\"eyebrows_2\":0,\"helmet_1\":-1,\"decals_2\":0,\"chest_1\":0,\"blemishes_1\":0,\"blush_1\":0,\"bags_2\":0,\"arms\":0,\"bags_1\":0,\"beard_1\":0,\"skin\":0,\"moles_1\":0,\"makeup_3\":0,\"tshirt_2\":0,\"beard_4\":0,\"complexion_1\":0,\"makeup_1\":0,\"hair_1\":0,\"hair_2\":0,\"lipstick_4\":0,\"helmet_2\":0,\"chest_3\":0,\"shoes_2\":0,\"age_1\":0,\"hair_color_2\":0}', 'taxi', 0, '[{\"components\":[],\"ammo\":0,\"name\":\"WEAPON_BAT\",\"label\":\"Bate\"},{\"components\":[\"clip_default\"],\"ammo\":37,\"name\":\"WEAPON_PISTOL\",\"label\":\"Pistola\"}]', '{\"x\":295.8,\"y\":-1446.5,\"z\":30.0}', 30000, 0, 'user', '[{\"val\":914900,\"percent\":91.49,\"name\":\"hunger\"},{\"val\":936175,\"percent\":93.6175,\"name\":\"thirst\"},{\"val\":0,\"percent\":0.0,\"name\":\"drunk\"}]', NULL, 933, 'Jose', 'Chuletillo', '1992-04-23', 'm', '150', 0),
('steam:1100001138a08d6', 'license:2bb4e7a65d2904c3b6abcfc73fa44045be726aef', 2355, 'AdharaxX', '{\"mask_2\":0,\"moles_2\":0,\"chain_1\":3,\"bracelets_1\":-1,\"lipstick_2\":10,\"beard_2\":0,\"eyebrows_1\":8,\"mask_1\":0,\"ears_1\":2,\"pants_1\":51,\"sun_1\":0,\"hair_color_1\":12,\"torso_2\":7,\"makeup_1\":11,\"lipstick_3\":20,\"blush_2\":0,\"face\":45,\"torso_1\":78,\"tshirt_1\":6,\"decals_1\":0,\"blush_3\":0,\"complexion_2\":0,\"chest_2\":0,\"hair_2\":0,\"bracelets_2\":0,\"watches_1\":-1,\"blush_1\":0,\"watches_2\":0,\"pants_2\":1,\"bodyb_2\":0,\"chain_2\":0,\"sun_2\":0,\"shoes_1\":24,\"sex\":1,\"beard_4\":0,\"glasses_2\":3,\"eyebrows_4\":5,\"makeup_2\":10,\"eyebrows_3\":8,\"bproof_1\":0,\"makeup_4\":8,\"age_2\":0,\"arms_2\":0,\"blemishes_2\":0,\"skin\":0,\"bodyb_1\":0,\"makeup_3\":10,\"eyebrows_2\":10,\"helmet_1\":5,\"age_1\":0,\"chest_1\":0,\"blemishes_1\":0,\"ears_2\":0,\"bags_2\":0,\"arms\":9,\"bags_1\":0,\"beard_1\":0,\"lipstick_4\":12,\"moles_1\":0,\"eye_color\":2,\"decals_2\":0,\"bproof_2\":0,\"lipstick_1\":3,\"glasses_1\":21,\"hair_1\":65,\"beard_3\":0,\"tshirt_2\":0,\"helmet_2\":0,\"chest_3\":0,\"complexion_1\":0,\"shoes_2\":0,\"hair_color_2\":5}', 'ambulance', 0, '[]', '{\"x\":115.8,\"y\":-1553.7,\"z\":28.8}', 11439, 0, 'user', '[{\"percent\":58.31,\"name\":\"hunger\",\"val\":583100},{\"percent\":31.2325,\"name\":\"thirst\",\"val\":312325},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', NULL, 995, 'Adhara', 'Kuroneko', '1999-10-07', 'f', '160', 0),
('steam:110000116d82e19', 'license:7382c1052ebcb9336141a514a57e715b3a49d7d4', 1025, 'Cafe con Leche', '{\"mask_2\":0,\"beard_1\":0,\"chain_1\":0,\"eye_color\":0,\"lipstick_2\":0,\"beard_2\":0,\"eyebrows_1\":0,\"mask_1\":0,\"ears_1\":-1,\"pants_1\":26,\"sun_1\":0,\"hair_color_1\":29,\"torso_2\":4,\"beard_3\":0,\"lipstick_3\":0,\"blush_2\":0,\"face\":0,\"shoes_2\":4,\"tshirt_1\":0,\"decals_1\":0,\"arms_2\":0,\"complexion_2\":0,\"chest_2\":0,\"ears_2\":0,\"bracelets_2\":0,\"watches_1\":-1,\"blush_1\":0,\"watches_2\":0,\"decals_2\":0,\"bodyb_2\":0,\"chain_2\":0,\"sun_2\":0,\"shoes_1\":62,\"sex\":0,\"beard_4\":0,\"glasses_2\":0,\"makeup_3\":0,\"makeup_2\":0,\"eyebrows_3\":0,\"bproof_1\":0,\"makeup_4\":0,\"age_2\":0,\"blemishes_1\":0,\"blemishes_2\":0,\"pants_2\":0,\"makeup_1\":0,\"lipstick_1\":0,\"eyebrows_2\":0,\"helmet_1\":-1,\"lipstick_4\":0,\"chest_1\":0,\"age_1\":0,\"tshirt_2\":2,\"bags_2\":0,\"arms\":0,\"bags_1\":0,\"glasses_1\":0,\"moles_1\":0,\"complexion_1\":0,\"moles_2\":0,\"skin\":0,\"eyebrows_4\":0,\"bracelets_1\":-1,\"bproof_2\":0,\"hair_1\":33,\"blush_3\":0,\"hair_2\":0,\"helmet_2\":0,\"chest_3\":0,\"bodyb_1\":0,\"torso_1\":233,\"hair_color_2\":0}', 'desempleado', 0, '[{\"ammo\":0,\"label\":\"Pistola\",\"name\":\"WEAPON_PISTOL\",\"components\":[\"clip_default\"]},{\"ammo\":0,\"label\":\"Pump shotgun\",\"name\":\"WEAPON_PUMPSHOTGUN\",\"components\":[]}]', '{\"x\":106.7,\"y\":-1545.8,\"z\":28.8}', 6935, 0, 'user', '[{\"percent\":57.83,\"name\":\"hunger\",\"val\":578300},{\"percent\":55.8725,\"name\":\"thirst\",\"val\":558725},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', NULL, 998, 'Gennaro', 'Petrucci', '1997 10 25', 'm', '174', 0),
('steam:110000111a49c66', 'license:51daf19d578081e554d5d77ce5c4d15d95951947', 49550, 'Aspartamate', '{\"mask_2\":0,\"lipstick_4\":0,\"chain_1\":4,\"bracelets_1\":-1,\"lipstick_2\":0,\"beard_2\":10,\"eyebrows_1\":0,\"mask_1\":0,\"ears_1\":-1,\"pants_1\":4,\"sun_1\":0,\"hair_color_1\":4,\"torso_2\":0,\"makeup_1\":0,\"bproof_2\":0,\"blush_2\":0,\"face\":0,\"torso_1\":4,\"tshirt_1\":3,\"decals_1\":6,\"blush_3\":0,\"complexion_2\":0,\"chest_2\":0,\"hair_2\":4,\"bracelets_2\":0,\"watches_1\":-1,\"bodyb_1\":0,\"watches_2\":0,\"pants_2\":2,\"bodyb_2\":0,\"skin\":0,\"sun_2\":0,\"shoes_1\":10,\"sex\":0,\"glasses_1\":3,\"glasses_2\":0,\"eyebrows_4\":0,\"makeup_2\":0,\"eyebrows_3\":0,\"bproof_1\":0,\"makeup_4\":0,\"age_2\":0,\"tshirt_2\":0,\"blemishes_2\":0,\"arms_2\":0,\"beard_3\":0,\"beard_1\":24,\"eyebrows_2\":8,\"helmet_1\":-1,\"makeup_3\":0,\"chest_1\":0,\"blemishes_1\":0,\"decals_2\":0,\"bags_2\":0,\"arms\":6,\"bags_1\":0,\"ears_2\":0,\"blush_1\":0,\"moles_1\":0,\"moles_2\":0,\"lipstick_1\":0,\"complexion_1\":0,\"beard_4\":0,\"eye_color\":0,\"hair_1\":21,\"lipstick_3\":0,\"shoes_2\":0,\"helmet_2\":0,\"chest_3\":0,\"age_1\":0,\"chain_2\":2,\"hair_color_2\":42}', 'taxi', 0, '[]', '{\"x\":-729.3,\"y\":-96.5,\"z\":38.0}', 45, 0, 'user', '[{\"val\":861400,\"percent\":86.14,\"name\":\"hunger\"},{\"val\":896050,\"percent\":89.605,\"name\":\"thirst\"},{\"val\":0,\"percent\":0.0,\"name\":\"drunk\"}]', NULL, 662, 'Juan Pablo', 'Osorio', '1995920', 'm', '190', 0),
('steam:1100001186b7a77', 'license:c65ec4f4a073b6d6674d2ebdc9d097c61a48df8a', 1500, 'danyuno95', '{\"hair_2\":0,\"tshirt_2\":1,\"watches_2\":0,\"lipstick_1\":0,\"moles_1\":0,\"makeup_1\":0,\"bracelets_1\":-1,\"decals_1\":0,\"beard_3\":0,\"decals_2\":0,\"shoes_1\":12,\"blemishes_2\":0,\"complexion_2\":0,\"bproof_2\":0,\"arms\":20,\"glasses_2\":5,\"eyebrows_3\":26,\"helmet_1\":-1,\"pants_2\":0,\"ears_2\":0,\"helmet_2\":0,\"face\":12,\"beard_2\":8,\"chain_2\":0,\"pants_1\":4,\"mask_2\":0,\"ears_1\":-1,\"skin\":0,\"blush_3\":0,\"mask_1\":0,\"blemishes_1\":0,\"glasses_1\":5,\"bodyb_2\":0,\"bags_2\":0,\"age_2\":0,\"eyebrows_2\":10,\"bproof_1\":0,\"blush_1\":0,\"chest_2\":0,\"hair_1\":32,\"torso_1\":230,\"blush_2\":0,\"beard_1\":3,\"tshirt_1\":23,\"hair_color_1\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":91,\"makeup_2\":0,\"age_1\":0,\"torso_2\":2,\"sun_2\":0,\"lipstick_3\":0,\"eyebrows_1\":12,\"beard_4\":0,\"arms_2\":0,\"makeup_3\":0,\"chest_3\":0,\"complexion_1\":0,\"lipstick_2\":0,\"watches_1\":-1,\"hair_color_2\":0,\"chest_1\":0,\"eye_color\":12,\"bags_1\":0,\"lipstick_4\":0,\"bodyb_1\":0,\"moles_2\":0,\"bracelets_2\":0,\"sun_1\":0,\"sex\":0,\"shoes_2\":6}', 'slaughterer', 0, '[{\"name\":\"WEAPON_PISTOL\",\"label\":\"Pistola\",\"ammo\":55,\"components\":[\"clip_default\"]}]', '{\"x\":214.3,\"y\":-797.2,\"z\":30.8}', 26763, 0, 'user', '[{\"percent\":51.29,\"name\":\"hunger\",\"val\":512900},{\"percent\":58.4675,\"name\":\"thirst\",\"val\":584675},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', NULL, 371, 'Yiyo', 'Ferreira Torres', '1995/19/16', 'm', '178', 0),
('steam:1100001348c4d8b', 'license:1654ac2f1cd759a7af763b5537b12bc0c141eb8c', -473, 'Exotik.exe', '{\"hair_2\":0,\"tshirt_2\":0,\"watches_2\":0,\"lipstick_1\":0,\"moles_1\":0,\"makeup_1\":0,\"chest_2\":0,\"decals_1\":0,\"beard_3\":0,\"decals_2\":0,\"shoes_1\":48,\"blemishes_2\":0,\"complexion_2\":0,\"bproof_2\":0,\"arms\":33,\"moles_2\":0,\"eyebrows_3\":0,\"age_1\":0,\"lipstick_2\":0,\"chain_1\":0,\"helmet_2\":0,\"face\":12,\"beard_2\":10,\"chain_2\":0,\"bracelets_2\":0,\"hair_1\":21,\"ears_1\":-1,\"skin\":12,\"blush_3\":0,\"hair_color_1\":29,\"blemishes_1\":0,\"glasses_1\":0,\"makeup_2\":0,\"bags_2\":0,\"age_2\":0,\"bodyb_1\":0,\"bproof_1\":0,\"blush_1\":0,\"ears_2\":0,\"eyebrows_1\":12,\"torso_1\":89,\"blush_2\":0,\"beard_1\":16,\"helmet_1\":-1,\"eyebrows_2\":10,\"bodyb_2\":0,\"eyebrows_4\":0,\"mask_1\":0,\"torso_2\":0,\"sun_2\":0,\"chest_3\":0,\"makeup_4\":0,\"lipstick_3\":0,\"pants_2\":0,\"beard_4\":0,\"arms_2\":0,\"makeup_3\":0,\"mask_2\":0,\"complexion_1\":0,\"bracelets_1\":-1,\"sex\":0,\"hair_color_2\":0,\"chest_1\":0,\"eye_color\":9,\"pants_1\":10,\"lipstick_4\":0,\"tshirt_1\":15,\"glasses_2\":0,\"watches_1\":-1,\"sun_1\":0,\"bags_1\":0,\"shoes_2\":0}', 'slaughterer', 0, '[{\"name\":\"WEAPON_PISTOL\",\"label\":\"Pistola\",\"ammo\":42,\"components\":[\"clip_default\"]}]', '{\"x\":436.5,\"y\":-993.5,\"z\":30.7}', 24050, 0, 'user', '[{\"percent\":49.02,\"name\":\"hunger\",\"val\":490200},{\"percent\":56.765,\"name\":\"thirst\",\"val\":567650},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', NULL, 753, 'Alejandro', 'Dominguez', '1995-07-01', 'm', '187', 0),
('steam:11000013c51ade8', 'license:771eb33219cc20881c0f80e8903b80bb2b211996', 44500, 'raulpuertacazorla', '{\"hair_2\":0,\"torso_2\":0,\"watches_2\":0,\"lipstick_1\":0,\"moles_1\":0,\"makeup_1\":0,\"bracelets_1\":7,\"decals_1\":0,\"beard_3\":0,\"decals_2\":0,\"shoes_1\":51,\"blemishes_2\":0,\"complexion_2\":0,\"bproof_2\":0,\"arms\":115,\"moles_2\":0,\"eyebrows_3\":41,\"age_1\":0,\"pants_2\":0,\"chain_1\":0,\"helmet_2\":9,\"face\":0,\"beard_2\":10,\"chain_2\":0,\"pants_1\":41,\"hair_1\":2,\"ears_1\":5,\"skin\":5,\"blush_3\":0,\"hair_color_1\":60,\"chest_3\":0,\"glasses_1\":5,\"makeup_2\":0,\"bags_2\":0,\"age_2\":0,\"eyebrows_2\":10,\"bproof_1\":0,\"blush_1\":0,\"tshirt_1\":6,\"eyebrows_1\":33,\"torso_1\":176,\"blush_2\":0,\"beard_1\":18,\"blemishes_1\":0,\"glasses_2\":10,\"ears_2\":3,\"eyebrows_4\":41,\"mask_1\":0,\"chest_2\":0,\"sun_2\":0,\"tshirt_2\":12,\"bodyb_1\":0,\"lipstick_3\":0,\"mask_2\":0,\"beard_4\":0,\"arms_2\":0,\"makeup_3\":0,\"bodyb_2\":0,\"complexion_1\":0,\"makeup_4\":0,\"watches_1\":27,\"hair_color_2\":0,\"chest_1\":0,\"eye_color\":8,\"bags_1\":0,\"lipstick_4\":0,\"bracelets_2\":0,\"lipstick_2\":0,\"helmet_1\":60,\"sun_1\":0,\"sex\":0,\"shoes_2\":3}', 'trucker', 0, '[]', '{\"x\":225.1,\"y\":-1331.5,\"z\":29.3}', 2270, 0, 'user', '[{\"percent\":55.79,\"name\":\"hunger\",\"val\":557900},{\"percent\":66.8425,\"name\":\"thirst\",\"val\":668425},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', NULL, 228, 'Coman', 'Garcia Sanchez', '1998-04-20', 'm', '186', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_accounts`
--

CREATE TABLE `user_accounts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(22) NOT NULL,
  `name` varchar(50) NOT NULL,
  `money` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user_accounts`
--

INSERT INTO `user_accounts` (`id`, `identifier`, `name`, `money`) VALUES
(44, 'steam:11000010febf2f0', 'black_money', 0),
(45, 'steam:11000010f2fc36c', 'black_money', 0),
(46, 'steam:110000135fc6b1e', 'black_money', 0),
(47, 'steam:11000010bc9777a', 'black_money', 0),
(48, 'steam:11000010a16ed9a', 'black_money', 0),
(49, 'steam:11000011a1c13e8', 'black_money', 0),
(50, 'steam:110000107d06976', 'black_money', 0),
(51, 'steam:110000134c6b441', 'black_money', 0),
(52, 'steam:11000010b13ed15', 'black_money', 0),
(53, 'steam:11000013b6d8507', 'black_money', 0),
(54, 'steam:110000117222fb4', 'black_money', 0),
(55, 'steam:11000010f3310ac', 'black_money', 0),
(56, 'steam:11000013c2ce0a6', 'black_money', 0),
(57, 'steam:11000010b08ef51', 'black_money', 0),
(58, 'steam:11000011bb7624b', 'black_money', 0),
(59, 'steam:11000010d0c1172', 'black_money', 0),
(60, 'steam:11000010726b8b3', 'black_money', 0),
(61, 'steam:1100001384ce0d6', 'black_money', 0),
(62, 'steam:11000013294aa18', 'black_money', 0),
(63, 'steam:1100001074b358f', 'black_money', 0),
(64, 'steam:11000010f742b73', 'black_money', 0),
(65, 'steam:11000010e572719', 'black_money', 0),
(66, 'steam:110000115821821', 'black_money', 0),
(67, 'steam:11000010d328fae', 'black_money', 0),
(68, 'steam:110000132368c6a', 'black_money', 0),
(69, 'steam:1100001138a08d6', 'black_money', 0),
(70, 'steam:110000116d82e19', 'black_money', 0),
(71, 'steam:110000111a49c66', 'black_money', 0),
(72, 'steam:1100001186b7a77', 'black_money', 0),
(73, 'steam:1100001348c4d8b', 'black_money', 0),
(74, 'steam:11000013c51ade8', 'black_money', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_contacts`
--

CREATE TABLE `user_contacts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(22) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_inventory`
--

CREATE TABLE `user_inventory` (
  `id` int(11) NOT NULL,
  `identifier` varchar(22) NOT NULL,
  `item` varchar(50) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user_inventory`
--

INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
(1745, 'steam:11000010febf2f0', 'essence', 0),
(1746, 'steam:11000010febf2f0', 'marijuana', 0),
(1747, 'steam:11000010febf2f0', 'gazbottle', 0),
(1748, 'steam:11000010febf2f0', 'wood', 0),
(1749, 'steam:11000010febf2f0', 'multi_key', 0),
(1750, 'steam:11000010febf2f0', 'cutted_wood', 0),
(1751, 'steam:11000010febf2f0', 'iron', 0),
(1752, 'steam:11000010febf2f0', 'morf', 0),
(1753, 'steam:11000010febf2f0', 'koda_pooch', 0),
(1754, 'steam:11000010febf2f0', 'c4_bank', 0),
(1755, 'steam:11000010febf2f0', 'medikit', 0),
(1756, 'steam:11000010febf2f0', 'packaged_plank', 0),
(1757, 'steam:11000010febf2f0', 'blowtorch', 0),
(1758, 'steam:11000010febf2f0', 'washed_stone', 0),
(1759, 'steam:11000010febf2f0', 'alive_chicken', 0),
(1760, 'steam:11000010febf2f0', 'jewels', 0),
(1761, 'steam:11000010febf2f0', 'amfa', 0),
(1762, 'steam:11000010febf2f0', 'fixkit', 0),
(1763, 'steam:11000010febf2f0', 'wool', 0),
(1764, 'steam:11000010febf2f0', 'bread', 0),
(1765, 'steam:11000010febf2f0', 'stone', 0),
(1766, 'steam:11000010febf2f0', 'water', 0),
(1767, 'steam:11000010febf2f0', 'fixtool', 0),
(1768, 'steam:11000010febf2f0', 'solo_key', 0),
(1769, 'steam:11000010febf2f0', 'slaughtered_chicken', 0),
(1770, 'steam:11000010febf2f0', 'amfa_pooch', 0),
(1771, 'steam:11000010febf2f0', 'cannabis', 0),
(1772, 'steam:11000010febf2f0', 'copper', 0),
(1773, 'steam:11000010febf2f0', 'blowpipe', 0),
(1774, 'steam:11000010febf2f0', 'diamond', 0),
(1775, 'steam:11000010febf2f0', 'fish', 0),
(1776, 'steam:11000010febf2f0', 'petrol_raffin', 0),
(1777, 'steam:11000010febf2f0', 'packaged_chicken', 0),
(1778, 'steam:11000010febf2f0', 'pizza', 0),
(1779, 'steam:11000010febf2f0', 'koda', 0),
(1780, 'steam:11000010febf2f0', 'carotool', 0),
(1781, 'steam:11000010febf2f0', 'gold', 0),
(1782, 'steam:11000010febf2f0', 'clothe', 0),
(1783, 'steam:11000010febf2f0', 'morf_pooch', 0),
(1784, 'steam:11000010febf2f0', 'bandage', 0),
(1785, 'steam:11000010febf2f0', 'carokit', 0),
(1786, 'steam:11000010febf2f0', 'petrol', 0),
(1787, 'steam:11000010febf2f0', 'rasperry', 0),
(1788, 'steam:11000010febf2f0', 'fabric', 0),
(1789, 'steam:11000010f2fc36c', 'petrol_raffin', 0),
(1790, 'steam:11000010f2fc36c', 'clothe', 0),
(1791, 'steam:11000010f2fc36c', 'iron', 0),
(1792, 'steam:11000010f2fc36c', 'packaged_plank', 0),
(1793, 'steam:11000010f2fc36c', 'fish', 0),
(1794, 'steam:11000010f2fc36c', 'carokit', 0),
(1795, 'steam:11000010f2fc36c', 'carotool', 0),
(1796, 'steam:11000010f2fc36c', 'copper', 0),
(1797, 'steam:11000010f2fc36c', 'fixtool', 0),
(1798, 'steam:11000010f2fc36c', 'gazbottle', 0),
(1799, 'steam:11000010f2fc36c', 'multi_key', 0),
(1800, 'steam:11000010f2fc36c', 'bread', 1),
(1801, 'steam:11000010f2fc36c', 'amfa', 0),
(1802, 'steam:11000010f2fc36c', 'pizza', 0),
(1803, 'steam:11000010f2fc36c', 'koda_pooch', 0),
(1804, 'steam:11000010f2fc36c', 'fabric', 0),
(1805, 'steam:11000010f2fc36c', 'morf', 0),
(1806, 'steam:11000010f2fc36c', 'amfa_pooch', 0),
(1807, 'steam:11000010f2fc36c', 'cutted_wood', 0),
(1808, 'steam:11000010f2fc36c', 'koda', 0),
(1809, 'steam:11000010f2fc36c', 'alive_chicken', 0),
(1810, 'steam:11000010f2fc36c', 'wool', 0),
(1811, 'steam:11000010f2fc36c', 'water', 1),
(1812, 'steam:11000010f2fc36c', 'wood', 0),
(1813, 'steam:11000010f2fc36c', 'blowtorch', 0),
(1814, 'steam:11000010f2fc36c', 'packaged_chicken', 0),
(1815, 'steam:11000010f2fc36c', 'stone', 0),
(1816, 'steam:11000010f2fc36c', 'marijuana', 0),
(1817, 'steam:11000010f2fc36c', 'jewels', 0),
(1818, 'steam:11000010f2fc36c', 'rasperry', 0),
(1819, 'steam:11000010f2fc36c', 'diamond', 0),
(1820, 'steam:11000010f2fc36c', 'solo_key', 0),
(1821, 'steam:11000010f2fc36c', 'petrol', 0),
(1822, 'steam:11000010f2fc36c', 'slaughtered_chicken', 0),
(1823, 'steam:11000010f2fc36c', 'washed_stone', 0),
(1824, 'steam:11000010f2fc36c', 'blowpipe', 0),
(1825, 'steam:11000010f2fc36c', 'essence', 0),
(1826, 'steam:11000010f2fc36c', 'c4_bank', 0),
(1827, 'steam:11000010f2fc36c', 'medikit', 0),
(1828, 'steam:11000010f2fc36c', 'fixkit', 0),
(1829, 'steam:11000010f2fc36c', 'morf_pooch', 0),
(1830, 'steam:11000010f2fc36c', 'bandage', 0),
(1831, 'steam:11000010f2fc36c', 'cannabis', 0),
(1832, 'steam:11000010f2fc36c', 'gold', 0),
(1833, 'steam:110000135fc6b1e', 'petrol_raffin', 0),
(1834, 'steam:110000135fc6b1e', 'clothe', 0),
(1835, 'steam:110000135fc6b1e', 'iron', 0),
(1836, 'steam:110000135fc6b1e', 'packaged_plank', 0),
(1837, 'steam:110000135fc6b1e', 'fish', 0),
(1838, 'steam:110000135fc6b1e', 'copper', 0),
(1839, 'steam:110000135fc6b1e', 'fixtool', 0),
(1840, 'steam:110000135fc6b1e', 'carokit', 0),
(1841, 'steam:110000135fc6b1e', 'carotool', 0),
(1842, 'steam:110000135fc6b1e', 'gazbottle', 0),
(1843, 'steam:110000135fc6b1e', 'multi_key', 0),
(1844, 'steam:110000135fc6b1e', 'bread', 6),
(1845, 'steam:110000135fc6b1e', 'amfa', 0),
(1846, 'steam:110000135fc6b1e', 'pizza', 0),
(1847, 'steam:110000135fc6b1e', 'koda_pooch', 0),
(1848, 'steam:110000135fc6b1e', 'fabric', 0),
(1849, 'steam:110000135fc6b1e', 'morf', 0),
(1850, 'steam:110000135fc6b1e', 'amfa_pooch', 0),
(1851, 'steam:110000135fc6b1e', 'cutted_wood', 0),
(1852, 'steam:110000135fc6b1e', 'koda', 0),
(1853, 'steam:110000135fc6b1e', 'alive_chicken', 0),
(1854, 'steam:110000135fc6b1e', 'wool', 0),
(1855, 'steam:110000135fc6b1e', 'water', 1),
(1856, 'steam:110000135fc6b1e', 'wood', 0),
(1857, 'steam:110000135fc6b1e', 'blowtorch', 0),
(1858, 'steam:110000135fc6b1e', 'packaged_chicken', 0),
(1859, 'steam:110000135fc6b1e', 'stone', 0),
(1860, 'steam:110000135fc6b1e', 'marijuana', 0),
(1861, 'steam:110000135fc6b1e', 'jewels', 0),
(1862, 'steam:110000135fc6b1e', 'rasperry', 0),
(1863, 'steam:110000135fc6b1e', 'diamond', 0),
(1864, 'steam:110000135fc6b1e', 'solo_key', 0),
(1865, 'steam:110000135fc6b1e', 'petrol', 0),
(1866, 'steam:110000135fc6b1e', 'slaughtered_chicken', 0),
(1867, 'steam:110000135fc6b1e', 'washed_stone', 0),
(1868, 'steam:110000135fc6b1e', 'blowpipe', 0),
(1869, 'steam:110000135fc6b1e', 'essence', 0),
(1870, 'steam:110000135fc6b1e', 'c4_bank', 0),
(1871, 'steam:110000135fc6b1e', 'medikit', 0),
(1872, 'steam:110000135fc6b1e', 'fixkit', 0),
(1873, 'steam:110000135fc6b1e', 'morf_pooch', 0),
(1874, 'steam:110000135fc6b1e', 'bandage', 0),
(1875, 'steam:110000135fc6b1e', 'cannabis', 0),
(1876, 'steam:110000135fc6b1e', 'gold', 0),
(1877, 'steam:11000010bc9777a', 'petrol_raffin', 0),
(1878, 'steam:11000010bc9777a', 'clothe', 0),
(1879, 'steam:11000010bc9777a', 'iron', 0),
(1880, 'steam:11000010bc9777a', 'packaged_plank', 0),
(1881, 'steam:11000010bc9777a', 'fish', 0),
(1882, 'steam:11000010bc9777a', 'copper', 0),
(1883, 'steam:11000010bc9777a', 'fixtool', 0),
(1884, 'steam:11000010bc9777a', 'carokit', 0),
(1885, 'steam:11000010bc9777a', 'carotool', 0),
(1886, 'steam:11000010bc9777a', 'gazbottle', 0),
(1887, 'steam:11000010bc9777a', 'multi_key', 0),
(1888, 'steam:11000010bc9777a', 'bread', 7),
(1889, 'steam:11000010bc9777a', 'amfa', 0),
(1890, 'steam:11000010bc9777a', 'pizza', 0),
(1891, 'steam:11000010bc9777a', 'koda_pooch', 0),
(1892, 'steam:11000010bc9777a', 'fabric', 0),
(1893, 'steam:11000010bc9777a', 'morf', 0),
(1894, 'steam:11000010bc9777a', 'amfa_pooch', 0),
(1895, 'steam:11000010bc9777a', 'cutted_wood', 0),
(1896, 'steam:11000010bc9777a', 'koda', 0),
(1897, 'steam:11000010bc9777a', 'alive_chicken', 0),
(1898, 'steam:11000010bc9777a', 'wool', 0),
(1899, 'steam:11000010bc9777a', 'water', 2),
(1900, 'steam:11000010bc9777a', 'wood', 0),
(1901, 'steam:11000010bc9777a', 'blowtorch', 0),
(1902, 'steam:11000010bc9777a', 'packaged_chicken', 0),
(1903, 'steam:11000010bc9777a', 'stone', 0),
(1904, 'steam:11000010bc9777a', 'marijuana', 0),
(1905, 'steam:11000010bc9777a', 'jewels', 19),
(1906, 'steam:11000010bc9777a', 'rasperry', 0),
(1907, 'steam:11000010bc9777a', 'diamond', 0),
(1908, 'steam:11000010bc9777a', 'solo_key', 0),
(1909, 'steam:11000010bc9777a', 'petrol', 0),
(1910, 'steam:11000010bc9777a', 'slaughtered_chicken', 0),
(1911, 'steam:11000010bc9777a', 'washed_stone', 0),
(1912, 'steam:11000010bc9777a', 'blowpipe', 0),
(1913, 'steam:11000010bc9777a', 'essence', 0),
(1914, 'steam:11000010bc9777a', 'c4_bank', 0),
(1915, 'steam:11000010bc9777a', 'medikit', 0),
(1916, 'steam:11000010bc9777a', 'fixkit', 0),
(1917, 'steam:11000010bc9777a', 'morf_pooch', 0),
(1918, 'steam:11000010bc9777a', 'bandage', 0),
(1919, 'steam:11000010bc9777a', 'cannabis', 0),
(1920, 'steam:11000010bc9777a', 'gold', 0),
(1921, 'steam:11000010a16ed9a', 'petrol_raffin', 0),
(1922, 'steam:11000010a16ed9a', 'clothe', 0),
(1923, 'steam:11000010a16ed9a', 'iron', 0),
(1924, 'steam:11000010a16ed9a', 'packaged_plank', 0),
(1925, 'steam:11000010a16ed9a', 'fish', 0),
(1926, 'steam:11000010a16ed9a', 'copper', 0),
(1927, 'steam:11000010a16ed9a', 'fixtool', 0),
(1928, 'steam:11000010a16ed9a', 'carokit', 0),
(1929, 'steam:11000010a16ed9a', 'carotool', 0),
(1930, 'steam:11000010a16ed9a', 'gazbottle', 0),
(1931, 'steam:11000010a16ed9a', 'multi_key', 0),
(1932, 'steam:11000010a16ed9a', 'bread', 0),
(1933, 'steam:11000010a16ed9a', 'amfa', 0),
(1934, 'steam:11000010a16ed9a', 'pizza', 0),
(1935, 'steam:11000010a16ed9a', 'koda_pooch', 0),
(1936, 'steam:11000010a16ed9a', 'fabric', 0),
(1937, 'steam:11000010a16ed9a', 'morf', 0),
(1938, 'steam:11000010a16ed9a', 'amfa_pooch', 0),
(1939, 'steam:11000010a16ed9a', 'cutted_wood', 0),
(1940, 'steam:11000010a16ed9a', 'koda', 0),
(1941, 'steam:11000010a16ed9a', 'alive_chicken', 0),
(1942, 'steam:11000010a16ed9a', 'wool', 0),
(1943, 'steam:11000010a16ed9a', 'water', 0),
(1944, 'steam:11000010a16ed9a', 'wood', 0),
(1945, 'steam:11000010a16ed9a', 'blowtorch', 0),
(1946, 'steam:11000010a16ed9a', 'packaged_chicken', 0),
(1947, 'steam:11000010a16ed9a', 'stone', 0),
(1948, 'steam:11000010a16ed9a', 'marijuana', 0),
(1949, 'steam:11000010a16ed9a', 'jewels', 0),
(1950, 'steam:11000010a16ed9a', 'rasperry', 0),
(1951, 'steam:11000010a16ed9a', 'diamond', 0),
(1952, 'steam:11000010a16ed9a', 'solo_key', 0),
(1953, 'steam:11000010a16ed9a', 'petrol', 0),
(1954, 'steam:11000010a16ed9a', 'slaughtered_chicken', 0),
(1955, 'steam:11000010a16ed9a', 'washed_stone', 0),
(1956, 'steam:11000010a16ed9a', 'blowpipe', 0),
(1957, 'steam:11000010a16ed9a', 'essence', 0),
(1958, 'steam:11000010a16ed9a', 'c4_bank', 0),
(1959, 'steam:11000010a16ed9a', 'medikit', 0),
(1960, 'steam:11000010a16ed9a', 'fixkit', 0),
(1961, 'steam:11000010a16ed9a', 'morf_pooch', 0),
(1962, 'steam:11000010a16ed9a', 'bandage', 0),
(1963, 'steam:11000010a16ed9a', 'cannabis', 0),
(1964, 'steam:11000010a16ed9a', 'gold', 0),
(1965, 'steam:11000011a1c13e8', 'petrol_raffin', 0),
(1966, 'steam:11000011a1c13e8', 'clothe', 0),
(1967, 'steam:11000011a1c13e8', 'iron', 0),
(1968, 'steam:11000011a1c13e8', 'packaged_plank', 0),
(1969, 'steam:11000011a1c13e8', 'fish', 0),
(1970, 'steam:11000011a1c13e8', 'copper', 0),
(1971, 'steam:11000011a1c13e8', 'fixtool', 0),
(1972, 'steam:11000011a1c13e8', 'carokit', 0),
(1973, 'steam:11000011a1c13e8', 'carotool', 0),
(1974, 'steam:11000011a1c13e8', 'gazbottle', 0),
(1975, 'steam:11000011a1c13e8', 'multi_key', 0),
(1976, 'steam:11000011a1c13e8', 'bread', 0),
(1977, 'steam:11000011a1c13e8', 'amfa', 0),
(1978, 'steam:11000011a1c13e8', 'pizza', 0),
(1979, 'steam:11000011a1c13e8', 'koda_pooch', 0),
(1980, 'steam:11000011a1c13e8', 'fabric', 0),
(1981, 'steam:11000011a1c13e8', 'morf', 0),
(1982, 'steam:11000011a1c13e8', 'amfa_pooch', 0),
(1983, 'steam:11000011a1c13e8', 'cutted_wood', 0),
(1984, 'steam:11000011a1c13e8', 'koda', 0),
(1985, 'steam:11000011a1c13e8', 'alive_chicken', 0),
(1986, 'steam:11000011a1c13e8', 'wool', 0),
(1987, 'steam:11000011a1c13e8', 'water', 0),
(1988, 'steam:11000011a1c13e8', 'wood', 0),
(1989, 'steam:11000011a1c13e8', 'blowtorch', 0),
(1990, 'steam:11000011a1c13e8', 'packaged_chicken', 0),
(1991, 'steam:11000011a1c13e8', 'stone', 0),
(1992, 'steam:11000011a1c13e8', 'marijuana', 0),
(1993, 'steam:11000011a1c13e8', 'jewels', 0),
(1994, 'steam:11000011a1c13e8', 'rasperry', 0),
(1995, 'steam:11000011a1c13e8', 'diamond', 0),
(1996, 'steam:11000011a1c13e8', 'solo_key', 0),
(1997, 'steam:11000011a1c13e8', 'petrol', 0),
(1998, 'steam:11000011a1c13e8', 'slaughtered_chicken', 0),
(1999, 'steam:11000011a1c13e8', 'washed_stone', 0),
(2000, 'steam:11000011a1c13e8', 'blowpipe', 0),
(2001, 'steam:11000011a1c13e8', 'essence', 0),
(2002, 'steam:11000011a1c13e8', 'c4_bank', 0),
(2003, 'steam:11000011a1c13e8', 'medikit', 0),
(2004, 'steam:11000011a1c13e8', 'fixkit', 0),
(2005, 'steam:11000011a1c13e8', 'morf_pooch', 0),
(2006, 'steam:11000011a1c13e8', 'bandage', 20),
(2007, 'steam:11000011a1c13e8', 'cannabis', 0),
(2008, 'steam:11000011a1c13e8', 'gold', 0),
(2009, 'steam:110000107d06976', 'petrol_raffin', 0),
(2010, 'steam:110000107d06976', 'clothe', 0),
(2011, 'steam:110000107d06976', 'iron', 0),
(2012, 'steam:110000107d06976', 'packaged_plank', 0),
(2013, 'steam:110000107d06976', 'fish', 0),
(2014, 'steam:110000107d06976', 'fixtool', 0),
(2015, 'steam:110000107d06976', 'copper', 0),
(2016, 'steam:110000107d06976', 'carokit', 0),
(2017, 'steam:110000107d06976', 'gazbottle', 0),
(2018, 'steam:110000107d06976', 'carotool', 0),
(2019, 'steam:110000107d06976', 'multi_key', 0),
(2020, 'steam:110000107d06976', 'bread', 0),
(2021, 'steam:110000107d06976', 'amfa', 0),
(2022, 'steam:110000107d06976', 'pizza', 0),
(2023, 'steam:110000107d06976', 'koda_pooch', 0),
(2024, 'steam:110000107d06976', 'fabric', 0),
(2025, 'steam:110000107d06976', 'amfa_pooch', 0),
(2026, 'steam:110000107d06976', 'morf', 0),
(2027, 'steam:110000107d06976', 'cutted_wood', 0),
(2028, 'steam:110000107d06976', 'koda', 0),
(2029, 'steam:110000107d06976', 'alive_chicken', 0),
(2030, 'steam:110000107d06976', 'wool', 0),
(2031, 'steam:110000107d06976', 'water', 0),
(2032, 'steam:110000107d06976', 'wood', 0),
(2033, 'steam:110000107d06976', 'blowtorch', 0),
(2034, 'steam:110000107d06976', 'packaged_chicken', 0),
(2035, 'steam:110000107d06976', 'stone', 0),
(2036, 'steam:110000107d06976', 'marijuana', 0),
(2037, 'steam:110000107d06976', 'jewels', 0),
(2038, 'steam:110000107d06976', 'rasperry', 0),
(2039, 'steam:110000107d06976', 'diamond', 0),
(2040, 'steam:110000107d06976', 'solo_key', 0),
(2041, 'steam:110000107d06976', 'petrol', 0),
(2042, 'steam:110000107d06976', 'slaughtered_chicken', 0),
(2043, 'steam:110000107d06976', 'washed_stone', 0),
(2044, 'steam:110000107d06976', 'blowpipe', 0),
(2045, 'steam:110000107d06976', 'essence', 0),
(2046, 'steam:110000107d06976', 'c4_bank', 0),
(2047, 'steam:110000107d06976', 'medikit', 0),
(2048, 'steam:110000107d06976', 'fixkit', 0),
(2049, 'steam:110000107d06976', 'morf_pooch', 0),
(2050, 'steam:110000107d06976', 'bandage', 0),
(2051, 'steam:110000107d06976', 'cannabis', 0),
(2052, 'steam:110000107d06976', 'gold', 0),
(2053, 'steam:110000134c6b441', 'clothe', 0),
(2054, 'steam:110000134c6b441', 'petrol_raffin', 0),
(2055, 'steam:110000134c6b441', 'iron', 0),
(2056, 'steam:110000134c6b441', 'fish', 0),
(2057, 'steam:110000134c6b441', 'packaged_plank', 0),
(2058, 'steam:110000134c6b441', 'copper', 0),
(2059, 'steam:110000134c6b441', 'fixtool', 0),
(2060, 'steam:110000134c6b441', 'carokit', 0),
(2061, 'steam:110000134c6b441', 'carotool', 0),
(2062, 'steam:110000134c6b441', 'gazbottle', 0),
(2063, 'steam:110000134c6b441', 'multi_key', 0),
(2064, 'steam:110000134c6b441', 'bread', 10),
(2065, 'steam:110000134c6b441', 'amfa', 0),
(2066, 'steam:110000134c6b441', 'pizza', 0),
(2067, 'steam:110000134c6b441', 'koda_pooch', 0),
(2068, 'steam:110000134c6b441', 'fabric', 0),
(2069, 'steam:110000134c6b441', 'morf', 0),
(2070, 'steam:110000134c6b441', 'amfa_pooch', 0),
(2071, 'steam:110000134c6b441', 'cutted_wood', 0),
(2072, 'steam:110000134c6b441', 'koda', 0),
(2073, 'steam:110000134c6b441', 'alive_chicken', 0),
(2074, 'steam:110000134c6b441', 'wool', 0),
(2075, 'steam:110000134c6b441', 'water', 5),
(2076, 'steam:110000134c6b441', 'wood', 0),
(2077, 'steam:110000134c6b441', 'blowtorch', 0),
(2078, 'steam:110000134c6b441', 'packaged_chicken', 0),
(2079, 'steam:110000134c6b441', 'stone', 0),
(2080, 'steam:110000134c6b441', 'marijuana', 0),
(2081, 'steam:110000134c6b441', 'jewels', 0),
(2082, 'steam:110000134c6b441', 'rasperry', 0),
(2083, 'steam:110000134c6b441', 'diamond', 0),
(2084, 'steam:110000134c6b441', 'solo_key', 0),
(2085, 'steam:110000134c6b441', 'petrol', 0),
(2086, 'steam:110000134c6b441', 'slaughtered_chicken', 0),
(2087, 'steam:110000134c6b441', 'washed_stone', 0),
(2088, 'steam:110000134c6b441', 'blowpipe', 0),
(2089, 'steam:110000134c6b441', 'essence', 0),
(2090, 'steam:110000134c6b441', 'c4_bank', 0),
(2091, 'steam:110000134c6b441', 'medikit', 0),
(2092, 'steam:110000134c6b441', 'fixkit', 0),
(2093, 'steam:110000134c6b441', 'morf_pooch', 0),
(2094, 'steam:110000134c6b441', 'bandage', 0),
(2095, 'steam:110000134c6b441', 'cannabis', 0),
(2096, 'steam:110000134c6b441', 'gold', 0),
(2097, 'steam:11000010b13ed15', 'petrol_raffin', 0),
(2098, 'steam:11000010b13ed15', 'clothe', 0),
(2099, 'steam:11000010b13ed15', 'iron', 0),
(2100, 'steam:11000010b13ed15', 'packaged_plank', 0),
(2101, 'steam:11000010b13ed15', 'fish', 0),
(2102, 'steam:11000010b13ed15', 'copper', 0),
(2103, 'steam:11000010b13ed15', 'fixtool', 0),
(2104, 'steam:11000010b13ed15', 'carokit', 0),
(2105, 'steam:11000010b13ed15', 'gazbottle', 0),
(2106, 'steam:11000010b13ed15', 'carotool', 0),
(2107, 'steam:11000010b13ed15', 'multi_key', 0),
(2108, 'steam:11000010b13ed15', 'bread', 0),
(2109, 'steam:11000010b13ed15', 'amfa', 0),
(2110, 'steam:11000010b13ed15', 'pizza', 0),
(2111, 'steam:11000010b13ed15', 'koda_pooch', 0),
(2112, 'steam:11000010b13ed15', 'fabric', 0),
(2113, 'steam:11000010b13ed15', 'morf', 0),
(2114, 'steam:11000010b13ed15', 'amfa_pooch', 0),
(2115, 'steam:11000010b13ed15', 'cutted_wood', 0),
(2116, 'steam:11000010b13ed15', 'koda', 0),
(2117, 'steam:11000010b13ed15', 'alive_chicken', 0),
(2118, 'steam:11000010b13ed15', 'wool', 0),
(2119, 'steam:11000010b13ed15', 'water', 0),
(2120, 'steam:11000010b13ed15', 'wood', 0),
(2121, 'steam:11000010b13ed15', 'blowtorch', 0),
(2122, 'steam:11000010b13ed15', 'packaged_chicken', 0),
(2123, 'steam:11000010b13ed15', 'stone', 0),
(2124, 'steam:11000010b13ed15', 'marijuana', 0),
(2125, 'steam:11000010b13ed15', 'jewels', 0),
(2126, 'steam:11000010b13ed15', 'rasperry', 0),
(2127, 'steam:11000010b13ed15', 'diamond', 0),
(2128, 'steam:11000010b13ed15', 'solo_key', 0),
(2129, 'steam:11000010b13ed15', 'petrol', 0),
(2130, 'steam:11000010b13ed15', 'slaughtered_chicken', 0),
(2131, 'steam:11000010b13ed15', 'washed_stone', 0),
(2132, 'steam:11000010b13ed15', 'blowpipe', 0),
(2133, 'steam:11000010b13ed15', 'essence', 0),
(2134, 'steam:11000010b13ed15', 'c4_bank', 0),
(2135, 'steam:11000010b13ed15', 'medikit', 0),
(2136, 'steam:11000010b13ed15', 'fixkit', 0),
(2137, 'steam:11000010b13ed15', 'morf_pooch', 0),
(2138, 'steam:11000010b13ed15', 'bandage', 0),
(2139, 'steam:11000010b13ed15', 'cannabis', 0),
(2140, 'steam:11000010b13ed15', 'gold', 0),
(2141, 'steam:11000013b6d8507', 'clothe', 0),
(2142, 'steam:11000013b6d8507', 'petrol_raffin', 0),
(2143, 'steam:11000013b6d8507', 'fish', 0),
(2144, 'steam:11000013b6d8507', 'packaged_plank', 0),
(2145, 'steam:11000013b6d8507', 'iron', 0),
(2146, 'steam:11000013b6d8507', 'copper', 0),
(2147, 'steam:11000013b6d8507', 'fixtool', 0),
(2148, 'steam:11000013b6d8507', 'carokit', 0),
(2149, 'steam:11000013b6d8507', 'carotool', 0),
(2150, 'steam:11000013b6d8507', 'gazbottle', 0),
(2151, 'steam:11000013b6d8507', 'multi_key', 0),
(2152, 'steam:11000013b6d8507', 'bread', 0),
(2153, 'steam:11000013b6d8507', 'amfa', 0),
(2154, 'steam:11000013b6d8507', 'pizza', 0),
(2155, 'steam:11000013b6d8507', 'koda_pooch', 0),
(2156, 'steam:11000013b6d8507', 'fabric', 0),
(2157, 'steam:11000013b6d8507', 'morf', 0),
(2158, 'steam:11000013b6d8507', 'amfa_pooch', 0),
(2159, 'steam:11000013b6d8507', 'cutted_wood', 0),
(2160, 'steam:11000013b6d8507', 'koda', 0),
(2161, 'steam:11000013b6d8507', 'alive_chicken', 0),
(2162, 'steam:11000013b6d8507', 'wool', 0),
(2163, 'steam:11000013b6d8507', 'water', 0),
(2164, 'steam:11000013b6d8507', 'wood', 0),
(2165, 'steam:11000013b6d8507', 'blowtorch', 0),
(2166, 'steam:11000013b6d8507', 'packaged_chicken', 0),
(2167, 'steam:11000013b6d8507', 'stone', 0),
(2168, 'steam:11000013b6d8507', 'marijuana', 0),
(2169, 'steam:11000013b6d8507', 'jewels', 0),
(2170, 'steam:11000013b6d8507', 'rasperry', 0),
(2171, 'steam:11000013b6d8507', 'diamond', 0),
(2172, 'steam:11000013b6d8507', 'solo_key', 0),
(2173, 'steam:11000013b6d8507', 'petrol', 0),
(2174, 'steam:11000013b6d8507', 'slaughtered_chicken', 0),
(2175, 'steam:11000013b6d8507', 'washed_stone', 0),
(2176, 'steam:11000013b6d8507', 'blowpipe', 0),
(2177, 'steam:11000013b6d8507', 'essence', 0),
(2178, 'steam:11000013b6d8507', 'c4_bank', 0),
(2179, 'steam:11000013b6d8507', 'medikit', 0),
(2180, 'steam:11000013b6d8507', 'fixkit', 0),
(2181, 'steam:11000013b6d8507', 'morf_pooch', 0),
(2182, 'steam:11000013b6d8507', 'bandage', 0),
(2183, 'steam:11000013b6d8507', 'cannabis', 0),
(2184, 'steam:11000013b6d8507', 'gold', 0),
(2185, 'steam:110000117222fb4', 'petrol_raffin', 0),
(2186, 'steam:110000117222fb4', 'clothe', 0),
(2187, 'steam:110000117222fb4', 'iron', 0),
(2188, 'steam:110000117222fb4', 'packaged_plank', 0),
(2189, 'steam:110000117222fb4', 'fish', 0),
(2190, 'steam:110000117222fb4', 'fixtool', 0),
(2191, 'steam:110000117222fb4', 'copper', 0),
(2192, 'steam:110000117222fb4', 'carokit', 0),
(2193, 'steam:110000117222fb4', 'gazbottle', 0),
(2194, 'steam:110000117222fb4', 'carotool', 0),
(2195, 'steam:110000117222fb4', 'multi_key', 0),
(2196, 'steam:110000117222fb4', 'bread', 0),
(2197, 'steam:110000117222fb4', 'amfa', 0),
(2198, 'steam:110000117222fb4', 'pizza', 0),
(2199, 'steam:110000117222fb4', 'koda_pooch', 0),
(2200, 'steam:110000117222fb4', 'fabric', 0),
(2201, 'steam:110000117222fb4', 'morf', 0),
(2202, 'steam:110000117222fb4', 'amfa_pooch', 0),
(2203, 'steam:110000117222fb4', 'cutted_wood', 0),
(2204, 'steam:110000117222fb4', 'koda', 0),
(2205, 'steam:110000117222fb4', 'alive_chicken', 0),
(2206, 'steam:110000117222fb4', 'wool', 0),
(2207, 'steam:110000117222fb4', 'water', 0),
(2208, 'steam:110000117222fb4', 'wood', 0),
(2209, 'steam:110000117222fb4', 'blowtorch', 0),
(2210, 'steam:110000117222fb4', 'packaged_chicken', 0),
(2211, 'steam:110000117222fb4', 'stone', 0),
(2212, 'steam:110000117222fb4', 'marijuana', 0),
(2213, 'steam:110000117222fb4', 'jewels', 0),
(2214, 'steam:110000117222fb4', 'rasperry', 0),
(2215, 'steam:110000117222fb4', 'diamond', 0),
(2216, 'steam:110000117222fb4', 'solo_key', 0),
(2217, 'steam:110000117222fb4', 'petrol', 0),
(2218, 'steam:110000117222fb4', 'slaughtered_chicken', 0),
(2219, 'steam:110000117222fb4', 'washed_stone', 0),
(2220, 'steam:110000117222fb4', 'blowpipe', 0),
(2221, 'steam:110000117222fb4', 'essence', 0),
(2222, 'steam:110000117222fb4', 'c4_bank', 0),
(2223, 'steam:110000117222fb4', 'medikit', 0),
(2224, 'steam:110000117222fb4', 'fixkit', 0),
(2225, 'steam:110000117222fb4', 'morf_pooch', 0),
(2226, 'steam:110000117222fb4', 'bandage', 0),
(2227, 'steam:110000117222fb4', 'cannabis', 0),
(2228, 'steam:110000117222fb4', 'gold', 0),
(2229, 'steam:11000010f3310ac', 'petrol_raffin', 0),
(2230, 'steam:11000010f3310ac', 'clothe', 0),
(2231, 'steam:11000010f3310ac', 'iron', 0),
(2232, 'steam:11000010f3310ac', 'packaged_plank', 0),
(2233, 'steam:11000010f3310ac', 'fish', 0),
(2234, 'steam:11000010f3310ac', 'copper', 0),
(2235, 'steam:11000010f3310ac', 'fixtool', 0),
(2236, 'steam:11000010f3310ac', 'carokit', 0),
(2237, 'steam:11000010f3310ac', 'carotool', 0),
(2238, 'steam:11000010f3310ac', 'gazbottle', 0),
(2239, 'steam:11000010f3310ac', 'multi_key', 0),
(2240, 'steam:11000010f3310ac', 'bread', 0),
(2241, 'steam:11000010f3310ac', 'amfa', 0),
(2242, 'steam:11000010f3310ac', 'pizza', 0),
(2243, 'steam:11000010f3310ac', 'koda_pooch', 0),
(2244, 'steam:11000010f3310ac', 'fabric', 0),
(2245, 'steam:11000010f3310ac', 'morf', 0),
(2246, 'steam:11000010f3310ac', 'amfa_pooch', 0),
(2247, 'steam:11000010f3310ac', 'cutted_wood', 0),
(2248, 'steam:11000010f3310ac', 'koda', 0),
(2249, 'steam:11000010f3310ac', 'alive_chicken', 0),
(2250, 'steam:11000010f3310ac', 'wool', 0),
(2251, 'steam:11000010f3310ac', 'water', 0),
(2252, 'steam:11000010f3310ac', 'wood', 0),
(2253, 'steam:11000010f3310ac', 'blowtorch', 0),
(2254, 'steam:11000010f3310ac', 'packaged_chicken', 0),
(2255, 'steam:11000010f3310ac', 'stone', 0),
(2256, 'steam:11000010f3310ac', 'marijuana', 0),
(2257, 'steam:11000010f3310ac', 'jewels', 0),
(2258, 'steam:11000010f3310ac', 'rasperry', 0),
(2259, 'steam:11000010f3310ac', 'diamond', 0),
(2260, 'steam:11000010f3310ac', 'solo_key', 0),
(2261, 'steam:11000010f3310ac', 'petrol', 0),
(2262, 'steam:11000010f3310ac', 'slaughtered_chicken', 0),
(2263, 'steam:11000010f3310ac', 'washed_stone', 0),
(2264, 'steam:11000010f3310ac', 'blowpipe', 0),
(2265, 'steam:11000010f3310ac', 'essence', 0),
(2266, 'steam:11000010f3310ac', 'c4_bank', 0),
(2267, 'steam:11000010f3310ac', 'medikit', 0),
(2268, 'steam:11000010f3310ac', 'fixkit', 0),
(2269, 'steam:11000010f3310ac', 'morf_pooch', 0),
(2270, 'steam:11000010f3310ac', 'bandage', 0),
(2271, 'steam:11000010f3310ac', 'cannabis', 0),
(2272, 'steam:11000010f3310ac', 'gold', 0),
(2273, 'steam:11000013c2ce0a6', 'koda_pooch', 0),
(2274, 'steam:11000013c2ce0a6', 'bandage', 0),
(2275, 'steam:11000013c2ce0a6', 'blowtorch', 0),
(2276, 'steam:11000013c2ce0a6', 'rasperry', 0),
(2277, 'steam:11000013c2ce0a6', 'fabric', 0),
(2278, 'steam:11000013c2ce0a6', 'c4_bank', 0),
(2279, 'steam:11000013c2ce0a6', 'stone', 0),
(2280, 'steam:11000013c2ce0a6', 'washed_stone', 0),
(2281, 'steam:11000013c2ce0a6', 'gold', 0),
(2282, 'steam:11000013c2ce0a6', 'multi_key', 0),
(2283, 'steam:11000013c2ce0a6', 'amfa', 0),
(2284, 'steam:11000013c2ce0a6', 'morf_pooch', 0),
(2285, 'steam:11000013c2ce0a6', 'bread', 0),
(2286, 'steam:11000013c2ce0a6', 'jewels', 0),
(2287, 'steam:11000013c2ce0a6', 'clothe', 0),
(2288, 'steam:11000013c2ce0a6', 'alive_chicken', 0),
(2289, 'steam:11000013c2ce0a6', 'carotool', 0),
(2290, 'steam:11000013c2ce0a6', 'wool', 0),
(2291, 'steam:11000013c2ce0a6', 'cutted_wood', 0),
(2292, 'steam:11000013c2ce0a6', 'packaged_plank', 0),
(2293, 'steam:11000013c2ce0a6', 'morf', 0),
(2294, 'steam:11000013c2ce0a6', 'water', 0),
(2295, 'steam:11000013c2ce0a6', 'solo_key', 0),
(2296, 'steam:11000013c2ce0a6', 'wood', 0),
(2297, 'steam:11000013c2ce0a6', 'slaughtered_chicken', 0),
(2298, 'steam:11000013c2ce0a6', 'petrol_raffin', 0),
(2299, 'steam:11000013c2ce0a6', 'koda', 0),
(2300, 'steam:11000013c2ce0a6', 'blowpipe', 0),
(2301, 'steam:11000013c2ce0a6', 'copper', 0),
(2302, 'steam:11000013c2ce0a6', 'fixtool', 0),
(2303, 'steam:11000013c2ce0a6', 'pizza', 0),
(2304, 'steam:11000013c2ce0a6', 'medikit', 0),
(2305, 'steam:11000013c2ce0a6', 'essence', 0),
(2306, 'steam:11000013c2ce0a6', 'packaged_chicken', 0),
(2307, 'steam:11000013c2ce0a6', 'cannabis', 23),
(2308, 'steam:11000013c2ce0a6', 'iron', 0),
(2309, 'steam:11000013c2ce0a6', 'fish', 0),
(2310, 'steam:11000013c2ce0a6', 'diamond', 0),
(2311, 'steam:11000013c2ce0a6', 'fixkit', 0),
(2312, 'steam:11000013c2ce0a6', 'petrol', 0),
(2313, 'steam:11000013c2ce0a6', 'amfa_pooch', 0),
(2314, 'steam:11000013c2ce0a6', 'carokit', 0),
(2315, 'steam:11000013c2ce0a6', 'marijuana', 0),
(2316, 'steam:11000013c2ce0a6', 'gazbottle', 0),
(2317, 'steam:11000010b08ef51', 'koda_pooch', 0),
(2318, 'steam:11000010b08ef51', 'bandage', 0),
(2319, 'steam:11000010b08ef51', 'blowtorch', 0),
(2320, 'steam:11000010b08ef51', 'rasperry', 0),
(2321, 'steam:11000010b08ef51', 'fabric', 0),
(2322, 'steam:11000010b08ef51', 'c4_bank', 0),
(2323, 'steam:11000010b08ef51', 'stone', 0),
(2324, 'steam:11000010b08ef51', 'washed_stone', 0),
(2325, 'steam:11000010b08ef51', 'gold', 0),
(2326, 'steam:11000010b08ef51', 'multi_key', 0),
(2327, 'steam:11000010b08ef51', 'amfa', 0),
(2328, 'steam:11000010b08ef51', 'morf_pooch', 0),
(2329, 'steam:11000010b08ef51', 'bread', 7),
(2330, 'steam:11000010b08ef51', 'jewels', 0),
(2331, 'steam:11000010b08ef51', 'clothe', 0),
(2332, 'steam:11000010b08ef51', 'alive_chicken', 0),
(2333, 'steam:11000010b08ef51', 'carotool', 0),
(2334, 'steam:11000010b08ef51', 'wool', 0),
(2335, 'steam:11000010b08ef51', 'cutted_wood', 0),
(2336, 'steam:11000010b08ef51', 'packaged_plank', 0),
(2337, 'steam:11000010b08ef51', 'morf', 1),
(2338, 'steam:11000010b08ef51', 'water', 3),
(2339, 'steam:11000010b08ef51', 'solo_key', 0),
(2340, 'steam:11000010b08ef51', 'wood', 0),
(2341, 'steam:11000010b08ef51', 'slaughtered_chicken', 0),
(2342, 'steam:11000010b08ef51', 'petrol_raffin', 0),
(2343, 'steam:11000010b08ef51', 'koda', 0),
(2344, 'steam:11000010b08ef51', 'copper', 0),
(2345, 'steam:11000010b08ef51', 'fixtool', 0),
(2346, 'steam:11000010b08ef51', 'blowpipe', 0),
(2347, 'steam:11000010b08ef51', 'pizza', 0),
(2348, 'steam:11000010b08ef51', 'medikit', 0),
(2349, 'steam:11000010b08ef51', 'essence', 0),
(2350, 'steam:11000010b08ef51', 'packaged_chicken', 0),
(2351, 'steam:11000010b08ef51', 'cannabis', 0),
(2352, 'steam:11000010b08ef51', 'iron', 0),
(2353, 'steam:11000010b08ef51', 'fish', 0),
(2354, 'steam:11000010b08ef51', 'diamond', 0),
(2355, 'steam:11000010b08ef51', 'fixkit', 0),
(2356, 'steam:11000010b08ef51', 'petrol', 0),
(2357, 'steam:11000010b08ef51', 'amfa_pooch', 0),
(2358, 'steam:11000010b08ef51', 'carokit', 0),
(2359, 'steam:11000010b08ef51', 'marijuana', 0),
(2360, 'steam:11000010b08ef51', 'gazbottle', 0),
(2361, 'steam:11000011bb7624b', 'koda_pooch', 0),
(2362, 'steam:11000011bb7624b', 'bandage', 0),
(2363, 'steam:11000011bb7624b', 'blowtorch', 0),
(2364, 'steam:11000011bb7624b', 'rasperry', 0),
(2365, 'steam:11000011bb7624b', 'fabric', 0),
(2366, 'steam:11000011bb7624b', 'c4_bank', 0),
(2367, 'steam:11000011bb7624b', 'stone', 0),
(2368, 'steam:11000011bb7624b', 'washed_stone', 0),
(2369, 'steam:11000011bb7624b', 'gold', 0),
(2370, 'steam:11000011bb7624b', 'multi_key', 0),
(2371, 'steam:11000011bb7624b', 'amfa', 0),
(2372, 'steam:11000011bb7624b', 'morf_pooch', 0),
(2373, 'steam:11000011bb7624b', 'bread', 0),
(2374, 'steam:11000011bb7624b', 'jewels', 0),
(2375, 'steam:11000011bb7624b', 'clothe', 0),
(2376, 'steam:11000011bb7624b', 'alive_chicken', 0),
(2377, 'steam:11000011bb7624b', 'carotool', 0),
(2378, 'steam:11000011bb7624b', 'wool', 0),
(2379, 'steam:11000011bb7624b', 'cutted_wood', 0),
(2380, 'steam:11000011bb7624b', 'packaged_plank', 0),
(2381, 'steam:11000011bb7624b', 'morf', 0),
(2382, 'steam:11000011bb7624b', 'water', 0),
(2383, 'steam:11000011bb7624b', 'solo_key', 0),
(2384, 'steam:11000011bb7624b', 'wood', 0),
(2385, 'steam:11000011bb7624b', 'slaughtered_chicken', 0),
(2386, 'steam:11000011bb7624b', 'petrol_raffin', 0),
(2387, 'steam:11000011bb7624b', 'koda', 0),
(2388, 'steam:11000011bb7624b', 'copper', 0),
(2389, 'steam:11000011bb7624b', 'fixtool', 0),
(2390, 'steam:11000011bb7624b', 'blowpipe', 0),
(2391, 'steam:11000011bb7624b', 'pizza', 0),
(2392, 'steam:11000011bb7624b', 'medikit', 0),
(2393, 'steam:11000011bb7624b', 'essence', 0),
(2394, 'steam:11000011bb7624b', 'packaged_chicken', 0),
(2395, 'steam:11000011bb7624b', 'cannabis', 0),
(2396, 'steam:11000011bb7624b', 'iron', 0),
(2397, 'steam:11000011bb7624b', 'fish', 0),
(2398, 'steam:11000011bb7624b', 'diamond', 0),
(2399, 'steam:11000011bb7624b', 'fixkit', 0),
(2400, 'steam:11000011bb7624b', 'petrol', 0),
(2401, 'steam:11000011bb7624b', 'amfa_pooch', 0),
(2402, 'steam:11000011bb7624b', 'carokit', 0),
(2403, 'steam:11000011bb7624b', 'marijuana', 0),
(2404, 'steam:11000011bb7624b', 'gazbottle', 0),
(2405, 'steam:11000010d0c1172', 'koda_pooch', 0),
(2406, 'steam:11000010d0c1172', 'blowtorch', 0),
(2407, 'steam:11000010d0c1172', 'bandage', 0),
(2408, 'steam:11000010d0c1172', 'rasperry', 0),
(2409, 'steam:11000010d0c1172', 'fabric', 0),
(2410, 'steam:11000010d0c1172', 'c4_bank', 0),
(2411, 'steam:11000010d0c1172', 'stone', 0),
(2412, 'steam:11000010d0c1172', 'washed_stone', 0),
(2413, 'steam:11000010d0c1172', 'gold', 0),
(2414, 'steam:11000010d0c1172', 'multi_key', 0),
(2415, 'steam:11000010d0c1172', 'amfa', 0),
(2416, 'steam:11000010d0c1172', 'morf_pooch', 0),
(2417, 'steam:11000010d0c1172', 'bread', 0),
(2418, 'steam:11000010d0c1172', 'jewels', 0),
(2419, 'steam:11000010d0c1172', 'clothe', 0),
(2420, 'steam:11000010d0c1172', 'alive_chicken', 0),
(2421, 'steam:11000010d0c1172', 'carotool', 0),
(2422, 'steam:11000010d0c1172', 'wool', 0),
(2423, 'steam:11000010d0c1172', 'cutted_wood', 0),
(2424, 'steam:11000010d0c1172', 'packaged_plank', 0),
(2425, 'steam:11000010d0c1172', 'morf', 0),
(2426, 'steam:11000010d0c1172', 'water', 0),
(2427, 'steam:11000010d0c1172', 'solo_key', 0),
(2428, 'steam:11000010d0c1172', 'wood', 0),
(2429, 'steam:11000010d0c1172', 'slaughtered_chicken', 0),
(2430, 'steam:11000010d0c1172', 'petrol_raffin', 0),
(2431, 'steam:11000010d0c1172', 'koda', 0),
(2432, 'steam:11000010d0c1172', 'copper', 0),
(2433, 'steam:11000010d0c1172', 'fixtool', 0),
(2434, 'steam:11000010d0c1172', 'blowpipe', 0),
(2435, 'steam:11000010d0c1172', 'pizza', 0),
(2436, 'steam:11000010d0c1172', 'medikit', 0),
(2437, 'steam:11000010d0c1172', 'essence', 0),
(2438, 'steam:11000010d0c1172', 'packaged_chicken', 0),
(2439, 'steam:11000010d0c1172', 'cannabis', 0),
(2440, 'steam:11000010d0c1172', 'iron', 0),
(2441, 'steam:11000010d0c1172', 'fish', 0),
(2442, 'steam:11000010d0c1172', 'diamond', 0),
(2443, 'steam:11000010d0c1172', 'fixkit', 0),
(2444, 'steam:11000010d0c1172', 'petrol', 0),
(2445, 'steam:11000010d0c1172', 'amfa_pooch', 0),
(2446, 'steam:11000010d0c1172', 'carokit', 0),
(2447, 'steam:11000010d0c1172', 'marijuana', 0),
(2448, 'steam:11000010d0c1172', 'gazbottle', 0),
(2449, 'steam:11000010726b8b3', 'clothe', 0),
(2450, 'steam:11000010726b8b3', 'amfa_pooch', 0),
(2451, 'steam:11000010726b8b3', 'fabric', 0),
(2452, 'steam:11000010726b8b3', 'bandage', 0),
(2453, 'steam:11000010726b8b3', 'bread', 0),
(2454, 'steam:11000010726b8b3', 'marijuana', 0),
(2455, 'steam:11000010726b8b3', 'diamond', 0),
(2456, 'steam:11000010726b8b3', 'copper', 0),
(2457, 'steam:11000010726b8b3', 'morf_pooch', 0),
(2458, 'steam:11000010726b8b3', 'gold', 0),
(2459, 'steam:11000010726b8b3', 'jewels', 0),
(2460, 'steam:11000010726b8b3', 'amfa', 0),
(2461, 'steam:11000010726b8b3', 'fixtool', 0),
(2462, 'steam:11000010726b8b3', 'cutted_wood', 0),
(2463, 'steam:11000010726b8b3', 'koda_pooch', 0),
(2464, 'steam:11000010726b8b3', 'gazbottle', 0),
(2465, 'steam:11000010726b8b3', 'fish', 0),
(2466, 'steam:11000010726b8b3', 'wood', 0),
(2467, 'steam:11000010726b8b3', 'essence', 0),
(2468, 'steam:11000010726b8b3', 'packaged_plank', 0),
(2469, 'steam:11000010726b8b3', 'wool', 0),
(2470, 'steam:11000010726b8b3', 'water', 0),
(2471, 'steam:11000010726b8b3', 'washed_stone', 0),
(2472, 'steam:11000010726b8b3', 'koda', 0),
(2473, 'steam:11000010726b8b3', 'slaughtered_chicken', 0),
(2474, 'steam:11000010726b8b3', 'blowpipe', 0),
(2475, 'steam:11000010726b8b3', 'alive_chicken', 0),
(2476, 'steam:11000010726b8b3', 'solo_key', 0),
(2477, 'steam:11000010726b8b3', 'carotool', 0),
(2478, 'steam:11000010726b8b3', 'blowtorch', 0),
(2479, 'steam:11000010726b8b3', 'rasperry', 0),
(2480, 'steam:11000010726b8b3', 'pizza', 0),
(2481, 'steam:11000010726b8b3', 'cannabis', 0),
(2482, 'steam:11000010726b8b3', 'petrol_raffin', 0),
(2483, 'steam:11000010726b8b3', 'petrol', 0),
(2484, 'steam:11000010726b8b3', 'morf', 0),
(2485, 'steam:11000010726b8b3', 'c4_bank', 0),
(2486, 'steam:11000010726b8b3', 'fixkit', 0),
(2487, 'steam:11000010726b8b3', 'packaged_chicken', 0),
(2488, 'steam:11000010726b8b3', 'multi_key', 0),
(2489, 'steam:11000010726b8b3', 'carokit', 0),
(2490, 'steam:11000010726b8b3', 'medikit', 0),
(2491, 'steam:11000010726b8b3', 'iron', 0),
(2492, 'steam:11000010726b8b3', 'stone', 0),
(2493, 'steam:1100001384ce0d6', 'clothe', 0),
(2494, 'steam:1100001384ce0d6', 'bread', 0),
(2495, 'steam:1100001384ce0d6', 'amfa_pooch', 0),
(2496, 'steam:1100001384ce0d6', 'fabric', 0),
(2497, 'steam:1100001384ce0d6', 'bandage', 20),
(2498, 'steam:1100001384ce0d6', 'marijuana', 0),
(2499, 'steam:1100001384ce0d6', 'diamond', 0),
(2500, 'steam:1100001384ce0d6', 'copper', 0),
(2501, 'steam:1100001384ce0d6', 'morf_pooch', 0),
(2502, 'steam:1100001384ce0d6', 'gold', 0),
(2503, 'steam:1100001384ce0d6', 'jewels', 0),
(2504, 'steam:1100001384ce0d6', 'amfa', 0),
(2505, 'steam:1100001384ce0d6', 'fixtool', 0),
(2506, 'steam:1100001384ce0d6', 'cutted_wood', 0),
(2507, 'steam:1100001384ce0d6', 'koda_pooch', 0),
(2508, 'steam:1100001384ce0d6', 'gazbottle', 0),
(2509, 'steam:1100001384ce0d6', 'fish', 0),
(2510, 'steam:1100001384ce0d6', 'wood', 0),
(2511, 'steam:1100001384ce0d6', 'essence', 0),
(2512, 'steam:1100001384ce0d6', 'packaged_plank', 0),
(2513, 'steam:1100001384ce0d6', 'wool', 0),
(2514, 'steam:1100001384ce0d6', 'water', 0),
(2515, 'steam:1100001384ce0d6', 'washed_stone', 0),
(2516, 'steam:1100001384ce0d6', 'koda', 0),
(2517, 'steam:1100001384ce0d6', 'slaughtered_chicken', 0),
(2518, 'steam:1100001384ce0d6', 'blowpipe', 0),
(2519, 'steam:1100001384ce0d6', 'alive_chicken', 0),
(2520, 'steam:1100001384ce0d6', 'solo_key', 0),
(2521, 'steam:1100001384ce0d6', 'carotool', 0),
(2522, 'steam:1100001384ce0d6', 'blowtorch', 0),
(2523, 'steam:1100001384ce0d6', 'rasperry', 0),
(2524, 'steam:1100001384ce0d6', 'pizza', 0),
(2525, 'steam:1100001384ce0d6', 'cannabis', 0),
(2526, 'steam:1100001384ce0d6', 'petrol_raffin', 0),
(2527, 'steam:1100001384ce0d6', 'petrol', 0),
(2528, 'steam:1100001384ce0d6', 'morf', 0),
(2529, 'steam:1100001384ce0d6', 'c4_bank', 0),
(2530, 'steam:1100001384ce0d6', 'fixkit', 0),
(2531, 'steam:1100001384ce0d6', 'packaged_chicken', 0),
(2532, 'steam:1100001384ce0d6', 'multi_key', 0),
(2533, 'steam:1100001384ce0d6', 'carokit', 0),
(2534, 'steam:1100001384ce0d6', 'medikit', 5),
(2535, 'steam:1100001384ce0d6', 'iron', 0),
(2536, 'steam:1100001384ce0d6', 'stone', 0),
(2537, 'steam:11000010febf2f0', 'drill', 0),
(2538, 'steam:110000107d06976', 'drill', 0),
(2539, 'steam:11000011bb7624b', 'drill', 0),
(2540, 'steam:11000010f2fc36c', 'drill', 0),
(2541, 'steam:11000010a16ed9a', 'drill', 0),
(2542, 'steam:110000135fc6b1e', 'drill', 0),
(2543, 'steam:11000011a1c13e8', 'drill', 0),
(2544, 'steam:11000010bc9777a', 'drill', 0),
(2545, 'steam:11000013c2ce0a6', 'drill', 0),
(2546, 'steam:1100001384ce0d6', 'drill', 0),
(2547, 'steam:11000010f3310ac', 'drill', 0),
(2548, 'steam:110000134c6b441', 'drill', 0),
(2549, 'steam:11000013294aa18', 'fixtool', 0),
(2550, 'steam:11000013294aa18', 'cutted_wood', 0),
(2551, 'steam:11000013294aa18', 'wool', 0),
(2552, 'steam:11000013294aa18', 'amfa_pooch', 0),
(2553, 'steam:11000013294aa18', 'morf_pooch', 0),
(2554, 'steam:11000013294aa18', 'bread', 0),
(2555, 'steam:11000013294aa18', 'fish', 0),
(2556, 'steam:11000013294aa18', 'carotool', 0),
(2557, 'steam:11000013294aa18', 'iron', 0),
(2558, 'steam:11000013294aa18', 'essence', 0),
(2559, 'steam:11000013294aa18', 'cannabis', 0),
(2560, 'steam:11000013294aa18', 'gazbottle', 0),
(2561, 'steam:11000013294aa18', 'petrol', 0),
(2562, 'steam:11000013294aa18', 'water', 0),
(2563, 'steam:11000013294aa18', 'fixkit', 0),
(2564, 'steam:11000013294aa18', 'copper', 0),
(2565, 'steam:11000013294aa18', 'medikit', 0),
(2566, 'steam:11000013294aa18', 'blowtorch', 0),
(2567, 'steam:11000013294aa18', 'gold', 0),
(2568, 'steam:11000013294aa18', 'morf', 0),
(2569, 'steam:11000013294aa18', 'packaged_plank', 0),
(2570, 'steam:11000013294aa18', 'pizza', 0),
(2571, 'steam:11000013294aa18', 'koda', 0),
(2572, 'steam:11000013294aa18', 'fabric', 0),
(2573, 'steam:11000013294aa18', 'drill', 0),
(2574, 'steam:11000013294aa18', 'washed_stone', 0),
(2575, 'steam:11000013294aa18', 'alive_chicken', 0),
(2576, 'steam:11000013294aa18', 'stone', 0),
(2577, 'steam:11000013294aa18', 'solo_key', 0),
(2578, 'steam:11000013294aa18', 'slaughtered_chicken', 0),
(2579, 'steam:11000013294aa18', 'petrol_raffin', 0),
(2580, 'steam:11000013294aa18', 'jewels', 0),
(2581, 'steam:11000013294aa18', 'amfa', 0),
(2582, 'steam:11000013294aa18', 'diamond', 0),
(2583, 'steam:11000013294aa18', 'carokit', 0),
(2584, 'steam:11000013294aa18', 'bandage', 0),
(2585, 'steam:11000013294aa18', 'rasperry', 0),
(2586, 'steam:11000013294aa18', 'wood', 0),
(2587, 'steam:11000013294aa18', 'packaged_chicken', 0),
(2588, 'steam:11000013294aa18', 'multi_key', 0),
(2589, 'steam:11000013294aa18', 'clothe', 0),
(2590, 'steam:11000013294aa18', 'marijuana', 0),
(2591, 'steam:11000013294aa18', 'koda_pooch', 0),
(2592, 'steam:11000013294aa18', 'blowpipe', 0),
(2593, 'steam:11000013294aa18', 'c4_bank', 0),
(2594, 'steam:1100001074b358f', 'morf', 0),
(2595, 'steam:1100001074b358f', 'fixkit', 0),
(2596, 'steam:1100001074b358f', 'cannabis', 1),
(2597, 'steam:1100001074b358f', 'essence', 0),
(2598, 'steam:1100001074b358f', 'pizza', 0),
(2599, 'steam:1100001074b358f', 'jewels', 0),
(2600, 'steam:1100001074b358f', 'fabric', 0),
(2601, 'steam:1100001074b358f', 'multi_key', 0),
(2602, 'steam:1100001074b358f', 'slaughtered_chicken', 0),
(2603, 'steam:1100001074b358f', 'wood', 0),
(2604, 'steam:1100001074b358f', 'stone', 0),
(2605, 'steam:1100001074b358f', 'c4_bank', 0),
(2606, 'steam:1100001074b358f', 'wool', 0),
(2607, 'steam:1100001074b358f', 'bandage', 0),
(2608, 'steam:1100001074b358f', 'morf_pooch', 0),
(2609, 'steam:1100001074b358f', 'marijuana', 0),
(2610, 'steam:1100001074b358f', 'cutted_wood', 0),
(2611, 'steam:1100001074b358f', 'amfa_pooch', 0),
(2612, 'steam:1100001074b358f', 'fixtool', 0),
(2613, 'steam:1100001074b358f', 'solo_key', 0),
(2614, 'steam:1100001074b358f', 'medikit', 0),
(2615, 'steam:1100001074b358f', 'gazbottle', 0),
(2616, 'steam:1100001074b358f', 'carotool', 0),
(2617, 'steam:1100001074b358f', 'rasperry', 0),
(2618, 'steam:1100001074b358f', 'packaged_chicken', 0),
(2619, 'steam:1100001074b358f', 'petrol', 0),
(2620, 'steam:1100001074b358f', 'bread', 0),
(2621, 'steam:1100001074b358f', 'packaged_plank', 0),
(2622, 'steam:1100001074b358f', 'petrol_raffin', 0),
(2623, 'steam:1100001074b358f', 'koda', 0),
(2624, 'steam:1100001074b358f', 'alive_chicken', 0),
(2625, 'steam:1100001074b358f', 'washed_stone', 0),
(2626, 'steam:1100001074b358f', 'diamond', 0),
(2627, 'steam:1100001074b358f', 'copper', 0),
(2628, 'steam:1100001074b358f', 'blowpipe', 0),
(2629, 'steam:1100001074b358f', 'carokit', 0),
(2630, 'steam:1100001074b358f', 'water', 2),
(2631, 'steam:1100001074b358f', 'iron', 0),
(2632, 'steam:1100001074b358f', 'amfa', 0),
(2633, 'steam:1100001074b358f', 'blowtorch', 0),
(2634, 'steam:1100001074b358f', 'gold', 0),
(2635, 'steam:1100001074b358f', 'drill', 0),
(2636, 'steam:1100001074b358f', 'fish', 0),
(2637, 'steam:1100001074b358f', 'koda_pooch', 0),
(2638, 'steam:1100001074b358f', 'clothe', 0),
(2639, 'steam:11000010f742b73', 'morf', 0),
(2640, 'steam:11000010f742b73', 'fixkit', 0),
(2641, 'steam:11000010f742b73', 'cannabis', 0),
(2642, 'steam:11000010f742b73', 'essence', 0),
(2643, 'steam:11000010f742b73', 'pizza', 0),
(2644, 'steam:11000010f742b73', 'jewels', 0),
(2645, 'steam:11000010f742b73', 'fabric', 0),
(2646, 'steam:11000010f742b73', 'multi_key', 0),
(2647, 'steam:11000010f742b73', 'slaughtered_chicken', 0),
(2648, 'steam:11000010f742b73', 'wood', 0),
(2649, 'steam:11000010f742b73', 'stone', 0),
(2650, 'steam:11000010f742b73', 'c4_bank', 0),
(2651, 'steam:11000010f742b73', 'wool', 0),
(2652, 'steam:11000010f742b73', 'bandage', 0),
(2653, 'steam:11000010f742b73', 'morf_pooch', 0),
(2654, 'steam:11000010f742b73', 'marijuana', 0),
(2655, 'steam:11000010f742b73', 'cutted_wood', 0),
(2656, 'steam:11000010f742b73', 'amfa_pooch', 0),
(2657, 'steam:11000010f742b73', 'fixtool', 0),
(2658, 'steam:11000010f742b73', 'solo_key', 0),
(2659, 'steam:11000010f742b73', 'medikit', 0),
(2660, 'steam:11000010f742b73', 'gazbottle', 0),
(2661, 'steam:11000010f742b73', 'rasperry', 0),
(2662, 'steam:11000010f742b73', 'carotool', 0),
(2663, 'steam:11000010f742b73', 'packaged_chicken', 0),
(2664, 'steam:11000010f742b73', 'petrol', 0),
(2665, 'steam:11000010f742b73', 'bread', 1),
(2666, 'steam:11000010f742b73', 'packaged_plank', 0),
(2667, 'steam:11000010f742b73', 'petrol_raffin', 0),
(2668, 'steam:11000010f742b73', 'koda', 0),
(2669, 'steam:11000010f742b73', 'alive_chicken', 0),
(2670, 'steam:11000010f742b73', 'washed_stone', 0),
(2671, 'steam:11000010f742b73', 'diamond', 0),
(2672, 'steam:11000010f742b73', 'copper', 0),
(2673, 'steam:11000010f742b73', 'blowpipe', 0),
(2674, 'steam:11000010f742b73', 'carokit', 0),
(2675, 'steam:11000010f742b73', 'water', 2),
(2676, 'steam:11000010f742b73', 'iron', 0),
(2677, 'steam:11000010f742b73', 'amfa', 0),
(2678, 'steam:11000010f742b73', 'blowtorch', 0),
(2679, 'steam:11000010f742b73', 'gold', 0),
(2680, 'steam:11000010f742b73', 'drill', 0),
(2681, 'steam:11000010f742b73', 'fish', 0),
(2682, 'steam:11000010f742b73', 'koda_pooch', 0),
(2683, 'steam:11000010f742b73', 'clothe', 0),
(2684, 'steam:11000010e572719', 'morf', 0),
(2685, 'steam:11000010e572719', 'fixkit', 0),
(2686, 'steam:11000010e572719', 'cannabis', 0),
(2687, 'steam:11000010e572719', 'essence', 0),
(2688, 'steam:11000010e572719', 'pizza', 0),
(2689, 'steam:11000010e572719', 'jewels', 0),
(2690, 'steam:11000010e572719', 'fabric', 0),
(2691, 'steam:11000010e572719', 'multi_key', 0),
(2692, 'steam:11000010e572719', 'slaughtered_chicken', 0),
(2693, 'steam:11000010e572719', 'wood', 0),
(2694, 'steam:11000010e572719', 'stone', 0),
(2695, 'steam:11000010e572719', 'c4_bank', 0),
(2696, 'steam:11000010e572719', 'wool', 0),
(2697, 'steam:11000010e572719', 'bandage', 20),
(2698, 'steam:11000010e572719', 'morf_pooch', 0),
(2699, 'steam:11000010e572719', 'marijuana', 0),
(2700, 'steam:11000010e572719', 'cutted_wood', 0),
(2701, 'steam:11000010e572719', 'amfa_pooch', 0),
(2702, 'steam:11000010e572719', 'fixtool', 0),
(2703, 'steam:11000010e572719', 'solo_key', 0),
(2704, 'steam:11000010e572719', 'medikit', 5),
(2705, 'steam:11000010e572719', 'gazbottle', 0),
(2706, 'steam:11000010e572719', 'carotool', 0),
(2707, 'steam:11000010e572719', 'rasperry', 0),
(2708, 'steam:11000010e572719', 'packaged_chicken', 0),
(2709, 'steam:11000010e572719', 'petrol', 0),
(2710, 'steam:11000010e572719', 'bread', 0),
(2711, 'steam:11000010e572719', 'packaged_plank', 0),
(2712, 'steam:11000010e572719', 'petrol_raffin', 0),
(2713, 'steam:11000010e572719', 'koda', 0),
(2714, 'steam:11000010e572719', 'alive_chicken', 0),
(2715, 'steam:11000010e572719', 'washed_stone', 0),
(2716, 'steam:11000010e572719', 'diamond', 0),
(2717, 'steam:11000010e572719', 'copper', 0),
(2718, 'steam:11000010e572719', 'blowpipe', 0),
(2719, 'steam:11000010e572719', 'carokit', 0),
(2720, 'steam:11000010e572719', 'water', 0),
(2721, 'steam:11000010e572719', 'iron', 0),
(2722, 'steam:11000010e572719', 'amfa', 0),
(2723, 'steam:11000010e572719', 'blowtorch', 0),
(2724, 'steam:11000010e572719', 'gold', 0),
(2725, 'steam:11000010e572719', 'drill', 0),
(2726, 'steam:11000010e572719', 'fish', 0),
(2727, 'steam:11000010e572719', 'koda_pooch', 0),
(2728, 'steam:11000010e572719', 'clothe', 0),
(2729, 'steam:110000115821821', 'morf', 0),
(2730, 'steam:110000115821821', 'fixkit', 0),
(2731, 'steam:110000115821821', 'cannabis', 0),
(2732, 'steam:110000115821821', 'essence', 0),
(2733, 'steam:110000115821821', 'pizza', 0),
(2734, 'steam:110000115821821', 'jewels', 0),
(2735, 'steam:110000115821821', 'fabric', 0),
(2736, 'steam:110000115821821', 'multi_key', 0),
(2737, 'steam:110000115821821', 'slaughtered_chicken', 0),
(2738, 'steam:110000115821821', 'wood', 0),
(2739, 'steam:110000115821821', 'stone', 0),
(2740, 'steam:110000115821821', 'c4_bank', 0),
(2741, 'steam:110000115821821', 'wool', 0),
(2742, 'steam:110000115821821', 'bandage', 0),
(2743, 'steam:110000115821821', 'morf_pooch', 0),
(2744, 'steam:110000115821821', 'marijuana', 0),
(2745, 'steam:110000115821821', 'cutted_wood', 0),
(2746, 'steam:110000115821821', 'amfa_pooch', 0),
(2747, 'steam:110000115821821', 'fixtool', 0),
(2748, 'steam:110000115821821', 'solo_key', 0),
(2749, 'steam:110000115821821', 'medikit', 0),
(2750, 'steam:110000115821821', 'gazbottle', 0),
(2751, 'steam:110000115821821', 'carotool', 0),
(2752, 'steam:110000115821821', 'rasperry', 0),
(2753, 'steam:110000115821821', 'packaged_chicken', 0),
(2754, 'steam:110000115821821', 'petrol', 0),
(2755, 'steam:110000115821821', 'bread', 0),
(2756, 'steam:110000115821821', 'packaged_plank', 0),
(2757, 'steam:110000115821821', 'petrol_raffin', 0),
(2758, 'steam:110000115821821', 'koda', 0),
(2759, 'steam:110000115821821', 'alive_chicken', 0),
(2760, 'steam:110000115821821', 'washed_stone', 0),
(2761, 'steam:110000115821821', 'diamond', 0),
(2762, 'steam:110000115821821', 'copper', 0),
(2763, 'steam:110000115821821', 'blowpipe', 0),
(2764, 'steam:110000115821821', 'carokit', 0),
(2765, 'steam:110000115821821', 'water', 0),
(2766, 'steam:110000115821821', 'iron', 0),
(2767, 'steam:110000115821821', 'amfa', 0),
(2768, 'steam:110000115821821', 'blowtorch', 0),
(2769, 'steam:110000115821821', 'gold', 0),
(2770, 'steam:110000115821821', 'drill', 0),
(2771, 'steam:110000115821821', 'koda_pooch', 0),
(2772, 'steam:110000115821821', 'fish', 0),
(2773, 'steam:110000115821821', 'clothe', 0),
(2774, 'steam:11000010d328fae', 'fish', 0),
(2775, 'steam:11000010d328fae', 'bread', 0),
(2776, 'steam:11000010d328fae', 'iron', 0),
(2777, 'steam:11000010d328fae', 'solo_key', 0),
(2778, 'steam:11000010d328fae', 'essence', 0),
(2779, 'steam:11000010d328fae', 'bandage', 0),
(2780, 'steam:11000010d328fae', 'gold', 0),
(2781, 'steam:11000010d328fae', 'alive_chicken', 0),
(2782, 'steam:11000010d328fae', 'multi_key', 0),
(2783, 'steam:11000010d328fae', 'amfa', 0),
(2784, 'steam:11000010d328fae', 'koda_pooch', 0),
(2785, 'steam:11000010d328fae', 'fixkit', 0),
(2786, 'steam:11000010d328fae', 'petrol_raffin', 0),
(2787, 'steam:11000010d328fae', 'koda', 0),
(2788, 'steam:11000010d328fae', 'blowpipe', 0),
(2789, 'steam:11000010d328fae', 'stone', 0),
(2790, 'steam:11000010d328fae', 'water', 0),
(2791, 'steam:11000010d328fae', 'jewels', 0),
(2792, 'steam:11000010d328fae', 'fabric', 0),
(2793, 'steam:11000010d328fae', 'marijuana', 0),
(2794, 'steam:11000010d328fae', 'carotool', 0),
(2795, 'steam:11000010d328fae', 'rasperry', 0),
(2796, 'steam:11000010d328fae', 'c4_bank', 0),
(2797, 'steam:11000010d328fae', 'wool', 40),
(2798, 'steam:11000010d328fae', 'wood', 0),
(2799, 'steam:11000010d328fae', 'washed_stone', 0),
(2800, 'steam:11000010d328fae', 'packaged_chicken', 0),
(2801, 'steam:11000010d328fae', 'cutted_wood', 0),
(2802, 'steam:11000010d328fae', 'morf_pooch', 0),
(2803, 'steam:11000010d328fae', 'slaughtered_chicken', 0),
(2804, 'steam:11000010d328fae', 'carokit', 0),
(2805, 'steam:11000010d328fae', 'blowtorch', 0),
(2806, 'steam:11000010d328fae', 'pizza', 0),
(2807, 'steam:11000010d328fae', 'fixtool', 0),
(2808, 'steam:11000010d328fae', 'petrol', 0),
(2809, 'steam:11000010d328fae', 'clothe', 0),
(2810, 'steam:11000010d328fae', 'packaged_plank', 0),
(2811, 'steam:11000010d328fae', 'drill', 0),
(2812, 'steam:11000010d328fae', 'amfa_pooch', 0),
(2813, 'steam:11000010d328fae', 'cannabis', 0),
(2814, 'steam:11000010d328fae', 'copper', 0),
(2815, 'steam:11000010d328fae', 'morf', 0),
(2816, 'steam:11000010d328fae', 'gazbottle', 0),
(2817, 'steam:11000010d328fae', 'medikit', 0),
(2818, 'steam:11000010d328fae', 'diamond', 0),
(2819, 'steam:110000132368c6a', 'fish', 0),
(2820, 'steam:110000132368c6a', 'bread', 0),
(2821, 'steam:110000132368c6a', 'iron', 0),
(2822, 'steam:110000132368c6a', 'solo_key', 0),
(2823, 'steam:110000132368c6a', 'essence', 0),
(2824, 'steam:110000132368c6a', 'bandage', 0),
(2825, 'steam:110000132368c6a', 'gold', 0),
(2826, 'steam:110000132368c6a', 'alive_chicken', 0),
(2827, 'steam:110000132368c6a', 'multi_key', 0),
(2828, 'steam:110000132368c6a', 'amfa', 0),
(2829, 'steam:110000132368c6a', 'koda_pooch', 0),
(2830, 'steam:110000132368c6a', 'fixkit', 0),
(2831, 'steam:110000132368c6a', 'petrol_raffin', 0),
(2832, 'steam:110000132368c6a', 'koda', 0),
(2833, 'steam:110000132368c6a', 'blowpipe', 0),
(2834, 'steam:110000132368c6a', 'stone', 0),
(2835, 'steam:110000132368c6a', 'water', 0),
(2836, 'steam:110000132368c6a', 'jewels', 0);
INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
(2837, 'steam:110000132368c6a', 'fabric', 0),
(2838, 'steam:110000132368c6a', 'marijuana', 0),
(2839, 'steam:110000132368c6a', 'carotool', 0),
(2840, 'steam:110000132368c6a', 'rasperry', 0),
(2841, 'steam:110000132368c6a', 'c4_bank', 0),
(2842, 'steam:110000132368c6a', 'wool', 0),
(2843, 'steam:110000132368c6a', 'wood', 0),
(2844, 'steam:110000132368c6a', 'packaged_chicken', 0),
(2845, 'steam:110000132368c6a', 'washed_stone', 0),
(2846, 'steam:110000132368c6a', 'cutted_wood', 0),
(2847, 'steam:110000132368c6a', 'morf_pooch', 0),
(2848, 'steam:110000132368c6a', 'slaughtered_chicken', 0),
(2849, 'steam:110000132368c6a', 'blowtorch', 0),
(2850, 'steam:110000132368c6a', 'carokit', 0),
(2851, 'steam:110000132368c6a', 'pizza', 0),
(2852, 'steam:110000132368c6a', 'fixtool', 0),
(2853, 'steam:110000132368c6a', 'petrol', 0),
(2854, 'steam:110000132368c6a', 'clothe', 0),
(2855, 'steam:110000132368c6a', 'packaged_plank', 0),
(2856, 'steam:110000132368c6a', 'drill', 0),
(2857, 'steam:110000132368c6a', 'cannabis', 0),
(2858, 'steam:110000132368c6a', 'amfa_pooch', 0),
(2859, 'steam:110000132368c6a', 'copper', 0),
(2860, 'steam:110000132368c6a', 'morf', 0),
(2861, 'steam:110000132368c6a', 'gazbottle', 0),
(2862, 'steam:110000132368c6a', 'medikit', 0),
(2863, 'steam:110000132368c6a', 'diamond', 0),
(2864, 'steam:1100001138a08d6', 'fish', 0),
(2865, 'steam:1100001138a08d6', 'bread', 2),
(2866, 'steam:1100001138a08d6', 'iron', 0),
(2867, 'steam:1100001138a08d6', 'solo_key', 0),
(2868, 'steam:1100001138a08d6', 'essence', 0),
(2869, 'steam:1100001138a08d6', 'bandage', 20),
(2870, 'steam:1100001138a08d6', 'gold', 0),
(2871, 'steam:1100001138a08d6', 'alive_chicken', 0),
(2872, 'steam:1100001138a08d6', 'multi_key', 0),
(2873, 'steam:1100001138a08d6', 'amfa', 0),
(2874, 'steam:1100001138a08d6', 'koda_pooch', 0),
(2875, 'steam:1100001138a08d6', 'fixkit', 0),
(2876, 'steam:1100001138a08d6', 'petrol_raffin', 0),
(2877, 'steam:1100001138a08d6', 'koda', 0),
(2878, 'steam:1100001138a08d6', 'blowpipe', 0),
(2879, 'steam:1100001138a08d6', 'stone', 0),
(2880, 'steam:1100001138a08d6', 'water', 0),
(2881, 'steam:1100001138a08d6', 'jewels', 0),
(2882, 'steam:1100001138a08d6', 'fabric', 0),
(2883, 'steam:1100001138a08d6', 'marijuana', 0),
(2884, 'steam:1100001138a08d6', 'carotool', 0),
(2885, 'steam:1100001138a08d6', 'rasperry', 0),
(2886, 'steam:1100001138a08d6', 'c4_bank', 0),
(2887, 'steam:1100001138a08d6', 'wool', 0),
(2888, 'steam:1100001138a08d6', 'wood', 0),
(2889, 'steam:1100001138a08d6', 'packaged_chicken', 0),
(2890, 'steam:1100001138a08d6', 'washed_stone', 0),
(2891, 'steam:1100001138a08d6', 'cutted_wood', 0),
(2892, 'steam:1100001138a08d6', 'morf_pooch', 0),
(2893, 'steam:1100001138a08d6', 'slaughtered_chicken', 0),
(2894, 'steam:1100001138a08d6', 'carokit', 0),
(2895, 'steam:1100001138a08d6', 'blowtorch', 0),
(2896, 'steam:1100001138a08d6', 'pizza', 0),
(2897, 'steam:1100001138a08d6', 'fixtool', 0),
(2898, 'steam:1100001138a08d6', 'petrol', 0),
(2899, 'steam:1100001138a08d6', 'clothe', 0),
(2900, 'steam:1100001138a08d6', 'packaged_plank', 0),
(2901, 'steam:1100001138a08d6', 'drill', 0),
(2902, 'steam:1100001138a08d6', 'cannabis', 0),
(2903, 'steam:1100001138a08d6', 'amfa_pooch', 0),
(2904, 'steam:1100001138a08d6', 'copper', 0),
(2905, 'steam:1100001138a08d6', 'gazbottle', 0),
(2906, 'steam:1100001138a08d6', 'morf', 0),
(2907, 'steam:1100001138a08d6', 'medikit', 3),
(2908, 'steam:1100001138a08d6', 'diamond', 0),
(2909, 'steam:110000116d82e19', 'fish', 0),
(2910, 'steam:110000116d82e19', 'bread', 6),
(2911, 'steam:110000116d82e19', 'iron', 0),
(2912, 'steam:110000116d82e19', 'solo_key', 0),
(2913, 'steam:110000116d82e19', 'essence', 0),
(2914, 'steam:110000116d82e19', 'bandage', 0),
(2915, 'steam:110000116d82e19', 'gold', 0),
(2916, 'steam:110000116d82e19', 'alive_chicken', 0),
(2917, 'steam:110000116d82e19', 'multi_key', 0),
(2918, 'steam:110000116d82e19', 'amfa', 0),
(2919, 'steam:110000116d82e19', 'koda_pooch', 0),
(2920, 'steam:110000116d82e19', 'fixkit', 0),
(2921, 'steam:110000116d82e19', 'petrol_raffin', 0),
(2922, 'steam:110000116d82e19', 'koda', 0),
(2923, 'steam:110000116d82e19', 'blowpipe', 0),
(2924, 'steam:110000116d82e19', 'stone', 0),
(2925, 'steam:110000116d82e19', 'water', 2),
(2926, 'steam:110000116d82e19', 'jewels', 0),
(2927, 'steam:110000116d82e19', 'fabric', 0),
(2928, 'steam:110000116d82e19', 'marijuana', 0),
(2929, 'steam:110000116d82e19', 'carotool', 0),
(2930, 'steam:110000116d82e19', 'rasperry', 0),
(2931, 'steam:110000116d82e19', 'c4_bank', 0),
(2932, 'steam:110000116d82e19', 'wool', 0),
(2933, 'steam:110000116d82e19', 'wood', 0),
(2934, 'steam:110000116d82e19', 'packaged_chicken', 0),
(2935, 'steam:110000116d82e19', 'washed_stone', 0),
(2936, 'steam:110000116d82e19', 'cutted_wood', 0),
(2937, 'steam:110000116d82e19', 'morf_pooch', 0),
(2938, 'steam:110000116d82e19', 'slaughtered_chicken', 0),
(2939, 'steam:110000116d82e19', 'carokit', 0),
(2940, 'steam:110000116d82e19', 'blowtorch', 0),
(2941, 'steam:110000116d82e19', 'pizza', 0),
(2942, 'steam:110000116d82e19', 'fixtool', 0),
(2943, 'steam:110000116d82e19', 'petrol', 0),
(2944, 'steam:110000116d82e19', 'clothe', 0),
(2945, 'steam:110000116d82e19', 'packaged_plank', 0),
(2946, 'steam:110000116d82e19', 'drill', 0),
(2947, 'steam:110000116d82e19', 'cannabis', 0),
(2948, 'steam:110000116d82e19', 'amfa_pooch', 0),
(2949, 'steam:110000116d82e19', 'copper', 0),
(2950, 'steam:110000116d82e19', 'morf', 0),
(2951, 'steam:110000116d82e19', 'gazbottle', 0),
(2952, 'steam:110000116d82e19', 'medikit', 0),
(2953, 'steam:110000116d82e19', 'diamond', 0),
(2954, 'steam:110000111a49c66', 'fish', 0),
(2955, 'steam:110000111a49c66', 'bread', 0),
(2956, 'steam:110000111a49c66', 'iron', 0),
(2957, 'steam:110000111a49c66', 'solo_key', 0),
(2958, 'steam:110000111a49c66', 'essence', 0),
(2959, 'steam:110000111a49c66', 'bandage', 0),
(2960, 'steam:110000111a49c66', 'gold', 0),
(2961, 'steam:110000111a49c66', 'alive_chicken', 0),
(2962, 'steam:110000111a49c66', 'multi_key', 0),
(2963, 'steam:110000111a49c66', 'amfa', 0),
(2964, 'steam:110000111a49c66', 'koda_pooch', 0),
(2965, 'steam:110000111a49c66', 'fixkit', 0),
(2966, 'steam:110000111a49c66', 'petrol_raffin', 0),
(2967, 'steam:110000111a49c66', 'koda', 0),
(2968, 'steam:110000111a49c66', 'blowpipe', 0),
(2969, 'steam:110000111a49c66', 'stone', 0),
(2970, 'steam:110000111a49c66', 'water', 0),
(2971, 'steam:110000111a49c66', 'jewels', 0),
(2972, 'steam:110000111a49c66', 'fabric', 0),
(2973, 'steam:110000111a49c66', 'marijuana', 0),
(2974, 'steam:110000111a49c66', 'carotool', 0),
(2975, 'steam:110000111a49c66', 'rasperry', 0),
(2976, 'steam:110000111a49c66', 'c4_bank', 0),
(2977, 'steam:110000111a49c66', 'wool', 0),
(2978, 'steam:110000111a49c66', 'wood', 0),
(2979, 'steam:110000111a49c66', 'packaged_chicken', 0),
(2980, 'steam:110000111a49c66', 'washed_stone', 0),
(2981, 'steam:110000111a49c66', 'cutted_wood', 0),
(2982, 'steam:110000111a49c66', 'morf_pooch', 0),
(2983, 'steam:110000111a49c66', 'slaughtered_chicken', 0),
(2984, 'steam:110000111a49c66', 'carokit', 0),
(2985, 'steam:110000111a49c66', 'blowtorch', 0),
(2986, 'steam:110000111a49c66', 'pizza', 0),
(2987, 'steam:110000111a49c66', 'fixtool', 0),
(2988, 'steam:110000111a49c66', 'petrol', 0),
(2989, 'steam:110000111a49c66', 'clothe', 0),
(2990, 'steam:110000111a49c66', 'packaged_plank', 0),
(2991, 'steam:110000111a49c66', 'drill', 0),
(2992, 'steam:110000111a49c66', 'cannabis', 0),
(2993, 'steam:110000111a49c66', 'amfa_pooch', 0),
(2994, 'steam:110000111a49c66', 'copper', 0),
(2995, 'steam:110000111a49c66', 'morf', 0),
(2996, 'steam:110000111a49c66', 'gazbottle', 0),
(2997, 'steam:110000111a49c66', 'medikit', 0),
(2998, 'steam:110000111a49c66', 'diamond', 0),
(2999, 'steam:1100001186b7a77', 'medikit', 0),
(3000, 'steam:1100001186b7a77', 'diamond', 0),
(3001, 'steam:1100001186b7a77', 'alive_chicken', 0),
(3002, 'steam:1100001186b7a77', 'rasperry', 0),
(3003, 'steam:1100001186b7a77', 'fixtool', 0),
(3004, 'steam:1100001186b7a77', 'copper', 0),
(3005, 'steam:1100001186b7a77', 'jewels', 0),
(3006, 'steam:1100001186b7a77', 'fixkit', 0),
(3007, 'steam:1100001186b7a77', 'pizza', 0),
(3008, 'steam:1100001186b7a77', 'essence', 0),
(3009, 'steam:1100001186b7a77', 'petrol', 0),
(3010, 'steam:1100001186b7a77', 'packaged_plank', 0),
(3011, 'steam:1100001186b7a77', 'cannabis', 0),
(3012, 'steam:1100001186b7a77', 'petrol_raffin', 0),
(3013, 'steam:1100001186b7a77', 'morf_pooch', 0),
(3014, 'steam:1100001186b7a77', 'fish', 0),
(3015, 'steam:1100001186b7a77', 'wool', 0),
(3016, 'steam:1100001186b7a77', 'carokit', 0),
(3017, 'steam:1100001186b7a77', 'slaughtered_chicken', 0),
(3018, 'steam:1100001186b7a77', 'wood', 0),
(3019, 'steam:1100001186b7a77', 'multi_key', 0),
(3020, 'steam:1100001186b7a77', 'washed_stone', 0),
(3021, 'steam:1100001186b7a77', 'iron', 0),
(3022, 'steam:1100001186b7a77', 'gold', 0),
(3023, 'steam:1100001186b7a77', 'gazbottle', 0),
(3024, 'steam:1100001186b7a77', 'fabric', 0),
(3025, 'steam:1100001186b7a77', 'clothe', 0),
(3026, 'steam:1100001186b7a77', 'stone', 0),
(3027, 'steam:1100001186b7a77', 'solo_key', 0),
(3028, 'steam:1100001186b7a77', 'packaged_chicken', 0),
(3029, 'steam:1100001186b7a77', 'blowtorch', 0),
(3030, 'steam:1100001186b7a77', 'amfa_pooch', 0),
(3031, 'steam:1100001186b7a77', 'blowpipe', 0),
(3032, 'steam:1100001186b7a77', 'koda_pooch', 0),
(3033, 'steam:1100001186b7a77', 'cutted_wood', 0),
(3034, 'steam:1100001186b7a77', 'koda', 0),
(3035, 'steam:1100001186b7a77', 'amfa', 0),
(3036, 'steam:1100001186b7a77', 'water', 3),
(3037, 'steam:1100001186b7a77', 'carotool', 0),
(3038, 'steam:1100001186b7a77', 'drill', 0),
(3039, 'steam:1100001186b7a77', 'morf', 0),
(3040, 'steam:1100001186b7a77', 'bandage', 0),
(3041, 'steam:1100001186b7a77', 'bread', 7),
(3042, 'steam:1100001186b7a77', 'c4_bank', 0),
(3043, 'steam:1100001186b7a77', 'marijuana', 0),
(3044, 'steam:1100001348c4d8b', 'medikit', 0),
(3045, 'steam:1100001348c4d8b', 'diamond', 0),
(3046, 'steam:1100001348c4d8b', 'alive_chicken', 0),
(3047, 'steam:1100001348c4d8b', 'rasperry', 0),
(3048, 'steam:1100001348c4d8b', 'fixtool', 0),
(3049, 'steam:1100001348c4d8b', 'copper', 0),
(3050, 'steam:1100001348c4d8b', 'jewels', 0),
(3051, 'steam:1100001348c4d8b', 'fixkit', 0),
(3052, 'steam:1100001348c4d8b', 'essence', 0),
(3053, 'steam:1100001348c4d8b', 'pizza', 0),
(3054, 'steam:1100001348c4d8b', 'petrol', 0),
(3055, 'steam:1100001348c4d8b', 'packaged_plank', 0),
(3056, 'steam:1100001348c4d8b', 'petrol_raffin', 0),
(3057, 'steam:1100001348c4d8b', 'cannabis', 0),
(3058, 'steam:1100001348c4d8b', 'morf_pooch', 0),
(3059, 'steam:1100001348c4d8b', 'wool', 0),
(3060, 'steam:1100001348c4d8b', 'fish', 0),
(3061, 'steam:1100001348c4d8b', 'carokit', 0),
(3062, 'steam:1100001348c4d8b', 'slaughtered_chicken', 0),
(3063, 'steam:1100001348c4d8b', 'wood', 0),
(3064, 'steam:1100001348c4d8b', 'multi_key', 0),
(3065, 'steam:1100001348c4d8b', 'washed_stone', 0),
(3066, 'steam:1100001348c4d8b', 'iron', 0),
(3067, 'steam:1100001348c4d8b', 'gold', 0),
(3068, 'steam:1100001348c4d8b', 'gazbottle', 0),
(3069, 'steam:1100001348c4d8b', 'fabric', 0),
(3070, 'steam:1100001348c4d8b', 'clothe', 0),
(3071, 'steam:1100001348c4d8b', 'stone', 0),
(3072, 'steam:1100001348c4d8b', 'solo_key', 0),
(3073, 'steam:1100001348c4d8b', 'packaged_chicken', 0),
(3074, 'steam:1100001348c4d8b', 'blowtorch', 0),
(3075, 'steam:1100001348c4d8b', 'amfa_pooch', 0),
(3076, 'steam:1100001348c4d8b', 'blowpipe', 0),
(3077, 'steam:1100001348c4d8b', 'koda_pooch', 0),
(3078, 'steam:1100001348c4d8b', 'cutted_wood', 0),
(3079, 'steam:1100001348c4d8b', 'koda', 0),
(3080, 'steam:1100001348c4d8b', 'amfa', 0),
(3081, 'steam:1100001348c4d8b', 'water', 3),
(3082, 'steam:1100001348c4d8b', 'carotool', 0),
(3083, 'steam:1100001348c4d8b', 'drill', 0),
(3084, 'steam:1100001348c4d8b', 'morf', 0),
(3085, 'steam:1100001348c4d8b', 'bandage', 0),
(3086, 'steam:1100001348c4d8b', 'bread', 2),
(3087, 'steam:1100001348c4d8b', 'c4_bank', 0),
(3088, 'steam:1100001348c4d8b', 'marijuana', 0),
(3089, 'steam:11000013c51ade8', 'medikit', 0),
(3090, 'steam:11000013c51ade8', 'diamond', 0),
(3091, 'steam:11000013c51ade8', 'alive_chicken', 0),
(3092, 'steam:11000013c51ade8', 'rasperry', 0),
(3093, 'steam:11000013c51ade8', 'fixtool', 0),
(3094, 'steam:11000013c51ade8', 'copper', 0),
(3095, 'steam:11000013c51ade8', 'jewels', 0),
(3096, 'steam:11000013c51ade8', 'fixkit', 0),
(3097, 'steam:11000013c51ade8', 'essence', 0),
(3098, 'steam:11000013c51ade8', 'pizza', 0),
(3099, 'steam:11000013c51ade8', 'petrol', 0),
(3100, 'steam:11000013c51ade8', 'packaged_plank', 0),
(3101, 'steam:11000013c51ade8', 'petrol_raffin', 0),
(3102, 'steam:11000013c51ade8', 'cannabis', 0),
(3103, 'steam:11000013c51ade8', 'morf_pooch', 0),
(3104, 'steam:11000013c51ade8', 'fish', 0),
(3105, 'steam:11000013c51ade8', 'wool', 0),
(3106, 'steam:11000013c51ade8', 'carokit', 0),
(3107, 'steam:11000013c51ade8', 'slaughtered_chicken', 0),
(3108, 'steam:11000013c51ade8', 'wood', 0),
(3109, 'steam:11000013c51ade8', 'multi_key', 0),
(3110, 'steam:11000013c51ade8', 'washed_stone', 0),
(3111, 'steam:11000013c51ade8', 'iron', 0),
(3112, 'steam:11000013c51ade8', 'gold', 0),
(3113, 'steam:11000013c51ade8', 'gazbottle', 0),
(3114, 'steam:11000013c51ade8', 'fabric', 0),
(3115, 'steam:11000013c51ade8', 'clothe', 0),
(3116, 'steam:11000013c51ade8', 'stone', 0),
(3117, 'steam:11000013c51ade8', 'solo_key', 0),
(3118, 'steam:11000013c51ade8', 'packaged_chicken', 0),
(3119, 'steam:11000013c51ade8', 'blowtorch', 0),
(3120, 'steam:11000013c51ade8', 'amfa_pooch', 0),
(3121, 'steam:11000013c51ade8', 'blowpipe', 0),
(3122, 'steam:11000013c51ade8', 'koda_pooch', 0),
(3123, 'steam:11000013c51ade8', 'cutted_wood', 0),
(3124, 'steam:11000013c51ade8', 'koda', 0),
(3125, 'steam:11000013c51ade8', 'amfa', 0),
(3126, 'steam:11000013c51ade8', 'water', 0),
(3127, 'steam:11000013c51ade8', 'carotool', 0),
(3128, 'steam:11000013c51ade8', 'drill', 0),
(3129, 'steam:11000013c51ade8', 'morf', 0),
(3130, 'steam:11000013c51ade8', 'bandage', 0),
(3131, 'steam:11000013c51ade8', 'bread', 0),
(3132, 'steam:11000013c51ade8', 'c4_bank', 0),
(3133, 'steam:11000013c51ade8', 'marijuana', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_licenses`
--

CREATE TABLE `user_licenses` (
  `id` int(11) NOT NULL,
  `type` varchar(60) NOT NULL,
  `owner` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user_licenses`
--

INSERT INTO `user_licenses` (`id`, `type`, `owner`) VALUES
(20, 'weapon', 'steam:110000107d06976'),
(21, 'weapon', 'steam:110000135fc6b1e'),
(22, 'dmv', 'steam:11000010bc9777a'),
(23, 'dmv', 'steam:110000134c6b441'),
(27, 'weapon', 'steam:11000010bc9777a'),
(28, 'dmv', 'steam:110000135fc6b1e'),
(29, 'dmv', 'steam:11000010febf2f0'),
(30, 'drive', 'steam:11000010bc9777a'),
(31, 'dmv', 'steam:110000107d06976'),
(32, 'dmv', 'steam:11000011a1c13e8'),
(33, 'drive', 'steam:11000011a1c13e8'),
(34, 'dmv', 'steam:11000013c2ce0a6'),
(37, 'drive', 'steam:11000013c2ce0a6'),
(38, 'weapon', 'steam:11000011a1c13e8'),
(39, 'dmv', 'steam:11000010a16ed9a'),
(40, 'drive', 'steam:11000010a16ed9a'),
(41, 'drive', 'steam:110000134c6b441'),
(42, 'weapon', 'steam:110000134c6b441'),
(43, 'dmv', 'steam:11000010f2fc36c'),
(44, 'weapon', 'steam:11000010a16ed9a'),
(45, 'weapon', 'steam:11000010f2fc36c'),
(46, 'dmv', 'steam:11000010e572719'),
(47, 'dmv', 'steam:1100001384ce0d6'),
(48, 'drive', 'steam:1100001384ce0d6'),
(49, 'dmv', 'steam:11000010f742b73'),
(51, 'weapon', 'steam:110000132368c6a'),
(52, 'drive', 'steam:110000107d06976'),
(53, 'drive_bike', 'steam:110000107d06976'),
(54, 'dmv', 'steam:1100001138a08d6'),
(55, 'drive', 'steam:1100001138a08d6'),
(56, 'dmv', 'steam:110000116d82e19'),
(57, 'drive', 'steam:110000116d82e19'),
(58, 'drive_truck', 'steam:110000116d82e19'),
(59, 'drive_truck', 'steam:1100001138a08d6'),
(60, 'dmv', 'steam:11000013c51ade8');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_parkings`
--

CREATE TABLE `user_parkings` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) DEFAULT NULL,
  `garage` varchar(60) DEFAULT NULL,
  `zone` int(11) NOT NULL,
  `vehicle` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehicles`
--

CREATE TABLE `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `vehicles`
--

INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
('Honda CBR 1000 RR', '1000rr', 78000, 'motorcycles'),
('BMW 1M 2011', '1m2011', 94000, 'coupes'),
('McLaren 675LT Coupe', '675lt', 1250000, 'super'),
('Porsche 911 Turbo S Cabriolet', '911tbs', 450000, 'sports'),
('Audi A6 Avant 2019', 'a6avant', 250000, 'sedans'),
('Bugatti Veyron', 'adder', 1830000, 'super'),
('Skoda SuperB', 'asterope', 17000, 'coupes'),
('Volkswagen Scirocco', 'blista', 69000, 'sports'),
('Hyundai i30', 'BMHyundaii30', 39000, 'coupes'),
('Dacia Logan', 'buffalo', 10500, 'sedans'),
('Volkswagen Polo R-Line 2018', 'buffalo2', 29000, 'coupes'),
('Cadillac Escalade', 'cavalcade2', 88000, 'suvs'),
('Citroën DS7 Crossback 2018 ', 'ds7', 65000, 'suvs'),
('BMW M5 E39', 'e39', 150000, 'sports'),
('Piaggio Zip', 'faggio', 3500, 'motorcycles'),
('Vespa', 'faggio2', 2800, 'motorcycles'),
('Land Rover Discovery 4', 'fx4', 140000, 'suvs'),
('Kawasaki H2 Carbon', 'h2carb', 478000, 'motorcycles'),
('Honda Civic Type R 2018', 'hondacivictr', 57500, 'sports'),
('Suzuki Hyabusa', 'hyabusadrag', 565000, 'motorcycles'),
('BMW I8 2015', 'i8', 355000, 'sports'),
('VW Passat', 'intruder', 14500, 'coupes'),
('Dacia Sandero', 'issi2', 25000, 'suvs'),
('Lamborghini Aventador LP700R', 'lp700r', 1250000, 'super'),
('Mercedes-Benz C63', 'mb18', 85000, 'sedans'),
('Mercedes-Benz C63 AMG', 'mers63c', 95000, 'sports'),
('Land Cruiser', 'mesa3', 40000, 'suvs'),
('Ford Mustang GT 2015', 'mgt', 135000, 'sports'),
('Chrysler Pacifica Limited 2.0', 'minivan', 55000, 'suvs'),
('Volkswagen Golf R32', 'mkvr32', 355000, 'sports'),
('1972 Chevrolet Napalm Nova', 'nova66', 180000, 'sportsclassics'),
('Alfa Romeo 159', 'oracle', 27000, 'sedans'),
('McLaren P1 2014', 'p1', 789000, 'super'),
('Tesla P90', 'p90d', 180000, 'sedans'),
('Peugeot 208', 'premier', 19500, 'coupes'),
('Audi R8 V10', 'r8ppi', 185000, 'sports'),
('Toyota RAV4', 'radi', 38500, 'suvs'),
('Lexus RCF 2015', 'rcf', 125000, 'sports'),
('Nissan Skyline GT-R', 'skyline', 145000, 'sports'),
('Limusina', 'stretch', 250000, 'sportsclassics'),
('Caravana Surfer', 'surfer', 47000, 'sportsclassics'),
('Range Rover Sport SVR', 'svr16', 127000, 'suvs'),
('VIPER SRT 2016', 'viper', 62500, 'sports'),
('BMW X6M F16', 'x6m', 175000, 'suvs'),
('Yamaha YZF-R6', 'yzfr6', 145000, 'motorcycles');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehicle_categories`
--

CREATE TABLE `vehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `vehicle_categories`
--

INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
('coupes', 'Segunda mano'),
('motorcycles', 'Motos'),
('sedans', 'Sedán'),
('sports', 'Deportivos'),
('sportsclassics', 'Clásicos'),
('super', 'Supercarros'),
('suvs', 'Todoterrenos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehicle_sold`
--

CREATE TABLE `vehicle_sold` (
  `client` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `soldby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `weashops`
--

CREATE TABLE `weashops` (
  `id` int(11) NOT NULL,
  `zone` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `weashops`
--

INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
(1, 'GunShop', 'WEAPON_PISTOL', 3250),
(2, 'BlackWeashop', 'WEAPON_PISTOL', 4200),
(5, 'GunShop', 'WEAPON_MACHETE', 950),
(9, 'GunShop', 'WEAPON_BAT', 800),
(14, 'BlackWeashop', 'WEAPON_MICROSMG', 64000),
(26, 'BlackWeashop', 'WEAPON_GRENADE', 1250),
(34, 'BlackWeashop', 'WEAPON_SMOKEGRENADE', 750),
(36, 'BlackWeashop', 'WEAPON_CARBINERIFLE', 180000);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `addon_account`
--
ALTER TABLE `addon_account`
  ADD PRIMARY KEY (`name`);

--
-- Indices de la tabla `addon_account_data`
--
ALTER TABLE `addon_account_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`),
  ADD KEY `index_addon_account_data_account_name` (`account_name`);

--
-- Indices de la tabla `addon_inventory`
--
ALTER TABLE `addon_inventory`
  ADD PRIMARY KEY (`name`);

--
-- Indices de la tabla `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_addon_inventory_items_inventory_name_name` (`inventory_name`,`name`),
  ADD KEY `index_addon_inventory_items_inventory_name_name_owner` (`inventory_name`,`name`,`owner`),
  ADD KEY `index_addon_inventory_inventory_name` (`inventory_name`);

--
-- Indices de la tabla `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `datastore`
--
ALTER TABLE `datastore`
  ADD PRIMARY KEY (`name`);

--
-- Indices de la tabla `datastore_data`
--
ALTER TABLE `datastore_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_datastore_data_name_owner` (`name`,`owner`),
  ADD KEY `index_datastore_data_name` (`name`);

--
-- Indices de la tabla `fine_types`
--
ALTER TABLE `fine_types`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fine_types_cartel`
--
ALTER TABLE `fine_types_cartel`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fine_types_gang`
--
ALTER TABLE `fine_types_gang`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fine_types_mafia`
--
ALTER TABLE `fine_types_mafia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`name`);

--
-- Indices de la tabla `jail`
--
ALTER TABLE `jail`
  ADD PRIMARY KEY (`identifier`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`name`);

--
-- Indices de la tabla `job_grades`
--
ALTER TABLE `job_grades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`type`);

--
-- Indices de la tabla `multi_race`
--
ALTER TABLE `multi_race`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `owned_properties`
--
ALTER TABLE `owned_properties`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `owned_vehicles`
--
ALTER TABLE `owned_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Indices de la tabla `phone_calls`
--
ALTER TABLE `phone_calls`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `phone_messages`
--
ALTER TABLE `phone_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `record_multi`
--
ALTER TABLE `record_multi`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rented_vehicles`
--
ALTER TABLE `rented_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Indices de la tabla `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `society_moneywash`
--
ALTER TABLE `society_moneywash`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `solo_race`
--
ALTER TABLE `solo_race`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `truck_inventory`
--
ALTER TABLE `truck_inventory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `item` (`item`,`plate`);

--
-- Indices de la tabla `trunk_inventory`
--
ALTER TABLE `trunk_inventory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plate` (`plate`);

--
-- Indices de la tabla `twitter_accounts`
--
ALTER TABLE `twitter_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `twitter_likes`
--
ALTER TABLE `twitter_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_twitter_likes_twitter_accounts` (`authorId`),
  ADD KEY `FK_twitter_likes_twitter_tweets` (`tweetId`);

--
-- Indices de la tabla `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_twitter_tweets_twitter_accounts` (`authorId`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `index_users_phone_number` (`phone_number`);

--
-- Indices de la tabla `user_accounts`
--
ALTER TABLE `user_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user_contacts`
--
ALTER TABLE `user_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_user_contacts_identifier_name_number` (`identifier`,`name`,`number`);

--
-- Indices de la tabla `user_inventory`
--
ALTER TABLE `user_inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user_licenses`
--
ALTER TABLE `user_licenses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user_parkings`
--
ALTER TABLE `user_parkings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`model`);

--
-- Indices de la tabla `vehicle_categories`
--
ALTER TABLE `vehicle_categories`
  ADD PRIMARY KEY (`name`);

--
-- Indices de la tabla `vehicle_sold`
--
ALTER TABLE `vehicle_sold`
  ADD PRIMARY KEY (`plate`);

--
-- Indices de la tabla `weashops`
--
ALTER TABLE `weashops`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `addon_account_data`
--
ALTER TABLE `addon_account_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT de la tabla `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `characters`
--
ALTER TABLE `characters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT de la tabla `datastore_data`
--
ALTER TABLE `datastore_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT de la tabla `fine_types`
--
ALTER TABLE `fine_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT de la tabla `fine_types_cartel`
--
ALTER TABLE `fine_types_cartel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `fine_types_gang`
--
ALTER TABLE `fine_types_gang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `fine_types_mafia`
--
ALTER TABLE `fine_types_mafia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `job_grades`
--
ALTER TABLE `job_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT de la tabla `multi_race`
--
ALTER TABLE `multi_race`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `owned_properties`
--
ALTER TABLE `owned_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `phone_calls`
--
ALTER TABLE `phone_calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT de la tabla `phone_messages`
--
ALTER TABLE `phone_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=867;

--
-- AUTO_INCREMENT de la tabla `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `record_multi`
--
ALTER TABLE `record_multi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `society_moneywash`
--
ALTER TABLE `society_moneywash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `solo_race`
--
ALTER TABLE `solo_race`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `truck_inventory`
--
ALTER TABLE `truck_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `trunk_inventory`
--
ALTER TABLE `trunk_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `twitter_accounts`
--
ALTER TABLE `twitter_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `twitter_likes`
--
ALTER TABLE `twitter_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `user_accounts`
--
ALTER TABLE `user_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT de la tabla `user_contacts`
--
ALTER TABLE `user_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `user_inventory`
--
ALTER TABLE `user_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3134;

--
-- AUTO_INCREMENT de la tabla `user_licenses`
--
ALTER TABLE `user_licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `user_parkings`
--
ALTER TABLE `user_parkings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `weashops`
--
ALTER TABLE `weashops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `twitter_likes`
--
ALTER TABLE `twitter_likes`
  ADD CONSTRAINT `FK_twitter_likes_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`),
  ADD CONSTRAINT `FK_twitter_likes_twitter_tweets` FOREIGN KEY (`tweetId`) REFERENCES `twitter_tweets` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  ADD CONSTRAINT `FK_twitter_tweets_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
