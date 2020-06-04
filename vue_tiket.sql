-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2020 at 11:00 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vue_tiket`
--

-- --------------------------------------------------------

--
-- Table structure for table `categoris`
--

CREATE TABLE `categoris` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_categori` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categoris`
--

INSERT INTO `categoris` (`id`, `name_categori`, `created_at`, `updated_at`) VALUES
(1, 'molestiae', '2020-06-03 08:48:32', '2020-06-03 08:48:32'),
(2, 'ipsum', '2020-06-03 08:48:32', '2020-06-03 08:48:32'),
(3, 'harum', '2020-06-03 08:48:32', '2020-06-03 08:48:32'),
(4, 'voluptas', '2020-06-03 08:48:32', '2020-06-03 08:48:32'),
(5, 'doloribus', '2020-06-03 08:48:33', '2020-06-03 08:48:33'),
(6, 'necessitatibus', '2020-06-03 08:48:33', '2020-06-03 08:48:33'),
(7, 'dignissimos', '2020-06-03 08:48:33', '2020-06-03 08:48:33'),
(8, 'eligendi', '2020-06-03 08:48:33', '2020-06-03 08:48:33'),
(9, 'est', '2020-06-03 08:48:33', '2020-06-03 08:48:33'),
(10, 'qui', '2020-06-03 08:48:33', '2020-06-03 08:48:33'),
(11, 'sint', '2020-06-03 08:48:33', '2020-06-03 08:48:33'),
(12, 'explicabo', '2020-06-03 08:48:33', '2020-06-03 08:48:33'),
(13, 'quae', '2020-06-03 08:48:33', '2020-06-03 08:48:33'),
(14, 'ea', '2020-06-03 08:48:33', '2020-06-03 08:48:33'),
(15, 'assumenda', '2020-06-03 08:48:33', '2020-06-03 08:48:33'),
(16, 'fugit', '2020-06-03 08:48:33', '2020-06-03 08:48:33'),
(17, 'sed', '2020-06-03 08:48:33', '2020-06-03 08:48:33'),
(18, 'repudiandae', '2020-06-03 08:48:33', '2020-06-03 08:48:33'),
(19, 'quia', '2020-06-03 08:48:33', '2020-06-03 08:48:33'),
(20, 'nostrum', '2020-06-03 08:48:33', '2020-06-03 08:48:33'),
(21, 'ini adalah tes', '2020-06-03 09:15:15', '2020-06-03 09:15:15'),
(22, 'ini adalah tes kedua', '2020-06-03 09:19:45', '2020-06-03 09:19:45'),
(23, 'ini adalah tes ketiga', '2020-06-03 09:20:49', '2020-06-03 09:20:49');

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_06_03_144717_create_categoris_table', 1),
(4, '2020_06_03_152448_create_tikets_table', 1),
(5, '2020_06_03_154128_create_transaksis_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tikets`
--

CREATE TABLE `tikets` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_tiket` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga_tiket` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_tiket` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_kategori` int(10) UNSIGNED NOT NULL,
  `jumlah_tiket` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tikets`
--

INSERT INTO `tikets` (`id`, `name_tiket`, `harga_tiket`, `jenis_tiket`, `id_kategori`, `jumlah_tiket`, `created_at`, `updated_at`) VALUES
(1, 'ad', '82', 'ad', 4, '29', '2020-06-03 08:48:33', '2020-06-03 08:48:33'),
(2, 'nemo', '998', 'nemo', 1, '30', '2020-06-03 08:48:33', '2020-06-03 08:48:33'),
(3, 'maxime', '882', 'maxime', 15, '3', '2020-06-03 08:48:33', '2020-06-03 08:48:33'),
(4, 'fugit', '540', 'fugit', 9, '9', '2020-06-03 08:48:33', '2020-06-03 08:48:33'),
(5, 'perspiciatis', '546', 'perspiciatis', 20, '17', '2020-06-03 08:48:33', '2020-06-03 08:48:33'),
(6, 'mollitia', '758', 'mollitia', 12, '15', '2020-06-03 08:48:34', '2020-06-03 08:48:34'),
(7, 'explicabo', '120', 'explicabo', 3, '10', '2020-06-03 08:48:34', '2020-06-03 08:48:34'),
(8, 'aut', '444', 'aut', 16, '18', '2020-06-03 08:48:34', '2020-06-03 08:48:34'),
(9, 'sunt', '937', 'sunt', 12, '18', '2020-06-03 08:48:34', '2020-06-03 08:48:34'),
(10, 'molestiae', '213', 'molestiae', 19, '30', '2020-06-03 08:48:34', '2020-06-03 08:48:34'),
(11, 'necessitatibus', '166', 'necessitatibus', 4, '1', '2020-06-03 08:48:34', '2020-06-03 08:48:34'),
(12, 'voluptates', '977', 'voluptates', 10, '4', '2020-06-03 08:48:34', '2020-06-03 08:48:34'),
(13, 'pariatur', '497', 'pariatur', 11, '3', '2020-06-03 08:48:34', '2020-06-03 08:48:34'),
(14, 'quo', '695', 'quo', 6, '22', '2020-06-03 08:48:34', '2020-06-03 08:48:34'),
(15, 'rerum', '146', 'rerum', 18, '16', '2020-06-03 08:48:34', '2020-06-03 08:48:34'),
(16, 'veritatis', '685', 'veritatis', 19, '6', '2020-06-03 08:48:34', '2020-06-03 08:48:34'),
(17, 'qui', '840', 'qui', 16, '8', '2020-06-03 08:48:34', '2020-06-03 08:48:34'),
(18, 'perspiciatis', '368', 'perspiciatis', 11, '2', '2020-06-03 08:48:34', '2020-06-03 08:48:34'),
(19, 'et', '888', 'et', 10, '6', '2020-06-03 08:48:34', '2020-06-03 08:48:34'),
(20, 'aut', '227', 'aut', 12, '29', '2020-06-03 08:48:34', '2020-06-03 08:48:34');

-- --------------------------------------------------------

--
-- Table structure for table `transaksis`
--

CREATE TABLE `transaksis` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_tiket` int(10) UNSIGNED NOT NULL,
  `qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaksis`
--

INSERT INTO `transaksis` (`id`, `id_tiket`, `qty`, `status`, `created_at`, `updated_at`) VALUES
(1, 12, '6', 0, '2020-06-03 08:52:31', '2020-06-03 08:52:31'),
(2, 15, '10', 0, '2020-06-03 08:52:31', '2020-06-03 08:52:31'),
(3, 10, '27', 1, '2020-06-03 08:52:31', '2020-06-03 08:52:31'),
(4, 10, '12', 0, '2020-06-03 08:52:31', '2020-06-03 08:52:31'),
(5, 17, '15', 1, '2020-06-03 08:52:31', '2020-06-03 08:52:31'),
(6, 8, '5', 1, '2020-06-03 08:52:31', '2020-06-03 08:52:31'),
(7, 17, '14', 1, '2020-06-03 08:52:31', '2020-06-03 08:52:31'),
(8, 1, '20', 1, '2020-06-03 08:52:31', '2020-06-03 08:52:31'),
(9, 11, '22', 0, '2020-06-03 08:52:31', '2020-06-03 08:52:31'),
(10, 19, '27', 0, '2020-06-03 08:52:31', '2020-06-03 08:52:31'),
(11, 18, '30', 0, '2020-06-03 08:52:31', '2020-06-03 08:52:31'),
(12, 13, '26', 0, '2020-06-03 08:52:32', '2020-06-03 08:52:32'),
(13, 9, '28', 1, '2020-06-03 08:52:32', '2020-06-03 08:52:32'),
(14, 2, '11', 0, '2020-06-03 08:52:32', '2020-06-03 08:52:32'),
(15, 12, '3', 1, '2020-06-03 08:52:32', '2020-06-03 08:52:32'),
(16, 19, '16', 1, '2020-06-03 08:52:32', '2020-06-03 08:52:32'),
(17, 2, '7', 1, '2020-06-03 08:52:32', '2020-06-03 08:52:32'),
(18, 11, '30', 1, '2020-06-03 08:52:32', '2020-06-03 08:52:32'),
(19, 13, '20', 1, '2020-06-03 08:52:32', '2020-06-03 08:52:32'),
(20, 4, '25', 0, '2020-06-03 08:52:32', '2020-06-03 08:52:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Myra Bartoletti', 'ferry.queen@example.com', '2020-06-03 08:48:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7zfYydBMZR', '2020-06-03 08:48:31', '2020-06-03 08:48:31'),
(2, 'Prof. Keagan Lesch', 'ondricka.damian@example.net', '2020-06-03 08:48:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'J1XFxhyZk2', '2020-06-03 08:48:31', '2020-06-03 08:48:31'),
(3, 'Mr. Mohamed Bahringer DDS', 'alan88@example.com', '2020-06-03 08:48:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'R6qodeZvSC', '2020-06-03 08:48:31', '2020-06-03 08:48:31'),
(4, 'Brandon O\'Reilly Jr.', 'cornell.brown@example.com', '2020-06-03 08:48:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pfwjkHVqpt', '2020-06-03 08:48:31', '2020-06-03 08:48:31'),
(5, 'Dr. Dangelo Hackett', 'kassulke.ibrahim@example.net', '2020-06-03 08:48:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Zv9fs79Yyb', '2020-06-03 08:48:32', '2020-06-03 08:48:32'),
(6, 'Dr. Lemuel Lang Sr.', 'jspencer@example.org', '2020-06-03 08:48:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TvRtx4nnul', '2020-06-03 08:48:32', '2020-06-03 08:48:32'),
(7, 'Dr. Yasmin Klocko', 'zjohnston@example.com', '2020-06-03 08:48:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'USq9hAQMpA', '2020-06-03 08:48:32', '2020-06-03 08:48:32'),
(8, 'Breanne Bailey', 'johnston.tina@example.net', '2020-06-03 08:48:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KU24J2rUEM', '2020-06-03 08:48:32', '2020-06-03 08:48:32'),
(9, 'Lois Shields', 'stewart91@example.net', '2020-06-03 08:48:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'j1QjuVFOzo', '2020-06-03 08:48:32', '2020-06-03 08:48:32'),
(10, 'Ruthe Baumbach', 'jeramie16@example.net', '2020-06-03 08:48:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'J6zYg8iJCE', '2020-06-03 08:48:32', '2020-06-03 08:48:32'),
(11, 'Jovany Buckridge', 'mwilderman@example.org', '2020-06-03 08:48:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'w8jQebGA5s', '2020-06-03 08:48:32', '2020-06-03 08:48:32'),
(12, 'Zechariah Franecki', 'connelly.miracle@example.com', '2020-06-03 08:48:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rhY34QGBaJ', '2020-06-03 08:48:32', '2020-06-03 08:48:32'),
(13, 'Darrick Haley', 'zion.grimes@example.com', '2020-06-03 08:48:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3RdZN82nPD', '2020-06-03 08:48:32', '2020-06-03 08:48:32'),
(14, 'Trenton Barton', 'uschulist@example.org', '2020-06-03 08:48:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mhWadYi4oW', '2020-06-03 08:48:32', '2020-06-03 08:48:32'),
(15, 'Emanuel Collier', 'ole.mayer@example.com', '2020-06-03 08:48:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DfK6fWk4il', '2020-06-03 08:48:32', '2020-06-03 08:48:32'),
(16, 'Terrence Morissette Jr.', 'mueller.milo@example.org', '2020-06-03 08:48:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PXJ7svlbE6', '2020-06-03 08:48:32', '2020-06-03 08:48:32'),
(17, 'Dr. Jaylon Brekke', 'damien.moen@example.net', '2020-06-03 08:48:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6jDc72H51f', '2020-06-03 08:48:32', '2020-06-03 08:48:32'),
(18, 'Precious Hodkiewicz', 'jbernier@example.net', '2020-06-03 08:48:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VXp5EdGxbM', '2020-06-03 08:48:32', '2020-06-03 08:48:32'),
(19, 'Mr. Jasmin Dibbert', 'vfadel@example.com', '2020-06-03 08:48:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yCkgRMOvvJ', '2020-06-03 08:48:32', '2020-06-03 08:48:32'),
(20, 'Shaina King', 'kdietrich@example.net', '2020-06-03 08:48:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MJ3M0F4M7t', '2020-06-03 08:48:32', '2020-06-03 08:48:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categoris`
--
ALTER TABLE `categoris`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `tikets`
--
ALTER TABLE `tikets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tikets_id_kategori_foreign` (`id_kategori`);

--
-- Indexes for table `transaksis`
--
ALTER TABLE `transaksis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksis_id_tiket_foreign` (`id_tiket`);

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
-- AUTO_INCREMENT for table `categoris`
--
ALTER TABLE `categoris`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tikets`
--
ALTER TABLE `tikets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `transaksis`
--
ALTER TABLE `transaksis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tikets`
--
ALTER TABLE `tikets`
  ADD CONSTRAINT `tikets_id_kategori_foreign` FOREIGN KEY (`id_kategori`) REFERENCES `categoris` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transaksis`
--
ALTER TABLE `transaksis`
  ADD CONSTRAINT `transaksis_id_tiket_foreign` FOREIGN KEY (`id_tiket`) REFERENCES `tikets` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
