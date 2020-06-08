-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2020 at 02:37 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `icovid`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rumah_sakit`
--

CREATE TABLE `rumah_sakit` (
  `id` int(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `provinsi` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rumah_sakit`
--

INSERT INTO `rumah_sakit` (`id`, `nama`, `alamat`, `provinsi`, `created_at`, `updated_at`) VALUES
(1, 'RSU Dr. Zainoel Abidin Banda Aceh', 'Jl. Teuku Moh. Daud Beureueh No.108, Banda Aceh. Telp: (0651) 34565, 22077, 28148', 'ACEH', NULL, NULL),
(2, 'RSU Cut Meutia Lhokseumawe', 'Jl. Banda Aceh-Medan Km.6 Buket Rata, Lhokseumawe. Telp: (0645) 43012', 'ACEH', NULL, NULL),
(4, 'RSUP H. Adam Malik Medan', 'Jl. Bunga Lau No.17. Telp: (061) 8360381', 'Sumatera Utara', '2020-06-07 16:38:46', '2020-06-07 16:38:46'),
(5, 'RSUP Dr. M. Jamil Padang', 'Jl. Perintis Kemerdekaan, Padang. Telp. (0751) 32372, 37030', 'Sumatera Barat', '2020-06-07 16:39:13', '2020-06-07 16:39:13'),
(6, 'RSU Arifin Achmad', 'Jl. Diponegoro No.2, Pekanbaru. Telp: (0761) 21618', 'Bali', '2020-06-07 16:40:08', '2020-06-07 16:40:08'),
(7, 'RSUD Provinsi Kepulauan Riau Tanjung Pinang', 'Jl. WR. Supratman No.100, Air Raja, Tanjung Pinang. Telp: (0771) 7335202', 'Kepulauan Riau', '2020-06-07 16:40:41', '2020-06-07 16:40:41'),
(8, 'RSUD Raden Mattaher Jambi', 'Jl. Letjen Suprapto No.31, Telanaipura, Jambi. Telp: (0741) 61692', 'Jambi', '2020-06-07 16:41:15', '2020-06-07 16:41:15'),
(9, 'RSUP M. Hoesin', 'Jl. Jend. Sudirman Km.3-5, Palembang. Telp: (0711) 30126, 354088', 'Sumatera Selatan', '2020-06-07 16:42:16', '2020-06-07 16:42:16'),
(10, 'RSUD Depati Hamzah', 'Jl. Soekarno Hatta, Bukitbesar, Pangkal Pinang. Telp: (0717) 422693', 'Bangka Belitung', '2020-06-07 16:42:50', '2020-06-07 16:42:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `is_admin`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', NULL, 1, '$2y$10$.47KnmwvDblDsPpfTOb9Su2d3bWLEPVH8Y0nWhU5mrYdBzJzHemyG', NULL, '2020-06-03 21:16:10', '2020-06-03 21:16:10'),
(2, 'User', 'user@user.com', NULL, 0, '$2y$10$aKJ74mqMS5ydz.1RLGEGSOcLsC3Ygg4EZWCkkFXUjeTvBXSqB8uFK', NULL, '2020-06-03 21:16:11', '2020-06-03 21:16:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rumah_sakit`
--
ALTER TABLE `rumah_sakit`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rumah_sakit`
--
ALTER TABLE `rumah_sakit`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
