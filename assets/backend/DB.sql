-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2022 at 12:56 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project2021_houseing`
--
CREATE DATABASE IF NOT EXISTS `project2021_houseing` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `project2021_houseing`;

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(255) NOT NULL,
  `bookedBy` varchar(255) NOT NULL,
  `phone` varchar(23) NOT NULL,
  `email` varchar(23) NOT NULL,
  `houseId` int(23) NOT NULL,
  `duration` varchar(23) NOT NULL,
  `statePay` int(1) NOT NULL DEFAULT 1,
  `crt_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `bookedBy`, `phone`, `email`, `houseId`, `duration`, `statePay`, `crt_at`) VALUES
(1, 'sadlk', 'lksdlk', 'lksdlfkwe', 3, '1', 1, '2022-02-07 16:51:49'),
(2, 'sadlk', 'lksdlk', 'lksdlfkwe', 3, '1', 1, '2022-02-08 08:06:46'),
(3, 'roderick dafjkjxf', '09873489434', 'okechinoble@gmail.com', 3, '1', 1, '2022-02-08 08:14:28'),
(4, 'zcfjkdf', 'dfjkj', 'ldfkl', 3, '1', 1, '2022-02-08 08:23:32'),
(5, 'jxfj', 'dfkllk', 'dfklklsdfkl', 3, '1', 1, '2022-02-08 08:28:30'),
(6, 'xcf.sdk;lk', 'klsdfkl', 'klkdf', 3, '1', 1, '2022-02-08 08:31:24'),
(7, 'asdc', 'SFVSD', 'SFVSD', 3, '1', 1, '2022-02-08 08:36:36');

-- --------------------------------------------------------

--
-- Table structure for table `houses`
--

CREATE TABLE `houses` (
  `id` int(244) NOT NULL,
  `houseType` int(34) NOT NULL,
  `price` varchar(233) NOT NULL,
  `location` varchar(221) NOT NULL DEFAULT 'Owerri',
  `statu` int(23) NOT NULL DEFAULT 0,
  `place` varchar(233) NOT NULL,
  `numberRoom` int(233) NOT NULL,
  `OwnedBy` varchar(34) NOT NULL,
  `ownPhone` varchar(123) NOT NULL,
  `cre_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `houses`
--

INSERT INTO `houses` (`id`, `houseType`, `price`, `location`, `statu`, `place`, `numberRoom`, `OwnedBy`, `ownPhone`, `cre_at`) VALUES
(1, 5, '356', 'Owerri', 1, 'idoio', 67, 'dfgi', 'dfo', '2022-02-02 18:03:57'),
(3, 4, '243', 'Owerri', 0, 'kjdfkjk', 4, 'dfjk', 'kdjfkj', '2022-02-03 08:47:45'),
(4, 6, '3995', 'Owerri', 0, 'location', 13, 'bube', '0009023942342', '2022-02-08 11:26:08'),
(5, 6, 'klkdfl', 'Owerri', 0, 'lksflkl', 0, 'dtlkjl', 'ldkflk', '2022-02-08 11:31:27'),
(6, 6, 'lklkfl', 'Owerri', 0, 'lkdlk', 0, 'xfksl', 'lkflk', '2022-02-08 11:34:45'),
(7, 6, 'lksdlk', 'Owerri', 0, 'klskdlk', 0, 'dfklk', 'lskdl', '2022-02-08 11:51:15'),
(8, 6, 'lksdlk', 'Owerri', 0, 'klskdlk', 0, 'dfklk', 'lskdl', '2022-02-08 11:52:15'),
(9, 5, 'jkjfkj', 'Owerri', 0, 'jkdjfk', 0, 'xcv', 'jkjdfkjk', '2022-02-08 11:55:41'),
(10, 5, 'kdflgk', 'Owerri', 0, 'jkdjfkj', 0, 'xjfkjKJSKJkjdfkj', 'kjdfkj', '2022-02-08 11:59:29'),
(11, 5, 'kdflgk', 'Owerri', 0, 'jkdjfkj', 0, 'xjfkjKJSKJkjdfkj', 'kjdfkj', '2022-02-08 12:01:15'),
(12, 5, 'kdflgk', 'Owerri', 0, 'jkdjfkj', 0, 'xjfkjKJSKJkjdfkj', 'kjdfkj', '2022-02-08 12:01:16'),
(13, 5, 'kdflgk', 'Owerri', 0, 'jkdjfkj', 0, 'xjfkjKJSKJkjdfkj', 'kjdfkj', '2022-02-08 12:17:37'),
(14, 5, 'kdflgk', 'Owerri', 0, 'jkdjfkj', 0, 'xjfkjKJSKJkjdfkj', 'kjdfkj', '2022-02-08 12:18:53'),
(15, 5, 'kdflgk', 'Owerri', 0, 'jkdjfkj', 0, 'xjfkjKJSKJkjdfkj', 'kjdfkj', '2022-02-08 12:19:20'),
(16, 5, 'kdflgk', 'Owerri', 0, 'jkdjfkj', 0, 'xjfkjKJSKJkjdfkj', 'kjdfkj', '2022-02-08 12:20:52'),
(17, 5, 'kdflgk', 'Owerri', 0, 'jkdjfkj', 0, 'xjfkjKJSKJkjdfkj', 'kjdfkj', '2022-02-08 12:21:42'),
(18, 5, 'kdflgk', 'Owerri', 0, 'jkdjfkj', 0, 'xjfkjKJSKJkjdfkj', 'kjdfkj', '2022-02-08 12:30:47'),
(19, 5, 'kdflgk', 'Owerri', 0, 'jkdjfkj', 0, 'xjfkjKJSKJkjdfkj', 'kjdfkj', '2022-02-08 12:40:31');

-- --------------------------------------------------------

--
-- Table structure for table `housetype`
--

CREATE TABLE `housetype` (
  `sn` int(223) NOT NULL,
  `name` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `housetype`
--

INSERT INTO `housetype` (`sn`, `name`) VALUES
(4, 'duplex'),
(5, 'apartment'),
(6, 'lodge');

-- --------------------------------------------------------

--
-- Table structure for table `imgs`
--

CREATE TABLE `imgs` (
  `id` int(255) NOT NULL,
  `houseId` int(244) NOT NULL,
  `imgName` varchar(232) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(255) NOT NULL,
  `fullname` varchar(223) NOT NULL,
  `phone` varchar(34) NOT NULL,
  `addres` longtext NOT NULL,
  `report` longtext NOT NULL,
  `cret_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `fullname`, `phone`, `addres`, `report`, `cret_at`) VALUES
(1, 'dcfjkj', 'kjdfkj', 'kjskdfj', 'dfvnojn', '2022-02-02 08:55:28'),
(2, 'czvjkdjm', 'lksdlk', 'lkdlfklk', 'lkdlfkldf', '2022-02-02 14:34:21'),
(3, 'amdfkj', 'lkdlfkl', 'klsvksldk', 'lkdlfkl', '2022-02-02 14:34:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `sn` int(255) NOT NULL,
  `firstName` varchar(23) NOT NULL,
  `surname` varchar(44) NOT NULL,
  `email` varchar(233) NOT NULL,
  `phone` varchar(23) NOT NULL,
  `pwd` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`sn`, `firstName`, `surname`, `email`, `phone`, `pwd`) VALUES
(1, 'ebube', 'roderick', 'ebuberoderick2@gmail.com', '08130075358', '12345678');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `housetype`
--
ALTER TABLE `housetype`
  ADD PRIMARY KEY (`sn`);

--
-- Indexes for table `imgs`
--
ALTER TABLE `imgs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`sn`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `houses`
--
ALTER TABLE `houses`
  MODIFY `id` int(244) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `housetype`
--
ALTER TABLE `housetype`
  MODIFY `sn` int(223) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `imgs`
--
ALTER TABLE `imgs`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `sn` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
