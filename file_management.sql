-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2024 at 08:26 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `file_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `admin_user` text NOT NULL,
  `admin_password` text NOT NULL,
  `admin_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `name`, `admin_user`, `admin_password`, `admin_status`) VALUES
(14, 'vrajesh', 'admin@gmail.com', '$2y$12$JnjGlghrKer0/BO1NZEiI.SjP3Gdilde0FlrZxF9wWZxtX/zcfP3q', 'Admin'),
(15, 'john', 'admin2@gmail.com', '$2y$12$9A7rno8Zxt0lXBwMa63P.u/m1eI4f3TkwuWRoA6jwnTlnE3f31a/e', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `history_log`
--

CREATE TABLE `history_log` (
  `log_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `email_address` text NOT NULL,
  `action` varchar(100) NOT NULL,
  `actions` varchar(200) NOT NULL DEFAULT 'Has LoggedOut the system at',
  `ip` text NOT NULL,
  `host` text NOT NULL,
  `login_time` varchar(200) NOT NULL,
  `logout_time` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `history_log`
--

INSERT INTO `history_log` (`log_id`, `id`, `email_address`, `action`, `actions`, `ip`, `host`, `login_time`, `logout_time`) VALUES
(0, 3, 'user1@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'DESKTOP-DV3ID09', 'Jul-23-2024 01:03 PM', 'Jul-23-2024 02:18 PM'),
(0, 3, 'user1@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'DESKTOP-DV3ID09', 'Jul-23-2024 01:20 PM', 'Jul-23-2024 02:18 PM'),
(0, 3, 'user1@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'DESKTOP-DV3ID09', 'Jul-23-2024 02:18 PM', 'Jul-23-2024 02:18 PM'),
(0, 3, 'user1@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'DESKTOP-DV3ID09', 'Jul-23-2024 02:20 PM', ''),
(0, 3, 'user1@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'DESKTOP-DV3ID09', 'Jul-23-2024 04:04 PM', ''),
(0, 3, 'user1@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'DESKTOP-DV3ID09', 'Jul-24-2024 04:55 PM', ''),
(0, 3, 'user1@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'DESKTOP-DV3ID09', 'Jul-29-2024 05:09 PM', ''),
(0, 3, 'user1@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'DESKTOP-DV3ID09', 'Jul-29-2024 05:46 PM', '');

-- --------------------------------------------------------

--
-- Table structure for table `history_log1`
--

CREATE TABLE `history_log1` (
  `log_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `admin_user` text NOT NULL,
  `action` varchar(100) NOT NULL,
  `actions` varchar(200) NOT NULL DEFAULT 'Has LoggedOut the system at',
  `ip` text NOT NULL,
  `host` text NOT NULL,
  `login_time` varchar(200) NOT NULL,
  `logout_time` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `history_log1`
--

INSERT INTO `history_log1` (`log_id`, `id`, `admin_user`, `action`, `actions`, `ip`, `host`, `login_time`, `logout_time`) VALUES
(0, 14, 'admin@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'DESKTOP-DV3ID09', 'Jul-21-2024 06:51 PM', 'Jul-29-2024 05:24 PM'),
(0, 14, 'admin@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'DESKTOP-DV3ID09', 'Jul-21-2024 06:58 PM', 'Jul-29-2024 05:24 PM'),
(0, 14, 'admin@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'DESKTOP-DV3ID09', 'Jul-21-2024 07:03 PM', 'Jul-29-2024 05:24 PM'),
(0, 14, 'admin@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'DESKTOP-DV3ID09', 'Jul-23-2024 01:13 PM', 'Jul-29-2024 05:24 PM'),
(0, 15, 'admin2@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'DESKTOP-DV3ID09', 'Jul-23-2024 01:14 PM', 'Jul-23-2024 01:16 PM'),
(0, 14, 'admin@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'DESKTOP-DV3ID09', 'Jul-23-2024 01:16 PM', 'Jul-29-2024 05:24 PM'),
(0, 15, 'admin2@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'DESKTOP-DV3ID09', 'Jul-23-2024 01:17 PM', ''),
(0, 15, 'admin2@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'DESKTOP-DV3ID09', 'Jul-23-2024 01:20 PM', ''),
(0, 14, 'admin@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'DESKTOP-DV3ID09', 'Jul-23-2024 02:22 PM', 'Jul-29-2024 05:24 PM'),
(0, 14, 'admin@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'DESKTOP-DV3ID09', 'Jul-23-2024 02:50 PM', 'Jul-29-2024 05:24 PM'),
(0, 14, 'admin@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'DESKTOP-DV3ID09', 'Jul-24-2024 04:55 PM', 'Jul-29-2024 05:24 PM'),
(0, 14, 'admin@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'DESKTOP-DV3ID09', 'Jul-25-2024 05:40 PM', 'Jul-29-2024 05:24 PM'),
(0, 14, 'admin@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'DESKTOP-DV3ID09', 'Jul-29-2024 12:56 PM', 'Jul-29-2024 05:24 PM'),
(0, 14, 'admin@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'DESKTOP-DV3ID09', 'Jul-29-2024 05:08 PM', 'Jul-29-2024 05:24 PM'),
(0, 14, 'admin@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'DESKTOP-DV3ID09', 'Jul-29-2024 05:48 PM', '');

-- --------------------------------------------------------

--
-- Table structure for table `login_user`
--

CREATE TABLE `login_user` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email_address` text NOT NULL,
  `user_password` text NOT NULL,
  `user_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login_user`
--

INSERT INTO `login_user` (`id`, `name`, `email_address`, `user_password`, `user_status`) VALUES
(2, 'shiv', 'user@gmail.com', '$2y$12$uwf3RWFmt7hkAcX/SS/WuOaz6OzSjqxjKGR.wx5268CVXpl0xkxuy', ''),
(3, 'vraj', 'user1@gmail.com', '$2y$12$6V1ETdCuQMn8C7/we06Lg.KrJUHqsFiP/9m26wajW5oEm6/2HiElu', '');

-- --------------------------------------------------------

--
-- Table structure for table `upload_files`
--

CREATE TABLE `upload_files` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(200) NOT NULL,
  `SIZE` varchar(200) NOT NULL,
  `DOWNLOAD` varchar(200) NOT NULL,
  `TIMERS` varchar(200) NOT NULL,
  `ADMIN_STATUS` varchar(300) NOT NULL,
  `EMAIL` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `upload_files`
--

INSERT INTO `upload_files` (`ID`, `NAME`, `SIZE`, `DOWNLOAD`, `TIMERS`, `ADMIN_STATUS`, `EMAIL`) VALUES
(3, 'Report WAAREE Divyen .pdf', '1668760', '1', 'Jul-21-2024 06:56 PM', 'Admin', 'Vrajesh'),
(4, 'Format of Summer Internship Report_July 2024.pdf', '618750', '2', 'Jul-23-2024 01:15 PM', 'Admin', 'John'),
(5, 'urgent attention required.pdf', '618750', '0', 'Jul-23-2024 01:57 PM', 'Admin', 'John'),
(7, 'PROJECT REPORT 7TH SEM.pdf', '924172', '0', 'Jul-29-2024 05:13 PM', 'Admin', 'Vrajesh'),
(8, 'Front Pages.pdf', '262365', '0', 'Jul-29-2024 05:49 PM', 'Admin', 'Vrajesh');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_user`
--
ALTER TABLE `login_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload_files`
--
ALTER TABLE `upload_files`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `login_user`
--
ALTER TABLE `login_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `upload_files`
--
ALTER TABLE `upload_files`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
