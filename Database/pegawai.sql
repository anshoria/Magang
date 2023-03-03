-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 03 Mar 2023 pada 05.55
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
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `NIP` char(18) NOT NULL,
  `NIK` char(16) NOT NULL,
  `unit` set('Subbagian Umum','Seksi Pencairan Dana','Seksi Bank','Seksi Manajemen SATKER dan Kepatuhan Internal','Seksi Verifikasi dan Akuntansi','Fungsional') NOT NULL,
  `email` varchar(200) NOT NULL,
  `nohp` char(12) NOT NULL,
  `status` set('Aktif','Tidak Aktif') NOT NULL,
  `role` enum('admin','pegawai') NOT NULL,
  `password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id`, `nama`, `NIP`, `NIK`, `unit`, `email`, `nohp`, `status`, `role`, `password`) VALUES
(67, 'Muhammad Anshori Akbar123123213erw', '233423432432532545', '3224312323124124', 'Seksi Manajemen SATKER dan Kepatuhan Internal', 'anggita@gmail.com', '3432432', 'Tidak Aktif', 'pegawai', '12'),
(70, 'Mariposa', '1', '43534', 'Seksi Bank', 'anggita@gmail.com', '081254402608', 'Aktif', 'pegawai', '12'),
(71, 'Anggita', '22', '23', 'Seksi Bank', 'anggita@gmail.com', '081254402608', 'Aktif', 'pegawai', '123'),
(72, 'Mohammed salah', '12', '43534', 'Seksi Bank', 'm.anshori2711@gmail.com', '081254402608', 'Aktif', 'admin', '123'),
(73, 'eresres', '3432', '343243', 'Seksi Pencairan Dana', 'anshoriakbar11@gmail.com', 's3232', 'Aktif', 'pegawai', '123'),
(75, 'erewr', '2433', '4342', 'Subbagian Umum', 'anggita@gmail.com', '3432432', 'Aktif', 'pegawai', '321'),
(76, '32423', '34', '324', 'Seksi Pencairan Dana', '32432', '32432', 'Aktif', 'admin', '32432'),
(77, '3432', '3242', '3242', 'Seksi Pencairan Dana', 'anshoriakbar11@gmail.com', 's3232', 'Aktif', 'admin', '343'),
(81, 'sdsd', '232321222132', '123213213232132', 'Seksi Manajemen SATKER dan Kepatuhan Internal', 'm.anshori2711@gmail.com', '081254402608', 'Aktif', 'admin', 'dsfsafas'),
(85, '123', '123', '123', 'Seksi Bank', 'anshoriakbar11@gmail.com', '123', 'Tidak Aktif', 'admin', '321'),
(86, '1234', '123456789123456789', '1234', 'Subbagian Umum', 'm.anshori2711@gmail.com', '081254402608', 'Tidak Aktif', 'admin', '321');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
