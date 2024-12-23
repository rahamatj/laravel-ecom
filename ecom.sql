-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2024 at 12:22 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Women', '2024-12-22 14:51:00', '2024-12-22 14:51:00'),
(2, 'Men', '2024-12-22 14:51:00', '2024-12-22 14:51:00'),
(3, 'Kids', '2024-12-22 14:51:00', '2024-12-22 14:51:00'),
(4, 'Accessories', '2024-12-22 14:51:00', '2024-12-22 14:51:00');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_10_23_111033_create_categories_table', 1),
(5, '2024_10_23_112625_create_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `description`, `price`, `category_id`, `is_featured`, `created_at`, `updated_at`) VALUES
(1, 'quas', 'images/item-01.jpg', 'Est similique dolore fugit. Quo quis maiores ipsum qui perspiciatis. Sint ratione et ad quod. Tenetur amet libero aspernatur exercitationem pariatur quisquam.', 30, 1, 0, '2024-12-22 14:51:00', '2024-12-22 14:51:00'),
(2, 'accusantium', 'images/item-01.jpg', 'Autem velit voluptas pariatur. Et rerum quis non laborum qui. Aperiam provident ex aspernatur et.', 36, 1, 0, '2024-12-22 14:51:00', '2024-12-22 14:51:00'),
(3, 'autem', 'images/item-01.jpg', 'Ea sint doloribus ut pariatur quod. Dicta unde cumque velit qui blanditiis doloribus hic dolor. Perferendis possimus maxime soluta aut eos ullam harum id.', 35, 1, 1, '2024-12-22 14:51:00', '2024-12-22 14:51:00'),
(4, 'similique', 'images/item-01.jpg', 'Est iusto dolorem ratione iste possimus. Quaerat ea quo porro voluptate qui. Quas nulla dicta quae atque quo. Odio eius ratione reiciendis dolores est aut est.', 4, 1, 1, '2024-12-22 14:51:00', '2024-12-22 14:51:00'),
(5, 'vitae', 'images/item-01.jpg', 'Ducimus voluptas dolor non doloribus et repellendus ea. Tempora quisquam ea aliquam et qui in. Alias aut aliquam rerum maiores eos soluta qui.', 42, 1, 1, '2024-12-22 14:51:00', '2024-12-22 14:51:00'),
(6, 'quaerat', 'images/item-01.jpg', 'Aliquid et doloremque id totam in aut blanditiis. Quibusdam odio laborum repellat id deleniti eligendi dolorem.', 41, 1, 0, '2024-12-22 14:51:00', '2024-12-22 14:51:00'),
(7, 'eos', 'images/item-01.jpg', 'Est ipsum enim ipsa beatae et. Qui voluptatum repellendus enim voluptatem est labore. Hic et officiis qui sit.', 37, 1, 0, '2024-12-22 14:51:00', '2024-12-22 14:51:00'),
(8, 'eos', 'images/item-01.jpg', 'Nihil modi corporis error minima quo ea nihil. Ut perferendis possimus dicta. Sunt corrupti dolorum voluptas molestias qui sunt sunt. Beatae quos tempore et at nisi.', 90, 1, 1, '2024-12-22 14:51:00', '2024-12-22 14:51:00'),
(9, 'modi', 'images/item-01.jpg', 'Natus sapiente totam facere id ut. Hic nobis aut corrupti doloribus aut ipsum. Ducimus sunt qui consequatur.', 35, 1, 1, '2024-12-22 14:51:00', '2024-12-22 14:51:00'),
(10, 'dolorem', 'images/item-01.jpg', 'Nemo explicabo sit hic aut repellat ut iure ipsam. Reiciendis tenetur asperiores amet nihil ipsam magnam. Quos provident eos illo nihil. Quasi a repellat minus provident nihil et.', 87, 1, 0, '2024-12-22 14:51:00', '2024-12-22 14:51:00'),
(11, 'aut', 'images/item-02.jpg', 'Est voluptas iusto consequatur saepe vero. Officiis velit id reprehenderit id placeat vel.', 12, 2, 1, '2024-12-22 14:51:00', '2024-12-22 14:51:00'),
(12, 'tempore', 'images/item-02.jpg', 'Voluptatem ipsam id facere ut accusantium porro. Excepturi expedita molestiae ut omnis et. Tenetur aut ab amet et earum.', 61, 2, 1, '2024-12-22 14:51:00', '2024-12-22 14:51:00'),
(13, 'maxime', 'images/item-02.jpg', 'Odit pariatur velit molestiae. Perspiciatis est voluptatem aspernatur quis omnis est. Repellendus fugiat qui quisquam voluptates voluptas quod saepe.', 83, 2, 1, '2024-12-22 14:51:00', '2024-12-22 14:51:00'),
(14, 'sint', 'images/item-02.jpg', 'Beatae rerum tenetur esse debitis. Ut aut corporis autem aut perferendis. Cum praesentium doloremque odit error.', 68, 2, 1, '2024-12-22 14:51:00', '2024-12-22 14:51:00'),
(15, 'velit', 'images/item-02.jpg', 'Repellendus ut quas natus et provident velit omnis. Eum odio rerum dignissimos repellendus quis esse quod. Asperiores consectetur qui laboriosam aperiam expedita reiciendis.', 92, 2, 1, '2024-12-22 14:51:00', '2024-12-22 14:51:00'),
(16, 'qui', 'images/item-02.jpg', 'Velit omnis voluptas et consequatur eaque amet autem. Ab magnam aut ipsa qui et. Pariatur harum natus voluptatem et reprehenderit voluptate.', 53, 2, 1, '2024-12-22 14:51:00', '2024-12-22 14:51:00'),
(17, 'harum', 'images/item-02.jpg', 'Vitae placeat aut sed facilis. Facilis quaerat qui quod unde natus. Occaecati dicta non aut laborum omnis assumenda atque. Nulla quo modi cum sed.', 36, 2, 1, '2024-12-22 14:51:00', '2024-12-22 14:51:00'),
(18, 'quia', 'images/item-02.jpg', 'Est repellendus voluptas recusandae voluptas eligendi aut. Ratione ut distinctio sed ullam autem. Nisi saepe quia fuga natus. Vel non corrupti est illo quae suscipit aliquam ipsum.', 36, 2, 1, '2024-12-22 14:51:00', '2024-12-22 14:51:00'),
(19, 'unde', 'images/item-02.jpg', 'Nobis voluptatem tenetur quos sed. Odio blanditiis et dolorem aut. Repudiandae excepturi pariatur facere consequatur.', 57, 2, 1, '2024-12-22 14:51:00', '2024-12-22 14:51:00'),
(20, 'itaque', 'images/item-02.jpg', 'Rerum adipisci nihil reprehenderit eligendi amet nihil. Dignissimos qui provident aut quo. Tempore fugiat omnis omnis sed nesciunt.', 25, 2, 1, '2024-12-22 14:51:00', '2024-12-22 14:51:00'),
(21, 'excepturi', 'images/item-03.jpg', 'Aliquid sunt eum ut ab pariatur. Repellendus et ab dolorem dolorem sed expedita iste. Perspiciatis quis in maxime eos laborum voluptatem. Ut et quas iure.', 72, 3, 1, '2024-12-22 14:51:00', '2024-12-22 14:51:00'),
(22, 'architecto', 'images/item-03.jpg', 'Architecto assumenda qui error est possimus quia. Voluptatum sint ab rem doloribus sed. Dolore voluptatum iste velit sit iste esse reiciendis inventore.', 57, 3, 1, '2024-12-22 14:51:00', '2024-12-22 14:51:00'),
(23, 'officiis', 'images/item-03.jpg', 'Hic voluptatum neque consectetur quia. Amet autem ratione id dolores corrupti ea. Animi et nihil at et eum. Nesciunt sed autem eum sit perferendis. Et officiis delectus minima sit ea rerum odit.', 27, 3, 1, '2024-12-22 14:51:00', '2024-12-22 14:51:00'),
(24, 'ratione', 'images/item-03.jpg', 'Accusantium molestiae fugit voluptate et labore molestias. Voluptatem explicabo soluta sit quaerat veritatis distinctio delectus. Hic consectetur vitae suscipit sed aspernatur.', 68, 3, 1, '2024-12-22 14:51:00', '2024-12-22 14:51:00'),
(25, 'totam', 'images/item-03.jpg', 'Similique voluptatum voluptatum qui voluptatum non. Ea sit dolor labore voluptas dolorem a. Corporis quisquam facere quos repudiandae sit cum ex. Omnis id iure et.', 85, 3, 1, '2024-12-22 14:51:00', '2024-12-22 14:51:00'),
(26, 'quibusdam', 'images/item-03.jpg', 'Et quidem temporibus cumque est mollitia. In ab qui ipsum iste provident soluta quia.', 60, 3, 1, '2024-12-22 14:51:00', '2024-12-22 14:51:00'),
(27, 'dolorem', 'images/item-03.jpg', 'Provident et cumque debitis ut laborum consequatur. Qui recusandae ut quo tenetur. Ut officia natus nobis repudiandae.', 14, 3, 1, '2024-12-22 14:51:00', '2024-12-22 14:51:00'),
(28, 'est', 'images/item-03.jpg', 'Molestias omnis voluptas molestiae qui. Ad amet nulla id sit non ut. Modi aut tenetur commodi laborum porro. Incidunt porro et sint molestiae non et tenetur. Suscipit quidem est eos consequatur.', 37, 3, 1, '2024-12-22 14:51:00', '2024-12-22 14:51:00'),
(29, 'porro', 'images/item-03.jpg', 'Esse officia voluptas praesentium quis. Et ratione repellendus nihil non illo molestias sint.', 54, 3, 1, '2024-12-22 14:51:00', '2024-12-22 14:51:00'),
(30, 'libero', 'images/item-03.jpg', 'Maxime sit quam qui magnam harum repellendus ex. Magni provident officia debitis laboriosam. Est autem ratione temporibus voluptas aut nesciunt et.', 35, 3, 1, '2024-12-22 14:51:00', '2024-12-22 14:51:00'),
(31, 'et', 'images/item-01.jpg', 'Voluptatem est et nam quam est libero. Atque nemo quia dolore. Culpa odio vel necessitatibus et. Quaerat hic itaque repudiandae.', 27, 4, 1, '2024-12-22 14:51:00', '2024-12-22 14:51:00'),
(32, 'ratione', 'images/item-01.jpg', 'Saepe tempora vero eius optio sit. Et error cupiditate perferendis hic illo dolorum. Magni provident nihil magnam eum. Provident ea voluptate maxime maxime sint est consequatur pariatur.', 76, 4, 0, '2024-12-22 14:51:00', '2024-12-22 14:51:00'),
(33, 'molestiae', 'images/item-01.jpg', 'Voluptatem et dolorem consectetur debitis iusto. Tempora qui dolore voluptatem voluptatibus quo consequatur. Commodi dolore doloribus ullam esse quas. Illo consequatur laboriosam aut blanditiis.', 79, 4, 1, '2024-12-22 14:51:00', '2024-12-22 14:51:00'),
(34, 'aut', 'images/item-01.jpg', 'Molestiae error sint dolore enim laborum fugit aut. Corporis ipsum ea est maxime vero eum autem. Aperiam itaque cumque molestiae quos. Sit natus fuga at voluptatum.', 71, 4, 1, '2024-12-22 14:51:00', '2024-12-22 14:51:00'),
(35, 'maxime', 'images/item-01.jpg', 'Eos facilis ipsam fuga ex architecto repellendus. Ullam corporis magni odio qui.', 7, 4, 0, '2024-12-22 14:51:00', '2024-12-22 14:51:00'),
(36, 'et', 'images/item-01.jpg', 'Sit perferendis eos doloremque quam non rerum laudantium. Itaque vero corporis sit dolor facere aut.', 44, 4, 1, '2024-12-22 14:51:00', '2024-12-22 14:51:00'),
(37, 'magnam', 'images/item-01.jpg', 'Atque soluta eaque at ut est officiis. Impedit rerum rerum nemo in. Voluptate sit et sapiente. Maxime sed debitis sit inventore molestias voluptas sunt.', 85, 4, 0, '2024-12-22 14:51:00', '2024-12-22 14:51:00'),
(38, 'sint', 'images/item-01.jpg', 'Aperiam ea dicta quisquam et. Et quos laborum doloremque est eaque vitae. Nesciunt nemo eum possimus optio.', 30, 4, 1, '2024-12-22 14:51:00', '2024-12-22 14:51:00'),
(39, 'perferendis', 'images/item-01.jpg', 'Blanditiis tempore et pariatur eum consequuntur facere. Hic at similique molestiae dolor ex ad. Rem veniam adipisci sunt minima nam corrupti soluta.', 29, 4, 0, '2024-12-22 14:51:00', '2024-12-22 14:51:00'),
(40, 'est', 'images/item-01.jpg', 'Consequuntur rerum consectetur voluptatem. Magni et veniam dignissimos dolore voluptatem in omnis.', 10, 4, 0, '2024-12-22 14:51:00', '2024-12-22 14:51:00');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('FRIHpyBFP6Lr7wtYjUGxWUAOqPRMPVF8kylahB4p', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZ2RWcnpYMFpWSlhUUlROUFBIOTdOdlhFdTFBMVA3UFRwdVR3TjVoVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9zaG9wIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo0OiJjYXJ0IjthOjE6e2k6MTthOjY6e3M6MjoiaWQiO2k6MTtzOjQ6Im5hbWUiO3M6NDoicXVhcyI7czo1OiJpbWFnZSI7czoxODoiaW1hZ2VzL2l0ZW0tMDEuanBnIjtzOjU6InByaWNlIjtpOjMwO3M6ODoicXVhbnRpdHkiO2k6MTtzOjk6Iml0ZW1Ub3RhbCI7aTozMDt9fX0=', 1734908445);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@email.com', '2024-12-22 14:51:00', '$2y$12$NSP5cCHWaiWkU6oulBwmdeoqrKtzRQTbQ8QU8r3vzbJYNrPja.ObS', 'xzbfukmzF2', '2024-12-22 14:51:01', '2024-12-22 14:51:01');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
