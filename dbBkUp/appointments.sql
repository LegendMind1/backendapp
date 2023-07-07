-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2023 at 10:15 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_docs`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(10) UNSIGNED NOT NULL,
  `symptoms` longtext DEFAULT NULL,
  `desc` longtext DEFAULT NULL,
  `aptstatus` varchar(255) DEFAULT NULL,
  `aptdate` varchar(255) DEFAULT NULL,
  `patientid` bigint(20) DEFAULT NULL,
  `doctorid` bigint(20) DEFAULT NULL,
  `diagnosis` longtext DEFAULT NULL,
  `commentsbydoc` longtext DEFAULT NULL,
  `presc` longtext DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `docname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `symptoms`, `desc`, `aptstatus`, `aptdate`, `patientid`, `doctorid`, `diagnosis`, `commentsbydoc`, `presc`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `docname`) VALUES
(1, 'Headache, Heart Pepation', 'sad', 'REQUESTED', 'Fri Jul 14 2023', 37, 1001, NULL, NULL, NULL, '2023-07-07 22:36:52.476000', '2023-07-07 22:36:52.476000', '2023-07-07 22:36:52.470000', NULL, NULL, 'Dr. Baqir'),
(2, 'Headache, Heart Pepation, Fever', 'sad', 'REQUESTED', 'Sat Jul 22 2023', 37, 1001, NULL, NULL, NULL, '2023-07-07 22:37:55.452000', '2023-07-07 22:37:55.452000', '2023-07-07 22:37:55.449000', NULL, NULL, 'Dr. Baqir'),
(7, 'Fever', 'Not well', 'REQUESTED', 'Fri Jul 21 2023', 37, 1001, NULL, NULL, NULL, '2023-07-07 22:58:32.680000', '2023-07-07 22:58:32.680000', '2023-07-07 22:58:32.677000', NULL, NULL, 'Dr. Azam'),
(8, 'Headache, Cold, Fever', 'Not well Truly', 'REQUESTED', 'Tue Jul 25 2023', 37, 1001, NULL, NULL, NULL, '2023-07-07 23:03:43.126000', '2023-07-07 23:03:43.126000', '2023-07-07 23:03:43.123000', NULL, NULL, 'Dr. Niaz Bashir'),
(9, 'Fever', 'Not well Truly', 'REQUESTED', 'Sat Jul 15 2023', 37, 1001, NULL, NULL, NULL, '2023-07-07 23:10:23.890000', '2023-07-07 23:10:23.890000', '2023-07-07 23:10:23.885000', NULL, NULL, 'Paris'),
(10, 'Cold', 'Not well', 'REQUESTED', 'Wed Jul 12 2023', 37, 1001, NULL, NULL, NULL, '2023-07-08 01:02:18.477000', '2023-07-08 01:02:18.477000', '2023-07-08 01:02:18.473000', NULL, NULL, 'Dr. Ahmer'),
(11, 'Headache, Fever, Cold', 'I am very tired and not well. My head spins all the time.', 'REQUESTED', 'Wed Aug 02 2023', 37, 1001, NULL, NULL, NULL, '2023-07-08 01:05:40.786000', '2023-07-08 01:05:40.786000', '2023-07-08 01:05:40.784000', NULL, NULL, 'Dr. Azam');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appointments_created_by_id_fk` (`created_by_id`),
  ADD KEY `appointments_updated_by_id_fk` (`updated_by_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `appointments_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
