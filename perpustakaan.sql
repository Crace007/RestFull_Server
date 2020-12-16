-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 16 Des 2020 pada 23.48
-- Versi Server: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `is_private_key` tinyint(1) NOT NULL DEFAULT '0',
  `ip_addresses` text,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `keys`
--

INSERT INTO `keys` (`id`, `user_id`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`) VALUES
(1, 1, 'QWERTY', 1, 0, 0, '1', 1),
(2, 2, '123456', 1, 0, 0, '1', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_buku`
--

CREATE TABLE `tb_buku` (
  `id` int(11) NOT NULL,
  `Judul` varchar(255) NOT NULL,
  `Penulis` varchar(255) NOT NULL,
  `Edisi` varchar(25) NOT NULL,
  `Penerbit` varchar(255) NOT NULL,
  `Tahun` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_buku`
--

INSERT INTO `tb_buku` (`id`, `Judul`, `Penulis`, `Edisi`, `Penerbit`, `Tahun`) VALUES
(1, 'Pemrograman Microsoft Visual Basic 6', 'Kurniadi Adi', '5', 'Elex Media Computindo', '2008'),
(2, 'Pengenalan Teknologi Informasi', 'Kadir Abdul', '2', 'Andi Offset', '2005'),
(3, 'Basis Data', 'Fathansyah', '1', 'Informatika Bandung', '2007'),
(4, 'Etika Komputer', 'Wahyono Teguh', '2', 'Andi Offset', '2009'),
(5, 'Sistem Oprasi', 'Haryanto Bambang', '4', 'Informatika bandung', '2009'),
(6, 'Pengenalan Komputer', 'Haryono Jogiyanto', '5', 'Andy Offset', '2005'),
(7, 'Arsitektur Komputer', 'Hartanto Skri', '1', 'Bsi press', '2006'),
(8, 'Pengenalan Logika dan Algoritma', 'Yulikuspartono', '1', 'Andi Offset', '2004'),
(9, 'Sistem Oprasi', 'Binanto iwan', '1', 'Andi Offset', '2005'),
(10, 'Kejahatan Mayantara', 'Wahid Abdul', '1', 'Refika Aditama', '2005'),
(11, 'Perancangan Database', 'Edi Winarko', '1', 'Prestasi Pusaka', '2006'),
(12, 'Teknik Digital', 'Santosa P. Insap', '1', 'Yrama Widya', '2011'),
(13, 'Rekayasa Sistem Berorientasi Objek', 'Hariyanton Bambang', '1', 'Informatika Bandung', '2014'),
(14, 'Optimalisasi My Sql di VB', 'Santoso budi', '1', 'Bsi Press', '2006'),
(15, 'Jaringan Komputer', 'Sukmaaji Anjik', '1', 'Andi Offset', '2008');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_buku`
--
ALTER TABLE `tb_buku`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_buku`
--
ALTER TABLE `tb_buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
