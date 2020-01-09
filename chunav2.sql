-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2020 at 09:02 AM
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
-- Table structure for table `form_uid1_20200108140741`
--

CREATE TABLE `form_uid1_20200108140741` (
  `id` int(11) NOT NULL,
  `Namelast` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT current_timestamp(),
  `updated_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `form_uid1_20200108140818`
--

CREATE TABLE `form_uid1_20200108140818` (
  `id` int(11) NOT NULL,
  `FirstName` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `NameLast` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT current_timestamp(),
  `updated_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `form_uid1_20200109064947`
--

CREATE TABLE `form_uid1_20200109064947` (
  `id` int(11) NOT NULL,
  `created_date` timestamp NULL DEFAULT current_timestamp(),
  `updated_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `form_uid1_20200109065013`
--

CREATE TABLE `form_uid1_20200109065013` (
  `id` int(11) NOT NULL,
  `created_date` timestamp NULL DEFAULT current_timestamp(),
  `updated_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `form_uid1_20200109065045`
--

CREATE TABLE `form_uid1_20200109065045` (
  `id` int(11) NOT NULL,
  `created_date` timestamp NULL DEFAULT current_timestamp(),
  `updated_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_forms`
--

CREATE TABLE `tbl_forms` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `form_fields` text DEFAULT NULL,
  `user_id` text NOT NULL,
  `form_html` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `form_table_name` varchar(100) DEFAULT NULL,
  `form_url` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `edited_by` smallint(6) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_forms`
--

INSERT INTO `tbl_forms` (`id`, `name`, `form_fields`, `user_id`, `form_html`, `form_table_name`, `form_url`, `edited_by`, `created_date`, `updated_date`, `status`) VALUES
(1, ' Survey Form Title Name ', 'Namelast', '1', '\n\n                        <div class=\"form-group\"> <label contenteditable=\"true\" class=\"label-name\" for=\"exampleName\"> Name last&nbsp;&nbsp;</label> <span class=\"edit-section-delete\" id=\"Namelabeledit\">Delete</span> <input type=\"text\" name=\"Namelast\" class=\"form-control\" placeholder=\"Full Name\"></div> ', 'form_uid1_20200108140741', 'NA', NULL, '2020-01-08 22:07:41', '2020-01-08 13:07:41', 0),
(2, ' Survey Form Title Name ', 'FirstName,NameLast', '1', '\n\n                        <div class=\"form-group\"> <label contenteditable=\"true\" class=\"label-name\" for=\"exampleName\">First Name&nbsp; &nbsp;</label> <span class=\"edit-section-delete\" id=\"Namelabeledit\">Delete</span> <input type=\"text\" name=\"FirstName\" class=\"form-control\" placeholder=\"Full Name\"></div> <div class=\"form-group\"> <label contenteditable=\"true\" class=\"label-name\" for=\"exampleName\">&nbsp;Name Last&nbsp;&nbsp;</label> <span class=\"edit-section-delete\" id=\"Namelabeledit\">Delete</span> <input type=\"text\" name=\"NameLast\" class=\"form-control\" placeholder=\"Full Name\"></div> ', 'form_uid1_20200108140818', 'NA', NULL, '2020-01-08 22:08:18', '2020-01-08 13:08:18', 0),
(3, ' Survey Form Title Name ', '', '1', '\n\n                        ', 'form_uid1_20200109064947', 'NA', NULL, '2020-01-09 14:49:47', '2020-01-09 05:49:47', 0),
(4, ' Survey Form Title Name ', '', '1', '\n\n                        ', 'form_uid1_20200109065013', 'NA', NULL, '2020-01-09 14:50:13', '2020-01-09 05:50:13', 0),
(5, ' Survey Form Title Name ', '', '1', '\n\n                        ', 'form_uid1_20200109065045', 'NA', NULL, '2020-01-09 14:50:45', '2020-01-09 05:50:45', 0);

-- --------------------------------------------------------

--
-- Table structure for table `userformsetting`
--

CREATE TABLE `userformsetting` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `default_formid` int(11) NOT NULL,
  `edited_by` int(11) NOT NULL,
  `other_activeforms` varchar(200) NOT NULL,
  `updated_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Table structure for table `user_profile_group`
--

CREATE TABLE `user_profile_group` (
  `id` int(11) NOT NULL,
  `group_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_profile_group`
--

INSERT INTO `user_profile_group` (`id`, `group_name`) VALUES
(1, 'Super Admin'),
(2, 'Admin'),
(3, 'User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `form_uid1_20200108140741`
--
ALTER TABLE `form_uid1_20200108140741`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_uid1_20200108140818`
--
ALTER TABLE `form_uid1_20200108140818`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_uid1_20200109064947`
--
ALTER TABLE `form_uid1_20200109064947`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_uid1_20200109065013`
--
ALTER TABLE `form_uid1_20200109065013`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_uid1_20200109065045`
--
ALTER TABLE `form_uid1_20200109065045`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_forms`
--
ALTER TABLE `tbl_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userformsetting`
--
ALTER TABLE `userformsetting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `smIdx` (`username`,`active`),
  ADD KEY `usrPwd` (`username`,`password`);

--
-- Indexes for table `user_profile_group`
--
ALTER TABLE `user_profile_group`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `form_uid1_20200108140741`
--
ALTER TABLE `form_uid1_20200108140741`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_uid1_20200108140818`
--
ALTER TABLE `form_uid1_20200108140818`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_uid1_20200109064947`
--
ALTER TABLE `form_uid1_20200109064947`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_uid1_20200109065013`
--
ALTER TABLE `form_uid1_20200109065013`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_uid1_20200109065045`
--
ALTER TABLE `form_uid1_20200109065045`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_forms`
--
ALTER TABLE `tbl_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `userformsetting`
--
ALTER TABLE `userformsetting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1055;

--
-- AUTO_INCREMENT for table `user_profile_group`
--
ALTER TABLE `user_profile_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
