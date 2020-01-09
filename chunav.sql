-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2020 at 08:11 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chunav2`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) NOT NULL,
  `active` int(4) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `profile_group_id` tinyint(4) NOT NULL,
  `organization` varchar(50) NOT NULL,
  `isOtp` tinyint(4) DEFAULT 1,
  `otp` char(6) DEFAULT NULL,
  `country` varchar(100) NOT NULL,
  `remark` text DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_date` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `mobile`, `active`, `name`, `profile_group_id`, `organization`, `isOtp`, `otp`, `country`, `remark`, `created_date`, `updated_date`, `status`) VALUES
(1, 'MK Gupta', '123456', 'mk@datagenit.com', '9988758128', 1, 'MK Gupta', 1, 'datagenit', 0, NULL, '', '', '2018-08-08 14:31:05', '2020-01-08 23:01:44', 1),
(2, 'Admin', '321@123', 'shrma.ashhish48@gmail.com', '9716568142', 1, 'Admin', 2, 'Datagen Internet Services', 0, '9452', '', '', '2018-08-16 04:40:54', '2019-11-28 13:32:51', 1),
(3, 'ashu', '1@123', 'shrma.ashhish48@gmail.com', '8448011802', 1, 'test', 3, 'qweq', 0, NULL, '', '', '2018-09-22 02:10:42', '2019-11-28 13:32:16', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `smIdx` (`username`,`active`),
  ADD KEY `usrPwd` (`username`,`password`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1055;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
