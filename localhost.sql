-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 13, 2021 at 05:54 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id17748191_printerink`
--
CREATE DATABASE IF NOT EXISTS `id17748191_printerink` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id17748191_printerink`;

-- --------------------------------------------------------

--
-- Table structure for table `printer_table`
--

CREATE TABLE `printer_table` (
  `printer_id` int(50) NOT NULL,
  `iei_barcode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sec_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `serial_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `product_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dev_stage` int(50) NOT NULL,
  `is_exist_partner` tinyint(1) NOT NULL,
  `label_image` int(50) NOT NULL,
  `product_image` int(50) NOT NULL,
  `pic_id` int(50) NOT NULL,
  `printer_department` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `purpose` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `incomeing_date` date NOT NULL,
  `prime_location` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `destroy_date` date DEFAULT NULL,
  `prime_condition` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `owner` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `printer_remarks` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `customer` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `volt` int(50) NOT NULL,
  `pcb_directory` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `product_ending_plan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `flow_stage` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `is_monthly_taker` tinyint(1) NOT NULL,
  `printer_image` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `printer_table`
--

INSERT INTO `printer_table` (`printer_id`, `iei_barcode`, `sec_number`, `serial_number`, `product_name`, `dev_stage`, `is_exist_partner`, `label_image`, `product_image`, `pic_id`, `printer_department`, `purpose`, `incomeing_date`, `prime_location`, `destroy_date`, `prime_condition`, `owner`, `printer_remarks`, `customer`, `volt`, `pcb_directory`, `product_ending_plan`, `flow_stage`, `is_monthly_taker`, `printer_image`) VALUES
(1, '2021-10-13-10-39-45-l320', 'some-sec-number', 'XY7D565273F3', 'Louvre-SDX', 0, 0, 0, 0, 2, 'FW Department', 'Model Development', '2021-10-13', 'Rack 28', NULL, 'Able to Printing and Networking', 'IEI', 'ES Mecha For Development', 'WW', 220, '-1', 'null', 'null', 0, 'https://printerinkstocktaking.000webhostapp.com/PrinterBackend/PrinterPictures/1.jpg'),
(2, '2021-10-13-11-08-45-l320', 'some-sec-number', 'XY7D561273F3', 'Louvre2-MDX', 1, 0, 0, 0, 2, 'FW Department', 'Model Development', '2021-10-13', 'Rack 32', NULL, 'Able to Printing and Networking', 'IEI', 'ES Mecha For Development', 'WW', 220, '-1', 'null', 'null', 0, 'https://printerinkstocktaking.000webhostapp.com/PrinterBackend/PrinterPictures/1.jpg'),
(3, '2021-10-13-11-13-45-l320', 'some-sec-number', 'XY7D561333F3', 'Louvre2-MDX', 0, 0, 0, 0, 2, 'FW Department', 'Model Development', '2021-10-13', 'Rack 32', NULL, 'Able to Printing and Networking', 'IEI', 'ES Mecha For Development', 'WW', 220, '-1', 'null', 'null', 0, 'https://printerinkstocktaking.000webhostapp.com/PrinterBackend/PrinterPictures/1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_database`
--

CREATE TABLE `user_database` (
  `user_id` int(50) NOT NULL,
  `nik` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `department` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `extension` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` int(50) NOT NULL,
  `picture` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_database`
--

INSERT INTO `user_database` (`user_id`, `nik`, `user_name`, `password`, `email`, `department`, `extension`, `role_id`, `picture`, `status`) VALUES
(2, 'IEI19110017', 'wing.wira', 'krakatau', 'wira1262@gmail.com', 'FW Design', '756-1123', 0, 'https://printerinkstocktaking.000webhostapp.com/PrinterBackend/UserPictures/IEI19110017.jpeg', 'confirmation');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `printer_table`
--
ALTER TABLE `printer_table`
  ADD PRIMARY KEY (`printer_id`);

--
-- Indexes for table `user_database`
--
ALTER TABLE `user_database`
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `printer_table`
--
ALTER TABLE `printer_table`
  MODIFY `printer_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_database`
--
ALTER TABLE `user_database`
  MODIFY `user_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
