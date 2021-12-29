-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2021 at 03:53 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizz_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `name`, `role`) VALUES
(1, 'jinoy', 'pass123', 'Jinoy', 'user'),
(4, 'admin', 'pass123', 'Admin', 'admin'),
(6, 'jijoy', 'Pass123', 'jijoy', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`id`, `username`, `date`, `score`) VALUES
(3, 'jinoy', '2021-12-28 20:00:04', 10),
(4, 'jinoy', '2021-12-29 11:19:00', 50),
(5, 'jinoy', '2021-12-29 15:44:12', 20);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_qstn`
--

CREATE TABLE `quiz_qstn` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `option_a` varchar(255) NOT NULL,
  `option_b` varchar(255) NOT NULL,
  `option_c` varchar(255) NOT NULL,
  `option_d` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz_qstn`
--

INSERT INTO `quiz_qstn` (`id`, `question`, `option_a`, `option_b`, `option_c`, `option_d`, `answer`) VALUES
(2, 'In which decade was the American Institute of Electrical Engineers (AIEE) founded?', '1850', '1860', '1870', '1900', '1900'),
(3, 'In which decade was the SPICE simulator introduced?', '1950s', '1960s', '1972s', '1980s', '1950s'),
(4, 'The TV circuit the power is used in does what function?', 'Sound', ' Remote control  ', ' Color balance  ', ' High voltage  ', 'Sound'),
(5, 'Which is a type of Electrically-Erasable Programmable Read-Only Memory?', ' Flash  ', 'Flange', 'Fury', 'FRAM', ' Flash  '),
(6, 'The purpose of choke in tube light is ?', ' To decrease the current  ', ' To increase the current  ', ' To decrease the voltage momentarily  ', ' To increase the voltage momentarily  ', ' To increase the voltage momentarily  '),
(7, 'Who is largely responsible for breaking the German Enigma codes, created a test that provided a foundation for artificial intelligence?', ' Jeff Bezos  ', ' Alan Turing  ', ' George Boole  ', ' Charles Babbage  ', ' Alan Turing  '),
(8, 'Who developed Yahoo?', ' Dennis Ritchie & Ken Thompson  ', ' David Filo & Jerry Yang  ', ' Vint Cerf & Robert Kahn  ', ' Steve Case & Jeff Bezos  ', ' David Filo & Jerry Yang  '),
(9, 'Made from a variety of materials, such as carbon, which inhibits the flow of current...?', 'Choke', 'Inductor', 'Resistor', 'Capacitor', 'Resistor'),
(10, 'The most common format for a home video recorder is VHS. VHS stands for...?', ' Video Home System  ', ' Very high speed  ', ' Video horizontal standard  ', ' Voltage house standard  ', ' Video Home System  '),
(11, 'What does VVVF stand for?', ' Variant Voltage Vile Frequency  ', ' Variable Velocity Variable Fun  ', ' Very Very Vicious Frequency  ', ' Variable Voltage Variable Frequency  ', ' Variable Voltage Variable Frequency  '),
(12, 'What frequency range is the High Frequency band?', ' 100 kHz  ', ' 1 GHz  ', ' 30 to 300 MHz  ', ' 3 to 30 MHz  ', ' 3 to 30 MHz  '),
(13, 'The first step to getting output from a laser is to excite an active medium.', 'Pumping', ' Exciting  ', 'Priming', 'Raising', 'Raising'),
(14, 'Which motor is NOT suitable for use as a DC machine?', ' Permanent magnet motor  ', '  Series motor    ', ' Squirrel cage motor  ', ' Synchronous motor  ', ' Squirrel cage motor  '),
(18, 'Which one is the first search engine in internet', 'Google3', 'Archie', 'Altavista', 'WAIS', 'Archie'),
(20, 'what is your age', '21', '22', '23', '24', '22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_qstn`
--
ALTER TABLE `quiz_qstn`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `quiz_qstn`
--
ALTER TABLE `quiz_qstn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
