-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2020 at 11:30 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blood bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `admitted`
--

CREATE TABLE `admitted` (
  `Hospital_id` varchar(10) NOT NULL,
  `Patient_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admitted`
--

INSERT INTO `admitted` (`Hospital_id`, `Patient_id`) VALUES
('H01', 'P01'),
('H03', 'P03'),
('H03', 'P04'),
('H04', 'P05'),
('H05', 'P02'),
('H06', 'P06'),
('H06', 'P07'),
('H08', 'P09'),
('H09', 'P08'),
('H10', 'P10');

-- --------------------------------------------------------

--
-- Table structure for table `blood`
--

CREATE TABLE `blood` (
  `B_code` varchar(3) NOT NULL,
  `Blood_group` varchar(3) NOT NULL,
  `Cost` int(4) NOT NULL,
  `Donor_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood`
--

INSERT INTO `blood` (`B_code`, `Blood_group`, `Cost`, `Donor_id`) VALUES
('001', 'B+', 200, 'D01'),
('002', 'AB+', 300, 'D02'),
('003', 'A-', 400, 'D03'),
('004', 'A+', 500, 'D04'),
('005', 'B+', 200, 'D05'),
('006', 'O+', 700, 'D06'),
('007', 'O-', 800, 'D07'),
('008', 'AB+', 300, 'D08'),
('009', 'B-', 600, 'D09'),
('010', 'B+', 200, 'D10');

-- --------------------------------------------------------

--
-- Table structure for table `blood-bank`
--

CREATE TABLE `blood-bank` (
  `BB_id` varchar(10) NOT NULL,
  `Blood_group` varchar(3) NOT NULL,
  `Issues` int(11) NOT NULL,
  `Orders` int(10) NOT NULL,
  `Emp_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood-bank`
--

INSERT INTO `blood-bank` (`BB_id`, `Blood_group`, `Issues`, `Orders`, `Emp_id`) VALUES
('B01', 'B+', 10, 1, 'E01'),
('B02', 'AB+', 5, 2, 'E02'),
('B03', 'B-', 1, 1, 'E01'),
('B04', 'O+', 2, 1, 'E04'),
('B05', 'Ab-', 7, 5, 'E06'),
('B06', 'B+', 6, 3, 'E04'),
('B07', 'A-', 15, 3, 'E05'),
('B08', 'O-', 11, 5, 'E10'),
('B09', 'AB+', 12, 8, 'E08'),
('B10', 'AB-', 1, 1, 'E08');

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `Donor_id` varchar(10) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Age` int(2) NOT NULL,
  `Phone` bigint(10) NOT NULL,
  `Blood_group` varchar(3) NOT NULL,
  `Date_of_donate` date NOT NULL,
  `Rec_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`Donor_id`, `Name`, `Address`, `Age`, `Phone`, `Blood_group`, `Date_of_donate`, `Rec_id`) VALUES
('D01', 'Anuj Malhotara', 'Ahmedabad', 30, 7329034198, 'B+', '2001-05-12', 'R01'),
('D02', 'Manthan Gadhiya', 'Gandhinagar', 25, 7529301234, 'AB+', '2005-02-15', 'R02'),
('D03', 'Vishal Pareekh', 'Ahmedabad', 35, 6438921234, 'A-', '2010-01-10', 'R02'),
('D04', 'Rohan Patel', 'Vadodara', 23, 9023451239, 'A+', '2014-04-25', 'R04'),
('D05', 'Dhruvin Patel', 'Patan', 21, 7900032458, 'B+', '2015-11-20', 'R05'),
('D06', 'Damodar Singh', 'Ahmedabad', 40, 9904567822, 'O+', '2015-07-22', 'R06'),
('D07', 'Madhavi Dave', 'Surat', 29, 7239000011, 'O-', '2017-10-24', 'R06'),
('D08', 'Maya Mohat', 'Ahmedabad', 27, 9702222348, 'AB+', '2018-06-30', 'R01'),
('D09', 'Vedant Parekh', 'Amareli', 20, 8928345762, 'B-', '2019-03-11', 'R10'),
('D10', 'Chirag Patadiya', 'Botad', 20, 7359760434, 'B+', '2000-01-17', 'R09');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Emp_id` varchar(10) NOT NULL,
  `First_name` varchar(10) NOT NULL,
  `Last_name` varchar(10) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Salary` int(10) NOT NULL,
  `Phone` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Emp_id`, `First_name`, `Last_name`, `Address`, `Salary`, `Phone`) VALUES
('E01', 'Anand', 'Gohel', 'Ahmedabad', 25000, 9934578235),
('E02', 'Mahek', 'Patel', 'Ahmedabad', 20000, 9804678244),
('E03', 'Vishvash', 'Agarwal', 'Gandhinagar', 30000, 7359840334),
('E04', 'Raj', 'Acharya', 'Rajkot', 35000, 7573099342),
('E05', 'Amit', 'Reddy', 'Surat', 10000, 6347582008),
('E06', 'Neha', 'Malik', 'Ahmedabad', 25000, 9537410023),
('E07', 'Suman', 'Shah', 'Gandhinagar', 15000, 7940264872),
('E08', 'Motilal', 'Dave', 'Vadodara', 25000, 9023475999),
('E09', 'Vedant', 'Parekh', 'Amareli', 30000, 6349572047),
('E10', 'Chirag', 'Patadiya', 'Botad', 55000, 7359760333);

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `Hospital_id` varchar(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`Hospital_id`, `Name`, `Address`) VALUES
('H01', 'Sir Ganga Ram Hospital', 'Rajinder Nagar, New Delhi, Delhi 110060'),
('H02', 'KLE’S Dr. Prabhakar Kore Hospital', 'NH 4A, Nehru Nagar, Belgaum, Karnataka 590010'),
('H03', 'Hiranandani Hospital', 'Hill Side Avenue, Hiranandani Gardens, Powai, Mumbai 400 076'),
('H04', 'Sterling Hospital', 'Memnagar Ahmedabad 380052'),
('H05', 'Apollo Hospital', 'Plot No.1 A, Bhat GIDC Estate,Gandhinagar 382428'),
('H06', 'SAL Hospital', 'Opposite Doordarshan, Drive-in Road,Ahmedabad 380 054'),
('H07', 'Shalby Hospital', 'Opposite Karnavati Club, S.G. Highway,Ahmedabad, Gujarat 380015'),
('H08', 'Care Institute of Medical Sciences', 'Off Science City Road, Sola,Ahmedabad 380060'),
('H09', 'Dev Multi Speciality Hospital', '8-Manhar Plot Corner,, Vidya Nagar Main Rd,Gandhinagar 382429'),
('H10', 'Aditya Hospital', 'Vidya Nagar Main Road,Gandhinagar 382427');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Hospital_id` varchar(10) NOT NULL,
  `B_code` varchar(3) NOT NULL,
  `Order_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Hospital_id`, `B_code`, `Order_date`) VALUES
('H01', '001', '2017-01-23'),
('H01', '004', '2018-11-27'),
('H02', '005', '2020-03-13'),
('H02', '006', '2018-05-13'),
('H03', '008', '2018-07-07'),
('H04', '010', '2019-09-22'),
('H05', '001', '2019-11-30'),
('H05', '009', '2020-04-03'),
('H08', '002', '2020-01-02'),
('H10', '003', '2020-02-19');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `Patient_id` varchar(10) NOT NULL,
  `Name` varchar(15) NOT NULL,
  `Blood_group` varchar(3) NOT NULL,
  `Diseases` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`Patient_id`, `Name`, `Blood_group`, `Diseases`) VALUES
('P01', 'Danny Doe', 'B+', 'Asthma'),
('P02', 'Tom Nakamura', 'AB+', NULL),
('P03', 'Harry Potter', 'AB-', 'Celiac'),
('P04', 'Anna Bell', 'B-', NULL),
('P05', 'Thomas Martin', 'O+', 'Relapsing polychondritis'),
('P06', 'Jerry Pot', 'A-', NULL),
('P07', 'Maria Smith', 'O-', 'Asthma'),
('P08', 'Tom Brown', 'B+', NULL),
('P09', 'John Cena', 'B+', NULL),
('P10', 'Chirag Patadiya', 'B+', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `phone`
--

CREATE TABLE `phone` (
  `Phone_id` varchar(10) NOT NULL,
  `Phone_1` bigint(10) NOT NULL,
  `Phone_2` bigint(10) NOT NULL,
  `Hospital_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phone`
--

INSERT INTO `phone` (`Phone_id`, `Phone_1`, `Phone_2`, `Hospital_id`) VALUES
('Ph01', 1125750000, 1225750000, 'H01'),
('Ph02', 8312470732, 8312470743, 'H02'),
('Ph03', 2224107000, 2224107011, 'H03'),
('Ph04', 7940011111, 7940011177, 'H04'),
('Ph05', 7966701800, 7966701803, 'H05'),
('Ph06', 7966115600, 7966115620, 'H06'),
('Ph07', 7940203000, 7940203123, 'H07'),
('Ph08', 7927712771, 7927712770, 'H08'),
('Ph09', 9472648364, 9472648723, 'H09'),
('Ph10', 6239475264, 6239475266, 'H10');

-- --------------------------------------------------------

--
-- Table structure for table `receptionist`
--

CREATE TABLE `receptionist` (
  `Rec_id` varchar(10) NOT NULL,
  `BB_id` varchar(10) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Street` varchar(15) NOT NULL,
  `City` varchar(15) NOT NULL,
  `Pincode` int(6) NOT NULL,
  `Phone` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `receptionist`
--

INSERT INTO `receptionist` (`Rec_id`, `BB_id`, `Name`, `Street`, `City`, `Pincode`, `Phone`) VALUES
('R01', 'B01', 'Sagar Ahuja', 'Naranpura', 'Ahmedabad', 382170, 7349023748),
('R02', 'B03', 'Parth Patel', 'Gota', 'Ahmedabad', 380081, 7902638457),
('R03', 'B04', 'Parth Solanki', 'Chndlodiya', 'Ahmedabad', 382481, 9723467892),
('R04', 'B06', 'Shilpa Shetty', 'Bapunagar', 'Ahmedabad', 382270, 9899034682),
('R05', 'B07', 'Mahek Shah', 'Satellite', 'Ahmedabad', 380001, 9023478952),
('R06', 'B07', 'Hitesh Dave', 'Sector 17', 'Gandhinagar', 382016, 6348590024),
('R07', 'B03', 'Kandarp Patel', 'Amroli', 'Surat', 394107, 6589023417),
('R08', 'B10', 'Neha Vyas', 'Bedkuva', 'Surat', 384041, 7548293011),
('R09', 'B05', 'Vedant Parekh', 'Adsag', 'Amreli', 364522, 7238490576),
('R10', 'B09', 'Chirag Patadiya', 'Navrangapura', 'Ahmedabad', 380009, 7359760333);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admitted`
--
ALTER TABLE `admitted`
  ADD PRIMARY KEY (`Hospital_id`,`Patient_id`),
  ADD KEY `fk_Patient_id` (`Patient_id`);

--
-- Indexes for table `blood`
--
ALTER TABLE `blood`
  ADD PRIMARY KEY (`B_code`),
  ADD KEY `fk_Donor_id` (`Donor_id`);

--
-- Indexes for table `blood-bank`
--
ALTER TABLE `blood-bank`
  ADD PRIMARY KEY (`BB_id`),
  ADD KEY `fk_Emp_id` (`Emp_id`);

--
-- Indexes for table `donor`
--
ALTER TABLE `donor`
  ADD PRIMARY KEY (`Donor_id`,`Phone`),
  ADD KEY `fk_Rec_id` (`Rec_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Emp_id`),
  ADD UNIQUE KEY `Phone` (`Phone`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`Hospital_id`),
  ADD KEY `Hospital_id` (`Hospital_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Hospital_id`,`B_code`),
  ADD KEY `B_code` (`B_code`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`Patient_id`);

--
-- Indexes for table `phone`
--
ALTER TABLE `phone`
  ADD PRIMARY KEY (`Phone_id`),
  ADD UNIQUE KEY `Phone_1` (`Phone_1`,`Phone_2`);

--
-- Indexes for table `receptionist`
--
ALTER TABLE `receptionist`
  ADD PRIMARY KEY (`Rec_id`),
  ADD UNIQUE KEY `Phone` (`Phone`),
  ADD KEY `fk_BB_id` (`BB_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admitted`
--
ALTER TABLE `admitted`
  ADD CONSTRAINT `fk_Hospital_id` FOREIGN KEY (`Hospital_id`) REFERENCES `hospital` (`Hospital_id`),
  ADD CONSTRAINT `fk_Patient_id` FOREIGN KEY (`Patient_id`) REFERENCES `patient` (`Patient_id`);

--
-- Constraints for table `blood`
--
ALTER TABLE `blood`
  ADD CONSTRAINT `fk_Donor_id` FOREIGN KEY (`Donor_id`) REFERENCES `donor` (`Donor_id`);

--
-- Constraints for table `blood-bank`
--
ALTER TABLE `blood-bank`
  ADD CONSTRAINT `fk_Emp_id` FOREIGN KEY (`Emp_id`) REFERENCES `employee` (`Emp_id`);

--
-- Constraints for table `donor`
--
ALTER TABLE `donor`
  ADD CONSTRAINT `fk_Rec_id` FOREIGN KEY (`Rec_id`) REFERENCES `receptionist` (`Rec_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`Hospital_id`) REFERENCES `hospital` (`Hospital_id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`B_code`) REFERENCES `blood` (`B_code`);

--
-- Constraints for table `receptionist`
--
ALTER TABLE `receptionist`
  ADD CONSTRAINT `fk_BB_id` FOREIGN KEY (`BB_id`) REFERENCES `blood-bank` (`BB_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
