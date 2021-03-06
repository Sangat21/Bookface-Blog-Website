-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 11, 2020 at 07:06 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Dongmin`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `blogid` int(11) NOT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `postuser` varchar(20) NOT NULL,
  `pdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`blogid`, `subject`, `description`, `postuser`, `pdate`) VALUES
(1, 'happy', 'happy virus', 'john', NULL),
(2, 'gg', 'son', 'temp', NULL),
(5, 'die', 'gasd', 'temp3', NULL),
(6, 'sadf', 'gdaseqw', 'temp5', NULL),
(7, 'happydd', 'sdafdsaf', 'john', '2020-02-10'),
(8, 'qweasd', 'sadfsdafafsadf', 'temp', '2020-02-10'),
(9, 'happydd', 'sdafdsaf', 'john', '2020-02-10'),
(10, 'qweasd', 'sadfsdafafsadf', 'temp', '2020-02-10'),
(11, 'positive', 'positive', 'john', '2020-05-12'),
(12, 'negative', 'negative', 'john', '2020-02-10');

-- --------------------------------------------------------

--
-- Table structure for table `blogstags`
--

CREATE TABLE `blogstags` (
  `blogid` int(11) NOT NULL,
  `tag` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogstags`
--

INSERT INTO `blogstags` (`blogid`, `tag`) VALUES
(1, 'john'),
(2, 'temp'),
(2, 'test'),
(5, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `Comments`
--

CREATE TABLE `Comments` (
  `commentid` int(11) NOT NULL,
  `sentiment` varchar(20) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `cdate` date DEFAULT NULL,
  `blogid` int(11) NOT NULL,
  `author` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Comments`
--

INSERT INTO `Comments` (`commentid`, `sentiment`, `description`, `cdate`, `blogid`, `author`) VALUES
(1, 'positive', 'postivie action', '2020-05-14', 2, 'temp2'),
(2, 'negative', 'gg why', '2020-05-19', 1, 'john'),
(3, 'positive', 'good one', '2020-05-19', 11, 'temp2'),
(4, 'negative', 'bad one', '2020-05-11', 12, 'temp5'),
(5, 'positive', 'gg', '2020-05-14', 9, 'temp2');

-- --------------------------------------------------------

--
-- Table structure for table `Follows`
--

CREATE TABLE `Follows` (
  `leader` varchar(20) NOT NULL,
  `follower` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Follows`
--

INSERT INTO `Follows` (`leader`, `follower`) VALUES
('john', 'temp'),
('john', 'temp2');

-- --------------------------------------------------------

--
-- Table structure for table `Guests`
--

CREATE TABLE `Guests` (
  `id` int(6) UNSIGNED NOT NULL,
  `firtname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Guests`
--

INSERT INTO `Guests` (`id`, `firtname`) VALUES
(1, 'PKoLWXjCBI'),
(2, 'tElaDDggBA'),
(3, 'HdCZTtuQRi'),
(4, 'zuBtLzwRUh'),
(5, 'erKIspQYTM'),
(6, 'DnCSDyVcgX'),
(7, 'LWTGcBOtwH'),
(8, 'qnmchrfQeR'),
(9, 'tdQiMfMWEP'),
(10, 'lVtzEufcnu'),
(11, 'kYjrrOPkQV'),
(12, 'qWvFyzSwwv'),
(13, 'AtvtUowytY'),
(14, 'dJndpHgcoF'),
(15, 'cYVPVGFZTX'),
(16, 'eVflOWNfMk'),
(17, 'MBaaEBsiFY'),
(18, 'jTFiUNwoQI'),
(19, 'txpLFkGpin'),
(20, 'EFKUJGDcji'),
(21, 'ziVKIYhKTr'),
(22, 'rKzsMxngej'),
(23, 'xKjqCYOSPr'),
(24, 'BMgdjjIKFO'),
(25, 'NLOFMIcMAi'),
(26, 'coGDNGzods'),
(27, 'sgfPSjZlgK'),
(28, 'wJCCHWAfol'),
(29, 'sNDpnuNGQo'),
(30, 'mKsqNNxtBj'),
(31, 'jrNgNzlrzQ'),
(32, 'wXavYqnyLp'),
(33, 'CuOKdTAVPl'),
(34, 'YbdQgAitYu'),
(35, 'nZHoyMCPFa'),
(36, 'ordYsMVCBF'),
(37, 'vtnVjmoJtq'),
(38, 'WTgWfpAcAR'),
(39, 'vWTsdvutik'),
(40, 'UtFRTeaUac'),
(41, 'YvvSzYLqal'),
(42, 'tJWCtKSNvj'),
(43, 'VQzTWKbPGY'),
(44, 'iZlJzTmzey'),
(45, 'CvPxenotIv'),
(46, 'vEWbFaVlMs'),
(47, 'hbVfrJeHlE'),
(48, 'VNjdfDyDgj'),
(49, 'WhpSGosbFW'),
(50, 'KcUbwOFnWK'),
(51, 'WFedYyiraK'),
(52, 'BqZUNlTLga'),
(53, 'AlXlMcKbnG'),
(54, 'ysdkwvfmWa'),
(55, 'NLpERsSTNY'),
(56, 'hvpsDVMxlN'),
(57, 'awJImRpqTb'),
(58, 'HMHtoUhRSs'),
(59, 'DCsVKCzqOc'),
(60, 'ASgTiFRDBC'),
(61, 'DOeQBRKBCc'),
(62, 'GedNETDNYR'),
(63, 'yVjSZKvHRZ'),
(64, 'EDQBHGqoNL'),
(65, 'OTTNqwRWLV'),
(66, 'ucgCeiHmYp'),
(67, 'pfWHREAogR'),
(68, 'sKlheoqWTA'),
(69, 'XQpMpFRvup'),
(70, 'EmnIVkIbqK'),
(71, 'lFAmjhEQRP'),
(72, 'HUfvhcvLsN'),
(73, 'NZgTnOgqSh'),
(74, 'FMNWvBahXn'),
(75, 'SJsEBstUHG'),
(76, 'mggSqvmGQQ'),
(77, 'msaRzrYBhL'),
(78, 'ufZyykgTIe'),
(79, 'NNKSUARumw'),
(80, 'vvADVwIYhy'),
(81, 'CEfJWhdIME'),
(82, 'oUobKzKYek'),
(83, 'bBqqqDkFmj'),
(84, 'enYaVJEKki'),
(85, 'oMXFzlyVMH'),
(86, 'KRhyOhWzyB'),
(87, 'PYUArTAYzD'),
(88, 'QUmrjipVBN'),
(89, 'mxWplCJBvV'),
(90, 'djIhJiBlyQ'),
(91, 'zzPXEZqhAo'),
(92, 'ZqdlSYBBAj'),
(93, 'vFhoyslogo'),
(94, 'MSMOVWaUqM'),
(95, 'yivuYqTMkA'),
(96, 'rdLkVGAvmK'),
(97, 'FMnhWfxvma'),
(98, 'uOVMwPvhqL'),
(99, 'kAIQgqoiQI'),
(100, 'yTDqVNQqfQ'),
(101, 'zauGowBgYj'),
(102, 'StOfAXOkqV'),
(103, 'alZiQJYNgi'),
(104, 'zfJiSEAGcV'),
(105, 'rQpwbuFjrx'),
(106, 'XBdaGjSmIv'),
(107, 'gvQovpFjKr'),
(108, 'QvRctzjRZY'),
(109, 'JKRnysOYhZ'),
(110, 'LzoInDEvVW'),
(111, 'PntjLOUPkJ'),
(112, 'DGSNJqidqh'),
(113, 'mESfqJrcMt'),
(114, 'VyIWyxZqBF'),
(115, 'jshDCoqCnm'),
(116, 'skjpDrAjRW'),
(117, 'TyZosmUFmh'),
(118, 'BotlAIhzBx'),
(119, 'GdVvzDtXTH'),
(120, 'pDdoskmIVK');

-- --------------------------------------------------------

--
-- Table structure for table `Hobbies`
--

CREATE TABLE `Hobbies` (
  `username` varchar(20) NOT NULL,
  `hobby` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `firstname` varchar(30) DEFAULT NULL,
  `lastname` varchar(30) DEFAULT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`username`, `password`, `firstname`, `lastname`, `email`) VALUES
('john', '123123', 'john', 'john', 'jonh@gmail.com'),
('temp', '1414', 'temp', 'gg', 'g@!#123'),
('temp2', 'dsaf', 'qwer', 'zxv', 'asdkqwe'),
('temp3', 'dsaf', 'qwer', 'zxv', '12323'),
('temp5', '1414', 'temp', 'gg', 'g@123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`blogid`),
  ADD KEY `postuser` (`postuser`);

--
-- Indexes for table `blogstags`
--
ALTER TABLE `blogstags`
  ADD PRIMARY KEY (`blogid`,`tag`);

--
-- Indexes for table `Comments`
--
ALTER TABLE `Comments`
  ADD PRIMARY KEY (`commentid`),
  ADD KEY `blogid` (`blogid`),
  ADD KEY `author` (`author`);

--
-- Indexes for table `Follows`
--
ALTER TABLE `Follows`
  ADD PRIMARY KEY (`leader`,`follower`),
  ADD KEY `follower` (`follower`);

--
-- Indexes for table `Guests`
--
ALTER TABLE `Guests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Hobbies`
--
ALTER TABLE `Hobbies`
  ADD PRIMARY KEY (`username`,`hobby`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `blogid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `Comments`
--
ALTER TABLE `Comments`
  MODIFY `commentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Guests`
--
ALTER TABLE `Guests`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_ibfk_1` FOREIGN KEY (`postuser`) REFERENCES `users` (`username`);

--
-- Constraints for table `blogstags`
--
ALTER TABLE `blogstags`
  ADD CONSTRAINT `blogstags_ibfk_1` FOREIGN KEY (`blogid`) REFERENCES `blogs` (`blogid`);

--
-- Constraints for table `Comments`
--
ALTER TABLE `Comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`blogid`) REFERENCES `blogs` (`blogid`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`author`) REFERENCES `Users` (`username`);

--
-- Constraints for table `Follows`
--
ALTER TABLE `Follows`
  ADD CONSTRAINT `follows_ibfk_1` FOREIGN KEY (`leader`) REFERENCES `Users` (`username`),
  ADD CONSTRAINT `follows_ibfk_2` FOREIGN KEY (`follower`) REFERENCES `Users` (`username`);

--
-- Constraints for table `Hobbies`
--
ALTER TABLE `Hobbies`
  ADD CONSTRAINT `hobbies_ibfk_1` FOREIGN KEY (`username`) REFERENCES `Users` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
