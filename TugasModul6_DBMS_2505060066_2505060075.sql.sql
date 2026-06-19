-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2026 at 08:04 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas_subquery`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_dosen`
--

CREATE TABLE `tabel_dosen` (
  `kode_dosen` int(3) NOT NULL,
  `nama_dosen` varchar(30) NOT NULL,
  `alamat_dosen` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_dosen`
--

INSERT INTO `tabel_dosen` (`kode_dosen`, `nama_dosen`, `alamat_dosen`) VALUES
(200, 'Habibie', 'Bandung'),
(201, 'Diponegoro', 'Semarang'),
(202, 'Kartini', 'Jepara'),
(203, 'Puspita', 'Magelang'),
(204, 'Ayu', 'Magelang');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_jurusan`
--

CREATE TABLE `tabel_jurusan` (
  `kode_jurusan` char(3) NOT NULL,
  `nama_jurusan` varchar(30) NOT NULL,
  `kode_dosen` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_jurusan`
--

INSERT INTO `tabel_jurusan` (`kode_jurusan`, `nama_jurusan`, `kode_dosen`) VALUES
('TE1', 'Teknik Elektro', 203),
('TI2', 'Teknologi Informasi', 200),
('TS2', 'Teknik Sipil', 211);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_mahasiswa`
--

CREATE TABLE `tabel_mahasiswa` (
  `npm` int(3) NOT NULL,
  `nama` varchar(10) NOT NULL,
  `alamat` varchar(15) NOT NULL,
  `jk` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_mahasiswa`
--

INSERT INTO `tabel_mahasiswa` (`npm`, `nama`, `alamat`, `jk`) VALUES
(101, 'Hanifa', 'Bandung', 'P'),
(102, 'Yarsya', 'Semarang', 'P'),
(103, 'Suci', 'Magelang', 'p'),
(104, 'DImas', 'Temanggung', 'L'),
(106, 'Arya', 'Jakarta', 'L'),
(107, 'Areta', 'Semarang', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_matakuliah`
--

CREATE TABLE `tabel_matakuliah` (
  `kode_mk` char(4) NOT NULL,
  `nama_mk` varchar(20) NOT NULL,
  `sks` int(3) NOT NULL,
  `semester` int(3) NOT NULL,
  `kode_dosen` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_matakuliah`
--

INSERT INTO `tabel_matakuliah` (`kode_mk`, `nama_mk`, `sks`, `semester`, `kode_dosen`) VALUES
('FTE1', 'Fondasi Elektro', 3, 3, 206),
('FTE2', 'Telekomunikasi', 2, 1, 207),
('FTE3', 'Sistem Kendali', 3, 5, 204),
('FTS1', 'Analisis Struktur', 2, 2, 203),
('FTS2', 'Struktur Baja', 3, 2, 206),
('TIK1', 'Basis Data', 3, 2, 203),
('TIK2', 'Algoritma Pemrograma', 3, 8, 201);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_mengambil_mk`
--

CREATE TABLE `tabel_mengambil_mk` (
  `npm` int(4) NOT NULL,
  `kode_mk` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_mengambil_mk`
--

INSERT INTO `tabel_mengambil_mk` (`npm`, `kode_mk`) VALUES
(101, 'TIK1'),
(103, 'FTS2'),
(105, 'TIK2'),
(107, 'FTS1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_dosen`
--
ALTER TABLE `tabel_dosen`
  ADD PRIMARY KEY (`kode_dosen`);

--
-- Indexes for table `tabel_jurusan`
--
ALTER TABLE `tabel_jurusan`
  ADD PRIMARY KEY (`kode_jurusan`);

--
-- Indexes for table `tabel_mahasiswa`
--
ALTER TABLE `tabel_mahasiswa`
  ADD PRIMARY KEY (`npm`);

--
-- Indexes for table `tabel_matakuliah`
--
ALTER TABLE `tabel_matakuliah`
  ADD PRIMARY KEY (`kode_mk`);

--
-- Indexes for table `tabel_mengambil_mk`
--
ALTER TABLE `tabel_mengambil_mk`
  ADD PRIMARY KEY (`npm`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
