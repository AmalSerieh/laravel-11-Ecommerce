-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2025 at 12:34 PM
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
-- Database: `laravel11ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `locality` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `zip` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'home',
  `isdefault` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `name`, `phone`, `locality`, `address`, `city`, `state`, `country`, `landmark`, `zip`, `type`, `isdefault`, `created_at`, `updated_at`) VALUES
(1, 1, 'Divyansh Kumar', '1234567899', 'NIT', '123', 'Faridabad', 'Haryana', 'Syria', 'Near Ram Temple', '123456', 'home', 1, '2025-03-26 11:44:51', '2025-03-26 11:44:51'),
(2, 2, 'Amal Serieh', '0987456321', 'Main Street', '7,Adnan Serieh', 'Saydnaya', 'Rif Damascus', 'Syria', 'Near AlHelal al Alhamr', '147852', 'home', 1, '2025-03-28 19:51:40', '2025-03-28 19:51:40');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Brand 1', 'brand-1', '2024-10-29-15-05-25.jpg', '2024-10-29 12:05:25', '2024-10-29 12:05:25'),
(2, 'Brand 2', 'brand-2', '2024-10-29-20-26-46.jpg', '2024-10-29 17:26:46', '2024-10-29 17:26:46'),
(3, 'Brand 3', 'brand-3', '2024-10-29-22-39-33.jpg', '2024-10-29 19:39:33', '2024-10-29 19:39:33'),
(4, 'Brand 4', 'brand-4', '2024-10-31-15-43-20.jpg', '2024-10-31 12:43:20', '2024-10-31 12:43:20'),
(5, 'Brand 5', 'brand-5', '2024-12-09-15-21-09.jpg', '2024-12-09 12:21:09', '2024-12-09 12:21:09');

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
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Women Tops', 'women-tops', '2025-03-20-20-01-09.png', NULL, '2024-10-29 12:22:56', '2025-04-01 16:51:50'),
(2, 'Women  Pants', 'women-pants', '2025-03-20-20-01-22.png', NULL, '2025-03-20 23:32:08', '2025-04-01 16:53:07'),
(3, 'Women Clothes', 'women-clothes', '2025-03-20-20-00-57.png', NULL, '2025-03-21 00:00:57', '2025-04-01 16:52:13'),
(4, 'Men Jeans', 'men-jeans', '2025-04-01-09-36-05.png', NULL, '2025-04-01 13:36:05', '2025-04-01 16:52:41'),
(5, 'Men Shirts', 'men-shirts', '2025-04-01-12-53-49.png', NULL, '2025-04-01 16:53:49', '2025-04-01 16:53:49'),
(6, 'Men Shoes', 'men-shoes', '2025-04-01-12-54-12.png', NULL, '2025-04-01 16:54:12', '2025-04-01 16:54:12'),
(7, 'Women Dresses', 'women-dresses', '2025-04-01-12-54-43.png', NULL, '2025-04-01 16:54:43', '2025-04-01 16:54:43'),
(8, 'Kids Tops', 'kids-tops', '2025-04-01-12-56-32.png', NULL, '2025-04-01 16:56:32', '2025-04-01 16:56:32');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'Sami', 'sami@gmail.com', '1234567890', 'I need to help', '2025-03-31 19:55:00', '2025-03-31 19:55:00'),
(2, 'Mami', 'mami@gmail.com', '0987654321', 'Get In Touch', '2025-03-31 20:23:30', '2025-03-31 20:23:30'),
(5, 'samer gamal', 'samer@gmail.com', '0987456321', 'The email field is required.', '2025-04-01 15:56:33', '2025-04-01 15:56:33');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `type` enum('fixed','percent') NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `cart_value` decimal(8,2) NOT NULL,
  `expiry_date` date NOT NULL DEFAULT cast(current_timestamp() as date),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `cart_value`, `expiry_date`, `created_at`, `updated_at`) VALUES
(1, '0FF10', 'fixed', 10.00, 100.00, '2025-03-22', '2025-03-22 19:48:31', '2025-03-26 20:49:38'),
(3, '0FF30', 'percent', 30.00, 150.00, '2025-04-05', '2025-03-22 20:14:32', '2025-03-22 20:14:56'),
(4, '0FF20', 'percent', 20.00, 160.00, '2025-04-05', '2025-03-24 00:13:04', '2025-03-24 00:13:04');

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
(22, '0001_01_01_000000_create_users_table', 1),
(23, '0001_01_01_000001_create_cache_table', 1),
(24, '0001_01_01_000002_create_jobs_table', 1),
(25, '2024_10_21_130442_create_brands_table', 1),
(26, '2024_10_25_114118_create_personal_access_tokens_table', 1),
(27, '2024_10_25_152030_create_categories_table', 1),
(28, '2024_10_26_093637_create_products_table', 1),
(29, '2025_03_21_175551_create_coupons_table', 2),
(30, '2025_03_23_201852_create_orders_table', 3),
(31, '2025_03_23_201945_create_order_items_table', 3),
(32, '2025_03_23_202017_create_addresses_table', 3),
(33, '2025_03_23_202116_create_transactions_table', 3),
(34, '2025_03_29_080256_create_sliders_table', 4),
(35, '2025_03_31_114627_create_month_names_table', 5),
(36, '2025_03_31_150450_create_contacts_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `month_names`
--

CREATE TABLE `month_names` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `month_names`
--

INSERT INTO `month_names` (`id`, `name`) VALUES
(1, 'January'),
(2, 'Fibruary'),
(3, 'March'),
(4, 'April'),
(5, 'May'),
(6, 'June'),
(7, 'July'),
(8, 'Augest'),
(9, 'September'),
(10, 'October'),
(11, 'November'),
(12, 'December');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `locality` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `zip` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'home',
  `status` enum('ordered','delivered','canceled') NOT NULL DEFAULT 'ordered',
  `is_shipping_different` tinyint(1) NOT NULL DEFAULT 0,
  `delivered_date` date DEFAULT NULL,
  `canceled_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `subtotal`, `discount`, `tax`, `total`, `name`, `phone`, `locality`, `address`, `city`, `state`, `country`, `landmark`, `zip`, `type`, `status`, `is_shipping_different`, `delivered_date`, `canceled_date`, `created_at`, `updated_at`) VALUES
(1, 1, -60.00, 100.00, -12.60, -72.60, 'Divyansh Kumar', '1234567899', 'NIT', '123', 'Faridabad', 'Haryana', 'Syria', 'Near Ram Temple', '123456', 'home', 'canceled', 0, '2025-03-28', '2025-03-28', '2025-03-26 11:48:25', '2025-03-29 00:12:08'),
(2, 1, 80.00, 0.00, 16.80, 96.80, 'Divyansh Kumar', '1234567899', 'NIT', '123', 'Faridabad', 'Haryana', 'Syria', 'Near Ram Temple', '123456', 'home', 'delivered', 0, '2025-03-28', NULL, '2025-03-26 12:03:21', '2025-03-29 00:13:53'),
(3, 1, 380.00, 10.00, 79.80, 459.80, 'Divyansh Kumar', '1234567899', 'NIT', '123', 'Faridabad', 'Haryana', 'Syria', 'Near Ram Temple', '123456', 'home', 'ordered', 0, NULL, NULL, '2025-03-26 20:55:19', '2025-03-26 20:55:19'),
(4, 1, 450.00, 10.00, 94.50, 544.50, 'Divyansh Kumar', '1234567899', 'NIT', '123', 'Faridabad', 'Haryana', 'Syria', 'Near Ram Temple', '123456', 'home', 'ordered', 0, NULL, NULL, '2025-03-26 21:30:55', '2025-03-26 21:30:55'),
(5, 2, 460.00, 10.00, 96.60, 556.60, 'Amal Serieh', '0987456321', 'Main Street', '7,Adnan Serieh', 'Saydnaya', 'Rif Damascus', 'Syria', 'Near AlHelal al Alhamr', '147852', 'home', 'delivered', 0, '2025-03-29', NULL, '2025-03-28 19:51:40', '2025-03-29 10:45:19'),
(6, 2, 154.00, 0.00, 32.34, 186.34, 'Amal Serieh', '0987456321', 'Main Street', '7,Adnan Serieh', 'Saydnaya', 'Rif Damascus', 'Syria', 'Near AlHelal al Alhamr', '147852', 'home', 'canceled', 0, NULL, '2025-03-29', '2025-03-29 10:44:11', '2025-03-29 12:05:08'),
(7, 2, 10.00, 0.00, 2.10, 12.10, 'Amal Serieh', '0987456321', 'Main Street', '7,Adnan Serieh', 'Saydnaya', 'Rif Damascus', 'Syria', 'Near AlHelal al Alhamr', '147852', 'home', 'canceled', 0, NULL, '2025-03-29', '2025-03-30 02:11:38', '2025-03-30 02:11:52');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `options` longtext DEFAULT NULL,
  `rstatus` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `product_id`, `order_id`, `price`, `quantity`, `options`, `rstatus`, `created_at`, `updated_at`) VALUES
(1, 9, 1, 10.00, 1, NULL, 0, '2025-03-26 11:48:25', '2025-03-26 11:48:25'),
(2, 8, 1, 30.00, 1, NULL, 0, '2025-03-26 11:48:25', '2025-03-26 11:48:25'),
(3, 9, 2, 10.00, 2, NULL, 0, '2025-03-26 12:03:21', '2025-03-26 12:03:21'),
(4, 8, 2, 30.00, 2, NULL, 0, '2025-03-26 12:03:21', '2025-03-26 12:03:21'),
(5, 9, 3, 10.00, 4, NULL, 0, '2025-03-26 20:55:19', '2025-03-26 20:55:19'),
(6, 8, 3, 30.00, 3, NULL, 0, '2025-03-26 20:55:19', '2025-03-26 20:55:19'),
(7, 6, 3, 260.00, 1, NULL, 0, '2025-03-26 20:55:19', '2025-03-26 20:55:19'),
(8, 5, 4, 200.00, 1, NULL, 0, '2025-03-26 21:30:55', '2025-03-26 21:30:55'),
(9, 6, 4, 260.00, 1, NULL, 0, '2025-03-26 21:30:55', '2025-03-26 21:30:55'),
(10, 9, 5, 10.00, 1, NULL, 0, '2025-03-28 19:51:40', '2025-03-28 19:51:40'),
(11, 6, 5, 260.00, 1, NULL, 0, '2025-03-28 19:51:40', '2025-03-28 19:51:40'),
(12, 5, 5, 200.00, 1, NULL, 0, '2025-03-28 19:51:40', '2025-03-28 19:51:40'),
(13, 7, 6, 47.00, 2, NULL, 0, '2025-03-29 10:44:11', '2025-03-29 10:44:11'),
(14, 8, 6, 30.00, 2, NULL, 0, '2025-03-29 10:44:11', '2025-03-29 10:44:11'),
(15, 9, 7, 10.00, 1, NULL, 0, '2025-03-30 02:11:38', '2025-03-30 02:11:38');

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) NOT NULL,
  `stock_status` enum('instock','outofstock') NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quntity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `images` text DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quntity`, `image`, `images`, `category_id`, `brand_id`, `created_at`, `updated_at`) VALUES
(4, 'Shirt In Bontanical Cheetah Print', 'shirt-in-bontanical-cheetah-print', 'Phasellus sed volutpat orci. Fusce eget lore mauris vehicula elementum gravida nec dui. Aenean aliquam varius ipsum, non ultricies tellus sodales eu. Donec dignissim viverra nunc, ut aliquet magna posuere eget.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.', 62.00, 0.00, 'SKT1001', 'instock', 0, 3, '2024-12-11-20-49-51.jpg', '2024-12-11-20-49-51-1.jpg,2024-12-11-20-49-51-2.jpg', 7, 1, '2024-12-11 17:49:52', '2025-04-01 17:47:36'),
(5, 'Cotton Jersey t-Shirt', 'cotton-jersey-t-shirt', 'Phasellus sed volutpat orci. Fusce eget lore mauris vehicula elementum gravida nec dui. Aenean aliquam varius ipsum, non ultricies tellus sodales eu. Donec dignissim viverra nunc, ut aliquet magna posuere eget.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.', 150.00, 0.00, 'SKT1001', 'outofstock', 1, 10, '2024-12-11-20-50-59.jpg', '2024-12-11-20-50-59-1.jpg', 4, 4, '2024-12-11 17:50:59', '2025-04-01 17:48:52'),
(6, 'Lightweight Puffer Jacket With a Hood', 'lightweight-puffer-jacket-with-a-hood', 'Phasellus sed volutpat orci. Fusce eget lore mauris vehicula elementum gravida nec dui. Aenean aliquam varius ipsum, non ultricies tellus sodales eu. Donec dignissim viverra nunc, ut aliquet magna posuere eget.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium', 449.00, 260.00, 'SKT1075', 'outofstock', 1, 4, '2024-12-11-20-52-10.jpg', '2024-12-12-10-22-56-1.jpg,2024-12-12-10-22-56-2.jpg,2024-12-12-10-22-56-3.jpg', 5, 4, '2024-12-11 17:52:12', '2025-04-01 18:11:13'),
(7, 'Zessi Dresses', 'zessi-dresses', 'vnbbcjdjkchkl', 'fmnjkdhnvj', 129.00, 99.00, 'SKT10981', 'instock', 1, 2, '2024-12-11-23-12-09.jpg', '2024-12-12-10-22-02-1.jpg', 7, 5, '2024-12-11 20:12:10', '2025-04-01 18:12:11'),
(8, 'Cableknit Shawl', 'cableknit-shawl', 'Short Description *', 'Description', 40.00, 30.00, 'SKT1005', 'instock', 1, 7, '2024-12-12-11-23-36.jpg', '2024-12-12-11-23-36-1.jpg', 5, 3, '2024-12-12 08:23:37', '2025-04-01 18:15:07'),
(9, 'Calvin Shorts', 'calvin-shorts', 'Short Description *Short Description *Short Description *Short Description *', 'Description *Description *Description *Description *Description *', 62.00, 45.00, 'SKY1654', 'outofstock', 0, 10, '2025-03-20-19-35-09.jpg', '2025-03-20-19-35-09-1.jpg', 5, 1, '2025-03-20 23:35:09', '2025-04-01 18:12:55'),
(10, 'Cropped Faux Leather Jacket', 'cropped-faux-leather-jacket', 'Phasellus sed volutpat orci. Fusce eget lore mauris vehicula elementum gravida nec dui. Aenean aliquam varius ipsum, non ultricies tellus sodales eu. Donec dignissim viverra nunc, ut aliquet magna posuere eget.', 'incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaqu', 240.00, 220.00, 'SKT1075', 'instock', 0, 3, '2025-04-01-14-14-31.jpg', '2025-04-01-14-14-31-1.jpg', 3, 2, '2025-04-01 18:14:32', '2025-04-01 18:14:32'),
(11, 'Kirby T-Shirt', 'kirby-t-shirt', 'Phasellus sed volutpat orci. Fusce eget lore mauris vehicula elementum gravida nec dui. Aenean aliquam varius ipsum, non ultricies tellus sodales eu. Donec dignissim viverra nunc, ut aliquet magna posuere eget.', 'Phasellus sed volutpat orci. Fusce eget lore mauris vehicula elementum gravida nec dui. Aenean aliquam varius ipsum, non ultricies tellus sodales eu. Donec dignissim viverra nunc, ut aliquet magna posuere eget.', 20.00, 0.00, 'SKT1075', 'instock', 0, 7, '2025-04-01-14-16-07.jpg', '2025-04-01-14-16-07-1.jpg', 1, 2, '2025-04-01 18:16:07', '2025-04-01 18:16:07'),
(12, 'Colorful Jacket', 'colorful-jacket', 'Colorful JacketPhasellus sed volutpat orci. Fusce eget lore mauris vehicula elementum gravida nec dui. Aenean aliquam varius ipsum, non ultricies tellus sodales eu. Donec dignissim viverra nunc, ut aliquet magna posuere eget.', 'Phasellus sed volutpat orci. Fusce eget lore mauris vehicula elementum gravida nec dui. Aenean aliquam varius ipsum, non ultricies tellus sodales eu. Donec dignissim viverra nunc, ut aliquet magna posuere eget.', 29.00, 26.00, 'SKT1079', 'outofstock', 0, 3, '2025-04-01-14-17-34.jpg', '2025-04-01-14-17-34-1.jpg', 5, 4, '2025-04-01 18:17:35', '2025-04-01 18:17:35'),
(14, 'Cropped Faux Leather Jackett', 'cropped-faux-leather-jackett', 'dui. Aenean aliquam varius ipsum, non ultricies tellus sodales eu. Donec dignissim viverra nunc, ut aliquet magna posuere eget.', 'dui. Aenean aliquam varius ipsum, non ultricies tellus sodales eu. Donec dignissim viverra nunc, ut aliquet magna posuere eget.', 20.00, 20.00, 'SKY1654', 'instock', 0, 2, '2025-04-01-14-19-10.jpg', '2025-04-01-14-19-10-1.jpg', 5, 3, '2025-04-01 18:19:10', '2025-04-01 18:19:10'),
(15, 'Kirby T-Shirt black', 'kirby-t-shirt-black', 'cghjhcj', 'vfyffyyggffug', 69.00, 20.00, 'kmk', 'instock', 1, 3, '2025-04-01-14-21-23.jpg', '2025-04-01-14-21-23-1.jpg', 4, 3, '2025-04-01 18:21:24', '2025-04-01 18:21:24'),
(16, 'Cableknitt Shawll', 'cableknitt-shawll', 'Do not exceed 100 cDo not exceed 100 characters when entering the Do not exceed 100 cDo not exceed 100 characters when entering the Do not exceed 100 cDo no', 'Do not exceed 100 characters when entering the product name.', 5.00, 0.00, 'SKT1075', 'instock', 1, 3, '2025-04-01-14-33-35.jpg', '2025-04-01-14-33-35-1.jpg', 1, 2, '2025-04-01 18:33:36', '2025-04-01 18:33:36'),
(17, 'Cropped Faux Cotton Jacket', 'cropped-faux-cotton-jacket', 'hhhh', 'jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj', 20.00, 17.00, 'SKT1001', 'instock', 1, 4, '2025-04-01-14-34-58.jpg', '2025-04-01-23-21-50-1.jpg', 5, 3, '2025-04-01 18:34:59', '2025-04-02 03:21:50'),
(18, 'jacket', 'jacket', 'bjfifiy', 'hugug', 25.00, 20.00, 'kmk', 'instock', 1, 4, '2025-04-01-14-37-25.jpg', '2025-04-01-14-37-25-1.jpg', 5, 3, '2025-04-01 18:37:26', '2025-04-01 18:37:26'),
(19, 'Dreseses', 'dreseses', 'nk;kkkkfio', 'asdfghjkl;', 20.00, 17.00, 'SKT1001', 'instock', 1, 2, '2025-04-01-14-38-20.jpg', '', 7, 2, '2025-04-01 18:38:21', '2025-04-01 18:38:21');

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
('HKXoJguP60tw2OOnFrl7sgIp6EWqfB0dnnx9dSRR', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoid0owUDVjSW5UeTdhNjVMYjFTNE94VDhPZWxzaERzeTRPbzJENVI4TyI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjU1OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvc2hvcC9jcm9wcGVkLWZhdXgtbGVhdGhlci1qYWNrZXR0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjQ6ImF1dGgiO2E6MTp7czoyMToicGFzc3dvcmRfY29uZmlybWVkX2F0IjtpOjE3NDM1NDI5NTI7fX0=', 1743550392),
('i5S7tzoS1cRFA9GyrKzulD3nn57duZWhCX1yC8yX', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:136.0) Gecko/20100101 Firefox/136.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoieFlBNktBRkhPRk9SNHFQV2ltWkttUUJlOVhmMlIxMDJGbU1OYnpmeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zZWFyY2g/c2VhcmNoLWtleXdvcmQ9RHJlc2VzZXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO3M6NDoiYXV0aCI7YToxOntzOjIxOiJwYXNzd29yZF9jb25maXJtZWRfYXQiO2k6MTc0MzU0NjY2MDt9fQ==', 1743548159);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tagline` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `tagline`, `title`, `subtitle`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'New Collection', 'Dresses', 'Night Dress', 'http://localhost:8000/shop', '2025-03-29-22-29-53.png', 1, '2025-03-30 01:01:01', '2025-03-30 02:29:54'),
(3, 'Tagline 2', 'Dresses', 'Night Spring', 'http://localhost:8000/shop', '2025-03-29-22-44-06.png', 1, '2025-03-30 02:44:06', '2025-04-01 16:47:56'),
(4, 'New Arrivals', 'Night Spring', 'Dresses', 'http://localhost:8000/shop', '2025-04-01-12-49-18.png', 1, '2025-04-01 16:49:19', '2025-04-01 16:49:19');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `mode` enum('cod','card','paypal') NOT NULL,
  `status` enum('pending','approved','declined','refunded') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `order_id`, `mode`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'cod', 'pending', '2025-03-26 11:48:25', '2025-03-29 00:12:08'),
(2, 1, 2, 'cod', 'approved', '2025-03-26 12:03:21', '2025-03-29 00:13:53'),
(3, 1, 4, 'cod', 'pending', '2025-03-26 21:30:55', '2025-03-26 21:30:55'),
(4, 2, 5, 'cod', 'approved', '2025-03-28 19:51:40', '2025-03-29 10:45:19'),
(5, 2, 6, 'cod', 'pending', '2025-03-29 10:44:11', '2025-03-29 10:44:11'),
(6, 2, 7, 'cod', 'pending', '2025-03-30 02:11:38', '2025-03-30 02:11:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `utype` varchar(255) NOT NULL DEFAULT 'USR' COMMENT 'ADM for Admin and USR for User or Customer ',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile`, `email_verified_at`, `password`, `utype`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@surfsidemedia.in', '0937649174', NULL, '$2y$12$8Rg0unxJfHA/PtD.U.07ye9v7WQp6HffIHOXjlXVa1v8SatEgK0Rm', 'ADM', NULL, '2024-10-29 12:04:08', '2024-10-29 12:04:08'),
(2, 'User1', 'user@surfsidemedia', '0147852369', NULL, '$2y$12$55fujipMGR5Mm.FG6.PHSeNTSTfQepQTAiSSf8XIuxjM1COtvWvJW', 'USR', NULL, '2024-10-31 12:47:55', '2024-10-31 12:47:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_user_id_foreign` (`user_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

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
-- Indexes for table `month_names`
--
ALTER TABLE `month_names`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_mobile_unique` (`mobile`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `month_names`
--
ALTER TABLE `month_names`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
