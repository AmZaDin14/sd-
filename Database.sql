-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 01 Okt 2020 pada 03.20
-- Versi server: 10.2.33-MariaDB-cll-lve
-- Versi PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydrivek_mydrivekus4`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `links`
--

CREATE TABLE `links` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `file` varchar(500) NOT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `short` varchar(33) NOT NULL,
  `created_by` text NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `westheme_key` varchar(255) DEFAULT NULL,
  `westheme_value` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id`, `westheme_key`, `westheme_value`, `created_at`) VALUES
(1, 'site_url', 'https://mydriveku.com', '2020-04-17 03:56:38'),
(27, 'status', '1', '2020-04-17 08:18:43'),
(30, 'logo', 'logo.jpg', '2020-04-23 04:28:24'),
(31, 'iklan', 'iklan.xml', '2020-04-23 04:28:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `telp` varchar(15) DEFAULT NULL,
  `level` int(1) DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 1,
  `session` varchar(100) DEFAULT NULL,
  `api` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `name`, `telp`, `level`, `status`, `session`, `api`, `created_at`) VALUES
(3, 'Admin', '1a1dc91c907325c69271ddf0c944bc72', 'admin@myplayersku.com', 'MyPlayersku', '', 1, 1, 'cfaa8c06ea4a35b8499be996ebb864e4', 'ff0a0bf0c5c4a3872b1e7d221d15a954', '2020-04-14 11:33:30');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `file` (`file`),
  ADD UNIQUE KEY `short` (`short`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `westheme_key` (`westheme_key`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `links`
--
ALTER TABLE `links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
