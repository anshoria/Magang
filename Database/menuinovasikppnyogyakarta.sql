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
-- Struktur dari tabel `menuinovasikppnyogyakarta`
--

CREATE TABLE `menuinovasikppnyogyakarta` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `link` varchar(400) NOT NULL,
  `gambar` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `menuinovasikppnyogyakarta`
--

INSERT INTO `menuinovasikppnyogyakarta` (`id`, `judul`, `link`, `gambar`) VALUES
(1, '1', 'https://www.youtube.com/watch?v=G0g965OfUj8&amp;ab_channel=XINNN', 0x363430303532323463623739392e6a7067),
(2, 'wewew', 'https://www.youtube.com/watch?v=G0g965OfUj8&amp;ab_channel=XINNN', 0x363430303532393833653539332e6a7067),
(3, 'dsad', 'https://www.youtube.com/watch?v=7aioo20QeF0&amp;ab_channel=BassKlemens', 0x363430303532633664636639612e6a7067),
(4, 'wewq', 'https://www.youtube.com/watch?v=Re2dJCkpLMo&amp;ab_channel=Daydreams', 0x363430303532636534346562322e6a706567),
(5, 'erew', 'https://www.youtube.com/watch?v=mPKwJC_IYGg&amp;ab_channel=HamsanSiswanto', 0x363430303532656661396235362e6a7067),
(6, 'ghgfh', 'https://www.youtube.com/watch?v=Re2dJCkpLMo&amp;ab_channel=Daydreams', 0x363430303533313332343831362e6a7067),
(7, 'sdsdsa', 'https://www.youtube.com/watch?v=Re2dJCkpLMo&amp;ab_channel=Daydreams', 0x363430303533316534356663342e6a7067),
(8, 'wewq', 'https://www.youtube.com/watch?v=Re2dJCkpLMo&amp;ab_channel=Daydreams', 0x363430303533323761343265372e6a706567),
(9, 'tytryttyt', 'https://www.youtube.com/watch?v=Re2dJCkpLMo&amp;ab_channel=Daydreams', 0x363430303533373165346331652e6a7067);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `menuinovasikppnyogyakarta`
--
ALTER TABLE `menuinovasikppnyogyakarta`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `menuinovasikppnyogyakarta`
--
ALTER TABLE `menuinovasikppnyogyakarta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
