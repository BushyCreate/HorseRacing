-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 01 dec 2025 om 09:33
-- Serverversie: 10.4.32-MariaDB
-- PHP-versie: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `horse_racing`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `horse_info`
--

CREATE TABLE `horse_info` (
  `name` varchar(255) DEFAULT NULL,
  `color` enum('White','Black','Brown') DEFAULT NULL,
  `lvl` int(11) DEFAULT NULL,
  `xp` int(11) DEFAULT NULL,
  `speed` int(11) DEFAULT NULL,
  `iq` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `horse_info`
--

INSERT INTO `horse_info` (`name`, `color`, `lvl`, `xp`, `speed`, `iq`) VALUES
('PH', 'White', 56, 1, 1, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `invent`
--

CREATE TABLE `invent` (
  `grass` int(11) DEFAULT NULL,
  `hay` int(11) DEFAULT NULL,
  `apple` int(11) DEFAULT NULL,
  `carrot` int(11) DEFAULT NULL,
  `goldGrass` int(11) DEFAULT NULL,
  `money` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `invent`
--

INSERT INTO `invent` (`grass`, `hay`, `apple`, `carrot`, `goldGrass`, `money`) VALUES
(0, 0, 0, 0, 0, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
