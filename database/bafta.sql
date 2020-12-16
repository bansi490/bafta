-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 16, 2020 at 02:38 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bafta`
--

-- --------------------------------------------------------

--
-- Table structure for table `bafta_userlevel`
--

DROP TABLE IF EXISTS `bafta_userlevel`;
CREATE TABLE IF NOT EXISTS `bafta_userlevel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userlevel` varchar(100) NOT NULL,
  `dest_page` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bafta_userlevel`
--

INSERT INTO `bafta_userlevel` (`id`, `userlevel`, `dest_page`) VALUES
(1, 'novice', ''),
(2, 'intermediate', ''),
(3, 'expert', '');

-- --------------------------------------------------------

--
-- Table structure for table `bafta_users`
--

DROP TABLE IF EXISTS `bafta_users`;
CREATE TABLE IF NOT EXISTS `bafta_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `userlevel` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bafta_users`
--

INSERT INTO `bafta_users` (`id`, `username`, `password`, `userlevel`) VALUES
(1, 'Ben', 'sjkdghscj', 1),
(2, 'Ed', 'jhgjas71', 3),
(3, 'Matt', 'nkjsnkddd', 3),
(4, 'Simon', 'jcksdkl', 1),
(5, 'Geoff', 'csnkc', 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
