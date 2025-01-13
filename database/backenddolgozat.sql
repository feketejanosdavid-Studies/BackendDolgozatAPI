-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Jan 13. 18:21
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `backenddolgozat`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `director` varchar(255) DEFAULT NULL,
  `genre` varchar(50) DEFAULT NULL,
  `release_year` int(11) DEFAULT NULL,
  `poster` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `movies`
--

INSERT INTO `movies` (`id`, `title`, `director`, `genre`, `release_year`, `poster`) VALUES
(2040, 'The Hidden World', 'Unknown', 'Italian', 1926, 'https://picsum.photos/seed/8025/150'),
(3109, 'The Hidden World', 'Unknown', 'Italian', 2007, 'https://picsum.photos/seed/2620/150'),
(3293, 'The Hidden World', 'Unknown', 'Fantasy', 2001, 'https://picsum.photos/seed/3081/150'),
(3521, 'Journey to the Stars', 'Unknown', 'Fantasy', 1986, 'https://picsum.photos/seed/3641/150'),
(4139, 'A New Dawn', 'Unknown', 'Fantasy', 1965, 'https://picsum.photos/seed/8561/150'),
(4334, 'Journey to the Stars', 'Unknown', 'Sci-Fi', 1916, 'https://picsum.photos/seed/2046/150'),
(4428, 'The Hidden World', 'Unknown', 'Fantasy', 1911, 'https://picsum.photos/seed/4886/150'),
(4449, 'The Hidden World', 'Unknown', 'Chinese', 1979, 'https://picsum.photos/seed/1879/150'),
(4728, 'The Hidden World', 'Unknown', 'Italian', 1913, 'https://picsum.photos/seed/7455/150'),
(4947, 'Journey to the Stars', 'Unknown', 'Sci-Fi', 1959, 'https://picsum.photos/seed/1313/150'),
(4986, 'Journey to the Stars', 'Unknown', 'Chinese', 1949, 'https://picsum.photos/seed/8429/150'),
(5991, 'Journey to the Stars', 'Unknown', 'Chinese', 1971, 'https://picsum.photos/seed/3991/150'),
(6327, 'A New Dawn', 'Unknown', 'Romance', 1941, 'https://picsum.photos/seed/3459/150'),
(6452, 'A New Dawn', 'Unknown', 'Romance', 1907, 'https://picsum.photos/seed/7052/150'),
(7022, 'Journey to the Stars', 'Unknown', 'Fantasy', 1923, 'https://picsum.photos/seed/5420/150'),
(7190, 'Journey to the Stars', 'Unknown', 'Chinese', 1971, 'https://picsum.photos/seed/1045/150'),
(7316, 'A New Dawn', 'Unknown', 'Italian', 2014, 'https://picsum.photos/seed/3087/150'),
(7859, 'A New Dawn', 'Unknown', 'Italian', 1911, 'https://picsum.photos/seed/6544/150'),
(8345, 'A New Dawn', 'Unknown', 'Sci-Fi', 1983, 'https://picsum.photos/seed/4529/150'),
(8349, 'Unknown', 'Unknown', 'Unknown', NULL, NULL),
(8350, 'Teszt3', 'Jani', 'IT', 2025, 'https://picsum.photos/seed/4529/150');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8351;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
