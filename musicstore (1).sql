-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2021 at 08:06 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `musicstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `artist_id` int(35) NOT NULL,
  `FULLNAMES` varchar(200) NOT NULL,
  `NICKNAME` varchar(50) DEFAULT NULL,
  `PRODUCTION_LABEL` varchar(300) NOT NULL,
  `MUSIC_GENRE` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`artist_id`, `FULLNAMES`, `NICKNAME`, `PRODUCTION_LABEL`, `MUSIC_GENRE`) VALUES
(1, 'Bob Marly', 'bobby', 'wasafi records', 'raggae'),
(2, 'Vybz Kartel', 'Kartel', 'sony music', 'Hip-hop'),
(4, 'diamond plantinuz', 'simba', 'wasafi records', 'bongo');

-- --------------------------------------------------------

--
-- Stand-in structure for view `musicsumarry`
-- (See below for the actual view)
--
CREATE TABLE `musicsumarry` (
`artist_id` varchar(9)
,`FULLNAMES` varchar(200)
,`NICKNAME` varchar(50)
,`PRODUCTION_LABEL` varchar(300)
,`MUSIC_GENRE` varchar(100)
);

-- --------------------------------------------------------

--
-- Table structure for table `music_store`
--

CREATE TABLE `music_store` (
  `music_id` int(5) NOT NULL,
  `music_name` varchar(50) NOT NULL,
  `music_artist` varchar(50) NOT NULL,
  `music_genre` varchar(50) DEFAULT NULL,
  `music_year` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `music_store`
--

INSERT INTO `music_store` (`music_id`, `music_name`, `music_artist`, `music_genre`, `music_year`) VALUES
(1, 'tomorrow is another day', 'don carlos', 'raggae', '1990'),
(2, 'KIDOGO_DOGO', 'NASSIZU_MURUME_Ft_DAZLAH', 'bongo', '2019'),
(5, 'enjoyment', 'kidi', 'dancehall', '2020'),
(6, 'river side', 'joseph calture', 'raggae', '1950'),
(9, 'cheketua', 'andy Bumuntu', 'bongo', '2020');

-- --------------------------------------------------------

--
-- Table structure for table `record_lebal`
--

CREATE TABLE `record_lebal` (
  `LEBAL_ID` int(50) NOT NULL,
  `LEBAL_NAME` varchar(100) NOT NULL,
  `music_genre` varchar(50) NOT NULL,
  `SERVICES` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `record_lebal`
--

INSERT INTO `record_lebal` (`LEBAL_ID`, `LEBAL_NAME`, `music_genre`, `SERVICES`) VALUES
(3, ' Universal Music Publishing Group', 'R$B', 'production and market\r\n'),
(4, 'enb records', 'raggae', 'production and promotion'),
(5, 'sony music', 'raggae', 'beats and promotion');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `USER_ID` int(35) NOT NULL,
  `FULLNAME` varchar(100) NOT NULL,
  `USERNAME` varchar(100) NOT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `PASSWORD` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`USER_ID`, `FULLNAME`, `USERNAME`, `EMAIL`, `PASSWORD`) VALUES
(1, 'bransly mata', 'mata', 'branslymata@gmail.com', '1234'),
(2, 'kai rooney', 'rooney', 'kairooney@gmail.com', '4321'),
(3, ' kamutu gibson', 'kamatu', 'kamatugibson@gmail.com', '654321'),
(6, 'francis mbati', 'mbati', 'mbatifrancis@gmail.com', '0000'),
(7, 'john mark', 'markie', 'markie@mail.com', '8888'),
(8, 'wiliam macknon', 'willnon', 'macknon@gmail.com', '2222');

-- --------------------------------------------------------

--
-- Stand-in structure for view `registeruser`
-- (See below for the actual view)
--
CREATE TABLE `registeruser` (
`USER_ID` int(35)
,`FULLNAME` varchar(100)
,`USERNAME` varchar(100)
,`EMAIL` varchar(100)
,`PASSWORD` varchar(100)
);

-- --------------------------------------------------------

--
-- Table structure for table `tracks`
--

CREATE TABLE `tracks` (
  `track_id` int(5) NOT NULL,
  `track_number` int(2) DEFAULT NULL,
  `track_name` varchar(50) NOT NULL,
  `music_id` int(5) DEFAULT NULL,
  `track_url` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tracks`
--

INSERT INTO `tracks` (`track_id`, `track_number`, `track_name`, `music_id`, `track_url`) VALUES
(1, 23, 'tomorrow ', 1, 'C:\\Users\\WILLY\\Music\\classic music'),
(2, 12, 'kidogo-dogo', 2, 'C:\\Users\\WILLY\\Music'),
(4, 14, 'enjoyment', NULL, 'This PC\\TECNO W5 Lite\\Internal storage\\VidMate\\download'),
(6, 34, 'river side', 6, 'E/music');

-- --------------------------------------------------------

--
-- Table structure for table `views`
--

CREATE TABLE `views` (
  `VIEW_ID` int(35) NOT NULL,
  `VIEWER_NAME` varchar(100) NOT NULL,
  `DATE_VIEWED` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `views`
--

INSERT INTO `views` (`VIEW_ID`, `VIEWER_NAME`, `DATE_VIEWED`) VALUES
(1, 'polline canterine', '2021-11-17'),
(2, 'bill gate ', '2021-11-02'),
(3, 'almado kigali', '2021-11-01'),
(5, 'mark obaga', '2021-11-03'),
(6, 'john cosmus', '2021-11-10');

-- --------------------------------------------------------

--
-- Structure for view `musicsumarry`
--
DROP TABLE IF EXISTS `musicsumarry`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `musicsumarry`  AS SELECT 'artist_id' AS `artist_id`, `artist`.`FULLNAMES` AS `FULLNAMES`, `artist`.`NICKNAME` AS `NICKNAME`, `artist`.`PRODUCTION_LABEL` AS `PRODUCTION_LABEL`, `artist`.`MUSIC_GENRE` AS `MUSIC_GENRE` FROM `artist` WHERE `artist`.`PRODUCTION_LABEL` = 'sony music' ;

-- --------------------------------------------------------

--
-- Structure for view `registeruser`
--
DROP TABLE IF EXISTS `registeruser`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `registeruser`  AS SELECT `register`.`USER_ID` AS `USER_ID`, `register`.`FULLNAME` AS `FULLNAME`, `register`.`USERNAME` AS `USERNAME`, `register`.`EMAIL` AS `EMAIL`, `register`.`PASSWORD` AS `PASSWORD` FROM `register` WHERE `register`.`USER_ID` = '2' ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`artist_id`);

--
-- Indexes for table `music_store`
--
ALTER TABLE `music_store`
  ADD PRIMARY KEY (`music_id`);

--
-- Indexes for table `record_lebal`
--
ALTER TABLE `record_lebal`
  ADD PRIMARY KEY (`LEBAL_ID`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`USER_ID`),
  ADD UNIQUE KEY `EMAIL` (`EMAIL`),
  ADD UNIQUE KEY `USERNAME` (`USERNAME`);

--
-- Indexes for table `tracks`
--
ALTER TABLE `tracks`
  ADD PRIMARY KEY (`track_id`),
  ADD KEY `music_id` (`music_id`);

--
-- Indexes for table `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`VIEW_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artist`
--
ALTER TABLE `artist`
  MODIFY `artist_id` int(35) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `music_store`
--
ALTER TABLE `music_store`
  MODIFY `music_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `record_lebal`
--
ALTER TABLE `record_lebal`
  MODIFY `LEBAL_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `USER_ID` int(35) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tracks`
--
ALTER TABLE `tracks`
  MODIFY `track_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `views`
--
ALTER TABLE `views`
  MODIFY `VIEW_ID` int(35) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tracks`
--
ALTER TABLE `tracks`
  ADD CONSTRAINT `tracks_ibfk_1` FOREIGN KEY (`music_id`) REFERENCES `music_store` (`music_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
