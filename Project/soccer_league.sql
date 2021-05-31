-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2021 at 04:56 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `soccer_league`
--

-- --------------------------------------------------------

--
-- Table structure for table `coach`
--

CREATE TABLE `coach` (
  `id_coach` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coach`
--

INSERT INTO `coach` (`id_coach`, `first_name`, `last_name`, `country`, `age`) VALUES
(1, 'Jose', 'Mourinho', 'Portugal', 55),
(2, 'Pep', 'Guardiola', 'Spain', 48),
(3, 'Jurgen', 'Klopp', 'Germany', 51),
(4, 'Joachim', 'Lowe', 'Germany', 54),
(5, 'David ', 'Moyes', 'Scotland', 56),
(6, 'Erik', 'Ten Hagg', 'Netherlands', 45),
(7, 'Mauricio', 'Pochettino', 'Argentina', 42),
(8, 'Carlo', 'Ancelotti', 'Italy', 67),
(9, 'Andrea', 'Pirlo', 'Italy', 41),
(10, 'Rudi', 'Garcia', 'France', 57),
(11, 'Besnik', 'Hasi', 'Albania', 49),
(12, 'Felix', 'Magath', 'Germany', 67),
(13, 'Graham', 'Potter', 'England', 44),
(14, 'Ryan', 'Mason', 'England', 30),
(15, 'Raul', 'Gonzalez', 'Spain', 40);

-- --------------------------------------------------------

--
-- Table structure for table `coach_team`
--

CREATE TABLE `coach_team` (
  `id_team` smallint(6) NOT NULL,
  `id_coach` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coach_team`
--

INSERT INTO `coach_team` (`id_team`, `id_coach`, `start_date`, `end_date`, `salary`) VALUES
(2, 2, '2021-01-05', '2023-11-08', 30000),
(3, 3, '2019-02-15', '2022-07-01', 22000),
(12, 4, '2017-11-23', '2024-06-28', 17000),
(5, 5, '2018-09-01', '2021-04-14', 14000),
(10, 6, '2017-07-05', '2022-06-09', 15500),
(8, 7, '2021-01-06', '2023-06-30', 25000),
(1, 8, '2016-05-04', '2022-03-10', 20000),
(9, 9, '2017-07-28', '2023-05-31', 17000),
(4, 10, '2017-04-12', '2022-05-13', 14500),
(11, 11, '2018-02-11', '2021-07-03', 10500),
(6, 12, '2021-02-11', '2022-06-30', 15500),
(6, 13, '2018-01-24', '2021-02-11', 14000),
(5, 14, '2021-04-14', '2023-07-14', 12000),
(7, 15, '2020-10-05', '2023-05-17', 11500);

-- --------------------------------------------------------

--
-- Table structure for table `matches`
--

CREATE TABLE `matches` (
  `id_match` smallint(6) NOT NULL,
  `id_home` smallint(6) NOT NULL,
  `id_away` smallint(6) NOT NULL,
  `id_stadium` smallint(6) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `attendance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matches`
--

INSERT INTO `matches` (`id_match`, `id_home`, `id_away`, `id_stadium`, `date_time`, `attendance`) VALUES
(1, 1, 2, 1, '2018-11-03 09:30:00', 69454),
(2, 3, 4, 3, '2018-11-03 11:00:00', 59470),
(3, 5, 6, 5, '2018-11-03 13:30:00', 13126),
(4, 7, 8, 7, '2018-11-04 09:30:00', 32804),
(5, 9, 10, 9, '2018-11-04 11:00:00', 38592),
(6, 11, 12, 11, '2018-11-04 13:30:00', 30800),
(7, 2, 4, 2, '2018-11-10 09:30:00', 85623),
(8, 3, 1, 3, '2018-11-10 11:00:00', 40087),
(9, 6, 8, 6, '2018-11-10 13:30:00', 28975),
(10, 7, 5, 7, '2018-11-11 09:30:00', 31047),
(11, 10, 12, 10, '2018-11-11 11:00:00', 44144),
(12, 11, 9, 11, '2018-11-11 13:30:00', 26789),
(13, 4, 1, 4, '2018-11-17 09:30:00', 25639),
(14, 2, 3, 2, '2018-11-17 11:00:00', 77548),
(15, 8, 5, 8, '2018-11-17 13:30:00', 40065),
(16, 6, 7, 6, '2018-11-18 09:30:00', 27895),
(17, 12, 9, 12, '2018-11-18 11:00:00', 42369),
(18, 10, 11, 10, '2018-11-18 13:30:00', 21085),
(19, 1, 6, 1, '2018-11-24 09:30:00', 78502),
(20, 4, 11, 4, '2018-11-24 11:00:00', 52104),
(21, 5, 10, 5, '2018-11-24 13:30:00', 13126),
(22, 8, 3, 8, '2018-11-25 09:30:00', 44987),
(23, 9, 7, 9, '2018-11-25 11:00:00', 40071),
(24, 12, 2, 12, '2018-11-25 13:30:00', 38565);

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id_player` smallint(6) NOT NULL,
  `first_name` varchar(15) DEFAULT NULL,
  `last_name` varchar(15) NOT NULL,
  `kit` smallint(6) NOT NULL CHECK (`kit` between 1 and 99),
  `position` varchar(10) NOT NULL,
  `country` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id_player`, `first_name`, `last_name`, `kit`, `position`, `country`) VALUES
(1, 'Fredrik', 'Ivaansson', 21, 'Goalkeeper', 'Sweden'),
(2, 'Marcus', 'White-Dansson', 22, 'Defender', 'Scotland'),
(3, 'Matias', 'Ismisson', 77, 'Defender', 'Sweden'),
(4, 'Kalle', 'Kroll', 8, 'Defender', 'Finland'),
(5, 'Rune', 'Shermany', 14, 'Defender', 'Iceland'),
(6, 'Sven', 'Havensson', 6, 'Defender', 'Norway'),
(7, 'Petr', 'Groshkov', 60, 'Midfielder', 'Russia'),
(8, 'Lars', 'Jaaskalainen', 15, 'Midfielder', 'Finland'),
(9, 'Piter', 'Flash', 3, 'Midfielder', 'Scotland'),
(10, 'Max', 'Twister', 18, 'Forward', 'England'),
(11, 'Oliver', 'Fox', 24, 'Forward', 'England'),
(12, 'Anders', 'Valdez', 33, 'Goalkeeper', 'Paraguay'),
(13, 'Romanos', 'Ravar', 13, 'Defender', 'Argentina'),
(14, 'Lopez', 'Annabe', 2, 'Defender', 'Mexico'),
(15, 'Fabio', 'Ariel', 3, 'Defender', 'Argentina'),
(16, 'Roque', 'Riveros', 5, 'Defender', 'Paraguay'),
(17, 'Xivinho', 'Torres', 7, 'Midfielder', 'Brazil'),
(18, 'Karim', 'Khariri', 19, 'Midfielder', 'Lebanon'),
(19, 'Rustu', 'Bruker', 27, 'Midfielder', 'Turkey'),
(20, 'Ali', 'Jakaloah', 26, 'Midfielder', 'Qatar'),
(21, 'Robert', 'Wiik', 30, 'Midfielder', 'Netherlands'),
(22, 'Pascal', 'Rafael', 17, 'Forward', 'Netherlands'),
(23, 'Jens', 'Zwaanswijk', 1, 'Goalkeeper', 'Netherlands'),
(24, 'Xavier', 'van Vaquer', 2, 'Defender', 'Netherlands'),
(25, 'Mattias', 'van der Schaaf', 3, 'Defender', 'Netherlands'),
(26, 'Eaat', 'van Dessert', 4, 'Defender', 'Netherlands'),
(27, 'Olaf', 'Neigel-Forsell', 5, 'Defender', 'England'),
(28, 'Pascal', 'Geneve', 6, 'Defender', 'Australia'),
(29, 'William', 'Gimirre', 7, 'Midfielder', 'France'),
(30, 'Roger', 'Figeneger', 8, 'Midfielder', 'Germany'),
(31, 'Oliver', 'Raisenmann', 9, 'Midfielder', 'Germany'),
(32, 'Hazel', 'Dexter', 10, 'Midfielder', 'Germany'),
(33, 'Michael', 'Konah', 11, 'Forward', 'Germany'),
(34, 'Patrick', 'Havhalon', 14, 'Goalkeeper', 'France'),
(35, 'Jurgen', 'Connor', 2, 'Defender', 'Belgium'),
(36, 'Pablo', 'Lucke', 5, 'Defender', 'Lichtenstein'),
(37, 'Daniel', 'Otto', 3, 'Defender', 'Australia'),
(38, 'Marini', 'Feloni', 6, 'Midfielder', 'Italy'),
(39, 'Thomas', 'Canaveri', 13, 'Midfielder', 'Italy'),
(40, 'Omar', 'McSir', 31, 'Midfielder', 'Wales'),
(41, 'Samuel', 'Marakua', 9, 'Midfielder', 'Cameroon'),
(42, 'Javier', 'Pivil', 10, 'Midfielder', 'Argentina'),
(43, 'Carles', 'Fernando', 8, 'Forward', 'Spain'),
(44, 'Santos', 'Squezze', 21, 'Forward', 'Brazil'),
(45, 'Victor', 'Maestro', 1, 'Goalkeeper', 'Italy'),
(46, 'Torres', 'Kataldo', 12, 'Defender', 'Spain'),
(47, 'Igor', 'Ftorelnik', 4, 'Defender', 'Slovakia'),
(48, 'Alvaro', 'Timonte', 14, 'Defender', 'Mexico'),
(49, 'Joachim', 'Quersi', 17, 'Midfielder', 'Argentina'),
(50, 'Pavlodar', 'Milichenko', 6, 'Midfielder', 'Ukraine'),
(51, 'Otabek', 'Ohmetov', 18, 'Midfielder', 'Uzbekistan'),
(52, 'Radomir', 'Contofalsky', 16, 'Midfielder', 'Bosnia and Herzegovina'),
(53, 'Igor', 'Karashevich', 26, 'Forward', 'Russia'),
(54, 'Timor', 'Romanović', 19, 'Forward', 'Serbia'),
(55, 'Zoran', 'Królović', 13, 'Forward', 'Croatia'),
(56, 'Brian', 'Rookie', 28, 'Goalkeeper', 'USA'),
(57, 'George', 'Stanley', 14, 'Defender', 'Canada'),
(58, 'Usain', 'Neon', 17, 'Defender', 'Jamaica'),
(59, 'Aaron', 'Obika', 2, 'Defender', 'South Africa'),
(60, 'Donald', 'Moot', 6, 'Defender', 'Bahamas'),
(61, 'Asafa', 'Moot', 3, 'Midfielder', 'Bahamas'),
(62, 'Umbaba', 'Quakuani', 8, 'Midfielder', 'South Africa'),
(63, 'Joel', 'Katakui', 21, 'Midfielder', 'Cameroon'),
(64, 'Ji', 'Tae-Choi', 10, 'Midfielder', 'North Korea'),
(65, 'Lee', 'Xiang-Mi', 37, 'Midfielder', 'South Korea'),
(66, 'Haku', 'Neliong', 11, 'Forward', 'Japan'),
(67, 'Felicjan', 'Sprężyna', 31, 'Goalkeeper', 'Poland'),
(68, 'Stanisław', 'Piątek', 11, 'Defender', 'Poland'),
(69, 'Marek', 'Wojciechowski', 4, 'Defender', 'Poland'),
(70, 'Piotr', 'Piątek', 12, 'Defender', 'Poland'),
(71, 'Stefan', 'Ochola', 6, 'Defender', 'Slovakia'),
(72, 'Sandor', 'Hosok', 13, 'Midfielder', 'Hungary'),
(73, 'Filip', 'Mazowiecki', 10, 'Midfielder', 'Poland'),
(74, 'Łukasz', 'Dyniarski', 8, 'Midfielder', 'Poland'),
(75, 'Adam', 'Warcholek', 7, 'Midfielder', 'Czech Republic'),
(76, 'Piotr', 'Siwobrody', 9, 'Forward', 'Poland'),
(77, 'Wojciech', 'Krauze', 16, 'Forward', 'Poland'),
(78, 'Ma', 'Peng', 1, 'Goalkeeper', 'China'),
(79, 'John', 'Spiker', 7, 'Defender', 'New Zeland'),
(80, 'Kim', 'Chol-Guk', 3, 'Defender', 'South Korea'),
(81, 'Ahito', 'Akubo', 15, 'Defender', 'Japan'),
(82, 'Lee', 'Zang', 6, 'Defender', 'China'),
(83, 'Tony', 'Juaba', 9, 'Midfielder', 'South Africa'),
(84, 'Viktor', 'Sohovenko', 17, 'Midfielder', 'Ukraine'),
(85, 'Viktoras', 'Marciulaitis', 14, 'Midfielder', 'Lithuania'),
(86, 'George', 'Brown', 8, 'Midfielder', 'England'),
(87, 'Oscar', 'Stewart', 22, 'Forward', 'Scotland'),
(88, 'Luke', 'Brown', 36, 'Forward', 'England'),
(89, 'Kostakis', 'Papadopoulos', 17, 'Goalkeeper', 'Greece'),
(90, 'Makarios', 'Avraamidis', 2, 'Defender', 'Cyprus'),
(91, 'Nektarios', 'Kastanos', 3, 'Defender', 'Cyprus'),
(92, 'Marko', 'Volkov', 16, 'Defender', 'Montenegro'),
(93, 'Aleksandar', 'Stojković', 25, 'Defender', 'Croatia'),
(94, 'Nebojsa', 'Janković', 6, 'Defender', 'Serbia'),
(95, 'Karl', 'Lepistu', 29, 'Midfielder', 'Estonia'),
(96, 'Nikita', 'Subbotin', 19, 'Midfielder', 'Latvia'),
(97, 'Mattias', 'Liivak', 4, 'Midfielder', 'Lithuania'),
(98, 'Stavros', 'Alexandrou', 10, 'Forward', 'Greece'),
(99, 'Ioannis', 'Kyriakou', 7, 'Forward', 'Cyprus'),
(100, 'Stefanos', 'Nikolaidis', 44, 'Goalkeeper', 'Greece'),
(101, 'Petristis', 'Apostolakis', 2, 'Defender', 'Cyprus'),
(102, 'Augustus', 'Verpakovsis', 4, 'Defender', 'Lithuania'),
(103, 'Bert', 'Hooghe', 3, 'Defender', 'Luksemburg'),
(104, 'Maarten', 'Schreijer', 5, 'Defender', 'Netherlands'),
(105, 'Jesse', 'Jansen', 6, 'Defender', 'Germany'),
(106, 'Finn', 'Kuijpers', 16, 'Midfielder', 'Dania'),
(107, 'Bram', 'Nijevelt', 26, 'Midfielder', 'Netherlands'),
(108, 'Johan', 'Schaake', 14, 'Midfielder', 'Germany'),
(109, 'Angelos', 'Glykos', 36, 'Midfielder', 'Cyprus'),
(110, 'Kyriakos', 'Petropoulos', 17, 'Forward', 'Greece'),
(111, 'Tim', 'Aschenbrenner', 99, 'Goalkeeper', 'Germany'),
(112, 'Christian', 'Schrodinger', 25, 'Defender', 'Austria'),
(113, 'Simon', 'Drache', 28, 'Defender', 'Germany'),
(114, 'Georg', 'Schlessinger', 2, 'Defender', 'Austria'),
(115, 'Uwe', 'Zimmermann', 27, 'Defender', 'Belgium'),
(116, 'Detlef', 'Waxman', 14, 'Midfielder', 'Germany'),
(117, 'Włodzimierz', 'Sobieraj', 13, 'Midfielder', 'Poland'),
(118, 'Maciej', 'Koniecpolski', 18, 'Midfielder', 'Poland'),
(119, 'Jan', 'Zaśniegóra', 9, 'Forward', 'Poland'),
(120, 'Paweł', 'Chapko', 34, 'Forward', 'Poland'),
(121, 'Andrij', 'Berezowchuk', 3, 'Forward', 'Belarus'),
(122, 'Przemysław', 'Piekoś', 12, 'Goalkeeper', 'Poland'),
(123, 'Michał', 'Batory', 16, 'Defender', 'Poland'),
(124, 'Noah', 'Bishop', 15, 'Defender', 'USA'),
(125, 'Marco', 'Nucci', 19, 'Defender', 'Italy'),
(126, 'Beniamino', 'Lucciano', 18, 'Defender', 'Italy'),
(127, 'Livio', 'Fanucci', 7, 'Midfielder', 'Italy'),
(128, 'Russell', 'Lewis', 6, 'Midfielder', 'Canada'),
(129, 'Ruslan', 'Hladky', 21, 'Midfielder', 'Belarus'),
(130, 'Piotr', 'Przybyło', 27, 'Forward', 'Poland'),
(131, 'Nikolay', 'Kirilov', 28, 'Forward', 'Russia'),
(132, 'Petr', 'Stavorogin', 41, 'Forward', 'Russia');

-- --------------------------------------------------------

--
-- Table structure for table `player_team`
--

CREATE TABLE `player_team` (
  `id_player` smallint(6) NOT NULL,
  `id_team` smallint(6) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `player_team`
--

INSERT INTO `player_team` (`id_player`, `id_team`, `start_date`, `end_date`, `salary`) VALUES
(1, 1, '2017-12-25', '2020-04-24', 20563),
(2, 1, '2018-05-17', '2021-01-06', 28283),
(3, 1, '2018-06-06', '2019-01-18', 7531),
(4, 1, '2018-06-29', '2020-08-15', 28823),
(5, 1, '2017-11-19', '2019-10-10', 12570),
(6, 1, '2018-05-17', '2020-03-10', 27383),
(7, 1, '2017-11-17', '2020-04-04', 31343),
(8, 1, '2018-02-15', '2019-08-28', 8181),
(9, 1, '2017-11-22', '2020-03-22', 28227),
(10, 1, '2017-08-16', '2018-10-11', 7330),
(11, 1, '2018-01-15', '2019-07-16', 14316),
(12, 2, '2017-12-10', '2018-10-06', 27419),
(13, 2, '2017-08-15', '2019-01-10', 17062),
(14, 2, '2018-06-29', '2020-10-10', 34708),
(15, 2, '2017-09-29', '2018-08-10', 16090),
(16, 2, '2017-09-14', '2021-04-01', 30136),
(17, 2, '2018-01-17', '2018-07-21', 6515),
(18, 2, '2018-05-28', '2019-03-25', 17565),
(19, 2, '2017-12-28', '2018-06-11', 9370),
(20, 2, '2017-11-25', '2019-11-27', 15334),
(21, 2, '2017-09-21', '2017-12-12', 23813),
(22, 2, '2018-07-03', '2022-04-26', 31087),
(23, 3, '2018-01-01', '2021-04-10', 24096),
(24, 3, '2018-04-03', '2021-02-24', 18356),
(25, 3, '2017-07-20', '2021-03-19', 17930),
(26, 3, '2017-12-02', '2020-11-09', 18813),
(27, 3, '2017-08-06', '2017-12-26', 11014),
(28, 3, '2018-03-27', '2022-01-08', 23218),
(29, 3, '2017-09-12', '2018-04-20', 10143),
(30, 3, '2017-12-01', '2019-12-10', 14574),
(31, 3, '2017-07-30', '2019-04-13', 32075),
(32, 3, '2017-09-27', '2019-07-26', 22593),
(33, 3, '2018-01-30', '2018-04-07', 21475),
(34, 4, '2018-02-16', '2019-08-30', 8035),
(35, 4, '2017-11-12', '2019-09-22', 12987),
(36, 4, '2018-06-21', '2021-12-19', 22099),
(37, 4, '2017-09-24', '2019-05-26', 17334),
(38, 4, '2018-05-02', '2021-06-17', 20096),
(39, 4, '2017-09-02', '2018-12-31', 9697),
(40, 4, '2018-04-25', '2020-02-24', 33169),
(41, 4, '2017-10-29', '2020-11-25', 31829),
(42, 4, '2017-09-01', '2018-03-20', 10833),
(43, 4, '2018-01-29', '2018-12-13', 17277),
(44, 4, '2017-11-27', '2020-11-02', 19746),
(45, 5, '2017-10-06', '2020-12-30', 13236),
(46, 5, '2018-06-25', '2022-02-07', 25787),
(47, 5, '2018-04-10', '2020-11-17', 5668),
(48, 5, '2017-08-28', '2020-06-26', 7192),
(49, 5, '2017-10-01', '2021-09-22', 12352),
(50, 5, '2017-09-30', '2019-08-19', 23992),
(51, 5, '2018-04-12', '2021-09-13', 5914),
(52, 5, '2018-02-07', '2021-05-16', 15347),
(53, 5, '2017-10-11', '2019-01-16', 28147),
(54, 5, '2018-06-11', '2019-05-10', 17462),
(55, 5, '2017-11-27', '2020-10-07', 17062),
(56, 6, '2018-05-24', '2018-10-28', 33552),
(57, 6, '2017-12-13', '2019-03-22', 13592),
(58, 6, '2017-12-29', '2020-02-10', 11475),
(59, 6, '2018-01-03', '2021-03-17', 21059),
(60, 6, '2017-10-13', '2020-11-01', 34987),
(61, 6, '2018-03-25', '2020-04-30', 20418),
(62, 6, '2018-07-13', '2020-03-18', 8827),
(63, 6, '2017-11-20', '2019-11-06', 14862),
(64, 6, '2017-09-04', '2021-03-04', 30712),
(65, 6, '2018-03-09', '2021-02-14', 25780),
(66, 6, '2017-10-06', '2018-08-07', 13225),
(67, 7, '2018-04-09', '2021-11-01', 11951),
(68, 7, '2017-12-31', '2020-11-10', 9044),
(69, 7, '2018-01-16', '2018-12-04', 20862),
(70, 7, '2018-07-08', '2019-10-20', 24876),
(71, 7, '2017-11-10', '2020-11-15', 26851),
(72, 7, '2017-11-21', '2020-09-12', 16478),
(73, 7, '2018-05-02', '2021-10-24', 33298),
(74, 7, '2017-08-09', '2020-05-10', 9011),
(75, 7, '2018-02-14', '2020-07-18', 11863),
(76, 7, '2017-11-01', '2021-07-24', 25783),
(77, 7, '2018-03-10', '2019-03-08', 12434),
(78, 8, '2018-01-04', '2020-11-19', 8594),
(79, 8, '2017-12-15', '2021-04-28', 31794),
(80, 8, '2018-06-22', '2018-06-30', 11578),
(81, 8, '2017-07-30', '2020-07-03', 17847),
(82, 8, '2018-06-24', '2020-03-19', 15240),
(83, 8, '2017-12-01', '2021-11-16', 27349),
(84, 8, '2018-04-13', '2020-05-23', 16553),
(85, 8, '2017-11-07', '2020-01-08', 25877),
(86, 8, '2018-05-20', '2019-01-16', 13261),
(87, 8, '2018-05-31', '2020-09-18', 12209),
(88, 8, '2017-12-27', '2020-07-20', 28681),
(89, 9, '2017-07-09', '2020-07-02', 24899),
(90, 9, '2017-07-30', '2019-03-02', 27637),
(91, 9, '2018-02-06', '2020-08-28', 18753),
(92, 9, '2017-11-19', '2019-10-26', 14104),
(93, 9, '2017-07-26', '2019-03-30', 31980),
(94, 9, '2017-09-29', '2019-09-20', 27686),
(95, 9, '2017-10-22', '2018-09-11', 11464),
(96, 9, '2017-12-04', '2019-07-27', 29624),
(97, 9, '2018-05-27', '2021-12-19', 30476),
(98, 9, '2018-02-02', '2019-04-11', 28322),
(99, 9, '2018-07-14', '2021-02-18', 12938),
(100, 10, '2017-11-18', '2018-02-10', 10381),
(101, 10, '2018-04-01', '2018-07-18', 11160),
(102, 10, '2018-05-02', '2019-12-05', 22548),
(103, 10, '2018-04-03', '2021-10-19', 12568),
(104, 10, '2018-02-13', '2019-01-24', 16651),
(105, 10, '2017-09-26', '2021-09-11', 12811),
(106, 10, '2017-11-03', '2021-04-21', 15343),
(107, 10, '2017-08-17', '2019-12-18', 21585),
(108, 10, '2017-07-04', '2019-01-24', 32627),
(109, 10, '2017-12-13', '2019-08-03', 27402),
(110, 10, '2018-01-08', '2019-02-17', 31343),
(111, 11, '2018-01-28', '2018-09-07', 7682),
(112, 11, '2018-07-12', '2021-04-03', 18282),
(113, 11, '2017-09-01', '2019-09-01', 5176),
(114, 11, '2018-01-17', '2020-07-09', 20476),
(115, 11, '2018-03-31', '2018-06-19', 8392),
(116, 11, '2017-11-30', '2020-07-26', 8520),
(117, 11, '2018-02-12', '2020-08-11', 15029),
(118, 11, '2018-04-30', '2022-04-22', 22329),
(119, 11, '2018-06-08', '2021-07-18', 10569),
(120, 11, '2018-02-11', '2019-09-28', 12689),
(121, 11, '2017-07-24', '2019-09-12', 19767),
(122, 12, '2018-05-22', '2021-08-10', 18790),
(123, 12, '2018-05-31', '2018-07-06', 19514),
(124, 12, '2017-11-08', '2018-11-29', 13833),
(125, 12, '2018-03-15', '2020-03-21', 19780),
(126, 12, '2018-06-26', '2019-07-13', 18986),
(127, 12, '2018-01-24', '2019-05-14', 34834),
(128, 12, '2018-07-14', '2022-06-30', 34172),
(129, 12, '2018-06-03', '2020-07-03', 33313),
(130, 12, '2017-08-28', '2021-06-04', 12465),
(131, 12, '2017-12-06', '2019-04-08', 17757),
(132, 12, '2017-08-16', '2018-12-16', 14097);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id_match` smallint(6) NOT NULL,
  `home` smallint(6) NOT NULL CHECK (`home` >= 0),
  `away` smallint(6) NOT NULL CHECK (`away` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id_match`, `home`, `away`) VALUES
(1, 4, 1),
(2, 1, 2),
(3, 1, 1),
(4, 3, 3),
(5, 2, 0),
(6, 1, 1),
(7, 2, 0),
(8, 0, 3),
(9, 0, 3),
(10, 4, 0),
(11, 1, 1),
(12, 2, 2),
(13, 0, 3),
(14, 2, 0),
(15, 3, 1),
(16, 0, 5),
(17, 0, 0),
(18, 0, 1),
(19, 3, 0),
(20, 0, 2),
(21, 0, 0),
(22, 3, 0),
(23, 2, 5),
(24, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE `scores` (
  `id_score` smallint(6) NOT NULL,
  `id_match` smallint(6) NOT NULL,
  `id_team` smallint(6) NOT NULL,
  `id_player` smallint(6) NOT NULL,
  `goals` smallint(6) NOT NULL CHECK (`goals` >= 0),
  `assists` smallint(6) NOT NULL CHECK (`assists` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `scores`
--

INSERT INTO `scores` (`id_score`, `id_match`, `id_team`, `id_player`, `goals`, `assists`) VALUES
(1, 1, 1, 7, 0, 1),
(2, 1, 1, 9, 1, 2),
(3, 1, 1, 10, 1, 0),
(4, 1, 1, 11, 2, 1),
(5, 1, 2, 18, 0, 1),
(6, 1, 2, 22, 1, 0),
(7, 2, 3, 31, 0, 1),
(8, 2, 3, 33, 1, 0),
(9, 2, 4, 40, 0, 1),
(10, 2, 4, 41, 0, 1),
(11, 2, 4, 43, 1, 0),
(12, 2, 4, 44, 1, 0),
(13, 3, 5, 50, 0, 1),
(14, 3, 5, 55, 1, 0),
(15, 3, 6, 61, 0, 1),
(16, 3, 6, 66, 1, 0),
(17, 4, 7, 74, 0, 1),
(18, 4, 7, 75, 0, 1),
(19, 4, 7, 76, 1, 1),
(20, 4, 7, 77, 2, 0),
(21, 4, 8, 82, 0, 1),
(22, 4, 8, 84, 0, 1),
(23, 4, 8, 85, 0, 1),
(24, 4, 8, 86, 1, 0),
(25, 4, 8, 87, 1, 0),
(26, 4, 8, 88, 1, 0),
(27, 5, 9, 96, 0, 1),
(28, 5, 9, 97, 0, 1),
(29, 5, 9, 99, 2, 0),
(30, 6, 11, 118, 0, 1),
(31, 6, 11, 120, 1, 0),
(32, 6, 12, 131, 1, 0),
(33, 7, 2, 18, 0, 1),
(34, 7, 2, 19, 0, 1),
(35, 7, 2, 22, 2, 0),
(36, 8, 1, 6, 0, 1),
(37, 8, 1, 7, 0, 2),
(38, 8, 1, 9, 1, 0),
(39, 8, 1, 10, 1, 0),
(40, 8, 1, 11, 1, 0),
(41, 9, 8, 85, 0, 1),
(42, 9, 8, 86, 1, 1),
(43, 9, 8, 87, 2, 1),
(44, 10, 7, 74, 0, 2),
(45, 10, 7, 75, 0, 1),
(46, 10, 7, 76, 2, 1),
(47, 10, 7, 77, 2, 0),
(48, 11, 10, 109, 1, 0),
(49, 11, 10, 110, 0, 1),
(50, 11, 12, 132, 1, 0),
(51, 12, 11, 119, 1, 0),
(52, 12, 11, 120, 0, 2),
(53, 12, 11, 121, 1, 0),
(54, 12, 9, 96, 0, 2),
(55, 12, 9, 97, 1, 0),
(56, 12, 9, 99, 1, 0),
(57, 13, 1, 7, 0, 1),
(58, 13, 1, 8, 0, 1),
(59, 13, 1, 9, 0, 1),
(60, 13, 1, 10, 3, 0),
(61, 14, 2, 19, 0, 1),
(62, 14, 2, 20, 1, 0),
(63, 14, 2, 21, 0, 1),
(64, 14, 2, 22, 1, 0),
(65, 15, 5, 19, 1, 0),
(66, 15, 8, 83, 0, 1),
(67, 15, 8, 84, 0, 1),
(68, 15, 8, 85, 1, 0),
(69, 15, 8, 87, 1, 1),
(70, 15, 8, 88, 1, 0),
(71, 16, 7, 70, 0, 1),
(72, 16, 7, 72, 0, 1),
(73, 16, 7, 73, 0, 1),
(74, 16, 7, 75, 1, 0),
(75, 16, 7, 76, 1, 1),
(76, 16, 7, 77, 3, 1),
(77, 18, 11, 121, 1, 0),
(78, 19, 1, 8, 0, 1),
(79, 19, 1, 9, 1, 1),
(80, 19, 1, 10, 1, 1),
(81, 19, 1, 11, 1, 0),
(82, 20, 11, 117, 0, 1),
(83, 20, 11, 119, 0, 1),
(84, 20, 11, 120, 1, 0),
(85, 20, 11, 121, 1, 0),
(86, 22, 8, 85, 0, 1),
(87, 22, 8, 86, 0, 1),
(88, 22, 8, 87, 2, 0),
(89, 22, 8, 88, 1, 1),
(90, 23, 7, 75, 0, 1),
(91, 23, 7, 76, 0, 1),
(92, 23, 7, 77, 2, 0),
(93, 23, 9, 95, 1, 1),
(94, 23, 9, 96, 1, 1),
(95, 23, 9, 97, 1, 1),
(96, 23, 9, 98, 1, 0),
(97, 23, 9, 99, 1, 1),
(98, 24, 2, 22, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `stadiums`
--

CREATE TABLE `stadiums` (
  `id_stadium` smallint(6) NOT NULL,
  `full_name` varchar(32) NOT NULL,
  `capacity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stadiums`
--

INSERT INTO `stadiums` (`id_stadium`, `full_name`, `capacity`) VALUES
(1, 'San Siro', 80018),
(2, 'Camp Nou', 99354),
(3, 'Westfalenstadion', 81365),
(4, 'Groupama Stadium', 59186),
(5, 'Borisov Arena', 13126),
(6, 'Veltins-Arena', 61673),
(7, 'Stadion im. Henryka Reymana', 32804),
(8, 'Parc des Princes', 48527),
(9, 'Allianz Stadium', 41507),
(10, 'Johan Cruyff Arena', 54033),
(11, 'Stadion Wojska Polskiego', 30800),
(12, 'Otkritie Arena', 45360);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id_team` smallint(6) NOT NULL,
  `id_stadium` smallint(6) NOT NULL,
  `club` varchar(25) NOT NULL,
  `shorthand` varchar(3) NOT NULL CHECK (octet_length(`shorthand`) = 3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id_team`, `id_stadium`, `club`, `shorthand`) VALUES
(1, 1, 'AC Milan', 'ACM'),
(2, 2, 'FC Barcelona', 'FCB'),
(3, 3, 'Borussia Dortmund', 'BOR'),
(4, 4, 'Lyon', 'LYO'),
(5, 5, 'BATE Borisov', 'BAT'),
(6, 6, 'Schalke 04', 'SCH'),
(7, 7, 'Wisła Cracow', 'WIS'),
(8, 8, 'Paris Saint-Germain', 'PSG'),
(9, 9, 'Juventus', 'JUV'),
(10, 10, 'Ajax Amsterdam', 'RES'),
(11, 11, 'Legia Warsaw', 'LEG'),
(12, 12, 'Spartak Moscow', 'SPA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coach`
--
ALTER TABLE `coach`
  ADD PRIMARY KEY (`id_coach`);

--
-- Indexes for table `coach_team`
--
ALTER TABLE `coach_team`
  ADD PRIMARY KEY (`id_coach`,`id_team`),
  ADD KEY `team_fk` (`id_team`);

--
-- Indexes for table `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`id_match`),
  ADD KEY `id_home` (`id_home`),
  ADD KEY `id_away` (`id_away`),
  ADD KEY `id_stadium` (`id_stadium`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id_player`);

--
-- Indexes for table `player_team`
--
ALTER TABLE `player_team`
  ADD PRIMARY KEY (`id_player`,`id_team`),
  ADD KEY `team_fk1` (`id_team`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id_match`);

--
-- Indexes for table `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`id_score`),
  ADD KEY `id_match` (`id_match`),
  ADD KEY `id_team` (`id_team`),
  ADD KEY `id_player` (`id_player`);

--
-- Indexes for table `stadiums`
--
ALTER TABLE `stadiums`
  ADD PRIMARY KEY (`id_stadium`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id_team`),
  ADD UNIQUE KEY `shorthand` (`shorthand`),
  ADD KEY `id_stadium` (`id_stadium`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coach`
--
ALTER TABLE `coach`
  MODIFY `id_coach` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `coach_team`
--
ALTER TABLE `coach_team`
  ADD CONSTRAINT `coach_fk` FOREIGN KEY (`id_coach`) REFERENCES `coach` (`id_coach`),
  ADD CONSTRAINT `team_fk` FOREIGN KEY (`id_team`) REFERENCES `teams` (`id_team`);

--
-- Constraints for table `matches`
--
ALTER TABLE `matches`
  ADD CONSTRAINT `matches_ibfk_1` FOREIGN KEY (`id_home`) REFERENCES `teams` (`id_team`),
  ADD CONSTRAINT `matches_ibfk_2` FOREIGN KEY (`id_away`) REFERENCES `teams` (`id_team`),
  ADD CONSTRAINT `matches_ibfk_3` FOREIGN KEY (`id_stadium`) REFERENCES `stadiums` (`id_stadium`);

--
-- Constraints for table `player_team`
--
ALTER TABLE `player_team`
  ADD CONSTRAINT `player_fk1` FOREIGN KEY (`id_player`) REFERENCES `players` (`id_player`),
  ADD CONSTRAINT `team_fk1` FOREIGN KEY (`id_team`) REFERENCES `teams` (`id_team`);

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_ibfk_1` FOREIGN KEY (`id_match`) REFERENCES `matches` (`id_match`);

--
-- Constraints for table `scores`
--
ALTER TABLE `scores`
  ADD CONSTRAINT `scores_ibfk_1` FOREIGN KEY (`id_match`) REFERENCES `matches` (`id_match`),
  ADD CONSTRAINT `scores_ibfk_2` FOREIGN KEY (`id_team`) REFERENCES `teams` (`id_team`),
  ADD CONSTRAINT `scores_ibfk_3` FOREIGN KEY (`id_player`) REFERENCES `players` (`id_player`);

--
-- Constraints for table `teams`
--
ALTER TABLE `teams`
  ADD CONSTRAINT `teams_ibfk_1` FOREIGN KEY (`id_stadium`) REFERENCES `stadiums` (`id_stadium`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
