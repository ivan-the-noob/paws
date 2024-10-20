-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2024 at 03:46 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `paws`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `owner_name` varchar(255) NOT NULL,
  `contact_num` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `barangay` varchar(255) DEFAULT NULL,
  `pet_type` varchar(50) NOT NULL,
  `breed` varchar(100) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `service_category` varchar(50) NOT NULL,
  `service` varchar(255) NOT NULL,
  `payment` decimal(10,2) NOT NULL,
  `appointment_time` time NOT NULL,
  `appointment_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `add_info` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `approved_req`
--

CREATE TABLE `approved_req` (
  `id` int(11) NOT NULL,
  `owner_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `service` varchar(100) NOT NULL,
  `contact_num` varchar(15) NOT NULL,
  `barangay` varchar(100) NOT NULL,
  `pet_type` varchar(50) NOT NULL,
  `breed` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `payment` decimal(10,2) NOT NULL,
  `appointment_time` time NOT NULL,
  `appointment_date` date NOT NULL,
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL,
  `add_info` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `approved_req`
--

INSERT INTO `approved_req` (`id`, `owner_name`, `email`, `service`, `contact_num`, `barangay`, `pet_type`, `breed`, `age`, `payment`, `appointment_time`, `appointment_date`, `latitude`, `longitude`, `add_info`, `created_at`) VALUES
(1, '', '', '', '', '', '', '', 0, 0.00, '00:00:00', '0000-00-00', 14.29766962, 120.86687720, '', '2024-10-16 06:41:23'),
(2, '', '', '', '', '', '', '', 0, 0.00, '00:00:00', '0000-00-00', 0.00000000, 0.00000000, '', '2024-10-16 15:52:29'),
(3, '', '', '', '', '', '', '', 0, 0.00, '00:00:00', '0000-00-00', 0.00000000, 0.00000000, '', '2024-10-16 15:52:44'),
(4, '', '', '', '', '', '', '', 0, 0.00, '00:00:00', '0000-00-00', 14.29766962, 0.00000000, '', '2024-10-16 15:53:43'),
(5, 'Ivan Ablanida', 'ejivancablanida@gmail.com', 'Surgical Services', '091234567889', 'Osorio', 'Cat', '12', 12, 2500.00, '09:41:00', '2024-10-16', 14.29766962, 0.00000000, 'das', '2024-10-16 15:55:59'),
(6, 'Ivan Ablanida', 'ejivancablanida@gmail.com', 'Pharmacy', '091234567889', '', 'Cat', '12', 12, 300.00, '10:57:00', '2024-10-16', 14.28383250, 120.86687720, 'das', '2024-10-16 15:57:23'),
(7, 'Ivan Ablanida', 'ejivancablanida@gmail.com', 'Surgical Services', '091234567889', 'Osorio', 'Cat', '12', 12, 2500.00, '09:41:00', '2024-10-16', 14.29766962, 0.00000000, 'das', '2024-10-16 15:58:08'),
(8, 'Ivan Ablanida', 'ejivancablanida@gmail.com', 'Surgical Services', '091234567889', 'Osorio', 'Cat', '12', 12, 2500.00, '09:41:00', '2024-10-16', 14.29766962, 0.00000000, 'das', '2024-10-16 16:00:55'),
(9, 'Ivan Ablanida', 'ejivancablanida@gmail.com', 'Pharmacy', '091234567889', '', 'Cat', '12', 12, 300.00, '10:57:00', '2024-10-16', 14.28383250, 120.86687720, 'das', '2024-10-16 16:04:08'),
(10, 'Ivan Ablanida', 'ejivancablanida@gmail.com', 'Surgical Services', '091234567889', 'Osorio', 'Cat', '12', 12, 2500.00, '09:41:00', '2024-10-16', 14.29766962, 0.00000000, 'das', '2024-10-16 17:38:19'),
(11, 'Ivan Ablanida', 'ejivancablanida@gmail.com', 'Surgical Services', '091234567889', 'Osorio', 'Cat', '12', 12, 2500.00, '09:41:00', '2024-10-16', 14.29766962, 0.00000000, 'das', '2024-10-16 17:49:31'),
(12, 'Ivan Ablanida', 'ejivancablanida@gmail.com', 'Internal Medicine Consults', '091234567889', 'Cabuco', 'Cat', '12', 12, 1500.00, '10:49:00', '2024-10-16', 14.27935990, 0.00000000, 'das', '2024-10-16 17:50:49'),
(13, 'Ivan Ablanida', 'ejivancablanida@gmail.com', 'Internal Medicine Consults', '091234567889', 'Cabuco', 'Cat', '12', 12, 1500.00, '10:49:00', '2024-10-16', 14.27935990, 0.00000000, 'das', '2024-10-16 17:50:58'),
(14, 'Ivan Ablanida', 'ejivancablanida@gmail.com', 'Internal Medicine Consults', '091234567889', 'Cabuco', 'Cat', '12', 12, 1500.00, '10:49:00', '2024-10-16', 14.27935990, 0.00000000, 'das', '2024-10-16 17:51:04'),
(40, 'Ivan Ablanida', 'ejivancablanida@gmail.com', 'Surgical Services', '091234567889', 'Osorio', 'Cat', '12', 12, 2500.00, '09:41:00', '2024-10-16', 14.29766962, 0.00000000, 'das', '2024-10-16 17:52:26'),
(46, 'Ivan Ablanida', 'ejivancablanida@gmail.com', 'Internal Medicine Consults', '091234567889', 'Cabuco', 'Cat', '12', 12, 1500.00, '10:49:00', '2024-10-16', 14.27935990, 0.00000000, 'das', '2024-10-16 17:52:29'),
(47, 'Ivan Ablanida', 'ejivancablanida@gmail.com', 'Grooming', '091234567889', 'Cabuco', 'Cat', '12', 12, 999.00, '16:14:00', '2024-10-16', 14.27931831, 120.84477679, 'das', '2024-10-16 21:13:06');

-- --------------------------------------------------------

--
-- Table structure for table `check_up`
--

CREATE TABLE `check_up` (
  `id` int(11) NOT NULL,
  `owner_name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `active_number` varchar(20) NOT NULL,
  `pet_name` varchar(255) NOT NULL,
  `species` enum('Canine','Feline') NOT NULL,
  `color` varchar(50) NOT NULL,
  `pet_birthdate` date NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `breed` varchar(255) NOT NULL,
  `diet` varchar(255) NOT NULL,
  `bcs` enum('1','2','3','4','5') NOT NULL,
  `stool` enum('firm','watery_wet') NOT NULL,
  `chief_complaint` text DEFAULT NULL,
  `treatment` text DEFAULT NULL,
  `vomiting` enum('yes','no') NOT NULL,
  `ticks_fleas` enum('present','none') NOT NULL,
  `lepto` enum('+','-') NOT NULL,
  `chw` enum('+','-') NOT NULL,
  `cpv` enum('+','-') NOT NULL,
  `cdv` enum('+','-') NOT NULL,
  `cbc` enum('+','-') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `check_up`
--

INSERT INTO `check_up` (`id`, `owner_name`, `date`, `address`, `active_number`, `pet_name`, `species`, `color`, `pet_birthdate`, `gender`, `breed`, `diet`, `bcs`, `stool`, `chief_complaint`, `treatment`, `vomiting`, `ticks_fleas`, `lepto`, `chw`, `cpv`, `cdv`, `cbc`) VALUES
(18, 'Ivan', '2024-10-10', 'Trece Martires City Cavite', '123', 'Neoma', 'Canine', 'Black', '2024-10-25', 'male', 'Husky', 'dsadsa', '3', 'firm', 'das', 'dasda', 'yes', 'present', '+', '+', '-', '+', '-'),
(19, 'Test', '2024-10-03', 'Trece Martires', '123', 'Neoma', 'Canine', 'BVlack', '2024-10-03', 'female', 'Husky', 'a', '4', 'firm', 'dasd', 'dsadas', 'no', 'present', '+', '+', '-', '-', '-'),
(20, 'Test', '2024-10-26', 'dasdas', '123', 'Neoma', 'Canine', 'BVlack', '2024-10-31', 'female', 'dasdasda', 'dasdasdadasdasdasdas', '4', 'firm', 'ba', 'ba', 'no', 'present', '+', '+', '+', '+', '-'),
(21, 'Test', '2024-10-03', 'dasdsa', '123', 'Neoma', 'Canine', 'BVlack', '2024-10-02', 'female', 'dsadsa', 'dsadas', '5', 'firm', 'dasd', 'asdasdasdsa', 'no', 'present', '+', '+', '+', '+', '+'),
(22, 'Ivan Ablanida', '2024-10-08', 'Trece Martires City Cavite', '123', 'Neoma', 'Feline', 'Black', '2024-10-23', 'male', 'dsadsa', 'dasdsadas', '3', 'firm', 'das', 'dasdasda', 'yes', 'present', '+', '-', '+', '-', '-'),
(23, 'Test', '2024-10-03', 'dasdsa', '123', 'Neoma', 'Canine', 'BVlack', '2024-10-02', 'female', 'dsadsa', 'dsadas', '5', 'firm', 'dasd', 'asdasdasdsa', 'no', 'present', '+', '+', '+', '+', '+'),
(24, 'Ivan', '2024-10-10', 'Trece Martires City Cavite', '123', 'Neoma', 'Canine', 'Black', '2024-10-25', 'male', 'Husky', 'dsadsa', '3', 'firm', 'das', 'dasda', 'yes', 'present', '+', '+', '-', '+', '-'),
(25, 'Test', '2024-10-03', 'dasdsa', '123', 'Neoma', 'Canine', 'BVlack', '2024-10-02', 'female', 'dsadsa', 'dsadas', '5', 'firm', 'dasd', 'asdasdasdsa', 'no', 'present', '+', '+', '+', '+', '+'),
(26, 'Test', '2024-10-03', 'dasdsa', '123', 'Neoma', 'Canine', 'BVlack', '2024-10-02', 'female', 'dsadsa', 'dsadas', '5', 'firm', 'dasd', 'asdasdasdsa', 'no', 'present', '+', '+', '+', '+', '+');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `role` enum('user','admin') NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `role`) VALUES
(1, 'ej', 'ej@gmail.com', '$2y$10$0aciurOYLqF49zhYkRtOfesnIn56cODY9resdBwFYFmgkKIxEGEDG', '2024-08-21 07:19:09', 'user'),
(4, 'admin', 'admin@gmail.com', '$2y$10$B25A3lxkpj0t.XDzOg8Zz.fbqiofhTBTSPxZVWlH4oYRAc.CyOr12', '2024-08-21 23:18:15', 'admin'),
(5, 'Ej Ivan Ablanida', 'ejivancablanida@gmail.com', '$2y$10$aP1nlRV3aYsY5RBAIAyoJOCDLZqWDtsqBF37U8kja/xrs42LEFY9O', '2024-10-14 06:17:37', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `wellness`
--

CREATE TABLE `wellness` (
  `id` int(11) NOT NULL,
  `owner_name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `active_number` varchar(50) NOT NULL,
  `pet_name` varchar(255) NOT NULL,
  `species` varchar(100) NOT NULL,
  `color` varchar(50) NOT NULL,
  `pet_birthdate` date NOT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `breed` varchar(100) NOT NULL,
  `diet` text NOT NULL,
  `date_given_dwrm` varchar(255) DEFAULT NULL,
  `weight_dwrm` varchar(255) DEFAULT NULL,
  `treatment_dwrm` varchar(255) DEFAULT NULL,
  `observation_dwrm` varchar(255) DEFAULT NULL,
  `follow_up_dwrm` varchar(255) DEFAULT NULL,
  `date_given_vac` varchar(255) DEFAULT NULL,
  `weight_vac` varchar(255) DEFAULT NULL,
  `treatment_vac` varchar(255) DEFAULT NULL,
  `observation_vac` varchar(255) DEFAULT NULL,
  `follow_up_vac` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wellness`
--

INSERT INTO `wellness` (`id`, `owner_name`, `date`, `address`, `active_number`, `pet_name`, `species`, `color`, `pet_birthdate`, `gender`, `breed`, `diet`, `date_given_dwrm`, `weight_dwrm`, `treatment_dwrm`, `observation_dwrm`, `follow_up_dwrm`, `date_given_vac`, `weight_vac`, `treatment_vac`, `observation_vac`, `follow_up_vac`) VALUES
(1, 'ej ej', '2024-10-16', 'dsadsa', '123', 'dasdas', 'Canine', 'BVlack', '2024-10-24', 'Female', 'dasdas', 'dsadas', '0000-00-00', '0.00', 'Array', 'Array', '0000-00-00', '0000-00-00', '0.00', 'Array', 'Array', '0000-00-00'),
(2, 'ej ej', '2024-10-09', 'dsadsa', '12321', 'Neoma', 'Feline', 'Black', '2024-10-31', 'Male', 'dsa', 'dadsa', 'Array', 'Array', 'Array', 'Array', 'Array', 'Array', 'Array', 'Array', 'Array', 'Array');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `approved_req`
--
ALTER TABLE `approved_req`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `check_up`
--
ALTER TABLE `check_up`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `wellness`
--
ALTER TABLE `wellness`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `approved_req`
--
ALTER TABLE `approved_req`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `check_up`
--
ALTER TABLE `check_up`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wellness`
--
ALTER TABLE `wellness`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
