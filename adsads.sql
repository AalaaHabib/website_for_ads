-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 27 يوليو 2020 الساعة 21:45
-- إصدار الخادم: 10.4.13-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ads`
--

-- --------------------------------------------------------

--
-- بنية الجدول `ads`
--

CREATE TABLE `ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` double NOT NULL,
  `feat` tinyint(1) NOT NULL DEFAULT 0,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `ads`
--

INSERT INTO `ads` (`id`, `title`, `desc`, `image`, `duration`, `feat`, `category`, `created_at`, `updated_at`) VALUES
(1, 'Red Luxury Car', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Error repellat architecto maiores vero, quasi dolor, accusantium autem aliquam, ullam sequi saepe illum eaque aperiam eius amet! Necessitatibus nam sapiente obcaecati sit, fugit omnis non sunt distinctio aliquid, quibusdam excepturi hic?\r\n\r\nNisi, error. Molestias, quidem eaque sequi aut perspiciatis assumenda obcaecati ut quod eius reprehenderit. Iure rem numquam totam odio dignissimos aspernatur soluta. Corporis suscipit modi iste consequatur, repellat nihil omnis molestias optio. Dolorem ullam eius officia, eum ratione dolorum assumenda.\r\n\r\nSoluta corporis blanditiis cupiditate debitis eveniet, temporibus ut cumque sint repudiandae quidem tenetur commodi id, quam. Sapiente corrupti magnam quis nulla, asperiores neque tenetur labore aperiam provident nostrum sequi delectus voluptatem fuga officiis repellat, ratione aspernatur eius repellendus modi reprehenderit.\r\n\r\nSapiente molestias voluptate cupiditate blanditiis quasi qui aperiam accusamus aspernatur ipsam velit nihil quaerat voluptatum soluta laboriosam ipsum veritatis at reiciendis quod voluptates, saepe harum dignissimos placeat dolorum aliquid! Quod quasi praesentium optio ratione non et sit quos excepturi cum?', '1.jpg', 3000, 0, 'Cars & Vehicles', '2020-07-15 06:50:42', NULL),
(2, 'House with Swimming Pool', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Error repellat architecto maiores vero, quasi dolor, accusantium autem aliquam, ullam sequi saepe illum eaque aperiam eius amet! Necessitatibus nam sapiente obcaecati sit, fugit omnis non sunt distinctio aliquid, quibusdam excepturi hic?\r\n\r\nNisi, error. Molestias, quidem eaque sequi aut perspiciatis assumenda obcaecati ut quod eius reprehenderit. Iure rem numquam totam odio dignissimos aspernatur soluta. Corporis suscipit modi iste consequatur, repellat nihil omnis molestias optio. Dolorem ullam eius officia, eum ratione dolorum assumenda.\r\n\r\nSoluta corporis blanditiis cupiditate debitis eveniet, temporibus ut cumque sint repudiandae quidem tenetur commodi id, quam. Sapiente corrupti magnam quis nulla, asperiores neque tenetur labore aperiam provident nostrum sequi delectus voluptatem fuga officiis repellat, ratione aspernatur eius repellendus modi reprehenderit.\r\n\r\nSapiente molestias voluptate cupiditate blanditiis quasi qui aperiam accusamus aspernatur ipsam velit nihil quaerat voluptatum soluta laboriosam ipsum veritatis at reiciendis quod voluptates, saepe harum dignissimos placeat dolorum aliquid! Quod quasi praesentium optio ratione non et sit quos excepturi cum?', '2.jpg', 2000, 0, 'Real Estate', NULL, NULL),
(3, 'Wooden Chair & Table', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Error repellat architecto maiores vero, quasi dolor, accusantium autem aliquam, ullam sequi saepe illum eaque aperiam eius amet! Necessitatibus nam sapiente obcaecati sit, fugit omnis non sunt distinctio aliquid, quibusdam excepturi hic?\r\n\r\nNisi, error. Molestias, quidem eaque sequi aut perspiciatis assumenda obcaecati ut quod eius reprehenderit. Iure rem numquam totam odio dignissimos aspernatur soluta. Corporis suscipit modi iste consequatur, repellat nihil omnis molestias optio. Dolorem ullam eius officia, eum ratione dolorum assumenda.\r\n\r\nSoluta corporis blanditiis cupiditate debitis eveniet, temporibus ut cumque sint repudiandae quidem tenetur commodi id, quam. Sapiente corrupti magnam quis nulla, asperiores neque tenetur labore aperiam provident nostrum sequi delectus voluptatem fuga officiis repellat, ratione aspernatur eius repellendus modi reprehenderit.\r\n\r\nSapiente molestias voluptate cupiditate blanditiis quasi qui aperiam accusamus aspernatur ipsam velit nihil quaerat voluptatum soluta laboriosam ipsum veritatis at reiciendis quod voluptates, saepe harum dignissimos placeat dolorum aliquid! Quod quasi praesentium optio ratione non et sit quos excepturi cum?', '3.jpg', 4000, 0, 'Furniture', NULL, NULL),
(6, 'test', 'test test test test', 'j1UPP3tyDKcE3VxGvNFbC2Hu4JBa4Ht5Cn3ZFwE2.jpeg', 1000, 0, 'new category', '2020-07-27 14:32:28', '2020-07-27 14:32:28'),
(7, 'netflix', 'you can watch films without ads', 'ylEJ7vHV9DzPvmC5rN7q2SWfLp9LcHBadG00G4sI.jpeg', 2500, 0, 'cinema', '2020-07-27 14:34:12', '2020-07-27 14:34:12');

-- --------------------------------------------------------

--
-- بنية الجدول `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_07_27_064645_create_ads_table', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
