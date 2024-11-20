-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Nov 2024 pada 04.30
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
-- Database: `absensidb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan`
--

CREATE TABLE `jabatan` (
  `id` int(11) UNSIGNED NOT NULL,
  `jabatan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jabatan`
--

INSERT INTO `jabatan` (`id`, `jabatan`) VALUES
(13, 'Admin'),
(14, 'Siswa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ketidakhadiran`
--

CREATE TABLE `ketidakhadiran` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_siswa` int(11) UNSIGNED NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_reset`
--

CREATE TABLE `log_reset` (
  `id` int(11) NOT NULL,
  `last_reset` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `log_reset`
--

INSERT INTO `log_reset` (`id`, `last_reset`) VALUES
(1, '2024-10-04 14:05:57'),
(2, '2024-10-05 12:37:39'),
(3, '2024-10-06 06:33:35'),
(4, '2024-10-07 09:49:02'),
(5, '2024-10-08 09:32:18'),
(6, '2024-10-09 09:30:36'),
(7, '2024-10-10 09:33:15'),
(8, '2024-10-13 21:30:43'),
(9, '2024-10-14 09:26:16'),
(10, '2024-10-28 14:51:38'),
(11, '2024-11-11 10:32:38'),
(12, '2024-11-14 12:00:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lokasi_presensi`
--

CREATE TABLE `lokasi_presensi` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama_lokasi` varchar(255) NOT NULL,
  `alamat_lokasi` varchar(255) NOT NULL,
  `tipe_lokasi` varchar(255) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL,
  `radius` int(11) NOT NULL,
  `zona_waktu` varchar(4) NOT NULL,
  `jam_masuk` time NOT NULL,
  `jam_pulang` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `lokasi_presensi`
--

INSERT INTO `lokasi_presensi` (`id`, `nama_lokasi`, `alamat_lokasi`, `tipe_lokasi`, `latitude`, `longitude`, `radius`, `zona_waktu`, `jam_masuk`, `jam_pulang`) VALUES
(5, 'CV Digital Creativ', ' jln sekip', 'Kantor', '-2.9696099567144354', '104.75229615582039', 1000000000, 'WIB', '09:00:00', '16:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2024-07-29-024439', 'App\\Database\\Migrations\\Siswa', 'default', 'App', 1722223177, 1),
(2, '2024-07-24-024801', 'App\\Database\\Migrations\\Ketidakhadiran', 'default', 'App', 1722223230, 2),
(3, '2024-07-24-024829', 'App\\Database\\Migrations\\Presensi', 'default', 'App', 1722223230, 2),
(4, '2024-07-29-024924', 'App\\Database\\Migrations\\User', 'default', 'App', 1722223230, 2),
(5, '2024-07-30-024830', 'App\\Database\\Migrations\\Jabatan', 'default', 'App', 1722308439, 3),
(6, '2024-07-30-024930', 'App\\Database\\Migrations\\LokasiPresensi', 'default', 'App', 1722308439, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `presensi`
--

CREATE TABLE `presensi` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_siswa` int(11) UNSIGNED NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `jam_masuk` time NOT NULL,
  `foto_masuk` varchar(255) NOT NULL,
  `tanggal_keluar` date NOT NULL,
  `jam_keluar` time NOT NULL,
  `foto_keluar` varchar(255) NOT NULL,
  `kegiatan` varchar(500) NOT NULL,
  `paraf` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `presensi`
--

INSERT INTO `presensi` (`id`, `id_siswa`, `tanggal_masuk`, `jam_masuk`, `foto_masuk`, `tanggal_keluar`, `jam_keluar`, `foto_keluar`, `kegiatan`, `paraf`) VALUES
(26, 19, '2024-08-12', '11:23:52', '19_1723436641.jpg', '2024-08-12', '11:30:43', '26_1723437051.jpg', '', ''),
(27, 18, '2024-08-11', '21:28:13', '18_1723472896.jpg', '2024-08-12', '21:28:16', '27_1723472900.jpg', '', ''),
(28, 19, '2024-07-13', '09:41:26', '19_1723516894.jpg', '2024-08-13', '09:41:34', '28_1723516926.jpg', '', ''),
(29, 18, '2024-08-13', '11:56:57', '18_1723525021.jpg', '2024-08-13', '11:57:01', '29_1723525025.jpg', '', ''),
(32, 18, '2024-08-19', '09:09:12', '18_1724033360.jpg', '2024-08-19', '10:41:21', '32_1724038888.jpg', '', ''),
(33, 19, '2024-08-19', '09:19:24', '19_1724033968.jpg', '2024-08-19', '09:19:28', '33_1724033972.jpg', '', ''),
(34, 18, '2024-08-20', '09:10:37', '18_1724119844.jpg', '2024-08-20', '09:48:54', '34_1724122140.jpg', '', ''),
(35, 18, '2024-08-21', '09:10:17', '18_1724206232.jpg', '2024-08-21', '14:05:59', '35_1724224005.jpg', '', ''),
(36, 19, '2024-08-21', '21:17:42', '19_1724249881.jpg', '2024-08-21', '21:18:01', '36_1724249971.jpg', '', ''),
(48, 18, '2024-08-26', '15:07:46', '18_1724659677.jpg', '2024-08-26', '15:07:57', '48_1724659692.jpg', '', ''),
(49, 19, '2024-08-26', '15:23:47', '19_1724660638.jpg', '2024-08-26', '15:23:58', '49_1724660649.jpg', '', ''),
(50, 18, '2024-08-27', '09:10:31', '18_1724725046.jpg', '0000-00-00', '00:00:00', '', 'membuat aplikasi absensi', 'alfa'),
(64, 18, '2024-08-29', '10:40:33', '18_1724902838.jpg', '2024-08-29', '10:40:38', '64_1724903341.jpg', ' membuat aplikasi absensi', ''),
(65, 19, '2024-08-29', '11:04:10', '19_1724904256.jpg', '2024-08-29', '11:04:17', '65_1724904273.jpg', 'tidur saja lahh.... ', ''),
(67, 18, '2024-09-09', '09:33:39', '18_1725849228.jpg', '2024-09-09', '09:33:48', '67_1725849260.jpg', ' makan makan', 'pandding'),
(68, 18, '2024-09-10', '09:11:56', '18_1725934323.jpg', '2024-09-10', '09:12:04', '68_1725935389.jpg', ' tidur tiduran', 'pandding'),
(69, 18, '2024-09-11', '09:09:36', '18_1726020590.jpg', '2024-09-11', '09:12:06', '69_1726020747.jpg', 'tidur tiduran', 'pandding'),
(70, 1, '2024-09-12', '10:59:32', '1_1726113587.jpg', '2024-09-12', '10:59:48', '70_1726113599.jpg', 'membuat aplikasi absensi', 'pandding'),
(71, 18, '2024-09-12', '11:00:36', '18_1726113642.jpg', '2024-09-12', '11:00:42', '71_1726113666.jpg', ' membuat aplikasi absensi', 'pandding'),
(73, 19, '2024-09-12', '20:33:15', '19_1726148014.jpg', '2024-09-12', '20:33:34', '73_1726148042.jpg', ' membuat aplikasi absensi', 'pandding'),
(74, 19, '2024-09-13', '13:08:13', '19_1726207702.jpg', '2024-09-13', '13:08:22', '74_1726207720.jpg', 'membuat aplikasi absensi\n', 'pandding'),
(75, 18, '2024-09-13', '13:08:51', '18_1726207736.jpg', '2024-09-13', '13:08:57', '75_1726207757.jpg', ' membuat aplikasi absensi\n', 'pandding'),
(76, 1, '2024-09-13', '13:09:24', '1_1726207769.jpg', '2024-09-13', '13:09:29', '76_1726207785.jpg', ' membuat aplikasi absensi', 'pandding'),
(79, 1, '2024-09-17', '09:21:35', '1_1726539702.jpg', '2024-09-17', '09:21:43', '79_1726539724.jpg', ' debug aplikasi absensi', 'pandding'),
(88, 1, '2024-09-20', '20:40:18', '1_1726839626.jpg', '0000-00-00', '00:00:00', '', '', 'alfa'),
(89, 18, '2024-09-20', '20:47:30', '18_1726840059.jpg', '2024-09-20', '20:47:39', '89_1726842758.jpg', ' debug', 'pandding'),
(90, 1, '2024-09-21', '15:47:12', '1_1726908463.jpg', '2024-09-21', '15:47:44', '90_1726908481.jpg', ' refisi', 'pandding'),
(91, 1, '2024-09-22', '09:49:59', '1_1726973429.jpg', '2024-09-22', '10:10:36', '91_1726979453.jpg', ' refisi', 'pandding'),
(92, 18, '2024-09-22', '15:57:01', '18_1726995426.jpg', '2024-09-22', '15:57:06', '92_1726995436.jpg', ' revisi', 'pandding'),
(94, 1, '2024-09-23', '08:09:42', '1_1727053787.jpg', '2024-09-23', '15:32:47', '94_1727080376.jpg', ' refisi', 'pandding'),
(95, 18, '2024-09-23', '13:25:57', '18_1727072762.jpg', '2024-09-23', '15:33:05', '95_1727080394.jpg', ' revisi aplikasi', 'pandding'),
(96, 1, '2024-09-24', '08:41:17', '1_1727142090.jpg', '0000-00-00', '00:00:00', '', '', 'alfa'),
(97, 1, '2024-09-25', '15:15:03', '1_1727252116.jpg', '0000-00-00', '00:00:00', '', '', 'alfa'),
(98, 1, '2024-09-26', '07:11:26', '1_1727309515.jpg', '0000-00-00', '00:00:00', '', '', 'alfa'),
(99, 1, '2024-09-27', '09:09:46', '1_1727403001.jpg', '2024-09-27', '09:10:01', '99_1727405716.jpg', 'refisi aplikasi', 'pandding'),
(100, 18, '2024-09-27', '10:25:53', '18_1727407564.jpg', '2024-09-27', '10:26:04', '100_1727407580.jpg', ' refisi aplikasi', 'pandding'),
(101, 1, '2024-09-28', '10:08:33', '1_1727492931.jpg', '2024-09-28', '21:35:11', '101_1727534123.jpg', ' ', 'pandding'),
(102, 18, '2024-09-28', '12:01:01', '18_1727499670.jpg', '2024-09-28', '12:01:52', '102_1727499730.jpg', 'refisi aplikasi', 'pandding'),
(103, 19, '2024-09-28', '12:43:18', '19_1727502208.jpg', '2024-09-28', '21:34:40', '103_1727534095.jpg', ' revisi aplikasi', 'pandding'),
(104, 1, '2024-09-29', '12:52:50', '1_1727589189.jpg', '2024-09-29', '20:50:27', '104_1727617850.jpg', 'refisi aplikasi', 'parafed'),
(105, 18, '2024-09-29', '09:53:18', '18_1727589206.jpg', '2024-09-29', '17:00:00', '105_1727617867.jpg', ' refisi aplikasi', 'pandding'),
(122, 19, '2024-09-30', '03:36:07', '19_1727642175.jpg', '0000-00-00', '00:00:00', '', '-', 'alfa'),
(123, 1, '2024-09-30', '09:22:11', '1_1727663030.jpg', '2024-09-30', '10:30:54', '123_1727667074.jpg', ' refisi aplikasi', 'pandding'),
(124, 18, '2024-09-30', '15:20:05', '18_1727684424.jpg', '0000-00-00', '00:00:00', '', '-', 'alfa'),
(125, 1, '2024-10-01', '09:15:11', '1_1727748943.jpg', '2024-10-01', '15:28:03', '125_1727771315.jpg', ' revisi', 'parafed'),
(126, 18, '2024-10-01', '09:15:58', '18_1727749022.jpg', '2024-10-01', '15:27:43', '126_1727771276.jpg', ' refisi aplikasi', 'parafed'),
(127, 1, '2024-10-02', '09:57:30', '1_1727837883.jpg', '2024-10-02', '16:13:54', '127_1727860447.jpg', ' revisi', 'parafed'),
(128, 18, '2024-10-02', '09:58:13', '18_1727837912.jpg', '2024-10-02', '16:14:15', '128_1727860463.jpg', ' revisi', 'parafed'),
(129, 18, '2024-10-03', '11:13:07', '18_1727928797.jpg', '0000-00-00', '00:00:00', '', '-', 'alfa'),
(130, 19, '2024-10-03', '11:13:34', '19_1727928818.jpg', '0000-00-00', '00:00:00', '', '-', 'alfa'),
(144, 1, '2024-10-05', '13:59:52', '1_1728111598.jpg', '0000-00-00', '00:00:00', '', '-', 'alfa'),
(146, 1, '2024-10-06', '11:38:34', '1_1728189525.jpg', '0000-00-00', '00:00:00', '', '-', 'alfa'),
(148, 1, '2024-10-07', '09:38:39', '1_1728268762.jpg', '0000-00-00', '00:00:00', '', '-', 'alfa'),
(149, 18, '2024-10-07', '09:50:59', '18_1728269510.jpg', '0000-00-00', '00:00:00', '', '-', 'alfa'),
(150, 1, '2024-10-08', '09:56:02', '1_1728356408.jpg', '0000-00-00', '00:00:00', '', '-', 'alfa'),
(151, 1, '2024-10-09', '09:55:18', '1_1728442552.jpg', '0000-00-00', '00:00:00', '', '-', 'alfa'),
(152, 18, '2024-10-09', '11:23:50', '18_1728447979.jpg', '0000-00-00', '00:00:00', '', '-', 'alfa'),
(153, 18, '2024-10-14', '09:22:57', '18_1728872600.jpg', '0000-00-00', '00:00:00', '', '-', 'pandding'),
(154, 18, '2024-11-11', '14:07:21', '18_1731309508.jpg', '0000-00-00', '00:00:00', '', '-', 'pandding'),
(156, 18, '2024-11-12', '10:21:09', '18_1731381676.jpg', '0000-00-00', '00:00:00', '', '-', 'pandding');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) UNSIGNED NOT NULL,
  `nisn` varchar(10) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_hanphone` varchar(20) NOT NULL,
  `foto_siswa` varchar(255) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `lokasi_presensi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `nisn`, `nama`, `jenis_kelamin`, `alamat`, `no_hanphone`, `foto_siswa`, `jabatan`, `lokasi_presensi`) VALUES
(1, '1234567890', 'Rahayu suliztia', 'Perempuan', 'demang', '081273886236', '1727012600_2e893cc77f0db15f286f.jpeg', 'Siswa', 5),
(18, '1234567890', 'Afrijal Sidik', 'Laki-laki', 'kota palembang', ' 081273886236', '1728108476_8fdf22668bddbb1b75fb.jpg', 'Siswa', 5),
(19, '1234567890', 'Rado perdinan ikwal', 'Laki-laki', 'sekayu', '   081273886236', '1726208172_fa7792b6b5016f3df027.jpeg', 'Siswa', 5),
(20, '1234567890', 'admin', 'Laki-laki', 'palembang', '   081273886236', '1726208425_29b9d369cb0e5cf47adf.png', 'Admin', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_siswa` int(11) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(20) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `id_siswa`, `username`, `password`, `status`, `role`) VALUES
(1, 1, 'suliz', '$2y$10$LbFFtDDmzNmeL2EDk8c6SOOl99Cuc79QTujsvauocYuVWfZX8qpDy', 'aktif', 'siswa'),
(18, 18, 'sidik', '$2y$10$gNXDQfotu.3KnIcSwbH1hugVjPnNJK90ks6erNN4CujxYGy3WwB7e', 'Aktif', 'siswa'),
(19, 19, 'rado', '$2y$10$znCPpimRt/qPYspi78v.X.FZX9OmTaJNhm4vxodvCTIOeQ2kveOvO', 'Aktif', 'siswa'),
(20, 20, 'admin', '$2y$10$xRyhkTfZFjtELvOQAdJbeu3zIodk0K.7WwFpEro/BHsCJNEPYXeCi', 'Aktif', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ketidakhadiran`
--
ALTER TABLE `ketidakhadiran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ketidakhadiran_id_siswa_foreign` (`id_siswa`);

--
-- Indeks untuk tabel `log_reset`
--
ALTER TABLE `log_reset`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lokasi_presensi`
--
ALTER TABLE `lokasi_presensi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `presensi`
--
ALTER TABLE `presensi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `presensi_id_siswa_foreign` (`id_siswa`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_siswa_foreign` (`id_siswa`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `ketidakhadiran`
--
ALTER TABLE `ketidakhadiran`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `log_reset`
--
ALTER TABLE `log_reset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `lokasi_presensi`
--
ALTER TABLE `lokasi_presensi`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `presensi`
--
ALTER TABLE `presensi`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `ketidakhadiran`
--
ALTER TABLE `ketidakhadiran`
  ADD CONSTRAINT `ketidakhadiran_id_siswa_foreign` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id`);

--
-- Ketidakleluasaan untuk tabel `presensi`
--
ALTER TABLE `presensi`
  ADD CONSTRAINT `presensi_id_siswa_foreign` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id`);

--
-- Ketidakleluasaan untuk tabel `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_id_siswa_foreign` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
