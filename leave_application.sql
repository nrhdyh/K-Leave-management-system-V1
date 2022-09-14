-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2022 at 10:15 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `leave_application`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `emp_no` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_tel` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `emp_no`, `email`, `no_tel`, `pass`) VALUES
(1, 'admin 12', '0002', 'test@gmail.com', 'efefef', '123'),
(2, 'TEST1', 'TEST1', 'test@gmail.com', '4314335', 'test1');

-- --------------------------------------------------------

--
-- Table structure for table `hr`
--

CREATE TABLE `hr` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `emp_no` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_tel` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `hr`
--

INSERT INTO `hr` (`id`, `name`, `emp_no`, `email`, `no_tel`, `pass`) VALUES
(1, 'hidayah', 'S0098', 'test@gmail.com', 'r1221312', '123'),
(2, 'TEST2', 'test2', 'test@gmail.com', '2322332', '123'),
(3, 'TEST1', 'test1', 'test@gmail.com', '231231', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `name` varchar(100) NOT NULL,
  `id` int(100) NOT NULL,
  `emp_no` varchar(20) NOT NULL,
  `dept` varchar(30) NOT NULL,
  `day` int(10) NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `half_day` varchar(100) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `type_leave` varchar(100) NOT NULL,
  `others` varchar(250) NOT NULL,
  `date` date NOT NULL,
  `process` varchar(100) NOT NULL,
  `process_hod` varchar(100) NOT NULL,
  `balanced_AL` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`name`, `id`, `emp_no`, `dept`, `day`, `start`, `end`, `half_day`, `reason`, `type_leave`, `others`, `date`, `process`, `process_hod`, `balanced_AL`) VALUES
('email', 1, 'S0098', 'ACCOUNT', 3, '2022-09-13', '2022-09-15', 'Evening', '3', 'Traning', '', '2022-09-13', 'Review', 'Review', '4'),
('nur hidayah', 2, 'S0098', 'ACCOUNT', 3, '2022-09-13', '2022-09-15', 'Evening', '2', 'Medical', '', '2022-09-13', 'Review', 'Review', '4'),
('nur hidayah', 3, 'S0098', 'ACCOUNT', 3, '2022-09-13', '2022-09-15', 'Evening', '2', 'Medical', '', '2022-09-13', 'Review', 'Review', '4'),
('test 2', 4, 'S0001', 'QA', 2, '2022-09-13', '2022-09-15', 'Evening', '2', 'Medical', '', '2022-09-13', 'Review', '', ''),
('sqs', 5, 'S', 'PRODUCTION', 2, '2022-09-17', '2022-09-24', 'Evening', 'S', 'Others', 'OTHER', '2022-09-14', 'Review', 'Review', ''),
('sqs', 6, 'S', 'PRODUCTION', 2, '2022-09-17', '2022-09-24', 'Evening', 'S', 'Others', 'OTHER', '2022-09-14', 'Review', 'Review', ''),
('TEST', 7, '0001', 'ACCOUNT', 4, '2022-09-14', '2022-09-16', 'Evening', 'ww', 'Annual', '', '2022-09-14', 'Review', 'Review', ''),
('no_tel', 8, '0001', 'QA', 2, '2022-09-14', '2022-09-21', '', 's', 'Medical', '', '2022-09-14', 'Review', 'Review', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `role` enum('acc','engineer','hr','marketing','prod','purchasing','qa','qc','stor','system') NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_tel` varchar(100) NOT NULL,
  `dept` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `username`, `password`, `name`, `email`, `no_tel`, `dept`) VALUES
(1, 'acc', 'S0001', '827ccb0eea8a706c4c34a16891f84e7b', 'HOD ACC', 'kennwufact@gmail.com', '0128488392', 'ACCOUNT'),
(2, 'engineer', 'S0002', '827ccb0eea8a706c4c34a16891f84e7b', 'HOD ENGINEERING', 'asyhrah@gmail.com', '0192883729', 'ENGINEERING'),
(3, 'hr', 'S0003', '827ccb0eea8a706c4c34a16891f84e7b', 'HOD HR', 'linaansari9501@gmail.com', '0182737202', 'HR'),
(4, 'marketing', 'S0004', '827ccb0eea8a706c4c34a16891f84e7b', 'HOD MARKETING', 'fikry5475@gmail.com', '0198727389', 'MARKETING'),
(5, 'prod', 'S0005', '827ccb0eea8a706c4c34a16891f84e7b', 'HOD PROD', 'peachbeehq@gmail.com', '0123383334', 'PRODUCTION'),
(6, 'purchasing', 'S0006', '827ccb0eea8a706c4c34a16891f84e7b', 'HOD PURCHASING', 'nrdyhq9501@gmail.com', '0192888392', 'PURCHASING'),
(7, 'qa', 'S0007', '827ccb0eea8a706c4c34a16891f84e7b', 'HOD QA', 'marwan@kennwu.com', '0193773845', 'QA'),
(8, 'qc', 'S0008', '827ccb0eea8a706c4c34a16891f84e7b', 'HOD QC', 'blumilkco@gmail.com', '0173493993', 'QC'),
(9, 'stor', 'S0009', '827ccb0eea8a706c4c34a16891f84e7b', 'HOD STORE', 'pinkla9501@gmail.com', '015732892', 'STORE'),
(10, 'system', 'S0010', '827ccb0eea8a706c4c34a16891f84e7b', 'HOD SYSTEM', 'nurhidayah951@yahoo.com', '0148299388', 'SYSTEM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr`
--
ALTER TABLE `hr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hr`
--
ALTER TABLE `hr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
