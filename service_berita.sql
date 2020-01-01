-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 01, 2020 at 03:23 AM
-- Server version: 10.3.17-MariaDB-1
-- PHP Version: 7.2.9-1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `service_berita`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `author` varchar(25) NOT NULL,
  `tglPost` date NOT NULL,
  `isiBerita` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id`, `title`, `author`, `tglPost`, `isiBerita`) VALUES
(1, 'timnas gagal membawa emas sea games', 'andre putra', '2019-12-11', 'timnas indonesia gagal menang melawan vietnam dalam laga final sea games, tim nas garuda kalah telak 3-0, selain itu timnas juga kehilangan besar atas cideranya evan dimas darmono selaku pemain penting lini tengah garuda'),
(3, 'kopi untuk flowi series', 'apriliyano yudha', '2019-12-11', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.'),
(4, 'Ansu Fati bingung Golnya Bikin Meazza Hening', 'andre putra', '2019-12-11', ' Ansu Fati amat gembira usai golnya membantu Barcelona menang di markas Inter Milan. Namun dia terheran-heran karena golnya disambut keheningan seisi stadion.'),
(5, 'Inter Tersingkir Tanpa Penyesalan', 'andre putra', '2019-12-11', 'Langkah Inter Milan di Liga Champions musim ini cuma sampai di fase grup usai ditekuk Barcelona. Stefan de Vrij mengatakan, Inter tersingkir tanpa penyesalan. Nerazzurri gagal lolos ke babak knockout setelah menyerah 1-2 di tangan Barcelona di Giuseppe Meazza, Rabu (11/12/2019) dinihari WIB. Bertanding di hadapan publik sendiri, Inter justru kebobolan lebih dahulu setelah Carles Perez mencetak gol pembuka Blaugrana di menit ke-23.'),
(6, 'Introduction PostgreSql', 'andre putra', '2019-12-11', 'PostgreSQL is a powerful open source relational database frequently used to create, read, update and delete Python web application data. Psycopg2 is a PostgreSQL database driver that serves as a Python client for access to the PostgreSQL server.'),
(7, 'Barca pesta gol ke gawang alaves', 'andre putra', '2019-12-11', 'menjelang penutupan ahir tahun barcena berjumpa alaves di jornada ke 20 yang berlangsung di camp nou, barcelona unggul 4-1 berkat gol dari grizman, lionel messi, arturo vidal, dan luis suares dan satu gol balasan dari alaves di cetak oleh carlos moreno, denfan hasil ini bara kokoh di puncak kelasmin sementara liga spanyol.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
