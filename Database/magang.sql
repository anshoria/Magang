-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 19 Feb 2023 pada 13.10
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `magang`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `NIP` char(18) NOT NULL,
  `NIK` char(16) NOT NULL,
  `unit` set('SUBBAG Umum','Seksi Pencairan Dana','Seksi Bank','Seksi Manajemen SATKER dan Kepatuhan Internal','Seksi Verifikasi dan Akuntansi') NOT NULL,
  `email` varchar(200) NOT NULL,
  `nohp` char(12) NOT NULL,
  `status` set('Aktif','Tidak Aktif') NOT NULL,
  `password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`id`, `nama`, `NIP`, `NIK`, `unit`, `email`, `nohp`, `status`, `password`) VALUES
(55, 'hehe23243242', '1122', '1123', 'SUBBAG Umum', 'adadasdas', '1232312', 'Aktif', '123'),
(56, 'marko', '343253254', '432432432432', 'Seksi Bank', 'afdsfdsfdfds', '325443654654', 'Aktif', ''),
(57, 'Mumtazul Fuadi Nasution', '232131212111111', '640810271192392', 'SUBBAG Umum', 'djarumteam@gmail.com', '081254402609', 'Aktif', ''),
(58, 'anggita', '33222222111111', '640810271192393', 'SUBBAG Umum', 'anggita@gmail.com', '081254402611', 'Aktif', ''),
(60, 'Mohammed salah', '2143434232', '64081027119223', 'SUBBAG Umum', 'djarumteam@gmail.com', '081254402621', 'Tidak Aktif', ''),
(63, 'dfdsf', '34324', '3432432', 'Seksi Bank', 'ddsg', '432432', 'Aktif', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
