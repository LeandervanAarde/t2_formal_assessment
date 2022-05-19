-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 19, 2022 at 07:56 PM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pets`
--

-- --------------------------------------------------------

--
-- Table structure for table `petInfo`
--

CREATE TABLE `petInfo` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `species` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `age` varchar(3) NOT NULL,
  `MicroChipId` varchar(10) NOT NULL,
  `OwnerName` varchar(255) NOT NULL,
  `OwnerID` varchar(13) NOT NULL,
  `Origin` varchar(255) NOT NULL,
  `Destination` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `petInfo`
--

INSERT INTO `petInfo` (`id`, `name`, `species`, `gender`, `age`, `MicroChipId`, `OwnerName`, `OwnerID`, `Origin`, `Destination`) VALUES
(1, 'Doug', 'Dog', 'Male', '8', '8975gh', 'Douglas DuggerTaker', '0103450698560', 'Pretoria', 'Norway'),
(14, 'Sid', 'Feline', 'Female', '8', '12345f', 'Leander', '01037236088', 'Pretoria', 'Norway'),
(16, 'Sid', 'Feline', 'Female', '8', '12345f', 'Leander', '01037236088', 'Pretoria', 'Norway');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `petInfo`
--
ALTER TABLE `petInfo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `petInfo`
--
ALTER TABLE `petInfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
