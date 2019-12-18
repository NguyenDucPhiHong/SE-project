-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2019 at 03:29 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinecourse`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '2017-01-24 16:21:18', '20-10-2019 02:02:39 PM');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `courseCode` varchar(255) DEFAULT NULL,
  `courseName` varchar(255) DEFAULT NULL,
  `courseUnit` varchar(255) DEFAULT NULL,
  `noofSeats` int(11) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `courseCode`, `courseName`, `courseUnit`, `noofSeats`, `creationDate`, `updationDate`) VALUES
(1, 'SQL', 'Database', 'Morty Smith', 10, '2017-02-11 17:39:10', '21-05-2018 03:33:37 PM'),
(2, 'R&M', 'Learing about space stuff', 'Pickle Rick', 1, '2017-02-11 17:52:25', '12-02-2017 12:23:35 AM'),
(4, 'PHYS1', 'Physics 1', 'Rick Sanchez', 20, '2017-02-11 18:47:25', '25-08-2018 11:20:22 AM'),
(5, 'Cal1', 'Calculus 1', 'Hideo Kojima', 100, '2019-12-08 14:00:21', '08-12-2019 07:56:10 PM'),
(7, 'WWE', 'World Wrestling Entertainment', 'Undertaker', 20, '2019-12-16 13:11:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courseenrolls`
--

CREATE TABLE `courseenrolls` (
  `id` int(11) NOT NULL,
  `studentRegno` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `course` int(11) DEFAULT NULL,
  `enrollDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courseenrolls`
--

INSERT INTO `courseenrolls` (`id`, `studentRegno`, `pincode`, `course`, `enrollDate`) VALUES
(45, '17022', '920698', 1, '2019-12-16 13:20:38'),
(46, '17022', '920698', 2, '2019-12-16 13:20:40'),
(47, '17022', '920698', 4, '2019-12-16 13:20:44'),
(48, '17022', '920698', 5, '2019-12-16 13:20:46'),
(49, '17022', '920698', 7, '2019-12-16 13:20:49');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `StudentRegno` varchar(255) NOT NULL,
  `studentPhoto` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `studentName` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `cgpa` decimal(10,2) DEFAULT NULL,
  `creationdate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`StudentRegno`, `studentPhoto`, `password`, `studentName`, `pincode`, `cgpa`, `creationdate`, `updationDate`) VALUES
('16022', NULL, 'f925916e2754e5e03f75dd58a5733251', 'ÄÄƒng', '499958', NULL, '2019-12-16 08:22:06', NULL),
('17022', 'táº£i xuá»‘ng.jpg', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyá»…n Äá»©c Phi Há»“ng', '920698', '10.00', '2019-12-16 10:13:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `studentRegno` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `studentRegno`, `userip`, `loginTime`, `logout`, `status`) VALUES
(20, '10806121', 0x3a3a3100000000000000000000000000, '2019-10-20 09:42:19', NULL, 1),
(21, '10806121', 0x3a3a3100000000000000000000000000, '2019-11-17 12:12:07', NULL, 1),
(22, '10806121', 0x3a3a3100000000000000000000000000, '2019-12-05 13:07:05', NULL, 1),
(23, '10806121', 0x3a3a3100000000000000000000000000, '2019-12-08 13:24:56', '08-12-2019 07:00:20 PM', 1),
(24, '10806121', 0x3a3a3100000000000000000000000000, '2019-12-08 13:30:34', NULL, 1),
(25, '10806121', 0x3a3a3100000000000000000000000000, '2019-12-08 15:19:43', NULL, 1),
(26, '10806121', 0x3a3a3100000000000000000000000000, '2019-12-08 15:20:05', NULL, 1),
(27, '10806121', 0x3a3a3100000000000000000000000000, '2019-12-08 15:20:23', NULL, 1),
(28, '10806121', 0x3a3a3100000000000000000000000000, '2019-12-08 15:21:23', NULL, 1),
(29, '10806121', 0x3a3a3100000000000000000000000000, '2019-12-08 15:22:56', NULL, 1),
(30, '10806121', 0x3a3a3100000000000000000000000000, '2019-12-08 15:24:30', NULL, 1),
(31, '10806121', 0x3a3a3100000000000000000000000000, '2019-12-08 15:25:02', NULL, 1),
(32, '10806121', 0x3a3a3100000000000000000000000000, '2019-12-08 15:26:07', '08-12-2019 08:57:24 PM', 1),
(33, '10806121', 0x3a3a3100000000000000000000000000, '2019-12-08 15:27:31', NULL, 1),
(34, '10806121', 0x3a3a3100000000000000000000000000, '2019-12-08 15:27:37', '08-12-2019 08:57:53 PM', 1),
(35, '10806121', 0x3a3a3100000000000000000000000000, '2019-12-08 15:27:57', '08-12-2019 09:02:06 PM', 1),
(36, '10806121', 0x3a3a3100000000000000000000000000, '2019-12-08 15:32:14', NULL, 1),
(37, '17022', 0x3a3a3100000000000000000000000000, '2019-12-16 08:22:43', NULL, 1),
(38, '17022', 0x3a3a3100000000000000000000000000, '2019-12-16 08:27:43', NULL, 1),
(39, '17022', 0x3a3a3100000000000000000000000000, '2019-12-16 08:51:39', NULL, 1),
(40, '17022', 0x3a3a3100000000000000000000000000, '2019-12-16 12:40:47', '16-12-2019 06:13:58 PM', 1),
(41, '17022', 0x3a3a3100000000000000000000000000, '2019-12-16 12:53:26', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courseenrolls`
--
ALTER TABLE `courseenrolls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `studentRegno` (`studentRegno`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`StudentRegno`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `courseenrolls`
--
ALTER TABLE `courseenrolls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courseenrolls`
--
ALTER TABLE `courseenrolls`
  ADD CONSTRAINT `studentRegno` FOREIGN KEY (`studentRegno`) REFERENCES `students` (`StudentRegno`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
