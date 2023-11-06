-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 06 Nov 2023 pada 05.20
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wisata semarang`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `wisata`
--

CREATE TABLE `wisata` (
  `id destinasi` int(11) NOT NULL,
  `nama destinasi` varchar(255) NOT NULL,
  `alamat wisata` varchar(255) NOT NULL,
  `jenis destinasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `wisata`
--

INSERT INTO `wisata` (`id destinasi`, `nama destinasi`, `alamat wisata`, `jenis destinasi`) VALUES
(1, 'Wisata Sampookong', 'Jl. Simongan No.129, Bongsari, Kec. Semarang Barat, Kota Semarang, Jawa Tengah 50148', 'Klenteng'),
(2, 'Pantai Marina Semarang', '29WP+4FC, Tawangsari, Kota Semarang, Jawa Tengah 50144', 'pantai'),
(3, 'Gereja blenduk', 'Jl. Letjen Suprapto No.32, Tj. Mas, Kec. Semarang Utara, Kota Semarang, Jawa Tengah 50174', 'Tempat Ibadah Gereja'),
(4, 'Wisata Goa Kreo', 'Jl. Raya Goa Kreo, Kandri, Kec. Gn. Pati, Kota Semarang, Jawa Tengah 50222', 'Tempat Rekreasi'),
(5, 'Wisata Kota Lama', '2CJH+M9F, Tj. Mas, Kec. Semarang Utara, Kota Semarang, Jawa Tengah 50174', 'Bangunan Bersejarah');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`id destinasi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `wisata`
--
ALTER TABLE `wisata`
  MODIFY `id destinasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
