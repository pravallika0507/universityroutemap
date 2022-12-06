-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Dec 06, 2022 at 04:42 PM
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
  `DATE` date DEFAULT NULL,
  `TIME` time DEFAULT NULL,
  `TUTOR` varchar(20) DEFAULT NULL,
  `SUB_ID` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `CLASS_DETAILS`
--

INSERT INTO `CLASS_DETAILS` (`ROOM_NO`, `DATE`, `TIME`, `TUTOR`, `SUB_ID`) VALUES
('DB-210', '2022-10-22', '11:15:00', 'CHARLES', 'S001'),
('DB-218', '2022-10-15', '11:00:00', 'WE-LIE', 'S003'),
('DB-310', '2022-10-24', '02:15:00', 'LISA', 'S002');

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
  `MONTH` varchar(20) NOT NULL,
  `YEAR` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `INTAKE`
--

INSERT INTO `INTAKE` (`MONTH`, `YEAR`) VALUES
('APRIL', 2022),
('JANUARY', 2022),
('SEPTEMBER', 2022);

-- --------------------------------------------------------

--
-- Table structure for table `SUBJECTS`
--

CREATE TABLE `SUBJECTS` (
  `SUB_ID` varchar(20) NOT NULL,
  `SUB_NAME` varchar(20) DEFAULT NULL,
  `C_ID` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `SUBJECTS`
--

INSERT INTO `SUBJECTS` (`SUB_ID`, `SUB_NAME`, `C_ID`) VALUES
('S001', 'CYBER SECURITY', 'C001'),
('S002', 'SD2', 'C002'),
('S003', 'DATA BASES', 'C003');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `CLASS_DETAILS`
--
ALTER TABLE `CLASS_DETAILS`
  ADD PRIMARY KEY (`ROOM_NO`);

--
-- Indexes for table `COURSES`
--
ALTER TABLE `COURSES`
  ADD PRIMARY KEY (`C_ID`);

--
-- Indexes for table `INTAKE`
--
ALTER TABLE `INTAKE`
  ADD PRIMARY KEY (`MONTH`);

--
-- Indexes for table `SUBJECTS`
--
ALTER TABLE `SUBJECTS`
  ADD PRIMARY KEY (`SUB_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
