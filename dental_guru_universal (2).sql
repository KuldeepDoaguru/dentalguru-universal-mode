-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2024 at 07:41 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dental_guru_universal`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `appoint_id` int(255) NOT NULL,
  `patient_uhid` varchar(255) DEFAULT NULL,
  `branch_name` varchar(255) DEFAULT NULL,
  `tp_id` int(100) DEFAULT NULL,
  `assigned_doctor_name` varchar(255) DEFAULT NULL,
  `assigned_doctor_id` varchar(50) NOT NULL,
  `appointment_dateTime` varchar(255) NOT NULL,
  `notes` varchar(1000) DEFAULT NULL,
  `cancel_reason` varchar(1000) DEFAULT NULL,
  `treatment_provided` varchar(255) DEFAULT NULL,
  `appointment_created_by` varchar(255) DEFAULT NULL,
  `appointment_created_by_emp_id` varchar(50) DEFAULT NULL,
  `appointment_updated_by` varchar(50) DEFAULT NULL,
  `appointment_updated_by_emp_id` varchar(50) DEFAULT NULL,
  `appointment_status` varchar(255) DEFAULT NULL,
  `opd_amount` varchar(50) DEFAULT NULL,
  `payment_Mode` varchar(50) DEFAULT NULL,
  `transaction_Id` varchar(50) DEFAULT NULL,
  `payment_Status` varchar(50) DEFAULT NULL,
  `refund_date_time` varchar(100) DEFAULT NULL,
  `current_path` varchar(100) DEFAULT NULL,
  `created_at` varchar(100) DEFAULT NULL,
  `updated_at` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`appoint_id`, `patient_uhid`, `branch_name`, `tp_id`, `assigned_doctor_name`, `assigned_doctor_id`, `appointment_dateTime`, `notes`, `cancel_reason`, `treatment_provided`, `appointment_created_by`, `appointment_created_by_emp_id`, `appointment_updated_by`, `appointment_updated_by_emp_id`, `appointment_status`, `opd_amount`, `payment_Mode`, `transaction_Id`, `payment_Status`, `refund_date_time`, `current_path`, `created_at`, `updated_at`) VALUES
(1, 'DH_1', 'Madan Mahal', 1, 'shadab', 'dg_4', '2024-08-12T10:00', 'start with credit', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'in treatment', '500', 'Cash', '', 'paid', NULL, '/treatmentSuggestion/1/1', '2024-08-12 18:52:16', '2024-08-12 21:26:42.939'),
(2, 'DH_2', 'Madan Mahal', NULL, 'shadab', 'dg_4', '2024-08-12T10:20', '2nd General', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Appoint', '500', 'UPI', '4555465444454', 'paid', NULL, NULL, '2024-08-12 18:54:28', '2024-08-16 19:42:26.146'),
(3, 'DH_3', 'Madan Mahal', 2, 'shadab', 'dg_4', '2024-08-12T11:40', '3rd Pen', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'in treatment', '500', 'Card', '1111111111', 'paid', NULL, '/treatmentSuggestion/3/2', '2024-08-12 18:56:26', '2024-08-12 21:26:51.161'),
(4, 'DH_4', 'Madan Mahal', 3, 'shadab', 'dg_4', '2024-08-12T09:50', 'credit', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '500', 'Credit', '', 'Credit', NULL, '/treatmentSuggestion/4/3', '2024-08-12 19:16:45', '2024-08-12 21:51:15.377'),
(5, 'DH_5', 'Madan Mahal', 4, 'shadab', 'dg_4', '2024-08-13T11:30', '', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '500', 'Cash', '', 'paid', NULL, '/SecurityAmount/5/4', '2024-08-13 01:16:23', '2024-08-13 16:10:38.879'),
(6, 'DH_1', 'Madan Mahal', 1, 'shadab', 'dg_4', '2024-08-13T09:00', '', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'in treatment', '500', 'Cash', '', 'paid', NULL, NULL, '2024-08-13 17:32:47', '2024-08-13 20:02:56.368'),
(7, 'DH_1', 'Madan Mahal', 1, 'shadab', 'dg_4', '2024-08-13T09:10', '', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'in treatment', '500', 'Cash', '', 'paid', NULL, NULL, '2024-08-13 17:41:23', '2024-08-13 20:11:33.444'),
(8, 'DH_2', 'Madan Mahal', 5, 'shadab', 'dg_4', '2024-08-13T09:30', '', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'in treatment', '500', 'Cash', '', 'paid', NULL, '/SecurityAmount/8/5', '2024-08-13 17:42:58', '2024-08-13 20:13:07.990'),
(9, 'DH_4', 'Madan Mahal', 3, 'shadab', 'dg_4', '2024-08-15T09:00', 'test', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '500', 'Cash', '', 'paid', NULL, NULL, '2024-08-15 13:56:26', '2024-08-15 16:29:21.580'),
(10, 'DH_2', 'Madan Mahal', 6, 'shadab', 'dg_4', '2024-08-15T09:10', 'test', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '500', 'Cash', '', 'paid', NULL, '/SecurityAmount/10/6', '2024-08-15 14:01:00', '2024-08-15 16:38:05.705'),
(11, 'DH_1', 'Madan Mahal', 1, 'shadab', 'dg_4', '2024-08-15T09:20', 'test', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'in treatment', '500', 'Cash', '', 'paid', NULL, NULL, '2024-08-15 17:29:43', '2024-08-15 21:15:43.251'),
(12, 'DH_5', 'Madan Mahal', 7, 'shadab', 'dg_4', '2024-08-16T09:10', '', NULL, 'Single Implant', 'shadab', 'dg_4', 'shadab', 'dg_4', 'in treatment', '0', '', '', '', NULL, '/treatmentSuggestion/12/7', '2024-08-16 13:31:51', '2024-08-16 16:01:58.633'),
(13, 'DH_1', 'Madan Mahal', 8, 'shadab', 'dg_4', '2024-08-16T09:00', 'test', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '500', 'Cash', '', 'paid', NULL, '/SecurityAmount/13/8', '2024-08-16 16:56:22', '2024-08-16 19:29:12.865'),
(14, 'DH_1', 'Madan Mahal', 9, 'shadab', 'dg_4', '2024-08-16T09:20', '', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '500', 'Cash', '', 'paid', NULL, '/treatmentSuggestion/14/9', '2024-08-16 17:39:35', '2024-08-16 20:09:41.695'),
(15, 'DH_5', 'Madan Mahal', 10, 'shadab', 'dg_4', '2024-08-17T11:30', '', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '500', 'Cash', '', 'paid', NULL, '/SecurityAmount/15/10', '2024-08-17 15:52:54', '2024-08-17 18:23:07.002'),
(16, 'DH_2', 'Madan Mahal', 6, 'shadab', 'dg_4', '2024-08-17T11:10', '', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'in treatment', '500', 'Cash', '', 'paid', NULL, NULL, '2024-08-17 15:55:17', '2024-08-17 18:25:28.646'),
(17, 'DH_6', 'Madan Mahal', 11, 'shadab', 'dg_4', '2024-08-17T09:00', 'ok', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '500', 'Cash', '', 'paid', NULL, '/SecurityAmount/17/11', '2024-08-17 15:59:40', '2024-08-17 18:30:00.441'),
(18, 'DH_5', 'Madan Mahal', 10, 'shadab', 'dg_4', '2024-08-17T09:10', 'test', NULL, 'Teeth Bleaching In Office Whitening', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-17 19:13:33.870', '2024-08-17 19:15:42.788'),
(19, 'DH_5', 'Madan Mahal', 10, 'shadab', 'dg_4', '2024-08-17T09:10', 'test', NULL, 'Teeth Bleaching In Office Whitening', 'shadab', 'dg_4', NULL, NULL, 'Appoint', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-17 19:13:59.617', NULL),
(20, 'DH_5', 'Madan Mahal', 10, 'shadab', 'dg_4', '2024-08-17T09:10', 'test', NULL, 'Teeth Bleaching In Office Whitening', 'shadab', 'dg_4', NULL, NULL, 'Appoint', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-17 19:14:13.744', NULL),
(21, 'DH_5', 'Madan Mahal', 10, 'shadab', 'dg_4', '2024-08-17T09:30', 'test', NULL, 'Teeth Bleaching In Office Whitening', 'shadab', 'dg_4', NULL, NULL, 'Appoint', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-17 19:14:29.768', NULL),
(22, 'DH_5', 'Madan Mahal', 10, 'shadab', 'dg_4', '2024-08-17T09:40', 'test', NULL, 'Teeth Bleaching In Office Whitening', 'shadab', 'dg_4', 'shadab', 'dg_4', 'in treatment', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-17 19:17:07.195', '2024-08-17 19:17:22.197'),
(23, 'DH_5', 'Madan Mahal', 10, 'shadab', 'dg_4', '2024-08-17T09:50', 'test', NULL, 'Third Molar /Impacted Tooth Removal', 'shadab', 'dg_4', 'shadab', 'dg_4', 'in treatment', '0', '', '', '', NULL, NULL, '2024-08-17 16:48:35', '2024-08-17 19:18:40.639'),
(24, 'DH_6', 'Madan Mahal', 11, 'shadab', 'dg_4', '2024-08-17T10:00', 'test', NULL, 'Metal Crowns @ Per Crown', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-17 19:40:58.567', '2024-08-17 19:41:31.242'),
(25, 'DH_6', 'Madan Mahal', 12, 'shadab', 'dg_4', '2024-08-17T10:10', 'test', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '500', 'Cash', '', 'paid', NULL, '/SecurityAmount/25/12', '2024-08-17 17:14:33', '2024-08-17 19:44:47.761'),
(26, 'DH_6', 'Madan Mahal', 12, 'shadab', 'dg_4', '2024-08-17T10:20', 'test', NULL, 'Direct Composite Veneer @ per tooth', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-17 20:20:01.610', '2024-08-17 20:20:18.437'),
(27, 'DH_6', 'Madan Mahal', 12, 'shadab', 'dg_4', '2024-08-17T10:30', 'test', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'in treatment', '500', 'Cash', '', 'paid', NULL, NULL, '2024-08-17 17:58:08', '2024-08-17 20:28:20.077'),
(28, 'DH_6', 'Madan Mahal', 12, 'shadab', 'dg_4', '2024-08-17T10:40', 'test', NULL, 'Direct Composite Veneer @ per tooth', 'shadab', 'dg_4', 'shadab', 'dg_4', 'in treatment', '0', '', '', '', NULL, NULL, '2024-08-17 17:59:33', '2024-08-17 20:30:04.810'),
(29, 'DH_6', 'Madan Mahal', 12, 'shadab', 'dg_4', '2024-08-17T10:50', 'test', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'in treatment', '500', 'Cash', '', 'paid', NULL, NULL, '2024-08-17 18:02:58', '2024-08-17 20:33:33.513'),
(30, 'DH_2', 'Madan Mahal', 6, 'shadab', 'dg_4', '2024-08-21T11:10', '', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'in treatment', '500', 'Cash', '', 'paid', NULL, NULL, '2024-08-21 12:19:30', '2024-08-21 14:49:39.286'),
(31, 'DH_7', 'Madan Mahal', 13, 'shadab', 'dg_4', '2024-08-21T11:30', '', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '500', 'Cash', '', 'paid', NULL, '/SecurityAmount/31/13', '2024-08-21 12:22:19', '2024-08-21 14:52:35.995'),
(32, 'DH_7', 'Madan Mahal', 14, 'shadab', 'dg_4', '2024-08-21T11:50', '', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '500', 'Cash', '', 'paid', NULL, '/treatmentSuggestion/32/14', '2024-08-21 13:16:42', '2024-08-21 15:46:51.584'),
(33, 'DH_7', 'Madan Mahal', 14, 'shadab', 'dg_4', '2024-08-21T09:20', '', NULL, 'Full mouth Implant', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '0', '', '', '', NULL, NULL, '2024-08-21 13:21:13', '2024-08-21 15:51:17.110'),
(34, 'DH_7', 'Madan Mahal', 15, 'shadab', 'dg_4', '2024-08-22T11:20', 'okk', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '500', 'Cash', '', 'paid', NULL, '/SecurityAmount/34/15', '2024-08-22 11:46:53', '2024-08-22 14:17:55.006'),
(35, 'DH_6', 'Madan Mahal', 12, 'shadab', 'dg_4', '2024-08-22T11:50', 'test', 'none', 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Cancel', '500', 'UPI', '4555465444454', 'Refund', '22-08-2024 15:51:45', NULL, '2024-08-22 11:47:35', '2024-08-22 18:21:45.463'),
(36, 'DH_2', 'Madan Mahal', 16, 'shadab', 'dg_4', '2024-08-22T09:20', 'ok', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '500', 'Cash', '', 'paid', NULL, '/SecurityAmount/36/16', '2024-08-22 11:47:48', '2024-08-22 14:17:59.766'),
(37, 'DH_2', 'Madan Mahal', 16, 'shadab', 'dg_4', '2024-08-22T09:40', 'test', NULL, 'Third Molar Impacted Tooth Removal', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '0', '', '', '', NULL, NULL, '2024-08-22 12:04:10', '2024-08-22 14:34:15.682'),
(38, 'DH_7', 'Madan Mahal', 15, 'shadab', 'dg_4', '2024-08-22T11:10', 'ok', NULL, 'Retention plate@ per arch', 'shadab', 'dg_4', 'shadab', 'dg_4', 'Complete', '0', '', '', '', NULL, NULL, '2024-08-22 12:10:26', '2024-08-22 18:28:19.019'),
(39, 'DH_8', 'Madan Mahal', NULL, 'shadab', 'dg_4', '2024-08-22T11:30', 'ok', NULL, 'OPD', 'shadab', 'dg_4', 'shadab', 'dg_4', 'in treatment', '500', 'Credit', '', 'Credit', NULL, NULL, '2024-08-22 15:29:46', '2024-08-22 18:00:13.043');

-- --------------------------------------------------------

--
-- Table structure for table `appointment_notification`
--

CREATE TABLE `appointment_notification` (
  `notify_id` int(100) NOT NULL,
  `notification_tag` varchar(100) DEFAULT NULL,
  `notification_msg` varchar(100) DEFAULT NULL,
  `sms` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `whatsapp` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `branch_id` int(255) NOT NULL,
  `branch_name` varchar(255) DEFAULT NULL,
  `branch_email` varchar(100) DEFAULT NULL,
  `hospital_name` varchar(255) DEFAULT NULL,
  `hospital_id` varchar(255) DEFAULT NULL,
  `branch_address` varchar(255) DEFAULT NULL,
  `branch_contact` varchar(255) DEFAULT NULL,
  `open_time` time(6) DEFAULT NULL,
  `close_time` time(6) DEFAULT NULL,
  `appoint_slot_duration` varchar(100) DEFAULT NULL,
  `week_off` varchar(100) DEFAULT NULL,
  `head_img` varchar(100) DEFAULT NULL,
  `foot_img` varchar(100) DEFAULT NULL,
  `account_number` int(100) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `upi_id` varchar(100) DEFAULT NULL,
  `ifsc_code` varchar(100) DEFAULT NULL,
  `doctor_payment` varchar(100) DEFAULT NULL,
  `allow_insurance` varchar(100) DEFAULT NULL,
  `sharemail` varchar(100) DEFAULT NULL,
  `sharewhatsapp` varchar(100) DEFAULT NULL,
  `sharesms` varchar(100) DEFAULT NULL,
  `branch_currency` varchar(100) DEFAULT NULL,
  `currency_symbol` varchar(100) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`branch_id`, `branch_name`, `branch_email`, `hospital_name`, `hospital_id`, `branch_address`, `branch_contact`, `open_time`, `close_time`, `appoint_slot_duration`, `week_off`, `head_img`, `foot_img`, `account_number`, `bank_name`, `upi_id`, `ifsc_code`, `doctor_payment`, `allow_insurance`, `sharemail`, `sharewhatsapp`, `sharesms`, `branch_currency`, `currency_symbol`, `timezone`) VALUES
(1, 'Madan Mahal', 'madanmahal@gmail.com', 'dental square', 'hos_1', 'Madan Mahal', '8602161019', '09:00:00.000000', '12:00:00.000000', '10 min', 'sunday', 'https://dentalguru-superadmin.vimubds5.a2hosted.com/branchHeadFootImg/1722876101161header.png', 'https://dentalguru-superadmin.vimubds5.a2hosted.com//branchHeadFootImg/1722876101168Dentalguru.png', NULL, NULL, NULL, NULL, 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Indian Rupee', '₹', 'Asia/Kolkata'),
(2, 'Vijay Nagar', NULL, 'dental square', 'hos_1', 'Vijay Nagar', '8602161018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chief_complain_list`
--

CREATE TABLE `chief_complain_list` (
  `chief_id` int(100) NOT NULL,
  `chief_complain` varchar(100) DEFAULT NULL,
  `created_time` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chief_complain_list`
--

INSERT INTO `chief_complain_list` (`chief_id`, `chief_complain`, `created_time`) VALUES
(1, 'Toothache', '2024-07-18 14:36:38'),
(2, 'Swollen gums', '2024-07-18 14:36:38'),
(3, 'Bleeding gums', '18-07-2024 17:22:10'),
(4, 'Sensitivity to hot or cold', '18-07-2024 17:31:19'),
(5, 'bad teeth', '10-08-2024 12:46:43'),
(6, 'caries', '16-08-2024 13:33:47');

-- --------------------------------------------------------

--
-- Table structure for table `clinic_prescription`
--

CREATE TABLE `clinic_prescription` (
  `pr_id` int(100) NOT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `medicine_name` varchar(100) DEFAULT NULL,
  `dosage` varchar(100) DEFAULT NULL,
  `frequency` varchar(100) DEFAULT NULL,
  `duration` varchar(100) DEFAULT NULL,
  `notes` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencydetails`
--

CREATE TABLE `currencydetails` (
  `cr_id` int(100) NOT NULL,
  `country_name` varchar(100) DEFAULT NULL,
  `timezone` varchar(100) DEFAULT NULL,
  `currency_name` varchar(100) DEFAULT NULL,
  `currency_symbol` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `currencydetails`
--

INSERT INTO `currencydetails` (`cr_id`, `country_name`, `timezone`, `currency_name`, `currency_symbol`) VALUES
(1, 'United States of America', 'America/New_York', 'US Dollar', '$'),
(2, 'Canada', 'America/Toronto', 'Canadian Dollar', '$'),
(4, 'Spain', 'Europe/Madrid', 'Euro', '€'),
(6, 'United Arab Emirates', 'Asia/Dubai', 'United Arab Emirates Dirham', 'د.إ.'),
(8, 'Afghanistan', 'Asia/Kabul', 'Afghan Afghani', '؋'),
(10, 'India', 'Asia/Kolkata', 'Indian Rupee', '₹');

-- --------------------------------------------------------

--
-- Table structure for table `dental_examination`
--

CREATE TABLE `dental_examination` (
  `exm_id` int(11) NOT NULL,
  `tp_id` int(100) DEFAULT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `appointment_id` int(11) NOT NULL,
  `patient_uhid` varchar(50) DEFAULT NULL,
  `selected_teeth` varchar(255) DEFAULT NULL,
  `disease` varchar(255) DEFAULT NULL,
  `chief_complain` varchar(255) DEFAULT NULL,
  `advice` varchar(255) DEFAULT NULL,
  `on_examination` varchar(255) DEFAULT NULL,
  `diagnosis_category` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dental_examination`
--

INSERT INTO `dental_examination` (`exm_id`, `tp_id`, `branch_name`, `appointment_id`, `patient_uhid`, `selected_teeth`, `disease`, `chief_complain`, `advice`, `on_examination`, `diagnosis_category`, `date`) VALUES
(1, 1, 'Madan Mahal', 1, 'DH_1', '18, 17', 'Caries', 'bad teeth', 'test', 'test', 'Dental-X', '12-08-2024 18:57:30'),
(2, 2, 'Madan Mahal', 3, 'DH_3', '18, 17', 'Caries', 'Bleeding gums', 'test', 'test', 'Dental-X', '12-08-2024 19:12:02'),
(3, 2, 'Madan Mahal', 3, 'DH_3', '16, 15', 'Fracture', 'Swollen gums', 'tetst', 'ytest', 'Dental-X', '12-08-2024 19:12:13'),
(4, 3, 'Madan Mahal', 4, 'DH_4', '18, 17', 'Caries', 'Toothache', 'test', 'test', 'Dental-X', '12-08-2024 19:21:41'),
(5, 4, 'Madan Mahal', 5, 'DH_5', '18, 17', 'Caries', 'Swollen gums', 'test', 'test', 'Dental-X', '13-08-2024 13:41:24'),
(6, 5, 'Madan Mahal', 8, 'DH_2', '18, 17', 'Caries', 'Swollen gums', 'tetst', 'test', 'Dental-X', '13-08-2024 17:43:47'),
(7, 6, 'Madan Mahal', 10, 'DH_2', '18, 17', 'Caries', 'Swollen gums', 'teszrt', 'trest', 'Dental-X', '15-08-2024 14:27:06'),
(8, 6, 'Madan Mahal', 10, 'DH_2', '16, 15', 'Fracture', 'Bleeding gums', 'tetst', 'trest', 'Dental-X', '15-08-2024 14:27:24'),
(9, 7, 'Madan Mahal', 12, 'DH_5', '44', 'Caries', 'caries', 'take a water', 'start', 'Dental-X', '16-08-2024 13:33:47'),
(10, 8, 'Madan Mahal', 13, 'DH_1', '18, 17', 'Caries', 'Bleeding gums', 'teszrt', 'trest', 'Dental-X', '16-08-2024 18:14:34'),
(11, 8, 'Madan Mahal', 13, 'DH_1', '16, 15', 'Fracture', 'bad teeth', 'tetst', 'test', 'Dental-X', '16-08-2024 18:14:54'),
(12, 8, 'Madan Mahal', 13, 'DH_1', '14, 13', 'Impacted', 'Toothache', 'teszrt', 'trest', 'Dental-X', '16-08-2024 18:16:17'),
(13, 9, 'Madan Mahal', 14, 'DH_1', '55, 54', 'Caries', 'Swollen gums', 'terst', 'twetst', 'Pediatric', '16-08-2024 19:17:30'),
(14, 9, 'Madan Mahal', 14, 'DH_1', '53, 52', 'Fracture', 'Sensitivity to hot or cold', 'tetst', 'test', 'Pediatric', '16-08-2024 19:17:41'),
(15, 10, 'Madan Mahal', 15, 'DH_5', '18, 17', 'Caries', 'Swollen gums', 'ts', 'testt', 'Dental-X', '17-08-2024 16:38:36'),
(16, 11, 'Madan Mahal', 17, 'DH_6', '18, 17', 'Fracture', 'Bleeding gums', 'teszrt', 'trest', 'Dental-X', '17-08-2024 17:00:37'),
(17, 12, 'Madan Mahal', 25, 'DH_6', '18, 17', 'Caries', 'Swollen gums', 'tetst', 'test', 'Dental-X', '17-08-2024 17:36:30'),
(18, 13, 'Madan Mahal', 31, 'DH_7', '18, 17', 'Caries', 'Swollen gums', 'test', 'test', 'Dental-X', '21-08-2024 12:22:57'),
(19, 14, 'Madan Mahal', 32, 'DH_7', '18, 17', 'Caries', 'Swollen gums', 'tttt', 'ttttt', 'Dental-X', '21-08-2024 13:17:18'),
(20, 15, 'Madan Mahal', 34, 'DH_7', '18, 17', 'Fracture', 'Swollen gums', 'test', 'test', 'Dental-X', '22-08-2024 11:50:02'),
(21, 16, 'Madan Mahal', 36, 'DH_2', '18, 17', 'Caries', 'Bleeding gums', 'terst', 'testt', 'Dental-X', '22-08-2024 12:01:33'),
(22, 16, 'Madan Mahal', 36, 'DH_2', '16, 15', 'Fracture', 'Sensitivity to hot or cold', 'test', 'testt', 'Dental-X', '22-08-2024 12:01:47');

-- --------------------------------------------------------

--
-- Table structure for table `dental_prescription`
--

CREATE TABLE `dental_prescription` (
  `id` int(11) NOT NULL,
  `appoint_id` int(11) NOT NULL,
  `tp_id` int(100) DEFAULT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `patient_uhid` varchar(50) NOT NULL,
  `desease` varchar(100) DEFAULT NULL,
  `treatment` varchar(100) DEFAULT NULL,
  `sitting_number` int(100) DEFAULT NULL,
  `medicine_name` varchar(255) NOT NULL,
  `dosage` varchar(255) NOT NULL,
  `frequency` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL,
  `date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dental_prescription`
--

INSERT INTO `dental_prescription` (`id`, `appoint_id`, `tp_id`, `branch_name`, `patient_uhid`, `desease`, `treatment`, `sitting_number`, `medicine_name`, `dosage`, `frequency`, `duration`, `note`, `date`) VALUES
(1, 0, 1, 'Madan Mahal', 'DH_1', 'Caries', 'Laminates and Veneers@ per tooth', NULL, 'Disprin 350 tablet', '200mg', '1-1-0(BD)', '2 weeks', 'test', '12-08-2024 18:58:15'),
(2, 0, 2, 'Madan Mahal', 'DH_3', 'Caries', 'Pulpectomy (Child) @ per tooth', NULL, 'Disprin 500 tablet', '223', '1-1-0(BD)', '1 week', 'test', '12-08-2024 19:12:44'),
(3, 0, 2, 'Madan Mahal', 'DH_3', 'Fracture', 'Removable Partial Dentures @ per tooth', NULL, 'Disprin 400 tablet', '223', '1-1-0(BD)', '6 days', 'test', '12-08-2024 19:12:54'),
(4, 0, 3, 'Madan Mahal', 'DH_4', 'Caries', 'Pulpectomy (Child) @ per tooth', NULL, 'Disprin 400 tablet', '200mg', '1-1-1(TDS)', '6 days', '', '12-08-2024 19:22:16'),
(5, 0, 4, 'Madan Mahal', 'DH_5', 'Caries', 'Single Implant', NULL, 'Disprin 400 tablet', '200mg', '1-0-1(BD)', '2 weeks', '', '13-08-2024 13:42:08'),
(6, 0, 5, 'Madan Mahal', 'DH_2', 'Caries', 'GIC Restoration @ per tooth', NULL, 'Disprin 325 tablet', 'test', '0-1-1(BD)', '2 days', 'test', '13-08-2024 17:44:13'),
(7, 0, 6, 'Madan Mahal', 'DH_2', 'Caries', 'Root Canal Treatment @ per tooth', NULL, 'Disprin 500 tablet', '223', '1-0-1(BD)', '2 weeks', 'test', '15-08-2024 14:28:25'),
(8, 0, 6, 'Madan Mahal', 'DH_2', 'Fracture', 'Teeth Bleaching at Home Whitening', NULL, 'Disprin 400 tablet', '103', '1-0-1(BD)', '1 week', 'test', '15-08-2024 14:28:41'),
(9, 0, 8, 'Madan Mahal', 'DH_1', 'Caries', 'Re-Root Canal Treatlment @ per tooth', NULL, 'Disprin 325 tablet', 'test', '1-1-0(BD)', '1 week', 'test', '16-08-2024 18:20:37'),
(10, 0, 8, 'Madan Mahal', 'DH_1', 'Fracture', 'Metal Braces', NULL, 'Disprin 400 tablet', 'test', '1-1-1(TDS)', '2 weeks', 'test', '16-08-2024 18:20:55'),
(11, 0, 8, 'Madan Mahal', 'DH_1', 'Impacted', 'Porcelain Fused to Metal @ per Crown', NULL, 'Disprin 325 tablet', 'test', '1-1-0(BD)', '2 weeks', 'test', '16-08-2024 18:21:06'),
(12, 0, 9, 'Madan Mahal', 'DH_1', 'Caries', 'Amalgam Restoration@ per tooth', NULL, 'Disprin 325 tablet', '223', '1-1-1(TDS)', '2 days', 'test', '16-08-2024 19:19:39'),
(13, 0, 9, 'Madan Mahal', 'DH_1', 'Fracture', 'Ceramic Braces', NULL, 'Disprin 350 tablet', '223', '1-1-0(BD)', '2 days', 'trest', '16-08-2024 19:19:55'),
(14, 0, 10, 'Madan Mahal', 'DH_5', 'Caries', 'Teeth Bleaching In Office Whitening', NULL, 'Disprin 500 tablet', '223', '1-1-0(BD)', '5 days', 'test', '17-08-2024 16:40:07'),
(15, 0, 11, 'Madan Mahal', 'DH_6', 'Fracture', 'Metal Crowns @ Per Crown', NULL, 'Disprin 325 tablet', '34', '1-1-0(BD)', '1 day', 'test', '17-08-2024 17:01:04'),
(16, 0, 12, 'Madan Mahal', 'DH_6', 'Caries', 'Direct Composite Veneer @ per tooth', NULL, 'Disprin 350 tablet', 'test', '1-1-0(BD)', '1 day', 'test', '17-08-2024 17:38:24'),
(17, 0, 13, 'Madan Mahal', 'DH_7', 'Caries', 'Indirect Pulp Capping with MTA @ per tooth', NULL, 'Disprin 400 tablet', 's', '0-0-1(HS)', '2 weeks', '', '21-08-2024 12:23:45'),
(18, 0, 15, 'Madan Mahal', 'DH_7', 'Fracture', 'Retention plate@ per arch', NULL, 'Disprin 400 tablet', '200mg', '1-1-1(TDS)', '1 week', '', '22-08-2024 11:52:34'),
(19, 0, 16, 'Madan Mahal', 'DH_2', 'Caries', 'Root Canal Treatment @ per tooth', NULL, 'Disprin 400 tablet', '34', '0-1-0(OD)', '5 days', '', '22-08-2024 12:02:27'),
(20, 0, 16, 'Madan Mahal', 'DH_2', 'Fracture', 'Third Molar /Impacted Tooth Removal', NULL, 'Disprin 400 tablet', 'test', '1-1-0(BD)', '3 days', 'test', '22-08-2024 12:02:40');

-- --------------------------------------------------------

--
-- Table structure for table `dental_treatment`
--

CREATE TABLE `dental_treatment` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `tp_id` int(100) DEFAULT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `appointment_id` int(11) NOT NULL,
  `sitting_number` int(100) DEFAULT NULL,
  `patient_uhid` varchar(50) NOT NULL,
  `dental_treatment` varchar(500) NOT NULL,
  `no_teeth` varchar(255) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `cost_amt` varchar(255) NOT NULL,
  `original_cost_amt` varchar(255) NOT NULL,
  `disc_amt` varchar(255) NOT NULL,
  `total_amt` varchar(255) NOT NULL,
  `net_amount` int(100) DEFAULT NULL,
  `paid_amount` int(100) DEFAULT NULL,
  `pending_amount` int(100) DEFAULT NULL,
  `dir_rec_amt` int(100) DEFAULT NULL,
  `sec_rec_amt` int(100) DEFAULT NULL,
  `dir_rec_doctor_id` varchar(100) DEFAULT NULL,
  `sitting_payment_status` varchar(100) DEFAULT NULL,
  `note` varchar(1000) NOT NULL,
  `date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dental_treatment`
--

INSERT INTO `dental_treatment` (`id`, `exam_id`, `tp_id`, `branch_name`, `appointment_id`, `sitting_number`, `patient_uhid`, `dental_treatment`, `no_teeth`, `qty`, `cost_amt`, `original_cost_amt`, `disc_amt`, `total_amt`, `net_amount`, `paid_amount`, `pending_amount`, `dir_rec_amt`, `sec_rec_amt`, `dir_rec_doctor_id`, `sitting_payment_status`, `note`, `date`) VALUES
(1, 1, 1, 'Madan Mahal', 1, 1, 'DH_1', 'Laminates and Veneers@ per tooth', '18, 17', '2', '10000', '', '10', '20000', 18000, 10000, 8000, 10000, 0, 'dg_4', 'Received', '', '12-08-2024 19:01:00'),
(2, 1, 1, 'Madan Mahal', 1, 1, 'DH_1', 'Laminates and Veneers@ per tooth', '18, 17', '2', '10000', '', '1', '20000', 8000, 8000, 11800, 8000, 0, 'dg_4', 'Received', '', '12-08-2024 19:10:48'),
(3, 4, 3, 'Madan Mahal', 4, 1, 'DH_4', 'Pulpectomy (Child) @ per tooth', '18, 17', '2', '2800', '', '10', '5600', 5040, 1000, 4040, 1000, 0, 'dg_4', 'Received', 'test', '12-08-2024 19:25:10'),
(4, 4, 3, 'Madan Mahal', 4, 1, 'DH_4', 'Pulpectomy (Child) @ per tooth', '18, 17', '2', '2800', '', '10', '5600', 5040, 2000, 3040, 2000, 0, 'dg_4', 'Received', '', '12-08-2024 19:26:47'),
(5, 4, 3, 'Madan Mahal', 0, 2, 'DH_4', 'Pulpectomy (Child) @ per tooth', '18, 17', '2', '2800', '', '10', '5600', 3040, 1000, 2040, 1000, 0, 'dg_4', 'Received', 'tewsat to', '12-08-2024 19:29:04'),
(6, 4, 3, 'Madan Mahal', 0, 3, 'DH_4', 'Pulpectomy (Child) @ per tooth', '18, 17', '2', '2800', '', '10', '5600', 2040, 1000, 1040, 1000, 0, 'dg_4', 'Received', 'test four', '12-08-2024 19:46:09'),
(7, 5, 4, 'Madan Mahal', 5, 1, 'DH_5', 'Single Implant', '18, 17', '2', '25000', '', '0', '50000', 50000, 20000, 30000, 0, 20000, 'dg_4', 'Recieved', '', '13-08-2024 13:45:30'),
(8, 5, 4, 'Madan Mahal', 5, 1, 'DH_5', 'Single Implant', '18, 17', '2', '25000', '', '0', '50000', 30000, 5000, 45000, 0, 5000, 'dg_4', 'Received', '', '13-08-2024 13:51:14'),
(9, 7, 6, 'Madan Mahal', 10, 1, 'DH_2', 'Root Canal Treatment @ per tooth', '18, 17', '2', '3000', '', '10', '6000', 5400, 5400, 0, 0, 5400, 'dg_4', 'paid', 'test', '15-08-2024 15:13:16'),
(10, 7, 6, 'Madan Mahal', 0, 2, 'DH_2', 'Root Canal Treatment @ per tooth', '18, 17', '2', '3000', '', '10', '6000', 0, 0, 0, 0, 0, 'dg_4', 'Pending', '', '15-08-2024 16:31:00'),
(11, 8, 6, 'Madan Mahal', 0, 1, 'DH_2', 'Teeth Bleaching at Home Whitening', '16, 15', '2', '5000', '', '10', '10000', 9000, 2600, 6400, 0, 2600, 'dg_4', 'paid', 'tedst', '15-08-2024 16:47:22'),
(12, 8, 6, 'Madan Mahal', 0, 2, 'DH_2', 'Teeth Bleaching at Home Whitening', '16, 15', '2', '5000', '', '10', '10000', 6400, 1000, 5400, 1000, 0, 'dg_4', 'paid', 'test', '15-08-2024 16:51:46'),
(13, 8, 6, 'Madan Mahal', 0, 3, 'DH_2', 'Teeth Bleaching at Home Whitening', '16, 15', '2', '5000', '', '10', '10000', 5400, 5400, 0, 5400, 0, 'dg_4', 'paid', 'test', '15-08-2024 16:53:19'),
(14, 4, 3, 'Madan Mahal', 9, 4, 'DH_4', 'Pulpectomy (Child) @ per tooth', '18, 17', '2', '2800', '', '10', '5600', 1040, 1040, 0, 1040, 0, 'dg_4', 'paid', '', '15-08-2024 17:01:58'),
(15, 9, 8, 'Madan Mahal', 13, 1, 'DH_1', 'Re-Root Canal Treatlment @ per tooth', '18, 17', '2', '4000', '', '10', '8000', 7200, 7200, 0, 0, 7200, 'dg_4', 'paid', 'test', '16-08-2024 18:44:04'),
(16, 9, 8, 'Madan Mahal', 0, 2, 'DH_1', 'Re-Root Canal Treatlment @ per tooth', '18, 17', '2', '4000', '', '10', '8000', 0, 0, 0, 0, 0, 'dg_4', 'Pending', 'test', '16-08-2024 18:45:29'),
(17, 10, 8, 'Madan Mahal', 0, 1, 'DH_1', 'Metal Braces', '16, 15', '2', '30000', '', '10', '60000', 54000, 22800, 31200, 0, 22800, 'dg_4', 'paid', 'test', '16-08-2024 19:01:58'),
(18, 10, 8, 'Madan Mahal', 0, 2, 'DH_1', 'Metal Braces', '16, 15', '2', '30000', '', '10', '60000', 31200, 31200, 0, 31200, 0, 'dg_4', 'paid', 'test', '16-08-2024 19:09:17'),
(19, 11, 8, 'Madan Mahal', 0, 1, 'DH_1', 'Porcelain Fused to Metal @ per Crown', '14, 13', '2', '3000', '', '10', '6000', 5400, 5400, 0, 5400, 0, 'dg_4', 'paid', 'test', '16-08-2024 19:09:51'),
(20, 12, 9, 'Madan Mahal', 14, 1, 'DH_1', 'Amalgam Restoration@ per tooth', '55, 54', '2', '800', '', '10', '1600', 1440, 1440, 0, 1440, 0, 'dg_4', 'paid', 'test', '16-08-2024 19:21:10'),
(21, 13, 9, 'Madan Mahal', 0, 1, 'DH_1', 'Ceramic Braces', '53, 52', '2', '45000', '', '10', '90000', 81000, 81000, 0, 81000, 0, 'dg_4', 'paid', 'test', '16-08-2024 19:21:42'),
(22, 14, 10, 'Madan Mahal', 15, 1, 'DH_5', 'Teeth Bleaching In Office Whitening', '18, 17', '2', '8000', '', '10', '16000', 14400, 8000, 6400, 0, 8000, 'dg_4', 'paid', 'test', '17-08-2024 16:45:00'),
(23, 14, 10, 'Madan Mahal', 18, 2, 'DH_5', 'Teeth Bleaching In Office Whitening', '18, 17', '2', '8000', '', '10', '16000', 6400, 3000, 3400, 0, 3000, 'dg_4', 'paid', 'test', '17-08-2024 16:46:34'),
(24, 14, 10, 'Madan Mahal', 0, 3, 'DH_5', 'Teeth Bleaching In Office Whitening', '18, 17', '2', '8000', '', '10', '16000', 3400, 3400, 0, 3400, 0, 'dg_4', 'paid', 'test', '17-08-2024 16:47:31'),
(25, 16, 11, 'Madan Mahal', 17, 1, 'DH_6', 'Metal Crowns @ Per Crown', '18, 17', '2', '1500', '', '10', '3000', 2700, 1000, 1700, 0, 1000, 'dg_4', 'paid', 'test', '17-08-2024 17:10:58'),
(26, 16, 11, 'Madan Mahal', 24, 2, 'DH_6', 'Metal Crowns @ Per Crown', '18, 17', '2', '1500', '', '10', '3000', 1700, 1700, 0, 1700, 0, 'dg_4', 'paid', 'test', '17-08-2024 17:12:06'),
(27, 17, 12, 'Madan Mahal', 25, 1, 'DH_6', 'Direct Composite Veneer @ per tooth', '18, 17', '2', '2500', '', '10', '5000', 4500, 4500, 0, 0, 4500, 'dg_4', 'paid', 'tesdt', '17-08-2024 17:50:02'),
(28, 18, 12, 'Madan Mahal', 26, 1, 'DH_6', 'Ceramic Braces', '18, 17', '2', '45000', '', '10', '90000', 81000, 35500, 45500, 0, 35500, 'dg_4', 'paid', 'tsest', '17-08-2024 17:53:37'),
(29, 18, 12, 'Madan Mahal', 0, 2, 'DH_6', 'Ceramic Braces', '18, 17', '2', '45000', '', '10', '90000', 45500, 45500, 0, 45500, 0, 'dg_4', 'paid', 'test', '17-08-2024 17:53:59'),
(30, 19, 13, 'Madan Mahal', 31, 1, 'DH_7', 'Indirect Pulp Capping with MTA @ per tooth', '18, 17', '2', '2000', '', '0', '4000', 4000, 1500, 2500, 0, 1500, 'dg_4', 'paid', '', '21-08-2024 12:25:48'),
(31, 20, 14, 'Madan Mahal', 32, 1, 'DH_7', 'Full mouth Implant', '18, 17', '2', '250000', '', '0', '500000', 500000, 100000, 400000, 100000, 0, 'dg_4', 'paid', '', '21-08-2024 13:18:50'),
(32, 20, 14, 'Madan Mahal', 33, 2, 'DH_7', 'Full mouth Implant', '18, 17', '2', '250000', '', '0', '500000', 400000, 400000, 0, 400000, 0, 'dg_4', 'paid', '', '21-08-2024 13:22:27'),
(33, 21, 15, 'Madan Mahal', 34, 1, 'DH_7', 'Retention plate@ per arch', '18, 17', '2', '2000', '', '0', '4000', 4000, 4000, 0, 0, 4000, 'dg_4', 'paid', '', '22-08-2024 11:57:13'),
(34, 22, 16, 'Madan Mahal', 36, 1, 'DH_2', 'Root Canal Treatment @ per tooth', '18, 17', '2', '3000', '', '10', '6000', 5400, 5400, 0, 0, 5400, 'dg_4', 'paid', 'test', '22-08-2024 12:03:34'),
(35, 23, 16, 'Madan Mahal', 37, 1, 'DH_2', 'Third Molar Impacted Tooth Removal', '16, 15', '2', '3000', '', '10', '6000', 5400, 5400, 0, 5400, 0, 'dg_4', 'paid', 'test', '22-08-2024 12:08:22');

-- --------------------------------------------------------

--
-- Table structure for table `drugs`
--

CREATE TABLE `drugs` (
  `drug_id` int(100) NOT NULL,
  `HSN_code` varchar(100) DEFAULT NULL,
  `item_code` varchar(100) DEFAULT NULL,
  `drug_name` varchar(100) DEFAULT NULL,
  `drug_strength` varchar(100) DEFAULT NULL,
  `instruction` varchar(100) DEFAULT NULL,
  `branch_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `drugs`
--

INSERT INTO `drugs` (`drug_id`, `HSN_code`, `item_code`, `drug_name`, `drug_strength`, `instruction`, `branch_name`) VALUES
(7, '1240', '25', 'PARA', '250mg', 'tds', 'Madan Mahal'),
(8, '123sd', 'xwx3', 'smd', '500mg', 'bd', 'Madan Mahal');

-- --------------------------------------------------------

--
-- Table structure for table `employee_attendance`
--

CREATE TABLE `employee_attendance` (
  `attendance_id` int(255) NOT NULL,
  `employee_ID` varchar(255) DEFAULT NULL,
  `emp_name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `employee_designation` varchar(255) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `morning_shift_login_time` time(6) DEFAULT NULL,
  `morning_shift_logout_time` time(6) DEFAULT NULL,
  `evening_shift_login_time` time(6) DEFAULT NULL,
  `evening_shift_logout_time` time(6) DEFAULT NULL,
  `allday_shift_login_time` time(6) DEFAULT NULL,
  `allday_shift_logout_time` time(6) DEFAULT NULL,
  `availability` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_attendance`
--

INSERT INTO `employee_attendance` (`attendance_id`, `employee_ID`, `emp_name`, `branch`, `employee_designation`, `date`, `morning_shift_login_time`, `morning_shift_logout_time`, `evening_shift_login_time`, `evening_shift_logout_time`, `allday_shift_login_time`, `allday_shift_logout_time`, `availability`) VALUES
(1, 'dg_4', 'shadab', 'Madan Mahal', 'doctor', '2024-08-12', NULL, NULL, NULL, NULL, '18:57:10.000000', NULL, NULL),
(2, 'dg_4', 'shadab', 'Madan Mahal', 'doctor', '2024-08-13', NULL, NULL, NULL, NULL, '13:38:21.000000', NULL, NULL),
(3, 'dg_4', 'shadab', 'Madan Mahal', 'doctor', '2024-08-15', NULL, NULL, NULL, NULL, '13:57:13.000000', NULL, NULL),
(7, 'dg_4', 'shadab', 'Madan Mahal', 'doctor', '2024-08-16', NULL, NULL, NULL, NULL, '20:05:26.000000', NULL, NULL),
(8, 'dg_4', 'shadab', 'Madan Mahal', 'doctor', '2024-08-17', NULL, NULL, NULL, NULL, '15:52:13.000000', NULL, NULL),
(9, 'dg_4', 'shadab', 'Madan Mahal', 'doctor', '2024-08-21', NULL, NULL, NULL, NULL, '12:18:53.000000', NULL, NULL),
(10, 'dg_4', 'shadab', 'Madan Mahal', 'doctor', '2024-08-22', NULL, NULL, NULL, NULL, '11:45:59.000000', '15:27:15.000000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_complaints`
--

CREATE TABLE `employee_complaints` (
  `complain_id` int(255) NOT NULL,
  `emp_id` varchar(255) DEFAULT NULL,
  `employee_name` varchar(255) DEFAULT NULL,
  `branch_name` varchar(255) DEFAULT NULL,
  `complain` varchar(255) DEFAULT NULL,
  `rec_on` datetime(6) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `solved_on` datetime(6) DEFAULT NULL,
  `pending_since` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_leave`
--

CREATE TABLE `employee_leave` (
  `id` int(11) NOT NULL,
  `branch_name` varchar(50) DEFAULT NULL,
  `employee_ID` varchar(11) NOT NULL,
  `employee_name` varchar(50) DEFAULT NULL,
  `leave_dates` varchar(1000) NOT NULL,
  `leave_reason` varchar(1000) DEFAULT NULL,
  `leave_status` varchar(50) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_leave`
--

INSERT INTO `employee_leave` (`id`, `branch_name`, `employee_ID`, `employee_name`, `leave_dates`, `leave_reason`, `leave_status`, `created_at`) VALUES
(1, 'Madan Mahal', 'dg_4', 'shadab', '2024-08-23', 'okk', 'pending', '2024-08-22 07:25:31.594780');

-- --------------------------------------------------------

--
-- Table structure for table `employee_register`
--

CREATE TABLE `employee_register` (
  `sr_id` int(255) NOT NULL,
  `employee_ID` varchar(255) DEFAULT NULL,
  `branch_name` varchar(255) DEFAULT NULL,
  `employee_name` varchar(255) DEFAULT NULL,
  `employee_mobile` varchar(255) DEFAULT NULL,
  `employee_email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `employee_designation` varchar(255) DEFAULT NULL,
  `employee_password` varchar(255) DEFAULT NULL,
  `employee_role` varchar(255) DEFAULT NULL,
  `salary` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `employee_status` varchar(255) DEFAULT NULL,
  `morning_shift_start_time` time(6) DEFAULT NULL,
  `morning_shift_end_time` time(6) DEFAULT NULL,
  `evening_shift_start_time` time(6) DEFAULT NULL,
  `evening_shift_end_time` time(6) DEFAULT NULL,
  `allday_shift_start_time` time(6) DEFAULT NULL,
  `allday_shift_end_time` time(6) DEFAULT NULL,
  `working_days` varchar(255) DEFAULT NULL,
  `availability` varchar(255) DEFAULT NULL,
  `employee_picture` varchar(255) DEFAULT NULL,
  `employee_education` varchar(255) DEFAULT NULL,
  `speciality` varchar(100) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `experience` varchar(100) DEFAULT NULL,
  `type_of` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_register`
--

INSERT INTO `employee_register` (`sr_id`, `employee_ID`, `branch_name`, `employee_name`, `employee_mobile`, `employee_email`, `gender`, `employee_designation`, `employee_password`, `employee_role`, `salary`, `address`, `employee_status`, `morning_shift_start_time`, `morning_shift_end_time`, `evening_shift_start_time`, `evening_shift_end_time`, `allday_shift_start_time`, `allday_shift_end_time`, `working_days`, `availability`, `employee_picture`, `employee_education`, `speciality`, `language`, `experience`, `type_of`) VALUES
(1, 'dg_1', 'Madan Mahal', 'shubham', '8602161019', 'umer@gmail.com', 'male', 'doctor', '$2b$10$7oAX2F11um8RtXe4dwHHDu4WYSxg1RgrnqVqFG9zPLpXD0Tm2cM1O', 'doctor, admin', '30000', 'Ranjhi, Jabalpur', 'Approved', '10:00:00.000000', '14:00:00.000000', '16:00:00.000000', '20:00:00.000000', '10:30:00.000000', '19:00:00.000000', 'mon-fri', 'yes', 'http://localhost:8888/empProfilePicture/17165535296014904301-RavindraTomar.png', 'null', 'null', 'null', 'null', 'null'),
(2, 'dg_2', 'Madan Mahal', 'shubham', '8602161019', 'vikram@gmail.com', 'male', 'doctor', '$2b$10$pyFDTpDQf7WWxs8FIE0YLuBT6n0ZzBBeLFPohm3qwEvbTRV2rUvgG', 'admin,receptionist', '50000', 'Madan Mahal, Jabalpur', 'Approved', '10:00:00.000000', '14:00:00.000000', '16:00:00.000000', '20:00:00.000000', '10:30:41.769000', '19:00:41.118000', 'mon-fri', 'yes', 'https://dentalgurusuperadmin.doaguru.com/empProfilePicture/1709303771914bb3.png', 'Advanced Orthodontic Training - Institute of Orthodontics  Cityville State, Doctor of Dental Medicine (DMD) - University of Dental Sciences Cityville State', 'Orthodontics, Endodontics', 'English, Hindi', '15 years', 'Full Time'),
(4, 'dg_3', 'Madan Mahal', 'Vinay singh', '8602161019', 'vinay@gmail.com', 'Male', 'doctor', 'vinay', 'doctor', '50000', 'jabalpur', 'Approved', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', NULL, 'yes', 'https://dentalgurusuperadmin.doaguru.com/empProfilePicture/1709278594627chaitanya img.jpg', NULL, NULL, NULL, NULL, NULL),
(5, 'dg_4', 'Madan Mahal', 'shadab', '8602161019', 'shadab@gmail.com', 'male', 'doctor', '$2b$10$2YcG82plPpSPv81SRIrRieTjV161MNFVdqXtcq2THlrW9ROBqYC1e', 'doctor,receptionist,admin', '50000', 'Jabalpur', 'Approved', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '10:00:00.000000', '19:00:00.000000', NULL, 'yes', 'https://dentalgurusuperadmin.doaguru.com/empProfilePicture/17104102635691709210206279kd.jpg', 'Advanced Orthodontic Training - Institute of Orthodontics  Cityville State, Doctor of Dental Medicine (DMD) - University of Dental Sciences Cityville State', NULL, NULL, NULL, NULL),
(6, 'dg_5', 'Madan Mahal', 'vijendra', '8602161019', 'kuldeepdoauruinfosystems@gmail.com', 'male', 'consultant', '$2a$10$Kn0JcU4EWchBxSjpPnxGkOnZDQQrfPlUAgEJaxldYL5rz0LAlLwx2', 'admin,lab attendant, accountant', '60000', 'Jabalpur', 'Approved', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '10:00:00.000000', '19:00:00.000000', 'mon-fri', 'yes', 'https://dentalgurusuperadmin.doaguru.com/empProfilePicture/1709629184551bear.jpg', NULL, NULL, NULL, NULL, NULL),
(7, 'dg_6', 'Madan Mahal', 'anas', '8602161020', 'umerqureshidoaguru@gmail.com', 'male', 'lab attendant', '$2b$10$2YcG82plPpSPv81SRIrRieTjV161MNFVdqXtcq2THlrW9ROBqYC1e', 'lab attendant', '50000', 'Jabalpur', 'Approved', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '10:00:00.000000', '19:00:00.000000', 'mon-fri', 'yes', 'https://dentalguru-superadmin.vimubds5.a2hosted.com/empProfilePicture/1722960591950test-bag.jpg', NULL, NULL, NULL, NULL, NULL),
(8, 'dg_7', 'Madan Mahal', 'subham soni', '7068272208', 'soni@gmail.com', 'female', 'receptionist', 'soni', 'receptionist', '15000', '420, Gwarighat, Jabalpur', 'Approved', '10:00:00.000000', '14:00:00.000000', '16:00:00.000000', '20:00:00.000000', '10:00:00.000000', '20:00:00.000000', '7', '', 'https://dentalgurusuperadmin.doaguru.com/empProfilePicture/1710224578687lifesupport.png', 'null', 'null', 'null', 'null', 'half time'),
(9, 'dg_8', 'Madan Mahal', 'test', 'test', 'test@gmail.com', 'male', 'doctor', '$2a$10$.mNbmBgXX5s/xLbEm2lUOO0YIUcj4Gn6ruU8xZB3Mkq9jC5his/k6', 'doctor', '50000', 'Jabalpur', 'Approved', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', 'mon-fri', '', 'https://dentalgurusuperadmin.doaguru.com/empProfilePicture/17104102635691709210206279kd.jpg', NULL, NULL, NULL, NULL, NULL),
(10, 'dg_9', 'Madan Mahal', 'subham soni', '72584975663', 'cygf@gmail.com', 'female', 'receptionist', '$2a$10$esmo5GbU9vjc51uFkAz5ceIrUx7EwjkiENIv3R9CoqC3RWJ9kYbI2', 'receptionist', '150', '420, Gwarighat, Jabalpur', 'approved', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '08:00:00.000000', '16:00:00.000000', '7', '', 'https://dentalgurusuperadmin.doaguru.com/empProfilePicture/1710412310938Disabletest.png', NULL, NULL, NULL, NULL, NULL),
(11, 'dg_10', 'Madan Mahal', 'damodar ', '8602161019', 'damodar@gmail.com', 'male', 'doctor', '$2a$10$iLz4HcHB3rkQBj5PGSA19O4sG6MFpnaXzBzkUSq8l03qnYAkCnvke', 'doctor', '50000', 'Madan Mahal, Jabalpur', 'pending', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '10:00:00.000000', '19:00:00.000000', 'Mon-Fri', '', 'https://dentalguruadmin.doaguru.com/empProfilePicture/1714651870468pexels-george-dsilva-3254563.jpg', 'Test', 'test', 'English, Hindi', '10 Years', 'full time'),
(12, 'dg_11', 'Madan Mahal', 'mohit', '1236878487465312013', 'mohitsahu1993@gmail.com', 'male', 'doctor', '$2a$10$jgkLC6MEC/HnnGpjqjM0fO6VSgP86DEC86yECdrU9aYCTm2StesYS', 'doctor', '50000', 'jabalpur', 'Approved', '10:00:00.000000', '14:00:00.000000', '18:00:00.000000', '22:00:00.000000', '00:00:00.000000', '00:00:00.000000', '6', '', 'https://dentalguruadmin.doaguru.com/empProfilePicture/1715595590387lari dr.png', 'b.tech', 'MD ', 'english', '500yr', NULL),
(13, 'dg_12', 'Madan Mahal', 'keshav', '1111111111', 'aaa@gmail.com', 'male', 'admin', '$2b$10$vYVZV6R.JqUWhIW8np3uFeXDPboAqA.RgKyO5lGC/bcejs2Azb70C', 'receptionist', '', 'dss', 'pending', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '19:04:00.000000', '22:04:00.000000', '', '', '8888/empProfilePicture/17164714704654261702-KC_Tomar.png', NULL, NULL, NULL, NULL, NULL),
(14, 'dg_13', 'Madan Mahal', 'raj', '1111111111', 'mohit@gmail.com', 'male', 'admin', '$2b$10$gbcakUH0SJPEOkya1ypUbu5fk9mpCSH35KDc087jSJAdE2/alRIMW', 'admin', '50000', 'Jabalpur', 'onboard', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '', '', '8888/empProfilePicture/17164734932984261702-KC_Tomar.png', NULL, NULL, NULL, NULL, 'full-time'),
(15, 'dg_14', 'Madan Mahal', 'anas soni', '1234', 'test1@gmail.com', 'male', 'lab', '$2b$10$2YcG82plPpSPv81SRIrRieTjV161MNFVdqXtcq2THlrW9ROBqYC1e', 'lab-attendant', '50000', 'Jabalpur', 'Approved', '21:04:00.000000', '21:04:00.000000', '20:05:00.000000', '20:04:00.000000', '00:00:00.000000', '00:00:00.000000', 'mon-fri', '', 'http://localhost:8888/empProfilePicture/17165444895374261702-KC_Tomar.png', 'bbbb', 'bbbb', 'aaaaaa', '1', 'half time'),
(16, 'dg_15', 'Madan Mahal', 'mohit', '8602161019', 'mohitsahu@gmail.com', 'male', 'lab attendant', '$2b$10$uFl15sKzHtrf1dC4i00whORkeEPZ61NhafR/yvivOydvLcNp1th1K', 'admin,receptionist,consultant', '12345', 'Jabalpur', 'Approved', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '16:57:00.000000', '20:57:00.000000', 'mon-fri', '', '8888/empProfilePicture/17165464921064904301-RavindraTomar.png', '', '', '', '', 'full time'),
(17, 'dg_16', 'Madan Mahal', 'shadab', '8602161019', 'test3@gmail.com', 'male', 'admin', '$2b$10$mmmzMxyNKdC.O8jU0PmXO.jPtjuQJ31nys9sc2.qEoDFNrU88f5GG', 'admin', '50000', 'Jabalpur', 'approved', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '18:11:00.000000', '17:11:00.000000', 'mon-fri', '', '8888/empProfilePicture/17165473208254261702-KC_Tomar.png', '', '', '', '', 'full time'),
(18, 'dg_17', 'Madan Mahal', 'umer', '8602161019', 'mohitsahu1993@gmail.com', 'male', 'admin', '$2a$10$jgkLC6MEC/HnnGpjqjM0fO6VSgP86DEC86yECdrU9aYCTm2StesYS', 'admin', '50000', 'Jabalpur', 'Approved', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '16:49:00.000000', '18:47:00.000000', 'mon-fri', '', '8888/empProfilePicture/17165494698734904301-RavindraTomar.png', '', '', '', '', 'full time'),
(19, 'dg_18', 'Madan Mahal', 'huyah', '8602161019', 'huyah@gmail.com', 'male', 'receptionist', '$2b$10$3M1Z48GpvByPDcZYl5u6AeGBrTYy1r6NqAE6xRLrujnKeCyWGdPx2', 'receptionist', '50000', 'Jabalpur', 'onboard', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '00:00:00.000000', '10:00:00.000000', '20:00:00.000000', 'mon-fri', '', 'http://localhost:https://dentalguru-superadmin.vimubds5.a2hosted.com/empProfilePicture/1722960046708test-bag.jpg', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_timeline`
--

CREATE TABLE `employee_timeline` (
  `event_id` int(100) NOT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `event_msg` varchar(100) DEFAULT NULL,
  `open` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_timeline`
--

INSERT INTO `employee_timeline` (`event_id`, `branch_name`, `title`, `event_msg`, `open`, `status`, `time`) VALUES
(1, 'Madan Mahal', 'new employee registered', 'please approve so that they can start work please approve so that they can start work', '/manage-staff', 'read', '2024-03-07 19:51:38.925099'),
(2, 'Madan Mahal', 'new employee registered', 'please approve so that they can start work', '/manage-staff', 'read', '2024-03-07 19:51:38.925099'),
(3, 'Madan Mahal', 'new employee registered', 'please approve so that they can start work please approve so that they can start work', '/manage-staff', 'read', '2024-03-07 19:51:38.925099'),
(4, 'Madan Mahal', 'new employee registered', 'please approve so that they can start work please approve so that they can start work', '/manage-staff', 'read', '2024-03-07 19:51:38.925099'),
(5, 'Madan Mahal', 'new employee registered', 'please approve so that they can start work', '/manage-staff', 'read', '2024-03-11 14:59:11.564259'),
(6, 'Madan Mahal', 'test', 'please approve so that they can start work', '/manage-staff', 'read', '2024-03-11 14:59:46.517579'),
(7, NULL, 'New Employee Registered', 'Please Check Manage Staff List huyah', '/manage-staff', 'read', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `examin_details`
--

CREATE TABLE `examin_details` (
  `examin_id` int(255) NOT NULL,
  `uhid` varchar(255) DEFAULT NULL,
  `branch_name` varchar(255) DEFAULT NULL,
  `examin_date` datetime(6) DEFAULT NULL,
  `examin_issue` varchar(255) DEFAULT NULL,
  `examin_investigation` varchar(255) DEFAULT NULL,
  `tooth` varchar(255) DEFAULT NULL,
  `diagnosis` varchar(255) DEFAULT NULL,
  `doctor_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_voucher`
--

CREATE TABLE `expense_voucher` (
  `voucher_id` int(100) NOT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `for_name` varchar(100) DEFAULT NULL,
  `for_use` varchar(100) DEFAULT NULL,
  `voucher_amount` int(100) DEFAULT NULL,
  `voucher_date` varchar(100) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `holiday_id` int(100) NOT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `holiday_name` varchar(255) DEFAULT NULL,
  `holiday_date` date DEFAULT NULL,
  `holiday_start_time` time(6) DEFAULT NULL,
  `holiday_end_time` time(6) DEFAULT NULL,
  `notes` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inquiries`
--

CREATE TABLE `inquiries` (
  `id` int(11) NOT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `patient_name` varchar(255) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `age` varchar(10) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `notes` varchar(1000) DEFAULT NULL,
  `doctorId` varchar(11) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `insurance_company`
--

CREATE TABLE `insurance_company` (
  `ins_id` int(100) NOT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `companyname` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `added_date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `insurance_company`
--

INSERT INTO `insurance_company` (`ins_id`, `branch_name`, `companyname`, `category`, `status`, `added_date`) VALUES
(1, 'Madan Mahal', 'CGHS(Serving)', 'Goverment', 'Active', NULL),
(2, 'Madan Mahal', 'CGHS(Pensioner)', 'Goverment', 'Active', NULL),
(3, 'Madan Mahal', 'CSMA', 'Goverment', 'Inactive', NULL),
(4, 'Madan Mahal', 'HDFC Insurance', 'Active', 'Active', NULL),
(5, 'Madan Mahal', 'test', 'private', 'active', '26-08-2024 19:55:57');

-- --------------------------------------------------------

--
-- Table structure for table `lab_details`
--

CREATE TABLE `lab_details` (
  `lab_id` int(255) NOT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `lab_name` varchar(255) DEFAULT NULL,
  `lab_type` varchar(255) DEFAULT NULL,
  `lab_contact` varchar(255) DEFAULT NULL,
  `lab_email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lab_details`
--

INSERT INTO `lab_details` (`lab_id`, `branch_name`, `lab_name`, `lab_type`, `lab_contact`, `lab_email`, `address`, `status`) VALUES
(1, 'Madan Mahal', 'blood', 'internal', '8602161019', 'mahesh@gmail.com', 'Madan Mahal', 'active'),
(2, 'Madan Mahal', 'radiology', 'internal', '8602161019', 'maheshtest@gmail.com', 'Madan Mahal, Jabalpur', 'active'),
(3, 'Madan Mahal', 'oral', 'internal', '8602161019', 'testthree@gmail.com', 'Madan Mahal, Jabalpur', 'active'),
(10, 'Vijay Nagar', 'crash course', 'internal', '1225487465', 'asdf@gmail.com', 'garha fatak', 'approved'),
(11, 'Madan Mahal', 'SAAS', 'internal', 'SAS', 'ASAS@GAMAIL', 'ASASA ', 'pending'),
(12, 'Madan Mahal', 'sd', 'external', '4544', 'devansh@gmail.com', 'New Address', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `lab_tests`
--

CREATE TABLE `lab_tests` (
  `lab_tid` int(100) NOT NULL,
  `test_name` varchar(100) DEFAULT NULL,
  `test_code` varchar(100) DEFAULT NULL,
  `waiting_days` varchar(100) DEFAULT NULL,
  `default_lab` varchar(100) DEFAULT NULL,
  `test_date` date DEFAULT NULL,
  `test_cost` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lab_tests`
--

INSERT INTO `lab_tests` (`lab_tid`, `test_name`, `test_code`, `waiting_days`, `default_lab`, `test_date`, `test_cost`) VALUES
(1, 'Language Proficiency Tests', '00001', '2', 'oral', '2024-05-06', 3000),
(2, 'Interviews', '00002', '2', 'oral', '0000-00-00', 1000),
(3, 'Oral Presentations', '00003', '2', 'oral', '0000-00-00', 50000),
(4, 'Viva Voce Exams', '00004', '2', 'oral', '0000-00-00', 1000),
(6, 'Role-Playing Exercises', '00006', '2', 'oral', '0000-00-00', 1000),
(7, 'Debates', '00007', '2', 'oral', '0000-00-00', 1000),
(8, 'Oral Examinations in Professional Certifications', '00008', '2', 'oral', '0000-00-00', 1000),
(9, 'Complete Blood Count (CBC)', '00009', '2', 'blood', '0000-00-00', 1000),
(10, 'Basic Metabolic Panel (BMP)', '00010', '2', 'blood', '0000-00-00', 1000),
(11, 'Comprehensive Metabolic Panel (CMP)', '00011', '2', 'blood', '0000-00-00', 1000),
(12, 'Lipid Panel', '00012', '2', 'blood', '0000-00-00', 1000),
(13, 'Thyroid Function Tests', '00013', '2', 'blood', '0000-00-00', 1000),
(14, 'Coagulation Tests', '00014', '2', 'blood', '0000-00-00', 1000),
(15, 'Blood Type and Rh Factor', '00015', '2', 'blood', '0000-00-00', 1000),
(16, 'Blood Chemistry Tests', '00016', '2', 'blood', '0000-00-00', 1000),
(17, 'Inflammatory Marker Tests', '00017', '2', 'blood', '0000-00-00', 1000),
(18, 'Viral and Bacterial Infection Tests', '00018', '2', 'blood', '0000-00-00', 1000),
(19, 'X-rays (Radiography)', '00019', '2', 'radiology', '0000-00-00', 1000),
(20, 'Computed Tomography (CT) Scan', '00020', '2', 'radiology', '0000-00-00', 1000),
(21, 'Magnetic Resonance Imaging (MRI)', '00021', '2', 'radiology', '0000-00-00', 1000),
(22, 'Ultrasound', '00022', '2', 'radiology', '0000-00-00', 1000),
(23, 'Fluoroscopy', '00023', '2', 'radiology', '0000-00-00', 1000),
(24, 'Positron Emission Tomography (PET) Scan', '00024', '2', 'radiology', '0000-00-00', 1000),
(25, 'Bone Densitometry (DEXA Scan)', '00025', '2', 'radiology', '0000-00-00', 1000),
(26, 'Mammography', '00026', '2', 'radiology', '0000-00-00', 1000),
(27, 'Nuclear Medicine Imaging', '00027', '2', 'radiology', '0000-00-00', 1000),
(28, 'Interventional Radiology Procedures', '00028', '2', 'radiology', '0000-00-00', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `otpcollections`
--

CREATE TABLE `otpcollections` (
  `otp_id` int(100) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `code` int(10) DEFAULT NULL,
  `expiresIn` int(20) DEFAULT NULL,
  `createdAt` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `otpcollections`
--

INSERT INTO `otpcollections` (`otp_id`, `email`, `code`, `expiresIn`, `createdAt`) VALUES
(1, 'kuldeepdoauruinfosystems@gmail.com', 513896, NULL, '2024-08-13 06:59:36.777227'),
(2, 'mohitsahu1993@gmail.com', 254910, NULL, '2024-08-22 07:31:13.481316');

-- --------------------------------------------------------

--
-- Table structure for table `patient_bills`
--

CREATE TABLE `patient_bills` (
  `bill_id` int(255) NOT NULL,
  `bill_date` varchar(100) DEFAULT NULL,
  `uhid` varchar(255) DEFAULT NULL,
  `tp_id` int(11) DEFAULT NULL,
  `branch_name` varchar(255) DEFAULT NULL,
  `patient_name` varchar(255) DEFAULT NULL,
  `patient_mobile` varchar(255) DEFAULT NULL,
  `patient_email` varchar(255) DEFAULT NULL,
  `patient_type` varchar(100) DEFAULT NULL,
  `assigned_doctor_name` varchar(255) DEFAULT NULL,
  `total_amount` int(255) DEFAULT NULL,
  `paid_amount` int(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `payment_date_time` varchar(100) DEFAULT NULL,
  `receiver_name` varchar(100) DEFAULT NULL,
  `receiver_emp_id` varchar(100) DEFAULT NULL,
  `payment_mode` varchar(255) DEFAULT NULL,
  `transaction_Id` varchar(255) DEFAULT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `pay_by_sec_amt` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_bills`
--

INSERT INTO `patient_bills` (`bill_id`, `bill_date`, `uhid`, `tp_id`, `branch_name`, `patient_name`, `patient_mobile`, `patient_email`, `patient_type`, `assigned_doctor_name`, `total_amount`, `paid_amount`, `payment_status`, `payment_date_time`, `receiver_name`, `receiver_emp_id`, `payment_mode`, `transaction_Id`, `note`, `pay_by_sec_amt`) VALUES
(1, '15-08-2024 16:53:57', 'DH_2', 6, 'Madan Mahal', 'Ayushi Singh', '7974507514', 'devdeveloper998@gmail.com', NULL, 'shadab', 14400, 6400, 'paid', '2024-08-15', 'shadab', 'dg_4', 'cash', NULL, 'ok', 8000),
(2, '15-08-2024 17:02:07', 'DH_4', 3, 'Madan Mahal', 'Abhishek Dubey', '9806324244', 'mohitsahu1993@gmail.com', NULL, 'shadab', 10080, 10080, 'paid', '2024-08-15', 'shadab', 'dg_4', 'Credit', NULL, NULL, 0),
(3, '15-08-2024 18:50:50', 'DH_1', 1, 'Madan Mahal', 'Raju Pandey', '9399044850', 'doaguruinfosystems@gmail.com', NULL, 'shadab', 26000, 26000, 'paid', '2024-08-15', 'shadab', 'dg_4', 'cash', NULL, 'test', 0),
(4, '16-08-2024 19:10:02', 'DH_1', 8, 'Madan Mahal', 'Raju Pandey', '9399044850', 'doaguruinfosystems@gmail.com', NULL, 'shadab', 66600, 36600, 'paid', '2024-08-16', 'shadab', 'dg_4', 'cash', NULL, 'tesrt', 30000),
(5, '16-08-2024 19:21:54', 'DH_1', 9, 'Madan Mahal', 'Raju Pandey', '9399044850', 'doaguruinfosystems@gmail.com', NULL, 'shadab', 82440, 82440, 'paid', '2024-08-16', 'shadab', 'dg_4', 'Credit', NULL, 'test', 0),
(6, '17-08-2024 17:12:12', 'DH_6', 11, 'Madan Mahal', 'mohit', '8989898989', '', NULL, 'shadab', 2700, 1700, 'Paid', '2024-08-17', 'shadab', 'dg_4', 'cash', NULL, 'test', 1000),
(7, '17-08-2024 18:01:36', 'DH_6', 12, 'Madan Mahal', 'mohit', '8989898989', '', NULL, 'shadab', 85500, 45500, 'Paid', '2024-08-17', 'shadab', 'dg_4', 'cash', NULL, 'test', 40000),
(8, '21-08-2024 13:23:21', 'DH_7', 14, 'Madan Mahal', 'rahul', '7877878787', '', NULL, 'shadab', 500000, 500000, 'Paid', '2024-08-21', 'shadab', 'dg_4', 'cash', NULL, NULL, 0),
(9, '22-08-2024 12:08:28', 'DH_2', 16, 'Madan Mahal', 'Ayushi Singh', '7974507514', 'devdeveloper998@gmail.com', NULL, 'shadab', 10800, 5400, 'Paid', '2024-08-22', 'shadab', 'dg_4', 'cash', NULL, 'test', 5400);

-- --------------------------------------------------------

--
-- Table structure for table `patient_details`
--

CREATE TABLE `patient_details` (
  `uhid` varchar(100) NOT NULL,
  `branch_name` varchar(255) DEFAULT NULL,
  `initialid` varchar(100) DEFAULT NULL,
  `patient_name` varchar(255) NOT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `age` varchar(11) NOT NULL,
  `weight` varchar(11) DEFAULT NULL,
  `gender` varchar(100) NOT NULL,
  `maritalstatus` varchar(100) DEFAULT NULL,
  `bloodgroup` varchar(100) DEFAULT NULL,
  `mobileno` varchar(100) NOT NULL,
  `alternatecontactno` varchar(100) DEFAULT NULL,
  `emailid` varchar(100) DEFAULT NULL,
  `contact_person` varchar(255) DEFAULT NULL,
  `contact_person_name` varchar(255) DEFAULT NULL,
  `allergy` varchar(255) DEFAULT NULL,
  `disease` varchar(1000) DEFAULT NULL,
  `isstaff` varchar(100) DEFAULT NULL,
  `staffempid` varchar(100) DEFAULT NULL,
  `staffrelationid` varchar(100) DEFAULT NULL,
  `isforeign` varchar(100) DEFAULT NULL,
  `isvip` varchar(100) DEFAULT NULL,
  `fathername` varchar(100) DEFAULT NULL,
  `husbandname` varchar(100) DEFAULT NULL,
  `mothername` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `pincode` varchar(100) DEFAULT NULL,
  `patient_type` varchar(255) DEFAULT NULL,
  `credit_By` varchar(100) DEFAULT NULL,
  `beneficiary_Id` varchar(255) DEFAULT NULL,
  `aadhaar_no` varchar(100) DEFAULT NULL,
  `patient_added_by` varchar(50) DEFAULT NULL,
  `patient_updated_by` varchar(50) DEFAULT NULL,
  `patient_added_by_emp_id` varchar(50) DEFAULT NULL,
  `patient_updated_by_emp_id` varchar(50) DEFAULT NULL,
  `created_at` varchar(100) DEFAULT NULL,
  `updated_at` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_details`
--

INSERT INTO `patient_details` (`uhid`, `branch_name`, `initialid`, `patient_name`, `dob`, `age`, `weight`, `gender`, `maritalstatus`, `bloodgroup`, `mobileno`, `alternatecontactno`, `emailid`, `contact_person`, `contact_person_name`, `allergy`, `disease`, `isstaff`, `staffempid`, `staffrelationid`, `isforeign`, `isvip`, `fathername`, `husbandname`, `mothername`, `address`, `pincode`, `patient_type`, `credit_By`, `beneficiary_Id`, `aadhaar_no`, `patient_added_by`, `patient_updated_by`, `patient_added_by_emp_id`, `patient_updated_by_emp_id`, `created_at`, `updated_at`) VALUES
('DH_1', 'Madan Mahal', NULL, 'Raju Pandey', '', '50', '85', 'Male', NULL, 'O+', '8602161019', NULL, 'kuldeepdoauruinfosystems@gmail.com', 'Self', 'Abhinav Pandey', 'No', 'No Disease', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Wright Town', NULL, 'Credit', 'CGHS(Serving)', '123456123', '', 'shadab', NULL, 'dg_4', NULL, '2024-08-12 18:52:16', NULL),
('DH_2', 'Madan Mahal', NULL, 'Ayushi Singh', '', '35', '70', 'Female', NULL, 'O+', '7974507514', NULL, 'devdeveloper998@gmail.com', 'Self', '', 'No', 'Diabetes,Cardiovascular', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ranital', NULL, 'General', '', '', '', 'shadab', NULL, 'dg_4', NULL, '2024-08-12 18:54:28', NULL),
('DH_3', 'Madan Mahal', NULL, 'Aditya Rao', '', '21', '55', 'Male', NULL, 'A-', '7000102121', NULL, 'doaguruinfosystems@gmail.com', 'Self', '', 'No', 'Heart,Diabetes,Cancer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Wright Town', NULL, 'Credit', 'CGHS(Pensioner)', '7412587465689', '', 'shadab', NULL, 'dg_4', NULL, '2024-08-12 18:56:26', NULL),
('DH_4', 'Madan Mahal', NULL, 'Abhishek Dubey', '', '30', '70', 'Male', NULL, 'O+', '9806324244', NULL, 'mohitsahu1993@gmail.com', 'Self', '', 'No', 'Cancer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Wright Town', NULL, 'Credit', 'HDFC Insurance', '45625258741', '', 'shadab', NULL, 'dg_4', NULL, '2024-08-12 19:16:45', NULL),
('DH_5', 'Madan Mahal', NULL, 'Aman', '', '83', '', 'Male', NULL, 'A-', '8602161019', NULL, 'kuldeepdoauruinfosystems@gmail.com\n', 'Self', 'Mohit Sahu', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jabalpur', NULL, 'General', '', '', '', 'shadab', 'shadab', 'dg_4', 'dg_4', '2024-08-13 01:16:23', '2024-08-17 18:32:26.719'),
('DH_6', 'Madan Mahal', NULL, 'mohit', '', '56', '', 'Male', NULL, '', '8989898989', NULL, '', 'Self', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'jbp', NULL, 'General', '', '', '', 'shadab', NULL, 'dg_4', NULL, '2024-08-17 15:59:40', NULL),
('DH_7', 'Madan Mahal', NULL, 'rahul', '', '89', '', 'Male', NULL, 'A+', '7877878787', NULL, '', 'Self', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'jbp', NULL, 'General', '', '', '', 'shadab', NULL, 'dg_4', NULL, '2024-08-21 12:22:19', NULL),
('DH_8', 'Madan Mahal', NULL, 'dev ansh', '', '26', '', 'Male', NULL, '', '8989898989', NULL, '', 'Self', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'jbp', NULL, 'Credit', 'CGHS(Serving)', '123456', '', 'shadab', NULL, 'dg_4', NULL, '2024-08-22 15:29:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `patient_disease`
--

CREATE TABLE `patient_disease` (
  `id` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_disease`
--

INSERT INTO `patient_disease` (`id`, `value`, `label`) VALUES
(1, 'No Disease', 'No Disease'),
(2, 'Diabetes', 'Diabetes'),
(3, 'Heart', 'Heart'),
(4, 'Cardiovascular', 'Cardiovascular'),
(5, 'Asthma', 'Asthma'),
(6, 'Arthritis', 'Arthritis'),
(7, 'Osteoporosis', 'Osteoporosis'),
(8, 'Thyroid', 'Thyroid'),
(9, 'Kidney', 'Kidney'),
(10, 'Liver', 'Liver'),
(11, 'Gastrointestinal', 'Gastrointestinal'),
(12, 'Cancer', 'Cancer'),
(13, 'Depression', 'Depression'),
(14, 'Anxiety', 'Anxiety'),
(15, 'Alzheimer\'s', 'Alzheimer\'s'),
(16, 'HIV', 'HIV'),
(17, 'Hepatitis', 'Hepatitis');

-- --------------------------------------------------------

--
-- Table structure for table `patient_lab_details`
--

CREATE TABLE `patient_lab_details` (
  `testid` int(11) NOT NULL,
  `tpid` int(11) DEFAULT NULL,
  `patient_uhid` varchar(11) NOT NULL,
  `patient_name` varchar(255) NOT NULL,
  `branch_name` varchar(255) NOT NULL,
  `assigned_doctor_name` varchar(255) NOT NULL,
  `lab_name` varchar(255) NOT NULL,
  `test` varchar(255) NOT NULL,
  `test_status` varchar(255) NOT NULL DEFAULT 'pending',
  `created_date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_lab_details`
--

INSERT INTO `patient_lab_details` (`testid`, `tpid`, `patient_uhid`, `patient_name`, `branch_name`, `assigned_doctor_name`, `lab_name`, `test`, `test_status`, `created_date`) VALUES
(1, 1, 'DH_1', 'Raju Pandey', 'Madan Mahal', 'shadab', 'oral', 'Viva Voce Exams', 'pending', '12-08-2024 18:57:54'),
(2, 3, 'DH_4', 'Abhishek Dubey', 'Madan Mahal', 'shadab', 'oral', 'Role-Playing Exercises', 'pending', '12-08-2024 19:22:00'),
(3, 4, 'DH_5', 'Aman', 'Madan Mahal', 'shadab', 'oral', 'Role-Playing Exercises', 'done', '13-08-2024 13:41:48'),
(4, 6, 'DH_2', 'Ayushi Singh', 'Madan Mahal', 'shadab', 'radiology', 'Magnetic Resonance Imaging (MRI)', 'done', '15-08-2024 14:28:01'),
(5, 7, 'DH_5', 'Aman', 'Madan Mahal', 'shadab', 'radiology', 'Magnetic Resonance Imaging (MRI)', 'done', '16-08-2024 13:34:02'),
(6, 8, 'DH_1', 'Raju Pandey', 'Madan Mahal', 'shadab', 'oral', 'Interviews', 'pending', '16-08-2024 18:20:16'),
(7, 8, 'DH_1', 'Raju Pandey', 'Madan Mahal', 'shadab', 'radiology', 'Magnetic Resonance Imaging (MRI)', 'pending', '16-08-2024 18:22:02'),
(8, 9, 'DH_1', 'Raju Pandey', 'Madan Mahal', 'shadab', 'oral', 'Language Proficiency Tests', 'pending', '16-08-2024 19:18:40'),
(9, 9, 'DH_1', 'Raju Pandey', 'Madan Mahal', 'shadab', 'radiology', 'Magnetic Resonance Imaging (MRI)', 'pending', '16-08-2024 19:18:45'),
(10, 10, 'DH_5', 'Aman', 'Madan Mahal', 'shadab', 'radiology', 'Computed Tomography (CT) Scan', 'pending', '17-08-2024 16:39:54'),
(11, 11, 'DH_6', 'mohit', 'Madan Mahal', 'shadab', 'radiology', 'X-rays (Radiography)', 'pending', '17-08-2024 17:00:54'),
(12, 15, 'DH_7', 'rahul', 'Madan Mahal', 'shadab', 'radiology', 'Fluoroscopy', 'done', '22-08-2024 11:50:29'),
(13, 16, 'DH_2', 'Ayushi Singh', 'Madan Mahal', 'shadab', 'radiology', 'X-rays (Radiography)', 'pending', '22-08-2024 12:02:15');

-- --------------------------------------------------------

--
-- Table structure for table `patient_lab_test_details`
--

CREATE TABLE `patient_lab_test_details` (
  `id` int(11) NOT NULL,
  `testid` int(11) NOT NULL,
  `patient_uhid` varchar(255) NOT NULL,
  `patient_name` varchar(255) NOT NULL,
  `test` varchar(255) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `cost` varchar(255) DEFAULT NULL,
  `collection_date` varchar(100) DEFAULT NULL,
  `authenticate_date` varchar(100) DEFAULT NULL,
  `payment` decimal(10,0) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `lab_type` varchar(255) DEFAULT NULL,
  `created_date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_lab_test_details`
--

INSERT INTO `patient_lab_test_details` (`id`, `testid`, `patient_uhid`, `patient_name`, `test`, `result`, `unit`, `cost`, `collection_date`, `authenticate_date`, `payment`, `payment_status`, `lab_type`, `created_date`) VALUES
(1, 3, 'DH_5', 'Aman', 'Role-Playing Exercises', 'good', '50', '1000', '2024-08-10', '2024-08-13', '1000', 'done', NULL, '2024-08-13 16:50:06'),
(2, 4, 'DH_2', 'Ayushi Singh', 'Magnetic Resonance Imaging (MRI)', 'good', '50', '1000', '2024-08-15', '2024-08-15', '1000', 'done', NULL, '2024-08-16 15:25:01'),
(3, 5, 'DH_5', 'Aman', 'Magnetic Resonance Imaging (MRI)', 'good', '50', '1000', '2024-08-16', '2024-08-16', '1000', 'done', NULL, '2024-08-16 15:42:42'),
(4, 12, 'DH_7', 'rahul', 'Fluoroscopy', 'testwd', '120', '1000', '2024-08-22', '2024-08-22', '1000', 'done', NULL, '2024-08-22 11:51:23');

-- --------------------------------------------------------

--
-- Table structure for table `patient_lab_test_reports`
--

CREATE TABLE `patient_lab_test_reports` (
  `id` int(11) NOT NULL,
  `testid` int(11) NOT NULL,
  `file_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patient_lab_test_reports`
--

INSERT INTO `patient_lab_test_reports` (`id`, `testid`, `file_path`) VALUES
(1, 3, 'https://dentalguru-lab.vimubds5.a2hosted.com/uploads/files-1723548227867.png'),
(2, 4, 'https://dentalguru-lab.vimubds5.a2hosted.com/uploads/files-1723802126890.pdf'),
(3, 5, 'https://dentalguru-lab.vimubds5.a2hosted.com/uploads/files-1723803194519.png'),
(4, 12, 'https://dentalguru-lab.vimubds5.a2hosted.com/uploads/files-1724307723589.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `patient_test_notes`
--

CREATE TABLE `patient_test_notes` (
  `id` int(11) NOT NULL,
  `note_text` varchar(255) NOT NULL,
  `testid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patient_timeline`
--

CREATE TABLE `patient_timeline` (
  `event_id` int(100) NOT NULL,
  `event_date` varchar(100) DEFAULT NULL,
  `event_time` varchar(100) DEFAULT NULL,
  `event_type` varchar(100) DEFAULT NULL,
  `event_description` varchar(100) DEFAULT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `uhid` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_timeline`
--

INSERT INTO `patient_timeline` (`event_id`, `event_date`, `event_time`, `event_type`, `event_description`, `branch_name`, `uhid`) VALUES
(1, '12-08-2024', '18:52:17', 'Add Patient', 'Add Patient and Appointment scheduled', 'Madan Mahal', 'DH_1'),
(2, '12-08-2024', '18:54:28', 'Add Patient', 'Add Patient and Appointment scheduled', 'Madan Mahal', 'DH_2'),
(3, '12-08-2024', '18:56:26', 'Add Patient', 'Add Patient and Appointment scheduled', 'Madan Mahal', 'DH_3'),
(4, '12-08-2024', '18:56:39', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_2'),
(5, '12-08-2024', '18:56:43', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_1'),
(6, '12-08-2024', '18:56:51', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_3'),
(7, '12-08-2024', '06:57 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(8, '12-08-2024', '06:57 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_1'),
(9, '12-08-2024', '06:57 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_1'),
(10, '12-08-2024', '06:57 PM', 'Treatment Suggest', 'Select Treatment : Laminates and Veneers@ per tooth for disease : Caries', 'Madan Mahal', 'DH_1'),
(11, '12-08-2024', '07:00 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_1'),
(12, '12-08-2024', '07:01 PM', 'Treatment Procedure', 'Sitting Done, TPID : 1', 'Madan Mahal', 'DH_1'),
(13, '12-08-2024', '07:10 PM', 'Treatment Procedure', 'Laminates and Veneers@ per tooth Treatment Done, TPID : 1', 'Madan Mahal', 'DH_1'),
(14, '12-08-2024', '07:11 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_3'),
(15, '12-08-2024', '07:11 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_3'),
(16, '12-08-2024', '07:12 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_3'),
(17, '12-08-2024', '07:12 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_3'),
(18, '12-08-2024', '07:12 PM', 'Treatment Suggest', 'Select Treatment : Pulpectomy (Child) @ per tooth for disease : Caries', 'Madan Mahal', 'DH_3'),
(19, '12-08-2024', '07:12 PM', 'Treatment Suggest', 'Select Treatment : Removable Partial Dentures @ per tooth for disease : Fracture', 'Madan Mahal', 'DH_3'),
(20, '12-08-2024', '19:16:46', 'Add Patient', 'Add Patient and Appointment scheduled', 'Madan Mahal', 'DH_4'),
(21, '12-08-2024', '19:21:15', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_4'),
(22, '12-08-2024', '07:21 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_4'),
(23, '12-08-2024', '07:21 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_4'),
(24, '12-08-2024', '07:21 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_4'),
(25, '12-08-2024', '07:21 PM', 'Treatment Suggest', 'Select Treatment : Pulpectomy (Child) @ per tooth for disease : Caries', 'Madan Mahal', 'DH_4'),
(26, '12-08-2024', '07:24 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_4'),
(27, '12-08-2024', '07:24 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_4'),
(28, '12-08-2024', '07:25 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_4'),
(29, '12-08-2024', '07:25 PM', 'Treatment Procedure', 'Sitting Done, TPID : 3', 'Madan Mahal', 'DH_4'),
(30, '12-08-2024', '07:26 PM', 'Treatment Procedure', 'Sitting Done, TPID : 3', 'Madan Mahal', 'DH_4'),
(31, '12-08-2024', '07:27 PM', 'Sitting Considered', '2 Sitting Started', 'Madan Mahal', 'DH_4'),
(32, '12-08-2024', '07:29 PM', 'Treatment Procedure', 'Sitting Done, TPID : 3', 'Madan Mahal', 'DH_4'),
(33, '12-08-2024', '07:45 PM', 'Sitting Considered', '3 Sitting Started', 'Madan Mahal', 'DH_4'),
(34, '12-08-2024', '07:46 PM', 'Treatment Procedure', 'Sitting Done, TPID : 3', 'Madan Mahal', 'DH_4'),
(35, '13-08-2024', '01:16:23', 'Add Patient', 'Add Patient and Appointment scheduled', 'Madan Mahal', 'DH_5'),
(36, '13-08-2024', '13:37:22', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_5'),
(37, '13-08-2024', '13:40:18', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_5'),
(38, '13-08-2024', '13:40:29', 'Edit Appointment', 'Edit Appointment', 'Madan Mahal', 'DH_5'),
(39, '13-08-2024', '13:40:39', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_5'),
(40, '13-08-2024', '01:40 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_5'),
(41, '13-08-2024', '01:40 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_5'),
(42, '13-08-2024', '01:41 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_5'),
(43, '13-08-2024', '01:41 PM', 'Treatment Suggest', 'Select Treatment : Single Implant for disease : Caries', 'Madan Mahal', 'DH_5'),
(44, '13-08-2024', '01:42 PM', 'Secuirty Amount', '25000 Secuirty Amount Added', 'Madan Mahal', 'DH_5'),
(45, '13-08-2024', '01:43 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_5'),
(46, '13-08-2024', '01:44 PM', 'Security Amount Used', '20000 security amount used', 'Madan Mahal', 'DH_5'),
(47, '13-08-2024', '01:45 PM', 'Treatment Procedure', 'Sitting Done, TPID : 4', 'Madan Mahal', 'DH_5'),
(48, '13-08-2024', '01:51 PM', 'Security Amount Used', '5000 security amount used', 'Madan Mahal', 'DH_5'),
(49, '13-08-2024', '01:51 PM', 'Treatment Procedure', 'Sitting Done, TPID : 4', 'Madan Mahal', 'DH_5'),
(50, '13-08-2024', '17:32:47', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_1'),
(51, '13-08-2024', '17:32:56', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_1'),
(52, '13-08-2024', '05:33 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(53, '13-08-2024', '05:33 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(54, '13-08-2024', '05:33 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(55, '13-08-2024', '05:33 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(56, '13-08-2024', '05:33 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(57, '13-08-2024', '05:33 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(58, '13-08-2024', '05:33 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(59, '13-08-2024', '17:41:23', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_1'),
(60, '13-08-2024', '17:41:33', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_1'),
(61, '13-08-2024', '05:41 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(62, '13-08-2024', '05:41 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(63, '13-08-2024', '17:42:58', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_2'),
(64, '13-08-2024', '17:43:08', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_2'),
(65, '13-08-2024', '05:43 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(66, '13-08-2024', '05:43 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_2'),
(67, '13-08-2024', '05:43 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_2'),
(68, '13-08-2024', '05:43 PM', 'Treatment Suggest', 'Select Treatment : GIC Restoration @ per tooth for disease : Caries', 'Madan Mahal', 'DH_2'),
(69, '13-08-2024', '05:44 PM', 'Secuirty Amount', '600 Secuirty Amount Added', 'Madan Mahal', 'DH_2'),
(70, '15-08-2024', '13:56:27', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_4'),
(71, '15-08-2024', '13:59:21', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_4'),
(72, '15-08-2024', '01:59 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_4'),
(73, '15-08-2024', '01:59 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_4'),
(74, '15-08-2024', '01:59 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_4'),
(75, '15-08-2024', '14:01:00', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_2'),
(76, '15-08-2024', '02:03 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_4'),
(77, '15-08-2024', '14:08:06', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_2'),
(78, '15-08-2024', '02:18 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(79, '15-08-2024', '02:21 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(80, '15-08-2024', '02:22 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(81, '15-08-2024', '02:26 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_4'),
(82, '15-08-2024', '02:26 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_2'),
(83, '15-08-2024', '02:27 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_2'),
(84, '15-08-2024', '02:27 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_2'),
(85, '15-08-2024', '02:27 PM', 'Treatment Suggest', 'Select Treatment : Root Canal Treatment @ per tooth for disease : Caries', 'Madan Mahal', 'DH_2'),
(86, '15-08-2024', '02:27 PM', 'Treatment Suggest', 'Select Treatment : Teeth Bleaching at Home Whitening for disease : Fracture', 'Madan Mahal', 'DH_2'),
(87, '15-08-2024', '02:30 PM', 'Secuirty Amount', '8000 Secuirty Amount Added', 'Madan Mahal', 'DH_2'),
(88, '15-08-2024', '02:42 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_2'),
(89, '15-08-2024', '02:44 PM', 'Security Amount Used', '5400 security amount used', 'Madan Mahal', 'DH_2'),
(90, '15-08-2024', '03:04 PM', 'Security Amount Used', '5400 security amount used', 'Madan Mahal', 'DH_2'),
(91, '15-08-2024', '03:12 PM', 'Security Amount Used', '5400 security amount used', 'Madan Mahal', 'DH_2'),
(92, '15-08-2024', '03:13 PM', 'Treatment Procedure', 'Sitting Done, TPID : 6', 'Madan Mahal', 'DH_2'),
(93, '15-08-2024', '03:38 PM', 'Sitting Considered', '2 Sitting Started', 'Madan Mahal', 'DH_2'),
(94, '15-08-2024', '04:31 PM', 'Treatment Procedure', 'Root Canal Treatment @ per tooth Treatment Done, TPID : 6', 'Madan Mahal', 'DH_2'),
(95, '15-08-2024', '04:32 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_2'),
(96, '15-08-2024', '04:39 PM', 'Security Amount Used', '2600 security amount used', 'Madan Mahal', 'DH_2'),
(97, '15-08-2024', '04:47 PM', 'Security Amount Used', '2600 security amount used', 'Madan Mahal', 'DH_2'),
(98, '15-08-2024', '04:47 PM', 'Treatment Procedure', 'Sitting Done, TPID : 6', 'Madan Mahal', 'DH_2'),
(99, '15-08-2024', '04:48 PM', 'Sitting Considered', '2 Sitting Started', 'Madan Mahal', 'DH_2'),
(100, '15-08-2024', '04:51 PM', 'Treatment Procedure', 'Sitting Done, TPID : 6', 'Madan Mahal', 'DH_2'),
(101, '15-08-2024', '04:53 PM', 'Sitting Considered', '3 Sitting Started', 'Madan Mahal', 'DH_2'),
(102, '15-08-2024', '04:53 PM', 'Treatment Procedure', 'Teeth Bleaching at Home Whitening Treatment Done, TPID : 6', 'Madan Mahal', 'DH_2'),
(103, '15-08-2024', '04:53 PM', 'Final Bill Generation', 'Final Bill Generated for TPID : 6', 'Madan Mahal', 'DH_2'),
(104, '15-08-2024', '04:57 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_4'),
(105, '15-08-2024', '05:01 PM', 'Sitting Considered', '4 Sitting Started', 'Madan Mahal', 'DH_4'),
(106, '15-08-2024', '05:02 PM', 'Treatment Procedure', 'Pulpectomy (Child) @ per tooth Treatment Done, TPID : 3', 'Madan Mahal', 'DH_4'),
(107, '15-08-2024', '05:02 PM', 'Final Bill Generation', 'Final Bill Generated for TPID : 3', 'Madan Mahal', 'DH_4'),
(108, '15-08-2024', '17:29:43', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_1'),
(109, '15-08-2024', '18:45:43', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_1'),
(110, '15-08-2024', '06:50 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(111, '15-08-2024', '06:50 PM', 'Final Bill Generation', 'Final Bill Generated for TPID : 1', 'Madan Mahal', 'DH_1'),
(112, '16-08-2024', '13:31:51', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_5'),
(113, '16-08-2024', '13:31:58', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_5'),
(114, '16-08-2024', '01:33 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_5'),
(115, '16-08-2024', '01:33 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_5'),
(116, '16-08-2024', '01:33 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_5'),
(117, '16-08-2024', '16:56:22', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_1'),
(118, '16-08-2024', '16:59:12', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_1'),
(119, '16-08-2024', '17:12:26', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_2'),
(120, '16-08-2024', '05:32 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(121, '16-08-2024', '05:33 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(122, '16-08-2024', '17:39:36', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_1'),
(123, '16-08-2024', '17:39:41', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_1'),
(124, '16-08-2024', '05:40 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(125, '16-08-2024', '05:44 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(126, '16-08-2024', '05:44 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(127, '16-08-2024', '05:47 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(128, '16-08-2024', '05:47 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(129, '16-08-2024', '05:47 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(130, '16-08-2024', '05:48 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(131, '16-08-2024', '05:50 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(132, '16-08-2024', '05:50 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(133, '16-08-2024', '05:50 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(134, '16-08-2024', '06:09 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(135, '16-08-2024', '06:12 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(136, '16-08-2024', '06:14 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(137, '16-08-2024', '06:14 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_1'),
(138, '16-08-2024', '06:14 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_1'),
(139, '16-08-2024', '06:14 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_1'),
(140, '16-08-2024', '06:16 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_1'),
(141, '16-08-2024', '06:19 PM', 'Treatment Suggest', 'Select Treatment : Re-Root Canal Treatlment @ per tooth for disease : Caries', 'Madan Mahal', 'DH_1'),
(142, '16-08-2024', '06:19 PM', 'Treatment Suggest', 'Select Treatment : Metal Braces for disease : Fracture', 'Madan Mahal', 'DH_1'),
(143, '16-08-2024', '06:20 PM', 'Treatment Suggest', 'Select Treatment : Porcelain Fused to Metal @ per Crown for disease : Impacted', 'Madan Mahal', 'DH_1'),
(144, '16-08-2024', '06:22 PM', 'Secuirty Amount', '30000 Secuirty Amount Added', 'Madan Mahal', 'DH_1'),
(145, '16-08-2024', '06:43 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_1'),
(146, '16-08-2024', '06:43 PM', 'Security Amount Used', '7200 security amount used', 'Madan Mahal', 'DH_1'),
(147, '16-08-2024', '06:44 PM', 'Treatment Procedure', 'Sitting Done, TPID : 8', 'Madan Mahal', 'DH_1'),
(148, '16-08-2024', '06:44 PM', 'Sitting Considered', '2 Sitting Started', 'Madan Mahal', 'DH_1'),
(149, '16-08-2024', '06:45 PM', 'Treatment Procedure', 'Re-Root Canal Treatlment @ per tooth Treatment Done, TPID : 8', 'Madan Mahal', 'DH_1'),
(150, '16-08-2024', '06:45 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_1'),
(151, '16-08-2024', '07:01 PM', 'Security Amount Used', '22800 security amount used', 'Madan Mahal', 'DH_1'),
(152, '16-08-2024', '07:01 PM', 'Treatment Procedure', 'Sitting Done, TPID : 8', 'Madan Mahal', 'DH_1'),
(153, '16-08-2024', '07:08 PM', 'Sitting Considered', '2 Sitting Started', 'Madan Mahal', 'DH_1'),
(154, '16-08-2024', '07:09 PM', 'Treatment Procedure', 'Metal Braces Treatment Done, TPID : 8', 'Madan Mahal', 'DH_1'),
(155, '16-08-2024', '07:09 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_1'),
(156, '16-08-2024', '07:09 PM', 'Treatment Procedure', 'Porcelain Fused to Metal @ per Crown Treatment Done, TPID : 8', 'Madan Mahal', 'DH_1'),
(157, '16-08-2024', '07:10 PM', 'Final Bill Generation', 'Final Bill Generated for TPID : 8', 'Madan Mahal', 'DH_1'),
(158, '16-08-2024', '07:16 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_1'),
(159, '16-08-2024', '07:17 PM', 'Examination', 'Selected Category Pediatric', 'Madan Mahal', 'DH_1'),
(160, '16-08-2024', '07:17 PM', 'Examination', 'Add Teeth Pediatric DentalX', 'Madan Mahal', 'DH_1'),
(161, '16-08-2024', '07:17 PM', 'Examination', 'Add Teeth Pediatric DentalX', 'Madan Mahal', 'DH_1'),
(162, '16-08-2024', '07:18 PM', 'Treatment Suggest', 'Select Treatment : Amalgam Restoration@ per tooth for disease : Caries', 'Madan Mahal', 'DH_1'),
(163, '16-08-2024', '07:18 PM', 'Treatment Suggest', 'Select Treatment : Ceramic Braces for disease : Fracture', 'Madan Mahal', 'DH_1'),
(164, '16-08-2024', '07:20 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_1'),
(165, '16-08-2024', '07:21 PM', 'Treatment Procedure', 'Amalgam Restoration@ per tooth Treatment Done, TPID : 9', 'Madan Mahal', 'DH_1'),
(166, '16-08-2024', '07:21 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_1'),
(167, '16-08-2024', '07:21 PM', 'Treatment Procedure', 'Ceramic Braces Treatment Done, TPID : 9', 'Madan Mahal', 'DH_1'),
(168, '16-08-2024', '07:21 PM', 'Final Bill Generation', 'Final Bill Generated for TPID : 9', 'Madan Mahal', 'DH_1'),
(169, '17-08-2024', '15:52:54', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_5'),
(170, '17-08-2024', '15:53:07', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_5'),
(171, '17-08-2024', '03:53 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_5'),
(172, '17-08-2024', '03:53 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_5'),
(173, '17-08-2024', '15:55:17', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_2'),
(174, '17-08-2024', '15:55:28', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_2'),
(175, '17-08-2024', '03:55 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(176, '17-08-2024', '03:57 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_5'),
(177, '17-08-2024', '15:59:40', 'Add Patient', 'Add Patient and Appointment scheduled', 'Madan Mahal', 'DH_6'),
(178, '17-08-2024', '16:00:00', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_6'),
(179, '17-08-2024', '04:00 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(180, '17-08-2024', '04:00 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(181, '17-08-2024', '16:02:26', 'Patient Profile', 'Patient Profile Updated', 'Madan Mahal', 'DH_5'),
(182, '17-08-2024', '04:16 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_5'),
(183, '17-08-2024', '04:19 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_5'),
(184, '17-08-2024', '04:19 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_5'),
(185, '17-08-2024', '04:20 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_5'),
(186, '17-08-2024', '04:20 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_5'),
(187, '17-08-2024', '04:20 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_5'),
(188, '17-08-2024', '04:22 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_5'),
(189, '17-08-2024', '04:26 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_5'),
(190, '17-08-2024', '04:26 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_5'),
(191, '17-08-2024', '04:27 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_5'),
(192, '17-08-2024', '04:28 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_5'),
(193, '17-08-2024', '04:28 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_5'),
(194, '17-08-2024', '04:28 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(195, '17-08-2024', '04:29 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(196, '17-08-2024', '04:30 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(197, '17-08-2024', '04:30 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(198, '17-08-2024', '04:30 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(199, '17-08-2024', '04:31 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(200, '17-08-2024', '04:31 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(201, '17-08-2024', '04:31 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(202, '17-08-2024', '04:35 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(203, '17-08-2024', '04:37 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(204, '17-08-2024', '04:37 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(205, '17-08-2024', '04:37 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(206, '17-08-2024', '04:37 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(207, '17-08-2024', '04:38 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_5'),
(208, '17-08-2024', '04:38 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_5'),
(209, '17-08-2024', '04:38 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_5'),
(210, '17-08-2024', '04:39 PM', 'Treatment Suggest', 'Select Treatment : Teeth Bleaching In Office Whitening for disease : Caries', 'Madan Mahal', 'DH_5'),
(211, '17-08-2024', '04:39 PM', 'Treatment Suggest', 'Select Treatment : Third Molar /Impacted Tooth Removal for disease : Caries', 'Madan Mahal', 'DH_5'),
(212, '17-08-2024', '04:42 PM', 'Secuirty Amount', '11000 Secuirty Amount Added', 'Madan Mahal', 'DH_5'),
(213, '17-08-2024', '04:42 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_5'),
(214, '17-08-2024', '04:43 PM', 'Security Amount Used', '8000 security amount used', 'Madan Mahal', 'DH_5'),
(215, '17-08-2024', '04:45 PM', 'Treatment Procedure', 'Sitting Done, TPID : 10', 'Madan Mahal', 'DH_5'),
(216, '17-08-2024', '16:45:42', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_5'),
(217, '17-08-2024', '04:46 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_5'),
(218, '17-08-2024', '04:46 PM', 'Sitting Considered', '2 Sitting Started', 'Madan Mahal', 'DH_5'),
(219, '17-08-2024', '04:46 PM', 'Security Amount Used', '3000 security amount used', 'Madan Mahal', 'DH_5'),
(220, '17-08-2024', '04:46 PM', 'Treatment Procedure', 'Sitting Done, TPID : 10', 'Madan Mahal', 'DH_5'),
(221, '17-08-2024', '04:46 PM', 'Sitting Considered', '3 Sitting Started', 'Madan Mahal', 'DH_5'),
(222, '17-08-2024', '16:47:22', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_5'),
(223, '17-08-2024', '04:47 PM', 'Treatment Procedure', 'Teeth Bleaching In Office Whitening Treatment Done, TPID : 10', 'Madan Mahal', 'DH_5'),
(224, '17-08-2024', '04:47 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_5'),
(225, '17-08-2024', '16:48:35', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_5'),
(226, '17-08-2024', '16:48:40', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_5'),
(227, '17-08-2024', '04:48 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_5'),
(228, '17-08-2024', '04:49 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_5'),
(229, '17-08-2024', '04:49 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_5'),
(230, '17-08-2024', '04:49 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_5'),
(231, '17-08-2024', '04:50 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_5'),
(232, '17-08-2024', '04:51 PM', 'Sitting Considered', '2 Sitting Started', 'Madan Mahal', 'DH_5'),
(233, '17-08-2024', '04:56 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_5'),
(234, '17-08-2024', '04:58 PM', 'Sitting Considered', '2 Sitting Started', 'Madan Mahal', 'DH_5'),
(235, '17-08-2024', '04:58 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_5'),
(236, '17-08-2024', '04:59 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_5'),
(237, '17-08-2024', '05:00 PM', 'Sitting Considered', '2 Sitting Started', 'Madan Mahal', 'DH_5'),
(238, '17-08-2024', '05:00 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(239, '17-08-2024', '05:00 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_6'),
(240, '17-08-2024', '05:00 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_6'),
(241, '17-08-2024', '05:00 PM', 'Treatment Suggest', 'Select Treatment : Metal Crowns @ Per Crown for disease : Fracture', 'Madan Mahal', 'DH_6'),
(242, '17-08-2024', '05:01 PM', 'Secuirty Amount', '1000 Secuirty Amount Added', 'Madan Mahal', 'DH_6'),
(243, '17-08-2024', '05:01 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_6'),
(244, '17-08-2024', '05:03 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_5'),
(245, '17-08-2024', '05:05 PM', 'Sitting Considered', '2 Sitting Started', 'Madan Mahal', 'DH_5'),
(246, '17-08-2024', '05:07 PM', 'Security Amount Used', '1000 security amount used', 'Madan Mahal', 'DH_6'),
(247, '17-08-2024', '05:10 PM', 'Book Sitting Appointment', 'Book Sitting Appointment', 'Madan Mahal', 'DH_6'),
(248, '17-08-2024', '05:10 PM', 'Treatment Procedure', 'Sitting Done, TPID : 11', 'Madan Mahal', 'DH_6'),
(249, '17-08-2024', '17:11:31', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_6'),
(250, '17-08-2024', '05:11 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(251, '17-08-2024', '05:11 PM', 'Sitting Considered', '2 Sitting Started', 'Madan Mahal', 'DH_6'),
(252, '17-08-2024', '05:12 PM', 'Treatment Procedure', 'Metal Crowns @ Per Crown Treatment Done, TPID : 11', 'Madan Mahal', 'DH_6'),
(253, '17-08-2024', '05:12 PM', 'Final Bill Generation', 'Final Bill Generated for TPID : 11', 'Madan Mahal', 'DH_6'),
(254, '17-08-2024', '17:14:33', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_6'),
(255, '17-08-2024', '17:14:47', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_6'),
(256, '17-08-2024', '05:15 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(257, '17-08-2024', '05:25 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(258, '17-08-2024', '05:34 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(259, '17-08-2024', '05:35 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(260, '17-08-2024', '05:35 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(261, '17-08-2024', '05:35 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(262, '17-08-2024', '05:36 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_6'),
(263, '17-08-2024', '05:36 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_6'),
(264, '17-08-2024', '05:37 PM', 'Treatment Suggest', 'Select Treatment : Direct Composite Veneer @ per tooth for disease : Caries', 'Madan Mahal', 'DH_6'),
(265, '17-08-2024', '05:37 PM', 'Treatment Suggest', 'Select Treatment : Ceramic Braces for disease : Caries', 'Madan Mahal', 'DH_6'),
(266, '17-08-2024', '05:38 PM', 'Secuirty Amount', '40000 Secuirty Amount Added', 'Madan Mahal', 'DH_6'),
(267, '17-08-2024', '05:39 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_6'),
(268, '17-08-2024', '05:40 PM', 'Security Amount Used', '4500 security amount used', 'Madan Mahal', 'DH_6'),
(269, '17-08-2024', '05:50 PM', 'Book Sitting Appointment', 'Book Sitting Appointment', 'Madan Mahal', 'DH_6'),
(270, '17-08-2024', '05:50 PM', 'Treatment Procedure', 'Direct Composite Veneer @ per tooth Treatment Done, TPID : 12', 'Madan Mahal', 'DH_6'),
(271, '17-08-2024', '17:50:18', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_6'),
(272, '17-08-2024', '05:52 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(273, '17-08-2024', '05:52 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(274, '17-08-2024', '05:53 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(275, '17-08-2024', '05:53 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_6'),
(276, '17-08-2024', '05:53 PM', 'Security Amount Used', '35500 security amount used', 'Madan Mahal', 'DH_6'),
(277, '17-08-2024', '05:53 PM', 'Treatment Procedure', 'Sitting Done, TPID : 12', 'Madan Mahal', 'DH_6'),
(278, '17-08-2024', '05:53 PM', 'Sitting Considered', '2 Sitting Started', 'Madan Mahal', 'DH_6'),
(279, '17-08-2024', '05:54 PM', 'Treatment Procedure', 'Ceramic Braces Treatment Done, TPID : 12', 'Madan Mahal', 'DH_6'),
(280, '17-08-2024', '17:58:08', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_6'),
(281, '17-08-2024', '17:58:20', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_6'),
(282, '17-08-2024', '05:58 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(283, '17-08-2024', '17:59:33', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_6'),
(284, '17-08-2024', '18:00:05', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_6'),
(285, '17-08-2024', '06:00 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(286, '17-08-2024', '06:01 PM', 'Final Bill Generation', 'Final Bill Generated for TPID : 12', 'Madan Mahal', 'DH_6'),
(287, '17-08-2024', '18:02:58', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_6'),
(288, '17-08-2024', '18:03:33', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_6'),
(289, '17-08-2024', '06:06 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(290, '17-08-2024', '07:01 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(291, '17-08-2024', '07:02 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(292, '21-08-2024', '12:19:31', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_2'),
(293, '21-08-2024', '12:19:39', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_2'),
(294, '21-08-2024', '12:19 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(295, '21-08-2024', '12:20 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(296, '21-08-2024', '12:22:19', 'Add Patient', 'Add Patient and Appointment scheduled', 'Madan Mahal', 'DH_7'),
(297, '21-08-2024', '12:22:36', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_7'),
(298, '21-08-2024', '12:22 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_7'),
(299, '21-08-2024', '12:22 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_7'),
(300, '21-08-2024', '12:22 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_7'),
(301, '21-08-2024', '12:23 PM', 'Treatment Suggest', 'Select Treatment : Indirect Pulp Capping with MTA @ per tooth for disease : Caries', 'Madan Mahal', 'DH_7'),
(302, '21-08-2024', '12:24 PM', 'Secuirty Amount', '2000 Secuirty Amount Added', 'Madan Mahal', 'DH_7'),
(303, '21-08-2024', '12:24 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_7'),
(304, '21-08-2024', '12:25 PM', 'Security Amount Used', '1500 security amount used', 'Madan Mahal', 'DH_7'),
(305, '21-08-2024', '12:25 PM', 'Treatment Procedure', 'Indirect Pulp Capping with MTA @ per tooth Treatment Done, TPID : 13', 'Madan Mahal', 'DH_7'),
(306, '21-08-2024', '13:16:43', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_7'),
(307, '21-08-2024', '13:16:51', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_7'),
(308, '21-08-2024', '01:17 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_7'),
(309, '21-08-2024', '01:17 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_7'),
(310, '21-08-2024', '01:17 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_7'),
(311, '21-08-2024', '01:17 PM', 'Treatment Suggest', 'Select Treatment : Full mouth Implant for disease : Caries', 'Madan Mahal', 'DH_7'),
(312, '21-08-2024', '01:18 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_7'),
(313, '21-08-2024', '01:18 PM', 'Treatment Procedure', 'Sitting Done, TPID : 14', 'Madan Mahal', 'DH_7'),
(314, '21-08-2024', '13:21:13', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_7'),
(315, '21-08-2024', '13:21:17', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_7'),
(316, '21-08-2024', '01:21 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_7'),
(317, '21-08-2024', '01:21 PM', 'Sitting Considered', '2 Sitting Started', 'Madan Mahal', 'DH_7'),
(318, '21-08-2024', '01:22 PM', 'Treatment Procedure', 'Full mouth Implant Treatment Done, TPID : 14', 'Madan Mahal', 'DH_7'),
(319, '21-08-2024', '01:23 PM', 'Final Bill Generation', 'Final Bill Generated for TPID : 14', 'Madan Mahal', 'DH_7'),
(320, '22-08-2024', '11:46:53', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_7'),
(321, '22-08-2024', '11:47:09', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_7'),
(322, '22-08-2024', '11:47 AM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_7'),
(323, '22-08-2024', '11:47:35', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_6'),
(324, '22-08-2024', '11:47:48', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_2'),
(325, '22-08-2024', '11:47:55', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_7'),
(326, '22-08-2024', '11:47:59', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_2'),
(327, '22-08-2024', '11:48:01', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_6'),
(328, '22-08-2024', '11:48 AM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(329, '22-08-2024', '11:49 AM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_7'),
(330, '22-08-2024', '11:49 AM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_7'),
(331, '22-08-2024', '11:49 AM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(332, '22-08-2024', '11:49 AM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_7'),
(333, '22-08-2024', '11:49 AM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_7'),
(334, '22-08-2024', '11:49 AM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_7'),
(335, '22-08-2024', '11:50 AM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_7'),
(336, '22-08-2024', '11:50 AM', 'Treatment Suggest', 'Select Treatment : Retention plate@ per arch for disease : Fracture', 'Madan Mahal', 'DH_7'),
(337, '22-08-2024', '11:52 AM', 'Secuirty Amount', '10000 Secuirty Amount Added', 'Madan Mahal', 'DH_7'),
(338, '22-08-2024', '11:53 AM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(339, '22-08-2024', '11:53 AM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(340, '22-08-2024', '11:54 AM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_7'),
(341, '22-08-2024', '11:54 AM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(342, '22-08-2024', '11:55 AM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(343, '22-08-2024', '11:56 AM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(344, '22-08-2024', '11:56 AM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_7'),
(345, '22-08-2024', '11:56 AM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(346, '22-08-2024', '11:57 AM', 'Security Amount Used', '4000 security amount used', 'Madan Mahal', 'DH_7'),
(347, '22-08-2024', '11:57 AM', 'Treatment Procedure', 'Sitting Done, TPID : 15', 'Madan Mahal', 'DH_7'),
(348, '22-08-2024', '11:57 AM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(349, '22-08-2024', '11:59 AM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(350, '22-08-2024', '12:00 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(351, '22-08-2024', '12:00 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(352, '22-08-2024', '12:00 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(353, '22-08-2024', '12:00 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(354, '22-08-2024', '12:01 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(355, '22-08-2024', '12:01 PM', 'Examination', 'Selected Category Dental-X', 'Madan Mahal', 'DH_2'),
(356, '22-08-2024', '12:01 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_2'),
(357, '22-08-2024', '12:01 PM', 'Examination', 'Add Teeth DentalX', 'Madan Mahal', 'DH_2'),
(358, '22-08-2024', '12:02 PM', 'Treatment Suggest', 'Select Treatment : Root Canal Treatment @ per tooth for disease : Caries', 'Madan Mahal', 'DH_2'),
(359, '22-08-2024', '12:02 PM', 'Treatment Suggest', 'Select Treatment : Third Molar /Impacted Tooth Removal for disease : Fracture', 'Madan Mahal', 'DH_2'),
(360, '22-08-2024', '12:02 PM', 'Secuirty Amount', '6000 Secuirty Amount Added', 'Madan Mahal', 'DH_2'),
(361, '22-08-2024', '12:03 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_2'),
(362, '22-08-2024', '12:03 PM', 'Security Amount Used', '5400 security amount used', 'Madan Mahal', 'DH_2'),
(363, '22-08-2024', '12:03 PM', 'Treatment Procedure', 'Root Canal Treatment @ per tooth Treatment Done, TPID : 16', 'Madan Mahal', 'DH_2'),
(364, '22-08-2024', '12:04:10', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_2'),
(365, '22-08-2024', '12:04:15', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_2'),
(366, '22-08-2024', '12:04 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(367, '22-08-2024', '12:05 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(368, '22-08-2024', '12:05 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_2'),
(369, '22-08-2024', '12:05 PM', 'Sitting Considered', '1 Sitting Started', 'Madan Mahal', 'DH_2'),
(370, '22-08-2024', '12:08 PM', 'Treatment Procedure', 'Third Molar Impacted Tooth Removal Treatment Done, TPID : 16', 'Madan Mahal', 'DH_2'),
(371, '22-08-2024', '12:08 PM', 'Final Bill Generation', 'Final Bill Generated for TPID : 16', 'Madan Mahal', 'DH_2'),
(372, '22-08-2024', '12:10:27', 'Appointment', 'Appointment scheduled', 'Madan Mahal', 'DH_7'),
(373, '22-08-2024', '12:10:32', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_7'),
(374, '22-08-2024', '12:14 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_7'),
(375, '22-08-2024', '15:29:47', 'Add Patient', 'Add Patient and Appointment scheduled', 'Madan Mahal', 'DH_8'),
(376, '22-08-2024', '15:30:13', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_8'),
(377, '22-08-2024', '03:36 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_8'),
(378, '22-08-2024', '03:37 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_8'),
(379, '22-08-2024', '03:38 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_8'),
(380, '22-08-2024', '03:38 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_8'),
(381, '22-08-2024', '03:39 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_8'),
(382, '22-08-2024', '03:40 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_8'),
(383, '22-08-2024', '03:41 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_8'),
(384, '22-08-2024', '03:41 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_8'),
(385, '22-08-2024', '03:42 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_8'),
(386, '22-08-2024', '03:42 PM', 'Examination', 'Start Examintion', 'Madan Mahal', 'DH_6'),
(387, '22-08-2024', '15:51:45', 'Cancel Appointment', 'Cancel Appointment', 'Madan Mahal', 'DH_6'),
(388, '22-08-2024', '15:55:03', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_7'),
(389, '22-08-2024', '15:58:19', 'Appointment', 'Patient Check-In', 'Madan Mahal', 'DH_7');

-- --------------------------------------------------------

--
-- Table structure for table `payment_details`
--

CREATE TABLE `payment_details` (
  `pay_id` int(100) NOT NULL,
  `bill_id` int(100) DEFAULT NULL,
  `uhid` varchar(100) DEFAULT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `bill_amount` int(100) DEFAULT NULL,
  `paid_amount` int(100) DEFAULT NULL,
  `pending_amount` int(100) DEFAULT NULL,
  `billed_service` varchar(255) DEFAULT NULL,
  `payment_mode` varchar(100) DEFAULT NULL,
  `payment_status` varchar(100) DEFAULT NULL,
  `payment_date` varchar(100) DEFAULT NULL,
  `payment_time` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prescription_details`
--

CREATE TABLE `prescription_details` (
  `prescription_id` int(100) NOT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `uhid` varchar(100) DEFAULT NULL,
  `doctor_id` varchar(100) DEFAULT NULL,
  `doctor_name` varchar(100) DEFAULT NULL,
  `medicine_name` varchar(100) DEFAULT NULL,
  `dosage` varchar(100) DEFAULT NULL,
  `frequency` varchar(100) DEFAULT NULL,
  `duration` varchar(100) DEFAULT NULL,
  `note` varchar(100) DEFAULT NULL,
  `prescription_date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_inventory`
--

CREATE TABLE `purchase_inventory` (
  `pur_id` int(255) NOT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_category` varchar(255) DEFAULT NULL,
  `item_mrp` varchar(255) DEFAULT NULL,
  `item_code` varchar(255) DEFAULT NULL,
  `HSN_code` varchar(255) DEFAULT NULL,
  `pur_quantity` int(255) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `total_amount` varchar(255) DEFAULT NULL,
  `branch_name` varchar(255) DEFAULT NULL,
  `available_stock` int(255) DEFAULT NULL,
  `low_stock_threshhold` int(255) DEFAULT NULL,
  `distributor_name` varchar(255) DEFAULT NULL,
  `distributor_number` varchar(255) DEFAULT NULL,
  `bill_receipt_doc` varchar(255) DEFAULT NULL,
  `purchase_date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase_inventory`
--

INSERT INTO `purchase_inventory` (`pur_id`, `item_name`, `item_category`, `item_mrp`, `item_code`, `HSN_code`, `pur_quantity`, `discount`, `total_amount`, `branch_name`, `available_stock`, `low_stock_threshhold`, `distributor_name`, `distributor_number`, `bill_receipt_doc`, `purchase_date`) VALUES
(1, 'Disprin 325 tablet', 'drugs', '200', '3004', '3004', 10, '', '2000', 'Madan Mahal', 50, 20, 'Virumal', '8602161019', 'http://localhost:7777/reciept_doc/1709191637374kd.jpg', '2024-05-02'),
(2, 'Disprin 325 tablet', 'drugs', '200', '3004', '3004', 10, '', '2000', 'Madan Mahal', 50, 10, 'Virumal', '8602161019', NULL, '2024-02-26'),
(3, 'Disprin 325 tablet', 'true', '300', '3005', '3005', 20, '500', '5500', 'Madan Mahal', 20, 10, 'Virumal', '8602161019', 'http://localhost:7777/reciept_doc/1709210553720Bigbulls Course.png', '2024-03-05'),
(4, 'Disprin 350 tablet', 'drugs', '200', '3006', '3006', 20, '200', '3800', 'Madan Mahal', 20, 10, 'virumal', '8602161019', 'http://localhost:7777/reciept_doc/1709191637374kd.jpg', '2024-02-29'),
(8, 'Disprin 500 tablet', 'Drug', '500', '3008', '3008', 28, '500', '14000', 'Madan Mahal', 28, 5, 'virumal', '8602161019', 'http://localhost:7777/reciept_doc/1709355700796kd.jpg', '2024-03-02'),
(10, 'Disprin 400 tablet', 'drug', '200', '3007', '3007', 10, '', '2000', 'Madan Mahal', 50, 10, 'Virumal', '8602161019', 'http://localhost:https://dentalgurusuperadmin.doaguru.com/reciept_doc/1710060533673Bigbulls Course.png', '0000-00-00'),
(11, 'Disprin 400 tablet', 'drug', '200', '3009', '3009', 10, '', '2000', 'Madan Mahal', 50, 10, 'Virumal', '8602161019', 'http://localhost:https://dentalgurusuperadmin.doaguru.com/reciept_doc/1710060654402Bigbulls Course.png', '0000-00-00'),
(12, 'Disprin 400 tablet', 'drug', '200', '3010', '3010', 10, '', '2000', 'Madan Mahal', 50, 10, 'Virumal', '8602161019', 'http://localhost:https://dentalgurusuperadmin.doaguru.com/reciept_doc/1710060711681Bigbulls Course.png', '0000-00-00'),
(13, 'Disprin 400 tablet', 'drug', '200', '3011', '3011', 10, '', '2000', 'Madan Mahal', 50, 10, 'Virumal', '8602161019', 'https://dentalgurusuperadmin.doaguru.com/reciept_doc/1710060776147Bigbulls Course.png', '0000-00-00'),
(14, 'Disprin 400 tablet', 'drug', '200', '3012', '3012', 10, '', '2000', 'Madan Mahal', 50, 10, 'Virumal', '8602161019', 'https://dentalgurusuperadmin.doaguru.com/reciept_doc/1710060815049Bigbulls Course.png', '0000-00-00'),
(21, 'test', 'drug', '200', '3017', '3017', 10, '', '2000', 'Madan Mahal', 50, 10, 'Virumal', '8602161019', 'https://dentalgurusuperadmin.doaguru.com/reciept_doc/17149865245531709210206279kd.jpg', '0000-00-00'),
(22, 'testone', 'drug', '100', '3019', '3019', 10, '0', '1000', 'Madan Mahal', 10, 10, 'testone', '9999999999', 'https://dentalgurusuperadmin.doaguru.com/reciept_doc/17149866959631709210206279kd.jpg', '2024-05-09');

-- --------------------------------------------------------

--
-- Table structure for table `quick_prescription`
--

CREATE TABLE `quick_prescription` (
  `qp_id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `uhid` varchar(250) DEFAULT NULL,
  `appoint_id` varchar(250) DEFAULT NULL,
  `age` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `chief_complain` varchar(250) DEFAULT NULL,
  `medical_histry` varchar(250) DEFAULT NULL,
  `dental_histry` varchar(250) DEFAULT NULL,
  `onexam` varchar(250) DEFAULT NULL,
  `advice` varchar(250) DEFAULT NULL,
  `medicines` varchar(1000) DEFAULT NULL,
  `dosage` varchar(100) DEFAULT NULL,
  `frequency` varchar(100) DEFAULT NULL,
  `duration` varchar(100) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quick_prescription`
--

INSERT INTO `quick_prescription` (`qp_id`, `name`, `branch_name`, `uhid`, `appoint_id`, `age`, `gender`, `date`, `chief_complain`, `medical_histry`, `dental_histry`, `onexam`, `advice`, `medicines`, `dosage`, `frequency`, `duration`, `note`) VALUES
(1, NULL, 'Madan Mahal', 'DH_7', NULL, NULL, NULL, NULL, 'Swollen gums', 'dededf', 'test', 'dede', 'terst', 'deded', NULL, NULL, NULL, ''),
(2, NULL, 'Madan Mahal', 'DH_7', NULL, NULL, NULL, NULL, 'Swollen gums', 'dededf', 'test', 'dede', 'terst', 'deded', NULL, NULL, NULL, ''),
(3, NULL, 'Madan Mahal', 'DH_7', NULL, '89', 'Male', NULL, 'Bleeding gums', NULL, NULL, 'test', 'test', 'test', NULL, NULL, NULL, ''),
(4, NULL, 'Madan Mahal', 'DH_7', NULL, '89', 'Male', NULL, 'Swollen gums', NULL, NULL, 'tets', 'ts', 'vbnvbn', NULL, NULL, NULL, ''),
(5, NULL, 'Madan Mahal', 'DH_7', NULL, '89', 'Male', NULL, 'Swollen gums', NULL, NULL, 'test', 'test', 'vbnvbn', 'test', '34', '3333', ''),
(6, NULL, NULL, NULL, NULL, '89', 'Male', '22-08-2024 17:50:07', 'Swollen gums', NULL, NULL, 'test', 'tetst', 'deded', '223', '1-1-1', '2 minsdsds', 'tesrrssddsdsd'),
(7, NULL, 'Madan Mahal', NULL, '38', '89', 'Male', '22-08-2024 17:57:12', 'Swollen gums', 'test', 'test', 'tets', 'tetst', 'deded', 'test', '34', '3333', 'sddsddsdsds'),
(8, 'rahul', 'Madan Mahal', 'DH_7', '38', '89', 'Male', '22-08-2024 18:14:59', 'Bleeding gums', 'test', 'test', 'tets', 'tetst', 'deded', 'test', '34', '3333', 'hshshhshssssss');

-- --------------------------------------------------------

--
-- Table structure for table `security_amount`
--

CREATE TABLE `security_amount` (
  `sa_id` int(100) NOT NULL,
  `tp_id` varchar(100) DEFAULT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `appointment_id` int(100) DEFAULT NULL,
  `uhid` varchar(100) DEFAULT NULL,
  `patient_name` varchar(100) DEFAULT NULL,
  `patient_number` varchar(100) DEFAULT NULL,
  `treatment` varchar(255) DEFAULT NULL,
  `assigned_doctor` varchar(100) DEFAULT NULL,
  `amount` int(100) DEFAULT NULL,
  `remaining_amount` int(100) DEFAULT NULL,
  `payment_status` varchar(100) DEFAULT NULL,
  `payment_Mode` varchar(50) DEFAULT NULL,
  `transaction_Id` varchar(50) DEFAULT NULL,
  `payment_date` varchar(50) DEFAULT NULL,
  `notes` varchar(1000) DEFAULT NULL,
  `refund_amount` int(100) DEFAULT NULL,
  `refund_date` varchar(50) DEFAULT NULL,
  `received_by` varchar(100) DEFAULT NULL,
  `refund_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `security_amount`
--

INSERT INTO `security_amount` (`sa_id`, `tp_id`, `branch_name`, `date`, `appointment_id`, `uhid`, `patient_name`, `patient_number`, `treatment`, `assigned_doctor`, `amount`, `remaining_amount`, `payment_status`, `payment_Mode`, `transaction_Id`, `payment_date`, `notes`, `refund_amount`, `refund_date`, `received_by`, `refund_by`) VALUES
(1, '4', 'Madan Mahal', '13-08-2024 13:42:46', 5, 'DH_5', 'Aman', '9806324244', '', 'shadab', 25000, 0, 'success', 'Cash', '', '13-08-2024 13:44:22', '', NULL, NULL, 'shadab', NULL),
(2, '5', 'Madan Mahal', '13-08-2024 17:44:29', 8, 'DH_2', 'Ayushi Singh', '7974507514', '', 'shadab', 600, 600, 'success', 'cash', '', '13-08-2024 17:44:29', NULL, NULL, NULL, 'shadab', NULL),
(3, '6', 'Madan Mahal', '15-08-2024 14:30:07', 10, 'DH_2', 'Ayushi Singh', '7974507514', '', 'shadab', 8000, 0, 'success', 'cash', '', '15-08-2024 14:30:07', NULL, NULL, NULL, 'shadab', NULL),
(4, '8', 'Madan Mahal', '16-08-2024 18:22:51', 13, 'DH_1', 'Raju Pandey', '9399044850', '', 'shadab', 30000, 0, 'success', 'cash', '', '16-08-2024 18:22:51', NULL, NULL, NULL, 'shadab', NULL),
(5, '10', 'Madan Mahal', '17-08-2024 16:42:31', 15, 'DH_5', 'Aman', '8602161019', '', 'shadab', 11000, 0, 'success', 'cash', '', '17-08-2024 16:42:31', NULL, NULL, NULL, 'shadab', NULL),
(6, '11', 'Madan Mahal', '17-08-2024 17:01:27', 17, 'DH_6', 'mohit', '8989898989', '', 'shadab', 1000, 0, 'success', 'cash', '', '17-08-2024 17:01:27', NULL, NULL, NULL, 'shadab', NULL),
(7, '12', 'Madan Mahal', '17-08-2024 17:38:48', 25, 'DH_6', 'mohit', '8989898989', '', 'shadab', 40000, 0, 'success', 'cash', '', '17-08-2024 17:38:48', NULL, NULL, NULL, 'shadab', NULL),
(8, '13', 'Madan Mahal', '21-08-2024 12:24:06', 31, 'DH_7', 'rahul', '7877878787', '', 'shadab', 2000, 0, 'Refunded', 'cash', '', '21-08-2024 12:24:06', NULL, 500, '22-08-2024 12:26:49', 'shadab', 'shadab'),
(9, '15', 'Madan Mahal', '22-08-2024 11:52:48', 34, 'DH_7', 'rahul', '7877878787', '', 'shadab', 10000, 6000, 'pending', 'cash', '', '22-08-2024 11:55:24', 'okay we ', NULL, NULL, 'kuldeepdoauruinfosystems@gmail.com', NULL),
(10, '16', 'Madan Mahal', '22-08-2024 12:02:54', 36, 'DH_2', 'Ayushi Singh', '7974507514', '', 'shadab', 6000, 600, 'success', 'cash', '', '22-08-2024 12:02:54', NULL, NULL, NULL, 'shadab', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sitting_bill`
--

CREATE TABLE `sitting_bill` (
  `sb_id` int(100) NOT NULL,
  `tp_id` int(100) DEFAULT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `sitting_number` int(100) DEFAULT NULL,
  `treatment` varchar(100) DEFAULT NULL,
  `teeth_number` varchar(100) DEFAULT NULL,
  `teeth_qty` int(100) DEFAULT NULL,
  `treatment_cost` int(100) DEFAULT NULL,
  `cost_per_qty` int(100) DEFAULT NULL,
  `discount` int(100) DEFAULT NULL,
  `final_cost` int(100) DEFAULT NULL,
  `sitting_amount` int(100) DEFAULT NULL,
  `paid_amount` int(100) DEFAULT NULL,
  `pending_amount` int(100) DEFAULT NULL,
  `pay_direct` int(100) DEFAULT NULL,
  `pay_security_amount` int(100) DEFAULT NULL,
  `pending_sitting_amount` int(100) DEFAULT NULL,
  `payment_mode` varchar(100) DEFAULT NULL,
  `reference_number` varchar(100) DEFAULT NULL,
  `payment_status` varchar(100) DEFAULT NULL,
  `note` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sitting_bill`
--

INSERT INTO `sitting_bill` (`sb_id`, `tp_id`, `branch_name`, `sitting_number`, `treatment`, `teeth_number`, `teeth_qty`, `treatment_cost`, `cost_per_qty`, `discount`, `final_cost`, `sitting_amount`, `paid_amount`, `pending_amount`, `pay_direct`, `pay_security_amount`, `pending_sitting_amount`, `payment_mode`, `reference_number`, `payment_status`, `note`, `date`) VALUES
(2, 1, 'Madan Mahal', 1, 'Laminates and Veneers@ per tooth', '18, 17', 2, 10000, 20000, 1, 8000, 8000, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'Credit', '', '12-08-2024 19:10:49'),
(3, 3, 'Madan Mahal', 1, 'Pulpectomy (Child) @ per tooth', '18, 17', 2, 2800, 5600, 10, 5040, 1000, NULL, 4040, NULL, NULL, NULL, NULL, NULL, 'Credit', 'test', '12-08-2024 19:25:11'),
(4, 3, 'Madan Mahal', 1, 'Pulpectomy (Child) @ per tooth', '18, 17', 2, 2800, 5600, 10, 5040, 2000, NULL, 3040, NULL, NULL, NULL, NULL, NULL, 'Credit', '', '12-08-2024 19:26:47'),
(5, 3, 'Madan Mahal', 2, 'Pulpectomy (Child) @ per tooth', '18, 17', 2, 2800, 5600, 10, 3040, 1000, NULL, 2040, NULL, NULL, NULL, NULL, NULL, 'Credit', 'tewsat to', '12-08-2024 19:29:05'),
(6, 3, 'Madan Mahal', 3, 'Pulpectomy (Child) @ per tooth', '18, 17', 2, 2800, 5600, 10, 2040, 1000, NULL, 1040, NULL, NULL, NULL, 'Credit', NULL, 'Credit', 'test four', '12-08-2024 19:46:10'),
(7, 4, 'Madan Mahal', 1, 'Single Implant', '18, 17', 2, 25000, 50000, 0, 50000, 20000, NULL, 30000, NULL, NULL, NULL, '', NULL, 'pending', '', '13-08-2024 13:45:30'),
(8, 4, 'Madan Mahal', 1, 'Single Implant', '18, 17', 2, 25000, 50000, 0, 30000, 5000, NULL, 25000, NULL, NULL, NULL, '', NULL, 'paid', '', '13-08-2024 13:51:14'),
(9, 6, 'Madan Mahal', 1, 'Root Canal Treatment @ per tooth', '18, 17', 2, 3000, 6000, 10, 5400, 5400, 5400, 0, NULL, NULL, NULL, '', NULL, 'paid', 'test', '15-08-2024 15:13:17'),
(10, 6, 'Madan Mahal', 2, 'Root Canal Treatment @ per tooth', '18, 17', 2, 3000, 6000, 10, 0, 0, NULL, 0, NULL, NULL, NULL, '', NULL, 'Pending', '', '15-08-2024 16:31:01'),
(11, 6, 'Madan Mahal', 1, 'Teeth Bleaching at Home Whitening', '16, 15', 2, 5000, 10000, 10, 9000, 2600, NULL, 6400, 0, 2600, NULL, '', NULL, 'paid', 'tedst', '15-08-2024 16:47:24'),
(12, 6, 'Madan Mahal', 2, 'Teeth Bleaching at Home Whitening', '16, 15', 2, 5000, 10000, 10, 6400, 1000, 1000, 5400, 1000, 0, NULL, '', NULL, 'paid', 'test', '15-08-2024 16:51:47'),
(13, 6, 'Madan Mahal', 3, 'Teeth Bleaching at Home Whitening', '16, 15', 2, 5000, 10000, 10, 5400, 5400, 5400, 0, 5400, 0, NULL, '', NULL, 'paid', 'test', '15-08-2024 16:53:21'),
(14, 3, 'Madan Mahal', 4, 'Pulpectomy (Child) @ per tooth', '18, 17', 2, 2800, 5600, 10, 1040, 1040, 1040, 0, 1040, 0, NULL, 'Credit', NULL, 'Credit', '', '15-08-2024 17:02:00'),
(15, 8, 'Madan Mahal', 1, 'Re-Root Canal Treatlment @ per tooth', '18, 17', 2, 4000, 8000, 10, 7200, 7200, 7200, 0, 0, 7200, NULL, 'Credit', NULL, 'paid', 'test', '16-08-2024 18:44:05'),
(16, 8, 'Madan Mahal', 2, 'Re-Root Canal Treatlment @ per tooth', '18, 17', 2, 4000, 8000, 10, 0, 0, 0, 0, 0, 0, NULL, 'Credit', NULL, 'paid', 'test', '16-08-2024 18:45:30'),
(17, 8, 'Madan Mahal', 1, 'Metal Braces', '16, 15', 2, 30000, 60000, 10, 54000, 22800, 22800, 31200, 0, 22800, NULL, '', NULL, 'paid', 'test', '16-08-2024 19:01:59'),
(18, 8, 'Madan Mahal', 2, 'Metal Braces', '16, 15', 2, 30000, 60000, 10, 31200, 31200, 31200, 0, 31200, 0, NULL, '', NULL, 'paid', 'test', '16-08-2024 19:09:18'),
(19, 8, 'Madan Mahal', 1, 'Porcelain Fused to Metal @ per Crown', '14, 13', 2, 3000, 6000, 10, 5400, 5400, 5400, 0, 5400, 0, NULL, '', NULL, 'paid', 'test', '16-08-2024 19:09:52'),
(20, 9, 'Madan Mahal', 1, 'Amalgam Restoration@ per tooth', '55, 54', 2, 800, 1600, 10, 1440, 1440, 1440, 0, 1440, 0, NULL, 'Credit', NULL, 'Credit', 'test', '16-08-2024 19:21:10'),
(21, 9, 'Madan Mahal', 1, 'Ceramic Braces', '53, 52', 2, 45000, 90000, 10, 81000, 81000, 81000, 0, 81000, 0, NULL, 'Credit', NULL, 'Credit', 'test', '16-08-2024 19:21:43'),
(22, 10, 'Madan Mahal', 1, 'Teeth Bleaching In Office Whitening', '18, 17', 2, 8000, 16000, 10, 14400, 8000, 8000, 6400, 0, 8000, NULL, '', NULL, 'paid', 'test', '17-08-2024 16:45:01'),
(23, 10, 'Madan Mahal', 2, 'Teeth Bleaching In Office Whitening', '18, 17', 2, 8000, 16000, 10, 6400, 3000, 3000, 3400, 0, 3000, NULL, '', NULL, 'paid', 'test', '17-08-2024 16:46:35'),
(24, 10, 'Madan Mahal', 3, 'Teeth Bleaching In Office Whitening', '18, 17', 2, 8000, 16000, 10, 3400, 3400, 3400, 0, 3400, 0, NULL, '', NULL, 'paid', 'test', '17-08-2024 16:47:31'),
(25, 11, 'Madan Mahal', 1, 'Metal Crowns @ Per Crown', '18, 17', 2, 1500, 3000, 10, 2700, 1000, 1000, 1700, 0, 1000, NULL, '', NULL, 'paid', 'test', '17-08-2024 17:10:59'),
(26, 11, 'Madan Mahal', 2, 'Metal Crowns @ Per Crown', '18, 17', 2, 1500, 3000, 10, 1700, 1700, 1700, 0, 1700, 0, NULL, '', NULL, 'paid', 'test', '17-08-2024 17:12:07'),
(27, 12, 'Madan Mahal', 1, 'Direct Composite Veneer @ per tooth', '18, 17', 2, 2500, 5000, 10, 4500, 4500, 4500, 0, 0, 4500, NULL, '', NULL, 'paid', 'tesdt', '17-08-2024 17:50:02'),
(28, 12, 'Madan Mahal', 1, 'Ceramic Braces', '18, 17', 2, 45000, 90000, 10, 81000, 35500, 35500, 45500, 0, 35500, NULL, '', NULL, 'paid', 'tsest', '17-08-2024 17:53:38'),
(29, 12, 'Madan Mahal', 2, 'Ceramic Braces', '18, 17', 2, 45000, 90000, 10, 45500, 45500, 45500, 0, 45500, 0, NULL, '', NULL, 'paid', 'test', '17-08-2024 17:54:00'),
(30, 13, 'Madan Mahal', 1, 'Indirect Pulp Capping with MTA @ per tooth', '18, 17', 2, 2000, 4000, 0, 4000, 1500, 1500, 2500, 0, 1500, NULL, '', NULL, 'paid', '', '21-08-2024 12:25:48'),
(31, 14, 'Madan Mahal', 1, 'Full mouth Implant', '18, 17', 2, 250000, 500000, 0, 500000, 100000, 100000, 400000, 100000, 0, NULL, '', NULL, 'paid', '', '21-08-2024 13:18:51'),
(32, 14, 'Madan Mahal', 2, 'Full mouth Implant', '18, 17', 2, 250000, 500000, 0, 400000, 400000, 400000, 0, 400000, 0, NULL, '', NULL, 'paid', '', '21-08-2024 13:22:27'),
(33, 15, 'Madan Mahal', 1, 'Retention plate@ per arch', '18, 17', 2, 2000, 4000, 0, 4000, 4000, 4000, 0, 0, 4000, NULL, '', NULL, 'paid', '', '22-08-2024 11:57:14'),
(34, 16, 'Madan Mahal', 1, 'Root Canal Treatment @ per tooth', '18, 17', 2, 3000, 6000, 10, 5400, 5400, 5400, 0, 0, 5400, NULL, '', NULL, 'paid', 'test', '22-08-2024 12:03:35'),
(35, 16, 'Madan Mahal', 1, 'Third Molar Impacted Tooth Removal', '16, 15', 2, 3000, 6000, 10, 5400, 5400, 5400, 0, 5400, 0, NULL, '', NULL, 'paid', 'test', '22-08-2024 12:08:23');

-- --------------------------------------------------------

--
-- Table structure for table `staff_salary`
--

CREATE TABLE `staff_salary` (
  `sl_id` int(100) NOT NULL,
  `employee_ID` varchar(100) DEFAULT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `payable_salary` varchar(100) DEFAULT NULL,
  `paid_salary` varchar(100) DEFAULT NULL,
  `due_salary` varchar(100) DEFAULT NULL,
  `advance_payment` varchar(100) DEFAULT NULL,
  `pay_date` datetime(6) DEFAULT NULL,
  `pay_status` varchar(100) DEFAULT NULL,
  `pay_month` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff_salary`
--

INSERT INTO `staff_salary` (`sl_id`, `employee_ID`, `branch_name`, `payable_salary`, `paid_salary`, `due_salary`, `advance_payment`, `pay_date`, `pay_status`, `pay_month`) VALUES
(1, 'dg_1', 'Madan Mahal', '20000', '18000', '2000', '', '2024-04-10 14:00:00.000000', '', 'March 2024'),
(2, 'dg_1', 'Madan Mahal', '20000', '18000', '2000', '', '2024-04-10 14:00:00.000000', '', 'March 2024'),
(3, 'dg_2', 'Madan Mahal', '20000', '18000', '2000', '', '2024-04-10 14:00:00.000000', '', 'March 2024'),
(4, 'dg_5', 'Madan Mahal', '20000', '18000', '2000', '', '2024-04-10 14:00:00.000000', 'success', 'March');

-- --------------------------------------------------------

--
-- Table structure for table `super_admin`
--

CREATE TABLE `super_admin` (
  `sa_id` int(255) NOT NULL,
  `hospital_id` varchar(255) DEFAULT NULL,
  `hospital_name` varchar(255) DEFAULT NULL,
  `super_name` varchar(255) DEFAULT NULL,
  `super_email` varchar(255) DEFAULT NULL,
  `super_mobile` varchar(255) DEFAULT NULL,
  `super_password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `super_admin`
--

INSERT INTO `super_admin` (`sa_id`, `hospital_id`, `hospital_name`, `super_name`, `super_email`, `super_mobile`, `super_password`) VALUES
(1, 'hos_1', 'dental square', 'mohit sahu', 'kuldeepdoauruinfosystems@gmail.com', '8602161019', '$2a$10$AvonBlGGaSAPdoNBBcL9V.WfytnSOwRsd4Zclqqd6gs0CcdMW34i6'),
(2, 'hos_1', 'dental square', 'mohit sahu', 'vinaydhariya21@gmail.com', '8602161019', '$2a$10$dkgBpGckBIfSWJxsTTneyuxaVR.OIkyP.RWFDS0x.ZOY6XqBMk/Pm');

-- --------------------------------------------------------

--
-- Table structure for table `treatment_list`
--

CREATE TABLE `treatment_list` (
  `treatment_id` int(255) NOT NULL,
  `treatment_name` varchar(255) DEFAULT NULL,
  `treatment_cost` varchar(255) DEFAULT NULL,
  `treatment_discount` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `treatment_list_copy`
--

CREATE TABLE `treatment_list_copy` (
  `treatment_id` int(255) NOT NULL,
  `treat_procedure_id` int(100) DEFAULT NULL,
  `treat_procedure_name` varchar(100) DEFAULT NULL,
  `treatment_name` varchar(1000) DEFAULT NULL,
  `treatment_cost` varchar(255) DEFAULT NULL,
  `treatment_discount` varchar(255) DEFAULT NULL,
  `value` varchar(1000) NOT NULL,
  `label` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `treatment_list_copy`
--

INSERT INTO `treatment_list_copy` (`treatment_id`, `treat_procedure_id`, `treat_procedure_name`, `treatment_name`, `treatment_cost`, `treatment_discount`, `value`, `label`) VALUES
(1, 2, 'Dental IOPA X Ray', 'Digital Compuler zcd XRay (R.V.G.)', '300', NULL, 'Digital Compuler zcd XRay (R.V.G.)', 'Digital Compuler zcd XRay (R.V.G.)'),
(2, 3, 'Endodontlc Procedures', 'Root Canal Treatment @ per tooth', '3000', NULL, 'Root Canal Treatment @ per tooth', 'Root Canal Treatment @ per tooth'),
(3, 3, 'Endodontlc Procedures', 'Re-Root Canal Treatlment @ per tooth', '4000', NULL, 'Re-Root Canal Treatlment @ per tooth', 'Re-Root Canal Treatlment @ per tooth'),
(4, 3, 'Endodontlc Procedures', 'Pulpectomy (Child) @ per tooth', '2800', NULL, 'Pulpectomy (Child) @ per tooth', 'Pulpectomy (Child) @ per tooth'),
(5, 3, 'Endodontlc Procedures', 'Post and core @ per tooth', '2000', NULL, 'Post and core @ per tooth', 'Post and core @ per tooth'),
(6, 3, 'Endodontlc Procedures', 'Indirect Pulp Capping @ per tooth', '1500', NULL, 'Indirect Pulp Capping @ per tooth', 'Indirect Pulp Capping @ per tooth'),
(7, 3, 'Endodontlc Procedures', 'Indirect Pulp Capping with MTA @ per tooth', '2000', NULL, 'Indirect Pulp Capping with MTA @ per tooth', 'Indirect Pulp Capping with MTA @ per tooth'),
(8, 4, 'Restorative & Cosmetic Procedures', 'Composite Restoration @ per tooth', '1500', NULL, 'Composite Restoration @ per tooth', 'Composite Restoration @ per tooth'),
(9, 4, 'Restorative & Cosmetic Procedures', 'Amalgam Restoration@ per tooth', '800', NULL, 'Amalgam Restoration@ per tooth', 'Amalgam Restoration@ per tooth'),
(10, 4, 'Restorative & Cosmetic Procedures', 'GIC Restoration @ per tooth', '600', NULL, 'GIC Restoration @ per tooth', 'GIC Restoration @ per tooth'),
(11, 4, 'Restorative & Cosmetic Procedures', 'Laminates and Veneers@ per tooth', '10000', NULL, 'Laminates and Veneers@ per tooth', 'Laminates and Veneers@ per tooth'),
(12, 4, 'Restorative & Cosmetic Procedures', 'Direct Composite Veneer @ per tooth', '2500', NULL, 'Direct Composite Veneer @ per tooth', 'Direct Composite Veneer @ per tooth'),
(13, 4, 'Restorative & Cosmetic Procedures', 'Teeth Bleaching In Office Whitening', '8000', NULL, 'Teeth Bleaching In Office Whitening', 'Teeth Bleaching In Office Whitening'),
(14, 4, 'Restorative & Cosmetic Procedures', 'Teeth Bleaching at Home Whitening', '5000', NULL, 'Teeth Bleaching at Home Whitening', 'Teeth Bleaching at Home Whitening'),
(15, 4, 'Restorative & Cosmetic Procedures', 'Dental Jewellery (Skyce Crystal)', '2000', NULL, 'Dental Jewellery (Skyce Crystal)', 'Dental Jewellery (Skyce Crystal)'),
(16, 5, 'Prosthetic Procedures', 'Metal Free Crown Ziconia Crowns @ per Crown', '8000', NULL, 'Metal Free Crown Ziconia Crowns @ per Crown', 'Metal Free Crown Ziconia Crowns @ per Crown'),
(17, 5, 'Prosthetic Procedures', 'Porcelain Fused to Metal @ per Crown', '3000', NULL, 'Porcelain Fused to Metal @ per Crown', 'Porcelain Fused to Metal @ per Crown'),
(18, 5, 'Prosthetic Procedures', 'Metal Crowns @ Per Crown', '1500', NULL, 'Metal Crowns @ Per Crown', 'Metal Crowns @ Per Crown'),
(19, 5, 'Prosthetic Procedures', 'Metal Crowns with acrylic facing @ per Crown', '1800', NULL, 'Metal Crowns with acrylic facing @ per Crown', 'Metal Crowns with acrylic facing @ per Crown'),
(20, 5, 'Prosthetic Procedures', 'Removable Partial Dentures @ per tooth', '800', NULL, 'Removable Partial Dentures @ per tooth', 'Removable Partial Dentures @ per tooth'),
(21, 5, 'Prosthetic Procedures', 'Removable Full Moulh Complete Denture', '15000', NULL, 'Removable Full Moulh Complete Denture', 'Removable Full Moulh Complete Denture'),
(22, 5, 'Prosthetic Procedures', 'Crown & Bridge refix', '300', NULL, 'Crown & Bridge refix', 'Crown & Bridge refix'),
(23, 6, 'Orthodentics (Braces) Procedures', 'Metal Braces', '30000', NULL, 'Metal Braces', 'Metal Braces'),
(24, 6, 'Orthodentics (Braces) Procedures', 'Ceramic Braces', '45000', NULL, 'Ceramic Braces', 'Ceramic Braces'),
(25, 6, 'Orthodentics (Braces) Procedures', 'Lingual Braces', '80000', NULL, 'Lingual Braces', 'Lingual Braces'),
(26, 6, 'Orthodentics (Braces) Procedures', 'lnvisalign (clear or invisible braces)', '80000', NULL, 'lnvisalign (clear or invisible braces)', 'lnvisalign (clear or invisible braces)'),
(27, 6, 'Orthodentics (Braces) Procedures', 'Retention plate@ per arch', '2000', NULL, 'Retention plate@ per arch', 'Retention plate@ per arch'),
(28, 6, 'Orthodentics (Braces) Procedures', 'Self ligating metal braces', '55000', NULL, 'Self ligating metal braces', 'Self ligating metal braces'),
(29, 6, 'Orthodentics (Braces) Procedures', 'Self ligatating ceramic braces', '75000', NULL, 'Self ligatating ceramic braces', 'Self ligatating ceramic braces'),
(30, 6, 'Orthodentics (Braces) Procedures', 'Retainer (removable)', '3000', NULL, 'Retainer (removable)', 'Retainer (removable)'),
(31, 7, 'Oral Surgery Procedures', 'Extraction per tooth under LA', '500', NULL, 'Extraction per tooth under LA', 'Extraction per tooth under LA'),
(32, 7, 'Oral Surgery Procedures', 'Complicated Extraction per tooth under LA', '1000', NULL, 'Complicated Extraction per tooth under LA', 'Complicated Extraction per tooth under LA'),
(33, 7, 'Oral Surgery Procedures', 'Third Molar Impacted Tooth Removal', '3000', NULL, 'Third Molar Impacted Tooth Removal', 'Third Molar Impacted Tooth Removal'),
(34, 7, 'Oral Surgery Procedures', 'Apicoectomy @ per tooth', '2500', NULL, 'Apicoectomy @ per tooth', 'Apicoectomy @ per tooth'),
(35, 7, 'Oral Surgery Procedures', 'Minor Surgical Procedures under LA', '5000', NULL, 'Minor Surgical Procedures under LA', 'Minor Surgical Procedures under LA'),
(36, 7, 'Oral Surgery Procedures', 'Biopsy', '2500', NULL, 'Biopsy', 'Biopsy'),
(37, 7, 'Oral Surgery Procedures', 'I& D (Extra Oral)', '5000', NULL, 'I& D (Extra Oral)', 'I& D (Extra Oral)'),
(38, 7, 'Oral Surgery Procedures', 'I& D ( ntra Oral)', '1500', NULL, 'I& D ( ntra Oral)', 'I& D ( ntra Oral)'),
(40, 8, 'Dental implants', 'Single Implant', '25000', NULL, 'Single Implant', 'Single Implant'),
(41, 8, 'Dental implants', 'Full mouth Implant', '250000', NULL, 'Full mouth Implant', 'Full mouth Implant'),
(42, 8, 'Dental implants', 'Bone Grafting Procedure', '5000', NULL, 'Bone Grafting Procedure', 'Bone Grafting Procedure'),
(43, 9, 'Periodontics', 'Oral Prophylaxis (Scaling)', '1500', NULL, 'Oral Prophylaxis (Scaling)', 'Oral Prophylaxis (Scaling)'),
(44, 9, 'Periodontics', 'Gingivectomy per quadrant by scalpel', '3000', NULL, 'Gingivectomy per quadrant by scalpel', 'Gingivectomy per quadrant by scalpel'),
(45, 9, 'Periodontics', 'Flap Surgery per quadrant without bone graft', '6000', NULL, 'Flap Surgery per quadrant without bone graft', 'Flap Surgery per quadrant without bone graft'),
(46, 9, 'Periodontics', 'Bone Graft Per Tooth', '500', NULL, 'Bone Graft Per Tooth', 'Bone Graft Per Tooth'),
(47, 9, 'Periodontics', 'Operculectomy', '1000', NULL, 'Operculectomy', 'Operculectomy'),
(49, 1, 'OPD', 'OPD', '500', NULL, 'OPD', 'OPD'),
(51, 8, 'Dental implants', 'Sinus Lift Procedure', '15000', NULL, 'Sinus Lift Procedure', 'Sinus Lift Procedure'),
(54, 1919, 'test procedure', 'test treatment', '9898', '', 'test value', 'test label');

-- --------------------------------------------------------

--
-- Table structure for table `treatment_package`
--

CREATE TABLE `treatment_package` (
  `tp_id` int(100) NOT NULL,
  `uhid` varchar(100) DEFAULT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `appointment_id` int(100) DEFAULT NULL,
  `examination_id` int(100) DEFAULT NULL,
  `doctor_id` varchar(100) DEFAULT NULL,
  `doctor_name` varchar(100) NOT NULL,
  `package_status` varchar(50) DEFAULT NULL,
  `diagnosis_category` varchar(100) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `treatment_package`
--

INSERT INTO `treatment_package` (`tp_id`, `uhid`, `branch_name`, `appointment_id`, `examination_id`, `doctor_id`, `doctor_name`, `package_status`, `diagnosis_category`, `created_at`) VALUES
(1, 'DH_1', 'Madan Mahal', 1, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-08-12 13:27:15.495535'),
(2, 'DH_3', 'Madan Mahal', 3, 0, 'dg_4', 'shadab', 'started', 'Dental-X', '2024-08-12 13:41:51.115583'),
(3, 'DH_4', 'Madan Mahal', 4, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-08-12 13:51:24.307778'),
(4, 'DH_5', 'Madan Mahal', 5, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-08-13 08:10:53.689285'),
(5, 'DH_2', 'Madan Mahal', 8, 0, 'dg_4', 'shadab', 'started', 'Dental-X', '2024-08-13 12:13:22.167534'),
(6, 'DH_2', 'Madan Mahal', 10, 0, 'dg_4', 'shadab', 'complete', 'Dental-X', '2024-08-15 08:56:52.055060'),
(7, 'DH_5', 'Madan Mahal', 12, 0, 'dg_4', 'shadab', 'started', 'Dental-X', '2024-08-16 08:03:12.281600'),
(8, 'DH_1', 'Madan Mahal', 13, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-08-16 12:44:21.542838'),
(9, 'DH_1', 'Madan Mahal', 14, 0, 'dg_4', 'shadab', 'completed', 'Pediatric', '2024-08-16 13:47:16.711446'),
(10, 'DH_5', 'Madan Mahal', 15, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-08-17 11:08:18.008310'),
(11, 'DH_6', 'Madan Mahal', 17, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-08-17 11:30:14.330719'),
(12, 'DH_6', 'Madan Mahal', 25, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-08-17 12:06:17.446458'),
(13, 'DH_7', 'Madan Mahal', 31, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-08-21 06:52:43.257849'),
(14, 'DH_7', 'Madan Mahal', 32, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-08-21 07:47:06.363861'),
(15, 'DH_7', 'Madan Mahal', 34, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-08-22 06:19:49.657959'),
(16, 'DH_2', 'Madan Mahal', 36, 0, 'dg_4', 'shadab', 'completed', 'Dental-X', '2024-08-22 06:31:21.759128');

-- --------------------------------------------------------

--
-- Table structure for table `treat_procedure_list`
--

CREATE TABLE `treat_procedure_list` (
  `treat_procedure_id` int(100) NOT NULL,
  `treat_procedure_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `treat_procedure_list`
--

INSERT INTO `treat_procedure_list` (`treat_procedure_id`, `treat_procedure_name`) VALUES
(2, 'Dental IOPA X Ray'),
(3, 'Endodontlc Procedures'),
(4, 'Restorative & Cosmetic Procedures'),
(5, 'Prosthetic Procedures'),
(6, 'Orthodentics (Braces) Procedures'),
(7, 'Oral Surgery Procedures'),
(8, 'Dental implants'),
(9, 'Periodontics');

-- --------------------------------------------------------

--
-- Table structure for table `treat_suggest`
--

CREATE TABLE `treat_suggest` (
  `ts_id` int(11) NOT NULL,
  `tp_id` int(100) DEFAULT NULL,
  `appoint_id` int(11) NOT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `p_uhid` varchar(255) NOT NULL,
  `desease` varchar(100) DEFAULT NULL,
  `treatment_name` varchar(255) DEFAULT NULL,
  `totalCost` varchar(255) DEFAULT NULL,
  `discount` int(100) DEFAULT NULL,
  `paid_amount` int(100) DEFAULT NULL,
  `treatment_status` varchar(255) DEFAULT NULL,
  `consider_sitting` varchar(255) DEFAULT NULL,
  `total_sitting` varchar(255) DEFAULT NULL,
  `current_sitting` int(100) DEFAULT NULL,
  `upcoming_sitting` int(100) DEFAULT NULL,
  `appoint_date` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `current_sitting_status` varchar(100) DEFAULT NULL,
  `upcoming_sitting_status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `treat_suggest`
--

INSERT INTO `treat_suggest` (`ts_id`, `tp_id`, `appoint_id`, `branch_name`, `p_uhid`, `desease`, `treatment_name`, `totalCost`, `discount`, `paid_amount`, `treatment_status`, `consider_sitting`, `total_sitting`, `current_sitting`, `upcoming_sitting`, `appoint_date`, `note`, `current_sitting_status`, `upcoming_sitting_status`) VALUES
(1, 1, 1, 'Madan Mahal', 'DH_1', 'Caries', 'Laminates and Veneers@ per tooth', '10000', NULL, NULL, 'completed', NULL, '2', 1, NULL, NULL, NULL, NULL, NULL),
(2, 2, 3, 'Madan Mahal', 'DH_3', 'Caries', 'Pulpectomy (Child) @ per tooth', '2800', NULL, NULL, 'pending', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 2, 3, 'Madan Mahal', 'DH_3', 'Fracture', 'Removable Partial Dentures @ per tooth', '800', NULL, NULL, 'pending', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 3, 4, 'Madan Mahal', 'DH_4', 'Caries', 'Pulpectomy (Child) @ per tooth', '2800', NULL, NULL, 'completed', NULL, '2', 4, NULL, NULL, NULL, NULL, NULL),
(5, 4, 5, 'Madan Mahal', 'DH_5', 'Caries', 'Single Implant', '25000', NULL, NULL, 'ongoing', NULL, '2', 1, NULL, NULL, NULL, NULL, NULL),
(6, 5, 8, 'Madan Mahal', 'DH_2', 'Caries', 'GIC Restoration @ per tooth', '600', NULL, NULL, 'pending', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 6, 10, 'Madan Mahal', 'DH_2', 'Caries', 'Root Canal Treatment @ per tooth', '3000', NULL, NULL, 'completed', NULL, '2', 2, NULL, NULL, NULL, NULL, NULL),
(8, 6, 10, 'Madan Mahal', 'DH_2', 'Fracture', 'Teeth Bleaching at Home Whitening', '5000', NULL, NULL, 'completed', NULL, '2', 3, NULL, NULL, NULL, NULL, NULL),
(9, 8, 13, 'Madan Mahal', 'DH_1', 'Caries', 'Re-Root Canal Treatlment @ per tooth', '4000', NULL, NULL, 'completed', NULL, '2', 2, NULL, NULL, NULL, NULL, NULL),
(10, 8, 13, 'Madan Mahal', 'DH_1', 'Fracture', 'Metal Braces', '30000', NULL, NULL, 'completed', NULL, '2', 2, NULL, NULL, NULL, NULL, NULL),
(11, 8, 13, 'Madan Mahal', 'DH_1', 'Impacted', 'Porcelain Fused to Metal @ per Crown', '3000', NULL, NULL, 'completed', NULL, '2', 1, NULL, NULL, NULL, NULL, NULL),
(12, 9, 14, 'Madan Mahal', 'DH_1', 'Caries', 'Amalgam Restoration@ per tooth', '800', NULL, NULL, 'completed', NULL, '2', 1, NULL, NULL, NULL, NULL, NULL),
(13, 9, 14, 'Madan Mahal', 'DH_1', 'Fracture', 'Ceramic Braces', '45000', NULL, NULL, 'completed', NULL, '2', 1, NULL, NULL, NULL, NULL, NULL),
(14, 10, 15, 'Madan Mahal', 'DH_5', 'Caries', 'Teeth Bleaching In Office Whitening', '8000', NULL, NULL, 'completed', NULL, '2', 3, NULL, NULL, NULL, NULL, NULL),
(15, 10, 15, 'Madan Mahal', 'DH_5', 'Caries', 'Third Molar /Impacted Tooth Removal', '3000', NULL, NULL, '', NULL, '2', 2, NULL, NULL, NULL, NULL, NULL),
(16, 11, 17, 'Madan Mahal', 'DH_6', 'Fracture', 'Metal Crowns @ Per Crown', '1500', NULL, NULL, 'completed', NULL, '2', 2, NULL, NULL, NULL, NULL, NULL),
(17, 12, 25, 'Madan Mahal', 'DH_6', 'Caries', 'Direct Composite Veneer @ per tooth', '2500', NULL, NULL, 'completed', NULL, '2', 1, NULL, NULL, NULL, NULL, NULL),
(18, 12, 25, 'Madan Mahal', 'DH_6', 'Caries', 'Ceramic Braces', '45000', NULL, NULL, 'completed', NULL, '2', 2, NULL, NULL, NULL, NULL, NULL),
(19, 13, 31, 'Madan Mahal', 'DH_7', 'Caries', 'Indirect Pulp Capping with MTA @ per tooth', '2000', NULL, NULL, 'completed', NULL, '1', 1, NULL, NULL, NULL, NULL, NULL),
(20, 14, 32, 'Madan Mahal', 'DH_7', 'Caries', 'Full mouth Implant', '250000', NULL, NULL, 'completed', NULL, '2', 2, NULL, NULL, NULL, NULL, NULL),
(21, 15, 34, 'Madan Mahal', 'DH_7', 'Fracture', 'Retention plate@ per arch', '2000', NULL, NULL, 'ongoing', NULL, '3', 1, NULL, NULL, NULL, NULL, NULL),
(22, 16, 36, 'Madan Mahal', 'DH_2', 'Caries', 'Root Canal Treatment @ per tooth', '3000', NULL, NULL, 'completed', NULL, '2', 1, NULL, NULL, NULL, NULL, NULL),
(23, 16, 36, 'Madan Mahal', 'DH_2', 'Fracture', 'Third Molar /Impacted Tooth Removal', '3000', NULL, NULL, 'completed', NULL, '2', 1, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`appoint_id`);

--
-- Indexes for table `appointment_notification`
--
ALTER TABLE `appointment_notification`
  ADD PRIMARY KEY (`notify_id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`branch_id`);

--
-- Indexes for table `chief_complain_list`
--
ALTER TABLE `chief_complain_list`
  ADD PRIMARY KEY (`chief_id`);

--
-- Indexes for table `clinic_prescription`
--
ALTER TABLE `clinic_prescription`
  ADD PRIMARY KEY (`pr_id`);

--
-- Indexes for table `currencydetails`
--
ALTER TABLE `currencydetails`
  ADD PRIMARY KEY (`cr_id`);

--
-- Indexes for table `dental_examination`
--
ALTER TABLE `dental_examination`
  ADD PRIMARY KEY (`exm_id`),
  ADD KEY `appointment_id` (`appointment_id`);

--
-- Indexes for table `dental_prescription`
--
ALTER TABLE `dental_prescription`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appoint_id` (`appoint_id`);

--
-- Indexes for table `dental_treatment`
--
ALTER TABLE `dental_treatment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_id` (`exam_id`);

--
-- Indexes for table `drugs`
--
ALTER TABLE `drugs`
  ADD PRIMARY KEY (`drug_id`);

--
-- Indexes for table `employee_attendance`
--
ALTER TABLE `employee_attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `employee_complaints`
--
ALTER TABLE `employee_complaints`
  ADD PRIMARY KEY (`complain_id`);

--
-- Indexes for table `employee_leave`
--
ALTER TABLE `employee_leave`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_register`
--
ALTER TABLE `employee_register`
  ADD PRIMARY KEY (`sr_id`);

--
-- Indexes for table `employee_timeline`
--
ALTER TABLE `employee_timeline`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `examin_details`
--
ALTER TABLE `examin_details`
  ADD PRIMARY KEY (`examin_id`);

--
-- Indexes for table `expense_voucher`
--
ALTER TABLE `expense_voucher`
  ADD PRIMARY KEY (`voucher_id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`holiday_id`);

--
-- Indexes for table `inquiries`
--
ALTER TABLE `inquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `insurance_company`
--
ALTER TABLE `insurance_company`
  ADD PRIMARY KEY (`ins_id`);

--
-- Indexes for table `lab_details`
--
ALTER TABLE `lab_details`
  ADD PRIMARY KEY (`lab_id`);

--
-- Indexes for table `lab_tests`
--
ALTER TABLE `lab_tests`
  ADD PRIMARY KEY (`lab_tid`);

--
-- Indexes for table `otpcollections`
--
ALTER TABLE `otpcollections`
  ADD PRIMARY KEY (`otp_id`);

--
-- Indexes for table `patient_bills`
--
ALTER TABLE `patient_bills`
  ADD PRIMARY KEY (`bill_id`);

--
-- Indexes for table `patient_details`
--
ALTER TABLE `patient_details`
  ADD PRIMARY KEY (`uhid`);

--
-- Indexes for table `patient_disease`
--
ALTER TABLE `patient_disease`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_lab_details`
--
ALTER TABLE `patient_lab_details`
  ADD PRIMARY KEY (`testid`);

--
-- Indexes for table `patient_lab_test_details`
--
ALTER TABLE `patient_lab_test_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testid` (`testid`);

--
-- Indexes for table `patient_lab_test_reports`
--
ALTER TABLE `patient_lab_test_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testid` (`testid`);

--
-- Indexes for table `patient_test_notes`
--
ALTER TABLE `patient_test_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `test_id` (`testid`);

--
-- Indexes for table `patient_timeline`
--
ALTER TABLE `patient_timeline`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD PRIMARY KEY (`pay_id`);

--
-- Indexes for table `prescription_details`
--
ALTER TABLE `prescription_details`
  ADD PRIMARY KEY (`prescription_id`);

--
-- Indexes for table `purchase_inventory`
--
ALTER TABLE `purchase_inventory`
  ADD PRIMARY KEY (`pur_id`);

--
-- Indexes for table `quick_prescription`
--
ALTER TABLE `quick_prescription`
  ADD PRIMARY KEY (`qp_id`);

--
-- Indexes for table `security_amount`
--
ALTER TABLE `security_amount`
  ADD PRIMARY KEY (`sa_id`);

--
-- Indexes for table `sitting_bill`
--
ALTER TABLE `sitting_bill`
  ADD PRIMARY KEY (`sb_id`);

--
-- Indexes for table `staff_salary`
--
ALTER TABLE `staff_salary`
  ADD PRIMARY KEY (`sl_id`);

--
-- Indexes for table `super_admin`
--
ALTER TABLE `super_admin`
  ADD PRIMARY KEY (`sa_id`);

--
-- Indexes for table `treatment_list`
--
ALTER TABLE `treatment_list`
  ADD PRIMARY KEY (`treatment_id`);

--
-- Indexes for table `treatment_list_copy`
--
ALTER TABLE `treatment_list_copy`
  ADD PRIMARY KEY (`treatment_id`);

--
-- Indexes for table `treatment_package`
--
ALTER TABLE `treatment_package`
  ADD PRIMARY KEY (`tp_id`);

--
-- Indexes for table `treat_procedure_list`
--
ALTER TABLE `treat_procedure_list`
  ADD PRIMARY KEY (`treat_procedure_id`);

--
-- Indexes for table `treat_suggest`
--
ALTER TABLE `treat_suggest`
  ADD PRIMARY KEY (`ts_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `appoint_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `appointment_notification`
--
ALTER TABLE `appointment_notification`
  MODIFY `notify_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `branch_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `chief_complain_list`
--
ALTER TABLE `chief_complain_list`
  MODIFY `chief_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `clinic_prescription`
--
ALTER TABLE `clinic_prescription`
  MODIFY `pr_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencydetails`
--
ALTER TABLE `currencydetails`
  MODIFY `cr_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `dental_examination`
--
ALTER TABLE `dental_examination`
  MODIFY `exm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `dental_prescription`
--
ALTER TABLE `dental_prescription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `dental_treatment`
--
ALTER TABLE `dental_treatment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `drugs`
--
ALTER TABLE `drugs`
  MODIFY `drug_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `employee_attendance`
--
ALTER TABLE `employee_attendance`
  MODIFY `attendance_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `employee_complaints`
--
ALTER TABLE `employee_complaints`
  MODIFY `complain_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_leave`
--
ALTER TABLE `employee_leave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee_register`
--
ALTER TABLE `employee_register`
  MODIFY `sr_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `employee_timeline`
--
ALTER TABLE `employee_timeline`
  MODIFY `event_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `examin_details`
--
ALTER TABLE `examin_details`
  MODIFY `examin_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_voucher`
--
ALTER TABLE `expense_voucher`
  MODIFY `voucher_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `holiday_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inquiries`
--
ALTER TABLE `inquiries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `insurance_company`
--
ALTER TABLE `insurance_company`
  MODIFY `ins_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lab_details`
--
ALTER TABLE `lab_details`
  MODIFY `lab_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `lab_tests`
--
ALTER TABLE `lab_tests`
  MODIFY `lab_tid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `otpcollections`
--
ALTER TABLE `otpcollections`
  MODIFY `otp_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `patient_bills`
--
ALTER TABLE `patient_bills`
  MODIFY `bill_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `patient_disease`
--
ALTER TABLE `patient_disease`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `patient_lab_details`
--
ALTER TABLE `patient_lab_details`
  MODIFY `testid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `patient_lab_test_details`
--
ALTER TABLE `patient_lab_test_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `patient_lab_test_reports`
--
ALTER TABLE `patient_lab_test_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `patient_test_notes`
--
ALTER TABLE `patient_test_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patient_timeline`
--
ALTER TABLE `patient_timeline`
  MODIFY `event_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=390;

--
-- AUTO_INCREMENT for table `payment_details`
--
ALTER TABLE `payment_details`
  MODIFY `pay_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prescription_details`
--
ALTER TABLE `prescription_details`
  MODIFY `prescription_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_inventory`
--
ALTER TABLE `purchase_inventory`
  MODIFY `pur_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `quick_prescription`
--
ALTER TABLE `quick_prescription`
  MODIFY `qp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `security_amount`
--
ALTER TABLE `security_amount`
  MODIFY `sa_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sitting_bill`
--
ALTER TABLE `sitting_bill`
  MODIFY `sb_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `staff_salary`
--
ALTER TABLE `staff_salary`
  MODIFY `sl_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `super_admin`
--
ALTER TABLE `super_admin`
  MODIFY `sa_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `treatment_list`
--
ALTER TABLE `treatment_list`
  MODIFY `treatment_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `treatment_list_copy`
--
ALTER TABLE `treatment_list_copy`
  MODIFY `treatment_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `treatment_package`
--
ALTER TABLE `treatment_package`
  MODIFY `tp_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `treat_procedure_list`
--
ALTER TABLE `treat_procedure_list`
  MODIFY `treat_procedure_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `treat_suggest`
--
ALTER TABLE `treat_suggest`
  MODIFY `ts_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `patient_lab_test_details`
--
ALTER TABLE `patient_lab_test_details`
  ADD CONSTRAINT `patient_lab_test_details_ibfk_1` FOREIGN KEY (`testid`) REFERENCES `patient_lab_details` (`testid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
