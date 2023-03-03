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
-- Struktur dari tabel `menuwebsitekemenkeu`
--

CREATE TABLE `menuwebsitekemenkeu` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `link` varchar(400) NOT NULL,
  `gambar` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `menuwebsitekemenkeu`
--

INSERT INTO `menuwebsitekemenkeu` (`id`, `judul`, `link`, `gambar`) VALUES
(20, 'KEMENKEU LEARNING CENTRE', 'https://www.youtube.com/watch?v=7aioo20QeF0&amp;ab_channel=BassKlemens', 0x363430303439356339353065302e6a7067),
(22, 'dsadsad', 'https://www.youtube.com/watch?v=Re2dJCkpLMo&amp;ab_channel=Daydreams', 0x363366646134653438663936332e706e67),
(24, 'kppnJogja', 'https://www.youtube.com/watch?v=G0g965OfUj8&amp;ab_channel=XINNN', 0x363366646136313864356537352e6a7067),
(25, 'dsfdsf', 'https://www.youtube.com/watch?v=7aioo20QeF0&amp;ab_channel=BassKlemens', 0x363366646162386563323434622e6a7067),
(26, 'SURVEI KEPUASAN PEGAWAI', 'https://www.youtube.com/watch?v=Re2dJCkpLMo&amp;ab_channel=Daydreams', 0x363366656430363437613834312e6a7067),
(27, 'WARMINDO KPPN YOGYAKARTA', 'https://www.youtube.com/watch?v=mPKwJC_IYGg&amp;ab_channel=HamsanSiswanto', 0x363366653432636633393332302e6a7067),
(28, 'ffeew', 'https://www.youtube.com/watch?v=G0g965OfUj8&amp;ab_channel=XINNN', 0x363366663032383430626235312e6a7067),
(30, 'fdsfds', 'https://www.youtube.com/watch?v=Re2dJCkpLMo&amp;ab_channel=Daydreams', 0x363430303438613965356637632e6a7067),
(31, 'ererew', 'https://www.youtube.com/watch?v=7aioo20QeF0&amp;ab_channel=BassKlemens', 0x363430303438623862343161352e6a7067),
(32, 'rerew', 'https://www.youtube.com/watch?v=7aioo20QeF0&amp;ab_channel=BassKlemens', 0x363430303438633262356161642e6a7067);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `menuwebsitekemenkeu`
--
ALTER TABLE `menuwebsitekemenkeu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `menuwebsitekemenkeu`
--
ALTER TABLE `menuwebsitekemenkeu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
