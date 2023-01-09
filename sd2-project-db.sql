-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Jan 09, 2023 at 12:01 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sd2-project-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `CLASS_DETAILS`
--

CREATE TABLE `CLASS_DETAILS` (
  `ROOM_NO` varchar(20) NOT NULL,
  `SUB_DATE` date DEFAULT NULL,
  `TIME` time DEFAULT NULL,
  `TUTOR` varchar(20) DEFAULT NULL,
  `SUB_ID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `CLASS_DETAILS`
--

INSERT INTO `CLASS_DETAILS` (`ROOM_NO`, `SUB_DATE`, `TIME`, `TUTOR`, `SUB_ID`) VALUES
('DB-210', '2022-10-22', '11:15:00', 'CHARLES', 'S001'),
('DB-310', '2022-10-24', '14:15:00', 'LISA', 'S002'),
('DB-218', '2022-10-15', '11:00:00', 'WE-LIE', 'S003'),
('DB-212', '2022-10-03', '10:00:00', 'REBEL', 'S004'),
('DB-201', '2022-10-11', '14:00:00', 'SARAH', 'S005'),
('DB-301', '2022-10-10', '12:00:00', 'MUAHMMAD', 'S006'),
('DB-313', '2022-10-13', '08:00:00', 'JOHN', 'S007'),
('DB-323', '2022-10-14', '10:30:00', 'MERRY', 'S008'),
('DB-343', '2022-10-04', '16:00:00', 'PELUMI', 'S009'),
('DB-210', '2022-10-25', '11:15:00', 'CHARLES', 'S001'),
('DB-210', '2022-10-29', '11:15:00', 'CHARLES', 'S001'),
('DB-210', '2022-11-02', '11:15:00', 'CHARLES', 'S001'),
('DB-210', '2022-11-07', '11:15:00', 'CHARLES', 'S001'),
('DB-210', '2022-11-10', '11:15:00', 'CHARLES', 'S001'),
('DB-212', '2022-10-05', '10:00:00', 'REBEL', 'S004'),
('DB-212', '2022-10-07', '10:00:00', 'REBEL', 'S004'),
('DB-212', '2022-10-12', '10:00:00', 'REBEL', 'S004'),
('DB-212', '2022-11-17', '10:00:00', 'REBEL', 'S004'),
('DB-212', '2022-11-26', '10:00:00', 'REBEL', 'S004'),
('DB-218', '2022-10-17', '11:00:00', 'WE-LIE', 'S003'),
('DB-218', '2022-10-18', '11:00:00', 'WE-LIE', 'S003'),
('DB-218', '2022-10-22', '11:00:00', 'WE-LIE', 'S003'),
('DB-218', '2022-10-27', '11:00:00', 'WE-LIE', 'S003'),
('DB-218', '2022-10-30', '11:00:00', 'WE-LIE', 'S003'),
('DB-310', '2022-10-25', '02:15:00', 'LISA', 'S002'),
('DB-310', '2022-10-28', '02:15:00', 'LISA', 'S002'),
('DB-310', '2022-11-02', '02:15:00', 'LISA', 'S002'),
('DB-310', '2022-11-09', '02:15:00', 'LISA', 'S002'),
('DB-310', '2022-11-11', '02:15:00', 'LISA', 'S002'),
('DB-201', '2022-10-14', '14:00:00', 'SARAH', 'S005'),
('DB-201', '2022-10-19', '14:00:00', 'SARAH', 'S005'),
('DB-201', '2022-10-23', '14:00:00', 'SARAH', 'S005'),
('DB-201', '2022-10-29', '14:00:00', 'SARAH', 'S005'),
('DB-201', '2022-11-01', '14:00:00', 'SARAH', 'S005'),
('DB-301', '2022-10-12', '12:00:00', 'MUAHMMAD', 'S006'),
('DB-301', '2022-10-15', '12:00:00', 'MUAHMMAD', 'S006'),
('DB-301', '2022-10-18', '12:00:00', 'MUAHMMAD', 'S006'),
('DB-301', '2022-10-20', '12:00:00', 'MUAHMMAD', 'S006'),
('DB-301', '2022-10-24', '12:00:00', 'MUAHMMAD', 'S006'),
('DB-313', '2022-10-15', '08:00:00', 'JOHN', 'S007'),
('DB-313', '2022-10-18', '08:00:00', 'JOHN', 'S007'),
('DB-313', '2022-10-20', '08:00:00', 'JOHN', 'S007'),
('DB-313', '2022-10-28', '08:00:00', 'JOHN', 'S007'),
('DB-313', '2022-11-06', '08:00:00', 'JOHN', 'S007'),
('DB-323', '2022-10-19', '10:30:00', 'MERRY', 'S008'),
('DB-323', '2022-10-26', '10:30:00', 'MERRY', 'S008'),
('DB-323', '2022-10-28', '10:30:00', 'MERRY', 'S008'),
('DB-323', '2022-11-08', '10:30:00', 'MERRY', 'S008'),
('DB-323', '2022-11-13', '10:30:00', 'MERRY', 'S008'),
('DB-343', '2022-10-06', '16:00:00', 'PELUMI', 'S009'),
('DB-343', '2022-10-09', '16:00:00', 'PELUMI', 'S009'),
('DB-343', '2022-10-13', '16:00:00', 'PELUMI', 'S009'),
('DB-343', '2022-10-17', '16:00:00', 'PELUMI', 'S009'),
('DB-343', '2022-10-25', '16:00:00', 'PELUMI', 'S009');

-- --------------------------------------------------------

--
-- Table structure for table `COURSES`
--

CREATE TABLE `COURSES` (
  `C_ID` varchar(20) NOT NULL,
  `C_NAME` varchar(20) DEFAULT NULL,
  `MONTH` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `COURSES`
--

INSERT INTO `COURSES` (`C_ID`, `C_NAME`, `MONTH`) VALUES
('C001', 'M.SC COMPUTING', 'JANUARY'),
('C002', 'M.SC FINANCE', 'APRIL'),
('C003', 'M.B.A', 'SEPTEMBER');

-- --------------------------------------------------------

--
-- Table structure for table `INTAKE`
--

CREATE TABLE `INTAKE` (
  `YEAR` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `INTAKE`
--

INSERT INTO `INTAKE` (`YEAR`) VALUES
(2022),
(2022),
(2022),
(2020),
(2021),
(2020),
(2021),
(2023);

-- --------------------------------------------------------

--
-- Table structure for table `SUBJECTS`
--

CREATE TABLE `SUBJECTS` (
  `SUB_ID` varchar(20) NOT NULL,
  `SUB_NAME` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `C_ID` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `SUBJECTS`
--

INSERT INTO `SUBJECTS` (`SUB_ID`, `SUB_NAME`, `C_ID`) VALUES
('S001', 'CYBER SECURITY', 'C001'),
('S002', 'SD2', 'C001'),
('S003', 'DATA BASES', 'C001'),
('S004', 'STRATEGIC MARKETING', 'C003'),
('S005', 'LEADERSHIP MANAGEMENT', 'C002'),
('S006', 'HR MANAGEMENT', 'C003'),
('S007', 'BUSINESS RESEARCH ', 'C003'),
('S008', 'CHANGE MANAGEMENT', 'C002'),
('S009', 'FINANCIAL MANAGEMENT', 'C002');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `CLASS_DETAILS`
--
ALTER TABLE `CLASS_DETAILS`
  ADD KEY `ROOM_NO` (`ROOM_NO`) USING BTREE,
  ADD KEY `SUB_ID` (`SUB_ID`) USING BTREE;

--
-- Indexes for table `COURSES`
--
ALTER TABLE `COURSES`
  ADD PRIMARY KEY (`C_ID`);

--
-- Indexes for table `SUBJECTS`
--
ALTER TABLE `SUBJECTS`
  ADD PRIMARY KEY (`SUB_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
