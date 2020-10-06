-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2020 at 12:57 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pop`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from` bigint(20) NOT NULL,
  `to` bigint(20) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `from`, `to`, `message`, `is_read`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'hi aya 3amla eh', 1, '2020-10-06 05:26:23', '2020-10-06 05:26:23'),
(2, 2, 1, 'hi huda alhamed llelah', 1, '2020-10-06 05:26:23', '2020-10-06 05:26:23'),
(3, 1, 2, 'fvghj', 1, '2020-10-06 04:11:58', '2020-10-06 04:11:58'),
(4, 1, 2, 'cvhjk', 1, '2020-10-06 04:12:27', '2020-10-06 04:12:27'),
(5, 1, 2, 'cvbhnjm', 1, '2020-10-06 04:13:38', '2020-10-06 04:13:38'),
(6, 1, 2, 'xcgh', 1, '2020-10-06 05:47:55', '2020-10-06 05:47:55'),
(7, 2, 1, 'zxc vh', 0, '2020-10-06 05:48:45', '2020-10-06 05:48:45'),
(8, 1, 2, 'cfvgbhnjm', 1, '2020-10-06 05:49:28', '2020-10-06 05:49:28'),
(9, 2, 1, 'xcvb', 1, '2020-10-06 05:49:52', '2020-10-06 05:49:52'),
(10, 2, 1, 'ghjmkl;', 1, '2020-10-06 05:58:56', '2020-10-06 05:58:56'),
(11, 1, 2, 'bhnjmk', 1, '2020-10-06 05:59:06', '2020-10-06 05:59:06'),
(12, 2, 1, 'erty', 1, '2020-10-06 05:59:20', '2020-10-06 05:59:20'),
(13, 1, 2, 'xxxx', 1, '2020-10-06 05:59:30', '2020-10-06 05:59:30'),
(14, 2, 1, 'dfghj', 1, '2020-10-06 06:01:41', '2020-10-06 06:01:41'),
(15, 1, 2, 'alert', 1, '2020-10-06 06:01:53', '2020-10-06 06:01:53'),
(16, 1, 2, 'kkkkkkkkk', 1, '2020-10-06 06:07:30', '2020-10-06 06:07:30'),
(17, 2, 1, 'alhamed llelah', 1, '2020-10-06 06:07:57', '2020-10-06 06:07:57'),
(18, 2, 1, 'rrrr', 1, '2020-10-06 06:17:05', '2020-10-06 06:17:05'),
(19, 1, 2, 'jj', 1, '2020-10-06 06:17:17', '2020-10-06 06:17:17'),
(20, 1, 2, 'tmaam', 1, '2020-10-06 06:22:16', '2020-10-06 06:22:16'),
(21, 1, 3, 'hi reham', 1, '2020-10-06 06:34:24', '2020-10-06 06:34:24'),
(22, 3, 1, 'me fine', 1, '2020-10-06 06:36:08', '2020-10-06 06:36:08'),
(23, 3, 2, 'i thanks you very mutch', 1, '2020-10-06 06:36:34', '2020-10-06 06:36:34'),
(24, 3, 1, 'hello huda', 1, '2020-10-06 06:43:47', '2020-10-06 06:43:47'),
(25, 1, 3, 'tt', 1, '2020-10-06 06:44:33', '0000-00-00 00:00:00'),
(26, 1, 4, 'hi zhra', 0, '2020-10-06 06:49:58', '2020-10-06 06:49:58'),
(27, 4, 1, 'hi huda 3amla eh', 0, '2020-10-06 06:50:49', '2020-10-06 06:50:49'),
(28, 1, 2, 'hi aaaay', 0, '2020-10-06 07:15:22', '2020-10-06 07:15:22'),
(29, 2, 1, 'yuyu', 0, '2020-10-06 07:17:46', '2020-10-06 07:17:46'),
(30, 1, 2, 'trtrt', 0, '2020-10-06 07:18:06', '2020-10-06 07:18:06'),
(31, 1, 3, 'regsdfg', 0, '2020-10-06 07:41:52', '2020-10-06 07:41:52'),
(32, 3, 1, 'hhhhh', 0, '2020-10-06 07:42:24', '2020-10-06 07:42:24'),
(33, 1, 3, 'uuuuu', 0, '2020-10-06 07:43:22', '2020-10-06 07:43:22'),
(34, 1, 2, 'new message', 0, '2020-10-06 08:00:06', '2020-10-06 08:00:06'),
(35, 3, 1, 'mmmm', 0, '2020-10-06 08:00:35', '2020-10-06 08:00:35'),
(36, 3, 2, 'ytyu', 0, '2020-10-06 08:01:38', '2020-10-06 08:01:38'),
(37, 1, 2, 'fghjkl', 0, '2020-10-06 08:03:25', '2020-10-06 08:03:25'),
(38, 1, 4, 'tmam', 0, '2020-10-06 08:04:28', '2020-10-06 08:04:28'),
(39, 1, 2, 'hgfdfghjk', 0, '2020-10-06 08:06:38', '2020-10-06 08:06:38'),
(40, 1, 2, 'oooooo', 0, '2020-10-06 08:06:52', '2020-10-06 08:06:52'),
(41, 1, 3, 'wew', 0, '2020-10-06 10:12:39', '2020-10-06 10:12:39'),
(42, 1, 2, 'uiij', 0, '2020-10-06 10:16:08', '2020-10-06 10:16:08'),
(43, 2, 1, 'ok', 0, '2020-10-06 10:19:27', '2020-10-06 10:19:27'),
(44, 1, 4, 'heu', 0, '2020-10-06 10:25:22', '2020-10-06 10:25:22');

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
(3, '2020_10_06_035412_create_messages_table', 2);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `image`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'huda', 'huda@gmail.com', 'huda.PNG', NULL, '$2y$10$PHqyvdHiJ6skxgerbHTd7uY4kwF13VeKGXSYuUeAQRDDUfxNGJBsq', NULL, '2020-10-05 23:22:00', '2020-10-05 23:22:00'),
(2, 'aya', 'aya@gmail.com', 'aya.jpg', NULL, '$2y$10$xiAmnf707p.L2eb5QFGE6uHosNxwNVT0UK0PzeH40k87QEKrowY8i', NULL, '2020-10-06 04:00:24', '2020-10-06 04:00:24'),
(3, 'reham', 'reham@gmail.com', 'reham.jpeg', NULL, '$2y$10$xiAmnf707p.L2eb5QFGE6uHosNxwNVT0UK0PzeH40k87QEKrowY8i', NULL, '2020-10-06 04:00:24', '2020-10-06 04:00:24'),
(4, 'Zahraa Mohammed', 'zahraa@gmail.com', 'zahraa.jpg', NULL, '$2y$10$EeXNKLwyVsnabYjVqBAj7uUBp/fXwIbjLzhJNIf5cg05x3bdA7pOK', NULL, '2020-10-06 08:46:16', '2020-10-06 08:46:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
