-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 02 Sty 2023, 19:15
-- Wersja serwera: 10.4.24-MariaDB
-- Wersja PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `piotreq`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `addon_account`
--

CREATE TABLE `addon_account` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `addon_account`
--

INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
('society_ambulance', 'EMS', 1),
('society_arcade', 'Arcade Bar', 1),
('society_carzone', 'CarZone', 1),
('society_dycha', 'Dycha', 1),
('society_pdm', 'Salon Samochodowy', 1),
('society_police', 'Police', 1),
('society_realestateagent', 'Agent Nieruchomości', 1),
('society_sewing', 'Szwalnia', 1),
('society_uwu', 'uwu', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `addon_account_data`
--

CREATE TABLE `addon_account_data` (
  `id` int(11) NOT NULL,
  `account_name` varchar(100) DEFAULT NULL,
  `money` int(11) NOT NULL,
  `owner` varchar(46) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `addon_account_data`
--

INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
(2, 'society_police', 1000, NULL),
(3, 'society_ambulance', 500, NULL),
(4, 'society_carzone', 676622, NULL),
(14, 'society_uwu', 500, NULL),
(16, 'society_dycha', 50000, NULL),
(19, 'society_realestateagent', 500, NULL),
(20, 'society_arcade', 100250, NULL),
(21, 'society_pdm', 2262872, NULL),
(22, 'society_sewing', 50200, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `banking`
--

CREATE TABLE `banking` (
  `identifier` varchar(46) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `amount` int(64) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  `ID` int(11) NOT NULL,
  `balance` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `billing`
--

CREATE TABLE `billing` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `sender` varchar(60) NOT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(40) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cardealer_vehicles`
--

CREATE TABLE `cardealer_vehicles` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `czmdt_faktury`
--

CREATE TABLE `czmdt_faktury` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `charname` varchar(255) NOT NULL,
  `fp` varchar(255) NOT NULL,
  `reason` longtext NOT NULL,
  `fee` int(11) NOT NULL,
  `length` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `czmdt_notatki`
--

CREATE TABLE `czmdt_notatki` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) COLLATE utf8mb4_bin DEFAULT NULL,
  `notatka` text COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Zrzut danych tabeli `czmdt_notatki`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `czmdt_ogloszenia`
--

CREATE TABLE `czmdt_ogloszenia` (
  `id` int(11) NOT NULL,
  `fp` varchar(255) DEFAULT NULL,
  `ogloszenie` longtext NOT NULL,
  `date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `czmdt_raporty`
--

CREATE TABLE `czmdt_raporty` (
  `id` int(11) NOT NULL,
  `fp` varchar(255) DEFAULT NULL,
  `raport` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `datastore`
--

CREATE TABLE `datastore` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `datastore`
--

INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
('property', 'Property', 0),
('society_ambulance', 'EMS', 1),
('society_carzone', 'CarZone', 1),
('society_dycha', 'Dycha', 0),
('society_police', 'Police', 1),
('society_taxi', 'Taxi', 1),
('society_uwu', 'uwu', 1),
('user_ears', 'Ears', 0),
('user_glasses', 'Glasses', 0),
('user_helmet', 'Helmet', 0),
('user_mask', 'Mask', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `datastore_data`
--

CREATE TABLE `datastore_data` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `owner` varchar(46) DEFAULT NULL,
  `data` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `datastore_data`
--

INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
(1, 'society_police', NULL, '{}'),
(2, 'society_ambulance', NULL, '{}'),
(3, 'society_carzone', NULL, '{}'),
(4, 'society_taxi', NULL, '{}'),
(5, 'property', NULL, '{}'),
(6, 'property', NULL, '{}'),
(7, 'property', NULL, '{}'),
(8, 'property', NULL, '{}'),
(9, 'property', NULL, '{}'),
(14, 'property', NULL, '{}'),
(15, 'property', NULL, '{}'),
(16, 'property', NULL, '{}'),
(17, 'property', NULL, '{}'),
(22, 'property', NULL, '{}'),
(23, 'property', NULL, '{}'),
(24, 'property', NULL, '{}'),
(25, 'property', NULL, '{}'),
(26, 'property', NULL, '{}'),
(27, 'property', NULL, '{}'),
(28, 'property', NULL, '{}'),
(29, 'property', NULL, '{}'),
(30, 'property', NULL, '{}'),
(31, 'property', NULL, '{}'),
(32, 'property', NULL, '{}'),
(33, 'property', NULL, '{}'),
(34, 'property', NULL, '{}'),
(35, 'property', NULL, '{}'),
(36, 'property', NULL, '{}'),
(37, 'property', NULL, '{}'),
(38, 'property', NULL, '{}'),
(39, 'property', NULL, '{}'),
(40, 'property', NULL, '{}'),
(41, 'property', NULL, '{}'),
(42, 'property', NULL, '{}'),
(43, 'property', NULL, '{}'),
(44, 'property', NULL, '{}'),
(45, 'property', NULL, '{}'),
(46, 'property', NULL, '{}'),
(47, 'property', NULL, '{}'),
(48, 'property', NULL, '{}'),
(49, 'property', NULL, '{}'),
(50, 'property', NULL, '{}'),
(51, 'property', NULL, '{}'),
(53, 'property', NULL, '{}'),
(54, 'property', NULL, '{}'),
(55, 'property', NULL, '{}'),
(56, 'property', NULL, '{}'),
(57, 'property', NULL, '{}'),
(58, 'property', NULL, '{}'),
(59, 'property', NULL, '{}'),
(60, 'property', NULL, '{}'),
(61, 'property', NULL, '{}'),
(62, 'property', NULL, '{}'),
(63, 'property', NULL, '{}'),
(64, 'property', NULL, '{}'),
(65, 'property', NULL, '{}'),
(66, 'property', NULL, '{}'),
(67, 'property', NULL, '{}'),
(68, 'property', NULL, '{}'),
(69, 'property', NULL, '{}'),
(70, 'property', NULL, '{}'),
(71, 'property', NULL, '{}'),
(72, 'property', NULL, '{}'),
(73, 'property', NULL, '{}'),
(74, 'property', NULL, '{}'),
(75, 'property', NULL, '{}'),
(76, 'property', NULL, '{}'),
(77, 'property', NULL, '{}'),
(78, 'property', NULL, '{}'),
(79, 'property', NULL, '{}'),
(80, 'property', NULL, '{}'),
(81, 'property', NULL, '{}'),
(82, 'property', NULL, '{}'),
(83, 'property', NULL, '{}'),
(84, 'property', NULL, '{}'),
(85, 'property', NULL, '{}'),
(86, 'property', NULL, '{}'),
(87, 'property', NULL, '{}'),
(88, 'property', NULL, '{}'),
(89, 'property', NULL, '{}'),
(90, 'property', NULL, '{}'),
(91, 'property', NULL, '{}'),
(92, 'property', NULL, '{}'),
(93, 'property', NULL, '{}'),
(94, 'property', NULL, '{}'),
(95, 'property', NULL, '{}'),
(96, 'property', NULL, '{}'),
(97, 'property', NULL, '{}'),
(98, 'property', NULL, '{}'),
(99, 'property', NULL, '{}'),
(100, 'property', NULL, '{}'),
(101, 'property', NULL, '{}'),
(102, 'property', NULL, '{}'),
(103, 'property', NULL, '{}'),
(105, 'property', NULL, '{}'),
(107, 'property', NULL, '{}'),
(108, 'property', NULL, '{}'),
(109, 'property', NULL, '{}'),
(110, 'property', NULL, '{}'),
(111, 'property', NULL, '{}'),
(112, 'property', NULL, '{}'),
(113, 'property', NULL, '{}'),
(114, 'property', NULL, '{}'),
(115, 'property', NULL, '{}'),
(116, 'property', NULL, '{}'),
(117, 'property', NULL, '{}'),
(118, 'property', NULL, '{}'),
(119, 'property', NULL, '{}'),
(120, 'property', NULL, '{}'),
(121, 'property', NULL, '{}'),
(122, 'property', NULL, '{}'),
(123, 'property', NULL, '{}'),
(124, 'property', NULL, '{}'),
(125, 'property', NULL, '{}'),
(126, 'property', NULL, '{}'),
(127, 'property', NULL, '{}'),
(128, 'property', NULL, '{}'),
(129, 'property', NULL, '{}'),
(130, 'property', NULL, '{}'),
(131, 'property', NULL, '{}'),
(132, 'property', NULL, '{}'),
(133, 'property', NULL, '{}'),
(134, 'property', NULL, '{}'),
(135, 'property', NULL, '{}'),
(136, 'property', NULL, '{}'),
(138, 'property', NULL, '{}'),
(139, 'property', NULL, '{}'),
(140, 'property', NULL, '{}'),
(141, 'property', NULL, '{}'),
(142, 'property', NULL, '{}'),
(143, 'property', NULL, '{}'),
(144, 'property', NULL, '{}'),
(145, 'property', NULL, '{}'),
(146, 'property', NULL, '{}'),
(147, 'property', NULL, '{}'),
(148, 'property', NULL, '{}'),
(149, 'property', NULL, '{}'),
(150, 'property', NULL, '{}'),
(151, 'property', NULL, '{}'),
(152, 'property', NULL, '{}'),
(153, 'property', NULL, '{}'),
(154, 'property', NULL, '{}'),
(155, 'property', NULL, '{}'),
(156, 'property', NULL, '{}'),
(157, 'property', NULL, '{}'),
(158, 'property', NULL, '{}'),
(159, 'property', NULL, '{}'),
(160, 'property', NULL, '{}'),
(161, 'property', NULL, '{}'),
(162, 'property', NULL, '{}'),
(163, 'property', NULL, '{}'),
(164, 'property', NULL, '{}'),
(165, 'property', NULL, '{}'),
(166, 'property', NULL, '{}'),
(167, 'property', NULL, '{}'),
(168, 'property', NULL, '{}'),
(169, 'property', NULL, '{}'),
(170, 'property', NULL, '{}'),
(171, 'property', NULL, '{}'),
(172, 'property', NULL, '{}'),
(173, 'property', NULL, '{}'),
(174, 'property', NULL, '{}'),
(175, 'property', NULL, '{}'),
(176, 'property', NULL, '{}'),
(177, 'property', NULL, '{}'),
(178, 'property', NULL, '{}'),
(179, 'property', NULL, '{}'),
(180, 'property', NULL, '{}'),
(181, 'property', NULL, '{}'),
(182, 'property', NULL, '{}'),
(183, 'property', NULL, '{}'),
(184, 'property', NULL, '{}'),
(185, 'property', NULL, '{}'),
(186, 'property', NULL, '{}'),
(187, 'property', NULL, '{}'),
(188, 'property', NULL, '{}'),
(189, 'property', NULL, '{}'),
(190, 'property', NULL, '{}'),
(191, 'property', NULL, '{}'),
(192, 'property', NULL, '{}'),
(193, 'property', NULL, '{}'),
(194, 'property', NULL, '{}'),
(195, 'property', NULL, '{}'),
(196, 'property', NULL, '{}'),
(197, 'property', NULL, '{}'),
(198, 'property', NULL, '{}'),
(199, 'property', NULL, '{}'),
(200, 'property', NULL, '{}'),
(201, 'property', NULL, '{}'),
(202, 'property', NULL, '{}'),
(203, 'property', NULL, '{}'),
(204, 'property', NULL, '{}'),
(205, 'property', NULL, '{}'),
(206, 'property', NULL, '{}'),
(207, 'property', NULL, '{}'),
(208, 'property', NULL, '{}'),
(209, 'property', NULL, '{}'),
(210, 'property', NULL, '{}'),
(211, 'property', NULL, '{}'),
(212, 'property', NULL, '{}'),
(213, 'property', NULL, '{}'),
(214, 'property', NULL, '{}'),
(215, 'property', NULL, '{}'),
(216, 'property', NULL, '{}'),
(217, 'property', NULL, '{}'),
(218, 'property', NULL, '{}'),
(219, 'property', NULL, '{}'),
(220, 'property', NULL, '{}'),
(221, 'property', NULL, '{}'),
(222, 'property', NULL, '{}'),
(223, 'property', NULL, '{}'),
(224, 'property', NULL, '{}'),
(225, 'property', NULL, '{}'),
(226, 'property', NULL, '{}'),
(227, 'property', NULL, '{}'),
(228, 'property', NULL, '{}'),
(229, 'property', NULL, '{}'),
(230, 'property', NULL, '{}'),
(231, 'property', NULL, '{}'),
(232, 'property', NULL, '{}'),
(233, 'property', NULL, '{}'),
(234, 'property', NULL, '{}'),
(235, 'property', NULL, '{}'),
(236, 'property', NULL, '{}'),
(237, 'property', NULL, '{}'),
(238, 'property', NULL, '{}'),
(239, 'property', NULL, '{}'),
(240, 'property', NULL, '{}'),
(241, 'property', NULL, '{}'),
(242, 'property', NULL, '{}'),
(243, 'property', NULL, '{}'),
(244, 'property', NULL, '{}'),
(245, 'property', NULL, '{}'),
(246, 'property', NULL, '{}'),
(247, 'property', NULL, '{}'),
(248, 'property', NULL, '{}'),
(249, 'property', NULL, '{}'),
(250, 'property', NULL, '{}'),
(251, 'property', NULL, '{}'),
(252, 'property', NULL, '{}'),
(253, 'property', NULL, '{}'),
(254, 'property', NULL, '{}'),
(255, 'property', NULL, '{}'),
(256, 'property', NULL, '{}'),
(257, 'property', NULL, '{}'),
(258, 'property', NULL, '{}'),
(259, 'property', NULL, '{}'),
(260, 'property', NULL, '{}'),
(261, 'property', NULL, '{}'),
(262, 'property', NULL, '{}'),
(263, 'property', NULL, '{}'),
(264, 'property', NULL, '{}'),
(265, 'property', NULL, '{}'),
(266, 'property', NULL, '{}'),
(267, 'property', NULL, '{}'),
(268, 'property', NULL, '{}'),
(269, 'property', NULL, '{}'),
(270, 'property', NULL, '{}'),
(271, 'property', NULL, '{}'),
(272, 'property', NULL, '{}'),
(273, 'property', NULL, '{}'),
(274, 'property', NULL, '{}'),
(275, 'property', NULL, '{}'),
(276, 'property', NULL, '{}'),
(277, 'property', NULL, '{}'),
(278, 'property', NULL, '{}'),
(279, 'property', NULL, '{}'),
(280, 'property', NULL, '{}'),
(281, 'property', NULL, '{}'),
(282, 'property', NULL, '{}'),
(283, 'property', NULL, '{}'),
(284, 'property', NULL, '{}'),
(285, 'property', NULL, '{}'),
(286, 'property', NULL, '{}'),
(287, 'property', NULL, '{}'),
(288, 'property', NULL, '{}'),
(289, 'property', NULL, '{}'),
(290, 'property', NULL, '{}'),
(291, 'property', NULL, '{}'),
(292, 'property', NULL, '{}'),
(293, 'property', NULL, '{}'),
(294, 'property', NULL, '{}'),
(295, 'property', NULL, '{}'),
(296, 'property', NULL, '{}'),
(297, 'property', NULL, '{}'),
(298, 'property', NULL, '{}'),
(299, 'property', NULL, '{}'),
(300, 'property', NULL, '{}'),
(301, 'property', NULL, '{}'),
(302, 'property', NULL, '{}'),
(303, 'property', NULL, '{}'),
(304, 'property', NULL, '{}'),
(305, 'property', NULL, '{}'),
(306, 'property', NULL, '{}'),
(307, 'property', NULL, '{}'),
(308, 'property', NULL, '{}'),
(309, 'property', NULL, '{}'),
(310, 'property', NULL, '{}'),
(311, 'property', NULL, '{}'),
(312, 'property', NULL, '{}'),
(313, 'property', NULL, '{}'),
(314, 'property', NULL, '{}'),
(315, 'property', NULL, '{}'),
(316, 'property', NULL, '{}'),
(317, 'property', NULL, '{}'),
(318, 'property', NULL, '{}'),
(319, 'property', NULL, '{}'),
(320, 'property', NULL, '{}'),
(321, 'property', NULL, '{}'),
(322, 'property', NULL, '{}'),
(323, 'property', NULL, '{}'),
(324, 'property', NULL, '{}'),
(325, 'property', NULL, '{}'),
(326, 'property', NULL, '{}'),
(327, 'property', NULL, '{}'),
(328, 'property', NULL, '{}'),
(329, 'property', NULL, '{}'),
(330, 'property', NULL, '{}'),
(331, 'property', NULL, '{}'),
(332, 'property', NULL, '{}'),
(333, 'society_uwu', NULL, '\'{}\''),
(334, 'property', NULL, '{}'),
(335, 'society_dycha', 'char1:aaeac26a9b2f772d57def8e40e494167a6e67790', '{}'),
(336, 'property', NULL, '{}'),
(337, 'property', NULL, '{}'),
(338, 'property', NULL, '{}'),
(339, 'property', NULL, '{}'),
(340, 'property', NULL, '{}'),
(341, 'property', NULL, '{}'),
(342, 'property', NULL, '{}'),
(343, 'property', NULL, '{}'),
(344, 'property', NULL, '{}'),
(345, 'property', NULL, '{}'),
(346, 'property', NULL, '{}'),
(347, 'property', NULL, '{}'),
(348, 'property', NULL, '{}'),
(349, 'property', NULL, '{}'),
(350, 'property', NULL, '{}'),
(351, 'property', NULL, '{}'),
(352, 'property', NULL, '{}'),
(353, 'property', NULL, '{}'),
(354, 'property', NULL, '{}'),
(355, 'property', NULL, '{}'),
(356, 'property', NULL, '{}'),
(357, 'property', NULL, '{}'),
(358, 'property', NULL, '{}'),
(359, 'property', NULL, '{}'),
(360, 'property', NULL, '{}'),
(361, 'property', NULL, '{}'),
(362, 'property', NULL, '{}'),
(364, 'property', NULL, '{}'),
(365, 'property', NULL, '{}'),
(366, 'property', NULL, '{}'),
(367, 'property', NULL, '{}'),
(368, 'property', NULL, '{}'),
(369, 'property', NULL, '{}'),
(370, 'property', NULL, '{}'),
(371, 'property', NULL, '{}'),
(372, 'property', NULL, '{}'),
(373, 'property', NULL, '{}'),
(374, 'property', NULL, '{}'),
(375, 'property', NULL, '{}'),
(376, 'property', NULL, '{}'),
(377, 'property', NULL, '{}'),
(378, 'property', NULL, '{}'),
(379, 'property', NULL, '{}'),
(380, 'property', NULL, '{}'),
(381, 'property', NULL, '{}'),
(387, 'property', NULL, '{}'),
(388, 'property', NULL, '{}'),
(389, 'property', NULL, '{}'),
(390, 'property', NULL, '{}'),
(391, 'property', NULL, '{}'),
(393, 'property', NULL, '{}'),
(398, 'property', NULL, '{}'),
(399, 'property', NULL, '{}'),
(400, 'property', NULL, '{}'),
(401, 'property', NULL, '{}'),
(402, 'property', NULL, '{}'),
(403, 'property', NULL, '{}'),
(405, 'property', NULL, '{}'),
(410, 'property', NULL, '{}'),
(416, 'property', NULL, '{}'),
(417, 'property', NULL, '{}'),
(418, 'property', NULL, '{}'),
(419, 'property', NULL, '{}'),
(420, 'property', NULL, '{}'),
(421, 'property', NULL, '{}'),
(422, 'property', NULL, '{}'),
(423, 'property', NULL, '{}'),
(424, 'property', NULL, '{}'),
(425, 'property', NULL, '{}'),
(426, 'property', NULL, '{}'),
(427, 'property', NULL, '{}'),
(428, 'property', NULL, '{}'),
(429, 'property', NULL, '{}'),
(430, 'property', NULL, '{}'),
(431, 'property', NULL, '{}'),
(432, 'property', NULL, '{}'),
(433, 'property', NULL, '{}'),
(434, 'property', NULL, '{}'),
(435, 'property', NULL, '{}'),
(436, 'property', NULL, '{}'),
(437, 'property', NULL, '{}'),
(438, 'property', NULL, '{}'),
(439, 'property', NULL, '{}'),
(440, 'property', NULL, '{}'),
(441, 'property', NULL, '{}'),
(442, 'property', NULL, '{}'),
(443, 'property', NULL, '{}'),
(444, 'property', NULL, '{}'),
(445, 'property', NULL, '{}'),
(446, 'property', NULL, '{}'),
(447, 'property', NULL, '{}'),
(448, 'property', NULL, '{}'),
(449, 'property', NULL, '{}'),
(450, 'property', NULL, '{}'),
(451, 'property', NULL, '{}'),
(452, 'property', NULL, '{}'),
(453, 'property', NULL, '{}'),
(454, 'property', NULL, '{}'),
(455, 'property', NULL, '{}'),
(456, 'property', NULL, '{}'),
(457, 'property', NULL, '{}'),
(458, 'property', NULL, '{}'),
(459, 'property', NULL, '{}'),
(460, 'property', NULL, '{}'),
(461, 'property', NULL, '{}'),
(462, 'property', NULL, '{}'),
(463, 'property', NULL, '{}'),
(469, 'property', NULL, '{}'),
(470, 'property', NULL, '{}'),
(471, 'property', NULL, '{}'),
(472, 'property', NULL, '{}'),
(473, 'property', NULL, '{}'),
(474, 'property', NULL, '{}'),
(475, 'property', NULL, '{}'),
(476, 'property', NULL, '{}'),
(477, 'property', NULL, '{}'),
(478, 'property', NULL, '{}'),
(479, 'property', NULL, '{}'),
(480, 'property', NULL, '{}'),
(481, 'property', NULL, '{}'),
(482, 'property', NULL, '{}'),
(483, 'property', NULL, '{}'),
(484, 'property', NULL, '{}'),
(485, 'property', NULL, '{}'),
(486, 'property', NULL, '{}'),
(487, 'property', NULL, '{}'),
(488, 'property', NULL, '{}'),
(489, 'property', NULL, '{}'),
(490, 'property', NULL, '{}'),
(491, 'property', NULL, '{}'),
(492, 'property', NULL, '{}'),
(493, 'property', NULL, '{}'),
(494, 'property', NULL, '{}'),
(495, 'property', NULL, '{}'),
(496, 'property', NULL, '{}'),
(497, 'property', NULL, '{}'),
(498, 'property', NULL, '{}'),
(499, 'property', NULL, '{}'),
(500, 'property', NULL, '{}'),
(501, 'property', NULL, '{}'),
(502, 'property', NULL, '{}'),
(503, 'property', NULL, '{}'),
(504, 'property', NULL, '{}'),
(505, 'property', NULL, '{}'),
(506, 'property', NULL, '{}'),
(507, 'property', NULL, '{}'),
(508, 'property', NULL, '{}'),
(509, 'property', NULL, '{}'),
(510, 'property', NULL, '{}'),
(511, 'property', NULL, '{}'),
(512, 'property', NULL, '{}'),
(513, 'property', NULL, '{}'),
(514, 'property', NULL, '{}'),
(515, 'property', NULL, '{}'),
(516, 'property', NULL, '{}'),
(517, 'property', NULL, '{}'),
(518, 'property', NULL, '{}'),
(519, 'property', NULL, '{}'),
(520, 'property', NULL, '{}'),
(521, 'property', NULL, '{}'),
(522, 'property', NULL, '{}'),
(523, 'property', NULL, '{}'),
(524, 'property', NULL, '{}'),
(525, 'property', NULL, '{}'),
(526, 'property', NULL, '{}'),
(527, 'property', NULL, '{}'),
(528, 'property', NULL, '{}'),
(529, 'property', NULL, '{}'),
(530, 'property', NULL, '{}'),
(531, 'property', NULL, '{}'),
(532, 'property', NULL, '{}'),
(533, 'property', NULL, '{}'),
(534, 'property', NULL, '{}'),
(535, 'property', NULL, '{}'),
(536, 'property', NULL, '{}'),
(537, 'property', NULL, '{}'),
(538, 'property', NULL, '{}'),
(539, 'property', NULL, '{}'),
(540, 'property', NULL, '{}'),
(541, 'property', NULL, '{}'),
(542, 'property', NULL, '{}'),
(543, 'property', NULL, '{}'),
(544, 'property', NULL, '{}'),
(545, 'property', NULL, '{}'),
(546, 'property', NULL, '{}');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dojmdt_judgments`
--

CREATE TABLE `dojmdt_judgments` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `charname` varchar(255) NOT NULL,
  `fp` varchar(255) NOT NULL,
  `reason` longtext NOT NULL,
  `fee` int(11) NOT NULL,
  `length` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dojmdt_kartoteka_notatki`
--

CREATE TABLE `dojmdt_kartoteka_notatki` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `notatka` longtext NOT NULL,
  `fp` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dojmdt_notatki`
--

CREATE TABLE `dojmdt_notatki` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) COLLATE utf8mb4_bin DEFAULT NULL,
  `notatka` text COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dojmdt_ogloszenia`
--

CREATE TABLE `dojmdt_ogloszenia` (
  `id` int(11) NOT NULL,
  `fp` varchar(255) DEFAULT NULL,
  `ogloszenie` longtext NOT NULL,
  `date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dojmdt_poszukiwani`
--

CREATE TABLE `dojmdt_poszukiwani` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `fp` varchar(255) NOT NULL,
  `reason` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dojmdt_raporty`
--

CREATE TABLE `dojmdt_raporty` (
  `id` int(11) NOT NULL,
  `fp` varchar(255) DEFAULT NULL,
  `raport` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `emsmdt_faktury`
--

CREATE TABLE `emsmdt_faktury` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `charname` varchar(255) NOT NULL,
  `fp` varchar(255) NOT NULL,
  `reason` longtext NOT NULL,
  `fee` int(11) NOT NULL,
  `length` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `emsmdt_kartoteka_notatki`
--

CREATE TABLE `emsmdt_kartoteka_notatki` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `notatka` longtext NOT NULL,
  `fp` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `emsmdt_notatki`
--

CREATE TABLE `emsmdt_notatki` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) COLLATE utf8mb4_bin DEFAULT NULL,
  `notatka` text COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `emsmdt_ogloszenia`
--

CREATE TABLE `emsmdt_ogloszenia` (
  `id` int(11) NOT NULL,
  `fp` varchar(255) DEFAULT NULL,
  `ogloszenie` longtext NOT NULL,
  `date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `emsmdt_raporty`
--

CREATE TABLE `emsmdt_raporty` (
  `id` int(11) NOT NULL,
  `fp` varchar(255) DEFAULT NULL,
  `raport` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `evidence_storage`
--

CREATE TABLE `evidence_storage` (
  `id` int(11) NOT NULL,
  `data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `evidence_storage`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `impound_garage`
--

CREATE TABLE `impound_garage` (
  `garage` varchar(64) NOT NULL DEFAULT '',
  `data` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `impound_garage`
--

INSERT INTO `impound_garage` (`garage`, `data`) VALUES
('impound_davis', '[]'),
('impound_mrpd', '[]'),
('impound_vespucci', '[]');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `jobs`
--

CREATE TABLE `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `jobs`
--

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('ambulance', 'EMS', 0),
('apples', 'Sadownik', 0),
('arcade', 'Arcade Bar', 0),
('ballas', 'Ballas', 0),
('carzone', 'CarZone', 0),
('doj', 'Department of Justice', 0),
('families', 'Families', 0),
('fisher', 'Rybak', 0),
('heli', 'Wypożyczalnia', 0),
('lumberjack', 'Drwal', 0),
('motoclub', 'MotoClub', 0),
('offambulance', 'EMS [OFF-Duty]', 0),
('offarcade', 'Arcade Bar [OFF-DUTY]', 0),
('offcarzone', 'CarZone [OFF-Duty]', 0),
('offdoj', 'DOJ [Off-Duty]', 0),
('offheli', 'Wypożyczalnia [OFF-DUTY]', 0),
('offpolice', 'LSPD [OFF-Duty]', 0),
('offsewing', 'Szwalnia [OFF-DUTY]', 0),
('offtunerszone', 'TunersZone [OFF-Duty]', 0),
('offuwu', 'UwU Cafe [OFF-DUTY]', 0),
('pdm', 'Salon Samochodowy', 0),
('police', 'LSPD', 0),
('realestateagent', 'Agent Nieruchomości', 1),
('scrap', 'Złomiarz', 0),
('sewing', 'Szwalnia', 0),
('slaughter', 'Rzeźnik', 0),
('tunerszone', 'TunersZone', 0),
('unemployed', 'Bezrobotny', 0),
('unemployed2', 'Bezrobotny', 0),
('unemployed3', 'Bezrobotny', 0),
('uwu', 'UwU Cafe', 0),
('vagos', 'Vagos', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `job_grades`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'unemployed', 0, 'bezrobotny', 'BEZROBOTNY', 200, '{}', '{}'),
(2, 'police', 1, 'kadet', 'KADET', 20, '{}', '{}'),
(3, 'police', 2, 'officer', 'OFICER I', 20, '{}', '{}'),
(4, 'police', 3, 'officer2', 'OFICER II', 20, '{}', '{}'),
(5, 'police', 4, 'officer3', 'OFICER III', 20, '{}', '{}'),
(6, 'police', 5, 'officer4', 'OFICER III+I', 20, '{}', '{}'),
(7, 'police', 6, 'sierzant', 'SIERZANT I', 20, '{}', '{}'),
(8, 'police', 7, 'sierzant2', 'SIERZANT II', 20, '{}', '{}'),
(9, 'police', 8, 'sierzant3', 'SIERZANT III', 20, '{}', '{}'),
(10, 'police', 9, 'porucznik1', 'PORUCZNIK I', 20, '{}', '{}'),
(11, 'police', 10, 'porucznik2', 'PORUCZNIK II', 20, '{}', '{}'),
(12, 'police', 11, 'porucznik3', 'PORUCZNIK III', 20, '{}', '{}'),
(13, 'police', 12, 'capitan', 'KAPITAN I', 20, '{}', '{}'),
(14, 'police', 13, 'capitan2', 'KAPITAN II', 20, '{}', '{}'),
(15, 'police', 14, 'capitan3', 'KAPITAN III', 20, '{}', '{}'),
(16, 'police', 15, 'comendant', 'KOMENDANT', 20, '{}', '{}'),
(17, 'police', 16, 'deputyboss', 'ZASTĘPCA SZEFA POLICJI', 20, '{}', '{}'),
(18, 'police', 17, 'astboss', 'ASYSTENT SZEFA POLICJI', 20, '{}', '{}'),
(19, 'police', 18, 'boss', 'CHIEF OF POLICE', 20, '{}', '{}'),
(59, 'offpolice', 1, 'kadet', 'KADET', 20, '{}', '{}'),
(60, 'offpolice', 2, 'officer', 'OFICER I', 20, '{}', '{}'),
(61, 'offpolice', 3, 'officer2', 'OFICER II', 20, '{}', '{}'),
(62, 'offpolice', 4, 'officer3', 'OFICER III', 20, '{}', '{}'),
(63, 'offpolice', 5, 'officer4', 'OFICER III+I', 20, '{}', '{}'),
(64, 'offpolice', 6, 'sierzant', 'SIERZANT I', 20, '{}', '{}'),
(65, 'offpolice', 7, 'sierzant2', 'SIERZANT II', 20, '{}', '{}'),
(66, 'offpolice', 8, 'sierzant3', 'SIERZANT III', 20, '{}', '{}'),
(67, 'offpolice', 9, 'porucznik1', 'PORUCZNIK I', 20, '{}', '{}'),
(68, 'offpolice', 10, 'porucznik2', 'PORUCZNIK II', 20, '{}', '{}'),
(69, 'offpolice', 11, 'porucznik3', 'PORUCZNIK III', 20, '{}', '{}'),
(70, 'offpolice', 12, 'capitan', 'KAPITAN I', 20, '{}', '{}'),
(71, 'offpolice', 13, 'capitan2', 'KAPITAN II', 20, '{}', '{}'),
(72, 'offpolice', 14, 'capitan3', 'KAPITAN III', 20, '{}', '{}'),
(73, 'offpolice', 15, 'comendant', 'KOMENDANT', 20, '{}', '{}'),
(74, 'offpolice', 16, 'deputyboss', 'ZASTĘPCA SZEFA POLICJI', 20, '{}', '{}'),
(75, 'offpolice', 17, 'astboss', 'ASYSTENT SZEFA POLICJI', 20, '{}', '{}'),
(76, 'offpolice', 18, 'boss', 'CHIEF OF POLICE', 20, '{}', '{}'),
(77, 'ambulance', 0, 'rekrut', 'REKRUT', 20, '{}', '{}'),
(78, 'ambulance', 1, 'pielegniarz', 'PIELĘGNIARZ', 20, '{}', '{}'),
(79, 'ambulance', 2, 'ratownik', 'RATOWNIK MEDYCZNY', 20, '{}', '{}'),
(80, 'ambulance', 3, 'lekarz', 'LEKARZ', 20, '{}', '{}'),
(81, 'ambulance', 4, 'lekarz_habilitowany', 'LEKARZ HABILOTOWANY', 20, '{}', '{}'),
(82, 'ambulance', 5, 'ord_deputy', 'ZASTĘPCA ORDYNATORA', 20, '{}', '{}'),
(83, 'ambulance', 6, 'ordynator', 'ORDYNATOR', 20, '{}', '{}'),
(84, 'ambulance', 7, 'deputy', 'ZASTĘPCA DYREKTORA', 20, '{}', '{}'),
(85, 'ambulance', 8, 'boss', 'DYREKTOR', 20, '{}', '{}'),
(86, 'offambulance', 0, 'rekrut', 'REKRUT', 20, '{}', '{}'),
(87, 'offambulance', 1, 'pielegniarz', 'PIELĘGNIARZ', 20, '{}', '{}'),
(88, 'offambulance', 2, 'ratownik', 'RATOWNIK MEDYCZNY', 20, '{}', '{}'),
(89, 'offambulance', 3, 'lekarz', 'LEKARZ', 20, '{}', '{}'),
(90, 'offambulance', 4, 'lekarz_habilitowany', 'LEKARZ HABILOTOWANY', 20, '{}', '{}'),
(91, 'offambulance', 5, 'ord_deputy', 'ZASTĘPCA ORDYNATORA', 20, '{}', '{}'),
(92, 'offambulance', 6, 'ordynator', 'ORDYNATOR', 20, '{}', '{}'),
(93, 'offambulance', 7, 'boss', 'ZASTĘPCA DYREKTORA', 20, '{}', '{}'),
(94, 'offambulance', 8, 'boss', 'DYREKTOR', 20, '{}', '{}'),
(95, 'carzone', 0, 'praktykant', 'PRAKTYKANT', 20, '{}', '{}'),
(96, 'carzone', 1, 'rekrut', 'REKRUT', 20, '{}', '{}'),
(97, 'carzone', 2, 'mlodszy_mechanik', 'MŁODSZY MECHANIK', 20, '{}', '{}'),
(98, 'carzone', 3, 'mechanik', 'MECHANIK', 20, '{}', '{}'),
(99, 'carzone', 4, 'starszy_mechanik', 'STARSZY MECHANIK', 20, '{}', '{}'),
(100, 'carzone', 5, 'kierownik', 'KIEROWNIK', 20, '{}', '{}'),
(101, 'carzone', 6, 'deputy', 'ZASTĘPCA SZEFA', 20, '{}', '{}'),
(102, 'carzone', 7, 'boss', 'SZEF', 20, '{}', '{}'),
(103, 'offcarzone', 0, 'praktykant', 'PRAKTYKANT', 20, '{}', '{}'),
(104, 'offcarzone', 1, 'rekrut', 'REKRUT', 20, '{}', '{}'),
(105, 'offcarzone', 2, 'mlodszy_mechanik', 'MŁODSZY MECHANIK', 20, '{}', '{}'),
(106, 'offcarzone', 3, 'mechanik', 'MECHANIK', 20, '{}', '{}'),
(107, 'offcarzone', 4, 'starszy_mechanik', 'STARSZY MECHANIK', 20, '{}', '{}'),
(108, 'offcarzone', 5, 'kierownik', 'KIEROWNIK', 20, '{}', '{}'),
(109, 'offcarzone', 6, 'deputy', 'ZASTĘPCA SZEFA', 20, '{}', '{}'),
(110, 'offcarzone', 7, 'boss', 'SZEF', 20, '{}', '{}'),
(111, 'uwu', 0, 'praktykant', 'Praktykant', 200, '{}', '{}'),
(112, 'uwu', 1, 'pracownik', 'Pracownik', 300, '{}', '{}'),
(113, 'uwu', 2, 'manager', 'Manager', 400, '{}', '{}'),
(114, 'uwu', 3, 'kierownik', 'Kierownik', 500, '{}', '{}'),
(115, 'uwu', 4, 'boss', 'Szef', 1000, '{}', '{}'),
(116, 'offuwu', 0, 'praktykant', 'Praktykant', 0, '{}', '{}'),
(117, 'offuwu', 1, 'pracownik', 'Pracownik', 0, '{}', '{}'),
(118, 'offuwu', 2, 'manager', 'Manager', 0, '{}', '{}'),
(119, 'offuwu', 3, 'kierownik', 'Kierownik', 0, '{}', '{}'),
(120, 'offuwu', 4, 'boss', 'Szef', 0, '{}', '{}'),
(131, 'tunerszone', 0, 'praktykant', 'PRAKTYKANT', 20, '{}', '{}'),
(132, 'tunerszone', 1, 'rekrut', 'REKRUT', 20, '{}', '{}'),
(133, 'tunerszone', 2, 'mlodszy_mechanik', 'MŁODSZY MECHANIK', 20, '{}', '{}'),
(134, 'tunerszone', 3, 'mechanik', 'MECHANIK', 20, '{}', '{}'),
(135, 'tunerszone', 4, 'starszy_mechanik', 'STARSZY MECHANIK', 20, '{}', '{}'),
(136, 'tunerszone', 5, 'kierownik', 'KIEROWNIK', 20, '{}', '{}'),
(137, 'tunerszone', 6, 'deputy', 'ZASTĘPCA SZEFA', 20, '{}', '{}'),
(138, 'tunerszone', 7, 'boss', 'SZEF', 20, '{}', '{}'),
(139, 'offtunerszone', 0, 'praktykant', 'PRAKTYKANT', 20, '{}', '{}'),
(140, 'offtunerszone', 1, 'rekrut', 'REKRUT', 20, '{}', '{}'),
(141, 'offtunerszone', 2, 'mlodszy_mechanik', 'MŁODSZY MECHANIK', 20, '{}', '{}'),
(142, 'offtunerszone', 3, 'mechanik', 'MECHANIK', 20, '{}', '{}'),
(143, 'offtunerszone', 4, 'starszy_mechanik', 'STARSZY MECHANIK', 20, '{}', '{}'),
(144, 'offtunerszone', 5, 'kierownik', 'KIEROWNIK', 20, '{}', '{}'),
(145, 'offtunerszone', 6, 'deputy', 'ZASTĘPCA SZEFA', 20, '{}', '{}'),
(146, 'offtunerszone', 7, 'boss', 'SZEF', 20, '{}', '{}'),
(148, 'scrap', 0, 'pracownik', 'Pracownik', 0, '{}', '{}'),
(149, 'fisher', 0, 'rybak', 'Rybak', 0, '{}', '{}'),
(150, 'unemployed2', 0, 'unemployed2', 'Unemployed', 20, '{}', '{}'),
(153, 'realestateagent', 0, 'trainee', 'Stażysta', 100, '{}', '{}'),
(154, 'realestateagent', 1, 'agent', 'Agent', 200, '{}', '{}'),
(155, 'realestateagent', 2, 'boss', 'Szef', 250, '{}', '{}'),
(156, 'motoclub', 0, 'czlonek', 'CZŁONEK', 0, '{}', '{}'),
(157, 'motoclub', 1, 'kapitan', 'KAPITAN', 0, '{}', '{}'),
(158, 'motoclub', 2, 'deputy', 'ZASTĘPCA SZEFA', 0, '{}', '{}'),
(159, 'motoclub', 3, 'boss', 'SZEF', 0, '{}', '{}'),
(160, 'lumberjack', 0, 'drwal', 'Drwal', 0, '{}', '{}'),
(161, 'apples', 0, 'pracownik', 'Pracownik', 0, '{}', '{}'),
(162, 'realestateagent', 0, 'trainee', 'Stażysta', 100, '{}', '{}'),
(163, 'realestateagent', 2, 'boss', 'Szef', 250, '{}', '{}'),
(164, 'realestateagent', 1, 'agent', 'Agent', 200, '{}', '{}'),
(165, 'slaughter', 0, 'pracownik', 'Pracownik', 0, '{}', '{}'),
(166, 'doj', 0, 'stazysta', 'Stażysta', 0, '{}', '{}'),
(167, 'doj', 1, 'ochroniarz', 'Ochroniarz', 0, '{}', '{}'),
(168, 'doj', 2, 'adwokat', 'Adwokat', 0, '{}', '{}'),
(169, 'doj', 3, 'prokurator', 'Prokurator', 0, '{}', '{}'),
(170, 'doj', 4, 'sedzia', 'Sędzia Główny', 0, '{}', '{}'),
(171, 'offdoj', 0, 'stazysta', 'Stażysta', 0, '{}', '{}'),
(172, 'offdoj', 1, 'ochroniarz', 'Ochroniarz', 0, '{}', '{}'),
(173, 'offdoj', 2, 'adwokat', 'Adwokat', 0, '{}', '{}'),
(174, 'offdoj', 3, 'prokurator', 'Prokurator', 0, '{}', '{}'),
(175, 'offdoj', 4, 'sedzia', 'Sędzia Główny', 0, '{}', '{}'),
(176, 'heli', 0, 'pracownik', 'Pracownik', 0, '{}', '{}'),
(177, 'heli', 1, 'szef', 'Szef', 0, '{}', '{}'),
(178, 'offheli', 0, 'pracownik', 'Pracownik', 0, '{}', '{}'),
(179, 'offheli', 1, 'szef', 'Szef', 0, '{}', '{}'),
(180, 'arcade', 0, 'pracownik', 'Pracownik', 0, '{}', '{}'),
(181, 'arcade', 1, 'barman', 'Barman', 0, '{}', '{}'),
(182, 'arcade', 2, 'kierownik', 'Kierownik', 0, '{}', '{}'),
(183, 'arcade', 3, 'manager', 'Manager', 0, '{}', '{}'),
(184, 'arcade', 4, 'szef', 'Szef', 0, '{}', '{}'),
(185, 'offarcade', 0, 'pracownik', 'Pracownik', 0, '{}', '{}'),
(186, 'offarcade', 1, 'barman', 'Barman', 0, '{}', '{}'),
(187, 'offarcade', 2, 'kierownik', 'Kierownik', 0, '{}', '{}'),
(188, 'offarcade', 3, 'manager', 'Manager', 0, '{}', '{}'),
(189, 'offarcade', 4, 'szef', 'Szef', 0, '{}', '{}'),
(190, 'unemployed3', 0, 'bezrobotny', 'BEZROBOTNY', 200, '{}', '{}'),
(191, 'sewing', 0, 'pracownik', 'Pracownik', 0, '{}', '{}'),
(192, 'sewing', 1, 'kierownik', 'Kierownik', 1, '{}', '{}'),
(193, 'sewing', 2, 'boss', 'Szef', 1, '{}', '{}'),
(195, 'offsewing', 0, 'pracownik', 'Pracownik', 0, '{}', '{}'),
(196, 'offsewing', 1, 'kierownik', 'Kierownik', 1, '{}', '{}'),
(197, 'offsewing', 2, 'boss', 'Szef', 1, '{}', '{}'),
(198, 'pdm', 0, 'pracownik', 'Pracownik', 0, '{}', '{}'),
(199, 'pdm', 1, 'ochroniarz', 'Ochroniarz', 0, '{}', '{}'),
(200, 'pdm', 2, 'kierownik', 'Kierownik', 0, '{}', '{}'),
(201, 'pdm', 3, 'manager', 'Manager', 0, '{}', '{}'),
(202, 'pdm', 4, 'boss', 'Szef', 0, '{}', '{}'),
(203, 'ballas', 0, 'rekrut', 'Rekrut', 0, '{}', '{}'),
(209, 'ballas', 1, 'czlonek', 'Członek', 0, '{}', '{}'),
(210, 'ballas', 2, 'lider', 'Lider', 0, '{}', '{}'),
(211, 'ballas', 3, 'boss', 'OG', 0, '{}', '{}');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `licenses`
--

CREATE TABLE `licenses` (
  `type` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `licenses`
--

INSERT INTO `licenses` (`type`, `label`) VALUES
('dmv', 'Prawo Jazdy'),
('drive', 'Prawo Jazdy kat.B'),
('drive_bike', 'Prawo Jazdy kat.A'),
('drive_truck', 'Prawo Jazdy kat.C'),
('ems_heli', 'Licencja Pilota'),
('fish', 'Licencja Rybacka'),
('hunting', 'Licencja na Polowanie'),
('pilot', 'Licencja Lotnicza'),
('police_eagle', 'Licencja Eagle'),
('police_seu', 'Licencja S.E.U'),
('test_psycho', 'Testy Psychologiczne'),
('weapon', 'Licencja na Broń');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lspdmdt_judgments`
--

CREATE TABLE `lspdmdt_judgments` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `charname` varchar(255) NOT NULL,
  `fp` varchar(255) NOT NULL,
  `reason` longtext NOT NULL,
  `fee` int(11) NOT NULL,
  `length` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lspdmdt_kartoteka_notatki`
--

CREATE TABLE `lspdmdt_kartoteka_notatki` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `notatka` longtext NOT NULL,
  `fp` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lspdmdt_notatki`
--

CREATE TABLE `lspdmdt_notatki` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) COLLATE utf8mb4_bin DEFAULT NULL,
  `notatka` text COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lspdmdt_ogloszenia`
--

CREATE TABLE `lspdmdt_ogloszenia` (
  `id` int(11) NOT NULL,
  `fp` varchar(255) DEFAULT NULL,
  `ogloszenie` longtext NOT NULL,
  `date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lspdmdt_poszukiwani`
--

CREATE TABLE `lspdmdt_poszukiwani` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `fp` varchar(255) NOT NULL,
  `reason` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lspdmdt_raporty`
--

CREATE TABLE `lspdmdt_raporty` (
  `id` int(11) NOT NULL,
  `fp` varchar(255) DEFAULT NULL,
  `raport` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `many_skills`
--

CREATE TABLE `many_skills` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `kaskader` varchar(255) NOT NULL,
  `piroman` varchar(255) NOT NULL,
  `mozg` varchar(255) DEFAULT NULL,
  `silacz` varchar(255) DEFAULT NULL,
  `informatyk` varchar(255) DEFAULT NULL,
  `diler` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `multicharacter_slots`
--

CREATE TABLE `multicharacter_slots` (
  `identifier` varchar(46) NOT NULL,
  `slots` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `npwd_calls`
--

CREATE TABLE `npwd_calls` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `transmitter` varchar(255) NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `is_accepted` tinyint(4) DEFAULT 0,
  `start` varchar(255) DEFAULT NULL,
  `end` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `npwd_crypto_transactions`
--

CREATE TABLE `npwd_crypto_transactions` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `worth` float DEFAULT NULL,
  `sentTo` varchar(20) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `npwd_darkchat_channels`
--

CREATE TABLE `npwd_darkchat_channels` (
  `id` int(11) NOT NULL,
  `channel_identifier` varchar(255) NOT NULL,
  `label` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `npwd_darkchat_channel_members`
--

CREATE TABLE `npwd_darkchat_channel_members` (
  `channel_id` int(11) NOT NULL,
  `user_identifier` varchar(255) NOT NULL,
  `is_owner` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `npwd_darkchat_messages`
--

CREATE TABLE `npwd_darkchat_messages` (
  `id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `user_identifier` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_image` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `npwd_marketplace_listings`
--

CREATE TABLE `npwd_marketplace_listings` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `number` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `reported` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `npwd_match_profiles`
--

CREATE TABLE `npwd_match_profiles` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `name` varchar(90) NOT NULL,
  `image` varchar(255) NOT NULL,
  `bio` varchar(512) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `job` varchar(45) DEFAULT NULL,
  `tags` varchar(255) NOT NULL DEFAULT '',
  `voiceMessage` varchar(512) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `npwd_match_views`
--

CREATE TABLE `npwd_match_views` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `profile` int(11) NOT NULL,
  `liked` tinyint(4) DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `npwd_messages`
--

CREATE TABLE `npwd_messages` (
  `id` int(11) NOT NULL,
  `message` varchar(512) NOT NULL,
  `user_identifier` varchar(48) NOT NULL,
  `conversation_id` varchar(512) NOT NULL,
  `isRead` tinyint(4) NOT NULL DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `visible` tinyint(4) NOT NULL DEFAULT 1,
  `author` varchar(255) NOT NULL,
  `is_embed` tinyint(4) NOT NULL DEFAULT 0,
  `embed` varchar(512) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `npwd_messages_conversations`
--

CREATE TABLE `npwd_messages_conversations` (
  `id` int(11) NOT NULL,
  `conversation_list` varchar(225) NOT NULL,
  `label` varchar(60) DEFAULT '',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_message_id` int(11) DEFAULT NULL,
  `is_group_chat` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `npwd_messages_participants`
--

CREATE TABLE `npwd_messages_participants` (
  `id` int(11) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `participant` varchar(225) NOT NULL,
  `unread_count` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `npwd_notes`
--

CREATE TABLE `npwd_notes` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `npwd_phone_contacts`
--

CREATE TABLE `npwd_phone_contacts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `number` varchar(20) DEFAULT NULL,
  `display` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `npwd_phone_gallery`
--

CREATE TABLE `npwd_phone_gallery` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `npwd_twitter_likes`
--

CREATE TABLE `npwd_twitter_likes` (
  `id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `tweet_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `npwd_twitter_profiles`
--

CREATE TABLE `npwd_twitter_profiles` (
  `id` int(11) NOT NULL,
  `profile_name` varchar(90) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `avatar_url` varchar(255) DEFAULT 'https://i.file.glass/QrEvq.png',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `npwd_twitter_reports`
--

CREATE TABLE `npwd_twitter_reports` (
  `id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `tweet_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `npwd_twitter_tweets`
--

CREATE TABLE `npwd_twitter_tweets` (
  `id` int(11) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0,
  `identifier` varchar(46) DEFAULT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT 1,
  `images` varchar(1000) DEFAULT '',
  `retweet` int(11) DEFAULT NULL,
  `profile_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `outfits`
--

CREATE TABLE `outfits` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `name` longtext DEFAULT NULL,
  `ped` longtext DEFAULT NULL,
  `components` longtext DEFAULT NULL,
  `props` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `owned_vehicles`
--

CREATE TABLE `owned_vehicles` (
  `id` int(11) NOT NULL,
  `owner` varchar(46) CHARACTER SET utf8mb4 DEFAULT NULL,
  `charid` varchar(48) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `vehicle` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `owner_type` int(11) NOT NULL DEFAULT 1,
  `stored` tinyint(1) DEFAULT 0,
  `state` int(4) NOT NULL DEFAULT 0,
  `parking` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `pound` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `plate` varchar(12) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lightscolor` int(11) NOT NULL DEFAULT -1,
  `modelname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'Brak danych',
  `vehicleid` int(11) DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_polish_ci DEFAULT 'car',
  `job` varchar(20) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `society` varchar(255) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `glovebox` longtext COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `trunk` longtext COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `customcolor` longtext CHARACTER SET latin1 DEFAULT NULL,
  `customsecondarycolor` longtext CHARACTER SET latin1 DEFAULT NULL,
  `interiorcolor` int(25) DEFAULT NULL,
  `thirdcolor` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ox_doorlock`
--

CREATE TABLE `ox_doorlock` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `ox_doorlock`
--

INSERT INTO `ox_doorlock` (`id`, `name`, `data`) VALUES
(32, 'gabz_mrpd 1', '{\"maxDistance\":2,\"state\":0,\"groups\":{\"police\":0,\"offpolice\":0},\"lockpick\":true,\"doors\":[{\"heading\":90,\"coords\":{\"x\":434.744384765625,\"y\":-983.078125,\"z\":30.81529998779297},\"model\":-1547307588},{\"heading\":270,\"coords\":{\"x\":434.744384765625,\"y\":-980.755615234375,\"z\":30.81529998779297},\"model\":-1547307588}],\"coords\":{\"x\":434.744384765625,\"y\":-981.9168701171875,\"z\":30.81529998779297},\"hideUi\":false}'),
(33, 'gabz_mrpd 2', '{\"maxDistance\":2,\"state\":1,\"groups\":{\"police\":0,\"offpolice\":0},\"doors\":[{\"heading\":180,\"coords\":{\"x\":458.2087097167969,\"y\":-972.2542724609375,\"z\":30.81529998779297},\"model\":-1547307588},{\"heading\":0,\"coords\":{\"x\":455.8861999511719,\"y\":-972.2542724609375,\"z\":30.81529998779297},\"model\":-1547307588}],\"coords\":{\"x\":457.0474548339844,\"y\":-972.2542724609375,\"z\":30.81529998779297},\"hideUi\":false}'),
(34, 'gabz_mrpd 3', '{\"maxDistance\":2,\"state\":1,\"groups\":{\"police\":0,\"offpolice\":0},\"doors\":[{\"heading\":0,\"coords\":{\"x\":440.73919677734377,\"y\":-998.7462158203125,\"z\":30.81529998779297},\"model\":-1547307588},{\"heading\":180,\"coords\":{\"x\":443.0617980957031,\"y\":-998.7462158203125,\"z\":30.81529998779297},\"model\":-1547307588}],\"coords\":{\"x\":441.9005126953125,\"y\":-998.7462158203125,\"z\":30.81529998779297},\"hideUi\":false}'),
(35, 'gabz_mrpd 4', '{\"coords\":{\"x\":441.1240539550781,\"y\":-977.60107421875,\"z\":30.82319068908691},\"groups\":{\"police\":0},\"heading\":0,\"lockpick\":true,\"model\":-1406685646,\"state\":1,\"maxDistance\":2}'),
(36, 'gabz_mrpd 5', '{\"state\":1,\"lockpick\":true,\"groups\":{\"police\":0,\"offpolice\":0},\"maxDistance\":2,\"coords\":{\"x\":441.12408447265627,\"y\":-986.2335205078125,\"z\":30.82319068908691},\"heading\":180,\"model\":-96679321}'),
(37, 'gabz_mrpd 6', '{\"coords\":{\"x\":464.1590881347656,\"y\":-974.6655883789063,\"z\":26.37070083618164},\"state\":1,\"model\":1830360419,\"heading\":270,\"groups\":{\"police\":0,\"offpolice\":0},\"maxDistance\":2,\"hideUi\":false}'),
(38, 'gabz_mrpd 7', '{\"coords\":{\"x\":464.1565856933594,\"y\":-997.50927734375,\"z\":26.37070083618164},\"state\":1,\"model\":1830360419,\"heading\":90,\"groups\":{\"police\":0,\"offpolice\":0},\"maxDistance\":2,\"hideUi\":false}'),
(39, 'gabz_mrpd 8', '{\"heading\":0,\"coords\":{\"x\":431.4118957519531,\"y\":-1000.771728515625,\"z\":26.69660949707031},\"auto\":true,\"maxDistance\":5,\"model\":2130672747,\"groups\":{\"offpolice\":0,\"police\":0},\"lockSound\":\"button-remote\",\"state\":1}'),
(40, 'gabz_mrpd 9', '{\"coords\":{\"x\":452.3005065917969,\"y\":-1000.77197265625,\"z\":26.69660949707031},\"state\":1,\"model\":2130672747,\"heading\":0,\"groups\":{\"police\":0,\"offpolice\":0},\"auto\":true,\"lockSound\":\"button-remote\",\"maxDistance\":6,\"hideUi\":false}'),
(41, 'gabz_mrpd 10', '{\"coords\":{\"x\":488.8948059082031,\"y\":-1017.2119750976563,\"z\":27.14934921264648},\"state\":1,\"model\":-1603817716,\"heading\":90,\"groups\":{\"police\":0,\"offpolice\":0},\"auto\":true,\"lockSound\":\"button-remote\",\"maxDistance\":6,\"hideUi\":false}'),
(42, 'gabz_mrpd 11', '{\"state\":1,\"lockpick\":true,\"groups\":{\"police\":0,\"offpolice\":0},\"maxDistance\":2,\"coords\":{\"x\":468.5714416503906,\"y\":-1014.406005859375,\"z\":26.48381996154785},\"doors\":[{\"model\":-692649124,\"heading\":0,\"coords\":{\"x\":467.36859130859377,\"y\":-1014.406005859375,\"z\":26.48381996154785}},{\"model\":-692649124,\"heading\":180,\"coords\":{\"x\":469.7742919921875,\"y\":-1014.406005859375,\"z\":26.48381996154785}}]}'),
(43, 'gabz_mrpd 12', '{\"coords\":{\"x\":475.9538879394531,\"y\":-1010.8189697265625,\"z\":26.40638923645019},\"state\":1,\"model\":-1406685646,\"heading\":180,\"groups\":{\"police\":0},\"maxDistance\":2,\"hideUi\":false}'),
(44, 'gabz_mrpd 13', '{\"state\":1,\"lockpick\":true,\"groups\":{\"police\":0},\"maxDistance\":1.5,\"coords\":{\"x\":476.64471435546877,\"y\":-1008.2840576171875,\"z\":26.48004913330078},\"heading\":270,\"lockSound\":\"metal-locker\",\"model\":-53345114,\"unlockSound\":\"metallic-creak\"}'),
(45, 'gabz_mrpd 14', '{\"coords\":{\"x\":481.0083923339844,\"y\":-1004.1179809570313,\"z\":26.48004913330078},\"unlockSound\":\"metallic-creak\",\"state\":1,\"model\":-53345114,\"heading\":180,\"groups\":{\"police\":0},\"maxDistance\":2,\"lockSound\":\"metal-locker\",\"hideUi\":false}'),
(46, 'gabz_mrpd 15', '{\"state\":1,\"lockpick\":true,\"groups\":{\"police\":0},\"maxDistance\":2,\"coords\":{\"x\":477.32135009765627,\"y\":-1012.158203125,\"z\":26.48004913330078},\"heading\":0,\"lockSound\":\"metal-locker\",\"model\":-53345114,\"unlockSound\":\"metallic-creak\"}'),
(47, 'gabz_mrpd 16', '{\"state\":1,\"lockpick\":true,\"groups\":{\"police\":0},\"maxDistance\":2,\"coords\":{\"x\":480.32159423828127,\"y\":-1012.158203125,\"z\":26.48004913330078},\"heading\":0,\"lockSound\":\"metal-locker\",\"model\":-53345114,\"unlockSound\":\"metallic-creak\"}'),
(48, 'gabz_mrpd 17', '{\"state\":1,\"lockpick\":true,\"groups\":{\"police\":0},\"maxDistance\":2,\"coords\":{\"x\":483.32147216796877,\"y\":-1012.158203125,\"z\":26.48004913330078},\"heading\":0,\"lockSound\":\"metal-locker\",\"model\":-53345114,\"unlockSound\":\"metallic-creak\"}'),
(49, 'gabz_mrpd 18', '{\"state\":1,\"lockpick\":true,\"groups\":{\"police\":0},\"maxDistance\":2,\"coords\":{\"x\":486.3218688964844,\"y\":-1012.158203125,\"z\":26.48004913330078},\"heading\":0,\"lockSound\":\"metal-locker\",\"model\":-53345114,\"unlockSound\":\"metallic-creak\"}'),
(50, 'gabz_mrpd 19', '{\"state\":1,\"lockpick\":true,\"groups\":{\"police\":0},\"maxDistance\":2,\"coords\":{\"x\":484.7677001953125,\"y\":-1007.764892578125,\"z\":26.48004913330078},\"heading\":180,\"lockSound\":\"metal-locker\",\"model\":-53345114,\"unlockSound\":\"metallic-creak\"}'),
(51, 'gabz_mrpd 20', '{\"coords\":{\"x\":479.05999755859377,\"y\":-1003.1729736328125,\"z\":26.4064998626709},\"state\":1,\"model\":-288803980,\"heading\":90,\"groups\":{\"police\":0},\"maxDistance\":2,\"hideUi\":false}'),
(52, 'gabz_mrpd 21', '{\"coords\":{\"x\":482.6694030761719,\"y\":-983.98681640625,\"z\":26.40547943115234},\"state\":1,\"model\":-1406685646,\"heading\":270,\"groups\":{\"police\":0},\"maxDistance\":2,\"hideUi\":false}'),
(53, 'gabz_mrpd 22', '{\"coords\":{\"x\":482.67010498046877,\"y\":-987.5792236328125,\"z\":26.40547943115234},\"state\":1,\"model\":-1406685646,\"heading\":270,\"groups\":{\"police\":0},\"maxDistance\":2,\"hideUi\":false}'),
(54, 'gabz_mrpd 23', '{\"coords\":{\"x\":482.6698913574219,\"y\":-992.299072265625,\"z\":26.40547943115234},\"state\":1,\"model\":-1406685646,\"heading\":270,\"groups\":{\"police\":0},\"maxDistance\":2,\"hideUi\":false}'),
(55, 'gabz_mrpd 24', '{\"coords\":{\"x\":482.6702880859375,\"y\":-995.728515625,\"z\":26.40547943115234},\"state\":1,\"model\":-1406685646,\"heading\":270,\"groups\":{\"police\":0},\"maxDistance\":2,\"hideUi\":false}'),
(56, 'gabz_mrpd 25', '{\"coords\":{\"x\":475.8323059082031,\"y\":-990.48388671875,\"z\":26.40547943115234},\"state\":1,\"model\":-692649124,\"heading\":135,\"groups\":{\"police\":0},\"maxDistance\":2,\"hideUi\":false}'),
(57, 'gabz_mrpd 26', '{\"coords\":{\"x\":479.7507019042969,\"y\":-999.6290283203125,\"z\":30.78927040100097},\"state\":1,\"model\":-692649124,\"heading\":90,\"groups\":{\"police\":0},\"maxDistance\":2,\"hideUi\":false}'),
(58, 'gabz_mrpd 27', '{\"coords\":{\"x\":487.43780517578127,\"y\":-1000.1890258789063,\"z\":30.7869701385498},\"state\":1,\"model\":-692649124,\"heading\":181,\"groups\":{\"police\":0},\"maxDistance\":2,\"hideUi\":false}'),
(59, 'gabz_mrpd 28', '{\"maxDistance\":2,\"state\":1,\"groups\":{\"police\":0},\"doors\":[{\"heading\":0,\"coords\":{\"x\":485.6133117675781,\"y\":-1002.9019775390625,\"z\":30.7869701385498},\"model\":-692649124},{\"heading\":180,\"coords\":{\"x\":488.0184020996094,\"y\":-1002.9019775390625,\"z\":30.7869701385498},\"model\":-692649124}],\"coords\":{\"x\":486.81585693359377,\"y\":-1002.9019775390625,\"z\":30.7869701385498},\"hideUi\":false}'),
(60, 'gabz_mrpd 29', '{\"coords\":{\"x\":464.30859375,\"y\":-984.5283813476563,\"z\":43.771240234375},\"state\":1,\"model\":-692649124,\"heading\":90,\"groups\":{\"police\":0},\"auto\":false,\"maxDistance\":2,\"lockpick\":false,\"hideUi\":false}'),
(63, 'hospital_door1', '{\"coords\":{\"x\":-815.76806640625,\"y\":-1223.30908203125,\"z\":7.48718929290771},\"doors\":[{\"coords\":{\"x\":-814.7822265625,\"y\":-1224.13671875,\"z\":7.48718929290771},\"heading\":320,\"model\":-1700911976},{\"coords\":{\"x\":-816.7538452148438,\"y\":-1222.4815673828126,\"z\":7.48718929290771},\"heading\":320,\"model\":-434783486}],\"state\":1,\"maxDistance\":1.7,\"groups\":{\"ambulance\":0}}'),
(64, 'hospital_door2', '{\"coords\":{\"x\":-808.14501953125,\"y\":-1213.2357177734376,\"z\":7.48718929290771},\"doors\":false,\"state\":1,\"maxDistance\":1.5,\"heading\":320,\"model\":854291622,\"groups\":{\"ambulance\":0}}'),
(65, 'hospital_door3', '{\"coords\":{\"x\":-803.6719970703125,\"y\":-1216.98095703125,\"z\":7.48718929290771},\"doors\":[{\"coords\":{\"x\":-802.68603515625,\"y\":-1217.808349609375,\"z\":7.48718929290771},\"heading\":320,\"model\":-1700911976},{\"coords\":{\"x\":-804.6580200195313,\"y\":-1216.153564453125,\"z\":7.48718929290771},\"heading\":320,\"model\":-434783486}],\"state\":1,\"maxDistance\":1.5,\"groups\":{\"ambulance\":0}}'),
(66, 'hospital_door4', '{\"coords\":{\"x\":-802.252685546875,\"y\":-1224.9537353515626,\"z\":7.48718929290771},\"doors\":[{\"coords\":{\"x\":-803.2387084960938,\"y\":-1224.1263427734376,\"z\":7.48718929290771},\"heading\":140,\"model\":-1700911976},{\"coords\":{\"x\":-801.2667236328125,\"y\":-1225.7811279296876,\"z\":7.48718929290771},\"heading\":140,\"model\":-434783486}],\"state\":1,\"maxDistance\":1.5,\"groups\":{\"ambulance\":0}}'),
(67, 'hospital_door5', '{\"coords\":{\"x\":-798.913330078125,\"y\":-1220.97412109375,\"z\":7.48718929290771},\"doors\":[{\"coords\":{\"x\":-797.9273681640625,\"y\":-1221.801513671875,\"z\":7.48718929290771},\"heading\":320,\"model\":-1700911976},{\"coords\":{\"x\":-799.8993530273438,\"y\":-1220.1468505859376,\"z\":7.48718929290771},\"heading\":320,\"model\":-434783486}],\"state\":1,\"maxDistance\":1.5,\"groups\":{\"ambulance\":0}}'),
(68, 'hospital_door6', '{\"coords\":{\"x\":-794.5152587890625,\"y\":-1224.664306640625,\"z\":7.48718929290771},\"doors\":[{\"coords\":{\"x\":-793.529296875,\"y\":-1225.49169921875,\"z\":7.48718929290771},\"heading\":320,\"model\":-1700911976},{\"coords\":{\"x\":-795.5012817382813,\"y\":-1223.8370361328126,\"z\":7.48718929290771},\"heading\":320,\"model\":-434783486}],\"state\":1,\"maxDistance\":1.5,\"groups\":{\"ambulance\":0}}'),
(69, 'hospital_door7', '{\"coords\":{\"x\":-794.1090698242188,\"y\":-1228.40966796875,\"z\":7.48718929290771},\"doors\":[{\"coords\":{\"x\":-793.28173828125,\"y\":-1227.4237060546876,\"z\":7.48718929290771},\"heading\":230,\"model\":-434783486},{\"coords\":{\"x\":-794.9364013671875,\"y\":-1229.3956298828126,\"z\":7.48718929290771},\"heading\":230,\"model\":-1700911976}],\"state\":1,\"maxDistance\":1.5,\"groups\":{\"ambulance\":0}}'),
(70, 'hospital_door8', '{\"coords\":{\"x\":-793.5098876953125,\"y\":-1235.795166015625,\"z\":7.48718929290771},\"doors\":false,\"state\":1,\"maxDistance\":1.5,\"heading\":50,\"model\":854291622,\"groups\":{\"ambulance\":0}}'),
(71, 'hospital_door9', '{\"state\":0,\"groups\":{\"ambulance\":0},\"doors\":false,\"coords\":{\"x\":-794.4312744140625,\"y\":-1236.87158203125,\"z\":7.48718929290771},\"maxDistance\":1,\"model\":854291622,\"heading\":230}'),
(72, 'hospital_door10', '{\"coords\":{\"x\":-798.2958374023438,\"y\":-1237.970458984375,\"z\":7.48718929290771},\"doors\":[{\"coords\":{\"x\":-799.2817993164063,\"y\":-1237.1431884765626,\"z\":7.48718929290771},\"heading\":320,\"model\":-434783486},{\"coords\":{\"x\":-797.3098754882813,\"y\":-1238.7978515625,\"z\":7.48718929290771},\"heading\":320,\"model\":-1700911976}],\"state\":1,\"maxDistance\":1.5,\"groups\":{\"ambulance\":0}}'),
(73, 'hospital_door11', '{\"coords\":{\"x\":-797.6580810546875,\"y\":-1242.799072265625,\"z\":7.48718929290771},\"doors\":[{\"coords\":{\"x\":-798.4854125976563,\"y\":-1243.7850341796876,\"z\":7.48718929290771},\"heading\":230,\"model\":-1700911976},{\"coords\":{\"x\":-796.8307495117188,\"y\":-1241.81298828125,\"z\":7.48718929290771},\"heading\":230,\"model\":-434783486}],\"state\":1,\"maxDistance\":1.5,\"groups\":{\"ambulance\":0}}'),
(74, 'hospital_door12', '{\"coords\":{\"x\":-811.939453125,\"y\":-1239.81982421875,\"z\":7.48718929290771},\"doors\":false,\"state\":1,\"maxDistance\":1.5,\"heading\":230,\"model\":854291622,\"groups\":{\"ambulance\":0}}'),
(75, 'hospital_door13', '{\"coords\":{\"x\":-816.88818359375,\"y\":-1239.5704345703126,\"z\":7.48718929290771},\"doors\":false,\"state\":1,\"maxDistance\":1.5,\"heading\":140,\"model\":854291622,\"groups\":{\"ambulance\":0}}'),
(76, 'hospital_door14', '{\"coords\":{\"x\":-784.9666748046875,\"y\":-1232.6845703125,\"z\":7.48718929290771},\"doors\":false,\"state\":1,\"maxDistance\":1.5,\"heading\":320,\"model\":854291622,\"groups\":{\"ambulance\":0}}'),
(77, 'hospital_door15', '{\"coords\":{\"x\":-781.2012939453125,\"y\":-1235.8441162109376,\"z\":7.48718929290771},\"doors\":false,\"state\":1,\"maxDistance\":1.5,\"heading\":320,\"model\":854291622,\"groups\":{\"ambulance\":0}}'),
(78, 'hospital_door16', '{\"coords\":{\"x\":-784.5406494140625,\"y\":-1239.823974609375,\"z\":7.48718929290771},\"doors\":false,\"state\":1,\"maxDistance\":1.5,\"heading\":320,\"model\":854291622,\"groups\":{\"ambulance\":0}}'),
(79, 'hospital_door17', '{\"coords\":{\"x\":-776.3164672851563,\"y\":-1239.9429931640626,\"z\":7.48718929290771},\"doors\":false,\"state\":1,\"maxDistance\":1.5,\"heading\":320,\"model\":854291622,\"groups\":{\"ambulance\":0}}'),
(81, 'uwu_door1', '{\"state\":1,\"maxDistance\":1.5,\"groups\":{\"uwu\":0},\"coords\":{\"x\":-581.014404296875,\"y\":-1069.627197265625,\"z\":22.48974800109863},\"doors\":[{\"coords\":{\"x\":-581.6677856445313,\"y\":-1069.627197265625,\"z\":22.48974800109863},\"model\":526179188,\"heading\":0},{\"coords\":{\"x\":-580.361083984375,\"y\":-1069.627197265625,\"z\":22.48974800109863},\"model\":-69331849,\"heading\":0}]}'),
(82, 'uwu_door2', '{\"state\":1,\"maxDistance\":1.5,\"groups\":{\"uwu\":0},\"coords\":{\"x\":-587.3400268554688,\"y\":-1051.8994140625,\"z\":22.41300582885742},\"heading\":90,\"doors\":false,\"model\":-1283712428}'),
(83, 'uwu_door3', '{\"state\":1,\"maxDistance\":1.5,\"groups\":{\"uwu\":0},\"coords\":{\"x\":-590.1828002929688,\"y\":-1054.14794921875,\"z\":22.41300582885742},\"heading\":180,\"doors\":false,\"model\":-60871655}'),
(84, 'uwu_door4', '{\"state\":1,\"maxDistance\":1.5,\"groups\":{\"uwu\":0},\"coords\":{\"x\":-592.4738159179688,\"y\":-1056.09130859375,\"z\":22.41300582885742},\"heading\":0,\"doors\":false,\"model\":-60871655}'),
(85, 'uwu_door5', '{\"state\":1,\"maxDistance\":1.5,\"groups\":{\"uwu\":0},\"coords\":{\"x\":-594.4122924804688,\"y\":-1049.7686767578126,\"z\":22.49712753295898},\"heading\":90,\"doors\":false,\"model\":2089009131}'),
(86, 'uwu_door6', '{\"state\":0,\"auto\":true,\"maxDistance\":2.5,\"groups\":{\"uwu\":0},\"coords\":{\"x\":-600.9105834960938,\"y\":-1059.2176513671876,\"z\":21.72143173217773},\"heading\":270,\"doors\":false,\"model\":522844070}'),
(87, 'uwu_door7', '{\"state\":1,\"maxDistance\":1.5,\"groups\":{\"uwu\":0},\"coords\":{\"x\":-600.8886108398438,\"y\":-1055.1314697265626,\"z\":22.71302795410156},\"heading\":270,\"doors\":false,\"model\":1099436502}'),
(88, 'uwu_door8', '{\"state\":0,\"maxDistance\":1.5,\"groups\":{\"uwu\":0},\"coords\":{\"x\":-570.6216430664063,\"y\":-1053.2105712890626,\"z\":22.41300582885742},\"heading\":270,\"doors\":false,\"model\":1717323416}'),
(89, 'uwu_door9', '{\"state\":0,\"maxDistance\":1.5,\"groups\":{\"uwu\":0},\"coords\":{\"x\":-570.6235961914063,\"y\":-1055.215576171875,\"z\":22.41300582885742},\"heading\":90,\"doors\":false,\"model\":1717323416}'),
(90, 'uwu_door10', '{\"state\":0,\"maxDistance\":1.5,\"groups\":{\"uwu\":0},\"coords\":{\"x\":-571.7926635742188,\"y\":-1057.388427734375,\"z\":26.76796531677246},\"heading\":0,\"doors\":false,\"model\":2089009131}'),
(91, 'uwu_door11', '{\"state\":1,\"maxDistance\":1.5,\"groups\":{\"uwu\":0},\"coords\":{\"x\":-575.0108642578125,\"y\":-1062.3807373046876,\"z\":26.76796531677246},\"heading\":270,\"doors\":false,\"model\":2089009131}'),
(92, 'uwu_door12', '{\"state\":1,\"maxDistance\":1.5,\"groups\":{\"uwu\":0},\"coords\":{\"x\":-575.0128173828125,\"y\":-1063.7833251953126,\"z\":26.76796531677246},\"heading\":90,\"doors\":false,\"model\":2089009131}'),
(93, 'gabz_mrpd 30', '{\"coords\":{\"x\":410.2601623535156,\"y\":-1021.7655029296875,\"z\":28.47683334350586},\"maxDistance\":5.5,\"groups\":{\"police\":0},\"state\":1,\"auto\":true,\"heading\":89,\"doors\":false,\"model\":1286535678}'),
(95, 'gabz_mrpd 30', '{\"state\":1,\"lockpick\":true,\"groups\":{\"police\":0},\"maxDistance\":1.5,\"coords\":{\"x\":468.72479248046877,\"y\":-1000.543701171875,\"z\":26.40548324584961},\"doors\":[{\"model\":-288803980,\"heading\":0,\"coords\":{\"x\":467.522216796875,\"y\":-1000.543701171875,\"z\":26.40548324584961}},{\"model\":-288803980,\"heading\":180,\"coords\":{\"x\":469.9273681640625,\"y\":-1000.543701171875,\"z\":26.40548324584961}}]}'),
(96, 'gabz_mrpd 31', '{\"state\":1,\"lockpick\":true,\"groups\":{\"police\":0},\"maxDistance\":1.5,\"coords\":{\"x\":471.371826171875,\"y\":-1008.99560546875,\"z\":26.40548324584961},\"doors\":[{\"model\":149284793,\"heading\":90,\"coords\":{\"x\":471.3758239746094,\"y\":-1010.1978759765625,\"z\":26.40548324584961}},{\"model\":149284793,\"heading\":270,\"coords\":{\"x\":471.36785888671877,\"y\":-1007.7933959960938,\"z\":26.40548324584961}}]}'),
(97, 'gabz_mrpd 32', '{\"coords\":{\"x\":475.953857421875,\"y\":-1006.9378051757813,\"z\":26.40638542175293},\"maxDistance\":1.5,\"groups\":{\"police\":0},\"state\":1,\"model\":-288803980,\"heading\":180,\"doors\":false}'),
(98, 'gabz_mrpd 33', '{\"heading\":270,\"coords\":{\"x\":458.6543273925781,\"y\":-990.6497802734375,\"z\":30.82319259643554},\"doors\":false,\"model\":-96679321,\"groups\":{\"police\":0},\"maxDistance\":1.5,\"state\":1}'),
(99, 'gabz_mrpd 34', '{\"doors\":false,\"state\":1,\"maxDistance\":2,\"coords\":{\"x\":458.08941650390627,\"y\":-995.524658203125,\"z\":30.82319259643554},\"model\":149284793,\"groups\":{\"police\":0},\"heading\":225}'),
(100, 'carzone_door1', '{\"coords\":{\"x\":-1427.3250732421876,\"y\":-444.1532897949219,\"z\":34.90351867675781},\"doors\":false,\"model\":1715394473,\"maxDistance\":5,\"auto\":true,\"groups\":{\"carzone\":0},\"state\":1,\"heading\":32}'),
(101, 'carzone_door2', '{\"coords\":{\"x\":-1421.116455078125,\"y\":-440.27374267578127,\"z\":34.90351867675781},\"doors\":false,\"model\":1715394473,\"maxDistance\":5,\"auto\":true,\"groups\":{\"carzone\":0},\"state\":1,\"heading\":32}'),
(102, 'carzone_door3', '{\"coords\":{\"x\":-1414.867919921875,\"y\":-436.36920166015627,\"z\":34.90351867675781},\"groups\":{\"carzone\":0},\"heading\":32,\"auto\":true,\"model\":1715394473,\"doors\":false,\"maxDistance\":5,\"state\":1}'),
(103, 'carzone_door4', '{\"doors\":false,\"heading\":302,\"coords\":{\"x\":-1427.525146484375,\"y\":-455.6804504394531,\"z\":36.05956268310547},\"groups\":{\"carzone\":0},\"model\":1289778077,\"maxDistance\":1.5,\"state\":1}'),
(104, 'carzone_door5', '{\"coords\":{\"x\":-1434.155029296875,\"y\":-448.5860900878906,\"z\":36.05923461914062},\"groups\":{\"carzone\":0},\"heading\":32,\"model\":-634936098,\"doors\":false,\"maxDistance\":1.5,\"state\":1}'),
(105, 'tuners_door1', '{\"groups\":{\"tunerszone\":0},\"model\":-983965772,\"coords\":{\"x\":945.9343872070313,\"y\":-985.5709228515625,\"z\":41.16889953613281},\"state\":1,\"auto\":true,\"doors\":false,\"heading\":4,\"maxDistance\":5}'),
(106, 'tuners_door2', '{\"groups\":{\"tunerszone\":0},\"model\":1289778077,\"coords\":{\"x\":948.4877319335938,\"y\":-964.7033081054688,\"z\":39.64354705810547},\"state\":1,\"maxDistance\":1.5,\"doors\":false,\"heading\":94}'),
(107, 'tuners_door3', '{\"doors\":false,\"heading\":184,\"state\":1,\"maxDistance\":1.5,\"coords\":{\"x\":955.3582763671875,\"y\":-972.4451904296875,\"z\":39.64791870117187},\"groups\":{\"tunerszone\":0},\"model\":-626684119}'),
(108, 'bb_door1', '{\"doors\":false,\"coords\":{\"x\":1845.3463134765626,\"y\":2585.349609375,\"z\":46.08480453491211},\"heading\":90,\"maxDistance\":2,\"model\":1373390714,\"state\":0,\"groups\":{\"police\":0}}'),
(109, 'bb_door2', '{\"doors\":false,\"coords\":{\"x\":1839.6357421875,\"y\":2585.275390625,\"z\":46.16320419311523},\"heading\":90,\"maxDistance\":2,\"model\":-1033001619,\"state\":0,\"groups\":{\"police\":0}}'),
(110, 'bb_door3', '{\"doors\":false,\"coords\":{\"x\":1844.3516845703126,\"y\":2592.895751953125,\"z\":46.16231918334961},\"heading\":180,\"maxDistance\":2,\"model\":-1033001619,\"state\":1,\"groups\":{\"police\":0}}'),
(111, 'bb_door4', '{\"doors\":false,\"coords\":{\"x\":1841.0472412109376,\"y\":2595.018310546875,\"z\":46.16415405273437},\"heading\":90,\"maxDistance\":2,\"model\":-1437850419,\"state\":1,\"groups\":{\"police\":0}}'),
(112, 'bb_door5', '{\"doors\":false,\"coords\":{\"x\":1833.670166015625,\"y\":2595.020263671875,\"z\":46.16415405273437},\"heading\":90,\"maxDistance\":2,\"model\":-1437850419,\"state\":1,\"groups\":{\"police\":0}}'),
(113, 'bb_door6', '{\"doors\":false,\"coords\":{\"x\":1830.420654296875,\"y\":2592.8984375,\"z\":46.16162872314453},\"heading\":0,\"maxDistance\":2,\"model\":-1033001619,\"state\":0,\"groups\":{\"police\":0}}'),
(114, 'bb_door6', '{\"doors\":false,\"coords\":{\"x\":1829.4000244140626,\"y\":2595.0185546875,\"z\":46.16217041015625},\"heading\":270,\"maxDistance\":2,\"model\":-1033001619,\"state\":0,\"groups\":{\"police\":0}}'),
(115, 'bb_door7', '{\"doors\":false,\"coords\":{\"x\":1826.304443359375,\"y\":2586.45166015625,\"z\":46.08489608764648},\"heading\":270,\"maxDistance\":2,\"model\":1373390714,\"state\":1,\"groups\":{\"police\":0}}'),
(116, 'bb_door8', '{\"doors\":false,\"coords\":{\"x\":1827.299560546875,\"y\":2592.863037109375,\"z\":46.16094207763672},\"heading\":0,\"maxDistance\":2,\"model\":-1033001619,\"state\":0,\"groups\":{\"police\":0}}'),
(117, 'bb_door9', '{\"doors\":false,\"coords\":{\"x\":1819.0631103515626,\"y\":2594.864501953125,\"z\":46.16104888916015},\"heading\":270,\"maxDistance\":2,\"model\":1373390714,\"state\":0,\"groups\":{\"police\":0}}'),
(118, 'bb_door10', '{\"doors\":false,\"coords\":{\"x\":1797.7608642578126,\"y\":2596.56494140625,\"z\":46.3873062133789},\"heading\":180,\"maxDistance\":2,\"model\":-1156020871,\"state\":1,\"groups\":{\"police\":0}}'),
(119, 'bb_door11', '{\"doors\":false,\"coords\":{\"x\":1798.090087890625,\"y\":2591.687255859375,\"z\":46.41783905029297},\"heading\":180,\"maxDistance\":2,\"model\":-1156020871,\"state\":0,\"groups\":{\"police\":0}}'),
(121, 'bb_door13', '{\"auto\":true,\"doors\":false,\"coords\":{\"x\":1818.5428466796876,\"y\":2604.8125,\"z\":44.61100387573242},\"heading\":90,\"maxDistance\":5,\"model\":741314661,\"state\":1,\"groups\":{\"police\":0}}'),
(122, 'bb_door14', '{\"auto\":true,\"doors\":false,\"coords\":{\"x\":1844.9984130859376,\"y\":2604.8125,\"z\":44.63977813720703},\"heading\":90,\"maxDistance\":5,\"model\":741314661,\"state\":1,\"groups\":{\"police\":0}}'),
(123, 'bb_door15', '{\"doors\":false,\"coords\":{\"x\":1791.6810302734376,\"y\":2551.46484375,\"z\":45.74349975585937},\"heading\":90,\"maxDistance\":2,\"model\":1373390714,\"state\":0,\"groups\":{\"police\":0}}'),
(124, 'bb_door16', '{\"doors\":false,\"model\":1373390714,\"state\":0,\"heading\":270,\"maxDistance\":2,\"coords\":{\"x\":1776.1680908203126,\"y\":2552.560791015625,\"z\":45.74349975585937},\"groups\":{\"police\":0}}'),
(125, 'bb_door17', '{\"doors\":false,\"model\":1373390714,\"state\":0,\"heading\":210,\"maxDistance\":2,\"coords\":{\"x\":1754.85302734375,\"y\":2501.746826171875,\"z\":46.02726745605469},\"groups\":{\"police\":0}}'),
(126, 'bb_door18', '{\"doors\":false,\"model\":-1033001619,\"state\":0,\"heading\":30,\"maxDistance\":2,\"coords\":{\"x\":1758.064453125,\"y\":2493.794189453125,\"z\":45.96915435791015},\"groups\":{\"police\":0}}'),
(127, 'bb_door19', '{\"doors\":[{\"heading\":120,\"coords\":{\"x\":1772.94921875,\"y\":2492.125,\"z\":50.58296203613281},\"model\":-2109504629},{\"heading\":300,\"coords\":{\"x\":1771.6512451171876,\"y\":2494.378662109375,\"z\":50.58324813842773},\"model\":-2109504629}],\"state\":1,\"maxDistance\":2,\"coords\":{\"x\":1772.30029296875,\"y\":2493.251953125,\"z\":50.5831069946289},\"groups\":{\"police\":0}}'),
(128, 'bb_door20', '{\"doors\":false,\"model\":-1033001619,\"state\":1,\"heading\":300,\"maxDistance\":2,\"coords\":{\"x\":1782.7576904296876,\"y\":2498.295166015625,\"z\":50.57921981811523},\"groups\":{\"police\":0}}'),
(129, 'hospital_slupki', '{\"groups\":{\"police\":0,\"ambulance\":0},\"doors\":false,\"model\":-1518369568,\"auto\":true,\"heading\":20,\"hideUi\":true,\"maxDistance\":5,\"state\":1,\"doorRate\":10,\"coords\":{\"x\":286.89825439453127,\"y\":-595.213623046875,\"z\":42.9662971496582}}'),
(130, 'hospital_slupki2', '{\"groups\":{\"police\":0,\"ambulance\":0},\"doors\":false,\"model\":-1518369568,\"auto\":true,\"heading\":290,\"hideUi\":true,\"maxDistance\":5,\"state\":1,\"doorRate\":10,\"coords\":{\"x\":289.41583251953127,\"y\":-573.731201171875,\"z\":42.99094772338867}}'),
(131, 'doj_door1', '{\"groups\":{\"doj\":0,\"police\":0},\"state\":1,\"maxDistance\":1.5,\"coords\":{\"x\":-545.5028686523438,\"y\":-203.39736938476563,\"z\":38.41349411010742},\"doors\":[{\"model\":-816468097,\"coords\":{\"x\":-544.3876953125,\"y\":-202.75344848632813,\"z\":38.41349411010742},\"heading\":210},{\"model\":-2112350883,\"coords\":{\"x\":-546.6180419921875,\"y\":-204.04129028320313,\"z\":38.41349411010742},\"heading\":210}],\"lockpick\":true}'),
(132, 'doj_door2', '{\"groups\":{\"doj\":0,\"police\":0},\"state\":1,\"maxDistance\":1.5,\"coords\":{\"x\":-560.5101318359375,\"y\":-199.73724365234376,\"z\":38.34017181396484},\"doors\":[{\"model\":110411286,\"coords\":{\"x\":-559.8601684570313,\"y\":-200.86309814453126,\"z\":38.34017181396484},\"heading\":120},{\"model\":110411286,\"coords\":{\"x\":-561.16015625,\"y\":-198.61138916015626,\"z\":38.34017181396484},\"heading\":300}],\"lockpick\":true}'),
(133, 'doj_door3', '{\"groups\":{\"doj\":0,\"police\":0},\"model\":110411286,\"state\":1,\"maxDistance\":1.5,\"coords\":{\"x\":-566.0357666015625,\"y\":-200.24713134765626,\"z\":38.34028244018555},\"doors\":false,\"heading\":30,\"lockpick\":true}'),
(134, 'doj_door4', '{\"groups\":{\"doj\":0,\"police\":0},\"state\":1,\"maxDistance\":1.5,\"coords\":{\"x\":-541.2020263671875,\"y\":-188.58963012695313,\"z\":38.33841705322265},\"doors\":[{\"model\":110411286,\"coords\":{\"x\":-540.5521240234375,\"y\":-189.7152862548828,\"z\":38.33841705322265},\"heading\":120},{\"model\":110411286,\"coords\":{\"x\":-541.8519287109375,\"y\":-187.46397399902345,\"z\":38.33841705322265},\"heading\":300}],\"lockpick\":true}'),
(135, 'doj_door5', '{\"groups\":{\"doj\":0,\"police\":0},\"model\":1668008345,\"state\":0,\"maxDistance\":1.5,\"coords\":{\"x\":-539.14306640625,\"y\":-184.90554809570313,\"z\":38.38431167602539},\"doors\":false,\"heading\":30,\"lockpick\":true}'),
(136, 'doj_door6', '{\"groups\":{\"doj\":0,\"police\":0},\"model\":1668008345,\"state\":0,\"maxDistance\":1.5,\"coords\":{\"x\":-535.8534545898438,\"y\":-187.99974060058595,\"z\":38.38567352294922},\"doors\":false,\"heading\":210,\"lockpick\":true}'),
(137, 'doj_door6', '{\"groups\":{\"doj\":0,\"police\":0},\"state\":1,\"maxDistance\":1.5,\"coords\":{\"x\":-533.7883911132813,\"y\":-184.30938720703126,\"z\":38.33841705322265},\"doors\":[{\"model\":110411286,\"coords\":{\"x\":-534.4353637695313,\"y\":-183.18202209472657,\"z\":38.33841705322265},\"heading\":300},{\"model\":110411286,\"coords\":{\"x\":-533.1414184570313,\"y\":-185.43673706054688,\"z\":38.33841705322265},\"heading\":120}],\"lockpick\":true}'),
(138, 'doj_door7', '{\"groups\":{\"doj\":0,\"police\":0},\"state\":0,\"maxDistance\":1.5,\"coords\":{\"x\":-528.027099609375,\"y\":-180.98097229003907,\"z\":37.7070426940918},\"doors\":[{\"model\":1893248903,\"coords\":{\"x\":-528.41015625,\"y\":-180.31741333007813,\"z\":37.7070426940918},\"heading\":300},{\"model\":1893248903,\"coords\":{\"x\":-527.6439819335938,\"y\":-181.64453125,\"z\":37.7070426940918},\"heading\":120}]}'),
(139, 'doj_door8', '{\"groups\":{\"doj\":0,\"police\":0},\"state\":1,\"maxDistance\":1.5,\"coords\":{\"x\":-517.549560546875,\"y\":-186.6510467529297,\"z\":38.33970642089844},\"doors\":[{\"model\":110411286,\"coords\":{\"x\":-516.4215087890625,\"y\":-186.00367736816407,\"z\":38.33970642089844},\"heading\":210},{\"model\":110411286,\"coords\":{\"x\":-518.6775512695313,\"y\":-187.2984161376953,\"z\":38.33970642089844},\"heading\":30}],\"lockpick\":true}'),
(140, 'doj_door9', '{\"groups\":{\"doj\":0,\"police\":0},\"model\":110411286,\"state\":1,\"maxDistance\":1.5,\"coords\":{\"x\":-516.507568359375,\"y\":-193.08428955078126,\"z\":38.34236907958984},\"doors\":false,\"heading\":120,\"lockpick\":true}'),
(141, 'doj_door9', '{\"groups\":{\"doj\":0,\"police\":0},\"model\":-519068795,\"state\":1,\"maxDistance\":1.5,\"coords\":{\"x\":-510.8222961425781,\"y\":-203.07275390625,\"z\":34.40230178833008},\"doors\":false,\"heading\":120,\"lockpick\":true}'),
(142, 'doj_door10', '{\"groups\":{\"doj\":0,\"police\":0},\"model\":631614199,\"state\":1,\"maxDistance\":1.5,\"coords\":{\"x\":-514.1593627929688,\"y\":-205.07339477539063,\"z\":34.40555191040039},\"doors\":false,\"heading\":120,\"lockpick\":true}'),
(143, 'doj_door11', '{\"groups\":{\"doj\":0,\"police\":0},\"model\":631614199,\"state\":1,\"maxDistance\":1.5,\"coords\":{\"x\":-516.2435302734375,\"y\":-201.46334838867188,\"z\":34.40555191040039},\"doors\":false,\"heading\":120,\"lockpick\":true}'),
(144, 'doj_door12', '{\"groups\":{\"doj\":0,\"police\":0},\"state\":1,\"maxDistance\":1.5,\"coords\":{\"x\":-506.622314453125,\"y\":-199.89735412597657,\"z\":34.40414047241211},\"doors\":[{\"model\":605731446,\"coords\":{\"x\":-507.1620788574219,\"y\":-198.95977783203126,\"z\":34.40414047241211},\"heading\":300},{\"model\":605731446,\"coords\":{\"x\":-506.08258056640627,\"y\":-200.83493041992188,\"z\":34.40414047241211},\"heading\":120}],\"lockpick\":true}'),
(145, 'doj_door13', '{\"groups\":{\"doj\":0,\"police\":0},\"state\":1,\"maxDistance\":1.5,\"coords\":{\"x\":-541.202392578125,\"y\":-188.59030151367188,\"z\":42.88393020629883},\"doors\":[{\"model\":110411286,\"coords\":{\"x\":-540.5521240234375,\"y\":-189.7165985107422,\"z\":42.88393020629883},\"heading\":120},{\"model\":110411286,\"coords\":{\"x\":-541.8526611328125,\"y\":-187.4639892578125,\"z\":42.88393020629883},\"heading\":300}],\"lockpick\":true}'),
(146, 'doj_door14', '{\"groups\":{\"doj\":0,\"police\":0},\"state\":1,\"maxDistance\":1.5,\"coords\":{\"x\":-560.4558715820313,\"y\":-199.70635986328126,\"z\":42.89221572875976},\"doors\":[{\"model\":110411286,\"coords\":{\"x\":-561.105224609375,\"y\":-198.5792694091797,\"z\":42.89221572875976},\"heading\":300},{\"model\":110411286,\"coords\":{\"x\":-559.8065185546875,\"y\":-200.83343505859376,\"z\":42.89221572875976},\"heading\":120}],\"lockpick\":true}'),
(149, 'arcade_door1', '{\"coords\":{\"x\":757.9735717773438,\"y\":-816.7396240234375,\"z\":26.6999568939209},\"doors\":false,\"state\":1,\"maxDistance\":1.5,\"heading\":90,\"model\":-1989765534,\"groups\":{\"arcade\":0}}'),
(150, 'arcade_door2', '{\"coords\":{\"x\":750.4926147460938,\"y\":-810.1793212890625,\"z\":23.80924797058105},\"doors\":false,\"state\":1,\"maxDistance\":1.5,\"heading\":360,\"model\":-1989765534,\"groups\":{\"arcade\":0}}'),
(151, 'arcade_door3', '{\"coords\":{\"x\":750.031005859375,\"y\":-814.2589721679688,\"z\":22.66041755676269},\"doors\":false,\"state\":1,\"maxDistance\":1.5,\"heading\":90,\"model\":-1977830166,\"groups\":{\"arcade\":0}}'),
(152, 'arcade_door4', '{\"coords\":{\"x\":734.4160766601563,\"y\":-815.5507202148438,\"z\":21.69037628173828},\"doors\":false,\"state\":1,\"maxDistance\":1.5,\"heading\":0,\"model\":855881614,\"groups\":{\"arcade\":0}}'),
(153, 'arcade_door5', '{\"coords\":{\"x\":738.0899658203125,\"y\":-810.42578125,\"z\":23.29042243957519},\"doors\":false,\"state\":1,\"maxDistance\":1.5,\"heading\":270,\"model\":855881614,\"groups\":{\"arcade\":0}}'),
(154, 'arcade_door6', '{\"coords\":{\"x\":740.4595947265625,\"y\":-809.636474609375,\"z\":24.31619834899902},\"doors\":[{\"heading\":0,\"coords\":{\"x\":741.1412963867188,\"y\":-809.62939453125,\"z\":24.31619834899902},\"model\":2056855795},{\"heading\":0,\"coords\":{\"x\":739.7779541015625,\"y\":-809.6434936523438,\"z\":24.31619834899902},\"model\":-1777641513}],\"state\":1,\"maxDistance\":1.5,\"groups\":{\"arcade\":0}}'),
(155, 'arcade_door7', '{\"coords\":{\"x\":741.1089477539063,\"y\":-797.6863403320313,\"z\":19.81089973449707},\"doors\":false,\"state\":1,\"maxDistance\":1.5,\"heading\":180,\"model\":-2023754432,\"groups\":{\"arcade\":0}}'),
(156, 'arcade_door8', '{\"auto\":true,\"doorRate\":10,\"coords\":{\"x\":717.4714965820313,\"y\":-767.6135864257813,\"z\":23.89897918701172},\"doors\":false,\"state\":1,\"maxDistance\":5,\"heading\":90,\"model\":346272656,\"groups\":{\"arcade\":0}}'),
(157, 'sewing_door1', '{\"doors\":[{\"coords\":{\"x\":716.7808227539063,\"y\":-975.420654296875,\"z\":25.00571632385254},\"model\":245182344,\"heading\":180},{\"coords\":{\"x\":719.3818359375,\"y\":-975.4185180664063,\"z\":25.00571632385254},\"model\":-681066206,\"heading\":0}],\"coords\":{\"x\":718.081298828125,\"y\":-975.4195556640625,\"z\":25.00571632385254},\"groups\":{\"sewing\":0},\"state\":1,\"maxDistance\":1.5}'),
(158, 'sewing_door2', '{\"doors\":false,\"coords\":{\"x\":709.9812622070313,\"y\":-963.5310668945313,\"z\":30.54529190063476},\"heading\":90,\"groups\":{\"sewing\":0},\"state\":1,\"model\":551491569,\"maxDistance\":1.5}'),
(160, 'pdm_door1', '{\"state\":1,\"coords\":{\"x\":-1260.7333984375,\"y\":-349.1142272949219,\"z\":37.11116027832031},\"maxDistance\":1.5,\"groups\":{\"pdm\":0},\"doors\":[{\"heading\":207,\"coords\":{\"x\":-1261.8756103515626,\"y\":-349.6961975097656,\"z\":37.11116027832031},\"model\":-1152174184},{\"heading\":207,\"coords\":{\"x\":-1259.59130859375,\"y\":-348.5322570800781,\"z\":37.11116027832031},\"model\":73386408}]}'),
(161, 'pdm_door2', '{\"state\":1,\"coords\":{\"x\":-1269.185546875,\"y\":-369.2408447265625,\"z\":37.1052017211914},\"maxDistance\":1.5,\"groups\":{\"pdm\":0},\"doors\":[{\"heading\":298,\"coords\":{\"x\":-1269.7930908203126,\"y\":-368.1114807128906,\"z\":37.11116027832031},\"model\":73386408},{\"heading\":298,\"coords\":{\"x\":-1268.5780029296876,\"y\":-370.37017822265627,\"z\":37.0992431640625},\"model\":-1152174184}]}'),
(162, 'pdm_door3', '{\"state\":1,\"heading\":207,\"coords\":{\"x\":-1237.8436279296876,\"y\":-338.19476318359377,\"z\":37.60726928710937},\"maxDistance\":5,\"auto\":true,\"groups\":{\"pdm\":0},\"model\":1430328167,\"doors\":false}'),
(163, 'pdm_door4', '{\"state\":1,\"heading\":298,\"coords\":{\"x\":-1243.6416015625,\"y\":-347.42779541015627,\"z\":37.47900009155273},\"maxDistance\":1.5,\"groups\":{\"pdm\":0},\"model\":-952356348,\"doors\":false}'),
(164, 'ballasshop_door1', '{\"state\":1,\"coords\":{\"x\":-4.97112035751342,\"y\":-1817.683349609375,\"z\":25.49787139892578},\"groups\":{\"ballas\":0},\"doors\":false,\"lockpick\":true,\"heading\":320,\"model\":1173348778,\"maxDistance\":1.5}'),
(165, 'ballasshop_door2', '{\"state\":1,\"coords\":{\"x\":5.64954757690429,\"y\":-1816.7513427734376,\"z\":25.48483085632324},\"groups\":{\"ballas\":0},\"doors\":false,\"lockpick\":true,\"heading\":50,\"model\":1531355165,\"maxDistance\":1.5}'),
(166, 'ballasshop_door3', '{\"state\":1,\"coords\":{\"x\":0.19398263096809,\"y\":-1823.281494140625,\"z\":29.64038848876953},\"groups\":{\"ballas\":0},\"doors\":false,\"heading\":50,\"model\":1413743677,\"maxDistance\":1.5}'),
(167, 'ballas_door1', '{\"state\":1,\"coords\":{\"x\":21.2109088897705,\"y\":-1845.3363037109376,\"z\":24.73653411865234},\"groups\":{\"ballas\":0},\"doors\":false,\"lockpick\":true,\"heading\":230,\"model\":1354431710,\"maxDistance\":1.5}'),
(168, 'ballas_door2', '{\"state\":1,\"coords\":{\"x\":21.00753021240234,\"y\":-1836.7001953125,\"z\":24.55591583251953},\"groups\":{\"ballas\":0},\"doors\":false,\"lockpick\":true,\"heading\":230,\"model\":1354431710,\"maxDistance\":1.5}'),
(169, 'ballas_door3', '{\"state\":1,\"coords\":{\"x\":29.91731643676757,\"y\":-1833.3211669921876,\"z\":24.74928092956543},\"groups\":{\"ballas\":0},\"doors\":false,\"heading\":320,\"model\":1354431710,\"maxDistance\":1.5}'),
(170, 'ballas_door4', '{\"state\":1,\"coords\":{\"x\":39.08878326416015,\"y\":-1910.905029296875,\"z\":22.0915355682373},\"groups\":{\"ballas\":0},\"doors\":false,\"lockpick\":true,\"heading\":50,\"model\":1354431710,\"maxDistance\":1.5}'),
(171, 'ballas_door5', '{\"state\":1,\"coords\":{\"x\":39.29743957519531,\"y\":-1919.541015625,\"z\":21.91091728210449},\"groups\":{\"ballas\":0},\"doors\":false,\"lockpick\":true,\"heading\":50,\"model\":1354431710,\"maxDistance\":1.5}'),
(172, 'ballas_door6', '{\"state\":1,\"coords\":{\"x\":33.00109100341797,\"y\":-1918.0052490234376,\"z\":22.10847091674804},\"groups\":{\"ballas\":0},\"doors\":false,\"lockpick\":true,\"heading\":51,\"model\":-1128607325,\"maxDistance\":1.5}'),
(173, 'ballas_door7', '{\"state\":1,\"coords\":{\"x\":30.38972282409668,\"y\":-1922.925537109375,\"z\":22.10428237915039},\"groups\":{\"ballas\":0},\"doors\":false,\"lockpick\":true,\"heading\":140,\"model\":1354431710,\"maxDistance\":1.5}'),
(174, 'ballas_door8', '{\"state\":1,\"coords\":{\"x\":76.39231872558594,\"y\":-1947.45361328125,\"z\":21.30253410339355},\"groups\":{\"ballas\":0},\"doors\":false,\"lockpick\":true,\"heading\":50,\"model\":1354431710,\"maxDistance\":1.5}'),
(175, 'ballas_door9', '{\"state\":1,\"coords\":{\"x\":76.59585571289063,\"y\":-1956.0897216796876,\"z\":21.12191581726074},\"groups\":{\"ballas\":0},\"doors\":false,\"lockpick\":true,\"heading\":50,\"model\":1354431710,\"maxDistance\":1.5}'),
(176, 'ballas_door10', '{\"state\":1,\"coords\":{\"x\":67.68612670898438,\"y\":-1959.468994140625,\"z\":21.31528091430664},\"groups\":{\"ballas\":0},\"doors\":false,\"lockpick\":true,\"heading\":140,\"model\":1354431710,\"maxDistance\":1.5}'),
(177, 'ballas_door11', '{\"state\":1,\"coords\":{\"x\":126.46009826660156,\"y\":-1930.5955810546876,\"z\":21.51553535461425},\"groups\":{\"ballas\":0},\"doors\":false,\"lockpick\":true,\"heading\":209,\"model\":1354431710,\"maxDistance\":1.5}'),
(178, 'ballas_door12', '{\"state\":1,\"coords\":{\"x\":129.3236846923828,\"y\":-1922.445556640625,\"z\":21.33491706848144},\"groups\":{\"ballas\":0},\"doors\":false,\"lockpick\":true,\"heading\":209,\"model\":1354431710,\"maxDistance\":1.5}'),
(179, 'pillbox_door1', '{\"maxDistance\":1.5,\"state\":1,\"groups\":{\"ambulance\":0},\"doors\":[{\"model\":-1700911976,\"heading\":340,\"coords\":{\"x\":305.22186279296877,\"y\":-582.3056030273438,\"z\":43.43391036987305}},{\"model\":-434783486,\"heading\":340,\"coords\":{\"x\":302.8030700683594,\"y\":-581.424560546875,\"z\":43.43391036987305}}],\"coords\":{\"x\":304.012451171875,\"y\":-581.8651123046875,\"z\":43.43391036987305}}'),
(180, 'pillbox_door2', '{\"model\":854291622,\"maxDistance\":1.5,\"state\":1,\"groups\":{\"ambulance\":0},\"doors\":false,\"heading\":250,\"coords\":{\"x\":313.4800720214844,\"y\":-595.4583129882813,\"z\":43.43391036987305}}'),
(181, 'pillbox_door3', '{\"model\":854291622,\"maxDistance\":1.5,\"state\":1,\"groups\":{\"ambulance\":0},\"doors\":false,\"heading\":160,\"coords\":{\"x\":309.13372802734377,\"y\":-597.75146484375,\"z\":43.43391036987305}}'),
(182, 'pillbox_door4', '{\"model\":854291622,\"maxDistance\":1.5,\"state\":1,\"groups\":{\"ambulance\":0},\"doors\":false,\"heading\":250,\"coords\":{\"x\":303.90869140625,\"y\":-596.5780029296875,\"z\":43.43391036987305}}'),
(183, 'pillbox_door5', '{\"maxDistance\":1.5,\"state\":1,\"groups\":{\"ambulance\":0},\"doors\":[{\"model\":-1700911976,\"heading\":340,\"coords\":{\"x\":326.6549987792969,\"y\":-590.1066284179688,\"z\":43.43391036987305}},{\"model\":-434783486,\"heading\":340,\"coords\":{\"x\":324.23602294921877,\"y\":-589.2261962890625,\"z\":43.43391036987305}}],\"coords\":{\"x\":325.44549560546877,\"y\":-589.6663818359375,\"z\":43.43391036987305}}'),
(184, 'pillbox_door6', '{\"coords\":{\"x\":317.27520751953127,\"y\":-578.7879638671875,\"z\":43.43391036987305},\"doors\":[{\"heading\":160,\"coords\":{\"x\":318.48468017578127,\"y\":-579.2281494140625,\"z\":43.43391036987305},\"model\":-434783486},{\"heading\":160,\"coords\":{\"x\":316.0657043457031,\"y\":-578.3477172851563,\"z\":43.43391036987305},\"model\":-1700911976}],\"maxDistance\":1.5,\"groups\":{\"ambulance\":0},\"state\":1}'),
(185, 'pillbox_door7', '{\"coords\":{\"x\":319.05206298828127,\"y\":-573.9061279296875,\"z\":43.43391036987305},\"doors\":[{\"heading\":340,\"coords\":{\"x\":320.26153564453127,\"y\":-574.3463134765625,\"z\":43.43391036987305},\"model\":-1700911976},{\"heading\":340,\"coords\":{\"x\":317.8425598144531,\"y\":-573.4658813476563,\"z\":43.43391036987305},\"model\":-434783486}],\"maxDistance\":1.5,\"groups\":{\"ambulance\":0},\"state\":1}'),
(186, 'pillbox_door8', '{\"coords\":{\"x\":313.214599609375,\"y\":-571.7813720703125,\"z\":43.43391036987305},\"doors\":[{\"heading\":340,\"coords\":{\"x\":314.4241027832031,\"y\":-572.2215576171875,\"z\":43.43391036987305},\"model\":-1700911976},{\"heading\":340,\"coords\":{\"x\":312.005126953125,\"y\":-571.3411865234375,\"z\":43.43391036987305},\"model\":-434783486}],\"maxDistance\":1.5,\"groups\":{\"ambulance\":0},\"state\":1}'),
(187, 'pillbox_door9', '{\"coords\":{\"x\":324.447021484375,\"y\":-575.8696899414063,\"z\":43.43391036987305},\"doors\":[{\"heading\":340,\"coords\":{\"x\":325.6565246582031,\"y\":-576.3099365234375,\"z\":43.43391036987305},\"model\":-1700911976},{\"heading\":340,\"coords\":{\"x\":323.237548828125,\"y\":-575.429443359375,\"z\":43.43391036987305},\"model\":-434783486}],\"maxDistance\":1.5,\"groups\":{\"ambulance\":0},\"state\":1}'),
(188, 'pillbox_door10', '{\"coords\":{\"x\":326.10968017578127,\"y\":-579.2501220703125,\"z\":43.43391036987305},\"doors\":[{\"heading\":250,\"coords\":{\"x\":325.6694641113281,\"y\":-580.4595947265625,\"z\":43.43391036987305},\"model\":-1700911976},{\"heading\":250,\"coords\":{\"x\":326.5498962402344,\"y\":-578.0406494140625,\"z\":43.43391036987305},\"model\":-434783486}],\"maxDistance\":1.5,\"groups\":{\"ambulance\":0},\"state\":1}');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ox_inventory`
--

CREATE TABLE `ox_inventory` (
  `owner` varchar(46) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `data` longtext DEFAULT NULL,
  `lastupdated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pefcl_accounts`
--

CREATE TABLE `pefcl_accounts` (
  `id` int(11) NOT NULL,
  `number` varchar(255) DEFAULT NULL,
  `accountName` varchar(255) DEFAULT NULL,
  `isDefault` tinyint(1) DEFAULT 0,
  `ownerIdentifier` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT 'owner',
  `balance` int(11) DEFAULT 25000,
  `type` varchar(255) DEFAULT 'personal',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pefcl_cash`
--

CREATE TABLE `pefcl_cash` (
  `id` int(11) NOT NULL,
  `amount` int(11) DEFAULT 2000,
  `ownerIdentifier` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pefcl_external_accounts`
--

CREATE TABLE `pefcl_external_accounts` (
  `id` int(11) NOT NULL,
  `number` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pefcl_invoices`
--

CREATE TABLE `pefcl_invoices` (
  `id` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `from` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `fromIdentifier` varchar(255) NOT NULL,
  `toIdentifier` varchar(255) NOT NULL,
  `receiverAccountIdentifier` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT 0,
  `status` varchar(255) DEFAULT 'PENDING',
  `expiresAt` datetime NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pefcl_shared_accounts`
--

CREATE TABLE `pefcl_shared_accounts` (
  `id` int(11) NOT NULL,
  `userIdentifier` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT 'contributor',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime DEFAULT NULL,
  `accountId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pefcl_transactions`
--

CREATE TABLE `pefcl_transactions` (
  `id` int(11) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT 0,
  `type` varchar(255) DEFAULT 'Outgoing',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `toAccountId` int(11) DEFAULT NULL,
  `fromAccountId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `phone_app_chat`
--

CREATE TABLE `phone_app_chat` (
  `id` int(11) NOT NULL,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `phone_calls`
--

CREATE TABLE `phone_calls` (
  `id` int(11) NOT NULL,
  `owner` varchar(46) DEFAULT NULL,
  `num` varchar(10) NOT NULL COMMENT 'Num reférence du contact',
  `incoming` int(11) NOT NULL COMMENT 'Défini si on est à l''origine de l''appels',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `accepts` int(11) NOT NULL COMMENT 'Appels accepter ou pas'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `phone_messages`
--

CREATE TABLE `phone_messages` (
  `id` int(11) NOT NULL,
  `transmitter` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `isRead` int(11) NOT NULL DEFAULT 0,
  `owner` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `phone_users_contacts`
--

CREATE TABLE `phone_users_contacts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `radiocar`
--

CREATE TABLE `radiocar` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `radiocar_owned`
--

CREATE TABLE `radiocar_owned` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rented_vehicles`
--

CREATE TABLE `rented_vehicles` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(46) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `r_npwd_sim`
--

CREATE TABLE `r_npwd_sim` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `number` varchar(55) DEFAULT NULL,
  `ssn` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sprays`
--

CREATE TABLE `sprays` (
  `id` int(11) NOT NULL,
  `x` float(8,4) NOT NULL,
  `y` float(8,4) NOT NULL,
  `z` float(8,4) NOT NULL,
  `rx` float(8,4) NOT NULL,
  `ry` float(8,4) NOT NULL,
  `rz` float(8,4) NOT NULL,
  `scale` float(8,4) NOT NULL,
  `text` varchar(32) NOT NULL,
  `font` varchar(32) NOT NULL,
  `color` int(3) NOT NULL,
  `interior` int(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `storeid`
--

CREATE TABLE `storeid` (
  `id` int(11) NOT NULL,
  `fp` varchar(255) DEFAULT NULL,
  `ogloszenie` longtext NOT NULL,
  `date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tunerszonemdt_faktury`
--

CREATE TABLE `tunerszonemdt_faktury` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `charname` varchar(255) NOT NULL,
  `fp` varchar(255) NOT NULL,
  `reason` longtext NOT NULL,
  `fee` int(11) NOT NULL,
  `length` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tunerszonemdt_notatki`
--

CREATE TABLE `tunerszonemdt_notatki` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) COLLATE utf8mb4_bin DEFAULT NULL,
  `notatka` text COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tunerszonemdt_ogloszenia`
--

CREATE TABLE `tunerszonemdt_ogloszenia` (
  `id` int(11) NOT NULL,
  `fp` varchar(255) DEFAULT NULL,
  `ogloszenie` longtext NOT NULL,
  `date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tunerszonemdt_raporty`
--

CREATE TABLE `tunerszonemdt_raporty` (
  `id` int(11) NOT NULL,
  `fp` varchar(255) DEFAULT NULL,
  `raport` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `twitter_accounts`
--

CREATE TABLE `twitter_accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `password` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `avatar_url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `twitter_likes`
--

CREATE TABLE `twitter_likes` (
  `id` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `tweetId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `twitter_tweets`
--

CREATE TABLE `twitter_tweets` (
  `id` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `identifier` varchar(46) NOT NULL,
  `accounts` longtext DEFAULT NULL,
  `group` varchar(50) DEFAULT 'user',
  `inventory` longtext DEFAULT NULL,
  `job` varchar(20) DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `loadout` longtext DEFAULT NULL,
  `position` varchar(255) DEFAULT '{"x":-206.5636,"y":-1014.9464,"z":30.1381,"heading":347.3707}',
  `firstname` varchar(16) DEFAULT NULL,
  `lastname` varchar(16) DEFAULT NULL,
  `dateofbirth` varchar(10) DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `nationality` varchar(18) DEFAULT NULL,
  `skin` longtext DEFAULT NULL,
  `status` longtext DEFAULT NULL,
  `id` int(11) NOT NULL,
  `disabled` tinyint(1) DEFAULT 0,
  `last_property` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `last_seen` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `pincode` int(11) DEFAULT NULL,
  `isDead` bit(1) DEFAULT b'0',
  `health` int(11) DEFAULT NULL,
  `armour` int(11) NOT NULL DEFAULT 0,
  `badge` varchar(999) DEFAULT '',
  `animacje` longtext DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `job2` varchar(32) NOT NULL DEFAULT 'unemployed2',
  `job2_grade` varchar(32) NOT NULL DEFAULT '0',
  `jail` int(11) NOT NULL DEFAULT 0,
  `jobs` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user_contacts`
--

CREATE TABLE `user_contacts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user_licenses`
--

CREATE TABLE `user_licenses` (
  `id` int(11) NOT NULL,
  `type` varchar(60) NOT NULL,
  `owner` varchar(46) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `vehicles`
--

CREATE TABLE `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  `stock` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `vehicles`
--

INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `stock`) VALUES
('Adder', 'adder', 200000, 'super', 0),
('Akuma', 'akuma', 15000, 'motorcycles', 1),
('Alpha', 'alpha', 100000, 'sports', 2),
('Ardent', 'ardent', 50000, 'sportsclassics', 1),
('Asea', 'asea', 10000, 'sedans', 1),
('Asterope', 'asterope', 30000, 'sedans', 0),
('Autarch', 'autarch', 1000000, 'super', 2),
('Avarus', 'avarus', 19000, 'motorcycles', 0),
('Baller', 'baller', 300000, 'suvs', 1),
('Baller Super', 'baller4', 350000, 'suvs', 2),
('Banshee', 'banshee', 90000, 'sports', 2),
('Banshee 900R', 'banshee2', 300000, 'super', 0),
('Bati', 'bati', 50000, 'motorcycles', 0),
('Bestia GTS', 'bestiagts', 78000, 'sports', 0),
('Bf Injection', 'bfinjection', 15000, 'offroad', 0),
('Bifta', 'bifta', 18000, 'offroad', 1),
('Bison', 'bison', 250000, 'vans', 2),
('BJXL', 'bjxl', 150000, 'suvs', 2),
('Blade', 'blade', 50000, 'muscle', 2),
('Blista', 'blista', 50000, 'compacts', 0),
('Blista S', 'blista2', 60000, 'sports', 1),
('Blista GT', 'blista3', 65000, 'sports', 2),
('Bobcatxl', 'bobcatxl', 300000, 'vans', 2),
('Brawler', 'brawler', 150000, 'offroad', 1),
('Brioso', 'brioso', 62000, 'compacts', 1),
('Brabham BT62', 'bt62r', 3000000, 'import', 1),
('Btype', 'btype', 90000, 'sportsclassics', 0),
('Btype SC', 'btype2', 95000, 'sportsclassics', 0),
('Btype S', 'btype3', 99000, 'sportsclassics', 2),
('Buccaneer', 'buccaneer', 155000, 'muscle', 0),
('Buffalo', 'buffalo', 68000, 'sports', 0),
('Buffalo GT', 'buffalo3', 70000, 'sports', 1),
('Bullet', 'bullet', 95000, 'super', 0),
('Camper', 'camper', 60000, 'vans', 2),
('Carboni', 'carbonizzare', 195000, 'sports', 2),
('Carbonr S', 'carbonrs', 31200, 'motorcycles', 0),
('Casco', 'casco', 42000, 'sportsclassics', 0),
('Cavalcade', 'cavalcade', 92000, 'suvs', 1),
('Cheetah', 'cheetah', 2500000, 'super', 2),
('Cheetah SC', 'cheetah2', 2800000, 'sportsclassics', 2),
('Chino', 'chino', 70000, 'muscle', 0),
('Chino S', 'chino2', 75000, 'muscle', 2),
('Cliff hanger', 'cliffhanger', 15800, 'motorcycles', 2),
('COG55', 'cog55', 210000, 'sedans', 0),
('Cogcabrio', 'cogcabrio', 70000, 'coupes', 2),
('Cognoscenti', 'cognoscenti', 200000, 'sedans', 2),
('Comet SX', 'comet2', 120000, 'sports', 2),
('Contender', 'contender', 300000, 'suvs', 1),
('Coquette', 'coquette', 75000, 'sports', 2),
('Coquette SC', 'coquette2', 74000, 'sportsclassics', 0),
('Coquette GM', 'coquette3', 80000, 'muscle', 2),
('Cyclone', 'cyclone', 3000000, 'super', 2),
('Daemon', 'daemon', 18100, 'motorcycles', 2),
('Defiler', 'defiler', 25000, 'motorcycles', 2),
('Diablous', 'diablous', 45000, 'motorcycles', 1),
('Diablous S', 'Diablous2', 50000, 'motorcycles', 1),
('Dilettante', 'dilettante', 40000, 'compacts', 0),
('Dominator', 'dominator', 55000, 'muscle', 2),
('Double', 'double', 35000, 'motorcycles', 1),
('Dubsta', 'dubsta', 95000, 'suvs', 1),
('Dukes', 'dukes', 67000, 'muscle', 1),
('Elegy', 'elegy', 300000, 'sports', 1),
('Elegy S', 'elegy2', 330000, 'sports', 1),
('Emperor', 'emperor', 8000, 'sedans', 2),
('Entity XF', 'entityxf', 300000, 'super', 1),
('Ess key', 'esskey', 14000, 'motorcycles', 1),
('Mitsubishi Evo', 'evo9', 2000000, 'import', 1),
('Exemplar', 'exemplar', 90000, 'coupes', NULL),
('Camaro', 'exor', 2500000, 'import', 1),
('F620', 'f620', 300000, 'coupes', NULL),
('Faction', 'faction', 110000, 'muscle', NULL),
('Faggio S', 'faggio', 5500, 'motorcycles', NULL),
('FCR', 'fcr', 13500, 'motorcycles', NULL),
('FCR S', 'fcr2', 19600, 'motorcycles', NULL),
('Felon', 'felon', 100000, 'coupes', NULL),
('Felon S', 'felon2', 150000, 'coupes', NULL),
('Feltzer S', 'feltzer2', 113100, 'sports', NULL),
('Feltzer SC', 'feltzer3', 80000, 'sportsclassics', NULL),
('Honda Civic', 'fk8', 1000000, 'import', 1),
('FMJ', 'fmj', 330000, 'super', NULL),
('Nissan R-34', 'fnf4r34', 3500000, 'import', 1),
('Mazda RX7', 'fnfrx7', 3100000, 'import', 0),
('FQ2', 'fq2', 253000, 'suvs', NULL),
('Fugitive', 'fugitive', 66000, 'sedans', NULL),
('Furore GT', 'furoregt', 100000, 'sports', NULL),
('Fusilade', 'fusilade', 66000, 'sports', NULL),
('Futo', 'futo', 75000, 'sports', NULL),
('Gargoyle', 'gargoyle', 34000, 'motorcycles', NULL),
('Gauntlet', 'gauntlet', 80000, 'muscle', NULL),
('Glendale', 'glendale', 150000, 'sedans', NULL),
('GPL', 'gp1', 300000, 'super', NULL),
('Granger', 'granger', 120000, 'suvs', NULL),
('Gresley', 'gresley', 250000, 'suvs', NULL),
('GT500', 'gt500', 130000, 'sportsclassics', NULL),
('Nissan GT-R', 'gtr', 2700000, 'import', 1),
('Habanero', 'habanero', 62000, 'suvs', NULL),
('Hakuchou', 'hakuchou', 150000, 'motorcycles', NULL),
('Hermes', 'hermes', 53000, 'muscle', NULL),
('Hexer', 'hexer', 19500, 'motorcycles', NULL),
('Hotknife', 'hotknife', 50000, 'muscle', NULL),
('Huntley', 'huntley', 250000, 'suvs', NULL),
('Infernus', 'infernus', 130000, 'super', NULL),
('Infernus SC', 'infernus2', 70000, 'sportsclassics', NULL),
('Ingot', 'ingot', 45000, 'sedans', NULL),
('Innovation', 'innovation', 32000, 'motorcycles', NULL),
('Intruder', 'intruder', 53000, 'sedans', NULL),
('Issi S', 'issi2', 38500, 'compacts', NULL),
('Italigtb', 'italigtb', 500000, 'super', -1),
('Jackal', 'jackal', 92000, 'coupes', NULL),
('Jester', 'jester', 400000, 'sports', NULL),
('Journey', 'journey', 80000, 'vans', NULL),
('Khamelion', 'khamelion', 83000, 'sports', NULL),
('Kuruma', 'kuruma', 98000, 'sports', NULL),
('La Ferarri', 'laferrari17', 2800000, 'import', 1),
('Lands Talker', 'landstalker', 85000, 'suvs', NULL),
('Lexus LC500', 'lc500', 1700000, 'import', 1),
('LE7B', 'le7b', 450000, 'super', NULL),
('Lectro', 'lectro', 40000, 'motorcycles', 1),
('Murcielago', 'lp670', 2400000, 'import', 1),
('Lynx S', 'lynx2', 173000, 'sports', 1),
('Mamba', 'mamba', 90000, 'sportsclassics', 5),
('Manana', 'manana', 66000, 'sportsclassics', 1),
('Massacro', 'massacro', 88000, 'sports', 5),
('Mesa S', 'mesa', 98000, 'suvs', 1),
('Mesa OR', 'mesa3', 75000, 'offroad', 2),
('Minivan', 'minivan', 100000, 'vans', 14),
('Minivan2', 'minivan2', 130000, 'vans', 15),
('Monroe', 'monroe', 84000, 'sportsclassics', 15),
('Moon Beam', 'moonbeam', 150000, 'muscle', 15),
('Neon', 'neon', 150000, 'sports', 5),
('Nero', 'nero', 2500000, 'super', 5),
('Nightblade', 'nightblade', 25000, 'motorcycles', 5),
('Night Shade', 'nightshade', 72300, 'muscle', 10),
('Ninef', 'ninef', 63000, 'sports', 10),
('Omnis', 'omnis', 68000, 'sports', 10),
('Oracle S', 'oracle', 82000, 'coupes', 10),
('Oracle', 'oracle2', 87000, 'coupes', 10),
('Osiris', 'osiris', 300000, 'super', 9),
('Panto', 'panto', 22000, 'compacts', 10),
('Pariah', 'pariah', 72200, 'sports', 10),
('Patriot', 'patriot', 70000, 'suvs', 10),
('PCJ', 'pcj', 13500, 'motorcycles', 10),
('Penetrator', 'penetrator', 380000, 'super', 10),
('Penumbra', 'penumbra', 66500, 'sports', 10),
('Peyote', 'peyote', 86500, 'sportsclassics', 10),
('Pfister', 'pfister811', 1304000, 'super', 10),
('Picador', 'picador', 45000, 'muscle', 10),
('Pigalle', 'pigalle', 20000, 'sportsclassics', 10),
('Prairie', 'prairie', 430000, 'compacts', 10),
('Premier', 'premier', 35000, 'sedans', 10),
('Primo', 'primo', 100000, 'sedans', 10),
('Prototipo', 'prototipo', 3000000, 'super', 10),
('Radi', 'radi', 74000, 'suvs', 10),
('Raiden', 'raiden', 68800, 'sports', 10),
('Rancher XL', 'rancherxl', 79000, 'offroad', 10),
('Rapid GT', 'rapidgt', 35000, 'sports', 10),
('Rapidgt Turbo', 'rapidgt2', 82500, 'sports', 10),
('Rapid GTSC', 'rapidgt3', 38000, 'sportsclassics', 10),
('raptor', 'raptor', 84000, 'sports', 10),
('Ratloader MS', 'ratloader2', 18000, 'muscle', 10),
('Reaper', 'reaper', 300000, 'super', 10),
('Rebel OR', 'rebel2', 20000, 'offroad', 10),
('Regina', 'regina', 22500, 'sedans', 10),
('Retinue', 'retinue', 78000, 'sportsclassics', 10),
('Revolter', 'revolter', 200000, 'sports', 10),
('Rhapsody', 'rhapsody', 30000, 'compacts', 10),
('Mustang', 'rmodmustang', 1950000, 'import', 1),
('Rocoto', 'rocoto', 110000, 'suvs', 10),
('Ruffian', 'ruffian', 10000, 'motorcycles', 10),
('Ruiner', 'ruiner', 54000, 'muscle', 10),
('Rumpo VN', 'rumpo3', 250000, 'vans', 10),
('ruston', 'ruston', 93200, 'sports', 10),
('Sabre GT', 'sabregt', 87000, 'muscle', 10),
('Sadler', 'sadler', 169000, 'suvs', 10),
('Sanchez', 'sanchez2', 15000, 'motorcycles', 10),
('Savestra', 'savestra', 85000, 'sportsclassics', 10),
('SCL', 'sc1', 100000, 'super', 10),
('Schafter SD', 'schafter2', 45000, 'sedans', 10),
('Schafter ST', 'schafter3', 40000, 'sports', 10),
('Schwarzer', 'schwarzer', 65350, 'sports', 10),
('Seminole', 'seminole', 97000, 'suvs', 10),
('sentinel', 'sentinel', 100000, 'coupes', 10),
('Serrano', 'serrano', 78000, 'suvs', 10),
('Seven 70', 'seven70', 93000, 'sports', 10),
('Sheava', 'sheava', 250000, 'super', 10),
('Slam Van', 'slamvan', 80000, 'muscle', 10),
('Specter', 'specter', 88750, 'sports', 10),
('Speedo', 'speedo', 230000, 'vans', 10),
('stalion', 'stalion', 42000, 'muscle', 10),
('Stanier', 'stanier', 40000, 'sedans', 10),
('Stinger', 'stinger', 76000, 'sportsclassics', 10),
('Stratum', 'stratum', 63000, 'sedans', 10),
('Streiter', 'streiter', 120000, 'sports', 10),
('Stretch', 'stretch', 1300000, 'sedans', 10),
('Stromberg', 'stromberg', 77000, 'sportsclassics', 10),
('Sultan', 'sultan', 54642, 'sports', 10),
('sultanrs', 'sultanrs', 95000, 'super', 10),
('Superd', 'superd', 42000, 'sedans', 10),
('Surano', 'surano', 71350, 'sports', 10),
('Surge', 'surge', 30000, 'sedans', 10),
('T20', 't20', 2800000, 'super', 10),
('Tailgater', 'tailgater', 86000, 'sedans', 10),
('Tampa GT', 'tampa', 90000, 'muscle', 10),
('Tampa ST', 'tampa2', 43500, 'sports', 10),
('Tempesta', 'tempesta', 900000, 'super', 10),
('Torero', 'torero', 79000, 'sportsclassics', 10),
('Tornado', 'tornado', 68000, 'sportsclassics', 10),
('Tropos', 'tropos', 95000, 'sports', 10),
('Toyota Supra', 'tsgr20', 2850000, 'import', 1),
('Turismo SC', 'turismo2', 1200000, 'sportsclassics', 10),
('Turismor', 'turismor', 2200000, 'super', 10),
('Tyrus', 'tyrus', 2300000, 'super', 10),
('Vacca', 'vacca', 800000, 'super', 9),
('Vader', 'vader', 11700, 'motorcycles', 10),
('Vagner', 'vagner', 3500000, 'super', 10),
('Verlierer ST', 'verlierer2', 96000, 'sports', 10),
('Aston Victor', 'victor', 3000000, 'import', 1),
('Vigero', 'vigero', 78000, 'muscle', 10),
('Virgo', 'virgo', 75000, 'muscle', 10),
('Viseris', 'viseris', 200000, 'sportsclassics', 10),
('Visione', 'visione', 2250000, 'super', 10),
('Voltic', 'voltic', 100000, 'super', 10),
('Voodoo', 'voodoo', 150000, 'muscle', 10),
('Vortex', 'vortex', 13356, 'motorcycles', 10),
('Warrener', 'warrener', 64000, 'sedans', 10),
('Washington', 'washington', 25000, 'sedans', 10),
('Windsor', 'windsor', 500000, 'coupes', 10),
('windsor S', 'windsor2', 550000, 'coupes', 10),
('Wolfsbane', 'wolfsbane', 27000, 'motorcycles', 10),
('XA21', 'xa21', 2375000, 'super', 10),
('XLS', 'xls', 253000, 'suvs', 10),
('Yosemite', 'yosemite', 475000, 'muscle', 10),
('Youga', 'Youga', 24000, 'vans', 10),
('Youga VN', 'youga2', 300000, 'vans', 10),
('Zentorno', 'zentorno', 725000, 'super', 9),
('zion', 'zion', 75000, 'coupes', 10),
('zion S', 'zion2', 80000, 'coupes', 10),
('Ztype', 'ztype', 200000, 'sportsclassics', 10);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `vehicle_categories`
--

CREATE TABLE `vehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `vehicle_categories`
--

INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
('compacts', 'Kompakty'),
('coupes', 'Coupé'),
('import', 'Import'),
('motorcycles', 'Motory'),
('muscle', 'Muscle'),
('offroad', 'Off Road'),
('sedans', 'Sedany'),
('sports', 'Sportowe'),
('sportsclassics', 'Klasyki Sportowe'),
('super', 'Super'),
('suvs', 'SUVy'),
('vans', 'Van');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `vehicle_sold`
--

CREATE TABLE `vehicle_sold` (
  `client` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `soldby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `whitelist`
--

CREATE TABLE `whitelist` (
  `identifier` varchar(46) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `addon_account`
--
ALTER TABLE `addon_account`
  ADD PRIMARY KEY (`name`);

--
-- Indeksy dla tabeli `addon_account_data`
--
ALTER TABLE `addon_account_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`),
  ADD KEY `index_addon_account_data_account_name` (`account_name`);

--
-- Indeksy dla tabeli `banking`
--
ALTER TABLE `banking`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `czmdt_faktury`
--
ALTER TABLE `czmdt_faktury`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `czmdt_notatki`
--
ALTER TABLE `czmdt_notatki`
  ADD PRIMARY KEY (`id`),
  ADD KEY `identifier` (`identifier`);

--
-- Indeksy dla tabeli `czmdt_ogloszenia`
--
ALTER TABLE `czmdt_ogloszenia`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `czmdt_raporty`
--
ALTER TABLE `czmdt_raporty`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `datastore`
--
ALTER TABLE `datastore`
  ADD PRIMARY KEY (`name`);

--
-- Indeksy dla tabeli `datastore_data`
--
ALTER TABLE `datastore_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_datastore_data_name_owner` (`name`,`owner`),
  ADD KEY `index_datastore_data_name` (`name`);

--
-- Indeksy dla tabeli `dojmdt_judgments`
--
ALTER TABLE `dojmdt_judgments`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `dojmdt_kartoteka_notatki`
--
ALTER TABLE `dojmdt_kartoteka_notatki`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `dojmdt_notatki`
--
ALTER TABLE `dojmdt_notatki`
  ADD PRIMARY KEY (`id`),
  ADD KEY `identifier` (`identifier`);

--
-- Indeksy dla tabeli `dojmdt_ogloszenia`
--
ALTER TABLE `dojmdt_ogloszenia`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `dojmdt_poszukiwani`
--
ALTER TABLE `dojmdt_poszukiwani`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `dojmdt_raporty`
--
ALTER TABLE `dojmdt_raporty`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `emsmdt_faktury`
--
ALTER TABLE `emsmdt_faktury`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `emsmdt_kartoteka_notatki`
--
ALTER TABLE `emsmdt_kartoteka_notatki`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `emsmdt_notatki`
--
ALTER TABLE `emsmdt_notatki`
  ADD PRIMARY KEY (`id`),
  ADD KEY `identifier` (`identifier`);

--
-- Indeksy dla tabeli `emsmdt_ogloszenia`
--
ALTER TABLE `emsmdt_ogloszenia`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `emsmdt_raporty`
--
ALTER TABLE `emsmdt_raporty`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `evidence_storage`
--
ALTER TABLE `evidence_storage`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `impound_garage`
--
ALTER TABLE `impound_garage`
  ADD PRIMARY KEY (`garage`) USING BTREE;

--
-- Indeksy dla tabeli `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`name`);

--
-- Indeksy dla tabeli `job_grades`
--
ALTER TABLE `job_grades`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`type`);

--
-- Indeksy dla tabeli `lspdmdt_judgments`
--
ALTER TABLE `lspdmdt_judgments`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `lspdmdt_kartoteka_notatki`
--
ALTER TABLE `lspdmdt_kartoteka_notatki`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `lspdmdt_notatki`
--
ALTER TABLE `lspdmdt_notatki`
  ADD PRIMARY KEY (`id`),
  ADD KEY `identifier` (`identifier`);

--
-- Indeksy dla tabeli `lspdmdt_ogloszenia`
--
ALTER TABLE `lspdmdt_ogloszenia`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `lspdmdt_poszukiwani`
--
ALTER TABLE `lspdmdt_poszukiwani`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `lspdmdt_raporty`
--
ALTER TABLE `lspdmdt_raporty`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `many_skills`
--
ALTER TABLE `many_skills`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `multicharacter_slots`
--
ALTER TABLE `multicharacter_slots`
  ADD PRIMARY KEY (`identifier`) USING BTREE,
  ADD KEY `slots` (`slots`) USING BTREE;

--
-- Indeksy dla tabeli `npwd_calls`
--
ALTER TABLE `npwd_calls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `identifier` (`identifier`);

--
-- Indeksy dla tabeli `npwd_crypto_transactions`
--
ALTER TABLE `npwd_crypto_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `npwd_darkchat_channels`
--
ALTER TABLE `npwd_darkchat_channels`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `darkchat_channels_channel_identifier_uindex` (`channel_identifier`) USING BTREE;

--
-- Indeksy dla tabeli `npwd_darkchat_channel_members`
--
ALTER TABLE `npwd_darkchat_channel_members`
  ADD KEY `npwd_darkchat_channel_members_npwd_darkchat_channels_id_fk` (`channel_id`) USING BTREE;

--
-- Indeksy dla tabeli `npwd_darkchat_messages`
--
ALTER TABLE `npwd_darkchat_messages`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `darkchat_messages_darkchat_channels_id_fk` (`channel_id`) USING BTREE;

--
-- Indeksy dla tabeli `npwd_marketplace_listings`
--
ALTER TABLE `npwd_marketplace_listings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `identifier` (`identifier`);

--
-- Indeksy dla tabeli `npwd_match_profiles`
--
ALTER TABLE `npwd_match_profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `identifier_UNIQUE` (`identifier`);

--
-- Indeksy dla tabeli `npwd_match_views`
--
ALTER TABLE `npwd_match_views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `match_profile_idx` (`profile`),
  ADD KEY `identifier` (`identifier`);

--
-- Indeksy dla tabeli `npwd_messages`
--
ALTER TABLE `npwd_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_identifier` (`user_identifier`);

--
-- Indeksy dla tabeli `npwd_messages_conversations`
--
ALTER TABLE `npwd_messages_conversations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeksy dla tabeli `npwd_messages_participants`
--
ALTER TABLE `npwd_messages_participants`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `message_participants_npwd_messages_conversations_id_fk` (`conversation_id`) USING BTREE;

--
-- Indeksy dla tabeli `npwd_notes`
--
ALTER TABLE `npwd_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `identifier` (`identifier`);

--
-- Indeksy dla tabeli `npwd_phone_contacts`
--
ALTER TABLE `npwd_phone_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `identifier` (`identifier`);

--
-- Indeksy dla tabeli `npwd_phone_gallery`
--
ALTER TABLE `npwd_phone_gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `identifier` (`identifier`);

--
-- Indeksy dla tabeli `npwd_twitter_likes`
--
ALTER TABLE `npwd_twitter_likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_combination` (`profile_id`,`tweet_id`),
  ADD KEY `profile_idx` (`profile_id`),
  ADD KEY `tweet_idx` (`tweet_id`);

--
-- Indeksy dla tabeli `npwd_twitter_profiles`
--
ALTER TABLE `npwd_twitter_profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `profile_name_UNIQUE` (`profile_name`),
  ADD KEY `identifier` (`identifier`);

--
-- Indeksy dla tabeli `npwd_twitter_reports`
--
ALTER TABLE `npwd_twitter_reports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_combination` (`profile_id`,`tweet_id`),
  ADD KEY `profile_idx` (`profile_id`),
  ADD KEY `tweet_idx` (`tweet_id`);

--
-- Indeksy dla tabeli `npwd_twitter_tweets`
--
ALTER TABLE `npwd_twitter_tweets`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `npwd_twitter_tweets_npwd_twitter_profiles_id_fk` (`profile_id`) USING BTREE;

--
-- Indeksy dla tabeli `outfits`
--
ALTER TABLE `outfits`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indeksy dla tabeli `owned_vehicles`
--
ALTER TABLE `owned_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Indeksy dla tabeli `ox_doorlock`
--
ALTER TABLE `ox_doorlock`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeksy dla tabeli `ox_inventory`
--
ALTER TABLE `ox_inventory`
  ADD UNIQUE KEY `owner` (`owner`,`name`);

--
-- Indeksy dla tabeli `pefcl_accounts`
--
ALTER TABLE `pefcl_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `number` (`number`),
  ADD UNIQUE KEY `number_2` (`number`);

--
-- Indeksy dla tabeli `pefcl_cash`
--
ALTER TABLE `pefcl_cash`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ownerIdentifier` (`ownerIdentifier`),
  ADD UNIQUE KEY `ownerIdentifier_2` (`ownerIdentifier`);

--
-- Indeksy dla tabeli `pefcl_external_accounts`
--
ALTER TABLE `pefcl_external_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pefcl_external_accounts_user_id_number` (`userId`,`number`);

--
-- Indeksy dla tabeli `pefcl_invoices`
--
ALTER TABLE `pefcl_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `pefcl_shared_accounts`
--
ALTER TABLE `pefcl_shared_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accountId` (`accountId`);

--
-- Indeksy dla tabeli `pefcl_transactions`
--
ALTER TABLE `pefcl_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `toAccountId` (`toAccountId`),
  ADD KEY `fromAccountId` (`fromAccountId`);

--
-- Indeksy dla tabeli `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `phone_calls`
--
ALTER TABLE `phone_calls`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `phone_messages`
--
ALTER TABLE `phone_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `radiocar`
--
ALTER TABLE `radiocar`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `radiocar_owned`
--
ALTER TABLE `radiocar_owned`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `rented_vehicles`
--
ALTER TABLE `rented_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Indeksy dla tabeli `r_npwd_sim`
--
ALTER TABLE `r_npwd_sim`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `sprays`
--
ALTER TABLE `sprays`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `storeid`
--
ALTER TABLE `storeid`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `tunerszonemdt_faktury`
--
ALTER TABLE `tunerszonemdt_faktury`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `tunerszonemdt_notatki`
--
ALTER TABLE `tunerszonemdt_notatki`
  ADD PRIMARY KEY (`id`),
  ADD KEY `identifier` (`identifier`);

--
-- Indeksy dla tabeli `tunerszonemdt_ogloszenia`
--
ALTER TABLE `tunerszonemdt_ogloszenia`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `tunerszonemdt_raporty`
--
ALTER TABLE `tunerszonemdt_raporty`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `twitter_accounts`
--
ALTER TABLE `twitter_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeksy dla tabeli `twitter_likes`
--
ALTER TABLE `twitter_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_twitter_likes_twitter_accounts` (`authorId`),
  ADD KEY `FK_twitter_likes_twitter_tweets` (`tweetId`);

--
-- Indeksy dla tabeli `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_twitter_tweets_twitter_accounts` (`authorId`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`identifier`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indeksy dla tabeli `user_contacts`
--
ALTER TABLE `user_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_user_contacts_identifier_name_number` (`identifier`,`name`,`number`);

--
-- Indeksy dla tabeli `user_licenses`
--
ALTER TABLE `user_licenses`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`model`);

--
-- Indeksy dla tabeli `vehicle_categories`
--
ALTER TABLE `vehicle_categories`
  ADD PRIMARY KEY (`name`);

--
-- Indeksy dla tabeli `vehicle_sold`
--
ALTER TABLE `vehicle_sold`
  ADD PRIMARY KEY (`plate`);

--
-- Indeksy dla tabeli `whitelist`
--
ALTER TABLE `whitelist`
  ADD PRIMARY KEY (`identifier`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `addon_account_data`
--
ALTER TABLE `addon_account_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT dla tabeli `banking`
--
ALTER TABLE `banking`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT dla tabeli `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT dla tabeli `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT dla tabeli `czmdt_faktury`
--
ALTER TABLE `czmdt_faktury`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `czmdt_notatki`
--
ALTER TABLE `czmdt_notatki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT dla tabeli `czmdt_ogloszenia`
--
ALTER TABLE `czmdt_ogloszenia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `czmdt_raporty`
--
ALTER TABLE `czmdt_raporty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `datastore_data`
--
ALTER TABLE `datastore_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=547;

--
-- AUTO_INCREMENT dla tabeli `dojmdt_judgments`
--
ALTER TABLE `dojmdt_judgments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `dojmdt_kartoteka_notatki`
--
ALTER TABLE `dojmdt_kartoteka_notatki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `dojmdt_notatki`
--
ALTER TABLE `dojmdt_notatki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT dla tabeli `dojmdt_ogloszenia`
--
ALTER TABLE `dojmdt_ogloszenia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `dojmdt_poszukiwani`
--
ALTER TABLE `dojmdt_poszukiwani`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `dojmdt_raporty`
--
ALTER TABLE `dojmdt_raporty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `emsmdt_faktury`
--
ALTER TABLE `emsmdt_faktury`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `emsmdt_kartoteka_notatki`
--
ALTER TABLE `emsmdt_kartoteka_notatki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `emsmdt_notatki`
--
ALTER TABLE `emsmdt_notatki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT dla tabeli `emsmdt_ogloszenia`
--
ALTER TABLE `emsmdt_ogloszenia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `emsmdt_raporty`
--
ALTER TABLE `emsmdt_raporty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `evidence_storage`
--
ALTER TABLE `evidence_storage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `job_grades`
--
ALTER TABLE `job_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT dla tabeli `lspdmdt_judgments`
--
ALTER TABLE `lspdmdt_judgments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `lspdmdt_kartoteka_notatki`
--
ALTER TABLE `lspdmdt_kartoteka_notatki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `lspdmdt_notatki`
--
ALTER TABLE `lspdmdt_notatki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT dla tabeli `lspdmdt_ogloszenia`
--
ALTER TABLE `lspdmdt_ogloszenia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `lspdmdt_poszukiwani`
--
ALTER TABLE `lspdmdt_poszukiwani`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `lspdmdt_raporty`
--
ALTER TABLE `lspdmdt_raporty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `many_skills`
--
ALTER TABLE `many_skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT dla tabeli `npwd_calls`
--
ALTER TABLE `npwd_calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `npwd_crypto_transactions`
--
ALTER TABLE `npwd_crypto_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT dla tabeli `npwd_darkchat_channels`
--
ALTER TABLE `npwd_darkchat_channels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT dla tabeli `npwd_darkchat_messages`
--
ALTER TABLE `npwd_darkchat_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT dla tabeli `npwd_marketplace_listings`
--
ALTER TABLE `npwd_marketplace_listings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `npwd_match_profiles`
--
ALTER TABLE `npwd_match_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `npwd_match_views`
--
ALTER TABLE `npwd_match_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `npwd_messages`
--
ALTER TABLE `npwd_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT dla tabeli `npwd_messages_conversations`
--
ALTER TABLE `npwd_messages_conversations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT dla tabeli `npwd_messages_participants`
--
ALTER TABLE `npwd_messages_participants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT dla tabeli `npwd_notes`
--
ALTER TABLE `npwd_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `npwd_phone_contacts`
--
ALTER TABLE `npwd_phone_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `npwd_phone_gallery`
--
ALTER TABLE `npwd_phone_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `npwd_twitter_likes`
--
ALTER TABLE `npwd_twitter_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `npwd_twitter_profiles`
--
ALTER TABLE `npwd_twitter_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `npwd_twitter_reports`
--
ALTER TABLE `npwd_twitter_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `npwd_twitter_tweets`
--
ALTER TABLE `npwd_twitter_tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `outfits`
--
ALTER TABLE `outfits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `ox_doorlock`
--
ALTER TABLE `ox_doorlock`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT dla tabeli `pefcl_accounts`
--
ALTER TABLE `pefcl_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT dla tabeli `pefcl_cash`
--
ALTER TABLE `pefcl_cash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `pefcl_external_accounts`
--
ALTER TABLE `pefcl_external_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `pefcl_invoices`
--
ALTER TABLE `pefcl_invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `pefcl_shared_accounts`
--
ALTER TABLE `pefcl_shared_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT dla tabeli `pefcl_transactions`
--
ALTER TABLE `pefcl_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=845;

--
-- AUTO_INCREMENT dla tabeli `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT dla tabeli `phone_calls`
--
ALTER TABLE `phone_calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT dla tabeli `phone_messages`
--
ALTER TABLE `phone_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT dla tabeli `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `radiocar`
--
ALTER TABLE `radiocar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `radiocar_owned`
--
ALTER TABLE `radiocar_owned`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `r_npwd_sim`
--
ALTER TABLE `r_npwd_sim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT dla tabeli `sprays`
--
ALTER TABLE `sprays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT dla tabeli `storeid`
--
ALTER TABLE `storeid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `tunerszonemdt_faktury`
--
ALTER TABLE `tunerszonemdt_faktury`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `tunerszonemdt_notatki`
--
ALTER TABLE `tunerszonemdt_notatki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT dla tabeli `tunerszonemdt_ogloszenia`
--
ALTER TABLE `tunerszonemdt_ogloszenia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `tunerszonemdt_raporty`
--
ALTER TABLE `tunerszonemdt_raporty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `twitter_accounts`
--
ALTER TABLE `twitter_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT dla tabeli `twitter_likes`
--
ALTER TABLE `twitter_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT dla tabeli `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT dla tabeli `user_contacts`
--
ALTER TABLE `user_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `user_licenses`
--
ALTER TABLE `user_licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `npwd_darkchat_channel_members`
--
ALTER TABLE `npwd_darkchat_channel_members`
  ADD CONSTRAINT `npwd_darkchat_channel_members_npwd_darkchat_channels_id_fk` FOREIGN KEY (`channel_id`) REFERENCES `npwd_darkchat_channels` (`id`);

--
-- Ograniczenia dla tabeli `npwd_darkchat_messages`
--
ALTER TABLE `npwd_darkchat_messages`
  ADD CONSTRAINT `darkchat_messages_darkchat_channels_id_fk` FOREIGN KEY (`channel_id`) REFERENCES `npwd_darkchat_channels` (`id`);

--
-- Ograniczenia dla tabeli `npwd_match_views`
--
ALTER TABLE `npwd_match_views`
  ADD CONSTRAINT `match_profile` FOREIGN KEY (`profile`) REFERENCES `npwd_match_profiles` (`id`);

--
-- Ograniczenia dla tabeli `npwd_messages_participants`
--
ALTER TABLE `npwd_messages_participants`
  ADD CONSTRAINT `message_participants_npwd_messages_conversations_id_fk` FOREIGN KEY (`conversation_id`) REFERENCES `npwd_messages_conversations` (`id`);

--
-- Ograniczenia dla tabeli `npwd_twitter_likes`
--
ALTER TABLE `npwd_twitter_likes`
  ADD CONSTRAINT `profile` FOREIGN KEY (`profile_id`) REFERENCES `npwd_twitter_profiles` (`id`),
  ADD CONSTRAINT `tweet` FOREIGN KEY (`tweet_id`) REFERENCES `npwd_twitter_tweets` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `npwd_twitter_reports`
--
ALTER TABLE `npwd_twitter_reports`
  ADD CONSTRAINT `report_profile` FOREIGN KEY (`profile_id`) REFERENCES `npwd_twitter_profiles` (`id`),
  ADD CONSTRAINT `report_tweet` FOREIGN KEY (`tweet_id`) REFERENCES `npwd_twitter_tweets` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `npwd_twitter_tweets`
--
ALTER TABLE `npwd_twitter_tweets`
  ADD CONSTRAINT `npwd_twitter_tweets_npwd_twitter_profiles_id_fk` FOREIGN KEY (`profile_id`) REFERENCES `npwd_twitter_profiles` (`id`);

--
-- Ograniczenia dla tabeli `pefcl_shared_accounts`
--
ALTER TABLE `pefcl_shared_accounts`
  ADD CONSTRAINT `pefcl_shared_accounts_ibfk_1` FOREIGN KEY (`accountId`) REFERENCES `pefcl_accounts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `pefcl_transactions`
--
ALTER TABLE `pefcl_transactions`
  ADD CONSTRAINT `pefcl_transactions_ibfk_1` FOREIGN KEY (`toAccountId`) REFERENCES `pefcl_accounts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `pefcl_transactions_ibfk_2` FOREIGN KEY (`fromAccountId`) REFERENCES `pefcl_accounts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `twitter_likes`
--
ALTER TABLE `twitter_likes`
  ADD CONSTRAINT `FK_twitter_likes_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`),
  ADD CONSTRAINT `FK_twitter_likes_twitter_tweets` FOREIGN KEY (`tweetId`) REFERENCES `twitter_tweets` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  ADD CONSTRAINT `FK_twitter_tweets_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
