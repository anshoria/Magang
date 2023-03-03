-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 03 Mar 2023 pada 05.56
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
-- Struktur dari tabel `menuakuntabilitaskinerja`
--

CREATE TABLE `menuakuntabilitaskinerja` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `link` varchar(400) NOT NULL,
  `gambar` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `menuakuntabilitaskinerja`
--

INSERT INTO `menuakuntabilitaskinerja` (`id`, `judul`, `link`, `gambar`) VALUES
(1, '1', 'https://www.youtube.com/watch?v=G0g965OfUj8&amp;ab_channel=XINNN', 0x363430303630303939653131382e6a7067),
(2, '2', 'https://www.youtube.com/watch?v=Re2dJCkpLMo&amp;ab_channel=Daydreams', 0x363430303630663165386161302e6a706567),
(3, '3', 'https://www.youtube.com/watch?v=Re2dJCkpLMo&amp;ab_channel=Daydreams', 0x363430303631666331353064382e706e67),
(4, '4', 'https://www.youtube.com/watch?v=Re2dJCkpLMo&amp;ab_channel=Daydreams', 0x363430303632313532303332622e706e67);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `menuakuntabilitaskinerja`
--
ALTER TABLE `menuakuntabilitaskinerja`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `menuakuntabilitaskinerja`
--
ALTER TABLE `menuakuntabilitaskinerja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
