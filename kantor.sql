-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2022 at 06:38 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kantor`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kode_barang` int(5) NOT NULL,
  `nama_barang` varchar(25) NOT NULL,
  `harga_barang` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kode_barang`, `nama_barang`, `harga_barang`) VALUES
(1, 'Carrier Deuter Act Pro 65', 4200000),
(2, 'Tenda Merapi Mountain', 1300000),
(3, 'Eiger Lake Side SB ', 476100);

-- --------------------------------------------------------

--
-- Table structure for table `fahmi`
--

CREATE TABLE `fahmi` (
  `id` int(5) NOT NULL,
  `npm` int(11) NOT NULL,
  `nama_depan` varchar(25) NOT NULL,
  `nama_tengah` varchar(25) NOT NULL,
  `nama_belakang` varchar(25) NOT NULL,
  `no_hp` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fahmi`
--

INSERT INTO `fahmi` (`id`, `npm`, `nama_depan`, `nama_tengah`, `nama_belakang`, `no_hp`) VALUES
(1, 2005040059, 'Fahmi', 'Aji', 'Kurnia', 882254321),
(2, 2005040058, 'Novalinda', 'Bayu', 'S', 822638628),
(3, 2005040036, 'Wahyu', 'Dwi', 'S', 86275456),
(4, 2005040039, 'Eidelia', 'Nilam', 'N', 87287389),
(5, 2005040040, 'Arazka', 'Firdaus', 'A', 897365687);

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `kode_pegawai` int(5) NOT NULL,
  `nama_pegawai` varchar(25) NOT NULL,
  `gender_pegawai` enum('Laki-Laki','Wanita') NOT NULL,
  `jabatan_pegawai` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`kode_pegawai`, `nama_pegawai`, `gender_pegawai`, `jabatan_pegawai`) VALUES
(1, 'Fahmi', 'Laki-Laki', 'Ceo'),
(2, 'Aji', 'Laki-Laki', 'Manajer'),
(3, 'Kurnia', 'Wanita', 'Sekertaris');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `kode_pelanggan` int(5) NOT NULL,
  `nama_pelanggan` varchar(25) NOT NULL,
  `nomor_pelanggan` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`kode_pelanggan`, `nama_pelanggan`, `nomor_pelanggan`) VALUES
(1, 'Daffa', '1'),
(2, 'Deffa', '2'),
(3, 'Daffi', '3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kode_barang`);

--
-- Indexes for table `fahmi`
--
ALTER TABLE `fahmi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`kode_pegawai`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`kode_pelanggan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `kode_barang` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fahmi`
--
ALTER TABLE `fahmi`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `kode_pegawai` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `kode_pelanggan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
