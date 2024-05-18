-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2023 at 06:09 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uts_2111500118`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblmatkul`
--

CREATE TABLE `tblmatkul` (
  `kd_mtk` varchar(5) NOT NULL,
  `nm_mtk` varchar(25) NOT NULL,
  `sks` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblmatkul`
--

INSERT INTO `tblmatkul` (`kd_mtk`, `nm_mtk`, `sks`) VALUES
('BA001', 'B.indo', 3),
('C0D21', 'PBO', 3),
('coc30', 'rpl 1', 3),
('KP002', 'Algo 1', 3),
('KP060', 'Komgraf', 3),
('MI057', 'Matdis', 3),
('MI113', 'Statprob', 2),
('UM013', 'Metris', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tblmhs`
--

CREATE TABLE `tblmhs` (
  `nim` varchar(10) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `tgllahir` date NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblmhs`
--

INSERT INTO `tblmhs` (`nim`, `nama`, `tgllahir`, `alamat`) VALUES
('2111500100', 'Ilhan Basunanda', '2003-11-16', 'jl. setu 1'),
('2111500126', 'Deva Satria', '1999-03-12', 'jl. pamulang'),
('2111501470', 'Hafidhul Azmi', '2003-02-13', 'Jl. kalianyar'),
('2111501496', 'Muhammad Ridho', '2002-11-26', 'jl. Ridho jelek');

-- --------------------------------------------------------

--
-- Table structure for table `tblnilai`
--

CREATE TABLE `tblnilai` (
  `nim` varchar(10) DEFAULT NULL,
  `kd_mtk` varchar(5) DEFAULT NULL,
  `nilai` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblnilai`
--

INSERT INTO `tblnilai` (`nim`, `kd_mtk`, `nilai`) VALUES
('2111501496', 'C0D21', 100),
('2111501496', 'MI057', 60),
('2111501470', 'C0D21', 95),
('2111501470', 'UM013', 100),
('2111501470', 'MI113', 75),
('2111501496', 'UM013', 90),
('2111501496', 'BA001', 50);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblmatkul`
--
ALTER TABLE `tblmatkul`
  ADD PRIMARY KEY (`kd_mtk`);

--
-- Indexes for table `tblmhs`
--
ALTER TABLE `tblmhs`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `tblnilai`
--
ALTER TABLE `tblnilai`
  ADD KEY `nim` (`nim`),
  ADD KEY `kd_mtk` (`kd_mtk`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblnilai`
--
ALTER TABLE `tblnilai`
  ADD CONSTRAINT `tblnilai_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `tblmhs` (`nim`),
  ADD CONSTRAINT `tblnilai_ibfk_2` FOREIGN KEY (`kd_mtk`) REFERENCES `tblmatkul` (`kd_mtk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
