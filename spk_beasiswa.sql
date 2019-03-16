-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 20 Des 2015 pada 12.53
-- Versi Server: 5.6.24
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--

--

-- --------------------------------------------------------

--
-- Struktur dari tabel `biodata`
--

CREATE TABLE IF NOT EXISTS `biodata` (
  `id_pendaftar` int(11) NOT NULL,
  `jenis_kelamin` enum('P','L') NOT NULL,
  `alamat_pendaftar` varchar(30) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `asal_sekolah` varchar(30) NOT NULL,
  `no_hp` varchar(14) NOT NULL,
  `telepon_rumah` varchar(12) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `photo_pendaftar` varchar(100) NOT NULL,
  `id_pengguna` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `biodata`
--

INSERT INTO `biodata` (`id_pendaftar`, `jenis_kelamin`, `alamat_pendaftar`, `tempat_lahir`, `tanggal_lahir`, `asal_sekolah`, `no_hp`, `telepon_rumah`, `email`, `photo_pendaftar`, `id_pengguna`) VALUES
(1, 'P', 'Jl. Ahmad yani', 'Majalengka', '1994-02-10', 'SMKN 1 Majalengka', '089666555444', '089677743359', 'rere@gmail.com', '3x4.jpg', 11),
(2, 'P', 'Ujungberung', 'Bandung', '1995-03-23', 'SMAN 1 Majalengka', '085224408521', '089677743359', 'intanlorin@gmail.com', '3x4.jpg', 12),
(3, 'L', 'bdg', 'bdg', '2015-12-03', 'SMAN 1 Majalengka', '085224408521', '089677743359', 'test@gmail.com', '3x4.jpg', 22);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE IF NOT EXISTS `pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `nama_lengkap` varchar(40) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` char(32) NOT NULL,
  `pertanyaan_keamanan` varchar(50) NOT NULL,
  `jawaban_keamanan` varchar(32) NOT NULL,
  `level` tinyint(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `nama_lengkap`, `username`, `password`, `pertanyaan_keamanan`, `jawaban_keamanan`, `level`) VALUES
(1, 'Sari Susanti', 'admin', '21232f297a57a5a743894a0e4a801fc3', '-', '-', 1),
(5, 'Rini Romdani', 'Riniroma', 'b86872751de1e13c142d050acfd09842', '1', 'e0e5f8b527ed343eee7f23fc0e6c5152', 0),
(7, 'Ina Najiyah', 'Ina', 'a0fb2daa33c637d078d1d276dd453ea2', '1', 'kucing', 0),
(8, 'Gina Erliana', 'gina', '7df27de84ed79a46d75c7c57ad00f76f', '1', 'cat', 0),
(10, 'beruang', 'berry', '5076e33378db3b35c88d9189851ed3bf', '1', 'berry', 0),
(11, 'rere', 'rere', 'bd134207f74532a8b094676c4a2ca9ed', '1', 'kucing', 0),
(12, 'intan loron', 'intan', 'b1098cab9c2db3eb9f576eb66c33449c', '1', 'kucing', 0),
(13, 'asri wahyuni', 'asri', '371e3678e35662cc9862fdb96fece88b', '1', 'asri', 0),
(14, 'rohma', 'rohma', '0b5bec2618acf79dc562952ceb6402ac', '1', 'rabbit', 1),
(17, 'eka puziana', 'eka', 'b3d71a239c4f81b84366f2fd62ca5122', '1', 'b65845fca59b323bd285bdcada3454c8', 1),
(21, 'rere', 'rerre', '95698a2fdeb67c347109cfa98854ce42', '1', 'dog', 0),
(22, 'testing', 'testing', 'ae2b1fca515949e5d54fb22b8ed95575', '1', 'testing', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE IF NOT EXISTS `tb_admin` (
  `id_admin` int(11) NOT NULL,
  `foto_profil` varchar(255) NOT NULL,
  `id_pengguna` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `foto_profil`, `id_pengguna`, `created_at`, `updated_at`) VALUES
(1, 'PHOTO KELAS.jpg', 1, '2015-11-26 15:30:43', '2015-11-26 16:11:14'),
(2, 'user.png', 17, '2015-12-19 05:36:34', '2015-12-19 05:36:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jawaban`
--

CREATE TABLE IF NOT EXISTS `tb_jawaban` (
  `id_hasil` int(11) NOT NULL,
  `id_pengguna` int(11) NOT NULL,
  `id_pilihan` int(11) NOT NULL,
  `id_soal` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_jawaban`
--

INSERT INTO `tb_jawaban` (`id_hasil`, `id_pengguna`, `id_pilihan`, `id_soal`) VALUES
(1, 2, 1, 1),
(2, 2, 1, 1),
(3, 2, 28, 11),
(4, 2, 12, 7),
(5, 2, 20, 9),
(6, 2, 12, 7),
(7, 2, 28, 11),
(8, 2, 32, 12),
(9, 2, 32, 12),
(10, 2, 12, 7),
(11, 2, 1, 1),
(12, 2, 8, 6),
(13, 2, 43, 4),
(14, 2, 32, 12),
(15, 2, 42, 3),
(16, 2, 12, 7),
(17, 2, 43, 4),
(18, 2, 20, 9),
(19, 2, 36, 2),
(20, 2, 47, 5),
(21, 2, 1, 1),
(22, 2, 47, 5),
(23, 2, 24, 10),
(24, 2, 28, 11),
(25, 2, 32, 12),
(26, 2, 24, 10),
(27, 0, 43, 4),
(28, 2, 43, 4),
(29, 2, 43, 4),
(30, 2, 47, 5),
(31, 2, 47, 5),
(32, 2, 32, 12),
(33, 2, 42, 3),
(34, 2, 47, 5),
(35, 2, 16, 8),
(36, 2, 20, 9),
(37, 2, 16, 8),
(38, 2, 28, 11),
(39, 2, 8, 6),
(40, 2, 20, 9),
(41, 2, 1, 1),
(42, 2, 43, 4),
(43, 2, 36, 2),
(44, 2, 43, 4),
(45, 2, 1, 1),
(46, 2, 47, 5),
(47, 2, 24, 10),
(48, 2, 46, 4),
(49, 2, 42, 3),
(50, 2, 4, 1),
(51, 2, 16, 8),
(52, 2, 12, 7),
(53, 2, 47, 5),
(54, 2, 12, 7),
(55, 2, 16, 8),
(56, 2, 24, 10),
(57, 2, 1, 1),
(58, 2, 8, 6),
(59, 2, 8, 6),
(60, 2, 27, 10),
(61, 2, 39, 2),
(62, 2, 43, 4),
(63, 2, 44, 4),
(64, 2, 24, 10),
(65, 2, 6, 5),
(66, 2, 12, 7),
(67, 2, 8, 6),
(68, 2, 43, 4),
(69, 2, 47, 5),
(70, 2, 45, 4),
(71, 2, 42, 3),
(72, 2, 8, 6),
(73, 2, 19, 8),
(74, 2, 5, 5),
(75, 2, 1, 1),
(76, 2, 46, 4),
(77, 2, 43, 4),
(78, 2, 47, 5),
(79, 2, 43, 4),
(80, 2, 43, 4),
(81, 2, 24, 10),
(82, 2, 36, 2),
(83, 2, 1, 1),
(84, 2, 24, 10),
(85, 2, 12, 7),
(86, 2, 24, 10),
(87, 2, 12, 7),
(88, 2, 12, 7),
(89, 2, 32, 12),
(90, 2, 42, 3),
(91, 2, 16, 8),
(92, 2, 43, 4),
(93, 2, 47, 5),
(94, 2, 20, 9),
(95, 2, 42, 3),
(96, 2, 42, 3),
(97, 2, 47, 5),
(98, 2, 8, 6),
(99, 2, 12, 7),
(100, 2, 47, 5),
(101, 2, 28, 11),
(102, 2, 16, 8),
(103, 2, 2, 1),
(104, 2, 32, 12),
(105, 2, 1, 1),
(106, 2, 12, 7),
(107, 2, 19, 8),
(108, 2, 43, 4),
(109, 3, 16, 8),
(110, 3, 20, 9),
(111, 3, 32, 12),
(112, 3, 7, 5),
(113, 3, 40, 3),
(114, 3, 16, 8),
(115, 3, 5, 5),
(116, 3, 1, 1),
(117, 3, 44, 4),
(118, 3, 29, 11),
(119, 4, 16, 8),
(120, 4, 16, 8),
(121, 4, 42, 3),
(122, 4, 12, 7),
(123, 4, 20, 9),
(124, 4, 1, 1),
(125, 4, 12, 7),
(126, 4, 16, 8),
(127, 4, 42, 3),
(128, 4, 1, 1),
(129, 5, 28, 11),
(130, 5, 1, 1),
(131, 5, 20, 9),
(132, 5, 12, 7),
(133, 5, 32, 12),
(134, 5, 24, 10),
(135, 5, 1, 1),
(136, 5, 20, 9),
(137, 5, 24, 10),
(138, 5, 16, 8),
(139, 6, 46, 4),
(140, 6, 8, 6),
(141, 6, 36, 2),
(142, 6, 20, 9),
(143, 6, 20, 9),
(144, 6, 47, 5),
(145, 6, 24, 10),
(146, 6, 1, 1),
(147, 6, 8, 6),
(148, 6, 16, 8),
(149, 2, 119, 32),
(150, 2, 100, 28),
(151, 2, 88, 25),
(152, 2, 109, 30),
(153, 2, 105, 29),
(154, 2, 96, 27),
(155, 2, 61, 18),
(156, 2, 112, 31),
(157, 2, 87, 24),
(158, 2, 134, 36),
(159, 2, 60, 18),
(160, 2, 63, 18),
(161, 2, 79, 22),
(162, 2, 99, 27),
(163, 2, 103, 28),
(164, 2, 86, 24),
(165, 2, 87, 24),
(166, 2, 88, 25),
(167, 2, 57, 17),
(168, 2, 78, 22),
(169, 7, 132, 36),
(170, 7, 64, 19),
(171, 7, 77, 22),
(172, 7, 68, 20),
(173, 7, 117, 32),
(174, 7, 80, 23),
(175, 7, 113, 31),
(176, 7, 66, 19),
(177, 7, 57, 17),
(178, 7, 73, 21),
(179, 11, 136, 37),
(180, 11, 88, 25),
(181, 11, 94, 26),
(182, 11, 129, 35),
(183, 11, 120, 33),
(184, 11, 124, 34),
(185, 11, 129, 35),
(186, 11, 114, 31),
(187, 11, 64, 19),
(188, 11, 88, 25),
(189, 9, 69, 20),
(190, 9, 117, 32),
(191, 9, 74, 21),
(192, 9, 96, 27),
(193, 9, 72, 21),
(194, 9, 129, 35),
(195, 9, 139, 37),
(196, 9, 67, 19),
(197, 9, 71, 20),
(198, 9, 58, 17),
(199, 12, 81, 23),
(200, 12, 95, 26),
(201, 12, 56, 17),
(202, 12, 66, 19),
(203, 12, 94, 26),
(204, 12, 86, 24),
(205, 12, 63, 18),
(206, 12, 68, 20),
(207, 12, 117, 32),
(208, 12, 94, 26);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kuota`
--

CREATE TABLE IF NOT EXISTS `tb_kuota` (
  `id` int(11) NOT NULL,
  `passing_grade` int(11) NOT NULL,
  `kuota` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kuota`
--

INSERT INTO `tb_kuota` (`id`, `passing_grade`, `kuota`, `id_admin`) VALUES
(1, 80, 20, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_nilai`
--

CREATE TABLE IF NOT EXISTS `tb_nilai` (
  `id_nilai` int(11) NOT NULL,
  `id_pengguna` int(11) NOT NULL,
  `nilai_wawancara` int(11) NOT NULL,
  `nilai_administrasi` int(11) NOT NULL,
  `nilai_ujian` int(11) NOT NULL,
  `total_hasil` int(11) NOT NULL,
  `tahun` year(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_nilai`
--

INSERT INTO `tb_nilai` (`id_nilai`, `id_pengguna`, `nilai_wawancara`, `nilai_administrasi`, `nilai_ujian`, `total_hasil`, `tahun`) VALUES
(19, 2, 60, 60, 20, 47, 2015),
(20, 7, 0, 0, 40, 13, 2015),
(21, 11, 85, 100, 60, 82, 2015),
(22, 9, 85, 100, 20, 68, 2015),
(23, 12, 0, 0, 20, 7, 2015);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pilihan`
--

CREATE TABLE IF NOT EXISTS `tb_pilihan` (
  `id_pilihan` int(11) NOT NULL,
  `id_soal` int(11) NOT NULL,
  `jawaban` varchar(225) NOT NULL,
  `keterangan` tinyint(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pilihan`
--

INSERT INTO `tb_pilihan` (`id_pilihan`, `id_soal`, `jawaban`, `keterangan`) VALUES
(56, 17, 'Limbah organik', 1),
(57, 17, 'Limbah anorganik', 0),
(58, 17, 'Limbah padat', 0),
(59, 17, 'Limbah cair', 0),
(60, 18, 'Pupuk', 1),
(61, 18, 'Pestisida', 0),
(62, 18, 'Fungisida', 0),
(63, 18, 'Herbisida', 0),
(64, 19, 'Plastik, kaca, karet', 1),
(65, 19, 'Karet, dedaunan, kaca', 0),
(66, 19, ' Kaca, plastik, Kertas', 0),
(67, 19, 'Kaleng, besi, sampah organik', 0),
(68, 20, 'Pestisida dan pupuk', 1),
(69, 20, ' Sabun dan shampo', 0),
(70, 20, ' Minyak dan oli', 0),
(71, 20, ' So2 dan NO2', 0),
(72, 21, 'Escherichia Coli', 1),
(73, 21, 'Acetobacter silia', 0),
(74, 21, 'Marcilia crenata', 0),
(75, 21, 'Acetobacter xylimun', 0),
(76, 22, 'Limbah organik', 1),
(77, 22, 'Limbah industri', 0),
(78, 22, 'Limbah bahan berbahaya dan beracun', 0),
(79, 22, 'Limbah anorganik', 0),
(80, 23, 'Proses nuklir', 1),
(81, 23, 'Kegiatan medis', 0),
(82, 23, ' Pertambangan', 0),
(83, 23, 'Transportasi', 0),
(84, 24, ' Terurai dalam waktu yang cukup lama', 1),
(85, 24, 'Mudah terurai', 0),
(86, 24, 'Berbau jika dibiarkan cukup lama', 0),
(87, 24, 'Dapat dimanfaatkan sebagai pupuk', 0),
(88, 25, '(1), (2), dan (3)', 1),
(89, 25, '(1), (3), dan (4)', 0),
(90, 25, ' (1), (3), dan (5)', 0),
(91, 25, '(2), (3), dan (4)', 0),
(92, 26, 'Menggunakan keranjang belanja sebagai pengganti kantong plastik', 1),
(93, 26, 'Membuat peralatan rumah tangga dari bambu', 0),
(94, 26, ' Menggunakan kaleng bekas untuk menanam tanaman', 0),
(95, 26, ' Menggunakan botol bekas untuk menyimpan air minum', 0),
(96, 27, 'Sampah plastik', 1),
(97, 27, 'Rerumputan', 0),
(98, 27, 'Sayuran', 0),
(99, 27, 'Kotoran hewan', 0),
(100, 28, 'Recycle', 1),
(101, 28, ' Replant', 0),
(102, 28, 'Reduce', 0),
(103, 28, 'Reuse', 0),
(104, 29, 'Polusi udara, Polusi air, Polusi tanah', 1),
(105, 29, 'Polusi Darat, Polusi Laut, Polusi udara', 0),
(106, 29, 'Polusi perairan, Polusi daratan, Polusi udara', 0),
(107, 29, 'Polusi perkotaan, Polusi pedesaan, Polusi industri', 0),
(112, 31, ' NOx', 1),
(113, 31, 'OH', 0),
(114, 31, 'CO', 0),
(115, 31, 'CxHy', 0),
(116, 32, ' Influenza', 1),
(117, 32, 'Asma', 0),
(118, 32, 'Bronkitis', 0),
(119, 32, 'TBC', 0),
(120, 33, ' Karbon monoksida', 1),
(121, 33, 'Oksigen', 0),
(122, 33, 'Karbon dioksida', 0),
(123, 33, 'Oksida sulfur', 0),
(124, 34, 'Kebakaran hutan', 1),
(125, 34, 'Kompor', 0),
(126, 34, 'Transportasi', 0),
(127, 34, 'Pembangkit listrik', 0),
(128, 35, 'Pembangkit Listrik Tenaga Uap', 1),
(129, 35, 'Pembangkit Listrik Tenaga Angin', 0),
(130, 35, 'Pembangkit Listrik Tenaga Surya', 0),
(131, 35, 'Pembangkit Listrik Tenaga Air', 0),
(132, 36, 'Kertas', 1),
(133, 36, '  pupuk anorganik', 0),
(134, 36, 'pestisida', 0),
(135, 36, 'zat radioaktif', 0),
(136, 37, 'Polutan', 1),
(137, 37, 'Pengotor', 0),
(138, 37, 'Pengoksidasi', 0),
(139, 37, 'Dekomposisi', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_soal`
--

CREATE TABLE IF NOT EXISTS `tb_soal` (
  `id_soal` int(11) NOT NULL,
  `soal` varchar(225) NOT NULL,
  `id_pengguna` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_soal`
--

INSERT INTO `tb_soal` (`id_soal`, `soal`, `id_pengguna`) VALUES
(17, ' Limbah yang berasal dari sisa mahluk hidup disebut', 1),
(18, ' Limbah pertanian yang merangsang tumbuhnya gulma adalah', 1),
(19, 'Limbah rumah tangga yang tidak dapat terurai adalah', 1),
(20, 'Jenis limbah yang berasal dari pertanian adalah', 1),
(21, 'Bakteri yang sering muncul pada air sumur yang dekat dengan septiktank adalah:', 1),
(22, 'Limbah yang sangat mudah terbakar, mudah meledak, korosif, beracun dan karsinogenik adalah', 1),
(23, 'Limbah radioaktif dihasilkan dari', 1),
(24, ' Berikut ini adalah sifat limbah anorganik adalah', 1),
(25, ' Di sebuah sungai ditemukan benda-benda seperti berikut ini\r\n(1)    Kaleng sarden\r\n(2)    Botol air mineral\r\n(3)    Kantong plastik\r\n(4)    Daun pisang\r\n(5)    Bangkai binatang\r\nYang termasuk limbah anorganik adalah nomor', 1),
(26, ' Berikut ini kegiatan yang menerapkan metode reduce adalah', 1),
(27, 'Berikut ini jenis limbah yang tidak bisa dimanfaatkan sebagai kompos adalah', 1),
(28, ' Mengolah kertas bekas menjadi kertas daur ulang merupakan tindakan yang merapkan', 1),
(29, 'Berdasarkan tempat terjadinya, polusi dapat dibedakan menjadi tiga yaitu:', 1),
(31, ' Senyawa yang dapat menyebabkan hujan asam adalah', 1),
(32, 'Di bawah ini merupakan jenis-jenis penyakit yang diakibatkan oleh polusi udara, kecuali', 1),
(33, 'Gas yang menyebabkan terjadinya efek rumah kaca adalah', 1),
(34, '   Sumber polusi udara yang disebabkan oleh sumber alami adalah', 1),
(35, ' Pembangkit listrik yang dapat menimbulkan polusi udara adalah\r\n', 1),
(36, 'Berikut ini merupakan pencemaran kimiawi, kecuali', 1),
(37, 'Zat yang menyebabkan terjadinya pencemaran disebut?', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biodata`
--
ALTER TABLE `biodata`
  ADD PRIMARY KEY (`id_pendaftar`),
  ADD KEY `id_pengguna` (`id_pengguna`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD KEY `id_pengguna` (`id_pengguna`);

--
-- Indexes for table `tb_jawaban`
--
ALTER TABLE `tb_jawaban`
  ADD PRIMARY KEY (`id_hasil`);

--
-- Indexes for table `tb_kuota`
--
ALTER TABLE `tb_kuota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_nilai`
--
ALTER TABLE `tb_nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indexes for table `tb_pilihan`
--
ALTER TABLE `tb_pilihan`
  ADD PRIMARY KEY (`id_pilihan`),
  ADD KEY `id_soal` (`id_soal`);

--
-- Indexes for table `tb_soal`
--
ALTER TABLE `tb_soal`
  ADD PRIMARY KEY (`id_soal`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `biodata`
--
ALTER TABLE `biodata`
  MODIFY `id_pendaftar` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_jawaban`
--
ALTER TABLE `tb_jawaban`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=209;
--
-- AUTO_INCREMENT for table `tb_kuota`
--
ALTER TABLE `tb_kuota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_nilai`
--
ALTER TABLE `tb_nilai`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `tb_pilihan`
--
ALTER TABLE `tb_pilihan`
  MODIFY `id_pilihan` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=140;
--
-- AUTO_INCREMENT for table `tb_soal`
--
ALTER TABLE `tb_soal`
  MODIFY `id_soal` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `biodata`
--
ALTER TABLE `biodata`
  ADD CONSTRAINT `biodata_ibfk_1` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id_pengguna`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD CONSTRAINT `tb_admin_ibfk_1` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id_pengguna`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_pilihan`
--
ALTER TABLE `tb_pilihan`
  ADD CONSTRAINT `tb_pilihan_ibfk_1` FOREIGN KEY (`id_soal`) REFERENCES `tb_soal` (`id_soal`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
