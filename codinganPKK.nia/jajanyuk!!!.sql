-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Jan 2025 pada 02.21
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jajanyuk!!!!`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tambah_produk`
--

CREATE TABLE `tambah_produk` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `poto` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tambah_produk`
--

INSERT INTO `tambah_produk` (`id`, `nama`, `harga`, `poto`) VALUES
(1, 'smoothies strawbery', '10000', 'smoothies strawberry'),
(2, 'churros', '10000', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `role` enum('user','admin','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `role`) VALUES
('001', 'niaa', '$2y$10$jHmSZVF55iKWzs4zo46P0uv6F7lfLoicWy3VsBsOGEqd17sz2S.y.', 'user'),
('002', 'siti', '$2y$10$9pmXq5uuULFVcWErC0Kb4eCkVFp84rTQHW3HFNUgUNK6T5uEhwuzG', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tambah_produk`
--
ALTER TABLE `tambah_produk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
