-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2023 at 05:03 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(100) NOT NULL,
  `p_name` varchar(20) NOT NULL,
  `Department_name` enum('Dentists','Neurology','Ophthalmology','Orthopedics','Cancer','ENT') NOT NULL,
  `Doctor` varchar(50) NOT NULL,
  `Date` varchar(20) NOT NULL,
  `Time` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `Phone` int(20) NOT NULL,
  `Message` varchar(500) NOT NULL,
  `Doctor_Status` enum('active','inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `p_name`, `Department_name`, `Doctor`, `Date`, `Time`, `email`, `Phone`, `Message`, `Doctor_Status`) VALUES
(1, 'Mohim', 'Dentists', 'Asif Hasnat', '08/09/2023', '5:40 PM', 'mohi@gmail.com', 2147483647, 'yugrbhnvjkdfiuwsdvjnksuijnvkdsdjvk', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `text` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `text`) VALUES
('reza', 'rm1234@gmail.com', 'ambulance info please?');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` int(100) NOT NULL,
  `Department_Name` varchar(20) NOT NULL,
  `Description` varchar(10000) NOT NULL,
  `Department_Status` enum('active','inactive','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `Department_Name`, `Description`, `Department_Status`) VALUES
(1, 'cardiac', 'cardiac cardiac cardiac cardiac cardiac ', 'active'),
(2, 'Neurology', 'neurology neurology neurology', 'active'),
(3, 'cardiac', 'cardiac cardiac cardiac cardiac cardiac ', 'active'),
(5, 'cardiac', 'cardiac cardiac cardiac cardiac cardiac ', 'active'),
(6, 'cardiac', 'cardiac cardiac cardiac cardiac cardiac ', 'active'),
(7, 'cardiac', 'cardiac cardiac cardiac cardiac cardiac ', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doctor_id` int(100) NOT NULL,
  `firstName` varchar(10) NOT NULL,
  `lastName` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `DOB` date NOT NULL,
  `gender` enum('m','f') NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Country` varchar(10) NOT NULL,
  `City` varchar(10) NOT NULL,
  `State` varchar(10) NOT NULL,
  `Postal_Code` int(10) NOT NULL,
  `Biography` varchar(500) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `Phone` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctor_id`, `firstName`, `lastName`, `username`, `email`, `password`, `DOB`, `gender`, `Address`, `Country`, `City`, `State`, `Postal_Code`, `Biography`, `status`, `Phone`) VALUES
(1, 'Mohim', 'Mohim', 'mr1234', 'mr@gmail.com', '1234', '0000-00-00', 'm', 'asdfghjkl,dfghj,sdf', 'bd', 'dh', 'dh', 1229, 'zawsxecdrfvtgbynhujmik,ol.p;fvtgbyunhjmik,olpcdrftvgbyunhjmik,ol', 'Active', 123456789);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `role` enum('admin','doctor','paitent') NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `username`, `password`, `name`) VALUES
(1, 'admin', 'mohim', '1234', 'Mohim'),
(2, 'doctor', 'wil', '1234', 'Wilson'),
(3, 'paitent', 'reza', '1234', 'Reza');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctor_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
