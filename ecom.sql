-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2025 at 08:51 AM
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
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart_items`
--

INSERT INTO `cart_items` (`id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 4, 10, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(2, 9, 7, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(3, 2, 72, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(4, 3, 42, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(5, 9, 72, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(6, 9, 58, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(7, 2, 83, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(8, 3, 52, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(9, 7, 71, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(10, 3, 13, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(11, 8, 80, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(12, 8, 91, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(13, 4, 37, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(14, 6, 80, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(15, 10, 77, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(16, 10, 12, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(17, 6, 79, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(18, 6, 91, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(19, 9, 66, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(20, 7, 76, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(21, 4, 28, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(22, 5, 99, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(23, 9, 76, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(24, 4, 71, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(25, 8, 44, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(26, 10, 33, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(27, 10, 90, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(28, 8, 47, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(29, 5, 19, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(30, 1, 41, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(31, 9, 67, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(32, 8, 57, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(33, 4, 37, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(34, 3, 14, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(35, 6, 69, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(36, 7, 69, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(37, 2, 100, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(38, 1, 24, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(39, 3, 30, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(40, 4, 7, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(41, 5, 2, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(42, 10, 72, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(43, 2, 78, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(44, 4, 82, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(45, 1, 72, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(46, 9, 28, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(47, 2, 83, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(48, 1, 76, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(49, 6, 1, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(50, 1, 64, '2025-01-20 01:14:39', '2025-01-20 01:14:39');

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
(1, 'Women', '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(2, 'Men', '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(3, 'Kids', '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(4, 'Accessories', '2025-01-20 01:14:39', '2025-01-20 01:14:39');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Shyann Hermiston', 'reid.cremin@example.net', '+1-737-288-3716', '4818 Deckow Trace\nEast Caseytown, NE 74316', '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(2, 'Dr. Eliane Wilderman', 'sbernhard@example.com', '+1-563-618-4831', '4480 Wolf Plains Apt. 834\nJanybury, TX 43690-1824', '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(3, 'Garland Swift', 'kuhn.tony@example.org', '231-691-8689', '2642 Haag Camp Apt. 021\nNorth Shayneland, VT 51546-6911', '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(4, 'Dr. Patrick Moore', 'torphy.gilberto@example.net', '+1-651-379-0061', '417 Gillian Inlet\nGorczanychester, TX 44362', '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(5, 'Nikolas Christiansen', 'osenger@example.org', '458-463-6525', '9791 Schneider Roads\nSouth Annette, WA 86502-5594', '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(6, 'Trevion Jaskolski', 'marshall96@example.net', '(925) 785-2924', '5854 Florence Points\nSouth Sterling, NV 49811-4933', '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(7, 'Abe Dibbert', 'garnett.okeefe@example.net', '864.761.5395', '1900 Adams Canyon Apt. 614\nNorth Aleen, AR 16765', '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(8, 'Jamel Larkin', 'wjakubowski@example.org', '+17856215079', '645 Charlie Harbors Apt. 245\nKautzershire, CA 33671', '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(9, 'Guillermo Roob I', 'rvandervort@example.com', '(404) 513-0165', '349 Herman Squares\nJaskolskibury, KY 78900', '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(10, 'Dr. Buster Collins', 'ofranecki@example.org', '(760) 579-9173', '29751 Tia Row Suite 089\nFaheyside, NV 86493-5035', '2025-01-20 01:14:39', '2025-01-20 01:14:39');

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
(5, '2024_10_23_112625_create_products_table', 1),
(6, '2024_12_27_221503_create_order_items_table', 1),
(7, '2024_12_29_203944_create_orders_table', 1),
(8, '2024_12_29_204130_create_customers_table', 1),
(9, '2025_01_20_051338_create_cart_items_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cart_item_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `cart_item_id`, `customer_id`, `created_at`, `updated_at`) VALUES
(1, 64, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(2, 64, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(3, 9, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(4, 63, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(5, 28, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(6, 39, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(7, 44, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(8, 65, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(9, 74, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(10, 93, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(11, 49, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(12, 67, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(13, 92, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(14, 29, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(15, 11, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(16, 59, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(17, 16, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(18, 56, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(19, 86, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(20, 90, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(21, 58, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(22, 72, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(23, 61, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(24, 89, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(25, 7, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(26, 48, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(27, 91, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(28, 44, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(29, 85, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(30, 87, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(31, 43, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(32, 62, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(33, 57, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(34, 51, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(35, 82, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(36, 87, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(37, 70, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(38, 48, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(39, 60, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(40, 1, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(41, 96, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(42, 98, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(43, 37, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(44, 61, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(45, 32, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(46, 22, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(47, 62, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(48, 32, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(49, 95, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(50, 86, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(51, 13, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(52, 73, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(53, 45, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(54, 20, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(55, 49, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(56, 71, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(57, 6, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(58, 31, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(59, 43, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(60, 11, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(61, 87, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(62, 92, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(63, 98, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(64, 78, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(65, 35, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(66, 40, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(67, 59, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(68, 63, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(69, 54, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(70, 19, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(71, 86, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(72, 85, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(73, 4, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(74, 6, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(75, 7, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(76, 24, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(77, 84, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(78, 82, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(79, 34, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(80, 37, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(81, 93, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(82, 43, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(83, 13, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(84, 2, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(85, 83, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(86, 84, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(87, 11, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(88, 35, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(89, 55, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(90, 6, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(91, 63, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(92, 10, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(93, 34, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(94, 38, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(95, 41, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(96, 29, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(97, 98, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(98, 52, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(99, 15, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(100, 51, 6, '2025-01-20 01:14:39', '2025-01-20 01:14:39');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'aspernatur', 'images/item-01.jpg', 'Magni aut impedit error explicabo optio illum commodi qui. Placeat velit non ipsum iusto. Molestiae quasi vel cumque voluptates eos numquam quia.', 80, 1, 1, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(2, 'ea', 'images/item-01.jpg', 'Ut laudantium omnis sunt ut voluptas nulla. Quo eos pariatur laborum at itaque. Possimus facere deleniti temporibus.', 25, 1, 0, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(3, 'at', 'images/item-01.jpg', 'Quae nisi nesciunt est quos id repellat voluptas. Qui tenetur eos et sit eligendi. Deserunt ullam et a. Eos voluptas aut incidunt quas accusantium.', 84, 1, 0, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(4, 'voluptas', 'images/item-01.jpg', 'Provident ex culpa quam id unde sunt velit. Expedita aliquid qui soluta.', 96, 1, 0, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(5, 'ut', 'images/item-01.jpg', 'Asperiores animi dolor alias qui in. Dolor ducimus a ducimus. Possimus soluta ut at ipsa. Consequatur aut possimus voluptatem aut.', 86, 1, 0, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(6, 'sint', 'images/item-01.jpg', 'Id quos libero at tenetur tenetur. Cumque tempora voluptas explicabo perspiciatis dolores. Rerum eaque exercitationem doloremque et. Rerum adipisci ut nemo illum.', 4, 1, 1, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(7, 'in', 'images/item-01.jpg', 'Ex necessitatibus sed quo aperiam sequi. Et expedita error doloribus autem. Voluptate voluptatibus numquam eos.', 16, 1, 0, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(8, 'corporis', 'images/item-01.jpg', 'Aut ducimus id doloremque et. Ut laborum enim iste et aut rerum voluptatum. Asperiores aut vel veritatis similique quod odit dolorum nam.', 84, 1, 0, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(9, 'rem', 'images/item-01.jpg', 'Qui qui atque atque. Saepe quo modi illum ipsa aliquam modi. Expedita eum eaque quidem dolor est. Quia est omnis sint totam facilis ut. Non ut ut autem consequuntur laboriosam.', 97, 1, 0, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(10, 'magni', 'images/item-01.jpg', 'Laborum vitae ullam labore voluptas omnis animi ratione. Exercitationem voluptatem a fuga consequatur non ullam libero. Voluptatem aut ipsum sint minima amet voluptatum. Ratione id ea vel.', 43, 1, 0, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(11, 'quaerat', 'images/item-02.jpg', 'Voluptas consequatur culpa distinctio temporibus. Perspiciatis quis delectus architecto et modi.', 47, 2, 1, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(12, 'occaecati', 'images/item-02.jpg', 'Porro aut et ea rerum explicabo. Sunt qui est quo voluptas. Odio sunt asperiores temporibus.', 59, 2, 1, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(13, 'doloremque', 'images/item-02.jpg', 'Incidunt ea animi accusamus autem eligendi. Error dicta ad modi velit accusamus. Quos sequi optio iste dolorum vel. Aut ex assumenda quo nemo ut rerum.', 28, 2, 1, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(14, 'esse', 'images/item-02.jpg', 'Inventore sunt in aperiam facilis facilis suscipit. Voluptatem consequatur mollitia quis voluptatem totam. Sint consequatur ad maiores aut ut.', 99, 2, 1, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(15, 'quia', 'images/item-02.jpg', 'Dolorem placeat voluptatibus sed aspernatur perspiciatis enim sequi. Ex cumque ullam eius ea. Natus consequuntur facilis quia et illum quae. Perferendis deserunt eius magnam quos.', 92, 2, 1, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(16, 'eum', 'images/item-02.jpg', 'Consequatur nesciunt laudantium perferendis ut rerum. Accusamus sapiente ea natus quis consequatur. Quia optio natus corrupti asperiores. Ut amet velit deserunt maiores impedit eum.', 18, 2, 1, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(17, 'quas', 'images/item-02.jpg', 'Dolor dicta est dolorum quidem et pariatur. Non ea eos hic est quae labore.', 46, 2, 1, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(18, 'deserunt', 'images/item-02.jpg', 'Rerum vel ex ea sapiente et. Dignissimos asperiores sit animi nemo eveniet eum. Placeat optio sit ut dicta. Recusandae odio iure pariatur autem.', 72, 2, 1, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(19, 'ut', 'images/item-02.jpg', 'Perspiciatis magnam porro in. Qui perspiciatis accusantium ipsam numquam nostrum. Dolorum ipsam assumenda ab odit voluptas beatae.', 9, 2, 1, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(20, 'odit', 'images/item-02.jpg', 'Quia quia sunt delectus voluptatem. Ipsam dignissimos dolores facilis temporibus earum totam. Deleniti sint sunt ea modi. Aliquid est possimus ut ipsa facilis.', 75, 2, 1, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(21, 'fugiat', 'images/item-03.jpg', 'Et unde aut nobis facilis. Neque perferendis animi velit saepe sequi. Voluptas itaque qui ab harum officia. Quia voluptatem enim illo dolorum ut.', 23, 3, 1, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(22, 'placeat', 'images/item-03.jpg', 'Soluta ut et est eum qui dolores id. Ea velit ratione debitis sequi quia amet. Consequuntur blanditiis autem porro sed sed facilis inventore magnam. Voluptatem ea aliquid quod aliquam.', 98, 3, 1, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(23, 'sunt', 'images/item-03.jpg', 'In animi velit qui expedita omnis expedita fuga. Est in et est dolore similique quia voluptas nihil. Est ut rerum sit vel debitis. Et sequi quia itaque aut. Eligendi et non et illum.', 95, 3, 1, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(24, 'quis', 'images/item-03.jpg', 'Rerum ut nam dolorem labore perspiciatis enim. Porro similique qui sapiente voluptatibus temporibus vitae mollitia. Esse harum non id aut id. Quaerat aspernatur et ut et officia.', 49, 3, 1, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(25, 'reiciendis', 'images/item-03.jpg', 'Soluta omnis praesentium harum illo vel et. Et cupiditate inventore facilis quos ab velit. Voluptates perspiciatis at quia nesciunt.', 82, 3, 1, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(26, 'nulla', 'images/item-03.jpg', 'Rerum quibusdam animi quam non nobis enim ad. Quam labore voluptas ducimus facere et rerum officia voluptatem. Debitis quibusdam deleniti sed fugit vero nisi omnis quam. Beatae quidem molestiae ab.', 92, 3, 1, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(27, 'et', 'images/item-03.jpg', 'Maiores et enim sit voluptas iste. Fugit nobis ratione praesentium incidunt debitis aut natus. Non molestiae commodi possimus fuga necessitatibus aut ut et. Et quidem sit minus libero qui ex.', 99, 3, 1, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(28, 'consectetur', 'images/item-03.jpg', 'Dolorum voluptas tempore laborum vitae. Mollitia ullam eveniet in quo placeat ut. Ipsa sunt deleniti quia suscipit optio nesciunt repellat eos.', 36, 3, 1, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(29, 'aut', 'images/item-03.jpg', 'Perspiciatis officiis voluptate expedita laudantium est. Qui enim voluptatem occaecati alias nihil est nobis.', 51, 3, 1, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(30, 'temporibus', 'images/item-03.jpg', 'Aspernatur dolorum nemo dicta reprehenderit cupiditate ea. Fugit vero est accusantium. Neque adipisci est eos qui voluptas reiciendis. Qui libero voluptate officia odio.', 9, 3, 1, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(31, 'minima', 'images/item-01.jpg', 'Nihil velit perferendis similique earum. Architecto voluptas et cupiditate aut ut. Quis sequi modi qui omnis nulla exercitationem accusamus non. Ut quod vero et labore explicabo inventore et.', 68, 4, 1, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(32, 'molestiae', 'images/item-01.jpg', 'Vel qui omnis temporibus animi. Vitae repellendus voluptas sed harum et iure dolore. Laborum sequi ea est nostrum in aliquam.', 79, 4, 0, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(33, 'amet', 'images/item-01.jpg', 'Aut officia suscipit excepturi recusandae voluptatum cum reprehenderit. Pariatur ea illum vero voluptatem molestiae. Enim sit dolores ut dolor. Hic nemo cum harum vel.', 77, 4, 0, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(34, 'optio', 'images/item-01.jpg', 'Laudantium perferendis facere velit ut id nihil aut. Error illo tenetur fugiat occaecati officiis magni. Commodi officiis quos dolore et debitis labore. Nihil id et voluptas aliquid.', 37, 4, 1, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(35, 'amet', 'images/item-01.jpg', 'Voluptatibus ratione totam ipsam in libero et. Dolorem sit amet voluptatum vel itaque. Neque vitae magni fuga. Eius reprehenderit impedit deserunt rerum et doloremque impedit.', 39, 4, 0, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(36, 'quo', 'images/item-01.jpg', 'Nam corporis illo deleniti est facilis eos. Alias quia aut quibusdam vero tempora nulla. Non et facere et quis sed necessitatibus.', 38, 4, 0, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(37, 'non', 'images/item-01.jpg', 'Ea ut esse excepturi ut dolorem. Voluptates velit aut sit sed ipsam non aspernatur. Sapiente quia assumenda numquam aliquid quia possimus et.', 11, 4, 1, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(38, 'atque', 'images/item-01.jpg', 'Expedita quia fugiat animi non aut labore quam. Nesciunt consequuntur molestiae enim. Quia quisquam consequuntur excepturi atque eligendi quas quam minus. Enim aut velit incidunt qui est temporibus.', 52, 4, 0, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(39, 'reprehenderit', 'images/item-01.jpg', 'Dolor facere provident odit. Ipsum eos et omnis dolorem quaerat pariatur soluta. Doloribus itaque consequatur doloremque.', 39, 4, 1, '2025-01-20 01:14:39', '2025-01-20 01:14:39'),
(40, 'exercitationem', 'images/item-01.jpg', 'Illum officia qui commodi ut. Soluta et unde sed eveniet iste et. Debitis quae quis corporis harum.', 91, 4, 1, '2025-01-20 01:14:39', '2025-01-20 01:14:39');

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
('OreKThvBJl0g3UCoS7ZHoPePgvcYGlPuPQYxdmW7', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoib29VR2NDdkJTNWNXS0ZIamhJd2NKbWI4SHg0bHhZbWFpVEl3eUhuaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXJ0L2RlY3JlbWVudC8yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo0OiJjYXJ0IjthOjA6e319', 1737357911);

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
(1, 'Admin', 'admin@email.com', '2025-01-20 01:14:39', '$2y$12$wKwxF4W8bR//yHEgtYcZg.VK8azc1okiFh4NtC.7HfeKF15ictP7K', 'bUBoSGZiln', '2025-01-20 01:14:39', '2025-01-20 01:14:39');

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
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
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
-- AUTO_INCREMENT for table `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
