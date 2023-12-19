-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2019 at 08:01 AM
-- Server version: 5.5.16
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hrm`
--

-- --------------------------------------------------------

--
-- Table structure for table `assetdata`
--

CREATE TABLE `assetdata` (
  `assetNum` varchar(10) NOT NULL,
  `assetKat` varchar(10) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `empId` int(11) NOT NULL,
  `createdBy` varchar(50) NOT NULL,
  `createdDate` date NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit` varchar(10) NOT NULL,
  `assetStat` varchar(2) NOT NULL,
  `location` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assetdata`
--

INSERT INTO `assetdata` (`assetNum`, `assetKat`, `Description`, `empId`, `createdBy`, `createdDate`, `quantity`, `unit`, `assetStat`, `location`) VALUES
('1000000001', '550002', 'Laptop Lenovo', 1, 'bejo', '2019-02-12', 1, 'PC', 'A', '3000000000'),
('1000000002', '550002', 'Laptop Lenovo Thinkpad', 12, 'bejo', '2019-02-12', 1, 'Unit', 'A', '3000000000'),
('1000000003', '550001', 'Komputer Pentium 4', 11, 'bejo', '2019-02-12', 1, 'Unit', 'A', '3000000000'),
('1000000004', '550001', 'Komputer Rakitan tetst', 10, 'bejo', '2019-02-12', 1, 'Unit', 'A', '3000000000'),
('1000000005', '550003', 'Printer Epson', 12, 'bejo', '2019-02-12', 1, 'Unit', 'A', '3000000004'),
('1000000006', '550001', 'Laptop Lenovo core i7', 13, 'bejo', '2019-02-12', 1, 'Unit', 'A', '3000000006'),
('1000000007', '550003', 'Printer Epson', 14, 'bejo', '2019-02-12', 1, 'Unit', 'A', '3000000006'),
('1000000008', '550003', 'Lasser Jet Printer', 15, 'bejo', '2019-02-12', 1, 'Unit', 'A', '3000000000'),
('1000000009', '550001', 'Laptop Lenovo core i7', 16, 'bejo', '2019-02-12', 1, 'Unit', 'A', '3000000006'),
('1000000010', '550007', 'Komputer Pentium 4', 17, 'bejo', '2019-02-12', 1, 'Unit', 'A', '3000000007');

-- --------------------------------------------------------

--
-- Table structure for table `assetkat`
--

CREATE TABLE `assetkat` (
  `assetKat` varchar(10) NOT NULL,
  `Description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assetkat`
--

INSERT INTO `assetkat` (`assetKat`, `Description`) VALUES
('550001', 'IT ASSET-Laptop'),
('550002', 'IT ASSET-Monitor'),
('550003', 'IT ASSET-Printer '),
('550004', 'IT ASSET-Projector'),
('550005', 'IT Asset - Router'),
('550006', 'IT Asset - Hardisk'),
('550007', 'IT Asset - Komputer');

-- --------------------------------------------------------

--
-- Table structure for table `assetstat`
--

CREATE TABLE `assetstat` (
  `assetStatus` varchar(2) NOT NULL,
  `Description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assetstat`
--

INSERT INTO `assetstat` (`assetStatus`, `Description`) VALUES
('A', 'Ok'),
('B', 'Rusak'),
('C', 'Dijual');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `deptId` varchar(10) NOT NULL,
  `deptName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`deptId`, `deptName`) VALUES
('1000000000', 'IT'),
('1000000001', 'HRD'),
('1000000002', 'R&D'),
('1000000003', 'Quality'),
('1000000004', 'Produksi'),
('1000000005', 'Accounting'),
('1000000006', 'Marketing');

-- --------------------------------------------------------

--
-- Table structure for table `empdept`
--

CREATE TABLE `empdept` (
  `empId` int(11) NOT NULL,
  `deptId` varchar(10) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `empdept`
--

INSERT INTO `empdept` (`empId`, `deptId`, `active`) VALUES
(1, '1000000003', 1),
(10, '1000000001', 1),
(11, '1000000002', 1),
(12, '1000000000', 1),
(13, '1000000005', 1),
(14, '1000000005', 1),
(15, '1000000000', 1),
(16, '1000000005', 1),
(17, '1000000006', 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `empId` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `aktif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`empId`, `firstname`, `lastname`, `fullname`, `gender`, `aktif`) VALUES
(1, 'Bejo', 'Kuncoro', 'Bejo Kuncoro', '1', 1),
(10, 'Pencil', 'Cilok', 'Pencil Cilok', '2', 1),
(11, 'Gelas', 'Kopi Hitam Putih', 'Gelas Kopi Hitam Putih', '1', 1),
(12, 'Erik', 'Lamela', 'Erik Lamela', '1', 1),
(13, 'Budi', 'Suryono', 'Budi Suryono', '1', 1),
(14, 'Tom', 'Jerry', 'Tom Jerry', '1', 1),
(15, 'test', 'ttste', 'test ttste', '', 1),
(16, 'Goreangan', 'Wenak', 'Goreangan Wenak', '1', 1),
(17, 'Budi', 'Sudarsono', 'Budi Sudarsono', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `location` varchar(10) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`location`, `description`) VALUES
('3000000000', 'IT Room'),
('3000000001', 'HRD Room'),
('3000000002', 'Quality Room'),
('3000000003', 'Sales Room'),
('3000000004', 'PPIC Room'),
('3000000005', 'R&D Room'),
('3000000006', 'Accounting Room'),
('3000000007', 'Marketing Room');

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE `unit` (
  `idx` int(11) NOT NULL,
  `unit` varchar(10) NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`idx`, `unit`, `description`) VALUES
(1, 'Unit', 'Unit'),
(2, 'PC', 'Pieces'),
(4, 'KG', 'Kilogram');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `active` int(11) NOT NULL,
  `registeredOn` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `email`, `nama`, `password`, `active`, `registeredOn`) VALUES
('admin', 'admin@min.com', 'admin', '$2y$12$7OmfI17DRNm5BX/AukJdP.Y03cjPiwP/kw3ImTdVuaPmvd645WabS', 1, '2019-02-01');

-- --------------------------------------------------------

--
-- Stand-in structure for view `vassetdata`
-- (See below for the actual view)
--
CREATE TABLE `vassetdata` (
`assetNum` varchar(10)
,`Description` varchar(100)
,`assetkat` varchar(100)
,`empId` int(11)
,`fullname` varchar(100)
,`createdBy` varchar(50)
,`createdDate` date
,`quantity` int(11)
,`unit` varchar(10)
,`assetStat` varchar(100)
,`location` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vempdept`
-- (See below for the actual view)
--
CREATE TABLE `vempdept` (
`empId` int(11)
,`fullname` varchar(100)
,`deptId` varchar(10)
,`deptName` varchar(100)
);

-- --------------------------------------------------------

--
-- Structure for view `vassetdata`
--
DROP TABLE IF EXISTS `vassetdata`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vassetdata`  AS  select `a`.`assetNum` AS `assetNum`,`a`.`Description` AS `Description`,`f`.`Description` AS `assetkat`,`a`.`empId` AS `empId`,`b`.`fullname` AS `fullname`,`a`.`createdBy` AS `createdBy`,`a`.`createdDate` AS `createdDate`,`a`.`quantity` AS `quantity`,`a`.`unit` AS `unit`,`d`.`Description` AS `assetStat`,`c`.`description` AS `location` from ((((`assetdata` `a` join `employee` `b` on((`a`.`empId` = `b`.`empId`))) join `location` `c` on((`a`.`location` = `c`.`location`))) join `assetstat` `d` on((`a`.`assetStat` = `d`.`assetStatus`))) join `assetkat` `f` on((`a`.`assetKat` = `f`.`assetKat`))) ;

-- --------------------------------------------------------

--
-- Structure for view `vempdept`
--
DROP TABLE IF EXISTS `vempdept`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vempdept`  AS  select `a`.`empId` AS `empId`,`a`.`fullname` AS `fullname`,`b`.`deptId` AS `deptId`,`c`.`deptName` AS `deptName` from ((`employee` `a` join `empdept` `b` on((`a`.`empId` = `b`.`empId`))) join `department` `c` on((`b`.`deptId` = `c`.`deptId`))) order by `a`.`empId`,`b`.`deptId` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assetdata`
--
ALTER TABLE `assetdata`
  ADD PRIMARY KEY (`assetNum`);

--
-- Indexes for table `assetkat`
--
ALTER TABLE `assetkat`
  ADD PRIMARY KEY (`assetKat`);

--
-- Indexes for table `assetstat`
--
ALTER TABLE `assetstat`
  ADD PRIMARY KEY (`assetStatus`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`deptId`);

--
-- Indexes for table `empdept`
--
ALTER TABLE `empdept`
  ADD PRIMARY KEY (`empId`,`deptId`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`empId`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`location`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`idx`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `empId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `unit`
--
ALTER TABLE `unit`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
