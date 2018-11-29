-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2018 at 09:49 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.1.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mywork`
--

-- --------------------------------------------------------

--
-- Table structure for table `leave_tbl`
--

CREATE TABLE `leave_tbl` (
  `id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `reason` text NOT NULL,
  `backup_employee` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leave_tbl`
--

INSERT INTO `leave_tbl` (`id`, `from_date`, `to_date`, `reason`, `backup_employee`, `created_at`) VALUES
(1, '2017-02-04', '2017-05-05', 'hello', 'good', '2018-11-29 02:03:57'),
(2, '2017-02-06', '2017-05-06', 'hello good', 'mahe', '2018-11-29 02:07:48'),
(3, '2017-02-06', '2017-05-06', 'hello goodss', 'mahedd', '2018-11-29 02:08:44'),
(4, '2017-02-06', '2017-05-06', 'hello goodsstt', 'mahedd', '2018-11-29 02:09:47'),
(5, '2017-02-06', '2017-05-06', 'hello goodssttggg', 'mahedd', '2018-11-29 02:10:19'),
(6, '2017-02-12', '2017-05-14', 'Fever', 'Arjun', '2018-11-29 02:15:08');

-- --------------------------------------------------------

--
-- Table structure for table `role_tbl`
--

CREATE TABLE `role_tbl` (
  `id` tinyint(4) NOT NULL,
  `user_category_id` int(11) NOT NULL,
  `role_number` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role_tbl`
--

INSERT INTO `role_tbl` (`id`, `user_category_id`, `role_number`, `created_at`) VALUES
(1, 1, 10, '2018-11-28 23:16:07'),
(2, 2, 20, '2018-11-28 23:16:07'),
(3, 3, 30, '2018-11-28 23:16:23');

-- --------------------------------------------------------

--
-- Table structure for table `user_category_tbl`
--

CREATE TABLE `user_category_tbl` (
  `id` smallint(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_category_tbl`
--

INSERT INTO `user_category_tbl` (`id`, `name`, `created_at`, `modified_at`) VALUES
(1, 'super admin', '2018-11-28 23:13:58', '2018-11-28 23:13:58'),
(2, 'admin', '2018-11-28 23:13:58', '2018-11-28 23:13:58'),
(3, 'employee', '2018-11-28 23:14:22', '2018-11-28 23:14:22');

-- --------------------------------------------------------

--
-- Table structure for table `user_tbl`
--

CREATE TABLE `user_tbl` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `role_id` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_tbl`
--

INSERT INTO `user_tbl` (`id`, `name`, `role_id`, `created_at`, `modified_at`) VALUES
(1, 'sreeyesh', 1, '2018-11-28 23:23:56', '2018-11-28 23:23:56'),
(2, 'arjun', 2, '2018-11-28 23:23:56', '2018-11-28 23:23:56'),
(3, 'john', 3, '2018-11-28 23:24:39', '2018-11-28 23:24:39'),
(4, 'Jason', 2, '2018-11-28 23:24:39', '2018-11-28 23:24:39'),
(5, 'albert', 3, '2018-11-28 23:25:19', '2018-11-28 23:25:19'),
(6, 'Peter', 2, '2018-11-28 23:25:19', '2018-11-28 23:25:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `leave_tbl`
--
ALTER TABLE `leave_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_category_tbl`
--
ALTER TABLE `user_category_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_tbl`
--
ALTER TABLE `user_tbl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `leave_tbl`
--
ALTER TABLE `leave_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_category_tbl`
--
ALTER TABLE `user_category_tbl`
  MODIFY `id` smallint(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_tbl`
--
ALTER TABLE `user_tbl`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
