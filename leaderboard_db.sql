-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 26, 2024 at 07:08 PM
-- Server version: 8.0.39-0ubuntu0.22.04.1
-- PHP Version: 8.1.2-1ubuntu2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `leaderboard_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `points` int NOT NULL DEFAULT '20',
  `activity_date` timestamp NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `user_id`, `points`, `activity_date`, `created_at`, `updated_at`) VALUES
(1, 11, 20, '2024-04-06 06:03:37', '2024-10-26 06:03:37', '2024-10-26 06:03:37'),
(2, 11, 20, '2024-07-06 06:03:37', '2024-10-26 06:03:37', '2024-10-26 06:03:37'),
(3, 11, 20, '2024-04-21 06:03:37', '2024-10-26 06:03:37', '2024-10-26 06:03:37'),
(4, 11, 20, '2024-02-26 06:03:37', '2024-10-26 06:03:37', '2024-10-26 06:03:37'),
(5, 11, 20, '2024-09-16 06:03:37', '2024-10-26 06:03:37', '2024-10-26 06:03:37'),
(6, 11, 20, '2024-10-21 06:03:37', '2024-10-26 06:03:37', '2024-10-26 06:03:37'),
(7, 11, 20, '2024-10-01 06:03:37', '2024-10-26 06:03:37', '2024-10-26 06:03:37'),
(8, 11, 20, '2023-11-28 06:03:37', '2024-10-26 06:03:37', '2024-10-26 06:03:37'),
(9, 11, 20, '2024-03-19 06:03:37', '2024-10-26 06:03:37', '2024-10-26 06:03:37'),
(10, 11, 20, '2024-02-28 06:03:37', '2024-10-26 06:03:37', '2024-10-26 06:03:37'),
(11, 12, 20, '2024-05-06 06:03:37', '2024-10-26 06:03:37', '2024-10-26 06:03:37'),
(12, 12, 20, '2024-06-01 06:03:37', '2024-10-26 06:03:37', '2024-10-26 06:03:37'),
(13, 12, 20, '2023-12-03 06:03:37', '2024-10-26 06:03:37', '2024-10-26 06:03:37'),
(14, 12, 20, '2024-09-27 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(15, 12, 20, '2023-12-01 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(16, 13, 20, '2024-10-11 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(17, 13, 20, '2024-06-22 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(18, 13, 20, '2024-02-20 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(19, 13, 20, '2024-09-16 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(20, 13, 20, '2024-07-26 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(21, 13, 20, '2024-09-27 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(22, 13, 20, '2024-09-13 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(23, 13, 20, '2024-10-17 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(24, 13, 20, '2023-11-19 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(25, 13, 20, '2024-08-08 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(26, 14, 20, '2024-02-22 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(27, 14, 20, '2024-06-13 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(28, 14, 20, '2024-07-22 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(29, 14, 20, '2024-08-29 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(30, 14, 20, '2024-08-23 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(31, 14, 20, '2024-04-03 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(32, 15, 20, '2024-07-12 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(33, 15, 20, '2023-11-12 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(34, 15, 20, '2024-02-24 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(35, 15, 20, '2024-05-08 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(36, 15, 20, '2024-05-02 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(37, 15, 20, '2024-02-15 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(38, 15, 20, '2024-06-22 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(39, 15, 20, '2023-12-05 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(40, 16, 20, '2024-09-22 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(41, 16, 20, '2024-04-30 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(42, 16, 20, '2024-05-07 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(43, 16, 20, '2024-10-25 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(44, 16, 20, '2024-03-13 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(45, 16, 20, '2024-03-02 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(46, 16, 20, '2024-10-06 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(47, 16, 20, '2024-06-17 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(48, 16, 20, '2024-03-15 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(49, 17, 20, '2024-07-14 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(50, 17, 20, '2024-10-21 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(51, 17, 20, '2024-02-25 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(52, 17, 20, '2023-10-28 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(53, 17, 20, '2024-03-01 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(54, 18, 20, '2024-01-19 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(55, 18, 20, '2024-05-12 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(56, 18, 20, '2024-07-10 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(57, 18, 20, '2024-09-12 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(58, 18, 20, '2024-09-07 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(59, 18, 20, '2024-05-21 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(60, 18, 20, '2024-07-30 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(61, 18, 20, '2023-12-02 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(62, 18, 20, '2024-09-06 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(63, 18, 20, '2024-05-28 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(64, 18, 20, '2024-04-10 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(65, 19, 20, '2024-01-27 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(66, 19, 20, '2024-07-21 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(67, 19, 20, '2023-12-23 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(68, 19, 20, '2024-09-22 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(69, 19, 20, '2024-08-02 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(70, 19, 20, '2024-08-28 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(71, 19, 20, '2024-03-23 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(72, 20, 20, '2024-04-06 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(73, 20, 20, '2023-11-09 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(74, 20, 20, '2024-03-11 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(75, 20, 20, '2024-04-15 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(76, 20, 20, '2024-05-18 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(77, 20, 20, '2024-10-12 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(78, 20, 20, '2023-10-28 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(79, 20, 20, '2024-04-03 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(80, 20, 20, '2024-07-11 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(81, 20, 20, '2024-01-10 06:03:38', '2024-10-26 06:03:38', '2024-10-26 06:03:38'),
(82, 1, 20, '2024-10-26 12:22:18', NULL, NULL),
(83, 1, 20, '2024-10-26 04:22:18', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_10_26_112359_activities', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_points` int NOT NULL DEFAULT '0',
  `rank` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `total_points`, `rank`, `created_at`, `updated_at`) VALUES
(1, 'Fritz Little Sr.', 40, 10, '2024-10-26 06:03:21', '2024-10-26 08:07:54'),
(2, 'Khalid Dach', 0, 9, '2024-10-26 06:03:21', '2024-10-26 06:52:54'),
(3, 'Kiana Moore', 0, 9, '2024-10-26 06:03:21', '2024-10-26 06:52:54'),
(4, 'Jamey Sanford DDS', 0, 9, '2024-10-26 06:03:21', '2024-10-26 06:52:54'),
(5, 'Micheal Blick', 0, 9, '2024-10-26 06:03:21', '2024-10-26 06:52:54'),
(6, 'Jedidiah Tillman', 0, 9, '2024-10-26 06:03:21', '2024-10-26 06:52:54'),
(7, 'Adalberto Jerde', 0, 9, '2024-10-26 06:03:21', '2024-10-26 06:52:54'),
(8, 'Claudie Lueilwitz', 0, 9, '2024-10-26 06:03:21', '2024-10-26 06:52:54'),
(9, 'Stephanie Reichel', 0, 9, '2024-10-26 06:03:21', '2024-10-26 06:52:54'),
(10, 'Nikolas Pollich', 0, 9, '2024-10-26 06:03:21', '2024-10-26 06:52:54'),
(11, 'Ariane Swaniawski', 200, 1, '2024-10-26 06:03:37', '2024-10-26 08:07:54'),
(12, 'Dr. Nikko Ruecker DVM', 100, 2, '2024-10-26 06:03:37', '2024-10-26 08:07:54'),
(13, 'Dr. Giovani Nader', 200, 3, '2024-10-26 06:03:37', '2024-10-26 08:07:54'),
(14, 'Chelsea Zemlak', 120, 4, '2024-10-26 06:03:37', '2024-10-26 08:07:54'),
(15, 'Imogene Veum PhD', 160, 4, '2024-10-26 06:03:37', '2024-10-26 08:07:54'),
(16, 'Matilde Hoeger', 180, 5, '2024-10-26 06:03:37', '2024-10-26 08:07:54'),
(17, 'Cristian Stokes', 100, 6, '2024-10-26 06:03:37', '2024-10-26 08:07:54'),
(18, 'Maddison Witting', 220, 7, '2024-10-26 06:03:37', '2024-10-26 08:07:54'),
(19, 'Rosella Yundt', 140, 8, '2024-10-26 06:03:37', '2024-10-26 08:07:54'),
(20, 'Queen Larson', 200, 9, '2024-10-26 06:03:37', '2024-10-26 08:07:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activities_user_id_foreign` (`user_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activities`
--
ALTER TABLE `activities`
  ADD CONSTRAINT `activities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
