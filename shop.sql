-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2018 at 12:17 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `owenpowersport`
--

CREATE TABLE `owenpowersport` (
  `id` int(255) NOT NULL,
  `part_num` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `quantity` int(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `capital` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owenpowersport`
--

INSERT INTO `owenpowersport` (`id`, `part_num`, `item`, `quantity`, `brand`, `capital`, `description`, `category`, `location`) VALUES
(1, 'My title', 'My Name', 0, 'My Name', 'My Name', 'My Name', 'My Name', 'My Name'),
(2, 'My title', 'My Name', 0, 'My Name', 'My Name', 'My Name', 'My Name', 'My Name'),
(3, 'My title', 'My Name', 0, 'My Name', 'My Name', 'My Name', 'My Name', 'My Name'),
(4, 'My title', 'My Name', 0, 'My Name', 'My Name', 'My Name', 'My Name', 'My Name'),
(5, '1234', 'asdasd', 2, 'asdasd', '1233', 'asd', 'local', 'asd'),
(6, '123', 'ligid', 5, 'branded', '', 'para sa tanan', 'genuine', 'h1'),
(7, '321', 'baso', 10, 'brandless', '1000', 'the quick brown fox jumps over the lazy dog asdhaksdasdja;sdaksdjaksdjaklsdlaksjdlaksjdakjdlaksdjlkasdjlasdjklasdjaksdalkdjasdasdasjhkd asdhasjdhajsdh hasjdajsdhaksjdh hasjdhasjdh ajsdhasdh jasdhaksdh hakjsdhajsdh ', 'plastic', 'g1'),
(8, '1', 'sad', 23, 'asdasd', '3', 'asdasd', 'racing', 'asdasd'),
(9, '123', 'rasdasd', 123, 'asdasd', '123', 'asdasd', 'accessories', '123'),
(10, '132', 'asdasd', 123, 'asd', '4435', 'asdasd', 'racing', 'asdasd');

-- --------------------------------------------------------

--
-- Table structure for table `utang`
--

CREATE TABLE `utang` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact_num` int(11) NOT NULL,
  `balance` int(11) NOT NULL,
  `last_update` date NOT NULL,
  `date_nangutang` date NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `owenpowersport`
--
ALTER TABLE `owenpowersport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `utang`
--
ALTER TABLE `utang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `owenpowersport`
--
ALTER TABLE `owenpowersport`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `utang`
--
ALTER TABLE `utang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
