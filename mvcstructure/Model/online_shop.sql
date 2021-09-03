-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2019 at 02:12 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";




CREATE TABLE `admin` (
  `admin_name` varchar(40) NOT NULL,
  `admin_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_name`, `admin_password`) VALUES
('admin', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `Manager` (
  `manager_license_no` varchar(40) NOT NULL,
  `manager_name` varchar(40) NOT NULL,
  `manager_nationality` varchar(40) NOT NULL,
  `manager_age` int(11) NOT NULL,
  `manager_type` varchar(25) NOT NULL,
  `manager_matches` int(11) NOT NULL,
  `manager_wins` int(11) NOT NULL,
  `manager_draws` int(11) NOT NULL,
  `manager_loses` int(11) NOT NULL,
  `manager_weekly_salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`manager_license_no`, `manager_name`, `manager_nationality`, `manager_age`, `manager_type`, `manager_matches`, `manager_wins`, `manager_draws`, `manager_loses`, `manager_weekly_salary`) VALUES
('123456789', 'Ernesto Valvarde', 'Spain', 55, 'Head Coach', 774, 0, 165, 198, 485000),
('987654321', 'Jon Aspiazu', 'Spain', 51, 'Assistant Coach', 455, 0, 135, 95, 125000);

-- --------------------------------------------------------



--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_ssn` varchar(17) NOT NULL,
  `staff_name` varchar(40) NOT NULL,
  `staff_nationality` varchar(40) NOT NULL,
  `staff_age` int(11) NOT NULL,
  `staff_designation` varchar(40) NOT NULL,
  `staff_joining_date` date NOT NULL,
  `staff_contract` date NOT NULL,
  `staff_weekly_salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_ssn`, `staff_name`, `staff_nationality`, `staff_age`, `staff_designation`, `staff_joining_date`, `staff_contract`, `staff_weekly_salary`) VALUES
('123-3434-1223', 'J', 'Spain', 56, 'President ', '2014-01-23', '2021-06-30', 300000),
('289-19-0116', 'Javier Bordas', 'Spain', 58, 'Director or Sports', '2015-07-01', '2020-06-30', 150000),
('519-19-0216', 'Ariedo Braida', 'Italy', 73, 'Scout', '2015-07-21', '2021-06-30', 80000),
('589-19-0129', 'Alex Garcia', 'Spain', 49, 'Scout', '2015-07-01', '2021-06-30', 80000),
('589-19-0356', 'Jordi Roura', 'Spain', 52, 'Youth Academy Manager', '2014-05-19', '2023-06-30', 80000),
('589-19-2020', 'Jose Mari Bakero', 'Spain', 56, 'Youth Academy Manager', '2017-07-10', '2023-06-30', 80000),
('589-19-2316', 'Ricard Pruna', 'Spain', 55, 'Club Doctor', '2007-07-01', '2023-06-30', 50000),
('589-44-0188', 'Jordi Mestre', 'Spain', 57, 'Vice-President ', '2015-07-18', '2020-06-30', 200000),
('589-69-0116', 'Pep Boada', 'Spain', 57, 'Head of Scouting ', '2015-07-01', '2021-06-30', 100000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_fullname` varchar(100) NOT NULL,
  `user_username` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_fullname`, `user_username`, `user_password`, `user_email`) VALUES
(15, 'Tonjih Tazalli', 'TT', '1234', 'tt1@gm.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_name`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`manager_license_no`);



--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_ssn`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
