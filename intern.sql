-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2018 at 04:14 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `intern`
--

-- --------------------------------------------------------

--
-- Table structure for table `accademic_supervisor`
--

CREATE TABLE `accademic_supervisor` (
  `id` int(11) NOT NULL,
  `firstName` varchar(35) NOT NULL,
  `lastName` varchar(35) NOT NULL,
  `username` varchar(35) DEFAULT NULL,
  `idNumber` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `college_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `excel_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accademic_supervisor`
--

INSERT INTO `accademic_supervisor` (`id`, `firstName`, `lastName`, `username`, `idNumber`, `password`, `email`, `college_id`, `course_id`, `excel_status`) VALUES
(1, 'kats', 'katende', 'kats', '256', '5a4809c273c63', 'willykatende@gmail.com', 2, 9, 'approved'),
(2, 'kabali', 'mbabali', NULL, '387923423', NULL, 'mbaba@gmail.com', 1, 1, 'approved'),
(3, 'kifampa', 'fanta', NULL, 'fantas5', NULL, 'fanta@gmail.com', 1, 1, 'approved'),
(4, 'kirumiral', 'henry', NULL, 'kalumba33', NULL, 'kalumba@gmail.com', 1, 1, 'approved'),
(31, 'Ekisa', 'Rodney', 'ekisa', '001B', '$2y$10$soQPIiKgrFpVFYXxnyIi1u6yadZmHxXGcoX662EPI/AMz1M/p0Fmy', 'rodney@gmail.com', 1, 1, 'approved'),
(32, 'Ninsiima', 'Penelope', NULL, '001C', NULL, 'penelope@gmail.com', 1, 1, 'approved'),
(33, 'Samuel', 'Rwabwera', NULL, '001A', NULL, 'rwabwera@gmail.com', 1, 1, 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `college_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`, `college_id`, `course_id`) VALUES
(1, 'aleks', 'aleks', 'aleksnyombi@gmail.com', 1, 1),
(2, 'katsman', 'katsman', 'katsman@gmail.com', 2, 9),
(3, 'williams', 'mazy', 'williams@gmail.com', 3, 6);

-- --------------------------------------------------------

--
-- Table structure for table `colleges`
--

CREATE TABLE `colleges` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `colleges`
--

INSERT INTO `colleges` (`id`, `name`) VALUES
(1, 'scit'),
(2, 'education'),
(3, 'easlis');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `college_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `name`, `college_id`) VALUES
(1, 'bachelor of software enginering', 1),
(2, 'bachelor of computer science', 1),
(3, 'bachelor of information systems', 1),
(4, 'bachelor of information technology', 1),
(5, 'bachelor of Records & Archives Management', 3),
(6, 'bachelor of Library & Information Sciences', 3),
(7, 'bachelor of Information Science', 3),
(9, 'kawempe', 2),
(10, 'gayaza', 2);

-- --------------------------------------------------------

--
-- Table structure for table `field_evaluation`
--

CREATE TABLE `field_evaluation` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `supervisor_id` int(11) NOT NULL,
  `smartness` varchar(30) NOT NULL,
  `time_management` varchar(30) NOT NULL,
  `attendence` varchar(30) NOT NULL,
  `ability_to_meet_deadlines` varchar(30) NOT NULL,
  `team_work` varchar(30) NOT NULL,
  `student_field_of_interest` varchar(100) NOT NULL,
  `general_comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `field_evaluation`
--

INSERT INTO `field_evaluation` (`id`, `student_id`, `supervisor_id`, `smartness`, `time_management`, `attendence`, `ability_to_meet_deadlines`, `team_work`, `student_field_of_interest`, `general_comment`) VALUES
(1, 53, 1, 'good', 'good', 'good', 'good', 'good', 'web development', 'good girl'),
(2, 56, 1, 'good', 'good', 'poor', 'good', 'excellent', 'mobile apps', 'good boy');

-- --------------------------------------------------------

--
-- Table structure for table `field_supervisor`
--

CREATE TABLE `field_supervisor` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `idNumber` varchar(100) NOT NULL,
  `organizationName` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `position` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `status` varchar(30) NOT NULL,
  `orgWebsite` varchar(100) NOT NULL,
  `college_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `field_supervisor`
--

INSERT INTO `field_supervisor` (`id`, `first_name`, `last_name`, `username`, `idNumber`, `organizationName`, `password`, `position`, `email`, `status`, `orgWebsite`, `college_id`) VALUES
(1, 'aleks', 'nyombi', 'aleks', 'aw1234', 'alekswebs', '$2y$10$43wWxjeo7acgrAn8evH1Gexsjshr0DajetmXroVLvIO4NYsWfCTu.', 'ceo', 'aleksnyombie@gmail.com', 'approved', 'www.alekswebs.com', 1),
(2, 'anastizia', 'nakamya', 'anakamya', 'mag12345', 'magicalrecords', NULL, 'manager', 'anakamya@gmail.com', 'pending', 'www.magicalrecords.com', 3);

-- --------------------------------------------------------

--
-- Table structure for table `self_evaluation`
--

CREATE TABLE `self_evaluation` (
  `id` int(11) NOT NULL,
  `area_of_interest` varchar(100) NOT NULL,
  `skills_attained` text NOT NULL,
  `challenges_exprienced` text NOT NULL,
  `recommend_students` varchar(10) NOT NULL,
  `student_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `self_evaluation`
--

INSERT INTO `self_evaluation` (`id`, `area_of_interest`, `skills_attained`, `challenges_exprienced`, `recommend_students`, `student_id`) VALUES
(1, 'teaching', 'teaching, writing on the blackboard, reading notes', 'hunger, too old students, over standing in class', 'yes', 4),
(2, 'mobile apps', 'android development, react, react native, angular', 'hunger, lack of electricity, dark rooms', 'no', 53);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `student_number` varchar(45) NOT NULL,
  `reg_number` varchar(45) NOT NULL,
  `academic_supervisor_id` int(11) NOT NULL,
  `field_supervisor_id` int(11) DEFAULT NULL,
  `college_id` int(11) NOT NULL,
  `field_sipervisor_field_marks` int(11) DEFAULT NULL,
  `accademic_supervisor_field_marks` int(11) DEFAULT NULL,
  `report_marks` int(11) DEFAULT NULL,
  `logbook_marks` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `company_details` text,
  `exel_status` varchar(20) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `student_number`, `reg_number`, `academic_supervisor_id`, `field_supervisor_id`, `college_id`, `field_sipervisor_field_marks`, `accademic_supervisor_field_marks`, `report_marks`, `logbook_marks`, `marks`, `company_details`, `exel_status`, `course_id`) VALUES
(4, 'mart daemon', '73873834', '36763/323', 1, NULL, 2, NULL, NULL, NULL, NULL, 95, NULL, 'approved', 9),
(5, 'kabuuza mark', '7883487', '12/63/ps', 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'approved', 2),
(53, 'Nabengo Mariam', '215012683', '15/U/8919/EVE', 31, 1, 1, 15, 18, 37, 16, 86, NULL, 'approved', 1),
(54, 'Mukwaya Nicholas', '215004280', '15/U/8201/EVE', 32, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'approved', 1),
(55, 'Nakooli Elizabeth', '215019772', '15/U/19763', 30, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'approved', 1),
(56, 'Kawuma Daniel', '215000324', '15/U/417', 31, 1, 1, 19, 15, 36, 16, 86, NULL, 'approved', 1),
(57, 'Nakaali Phionah', '215006236', '15/U/9286/PS', 32, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'approved', 1),
(58, 'Nakacwa Zebia Mary', '215012136', '15/U/9333/PS', 30, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'approved', 1),
(59, 'Atwikirize Bridget Hellen', '215005075', '15/U/4046/EVE', 31, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'approved', 1),
(60, 'Nalubega Cissy Christine', '215013161', '15/U/9852/EVE', 32, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'approved', 1),
(61, 'Mwesigye Robert', '215001423', '15/U/771', 33, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'approved', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL,
  `supervisor_id` int(11) NOT NULL,
  `token` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tokens`
--

INSERT INTO `tokens` (`id`, `supervisor_id`, `token`) VALUES
(7, 24, '001A5a8dabfcf2cb7'),
(8, 25, '001B5a8dabfd1a843'),
(9, 26, '001C5a8dabfd306ea'),
(10, 27, '001A5a93fd37df7f2'),
(11, 28, '001B5a93fd380883a'),
(12, 29, '001C5a93fd381db31'),
(15, 32, '001C5a93fd5745c2f'),
(16, 33, '001A5a9d2081dffcd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accademic_supervisor`
--
ALTER TABLE `accademic_supervisor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idNumber` (`idNumber`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colleges`
--
ALTER TABLE `colleges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `field_evaluation`
--
ALTER TABLE `field_evaluation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `field_supervisor`
--
ALTER TABLE `field_supervisor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `self_evaluation`
--
ALTER TABLE `self_evaluation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_number` (`student_number`),
  ADD UNIQUE KEY `reg_number` (`reg_number`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accademic_supervisor`
--
ALTER TABLE `accademic_supervisor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `colleges`
--
ALTER TABLE `colleges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `field_evaluation`
--
ALTER TABLE `field_evaluation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `field_supervisor`
--
ALTER TABLE `field_supervisor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `self_evaluation`
--
ALTER TABLE `self_evaluation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
