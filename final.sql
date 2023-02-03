-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2023 at 07:02 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beta-uqi`
--

-- --------------------------------------------------------

--
-- Table structure for table `absens`
--

CREATE TABLE `absens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mahasiswa_id` bigint(20) UNSIGNED NOT NULL,
  `jadwal_id` bigint(20) UNSIGNED DEFAULT NULL,
  `dosen_id` bigint(20) UNSIGNED DEFAULT NULL,
  `pertemuan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jam_absen` time DEFAULT NULL,
  `tanggal_absen` date DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `absens`
--

INSERT INTO `absens` (`id`, `mahasiswa_id`, `jadwal_id`, `dosen_id`, `pertemuan`, `jam_absen`, `tanggal_absen`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 8, '1', NULL, NULL, 'Hadir', '2022-09-05 20:26:45', '2022-09-05 20:26:45'),
(2, 2, 1, 8, '1', NULL, NULL, 'Hadir', '2022-09-05 20:26:45', '2022-09-05 20:26:45'),
(3, 1, 1, 8, '2', NULL, NULL, 'Sakit', '2022-09-05 20:27:04', '2022-09-05 20:27:04'),
(4, 2, 1, 8, '2', NULL, NULL, 'Alpa', '2022-09-05 20:27:04', '2022-09-05 20:27:04'),
(5, 1, 1, 8, '3', NULL, NULL, 'Alpa', '2022-09-05 20:27:12', '2022-09-05 20:27:12'),
(6, 2, 1, 8, '3', NULL, NULL, 'Alpa', '2022-09-05 20:27:12', '2022-09-05 20:27:12'),
(7, 1, 1, 8, '4', NULL, NULL, 'Sakit', '2022-09-06 05:30:58', '2022-09-06 05:30:58'),
(8, 2, 1, 8, '4', NULL, NULL, 'Izin', '2022-09-06 05:30:58', '2022-09-06 05:30:58'),
(39, 1, 11, 9, '1', NULL, NULL, 'Hadir', '2022-09-07 04:17:14', '2022-09-07 04:17:14'),
(40, 3, 11, 9, '1', NULL, NULL, 'Hadir', '2022-09-07 04:17:14', '2022-09-07 04:17:14'),
(41, 1, 11, 9, '2', NULL, NULL, 'Sakit', '2022-09-07 04:17:33', '2022-09-07 04:17:33'),
(42, 3, 11, 9, '2', NULL, NULL, 'Alpa', '2022-09-07 04:17:33', '2022-09-07 04:17:33');

-- --------------------------------------------------------

--
-- Table structure for table `dosens`
--

CREATE TABLE `dosens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name_dosen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dosens`
--

INSERT INTO `dosens` (`id`, `user_id`, `name_dosen`, `nip`, `created_at`, `updated_at`) VALUES
(1, 8, 'Dosen 1', '5286394170', '2022-09-05 20:14:32', '2022-09-05 20:14:32'),
(2, 9, 'Dosen 2', '51963548452', '2022-09-05 20:14:32', '2022-09-05 20:14:32'),
(3, 10, 'Dosen 3', '0987654321', '2022-09-05 20:14:32', '2022-09-05 20:14:32');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jadwals`
--

CREATE TABLE `jadwals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hari` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matakuliah_id` bigint(20) UNSIGNED NOT NULL,
  `semester_id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `dosen_id` bigint(20) UNSIGNED NOT NULL,
  `ruangan_id` bigint(20) UNSIGNED NOT NULL,
  `prodi_id` bigint(20) UNSIGNED NOT NULL,
  `jam_mulai` time DEFAULT NULL,
  `jam_selesai` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jadwals`
--

INSERT INTO `jadwals` (`id`, `hari`, `matakuliah_id`, `semester_id`, `kelas_id`, `dosen_id`, `ruangan_id`, `prodi_id`, `jam_mulai`, `jam_selesai`, `created_at`, `updated_at`) VALUES
(1, 'Senin', 1, 1, 1, 8, 2, 1, '07:00:00', '14:00:00', '2022-09-05 20:18:53', '2022-09-05 20:21:11'),
(11, 'Selasa', 2, 1, 1, 9, 1, 1, '11:14:00', '13:14:00', '2022-09-07 04:14:25', '2022-09-07 04:14:25');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_kelas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `name_kelas`, `created_at`, `updated_at`) VALUES
(1, 'A', '2022-09-05 20:14:30', '2022-09-05 20:14:30'),
(2, 'B', '2022-09-05 20:14:30', '2022-09-05 20:14:30'),
(3, 'C', '2022-09-05 20:14:30', '2022-09-05 20:14:30'),
(4, 'D', '2022-09-05 20:14:30', '2022-09-05 20:14:30');

-- --------------------------------------------------------

--
-- Table structure for table `kelas_kuliahs`
--

CREATE TABLE `kelas_kuliahs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mahasiswa_id` bigint(20) UNSIGNED NOT NULL,
  `jadwal_id` bigint(20) UNSIGNED NOT NULL,
  `matakuliah_id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kelas_kuliahs`
--

INSERT INTO `kelas_kuliahs` (`id`, `mahasiswa_id`, `jadwal_id`, `matakuliah_id`, `kelas_id`, `created_at`, `updated_at`) VALUES
(1, 5, 1, 1, 1, '2022-09-05 20:20:28', '2022-09-05 20:20:28'),
(2, 6, 1, 1, 1, '2022-09-05 20:20:39', '2022-09-05 20:20:39'),
(19, 5, 11, 2, 1, '2022-09-07 04:14:43', '2022-09-07 04:14:43'),
(20, 7, 11, 2, 1, '2022-09-07 04:14:53', '2022-09-07 04:14:53');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswas`
--

CREATE TABLE `mahasiswas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name_mahasiswa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nim` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `prodi_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mahasiswas`
--

INSERT INTO `mahasiswas` (`id`, `user_id`, `name_mahasiswa`, `nim`, `kelas_id`, `prodi_id`, `created_at`, `updated_at`) VALUES
(1, 5, 'Mahasiswa 1', '1472583690', 1, 1, '2022-09-05 20:14:32', '2022-09-05 20:14:32'),
(2, 6, 'Mahasiswa 2', '1593578520', 1, 1, '2022-09-05 20:14:32', '2022-09-05 20:14:32'),
(3, 7, 'Mahasiswa 3', '1234567890', 1, 1, '2022-09-05 20:14:32', '2022-09-05 20:14:32');

-- --------------------------------------------------------

--
-- Table structure for table `matakuliahs`
--

CREATE TABLE `matakuliahs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_matakuliah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_matakuliah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester_id` bigint(20) UNSIGNED DEFAULT NULL,
  `prodi_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `matakuliahs`
--

INSERT INTO `matakuliahs` (`id`, `kode_matakuliah`, `name_matakuliah`, `semester_id`, `prodi_id`, `created_at`, `updated_at`) VALUES
(1, 'MK1', 'Pemrograman Dasar', 1, 1, '2022-09-05 20:14:30', '2022-09-05 20:14:30'),
(2, 'MK2', 'Pemrograman Lanjutan', 1, 1, '2022-09-05 20:14:30', '2022-09-05 20:14:30');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_07_22_143109_create_prodis_table', 1),
(6, '2022_07_22_143415_create_ruangans_table', 1),
(7, '2022_07_22_143540_create_semesters_table', 1),
(8, '2022_07_22_143545_create_kelas_table', 1),
(9, '2022_07_22_143555_create_statuses_table', 1),
(10, '2022_07_22_143595_create_orangtuas_table', 1),
(11, '2022_07_22_143643_create_mahasiswas_table', 1),
(12, '2022_07_22_143647_create_dosens_table', 1),
(13, '2022_07_22_143702_create_matakuliahs_table', 1),
(14, '2022_07_22_143725_create_jadwals_table', 1),
(15, '2022_07_22_143738_create_absens_table', 1),
(16, '2022_07_28_134311_create_kelas_kuliahs_table', 1),
(17, '2022_08_11_231937_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 7),
(3, 'App\\Models\\User', 8),
(3, 'App\\Models\\User', 9),
(3, 'App\\Models\\User', 10),
(4, 'App\\Models\\User', 2),
(5, 'App\\Models\\User', 3),
(6, 'App\\Models\\User', 4);

-- --------------------------------------------------------

--
-- Table structure for table `orangtuas`
--

CREATE TABLE `orangtuas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_orangtua` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_orangtua` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_orangtua` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prodis`
--

CREATE TABLE `prodis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_prodi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prodis`
--

INSERT INTO `prodis` (`id`, `name_prodi`, `created_at`, `updated_at`) VALUES
(1, 'Teknik Informatika', '2022-09-05 20:14:30', '2022-09-05 20:14:30'),
(2, 'Teknik Listrik', '2022-09-05 20:14:30', '2022-09-05 20:14:30'),
(3, 'Teknik Elektronika', '2022-09-05 20:14:30', '2022-09-05 20:14:30');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2022-09-05 20:14:30', '2022-09-05 20:14:30'),
(2, 'mahasiswa', 'web', '2022-09-05 20:14:30', '2022-09-05 20:14:30'),
(3, 'dosen', 'web', '2022-09-05 20:14:30', '2022-09-05 20:14:30'),
(4, 'AdminInformatika', 'web', '2022-09-05 20:14:30', '2022-09-05 20:14:30'),
(5, 'AdminElektronika', 'web', '2022-09-05 20:14:30', '2022-09-05 20:14:30'),
(6, 'AdminListrik', 'web', '2022-09-05 20:14:30', '2022-09-05 20:14:30');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ruangans`
--

CREATE TABLE `ruangans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ruangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prodi_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ruangans`
--

INSERT INTO `ruangans` (`id`, `name_ruangan`, `prodi_id`, `created_at`, `updated_at`) VALUES
(1, 'Praktikum 1', 1, '2022-09-05 20:14:30', '2022-09-05 20:14:30'),
(2, 'Teori 1', 1, '2022-09-05 20:14:30', '2022-09-05 20:14:30');

-- --------------------------------------------------------

--
-- Table structure for table `semesters`
--

CREATE TABLE `semesters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_semester` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `semesters`
--

INSERT INTO `semesters` (`id`, `name_semester`, `created_at`, `updated_at`) VALUES
(1, '1', '2022-09-05 20:14:30', '2022-09-05 20:14:30'),
(2, '2', '2022-09-05 20:14:30', '2022-09-05 20:14:30'),
(3, '3', '2022-09-05 20:14:30', '2022-09-05 20:14:30'),
(4, '4', '2022-09-05 20:14:30', '2022-09-05 20:14:30'),
(5, '5', '2022-09-05 20:14:30', '2022-09-05 20:14:30'),
(6, '6', '2022-09-05 20:14:30', '2022-09-05 20:14:30'),
(7, '7', '2022-09-05 20:14:30', '2022-09-05 20:14:30'),
(8, '8', '2022-09-05 20:14:30', '2022-09-05 20:14:30');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name_status`, `created_at`, `updated_at`) VALUES
(1, 'Hadir', '2022-09-05 20:14:30', '2022-09-05 20:14:30'),
(2, 'Sakit', '2022-09-05 20:14:30', '2022-09-05 20:14:30'),
(3, 'Izin', '2022-09-05 20:14:30', '2022-09-05 20:14:30'),
(4, 'Alpha', '2022-09-05 20:14:30', '2022-09-05 20:14:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super User', 'admin@mail.com', '2022-09-05 20:14:30', '$2y$10$HRphp6UmiC1FZxGgQ1xWv.sJBMlD8KAwC3TP8sJCQnEemQGkiYrzC', NULL, '2022-09-05 20:14:30', '2022-09-05 20:14:30'),
(2, 'Admin Informatika', 'informatika@mail.com', '2022-09-05 20:14:30', '$2y$10$0.tt2YZhuxRd/04XArl4/uqcSpQf181auqH8O8rb/lGzlvhjsxDP.', NULL, '2022-09-05 20:14:30', '2022-09-05 20:14:30'),
(3, 'Admin Elekronika', 'elektronika@mail.com', '2022-09-05 20:14:31', '$2y$10$0LfWhCxHLs8H74J4MKi87OU.hD4r4275OVjJ7yPSAlbAYXXsk6JG2', NULL, '2022-09-05 20:14:31', '2022-09-05 20:14:31'),
(4, 'Admin Listrik', 'listrik@mail.com', '2022-09-05 20:14:31', '$2y$10$YtDOT5UKzIa/VRNCVb8GPebKzO/1o24tIWGnOY3qfWpsUhLx1z5bS', NULL, '2022-09-05 20:14:31', '2022-09-05 20:14:31'),
(5, 'Mahasiswa 1', 'mahasiswa1@mail.com', '2022-09-05 20:14:31', '$2y$10$Ziv3YlXMuQ2sniSCd65CQeADlbh45BoMlRwkXkrA3dPOwtPMdlHxe', NULL, '2022-09-05 20:14:31', '2022-09-05 20:14:31'),
(6, 'Mahasiswa 2', 'mahasiswa2@mail.com', '2022-09-05 20:14:31', '$2y$10$L1ZuEcxXNjFehdYmdUX2Pex2K7CMNIvCoqd7bJbpwuOdDBtVVj6a6', NULL, '2022-09-05 20:14:31', '2022-09-05 20:14:31'),
(7, 'Mahasiswa 3', 'mahasiswa3@mail.com', '2022-09-05 20:14:31', '$2y$10$rQUFBIjX0MLlyC/U16so2.3LM42SxAZD3A2js6ThzSK85KmLGatui', NULL, '2022-09-05 20:14:31', '2022-09-05 20:14:31'),
(8, 'Dosen 1', 'dosen1@mail.com', '2022-09-05 20:14:31', '$2y$10$fHtdkRsMP2c/tOV5MW3v5eFovhuiU5ZtLA/PdRrdQBqurSDjypEba', NULL, '2022-09-05 20:14:31', '2022-09-05 20:14:31'),
(9, 'Dosen 2', 'dosen2@mail.com', '2022-09-05 20:14:31', '$2y$10$UEHOGbmaJH6KvNTOVgGYUeA5jCOC0cAnlR.3VZ5vIzJDTvpqHdRfe', NULL, '2022-09-05 20:14:31', '2022-09-05 20:14:31'),
(10, 'Dosen 3', 'dosen3@mail.com', '2022-09-05 20:14:32', '$2y$10$YJb6STfCy6qjyjkHYzf5k.La.LblZB5ZAzzNF9ZBJXa1PpcAKQXii', NULL, '2022-09-05 20:14:32', '2022-09-05 20:14:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absens`
--
ALTER TABLE `absens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `absens_mahasiswa_id_foreign` (`mahasiswa_id`),
  ADD KEY `absens_jadwal_id_foreign` (`jadwal_id`),
  ADD KEY `absens_dosen_id_foreign` (`dosen_id`);

--
-- Indexes for table `dosens`
--
ALTER TABLE `dosens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dosens_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jadwals`
--
ALTER TABLE `jadwals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jadwals_matakuliah_id_foreign` (`matakuliah_id`),
  ADD KEY `jadwals_semester_id_foreign` (`semester_id`),
  ADD KEY `jadwals_kelas_id_foreign` (`kelas_id`),
  ADD KEY `jadwals_dosen_id_foreign` (`dosen_id`),
  ADD KEY `jadwals_ruangan_id_foreign` (`ruangan_id`),
  ADD KEY `jadwals_prodi_id_foreign` (`prodi_id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas_kuliahs`
--
ALTER TABLE `kelas_kuliahs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kelas_kuliahs_mahasiswa_id_foreign` (`mahasiswa_id`),
  ADD KEY `kelas_kuliahs_jadwal_id_foreign` (`jadwal_id`),
  ADD KEY `kelas_kuliahs_matakuliah_id_foreign` (`matakuliah_id`),
  ADD KEY `kelas_kuliahs_kelas_id_foreign` (`kelas_id`);

--
-- Indexes for table `mahasiswas`
--
ALTER TABLE `mahasiswas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mahasiswas_user_id_foreign` (`user_id`),
  ADD KEY `mahasiswas_kelas_id_foreign` (`kelas_id`),
  ADD KEY `mahasiswas_prodi_id_foreign` (`prodi_id`);

--
-- Indexes for table `matakuliahs`
--
ALTER TABLE `matakuliahs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matakuliahs_semester_id_foreign` (`semester_id`),
  ADD KEY `matakuliahs_prodi_id_foreign` (`prodi_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `orangtuas`
--
ALTER TABLE `orangtuas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `prodis`
--
ALTER TABLE `prodis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `ruangans`
--
ALTER TABLE `ruangans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ruangans_prodi_id_foreign` (`prodi_id`);

--
-- Indexes for table `semesters`
--
ALTER TABLE `semesters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absens`
--
ALTER TABLE `absens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `dosens`
--
ALTER TABLE `dosens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jadwals`
--
ALTER TABLE `jadwals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kelas_kuliahs`
--
ALTER TABLE `kelas_kuliahs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `mahasiswas`
--
ALTER TABLE `mahasiswas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `matakuliahs`
--
ALTER TABLE `matakuliahs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `orangtuas`
--
ALTER TABLE `orangtuas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prodis`
--
ALTER TABLE `prodis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ruangans`
--
ALTER TABLE `ruangans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `semesters`
--
ALTER TABLE `semesters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `absens`
--
ALTER TABLE `absens`
  ADD CONSTRAINT `absens_dosen_id_foreign` FOREIGN KEY (`dosen_id`) REFERENCES `dosens` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `absens_jadwal_id_foreign` FOREIGN KEY (`jadwal_id`) REFERENCES `jadwals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `absens_mahasiswa_id_foreign` FOREIGN KEY (`mahasiswa_id`) REFERENCES `mahasiswas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dosens`
--
ALTER TABLE `dosens`
  ADD CONSTRAINT `dosens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jadwals`
--
ALTER TABLE `jadwals`
  ADD CONSTRAINT `jadwals_dosen_id_foreign` FOREIGN KEY (`dosen_id`) REFERENCES `dosens` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jadwals_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jadwals_matakuliah_id_foreign` FOREIGN KEY (`matakuliah_id`) REFERENCES `matakuliahs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jadwals_prodi_id_foreign` FOREIGN KEY (`prodi_id`) REFERENCES `prodis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jadwals_ruangan_id_foreign` FOREIGN KEY (`ruangan_id`) REFERENCES `ruangans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jadwals_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kelas_kuliahs`
--
ALTER TABLE `kelas_kuliahs`
  ADD CONSTRAINT `kelas_kuliahs_jadwal_id_foreign` FOREIGN KEY (`jadwal_id`) REFERENCES `jadwals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kelas_kuliahs_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kelas_kuliahs_mahasiswa_id_foreign` FOREIGN KEY (`mahasiswa_id`) REFERENCES `mahasiswas` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kelas_kuliahs_matakuliah_id_foreign` FOREIGN KEY (`matakuliah_id`) REFERENCES `matakuliahs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mahasiswas`
--
ALTER TABLE `mahasiswas`
  ADD CONSTRAINT `mahasiswas_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mahasiswas_prodi_id_foreign` FOREIGN KEY (`prodi_id`) REFERENCES `prodis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mahasiswas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `matakuliahs`
--
ALTER TABLE `matakuliahs`
  ADD CONSTRAINT `matakuliahs_prodi_id_foreign` FOREIGN KEY (`prodi_id`) REFERENCES `prodis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `matakuliahs_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ruangans`
--
ALTER TABLE `ruangans`
  ADD CONSTRAINT `ruangans_prodi_id_foreign` FOREIGN KEY (`prodi_id`) REFERENCES `prodis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
