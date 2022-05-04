-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3308
-- Generation Time: May 04, 2022 at 05:16 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fms`
--
DROP DATABASE IF EXISTS `fms`;
CREATE DATABASE IF NOT EXISTS `fms` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `fms`;

-- --------------------------------------------------------

--
-- Table structure for table `app_logs`
--

CREATE TABLE `app_logs` (
  `log_id` int(11) NOT NULL,
  `Timestamp` varchar(255) DEFAULT NULL,
  `Action` varchar(255) DEFAULT NULL,
  `TableName` varchar(255) DEFAULT NULL,
  `RecordID` varchar(255) DEFAULT NULL,
  `SqlQuery` text,
  `UserID` varchar(255) DEFAULT NULL,
  `ServerIP` varchar(255) DEFAULT NULL,
  `RequestUrl` text,
  `RequestData` text,
  `RequestCompleted` varchar(255) DEFAULT NULL,
  `RequestMsg` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text,
  `file` varchar(255) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`) VALUES
(1, 'Administrator'),
(2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

CREATE TABLE `role_permissions` (
  `permission_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `page_name` varchar(255) NOT NULL,
  `action_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role_permissions`
--

INSERT INTO `role_permissions` (`permission_id`, `role_id`, `page_name`, `action_name`) VALUES
(40, 1, 'files', 'list'),
(41, 1, 'files', 'view'),
(42, 1, 'files', 'add'),
(43, 1, 'files', 'edit'),
(44, 1, 'files', 'editfield'),
(45, 1, 'files', 'delete'),
(46, 1, 'files', 'import_data'),
(47, 1, 'users', 'list'),
(48, 1, 'users', 'view'),
(49, 1, 'users', 'add'),
(50, 1, 'users', 'edit'),
(51, 1, 'users', 'editfield'),
(52, 1, 'users', 'delete'),
(53, 1, 'users', 'import_data'),
(54, 1, 'users', 'userregister'),
(55, 1, 'users', 'accountedit'),
(56, 1, 'users', 'accountview'),
(57, 1, 'role_permissions', 'list'),
(58, 1, 'role_permissions', 'view'),
(59, 1, 'role_permissions', 'add'),
(60, 1, 'role_permissions', 'edit'),
(61, 1, 'role_permissions', 'editfield'),
(62, 1, 'role_permissions', 'delete'),
(63, 1, 'roles', 'list'),
(64, 1, 'roles', 'view'),
(65, 1, 'roles', 'add'),
(66, 1, 'roles', 'edit'),
(67, 1, 'roles', 'editfield'),
(68, 1, 'roles', 'delete'),
(69, 1, 'app_logs', 'list'),
(70, 1, 'app_logs', 'view'),
(71, 2, 'files', 'list'),
(72, 2, 'files', 'view'),
(73, 2, 'files', 'add'),
(74, 2, 'files', 'edit'),
(75, 2, 'files', 'editfield'),
(76, 2, 'files', 'delete'),
(77, 2, 'files', 'import_data'),
(78, 2, 'users', 'userregister'),
(79, 2, 'users', 'accountedit'),
(80, 2, 'users', 'accountview');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `login_session_key` varchar(255) DEFAULT NULL,
  `email_status` varchar(255) DEFAULT NULL,
  `password_expire_date` datetime DEFAULT '2022-08-04 00:00:00',
  `password_reset_key` varchar(255) DEFAULT NULL,
  `user_role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `fullname`, `date_created`, `date_updated`, `photo`, `login_session_key`, `email_status`, `password_expire_date`, `password_reset_key`, `user_role_id`) VALUES
(1, 'admin', '$2y$10$47g4k.h6eALpPqpdfa4kYOgvdK0UweVX5fFOlHFDDz6Ot8XO1MMTm', 'admin@admin.com', 'Admin', '2022-05-04 04:04:12', '2022-05-04 04:04:12', 'http://localhost:6066/radclassic/filemanagementsystem/uploads/files/7s9bjkwi34xdyn8.png', NULL, NULL, '2022-08-04 00:00:00', NULL, 1),
(2, 'user', '$2y$10$O5IwLCfLDiBTLBZLQGJC7.QXAFw4wV29lazEsRrvnOW4bpC9mbwR6', 'user@user.com', 'User', '2022-05-04 04:17:27', '2022-05-04 04:17:27', NULL, NULL, NULL, '2022-08-04 00:00:00', NULL, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_logs`
--
ALTER TABLE `app_logs`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `role_name` (`role_name`);

--
-- Indexes for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_logs`
--
ALTER TABLE `app_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `permission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
