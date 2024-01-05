-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2023 at 07:42 AM
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
-- Database: `datakunjungan`
--

-- --------------------------------------------------------

--
-- Table structure for table `agama`
--

CREATE TABLE `agama` (
  `agama_id` int(11) NOT NULL,
  `nama_agama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `asalpasien`
--

CREATE TABLE `asalpasien` (
  `asalpasien_id` int(11) NOT NULL,
  `nama_agama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `biodata`
--

CREATE TABLE `biodata` (
  `no_rm` varchar(6) NOT NULL,
  `nama_pasien` varchar(255) DEFAULT NULL,
  `no_ktp` varchar(50) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `desa` varchar(255) DEFAULT NULL,
  `rt` varchar(10) DEFAULT NULL,
  `rw` varchar(10) DEFAULT NULL,
  `kecamatan_id` varchar(20) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `goldarah_id` int(2) DEFAULT NULL,
  `telp_rumah` varchar(50) DEFAULT NULL,
  `no_hp` varchar(50) DEFAULT NULL,
  `jenkel_id` int(1) DEFAULT NULL,
  `agama_id` int(10) DEFAULT NULL,
  `pekerjaan_id` varchar(10) DEFAULT NULL,
  `pendidikan_id` varchar(10) DEFAULT NULL,
  `statusperkawinan_id` varchar(10) DEFAULT NULL,
  `warganegara_id` varchar(10) DEFAULT NULL,
  `nama_ayah` varchar(100) DEFAULT NULL,
  `nama_ibu` varchar(100) DEFAULT NULL,
  `nama_pasangan` varchar(100) DEFAULT NULL,
  `hp_penanggung_jawab` varchar(100) DEFAULT NULL,
  `alamat_ayah_ibu` varchar(255) DEFAULT NULL,
  `nama_anak_kandung` varchar(100) DEFAULT NULL,
  `nama_saudara_kandung` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `kodepos` varchar(50) DEFAULT NULL,
  `tipe` varchar(2) DEFAULT '0',
  `idol` int(11) DEFAULT NULL,
  `jenisrm` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `goldarah`
--

CREATE TABLE `goldarah` (
  `goldarah_id` int(11) NOT NULL,
  `nama_gol_darah` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jeniskunjungan`
--

CREATE TABLE `jeniskunjungan` (
  `jeniskunjungan_id` int(11) NOT NULL,
  `nama_jenis_kunjungan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jenispasien`
--

CREATE TABLE `jenispasien` (
  `jenispasien_id` int(11) NOT NULL,
  `nama_jenis_pasien` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jenkel`
--

CREATE TABLE `jenkel` (
  `jenkel_id` int(11) NOT NULL,
  `nama_jenkel` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kabupaten`
--

CREATE TABLE `kabupaten` (
  `kabupaten_id` int(11) NOT NULL,
  `nama_kabupaten` varchar(255) NOT NULL,
  `propinsi_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `kecamatan_id` int(11) NOT NULL,
  `nama_kecamatan` varchar(255) NOT NULL,
  `kabupaten_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kunjungan`
--

CREATE TABLE `kunjungan` (
  `kunjungan_id` varchar(20) NOT NULL,
  `waktu_kunjungan` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `kunjungan_ke` int(11) DEFAULT NULL,
  `kunjungan_terakhir` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `nama_pengantar` varchar(100) DEFAULT NULL,
  `alamat_pengantar` varchar(255) DEFAULT NULL,
  `hp_pengantar` varchar(100) DEFAULT NULL,
  `asalpasien_id` varchar(10) DEFAULT NULL,
  `keluhan` text DEFAULT NULL,
  `instalasi_id` varchar(10) DEFAULT NULL,
  `unit_id` varchar(10) DEFAULT NULL,
  `dokter_id` varchar(20) DEFAULT NULL,
  `no_rm` varchar(6) DEFAULT NULL,
  `jeniskunjungan_id` varchar(10) DEFAULT NULL,
  `jenispasien_id` varchar(1) DEFAULT NULL,
  `nim` varchar(20) DEFAULT NULL,
  `nama_mhs` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `umur_tahun` int(11) DEFAULT NULL,
  `umur_bulan` int(11) DEFAULT NULL,
  `umur_hari` int(11) DEFAULT NULL,
  `isbayarpendaftaran` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pekerjaan`
--

CREATE TABLE `pekerjaan` (
  `pekerjaan_id` int(11) NOT NULL,
  `nama_pekerjaan` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pendidikan`
--

CREATE TABLE `pendidikan` (
  `pendidikan_id` int(11) NOT NULL,
  `nama_pendidikan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `propinsi`
--

CREATE TABLE `propinsi` (
  `propinsi_id` int(11) NOT NULL,
  `nama_propinsi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `statusperkawinan`
--

CREATE TABLE `statusperkawinan` (
  `statusperkawinan_id` int(11) NOT NULL,
  `nama_status_perkawinan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `auth_key` varchar(32) DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `superadmin` smallint(6) DEFAULT 0,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `registration_ip` varchar(15) DEFAULT NULL,
  `bind_to_ip` varchar(255) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `email_confirmed` smallint(6) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `warganegara`
--

CREATE TABLE `warganegara` (
  `warganegara_id` int(11) NOT NULL,
  `nama_warga_negara` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agama`
--
ALTER TABLE `agama`
  ADD PRIMARY KEY (`agama_id`);

--
-- Indexes for table `asalpasien`
--
ALTER TABLE `asalpasien`
  ADD PRIMARY KEY (`asalpasien_id`);

--
-- Indexes for table `biodata`
--
ALTER TABLE `biodata`
  ADD KEY `biodata_agama_id_fkey` (`agama_id`),
  ADD KEY `biodata_goldarah_id_fkey` (`goldarah_id`),
  ADD KEY `biodata_jenkel_id_fkey` (`jenkel_id`);

--
-- Indexes for table `goldarah`
--
ALTER TABLE `goldarah`
  ADD PRIMARY KEY (`goldarah_id`);

--
-- Indexes for table `jeniskunjungan`
--
ALTER TABLE `jeniskunjungan`
  ADD PRIMARY KEY (`jeniskunjungan_id`);

--
-- Indexes for table `jenispasien`
--
ALTER TABLE `jenispasien`
  ADD PRIMARY KEY (`jenispasien_id`);

--
-- Indexes for table `jenkel`
--
ALTER TABLE `jenkel`
  ADD PRIMARY KEY (`jenkel_id`);

--
-- Indexes for table `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD PRIMARY KEY (`kabupaten_id`),
  ADD KEY `kabupaten_propinsi_id_fkey` (`propinsi_id`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`kecamatan_id`),
  ADD KEY `kecamatan_kabupaten_id_fkey` (`kabupaten_id`);

--
-- Indexes for table `pekerjaan`
--
ALTER TABLE `pekerjaan`
  ADD PRIMARY KEY (`pekerjaan_id`);

--
-- Indexes for table `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD PRIMARY KEY (`pendidikan_id`);

--
-- Indexes for table `propinsi`
--
ALTER TABLE `propinsi`
  ADD PRIMARY KEY (`propinsi_id`);

--
-- Indexes for table `statusperkawinan`
--
ALTER TABLE `statusperkawinan`
  ADD PRIMARY KEY (`statusperkawinan_id`);

--
-- Indexes for table `warganegara`
--
ALTER TABLE `warganegara`
  ADD PRIMARY KEY (`warganegara_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `biodata`
--
ALTER TABLE `biodata`
  ADD CONSTRAINT `biodata_agama_id_fkey` FOREIGN KEY (`agama_id`) REFERENCES `agama` (`agama_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `biodata_goldarah_id_fkey` FOREIGN KEY (`goldarah_id`) REFERENCES `goldarah` (`goldarah_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `biodata_jenkel_id_fkey` FOREIGN KEY (`jenkel_id`) REFERENCES `jenkel` (`jenkel_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD CONSTRAINT `kabupaten_propinsi_id_fkey` FOREIGN KEY (`propinsi_id`) REFERENCES `propinsi` (`propinsi_id`);

--
-- Constraints for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD CONSTRAINT `kecamatan_kabupaten_id_fkey` FOREIGN KEY (`kabupaten_id`) REFERENCES `kabupaten` (`kabupaten_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
