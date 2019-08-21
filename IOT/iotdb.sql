-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 08, 2019 at 01:52 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iotdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `delay`
--

DROP TABLE IF EXISTS `delay`;
CREATE TABLE IF NOT EXISTS `delay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `delay` varchar(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delay`
--

INSERT INTO `delay` (`id`, `delay`) VALUES
(1, '300'),
(2, '100'),
(3, '100');

-- --------------------------------------------------------

--
-- Table structure for table `tp`
--

DROP TABLE IF EXISTS `tp`;
CREATE TABLE IF NOT EXISTS `tp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `distance` varchar(3) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `statut` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tp`
--

INSERT INTO `tp` (`id`, `distance`, `date`, `statut`) VALUES
(1, '231', '2019-04-08 13:50:09', '1'),
(2, '231', '2019-04-08 13:50:12', '1'),
(3, '232', '2019-04-08 13:50:15', '1'),
(4, '231', '2019-04-08 13:50:18', '1'),
(5, '232', '2019-04-08 13:50:21', '1'),
(6, '232', '2019-04-08 13:50:24', '1'),
(7, '231', '2019-04-08 13:50:27', '1'),
(8, '232', '2019-04-08 13:50:30', '1'),
(9, '232', '2019-04-08 13:50:33', '1'),
(10, '231', '2019-04-08 13:50:36', '1'),
(11, '231', '2019-04-08 13:50:39', '1'),
(12, '231', '2019-04-08 13:50:42', '1'),
(13, '231', '2019-04-08 13:50:45', '1'),
(14, '231', '2019-04-08 13:50:48', '1'),
(15, '232', '2019-04-08 13:50:51', '1'),
(16, '232', '2019-04-08 13:50:54', '1'),
(17, '231', '2019-04-08 13:50:57', '1'),
(18, '232', '2019-04-08 13:51:00', '1'),
(19, '231', '2019-04-08 13:51:03', '1'),
(20, '232', '2019-04-08 13:51:06', '1'),
(21, '232', '2019-04-08 13:51:09', '1'),
(22, '232', '2019-04-08 13:51:12', '1'),
(23, '231', '2019-04-08 13:51:15', '1'),
(24, '231', '2019-04-08 13:51:18', '1'),
(25, '231', '2019-04-08 13:51:21', '1'),
(26, '231', '2019-04-08 13:51:24', '1'),
(27, '231', '2019-04-08 13:51:27', '1'),
(28, '233', '2019-04-08 13:51:30', '1'),
(29, '231', '2019-04-08 13:51:33', '1'),
(30, '231', '2019-04-08 13:51:36', '1'),
(31, '231', '2019-04-08 13:51:39', '1'),
(32, '232', '2019-04-08 13:51:42', '1'),
(33, '231', '2019-04-08 13:51:45', '1'),
(34, '232', '2019-04-08 13:51:48', '1'),
(35, '232', '2019-04-08 13:51:51', '1'),
(36, '232', '2019-04-08 13:51:54', '1'),
(37, '232', '2019-04-08 13:51:58', '1'),
(38, '232', '2019-04-08 13:52:01', '1'),
(39, '232', '2019-04-08 13:52:04', '1'),
(40, '232', '2019-04-08 13:52:07', '1'),
(41, '232', '2019-04-08 13:52:10', '1'),
(42, '232', '2019-04-08 13:52:13', '1'),
(43, '231', '2019-04-08 13:52:16', '1'),
(44, '231', '2019-04-08 13:52:19', '1'),
(45, '232', '2019-04-08 13:52:22', '1'),
(46, '232', '2019-04-08 13:52:25', '1'),
(47, '232', '2019-04-08 13:52:28', '1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(1, 'webmaster@python.org', 'very-secret');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
