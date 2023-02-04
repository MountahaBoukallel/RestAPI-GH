-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 04, 2023 at 10:25 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dht11`
--

-- --------------------------------------------------------

--
-- Table structure for table `dht11`
--

CREATE TABLE `dht11` (
  `ID` bigint(20) NOT NULL,
  `humidity` float DEFAULT NULL,
  `temperature` float DEFAULT NULL,
  `lightIntensity` float DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dht11`
--

INSERT INTO `dht11` (`ID`, `humidity`, `temperature`, `lightIntensity`, `date`) VALUES
(4, 80, 34, 7000, '0000-00-00 00:00:00'),
(5, 80, 41, 6000, '2022-11-28 00:54:07'),
(6, 55, 34, 140, '2022-12-25 10:14:28'),
(7, 44, 20, 60, '2022-12-25 10:23:36'),
(8, 44, 20, 17, '2022-12-25 11:49:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dht11`
--
ALTER TABLE `dht11`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dht11`
--
ALTER TABLE `dht11`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
