-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 07, 2021 at 06:35 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelShop`
--

-- --------------------------------------------------------

--
-- Table structure for table `additional_infos`
--

CREATE TABLE `additional_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `national_identity_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_economic_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_registration_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_national_identity_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `bank_card_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `newsletter` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `additional_infos`
--

INSERT INTO `additional_infos` (`id`, `user_id`, `first_name`, `last_name`, `national_identity_number`, `mobile_phone`, `email`, `company_name`, `company_economic_number`, `company_registration_number`, `company_national_identity_number`, `company_phone`, `province_id`, `city_id`, `bank_card_number`, `newsletter`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 9, 'علی', 'صدیقی', '5040173822', '09141592083', 'ali.sedighi.tu@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6104337934374925', 'no', NULL, '2020-02-14 04:44:05', '2020-02-23 13:52:15'),
(4, 44, 'ali', 'sedighi', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-16 22:52:52', '2020-09-16 22:52:52');

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `province_id` smallint(6) NOT NULL,
  `city_id` smallint(6) NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `zip_code` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `name`, `mobile`, `province_id`, `city_id`, `address`, `zip_code`, `user_id`, `lat`, `lng`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'علی صدیقی', '09141592083', 1, 2, 'تبریز باغمیشه نصر سوم', 2334567891, 9, 38.05400505229021, 46.39000654220582, NULL, '2019-12-13 05:08:23', '2020-11-22 20:31:16'),
(9, 'علی صدیقی', '09141592083', 4, 3, 'مرزداران کوچه نسترن غربی', 1234567891, 9, 38.041196447742735, 46.399286985397346, '2019-12-13 14:21:43', '2019-12-13 12:51:50', '2019-12-13 14:21:43'),
(11, 'علی صدیقی', '09141592083', 4, 3, 'شهرک شهید باکری کوچه دوم', 1234567891, 9, 0, 0, NULL, '2019-12-16 11:37:08', '2019-12-16 11:37:08'),
(12, 'تست تست', '09141592083', 1, 2, 'تست تست تست تست تست تست تست تست', 1234567891, 9, 38.04744894892193, 46.36706829071045, '2020-02-06 05:13:06', '2020-02-06 05:11:17', '2020-02-06 05:13:06'),
(13, 'تست تست تست', '09141592083', 1, 2, 'تست تست تست تست تست تست تست تست تست', 1234567891, 9, 38.04215970568861, 46.391787528991706, '2020-02-06 05:15:56', '2020-02-06 05:14:41', '2020-02-06 05:15:56'),
(14, 'تست تست تست', '09141592083', 1, 2, 'تست تست تست  تست تست تست  تست تست تست', 1234567891, 9, 38.04222730226165, 46.39213085174561, '2020-02-06 05:36:29', '2020-02-06 05:18:25', '2020-02-06 05:36:29'),
(15, 'آراز صدیقی', '09141592083', 1, 2, 'تبریز  باغمیشه نصر سوم', 2134156789, 9, 38.050879148408285, 46.386337280273445, '2020-12-04 14:21:45', '2020-02-19 11:52:00', '2020-12-04 14:21:45'),
(16, 'علی صدیقی', '09141592020', 1, 2, '09141592020 09141592020', 1234456789, 9, 38.052940570282026, 46.38731360435486, '2020-02-19 13:19:51', '2020-02-19 12:11:01', '2020-02-19 13:19:51'),
(20, 'علی', '09141591515', 1, 2, 'آذربایجان شرقی، محله مرزداران، فرهنگ، باقرخان، ستارخان', 5344847846, 45, 38.0431517, 46.3984917, NULL, '2020-10-09 02:24:28', '2020-10-09 02:24:28'),
(21, 'ali sedighi', '09141591515', 1, 2, 'kshzdhjghshadhjghsdhjghjdf', 1234567891, 44, 38.0431517, 46.3984917, NULL, '2020-10-16 18:52:29', '2020-10-16 18:52:29'),
(22, 'علی صدیقی', '09141592083', 1, 2, 'آذربایجان شرقی، تبریز، محله یاغچیان، توحید، فجر، یاسمن', 2580963712, 9, 38.03115285957437, 46.379401256948796, '2020-12-04 14:21:38', '2020-11-21 20:21:23', '2020-12-04 14:21:38'),
(23, 'ali ‎sedighi', '09141592083', 1, 2, 'آذربایجان شرقی، محله مرزداران، فرهنگ جنوبی، نور اول، نور دوم', 1234567891, 9, 38.03633900512403, 46.391490865052816, '2020-12-04 14:21:32', '2020-11-21 20:46:03', '2020-12-04 14:21:32'),
(24, 'ali ‎sedighi', '09141592083', 1, 2, 'آذربایجان شرقی، بزرگراه بسیج', 1234567891, 9, 38.03369750076886, 46.39238560328104, '2020-12-04 14:21:27', '2020-11-21 20:47:24', '2020-12-04 14:21:27'),
(25, 'علی صدیقی', '09141592083', 1, 2, 'آذربایجان شرقی، محله باغمیشه، دانشگاه جنوبی، دانشگاه سوم، آذرآبادگان', 2234567891, 9, 38.05432864813159, 46.39033738789818, '2020-11-22 21:35:53', '2020-11-22 20:00:51', '2020-11-22 21:35:53'),
(26, 'علی صدیقی', '09141592083', 1, 2, 'آذربایجان شرقی، محله مرزداران، فرهنگ، باقرخان، ستارخان', 1234567891, 9, 38.0431517, 46.3984917, '2020-11-22 21:35:40', '2020-11-22 21:03:36', '2020-11-22 21:35:40');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `brand_ename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `brand_icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tozihat` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_ename`, `brand_icon`, `tozihat`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'سامسونگ', 'Samsung', '1550834101.jpg', 'سامسونگ یکی از بزرگترین شرکت‌ های کره جنوبی و یک شرکت چندملیتی است که از تعداد زیادی زیرمجموعه تشکیل شده‌ است. این شرکت‌ها در صنایع مختلف از جمله کالای دیجیتال، لوزام خانگی، صوتی و تصویری فعالیت می‌کنند.', NULL, '2019-02-22 03:26:31', '2019-02-22 04:15:01'),
(4, 'اپل', 'Apple', '1550833779.png', NULL, NULL, '2019-02-22 03:59:44', '2019-02-22 04:09:39'),
(5, 'ال جی', 'LG', '1550834202.png', NULL, NULL, '2019-02-22 04:16:42', '2019-02-22 04:16:42'),
(6, 'اچ تی سی', 'HTC', '1550834277.png', NULL, NULL, '2019-02-22 04:17:57', '2019-02-22 04:17:57'),
(7, 'هوآوی', 'Huawei', '1550834375.jpg', NULL, NULL, '2019-02-22 04:19:35', '2019-02-22 04:19:35'),
(8, 'جی ال ایکس', 'GLX', '1550834427.png', NULL, NULL, '2019-02-22 04:20:27', '2019-02-22 04:20:27'),
(9, 'سونی اریکسون', 'Sony Ericsson', '1550834635.png', NULL, NULL, '2019-02-22 04:23:55', '2019-02-22 04:23:55'),
(10, 'موتورولا', 'Motorola', '1550834689.png', NULL, NULL, '2019-02-22 04:24:49', '2019-02-22 04:24:49'),
(11, 'سونی', 'Sony', '1550834736.png', NULL, NULL, '2019-02-22 04:25:36', '2019-02-22 04:25:36'),
(12, 'دیمو', 'Dimo', '1550834836.png', NULL, NULL, '2019-02-22 04:27:16', '2019-02-22 04:27:16'),
(13, 'آلکاتل', 'Alcatel', '1550834887.png', NULL, NULL, '2019-02-22 04:28:07', '2019-02-22 04:28:07'),
(14, 'نوکیا', 'nokia', '1551913566.png', NULL, NULL, '2019-03-06 16:06:06', '2019-03-06 16:06:06'),
(15, 'لنوو', 'lenovo', '1551914004.png', NULL, NULL, '2019-03-06 16:13:24', '2019-03-06 16:13:24'),
(16, 'مایکروسافت', 'microsoft', '1551914096.png', NULL, NULL, '2019-03-06 16:14:56', '2019-03-06 16:14:56'),
(17, 'گیگابایت', 'gigabyte', '1551914160.png', NULL, NULL, '2019-03-06 16:16:00', '2019-03-06 16:16:00'),
(18, 'گوگل', 'google', '1551914246.png', NULL, NULL, '2019-03-06 16:17:26', '2019-03-06 16:17:26'),
(19, 'هیوندای', 'hyundai', '1551914305.png', NULL, NULL, '2019-03-06 16:18:25', '2019-03-06 16:18:25'),
(20, 'دیجی آنلاین', 'digionline', NULL, NULL, NULL, '2019-09-06 03:53:02', '2019-09-06 03:53:02'),
(21, 'فراگرنس ورد', 'frangrance world', '1572608465.png', 'شرکت «فراگرنس ورد» (Fragrance World) از تولیدکنندگان اسانس، عطر و ادکلن است که از سال 2009 فعالیت خود را در کشور امارات‌متحده‌عربی شروع کرد. این کمپانی پس از شرکت «اجمل»، بزرگ‌ترین تولیدکننده‌ی عطر و ادکلن در امارات محسوب می‌‌شود. هدف این شرکت تولید عطرهایی با ماندگاری و کیفیت بالا با قیمت مناسب است که توانسته است با عرضه‌ی محصولاتی چون «Doleres» و «ِDes Tentations» به خوبی بازار ادکلن‌های با کیفیت بالا و قیمت‌مناسب را از آن خود کند.', '2020-01-16 04:02:05', '2019-11-01 04:41:05', '2020-01-16 04:02:05'),
(22, 'ایسوس', 'asus', '1589010999.png', NULL, NULL, '2020-05-09 03:26:39', '2020-12-04 19:17:55');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_warranty_id` int(11) NOT NULL,
  `warranty_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `initial_amount` bigint(20) DEFAULT NULL,
  `final_amount` bigint(20) DEFAULT NULL,
  `product_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'available',
  `type` smallint(6) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_id`, `product_warranty_id`, `warranty_id`, `color_id`, `count`, `initial_amount`, `final_amount`, `product_status`, `type`, `created_at`, `updated_at`, `user_id`) VALUES
(98, 18, 29, 3, 2, 1, 15000000, 14000000, 'available', 1, NULL, NULL, 26),
(109, 20, 31, 3, 5, 1, 36889000, NULL, 'available', 1, NULL, NULL, 44),
(117, 30, 60, 3, 5, 1, 30000000, NULL, 'available', 2, NULL, NULL, 9),
(126, 32, 65, 3, 0, 1, 19000000, NULL, 'available', 1, NULL, NULL, 9),
(127, 12, 11, 1, 5, 1, 13000000, NULL, 'available', 1, NULL, NULL, 26),
(128, 11, 10, 3, 2, 1, 6099000, NULL, 'available', 2, NULL, NULL, 26),
(129, 2, 7, 1, 3, 1, 14000000, NULL, 'available', 1, NULL, NULL, 9),
(130, 11, 10, 3, 2, 1, 6099000, NULL, 'available', 1, NULL, NULL, 9),
(131, 18, 22, 2, 7, 1, 13000000, NULL, 'available', 1, NULL, NULL, 9),
(132, 12, 11, 1, 5, 1, 13000000, NULL, 'available', 1, NULL, NULL, 9),
(133, 33, 66, 2, 5, 1, 45300000, NULL, 'available', 1, NULL, NULL, 9),
(134, 2, 7, 1, 3, 1, 14000000, NULL, 'available', 1, NULL, NULL, 26);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `search_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `notShow` smallint(6) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `ename`, `url`, `img`, `search_url`, `parent_id`, `deleted_at`, `notShow`, `created_at`, `updated_at`) VALUES
(63, 'کالای دیجیتال', 'electronic-devices', 'electronic-devices', '1547376047.png', NULL, 0, NULL, 0, '2019-03-02 08:45:29', '2019-03-02 08:45:29'),
(64, 'آرایشی و بهداشتی', 'personal-appliance', 'personal-appliance', NULL, NULL, 0, NULL, 0, '2019-03-02 08:47:58', '2019-03-02 08:47:58'),
(65, 'خودرو، ابزار و اداری', 'vehicles', 'vehicles', NULL, NULL, 0, NULL, 0, '2019-03-02 08:48:33', '2019-03-02 08:48:33'),
(66, 'مد و پوشاک', 'apparel', 'apparel', NULL, NULL, 0, NULL, 0, '2019-03-02 08:48:55', '2020-08-03 04:02:34'),
(67, 'خانه و آشپزخانه', 'home-and-kitchen', 'home-and-kitchen', NULL, NULL, 0, NULL, 0, '2019-03-02 08:49:23', '2019-03-02 08:49:23'),
(68, 'فرهنگ و هنر', 'book-and-media', 'book-and-media', NULL, NULL, 0, NULL, 0, '2019-03-02 08:49:53', '2019-03-02 08:49:53'),
(69, 'اسباب بازی و کودک', 'mother-and-child', 'mother-and-child', NULL, NULL, 0, NULL, 0, '2019-03-02 08:50:21', '2019-03-02 08:50:21'),
(70, 'ورزش و سفر', 'sport-entertainment', 'sport-entertainment', NULL, NULL, 0, NULL, 0, '2019-03-02 08:50:59', '2019-03-02 08:50:59'),
(71, 'خوردنی و آشامیدنی', 'food-beverage', 'food-beverage', NULL, NULL, 0, NULL, 0, '2019-03-02 08:51:17', '2019-03-02 08:51:17'),
(73, 'موبایل', 'mobile', 'mobile', '1551802475.jpg', NULL, 63, NULL, 1, '2019-03-02 09:54:40', '2019-03-05 09:14:35'),
(76, 'لوازم جانبی گوشی موبایل', 'mobile-accessories', 'mobile-accessories', NULL, NULL, 73, NULL, 0, '2019-03-02 10:06:58', '2019-03-02 10:06:58'),
(77, 'کیف و کاور گوشی', 'cell-phone-pouch-cover', 'cell-phone-pouch-cover', NULL, NULL, 76, NULL, 0, '2019-03-02 10:07:23', '2019-03-02 10:07:23'),
(78, 'محافظ صفحه نمایش گوشی', 'cell-phone-screen-guard', 'cell-phone-screen-guard', NULL, NULL, 76, NULL, 0, '2019-03-02 10:08:24', '2019-03-02 10:08:24'),
(79, 'هندزفری', 'handsfree', 'handsfree', NULL, NULL, 76, NULL, 0, '2019-03-02 10:09:04', '2019-03-02 10:09:04'),
(80, 'پایه نگهدارنده گوشی و تبلت', 'cell-phone-holder', 'cell-phone-holder', NULL, NULL, 76, NULL, 0, '2019-03-02 10:09:28', '2019-03-02 10:09:28'),
(81, 'کابل و مبدل', 'cell-phone-data-cable', 'cell-phone-data-cable', NULL, NULL, 76, NULL, 1, '2019-03-02 10:10:17', '2019-03-02 11:25:14'),
(82, 'قطعات جانبی موبایل و تبلت', 'cell-phone-kits', 'cell-phone-kits', NULL, NULL, 76, NULL, 1, '2019-03-02 10:11:10', '2019-03-02 11:27:36'),
(83, 'باتری گوشی', 'cell-phone-battery', 'cell-phone-battery', NULL, NULL, 76, NULL, 0, '2019-03-02 10:11:40', '2019-03-02 10:11:40'),
(84, 'کیت تمیز کننده', 'cleaner-kit', 'cleaner-kit', NULL, NULL, 76, NULL, 1, '2019-03-02 10:12:01', '2019-03-02 11:27:47'),
(85, 'مبدل برق', 'power-supply', 'power-supply', NULL, NULL, 76, NULL, 1, '2019-03-02 10:12:20', '2019-03-02 11:26:58'),
(86, 'شارژر تبلت و موبایل', 'car-charger', 'car-charger', NULL, NULL, 76, NULL, 0, '2019-03-02 10:12:39', '2019-03-02 10:12:39'),
(87, 'گوشی موبایل', 'mobile-phone', 'mobile-phone', NULL, NULL, 73, NULL, 0, '2019-03-02 10:13:47', '2019-03-02 10:13:47'),
(88, 'آیفون اپل', NULL, '', NULL, 'http://localhost/digikala/public/search/mobile-phone?brand[0]=4', 87, NULL, 0, '2019-03-02 10:14:44', '2020-01-20 04:55:09'),
(90, 'هوآوی', NULL, '', NULL, 'http://localhost/digikala/public/search/mobile-phone?brand[0]=7', 87, NULL, 0, '2019-03-02 11:01:09', '2020-01-20 05:07:35'),
(91, 'پاوربانک (شارژر همراه)', 'power-bank', 'power-bank', NULL, NULL, 76, NULL, 0, '2019-03-02 11:02:28', '2019-03-02 11:02:28'),
(92, 'لوازم جانبی اپل واچ', 'apple-watch-cover', 'apple-watch-cover', NULL, NULL, 76, NULL, 1, '2019-03-02 11:02:51', '2019-03-02 11:25:42'),
(93, 'مجموعه لوازم جانبی', 'accessories-set', 'accessories-set', NULL, NULL, 76, NULL, 1, '2019-03-02 11:03:16', '2019-03-02 11:28:03'),
(94, 'قلم لمسی (Stylus)', 'stylus', 'stylus', NULL, NULL, 76, NULL, 1, '2019-03-02 11:03:49', '2019-03-02 11:28:17'),
(95, 'گیفت کارت', 'gift-card', 'gift-card', NULL, NULL, 76, NULL, 1, '2019-03-02 11:06:09', '2019-03-02 11:26:45'),
(97, 'لپ تاپ', 'laptop', 'laptop', '1551802751.jpg', NULL, 63, NULL, 1, '2019-03-02 12:09:37', '2019-03-05 09:19:11'),
(98, 'لپ تاپ و الترابوک', 'notebook-netbook-ultrabook', 'notebook-netbook-ultrabook', NULL, NULL, 97, NULL, 0, '2019-03-02 12:10:08', '2019-03-02 12:10:08'),
(99, 'لوازم جانبی لپ تاپ', 'laptop-accessories', 'laptop-accessories', NULL, NULL, 97, NULL, 0, '2019-03-02 12:10:32', '2019-03-02 12:10:32'),
(100, 'کیف و کاور لپ تاپ', 'laptop-bag', 'laptop-bag', NULL, NULL, 99, NULL, 0, '2019-03-02 12:48:41', '2019-03-02 12:48:41'),
(101, 'باتری لپ‌تاپ', 'laptop-battery', 'laptop-battery', NULL, NULL, 99, NULL, 0, '2019-03-02 12:49:09', '2019-03-02 12:49:09'),
(102, 'شارژر مخصوص لپ‌تاپ', 'laptop-charger', 'laptop-charger', NULL, NULL, 99, NULL, 0, '2019-03-02 12:49:34', '2019-03-02 12:49:34'),
(103, 'رم لپ تاپ', 'laptop-ram', 'laptop-ram', NULL, NULL, 76, NULL, 1, '2019-03-02 12:49:55', '2019-03-02 14:08:15'),
(104, 'لوازم جانبی مک بوک', 'macbook-accessories', 'macbook-accessories', NULL, NULL, 99, NULL, 0, '2019-03-02 12:50:23', '2019-03-02 12:50:23'),
(105, 'دوربین', 'camera', 'camera', '1551802817.jpg', NULL, 63, NULL, 0, '2019-03-02 12:57:19', '2019-03-05 09:20:17'),
(106, 'دوربین عکاسی', 'digital-camera', 'digital-camera', NULL, NULL, 105, NULL, 0, '2019-03-02 12:58:05', '2019-03-02 12:58:11'),
(107, 'دوربین فیلم برداری', 'camcorder', 'camcorder', NULL, NULL, 105, NULL, 0, '2019-03-02 13:00:45', '2019-03-02 13:00:45'),
(108, 'تلسکوپ', 'telescope', 'telescope', NULL, NULL, 105, NULL, 1, '2019-03-02 13:01:27', '2019-03-02 13:01:38'),
(109, 'میکروسکوپ و ذره بین', 'microscope-magnifier', 'microscope-magnifier', NULL, NULL, 105, NULL, 1, '2019-03-02 13:02:05', '2019-03-02 13:02:14'),
(110, 'دوربین دو چشمی و تک چشمی', 'binoculars', 'binoculars', NULL, NULL, 105, NULL, 1, '2019-03-02 13:19:43', '2019-03-02 13:19:43'),
(111, 'لوازم جانبی عکاسی و فیلم برداری', 'accessories', 'accessories', NULL, NULL, 105, NULL, 0, '2019-03-02 13:21:13', '2019-03-02 13:21:13'),
(112, 'کامپیوتر و تجهیزات جانبی', 'computer-parts', 'computer-parts', '1551802901.jpg', NULL, 63, NULL, 0, '2019-03-02 13:49:32', '2019-03-05 09:21:41'),
(113, 'تجهیزات ذخیره‌سازی اطلاعات', 'data-storage', 'data-storage', NULL, NULL, 112, NULL, 0, '2019-03-02 13:49:52', '2019-03-02 13:49:52'),
(114, 'تجهیزات شبکه و ارتباطات', 'network', 'network', NULL, NULL, 112, NULL, 0, '2019-03-02 13:50:10', '2019-03-02 13:50:10'),
(115, 'کامپیوترهای All-in-One', 'all-in-pc', 'all-in-pc', NULL, NULL, 112, NULL, 1, '2019-03-02 13:50:36', '2019-03-02 13:50:36'),
(116, 'کیس های اسمبل شده', 'assembled-cases', 'assembled-cases', NULL, NULL, 112, NULL, 0, '2019-03-02 13:50:57', '2019-03-02 13:50:57'),
(117, 'کامپیوترهای کوچک', 'mini-pc', 'mini-pc', NULL, NULL, 112, NULL, 1, '2019-03-02 13:58:18', '2019-03-02 13:58:18'),
(118, 'قطعات کامپیوتر', 'computer-devices', 'computer-devices', NULL, NULL, 112, NULL, 0, '2019-03-02 13:58:44', '2019-03-02 13:58:44'),
(119, 'نمایشگر (مانیتور)', 'monitor', 'monitor', NULL, NULL, 112, NULL, 1, '2019-03-02 14:00:44', '2019-03-02 14:05:04'),
(120, 'اسپیکر (بلندگو)', 'speaker', 'speaker', NULL, NULL, 112, NULL, 1, '2019-03-02 14:01:15', '2019-03-02 14:01:15'),
(121, 'درایو نوری', 'optical-drive', 'optical-drive', NULL, NULL, 112, NULL, 1, '2019-03-02 14:01:44', '2019-03-02 14:01:54'),
(122, 'تبلت و کتابخوان', 'tablet-ebook-reader', 'tablet-ebook-reader', '1551803988.jpg', NULL, 63, NULL, 1, '2019-03-02 14:13:00', '2019-03-05 09:39:48'),
(123, 'تبلت', 'tablet', 'tablet', '1551802734.jpg', NULL, 122, NULL, 0, '2019-03-02 14:13:31', '2019-03-05 09:38:51'),
(124, 'لنوو', 'filter_brand_6', 'filter_brand_6', NULL, NULL, 123, NULL, 0, '2019-03-02 14:14:07', '2019-03-02 14:14:07'),
(125, 'سامسونگ', 'filter_brand_8', 'filter_brand_8', NULL, NULL, 123, NULL, 0, '2019-03-02 14:14:47', '2019-03-02 14:14:47'),
(126, 'کتاب‌خوان', 'ebook-reader', 'ebook-reader', '1551803180.jpg', NULL, 122, NULL, 1, '2019-03-02 14:18:19', '2019-03-05 09:39:15'),
(127, 'لوازم جانبی تبلت', 'tablet-accessories', 'tablet-accessories', NULL, NULL, 122, NULL, 0, '2019-03-02 14:18:45', '2019-03-02 14:20:42'),
(128, 'رهیاب ماهواره‌ای', 'gps-navigator', 'gps-navigator', NULL, NULL, 122, NULL, 1, '2019-03-02 14:18:45', '2019-03-02 14:18:59'),
(129, 'ایسوس', 'filter_brand_9', 'filter_brand_9', NULL, NULL, 123, NULL, 0, '2019-03-02 14:19:45', '2019-03-02 14:19:45'),
(130, 'ماشین های اداری', 'office-machines', 'office-machines', '1551802943.jpg', NULL, 63, NULL, 0, '2019-03-02 14:30:18', '2019-03-05 09:22:23'),
(131, 'لوازم جانبی پرینتر', 'printer-accessories', 'printer-accessories', NULL, NULL, 130, NULL, 0, '2019-03-02 14:31:31', '2019-03-02 14:31:31'),
(132, 'تلفن، بی سیم و سانترال', 'telephone', 'telephone', NULL, NULL, 130, NULL, 0, '2019-03-02 14:32:31', '2019-03-02 14:32:31'),
(133, 'فکس', 'fax', 'fax', NULL, NULL, 130, NULL, 0, '2019-03-02 14:33:25', '2019-03-02 14:33:25'),
(134, 'پرینتر', 'printer', 'printer', NULL, NULL, 130, NULL, 0, '2019-03-02 14:33:56', '2019-03-02 14:33:56'),
(135, 'لیبل زن و لوازم جانبی', 'lable-printer-and-accesories', 'lable-printer-and-accesories', NULL, NULL, 130, NULL, 0, '2019-03-02 14:35:04', '2019-03-02 14:35:04'),
(136, 'اپل', 'filter_brand_9', 'filter_brand_9', NULL, NULL, 123, NULL, 0, '2019-03-02 14:36:16', '2019-03-02 14:36:16'),
(137, 'واقعیت مجازی', NULL, '', NULL, 'search_url', 63, NULL, 0, '2019-03-02 14:44:40', '2019-03-02 14:44:40'),
(138, 'مچ‌بند و ساعت هوشمند', NULL, '', NULL, 'search_url', 63, NULL, 0, '2019-03-02 14:46:17', '2019-03-02 14:46:17'),
(139, 'هدفون، هدست، هندزفری', NULL, '', NULL, 'search_url', 63, NULL, 0, '2019-03-02 14:46:59', '2019-03-02 14:46:59'),
(140, 'اسپیکر بلوتوث و با سیم', NULL, '', NULL, 'search_url', 63, NULL, 0, '2019-03-02 14:47:29', '2019-03-02 14:48:42'),
(141, 'کنسول بازی', 'game-console', 'game-console', '1551802998.jpg', NULL, 63, NULL, 0, '2019-03-02 14:50:03', '2019-03-05 09:23:18'),
(142, 'کنسول خانگی', 'gaming-consoles', 'gaming-consoles', NULL, NULL, 141, NULL, 0, '2019-03-02 14:50:36', '2019-03-02 14:50:36'),
(143, 'کنسول پرتابل', 'portable-gaming-consoles', 'portable-gaming-consoles', NULL, NULL, 141, NULL, 0, '2019-03-02 14:51:10', '2019-03-02 14:51:10'),
(144, 'لوازم جانبی کنسول بازی', 'gaming-console-accessories', 'gaming-console-accessories', NULL, NULL, 141, NULL, 0, '2019-03-02 14:51:40', '2019-07-22 00:48:44'),
(145, 'گیفت کارت', 'gift-card', 'gift-card', NULL, NULL, 141, NULL, 0, '2019-03-02 14:52:12', '2019-07-22 00:48:44'),
(148, 'کارت هدیه خرید از دیجی‌آنلاین', 'digi-gift-card', 'digi-gift-card', NULL, NULL, 63, NULL, 0, '2019-09-06 03:41:19', '2019-09-06 04:00:44'),
(149, 'لوازم آرایشی', 'beauty', 'beauty', '1568312527.jpg', NULL, 64, NULL, 0, '2019-09-12 09:04:03', '2019-09-12 09:22:07'),
(150, 'آرایش صورت', 'face', 'face', NULL, NULL, 149, NULL, 0, '2019-09-12 09:05:06', '2019-09-12 09:07:19'),
(151, 'آرایش چشم و ابرو', 'eye-and-eyebrow', 'eye-and-eyebrow', NULL, NULL, 149, NULL, 0, '2019-09-12 09:05:41', '2019-09-12 09:06:02'),
(152, 'آرایش لب', 'lip', 'lip', NULL, NULL, 149, NULL, 0, '2019-09-12 09:06:50', '2019-09-12 09:06:50'),
(153, 'لوازم بهداشتی', 'hair-clipper', 'hair-clipper', '1568312567.jpg', NULL, 64, NULL, 0, '2019-09-12 09:08:27', '2019-09-12 09:22:47'),
(154, 'کرم و مراقبت پوست', 'face-and-body-cream', 'face-and-body-cream', NULL, NULL, 153, NULL, 0, '2019-09-12 09:09:29', '2019-09-12 09:09:29'),
(155, 'شامپو و مراقبت مو', 'hair-care', 'hair-care', NULL, NULL, 153, NULL, 0, '2019-09-12 09:10:18', '2019-09-12 09:10:33'),
(156, 'بهداشت دهان و دندان', 'dental-hygienist', 'dental-hygienist', NULL, NULL, 153, NULL, 0, '2019-09-12 09:11:02', '2019-09-12 09:11:02'),
(157, 'بهداشت و مراقبت بدن', 'body-care', 'body-care', NULL, NULL, 153, NULL, 0, '2019-09-12 09:11:51', '2019-09-12 09:11:51'),
(158, 'ضد تعریق', 'anti-sweat', 'anti-sweat', NULL, NULL, 153, NULL, 0, '2019-09-12 09:12:18', '2019-09-12 09:12:18'),
(159, 'لوازم شخصی برقی', 'electrical-personal-care', 'electrical-personal-care', '1568312593.jpg', NULL, 64, NULL, 0, '2019-09-12 09:13:06', '2019-09-12 09:23:13'),
(160, 'ماشین اصلاح صورت', 'shaver', 'shaver', NULL, NULL, 159, NULL, 0, '2019-09-12 09:13:51', '2019-09-12 09:13:51'),
(161, 'ماشین اصلاح سر', 'hair-trimmer', 'hair-trimmer', NULL, NULL, 159, NULL, 0, '2019-09-12 09:14:24', '2019-09-12 09:14:24'),
(162, 'سشوار', 'hair-drier', 'hair-drier', NULL, NULL, 159, NULL, 0, '2019-09-12 09:15:03', '2019-09-12 09:15:03'),
(163, 'اصلاح بدن آقایان', 'body-groom', 'body-groom', NULL, NULL, 159, NULL, 0, '2019-09-12 09:15:36', '2019-09-12 09:15:36'),
(164, 'اصلاح بدن بانوان', 'epilator', 'epilator', NULL, NULL, 159, NULL, 0, '2019-09-12 09:16:07', '2019-09-12 09:16:07'),
(165, 'اصلاح موی گوش، بینی و ابرو', 'nose-clipping', 'nose-clipping', NULL, NULL, 159, NULL, 0, '2019-09-12 09:16:34', '2019-09-12 09:16:34'),
(166, 'برس پاک سازی', 'skin-care-accessories', 'skin-care-accessories', NULL, NULL, 159, NULL, 0, '2019-09-12 09:17:13', '2019-09-12 09:17:13'),
(167, 'اتو مو و حالت دهنده', 'hair-iron', 'hair-iron', NULL, NULL, 159, NULL, 0, '2019-09-12 09:17:45', '2019-09-12 09:17:45'),
(168, 'بیگودی و فر کننده', 'hair-shaping', 'hair-shaping', NULL, NULL, 159, NULL, 0, '2019-09-12 09:18:12', '2019-09-12 09:18:12'),
(169, 'مسواک برقی', 'electric-brusher', 'electric-brusher', NULL, NULL, 159, NULL, 0, '2019-09-12 09:18:36', '2019-09-12 09:18:36'),
(170, 'لیزر', 'personal-care', 'personal-care', NULL, NULL, 159, NULL, 0, '2019-09-12 09:19:16', '2019-09-12 09:19:16'),
(171, 'ست هدیه', 'gift-set', 'gift-set', NULL, NULL, 64, NULL, 0, '2019-09-12 09:19:52', '2019-09-12 09:19:52'),
(172, 'عطر، ادکلن، اسپری و ست', 'perfume-all', 'perfume-all', '1568312478.jpg', NULL, 64, NULL, 0, '2019-09-12 09:20:28', '2019-09-12 09:21:18'),
(173, 'مردانه', 'for-men', 'for-men', NULL, 'search/perfume-all?attribute[135][0]=138', 172, NULL, 0, '2019-09-12 09:24:46', '2019-10-17 05:23:14'),
(174, 'زنانه', 'feminine', 'feminine', NULL, NULL, 172, NULL, 0, '2019-09-12 09:25:24', '2019-09-12 09:25:24'),
(175, 'جیبی', 'pocket-perfumes', 'pocket-perfumes', NULL, NULL, 172, NULL, 0, '2019-09-12 09:26:12', '2019-09-12 09:26:12'),
(176, 'اسپری', 'spray', 'spray', NULL, NULL, 172, NULL, 0, '2019-09-12 09:26:37', '2019-09-12 09:26:37'),
(177, 'تجهیزات جانبی آرایشی', 'beauty-accesories', 'beauty-accesories', NULL, NULL, 149, NULL, 0, '2019-09-12 09:28:16', '2019-09-12 09:28:16'),
(178, 'مواد آرایش مو', 'hair-products', 'hair-products', NULL, NULL, 149, NULL, 0, '2019-09-12 09:29:02', '2019-09-12 09:29:02'),
(180, 'ابزار سلامت', 'health-care', 'health-care', '1568313408.jpg', NULL, 64, NULL, 0, '2019-09-12 09:36:48', '2019-09-12 09:36:48'),
(181, 'فشارسنج', 'sphygmomanometer', 'sphygmomanometer', NULL, NULL, 180, NULL, 0, '2019-09-12 09:37:19', '2019-09-12 09:37:19'),
(182, 'ترازو', 'digital-scale', 'digital-scale', NULL, NULL, 180, NULL, 0, '2019-09-12 09:37:48', '2019-09-12 09:37:48'),
(183, 'تب سنج و دماسنج', 'thermometers', 'thermometers', NULL, NULL, 180, NULL, 0, '2019-09-12 09:38:10', '2019-09-12 09:38:10'),
(184, 'تست قند خون', 'blood-sugar-meter', 'blood-sugar-meter', NULL, NULL, 180, NULL, 0, '2019-09-12 09:38:58', '2019-09-12 09:38:58'),
(185, 'نمایشگر ضربان قلب', 'heart-monitor', 'heart-monitor', NULL, NULL, 180, NULL, 0, '2019-09-12 09:39:19', '2019-09-12 09:39:19'),
(186, 'لوازم جانبی تست قند خون', 'blood-sugar-meter-accessories', 'blood-sugar-meter-accessories', NULL, NULL, 180, NULL, 0, '2019-09-12 09:39:47', '2019-09-12 09:39:47'),
(187, 'مراقبت کودکان', 'child-care', 'child-care', NULL, NULL, 180, NULL, 0, '2019-09-12 09:40:25', '2019-09-12 09:40:25'),
(188, 'مکمل درمان', 'treatment', 'treatment', NULL, NULL, 180, NULL, 0, '2019-09-12 09:40:57', '2019-09-12 09:40:57'),
(189, 'ماساژور', 'massager', 'massager', NULL, NULL, 180, NULL, 1, '2019-09-12 09:47:22', '2019-10-19 13:27:43'),
(190, 'مردانه', 'mens-apparel', 'mens-apparel', NULL, NULL, 66, NULL, 1, '2020-05-19 15:42:26', '2020-05-19 15:43:35'),
(191, 'لباس مردانه', 'men-clothing', 'men-clothing', NULL, NULL, 190, NULL, 0, '2020-05-19 15:49:20', '2020-05-19 15:49:20'),
(192, 'تی شرت و پولو شرت', 'men-tee-shirts-and-polos', 'men-tee-shirts-and-polos', NULL, NULL, 191, NULL, 0, '2020-05-19 15:50:56', '2020-05-19 15:50:56'),
(193, 'پیراهن', 'men-shirts', 'men-shirts', NULL, NULL, 191, NULL, 0, '2020-05-19 15:51:58', '2020-05-19 15:51:58'),
(194, 'شلوار', 'men-trousers-jumpsuits', 'men-trousers-jumpsuits', NULL, NULL, 191, NULL, 0, '2020-05-19 15:53:17', '2020-05-19 15:53:17'),
(195, 'کفش مردانه', 'men-shoes', 'men-shoes', NULL, NULL, 190, NULL, 0, '2020-05-19 15:55:29', '2020-05-19 15:55:29'),
(204, 'صوتی و تصویری', 'video-audio-entertainment', 'video-audio-entertainment', NULL, NULL, 67, NULL, 0, '2020-08-05 21:57:41', '2020-08-05 21:57:41'),
(205, 'تلویزیون', 'tv', 'tv', NULL, NULL, 204, NULL, 0, '2020-08-05 21:58:16', '2020-08-05 21:58:16'),
(206, 'دکوراتیو', 'decorative', 'decorative', NULL, NULL, 67, NULL, 0, '2020-08-10 10:03:25', '2020-08-10 10:03:25'),
(207, 'فرش ماشینی، دستبافت، تابلو', 'carpet', 'carpet', NULL, NULL, 67, NULL, 0, '2020-08-10 10:04:07', '2020-08-10 10:04:07'),
(208, 'لوازم برقی خانگی', 'home-appliance', 'home-appliance', NULL, NULL, 67, NULL, 0, '2020-08-10 10:05:00', '2020-08-10 10:05:00'),
(209, 'یخچال و فریزر', 'refrigerator-freezer', 'refrigerator-freezer', NULL, NULL, 208, NULL, 0, '2020-08-10 10:05:54', '2020-08-10 10:05:54');

-- --------------------------------------------------------

--
-- Table structure for table `category_common_questions`
--

CREATE TABLE `category_common_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category_common_questions`
--

INSERT INTO `category_common_questions` (`id`, `created_at`, `updated_at`, `deleted_at`, `title`, `icon`) VALUES
(1, '2020-04-24 12:52:39', '2020-04-24 13:07:01', NULL, 'ورود و ثبت نام', '1587748959.png'),
(2, '2020-04-25 09:38:12', '2020-04-25 09:38:12', NULL, 'روند ثبت سفارش', '1587823692.png'),
(3, '2020-04-25 09:38:35', '2020-11-29 18:56:17', NULL, 'پیگیری ارسال سفارش', '1587823715.png');

-- --------------------------------------------------------

--
-- Table structure for table `cat_brands`
--

CREATE TABLE `cat_brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cat_brands`
--

INSERT INTO `cat_brands` (`id`, `cat_id`, `brand_id`, `product_count`, `created_at`, `updated_at`) VALUES
(3, 87, 4, 3, '2020-01-16 15:08:39', '2020-02-26 06:12:36'),
(6, 87, 1, 6, '2020-01-17 10:21:17', '2020-03-25 11:35:19'),
(7, 97, 4, 1, NULL, NULL),
(8, 87, 14, 1, NULL, NULL),
(9, 87, 7, 1, NULL, NULL),
(10, 76, 4, 1, NULL, NULL),
(12, 77, 1, 5, '2020-03-24 11:29:00', '2020-03-27 02:36:58'),
(13, 98, 1, 3, '2020-03-25 05:09:04', '2020-03-25 11:41:42'),
(14, 98, 16, 1, '2020-05-01 09:52:20', '2020-05-01 09:52:20'),
(15, 98, 22, 1, '2020-05-09 03:28:23', '2020-05-09 03:28:23'),
(16, 193, 20, 2, '2020-05-20 04:36:33', '2020-05-21 12:01:04'),
(17, 115, 4, 1, '2020-05-21 10:34:35', '2020-05-21 10:34:35'),
(19, 209, 1, 1, '2020-08-10 10:13:33', '2020-08-10 10:13:33'),
(20, 205, 5, 2, '2020-12-05 20:43:06', '2020-12-05 21:27:13'),
(29, 205, 1, 1, '2020-12-05 21:13:48', '2020-12-05 21:22:33'),
(46, 73, 5, 1, '2020-12-05 21:41:15', '2020-12-05 21:41:15');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `province_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `normal_send_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `normal_send_price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `normal_min_order_price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `heavy_send_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `heavy_send_price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `heavy_min_order_price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `superHeavy_send_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `superHeavy_send_price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `superHeavy_min_order_price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `name`, `province_id`, `deleted_at`, `created_at`, `updated_at`, `normal_send_time`, `normal_send_price`, `normal_min_order_price`, `heavy_send_time`, `heavy_send_price`, `heavy_min_order_price`, `superHeavy_send_time`, `superHeavy_send_price`, `superHeavy_min_order_price`) VALUES
(2, 'تبریز', 1, NULL, '2019-06-29 01:29:12', '2020-08-17 11:47:48', '1', '5000', '100000', '3', '20000', '20000000', '', '', ''),
(3, 'پارس آباد مغان', 4, NULL, '2019-06-29 02:10:20', '2019-12-12 06:44:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'بیله سوار', 4, NULL, '2019-06-29 02:10:30', '2020-11-22 19:50:40', '', '', '', '', '', '', '', '', ''),
(19, 'جلفا', 1, NULL, '2020-09-28 14:23:32', '2020-09-28 14:23:44', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` smallint(6) NOT NULL DEFAULT 1,
  `cat_id` int(11) DEFAULT NULL,
  `position` smallint(6) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `deleted_at`, `created_at`, `updated_at`, `type`, `cat_id`, `position`) VALUES
(1, 'سفید', 'FFFFFF', NULL, '2019-02-11 13:29:00', '2019-02-11 13:29:00', 1, NULL, 0),
(2, 'مشکی', '000000', NULL, '2019-02-11 13:37:26', '2019-02-11 13:37:26', 1, NULL, 0),
(3, 'ابی روشن', '7ED0FF', NULL, '2019-02-11 13:40:40', '2019-02-11 15:10:31', 1, NULL, 0),
(4, 'صورتی', 'FF80AB', NULL, '2019-02-11 13:46:04', '2019-02-11 15:10:31', 1, NULL, 0),
(5, 'نقره ای', 'CFCFCF', NULL, '2019-02-24 15:06:41', '2019-02-24 15:06:41', 1, NULL, 0),
(6, 'طلایی', 'FFEA00', NULL, '2019-02-24 15:06:59', '2019-02-24 15:06:59', 1, NULL, 0),
(7, 'خاکسری', '9E9E9E', NULL, '2019-02-24 15:07:17', '2020-12-04 19:56:59', 1, NULL, 0),
(10, 's', NULL, NULL, NULL, '2020-05-20 04:29:21', 2, 191, 1),
(11, 'm', NULL, NULL, NULL, NULL, 2, 191, 2),
(12, 'L', NULL, NULL, NULL, NULL, 2, 191, 3),
(13, 'XL', NULL, NULL, NULL, NULL, 2, 191, 4),
(14, '2XL', NULL, NULL, NULL, NULL, 2, 191, 5),
(16, 'نارنجی', 'FFC033', NULL, '2020-12-04 19:57:27', '2020-12-04 19:57:33', 1, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `time` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `like` int(11) NOT NULL DEFAULT 0,
  `dislike` int(11) NOT NULL DEFAULT 0,
  `advantage` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `disadvantage` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `product_id`, `title`, `content`, `time`, `order_id`, `like`, `dislike`, `advantage`, `disadvantage`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 9, 12, 'iphone x', 'این گوشی حرف نداره فوق العاده ای هست بهترین محصول اپل اونایی که از سامسونگ یا سام هنگ تعریف میکنن هنوز این گوشی دستشون نگرفتن .خرید آن را توصیه کنیم احتمالاً هیچ خریداری از خرید آیفون 10 پشیمان نخواهد شد', 1580031948, NULL, 1, 2, 'با کیفیت و بدون حاشیه|[@#]|سخت افزار قدرتمند|[@#]|رابط کاربری با ژست های حرکتی بسیار خوب|[@#]|شارژ دهی خوب|[@#]|بلندگوی بلند و باکیفیت|[@#]|', 'برآمدگی دوربین|[@#]|نبود fast charge همراه گوشی|[@#]|', 1, NULL, '2020-01-26 06:15:48', '2020-02-21 07:19:09'),
(3, 10, 12, 'عالی و گرون', 'من خیلی وقته از گوشی های اپل استفاده می کنم و چ ون بهش عادت کردم دیگه سیستم عامل اندروید به نظرم جذاب نمیاد و دیگه مجبورم همین برند رو ارتقاء بدم و لی خوب این یه واقعیته که قیمتش خیلییییی گرون شده و دیگه نمیشه زود به زود مدل بالاتر گرفت.', 1580198647, NULL, 1, 0, 'ظاهر عالي|[@#]|امنيت بالا|[@#]|كيفيت دوربين|[@#]|', '', 1, NULL, '2020-01-28 04:34:07', '2020-01-28 14:35:38'),
(4, 9, 12, 'عالی', 'خیلی خوبه من که واقعا راضی ام', 1581355935, NULL, 0, 0, '', '', 1, NULL, '2020-02-10 14:02:15', '2020-02-10 14:02:32'),
(5, 9, 12, 'عالی', 'بنظرم کسی که ایراد به جز باطری بگیره ازین گوشی واقعا اشتباه میکنه.هیچ ایرادی نداره.البته تنها ایراد اینه که نرم افزارهای فارسی رو باید هزینه کنی نصب کنی که اونم بخاطر تحریم هاست وگرنه واقعا بی نقصهنمايشگر فرق العاده', 1581523280, NULL, 0, 0, 'نمايشگر فرق العاده|[@#]|پرسرعت|[@#]|ظريف|[@#]|زيبا|[@#]|خوش دست|[@#]|', '', 1, NULL, '2020-02-12 12:31:20', '2020-08-21 06:24:14'),
(8, 26, 12, 'عالی', 'از هر لحاظ فوی العاده هستش', 1600611573, NULL, 0, 0, '', '', 1, NULL, '2020-09-20 09:49:33', '2020-09-21 09:31:05');

-- --------------------------------------------------------

--
-- Table structure for table `comment_scores`
--

CREATE TABLE `comment_scores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `score1` smallint(6) DEFAULT NULL,
  `score2` smallint(6) DEFAULT NULL,
  `score3` smallint(6) DEFAULT NULL,
  `score4` smallint(6) DEFAULT NULL,
  `score5` smallint(6) DEFAULT NULL,
  `score6` smallint(6) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comment_scores`
--

INSERT INTO `comment_scores` (`id`, `comment_id`, `product_id`, `score1`, `score2`, `score3`, `score4`, `score5`, `score6`, `deleted_at`, `created_at`, `updated_at`, `status`) VALUES
(1, 2, 12, 4, 3, 4, 3, 4, 4, NULL, '2020-01-26 06:15:48', '2020-01-26 06:15:48', 1),
(2, 3, 12, 4, 3, 2, 4, 3, 2, NULL, '2020-01-28 04:34:07', '2020-01-28 04:34:07', 1),
(3, 4, 12, 4, 4, 4, 4, 4, 4, NULL, '2020-02-10 14:02:15', '2020-02-10 14:02:15', 1),
(4, 5, 12, 4, 3, 2, 4, 3, 2, NULL, '2020-02-12 12:31:20', '2020-02-12 12:31:20', 1),
(5, 7, 12, 2, 2, 2, 2, 2, 2, NULL, '2020-09-20 09:47:27', '2020-09-20 09:47:27', 0),
(6, 8, 12, 2, 2, 2, 2, 2, 2, NULL, '2020-09-20 09:49:33', '2020-09-20 09:49:33', 1);

-- --------------------------------------------------------

--
-- Table structure for table `commissions`
--

CREATE TABLE `commissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `percentage` double NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `commissions`
--

INSERT INTO `commissions` (`id`, `cat_id`, `brand_id`, `percentage`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 87, 4, 5, NULL, '2020-03-05 12:18:34', '2020-03-05 12:40:59'),
(2, 87, 1, 6, NULL, '2020-03-05 12:40:45', '2020-03-05 12:48:02'),
(3, 98, 4, 2, NULL, '2020-03-05 14:30:45', '2020-04-30 04:33:45');

-- --------------------------------------------------------

--
-- Table structure for table `common_questions`
--

CREATE TABLE `common_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `small_answer` text COLLATE utf8_unicode_ci NOT NULL,
  `answer` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `cat_id` int(11) NOT NULL,
  `pin` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `common_questions`
--

INSERT INTO `common_questions` (`id`, `created_at`, `updated_at`, `title`, `small_answer`, `answer`, `deleted_at`, `cat_id`, `pin`) VALUES
(1, '2020-04-24 13:35:06', '2020-04-25 11:38:01', 'چگونه میتوانم یک پروفایل ایجاد کنم؟', '<ul>\r\n	<li>در وب سایت روی گزینه &quot;ثبت نام&quot; کلیک کنید. میتوانید با استفاده از شماره موبایل ثبت نام خود را انجام دهید. (کد فعال سازی برایتان پیامک میشود .) بعد از وارد نمودن کد فعالسازی ، ثبت نام انجام می شود. سپس روی گزینه تکمیل اطلاعات کلیک و اطلاعات خود را تکمیل نمایید.</li>\r\n</ul>', '<p>\r\n<video controls=\"controls\"  preload=\"metadata\" src=\"https://dkstatics-public.digikala.com/digikala-video/100025881.mp4\" width=\"90%\">&nbsp;</video>\r\n</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>1. در وب سایت روی گزینه &quot;ثبت نام&quot; کلیک کنید.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/digikala/public/files/upload/1.png?_t=1587751453\" style=\"width:100%\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;2. میتوانید با استفاده از شماره موبایل ثبت نام خود را انجام دهید.&nbsp;کد فعال سازی برایتان پیامک میشود .</p>', NULL, 1, 1),
(2, '2020-04-25 11:29:26', '2020-11-29 21:37:16', 'برای خرید از دیجی‌کالا، حتما باید در سایت عضو باشم ؟', '<ul>\r\n	<li>بله. قبل از خرید میبایست از طریق شماره موبایل&nbsp; ثبت نام کنید.</li>\r\n</ul>', NULL, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `discount_codes`
--

CREATE TABLE `discount_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expiry_time` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL DEFAULT 0,
  `amount` int(11) NOT NULL,
  `number_usable` smallint(6) NOT NULL DEFAULT 1,
  `incredible_offers` smallint(6) NOT NULL DEFAULT 0,
  `amount_discount` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount_percent` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `discount_codes`
--

INSERT INTO `discount_codes` (`id`, `code`, `expiry_time`, `cat_id`, `amount`, `number_usable`, `incredible_offers`, `amount_discount`, `amount_percent`, `deleted_at`, `created_at`, `updated_at`) VALUES
(8, 'takhfif', 1605558599, 0, 2000000, 1, 0, '100000', '', NULL, '2020-11-14 16:03:25', '2020-11-14 16:03:25'),
(9, 'takhfif', 1605644999, 209, 20000000, 1, 0, '', '5', NULL, '2020-11-14 16:06:28', '2020-11-14 16:11:54');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(41, 'database', 'default', '{\"displayName\":\"App\\\\Notifications\\\\SendMessage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:24:\\\"ali.sedighi.tu@gmail.com\\\";}}s:12:\\\"notification\\\";O:29:\\\"App\\\\Notifications\\\\SendMessage\\\":15:{s:10:\\\"\\u0000*\\u0000message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:11:\\\"App\\\\Message\\\";s:2:\\\"id\\\";i:38;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:7:\\\"\\u0000*\\u0000name\\\";s:32:\\\"\\u0627\\u06cc\\u062f\\u0647 \\u067e\\u0631\\u062f\\u0627\\u0632\\u0627\\u0646 \\u062c\\u0648\\u0627\\u0646\\\";s:6:\\\"\\u0000*\\u0000url\\\";s:31:\\\"seller.shop.com\\/message\\/38\\/show\\\";s:12:\\\"\\u0000*\\u0000parent_id\\\";i:0;s:8:\\\"\\u0000*\\u0000label\\\";s:14:\\\"\\u0641\\u0631\\u0648\\u0634\\u0646\\u062f\\u0647\\\";s:9:\\\"\\u0000*\\u0000mobile\\\";s:11:\\\"09141592083\\\";s:2:\\\"id\\\";s:36:\\\"ec6a2129-0d0f-406f-8e44-9ddb8a289b8c\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Swift_TransportException: Failed to authenticate on SMTP server with username \"ali.sedighi.tu@gmail.com\" using 3 possible authenticators. Authenticator LOGIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials 17sm152334wmo.2 - gsmtp\r\n\". Authenticator PLAIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials 17sm152334wmo.2 - gsmtp\r\n\". Authenticator XOAUTH2 returned Expected response code 250 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials 17sm152334wmo.2 - gsmtp\r\n\". in /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/Esmtp/AuthHandler.php:191\nStack trace:\n#0 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/EsmtpTransport.php(371): Swift_Transport_Esmtp_AuthHandler->afterEhlo(Object(Swift_SmtpTransport))\n#1 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(148): Swift_Transport_EsmtpTransport->doHeloCommand()\n#2 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#3 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(486): Swift_Mailer->send(Object(Swift_Message), Array)\n#4 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(261): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#5 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Notifications/Channels/MailChannel.php(65): Illuminate\\Mail\\Mailer->send(Object(Illuminate\\Support\\HtmlString), Array, Object(Closure))\n#6 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Notifications/NotificationSender.php(146): Illuminate\\Notifications\\Channels\\MailChannel->send(Object(Illuminate\\Notifications\\AnonymousNotifiable), Object(App\\Notifications\\SendMessage))\n#7 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Notifications/NotificationSender.php(105): Illuminate\\Notifications\\NotificationSender->sendToNotifiable(Object(Illuminate\\Notifications\\AnonymousNotifiable), \'70ceb58e-a43f-4...\', Object(App\\Notifications\\SendMessage), \'mail\')\n#8 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Support/Traits/Localizable.php(19): Illuminate\\Notifications\\NotificationSender->Illuminate\\Notifications\\{closure}()\n#9 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Notifications/NotificationSender.php(107): Illuminate\\Notifications\\NotificationSender->withLocale(NULL, Object(Closure))\n#10 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Notifications/ChannelManager.php(54): Illuminate\\Notifications\\NotificationSender->sendNow(Array, Object(App\\Notifications\\SendMessage), Array)\n#11 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Notifications/SendQueuedNotifications.php(74): Illuminate\\Notifications\\ChannelManager->sendNow(Object(Illuminate\\Notifications\\AnonymousNotifiable), Object(App\\Notifications\\SendMessage), Array)\n#12 [internal function]: Illuminate\\Notifications\\SendQueuedNotifications->handle(Object(Illuminate\\Notifications\\ChannelManager))\n#13 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#14 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#15 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#16 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#17 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#18 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#19 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Notifications\\SendQueuedNotifications))\n#20 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Notifications\\SendQueuedNotifications))\n#21 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#22 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Notifications\\SendQueuedNotifications), false)\n#23 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Notifications\\SendQueuedNotifications))\n#24 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Notifications\\SendQueuedNotifications))\n#25 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#26 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Notifications\\SendQueuedNotifications))\n#27 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#28 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#29 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(314): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#30 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(134): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#31 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#32 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#33 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#34 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#35 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#36 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#37 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#38 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#39 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call(Array)\n#40 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#41 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#42 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(1001): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(271): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(147): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 /Applications/XAMPP/xamppfiles/htdocs/digikala/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 {main}', '2020-04-22 13:50:18'),
(42, 'database', 'default', '{\"displayName\":\"App\\\\Mail\\\\ProductStatus\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:22:\\\"App\\\\Mail\\\\ProductStatus\\\":26:{s:13:\\\"product_title\\\";s:37:\\\"\\u067e\\u06cc\\u0631\\u0627\\u0647\\u0646 \\u0645\\u0631\\u062f\\u0627\\u0646\\u0647 \\u06a9\\u062f M02247\\\";s:14:\\\"product_status\\\";s:1:\\\"0\\\";s:7:\\\"message\\\";s:0:\\\"\\\";s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:24:\\\"ali.sedighi.tu@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 'Swift_TransportException: Failed to authenticate on SMTP server with username \"ali.sedighi.tu@gmail.com\" using 3 possible authenticators. Authenticator LOGIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials r11sm10189546wma.35 - gsmtp\r\n\". Authenticator PLAIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials r11sm10189546wma.35 - gsmtp\r\n\". Authenticator XOAUTH2 returned Expected response code 250 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials r11sm10189546wma.35 - gsmtp\r\n\". in /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/Esmtp/AuthHandler.php:191\nStack trace:\n#0 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/EsmtpTransport.php(371): Swift_Transport_Esmtp_AuthHandler->afterEhlo(Object(Swift_SmtpTransport))\n#1 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(148): Swift_Transport_EsmtpTransport->doHeloCommand()\n#2 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#3 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(486): Swift_Mailer->send(Object(Swift_Message), Array)\n#4 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(261): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#5 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(159): Illuminate\\Mail\\Mailer->send(Object(Illuminate\\Support\\HtmlString), Array, Object(Closure))\n#6 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Support/Traits/Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#7 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(160): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#8 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Mail/SendQueuedMailable.php(52): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#9 [internal function]: Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\Mailer))\n#10 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#11 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#12 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#13 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#14 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#15 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#16 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#17 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#18 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#19 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#20 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(130): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#21 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#22 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#23 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#24 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#25 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#26 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(314): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#27 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(134): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#28 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#29 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#30 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#31 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#32 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#33 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#34 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#35 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#36 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call(Array)\n#37 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#38 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#39 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(1001): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(271): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(147): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 /Applications/XAMPP/xamppfiles/htdocs/digikala/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 {main}', '2020-05-22 14:16:27'),
(43, 'database', 'default', '{\"displayName\":\"App\\\\Notifications\\\\SendSms\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:29;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:25:\\\"App\\\\Notifications\\\\SendSms\\\":11:{s:16:\\\"\\u0000*\\u0000mobile_number\\\";s:11:\\\"09196211235\\\";s:10:\\\"\\u0000*\\u0000message\\\";s:46:\\\"\\u062f\\u06cc\\u062c\\u06cc \\u0622\\u0646\\u0644\\u0627\\u06cc\\u0646\\n\\u06a9\\u062f \\u062a\\u0627\\u06cc\\u06cc\\u062f : 535710\\\";s:2:\\\"id\\\";s:36:\\\"28571dfc-f6a1-43f2-8594-77d77f31e529\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:23:\\\"App\\\\Channels\\\\SmsChannel\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\User]. in /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php:470\nStack trace:\n#0 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesAndRestoresModelIdentifiers.php(102): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesAndRestoresModelIdentifiers.php(57): Illuminate\\Notifications\\SendQueuedNotifications->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesModels.php(45): Illuminate\\Notifications\\SendQueuedNotifications->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: Illuminate\\Notifications\\SendQueuedNotifications->__wakeup()\n#4 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(53): unserialize(\'O:48:\"Illuminat...\')\n#5 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#6 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#7 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(314): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#8 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(134): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#9 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#11 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#12 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#13 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call(Array)\n#18 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#20 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(1001): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(271): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(147): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 /Applications/XAMPP/xamppfiles/htdocs/digikala/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#26 {main}', '2020-06-12 08:01:55'),
(44, 'database', 'default', '{\"displayName\":\"App\\\\Notifications\\\\SendSms\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:30;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:25:\\\"App\\\\Notifications\\\\SendSms\\\":11:{s:16:\\\"\\u0000*\\u0000mobile_number\\\";s:11:\\\"09149201010\\\";s:10:\\\"\\u0000*\\u0000message\\\";s:46:\\\"\\u062f\\u06cc\\u062c\\u06cc \\u0622\\u0646\\u0644\\u0627\\u06cc\\u0646\\n\\u06a9\\u062f \\u062a\\u0627\\u06cc\\u06cc\\u062f : 956148\\\";s:2:\\\"id\\\";s:36:\\\"05c4d66e-8707-4a4a-85c3-c10e8b8584d7\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:23:\\\"App\\\\Channels\\\\SmsChannel\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\User]. in /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php:470\nStack trace:\n#0 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesAndRestoresModelIdentifiers.php(102): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesAndRestoresModelIdentifiers.php(57): Illuminate\\Notifications\\SendQueuedNotifications->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesModels.php(45): Illuminate\\Notifications\\SendQueuedNotifications->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: Illuminate\\Notifications\\SendQueuedNotifications->__wakeup()\n#4 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(53): unserialize(\'O:48:\"Illuminat...\')\n#5 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#6 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#7 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(314): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#8 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(134): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#9 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#11 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#12 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#13 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call(Array)\n#18 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#20 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(1001): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(271): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(147): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 /Applications/XAMPP/xamppfiles/htdocs/digikala/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#26 {main}', '2020-06-12 08:01:55'),
(45, 'database', 'default', '{\"displayName\":\"App\\\\Notifications\\\\SendSms\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:31;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:25:\\\"App\\\\Notifications\\\\SendSms\\\":11:{s:16:\\\"\\u0000*\\u0000mobile_number\\\";s:11:\\\"09141598080\\\";s:10:\\\"\\u0000*\\u0000message\\\";s:46:\\\"\\u062f\\u06cc\\u062c\\u06cc \\u0622\\u0646\\u0644\\u0627\\u06cc\\u0646\\n\\u06a9\\u062f \\u062a\\u0627\\u06cc\\u06cc\\u062f : 656950\\\";s:2:\\\"id\\\";s:36:\\\"bcb6551c-50a0-48fc-9278-459059fb815d\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:23:\\\"App\\\\Channels\\\\SmsChannel\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\User]. in /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php:470\nStack trace:\n#0 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesAndRestoresModelIdentifiers.php(102): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesAndRestoresModelIdentifiers.php(57): Illuminate\\Notifications\\SendQueuedNotifications->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesModels.php(45): Illuminate\\Notifications\\SendQueuedNotifications->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: Illuminate\\Notifications\\SendQueuedNotifications->__wakeup()\n#4 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(53): unserialize(\'O:48:\"Illuminat...\')\n#5 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#6 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#7 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(314): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#8 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(134): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#9 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#11 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#12 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#13 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call(Array)\n#18 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#20 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(1001): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(271): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(147): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 /Applications/XAMPP/xamppfiles/htdocs/digikala/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#26 {main}', '2020-08-27 12:15:55');
INSERT INTO `failed_jobs` (`id`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(46, 'database', 'default', '{\"displayName\":\"App\\\\Notifications\\\\SendSms\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:34;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:25:\\\"App\\\\Notifications\\\\SendSms\\\":11:{s:16:\\\"\\u0000*\\u0000mobile_number\\\";s:11:\\\"09141598080\\\";s:10:\\\"\\u0000*\\u0000message\\\";s:46:\\\"\\u062f\\u06cc\\u062c\\u06cc \\u0622\\u0646\\u0644\\u0627\\u06cc\\u0646\\n\\u06a9\\u062f \\u062a\\u0627\\u06cc\\u06cc\\u062f : 195130\\\";s:2:\\\"id\\\";s:36:\\\"35ac7cfd-e430-4509-b1ef-e6cc00680635\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:23:\\\"App\\\\Channels\\\\SmsChannel\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\User]. in /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php:470\nStack trace:\n#0 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesAndRestoresModelIdentifiers.php(102): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesAndRestoresModelIdentifiers.php(57): Illuminate\\Notifications\\SendQueuedNotifications->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesModels.php(45): Illuminate\\Notifications\\SendQueuedNotifications->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: Illuminate\\Notifications\\SendQueuedNotifications->__wakeup()\n#4 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(53): unserialize(\'O:48:\"Illuminat...\')\n#5 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#6 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#7 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(314): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#8 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(134): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#9 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#11 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#12 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#13 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call(Array)\n#18 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#20 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(1001): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(271): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(147): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 /Applications/XAMPP/xamppfiles/htdocs/digikala/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#26 {main}', '2020-08-27 12:15:55'),
(47, 'database', 'default', '{\"displayName\":\"App\\\\Notifications\\\\SendSms\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:35;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:25:\\\"App\\\\Notifications\\\\SendSms\\\":11:{s:16:\\\"\\u0000*\\u0000mobile_number\\\";s:11:\\\"09141598080\\\";s:10:\\\"\\u0000*\\u0000message\\\";s:46:\\\"\\u062f\\u06cc\\u062c\\u06cc \\u0622\\u0646\\u0644\\u0627\\u06cc\\u0646\\n\\u06a9\\u062f \\u062a\\u0627\\u06cc\\u06cc\\u062f : 882212\\\";s:2:\\\"id\\\";s:36:\\\"01cf49e9-0c85-4e50-a767-450a75f709c3\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:23:\\\"App\\\\Channels\\\\SmsChannel\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\User]. in /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php:470\nStack trace:\n#0 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesAndRestoresModelIdentifiers.php(102): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesAndRestoresModelIdentifiers.php(57): Illuminate\\Notifications\\SendQueuedNotifications->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesModels.php(45): Illuminate\\Notifications\\SendQueuedNotifications->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: Illuminate\\Notifications\\SendQueuedNotifications->__wakeup()\n#4 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(53): unserialize(\'O:48:\"Illuminat...\')\n#5 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#6 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#7 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(314): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#8 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(134): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#9 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#11 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#12 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#13 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call(Array)\n#18 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#20 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(1001): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(271): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(147): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 /Applications/XAMPP/xamppfiles/htdocs/digikala/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#26 {main}', '2020-08-27 12:15:55'),
(48, 'database', 'default', '{\"displayName\":\"App\\\\Notifications\\\\SendSms\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:37;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:25:\\\"App\\\\Notifications\\\\SendSms\\\":11:{s:16:\\\"\\u0000*\\u0000mobile_number\\\";s:11:\\\"09141101020\\\";s:10:\\\"\\u0000*\\u0000message\\\";s:46:\\\"\\u062f\\u06cc\\u062c\\u06cc \\u0622\\u0646\\u0644\\u0627\\u06cc\\u0646\\n\\u06a9\\u062f \\u062a\\u0627\\u06cc\\u06cc\\u062f : 643691\\\";s:2:\\\"id\\\";s:36:\\\"281982cb-b843-4091-b654-b90613862a41\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:23:\\\"App\\\\Channels\\\\SmsChannel\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\User]. in /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php:470\nStack trace:\n#0 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesAndRestoresModelIdentifiers.php(102): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesAndRestoresModelIdentifiers.php(57): Illuminate\\Notifications\\SendQueuedNotifications->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesModels.php(45): Illuminate\\Notifications\\SendQueuedNotifications->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: Illuminate\\Notifications\\SendQueuedNotifications->__wakeup()\n#4 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(53): unserialize(\'O:48:\"Illuminat...\')\n#5 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#6 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#7 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(314): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#8 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(134): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#9 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#11 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#12 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#13 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call(Array)\n#18 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#20 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(1001): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(271): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(147): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 /Applications/XAMPP/xamppfiles/htdocs/digikala/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#26 {main}', '2020-08-27 16:45:57'),
(49, 'database', 'default', '{\"displayName\":\"App\\\\Notifications\\\\SendSms\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:40;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:25:\\\"App\\\\Notifications\\\\SendSms\\\":11:{s:16:\\\"\\u0000*\\u0000mobile_number\\\";s:11:\\\"09141593083\\\";s:10:\\\"\\u0000*\\u0000message\\\";i:303922;s:2:\\\"id\\\";s:36:\\\"e597f04f-d64a-4085-87a8-74ac927860d1\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:23:\\\"App\\\\Channels\\\\SmsChannel\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\User]. in /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php:470\nStack trace:\n#0 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesAndRestoresModelIdentifiers.php(102): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesAndRestoresModelIdentifiers.php(57): Illuminate\\Notifications\\SendQueuedNotifications->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesModels.php(45): Illuminate\\Notifications\\SendQueuedNotifications->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: Illuminate\\Notifications\\SendQueuedNotifications->__wakeup()\n#4 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(53): unserialize(\'O:48:\"Illuminat...\')\n#5 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#6 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#7 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(314): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#8 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(134): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#9 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#11 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#12 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#13 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call(Array)\n#18 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#20 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(1001): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(271): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(147): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 /Applications/XAMPP/xamppfiles/htdocs/digikala/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#26 {main}', '2020-08-27 16:45:57'),
(50, 'database', 'default', '{\"displayName\":\"App\\\\Notifications\\\\SendSms\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:41;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:25:\\\"App\\\\Notifications\\\\SendSms\\\":11:{s:16:\\\"\\u0000*\\u0000mobile_number\\\";s:11:\\\"09141593083\\\";s:10:\\\"\\u0000*\\u0000message\\\";i:163128;s:2:\\\"id\\\";s:36:\\\"7a4602e6-aed3-4aa1-a5d6-f05b071b61fb\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:23:\\\"App\\\\Channels\\\\SmsChannel\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\User]. in /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php:470\nStack trace:\n#0 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesAndRestoresModelIdentifiers.php(102): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesAndRestoresModelIdentifiers.php(57): Illuminate\\Notifications\\SendQueuedNotifications->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesModels.php(45): Illuminate\\Notifications\\SendQueuedNotifications->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: Illuminate\\Notifications\\SendQueuedNotifications->__wakeup()\n#4 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(53): unserialize(\'O:48:\"Illuminat...\')\n#5 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#6 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#7 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(314): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#8 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(134): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#9 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#11 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#12 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#13 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call(Array)\n#18 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#20 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(1001): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(271): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(147): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 /Applications/XAMPP/xamppfiles/htdocs/digikala/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#26 {main}', '2020-08-27 16:45:57'),
(51, 'database', 'default', '{\"displayName\":\"App\\\\Notifications\\\\SendSms\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:42;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:25:\\\"App\\\\Notifications\\\\SendSms\\\":11:{s:16:\\\"\\u0000*\\u0000mobile_number\\\";s:11:\\\"09141593083\\\";s:10:\\\"\\u0000*\\u0000message\\\";i:573110;s:2:\\\"id\\\";s:36:\\\"8e149938-87e3-44fa-9dbd-57f42f5656d7\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:23:\\\"App\\\\Channels\\\\SmsChannel\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\User]. in /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php:470\nStack trace:\n#0 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesAndRestoresModelIdentifiers.php(102): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesAndRestoresModelIdentifiers.php(57): Illuminate\\Notifications\\SendQueuedNotifications->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesModels.php(45): Illuminate\\Notifications\\SendQueuedNotifications->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: Illuminate\\Notifications\\SendQueuedNotifications->__wakeup()\n#4 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(53): unserialize(\'O:48:\"Illuminat...\')\n#5 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#6 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#7 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(314): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#8 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(134): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#9 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#11 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#12 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#13 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call(Array)\n#18 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#20 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(1001): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(271): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(147): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 /Applications/XAMPP/xamppfiles/htdocs/digikala/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#26 {main}', '2020-08-27 16:45:57');
INSERT INTO `failed_jobs` (`id`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(52, 'database', 'default', '{\"displayName\":\"App\\\\Notifications\\\\SendSms\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:42;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:25:\\\"App\\\\Notifications\\\\SendSms\\\":11:{s:16:\\\"\\u0000*\\u0000mobile_number\\\";s:11:\\\"09141593083\\\";s:10:\\\"\\u0000*\\u0000message\\\";i:716308;s:2:\\\"id\\\";s:36:\\\"2c7eec07-9e23-4323-b402-d9356960683a\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:23:\\\"App\\\\Channels\\\\SmsChannel\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\User]. in /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php:470\nStack trace:\n#0 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesAndRestoresModelIdentifiers.php(102): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesAndRestoresModelIdentifiers.php(57): Illuminate\\Notifications\\SendQueuedNotifications->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesModels.php(45): Illuminate\\Notifications\\SendQueuedNotifications->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: Illuminate\\Notifications\\SendQueuedNotifications->__wakeup()\n#4 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(53): unserialize(\'O:48:\"Illuminat...\')\n#5 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#6 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#7 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(314): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#8 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(134): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#9 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#11 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#12 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#13 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call(Array)\n#18 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#20 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(1001): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(271): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(147): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 /Applications/XAMPP/xamppfiles/htdocs/digikala/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#26 {main}', '2020-08-27 16:45:57'),
(53, 'database', 'default', '{\"displayName\":\"App\\\\Notifications\\\\SendSms\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:42;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:25:\\\"App\\\\Notifications\\\\SendSms\\\":11:{s:16:\\\"\\u0000*\\u0000mobile_number\\\";s:11:\\\"09141593083\\\";s:10:\\\"\\u0000*\\u0000message\\\";i:202471;s:2:\\\"id\\\";s:36:\\\"dc808d1b-a93c-475c-a053-07e7fc215493\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:23:\\\"App\\\\Channels\\\\SmsChannel\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\User]. in /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php:470\nStack trace:\n#0 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesAndRestoresModelIdentifiers.php(102): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesAndRestoresModelIdentifiers.php(57): Illuminate\\Notifications\\SendQueuedNotifications->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesModels.php(45): Illuminate\\Notifications\\SendQueuedNotifications->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: Illuminate\\Notifications\\SendQueuedNotifications->__wakeup()\n#4 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(53): unserialize(\'O:48:\"Illuminat...\')\n#5 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#6 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#7 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(314): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#8 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(134): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#9 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#11 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#12 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#13 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call(Array)\n#18 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#20 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(1001): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(271): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(147): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 /Applications/XAMPP/xamppfiles/htdocs/digikala/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#26 {main}', '2020-08-27 16:45:57'),
(54, 'database', 'default', '{\"displayName\":\"App\\\\Notifications\\\\SendSms\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:42;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:25:\\\"App\\\\Notifications\\\\SendSms\\\":11:{s:16:\\\"\\u0000*\\u0000mobile_number\\\";s:11:\\\"09141593083\\\";s:10:\\\"\\u0000*\\u0000message\\\";i:631016;s:2:\\\"id\\\";s:36:\\\"05a2a840-77d1-4483-9dde-8ceee6c958e4\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:23:\\\"App\\\\Channels\\\\SmsChannel\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\User]. in /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php:470\nStack trace:\n#0 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesAndRestoresModelIdentifiers.php(102): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesAndRestoresModelIdentifiers.php(57): Illuminate\\Notifications\\SendQueuedNotifications->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesModels.php(45): Illuminate\\Notifications\\SendQueuedNotifications->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: Illuminate\\Notifications\\SendQueuedNotifications->__wakeup()\n#4 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(53): unserialize(\'O:48:\"Illuminat...\')\n#5 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#6 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#7 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(314): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#8 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(134): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#9 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#11 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#12 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#13 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call(Array)\n#18 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#20 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(1001): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(271): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(147): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 /Applications/XAMPP/xamppfiles/htdocs/digikala/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#26 {main}', '2020-08-27 16:45:57'),
(55, 'database', 'default', '{\"displayName\":\"App\\\\Notifications\\\\SendSms\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:42;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:25:\\\"App\\\\Notifications\\\\SendSms\\\":11:{s:16:\\\"\\u0000*\\u0000mobile_number\\\";s:11:\\\"09141593083\\\";s:10:\\\"\\u0000*\\u0000message\\\";i:796104;s:2:\\\"id\\\";s:36:\\\"32662098-839e-4fbb-a678-2f7470ba0a40\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:23:\\\"App\\\\Channels\\\\SmsChannel\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\User]. in /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php:470\nStack trace:\n#0 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesAndRestoresModelIdentifiers.php(102): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesAndRestoresModelIdentifiers.php(57): Illuminate\\Notifications\\SendQueuedNotifications->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesModels.php(45): Illuminate\\Notifications\\SendQueuedNotifications->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: Illuminate\\Notifications\\SendQueuedNotifications->__wakeup()\n#4 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(53): unserialize(\'O:48:\"Illuminat...\')\n#5 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#6 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#7 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(314): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#8 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(134): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#9 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#11 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#12 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#13 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call(Array)\n#18 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#20 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(1001): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(271): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(147): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 /Applications/XAMPP/xamppfiles/htdocs/digikala/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#26 {main}', '2020-08-27 16:45:57'),
(56, 'database', 'default', '{\"displayName\":\"App\\\\Notifications\\\\SendSms\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:42;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:25:\\\"App\\\\Notifications\\\\SendSms\\\":11:{s:16:\\\"\\u0000*\\u0000mobile_number\\\";s:11:\\\"09141593083\\\";s:10:\\\"\\u0000*\\u0000message\\\";i:752839;s:2:\\\"id\\\";s:36:\\\"4cae3fd0-7538-4515-9c6c-6a1af2b7b3d6\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:23:\\\"App\\\\Channels\\\\SmsChannel\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\User]. in /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php:470\nStack trace:\n#0 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesAndRestoresModelIdentifiers.php(102): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesAndRestoresModelIdentifiers.php(57): Illuminate\\Notifications\\SendQueuedNotifications->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesModels.php(45): Illuminate\\Notifications\\SendQueuedNotifications->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: Illuminate\\Notifications\\SendQueuedNotifications->__wakeup()\n#4 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(53): unserialize(\'O:48:\"Illuminat...\')\n#5 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#6 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#7 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(314): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#8 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(134): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#9 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#11 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#12 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#13 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call(Array)\n#18 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#20 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(1001): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(271): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(147): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 /Applications/XAMPP/xamppfiles/htdocs/digikala/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#26 {main}', '2020-08-27 16:45:57'),
(57, 'database', 'default', '{\"displayName\":\"App\\\\Notifications\\\\SendSms\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:42;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:25:\\\"App\\\\Notifications\\\\SendSms\\\":11:{s:16:\\\"\\u0000*\\u0000mobile_number\\\";s:11:\\\"09141593083\\\";s:10:\\\"\\u0000*\\u0000message\\\";i:637038;s:2:\\\"id\\\";s:36:\\\"326c9ee8-b86b-448b-a244-718954396dfc\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:23:\\\"App\\\\Channels\\\\SmsChannel\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\User]. in /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php:470\nStack trace:\n#0 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesAndRestoresModelIdentifiers.php(102): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesAndRestoresModelIdentifiers.php(57): Illuminate\\Notifications\\SendQueuedNotifications->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesModels.php(45): Illuminate\\Notifications\\SendQueuedNotifications->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: Illuminate\\Notifications\\SendQueuedNotifications->__wakeup()\n#4 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(53): unserialize(\'O:48:\"Illuminat...\')\n#5 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#6 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#7 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(314): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#8 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(134): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#9 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#11 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#12 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#13 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call(Array)\n#18 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#20 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(1001): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(271): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(147): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 /Applications/XAMPP/xamppfiles/htdocs/digikala/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#26 {main}', '2020-08-27 16:45:57');
INSERT INTO `failed_jobs` (`id`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(58, 'database', 'default', '{\"displayName\":\"App\\\\Notifications\\\\SendSms\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:42;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:25:\\\"App\\\\Notifications\\\\SendSms\\\":11:{s:16:\\\"\\u0000*\\u0000mobile_number\\\";s:11:\\\"09141593083\\\";s:10:\\\"\\u0000*\\u0000message\\\";i:674460;s:2:\\\"id\\\";s:36:\\\"0e6ee339-2a67-4507-b6b3-d7501d7482f8\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:23:\\\"App\\\\Channels\\\\SmsChannel\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\User]. in /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php:470\nStack trace:\n#0 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesAndRestoresModelIdentifiers.php(102): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesAndRestoresModelIdentifiers.php(57): Illuminate\\Notifications\\SendQueuedNotifications->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesModels.php(45): Illuminate\\Notifications\\SendQueuedNotifications->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: Illuminate\\Notifications\\SendQueuedNotifications->__wakeup()\n#4 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(53): unserialize(\'O:48:\"Illuminat...\')\n#5 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#6 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#7 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(314): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#8 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(134): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#9 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#11 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#12 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#13 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call(Array)\n#18 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#20 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(1001): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(271): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(147): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 /Applications/XAMPP/xamppfiles/htdocs/digikala/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#26 {main}', '2020-08-27 16:45:57'),
(59, 'database', 'default', '{\"displayName\":\"App\\\\Notifications\\\\SendSms\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:42;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:25:\\\"App\\\\Notifications\\\\SendSms\\\":11:{s:16:\\\"\\u0000*\\u0000mobile_number\\\";s:11:\\\"09141593083\\\";s:10:\\\"\\u0000*\\u0000message\\\";i:740044;s:2:\\\"id\\\";s:36:\\\"3806e791-420b-473b-9604-99dd774f81b3\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:23:\\\"App\\\\Channels\\\\SmsChannel\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\User]. in /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php:470\nStack trace:\n#0 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesAndRestoresModelIdentifiers.php(102): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesAndRestoresModelIdentifiers.php(57): Illuminate\\Notifications\\SendQueuedNotifications->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesModels.php(45): Illuminate\\Notifications\\SendQueuedNotifications->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: Illuminate\\Notifications\\SendQueuedNotifications->__wakeup()\n#4 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(53): unserialize(\'O:48:\"Illuminat...\')\n#5 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#6 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#7 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(314): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#8 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(134): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#9 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#11 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#12 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#13 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call(Array)\n#18 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#20 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(1001): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(271): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(147): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 /Applications/XAMPP/xamppfiles/htdocs/digikala/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#26 {main}', '2020-08-27 16:45:57'),
(60, 'database', 'default', '{\"displayName\":\"App\\\\Notifications\\\\SendSms\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:42;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:25:\\\"App\\\\Notifications\\\\SendSms\\\":11:{s:16:\\\"\\u0000*\\u0000mobile_number\\\";s:11:\\\"09141593083\\\";s:10:\\\"\\u0000*\\u0000message\\\";i:437251;s:2:\\\"id\\\";s:36:\\\"a2779038-f7bb-4f64-92e5-c04e9e63f4e1\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:23:\\\"App\\\\Channels\\\\SmsChannel\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\User]. in /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php:470\nStack trace:\n#0 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesAndRestoresModelIdentifiers.php(102): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesAndRestoresModelIdentifiers.php(57): Illuminate\\Notifications\\SendQueuedNotifications->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesModels.php(45): Illuminate\\Notifications\\SendQueuedNotifications->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: Illuminate\\Notifications\\SendQueuedNotifications->__wakeup()\n#4 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(53): unserialize(\'O:48:\"Illuminat...\')\n#5 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#6 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#7 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(314): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#8 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(134): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#9 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#11 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#12 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#13 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call(Array)\n#18 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#20 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(1001): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(271): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(147): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 /Applications/XAMPP/xamppfiles/htdocs/digikala/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#26 {main}', '2020-08-27 16:45:57'),
(61, 'database', 'default', '{\"displayName\":\"App\\\\Notifications\\\\SendSms\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:43;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:25:\\\"App\\\\Notifications\\\\SendSms\\\":11:{s:16:\\\"\\u0000*\\u0000mobile_number\\\";s:11:\\\"09141591515\\\";s:10:\\\"\\u0000*\\u0000message\\\";i:249893;s:2:\\\"id\\\";s:36:\\\"df97607e-a8a4-4931-b2f1-b86cfe6d56fe\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:23:\\\"App\\\\Channels\\\\SmsChannel\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\User]. in /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php:470\nStack trace:\n#0 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesAndRestoresModelIdentifiers.php(102): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesAndRestoresModelIdentifiers.php(57): Illuminate\\Notifications\\SendQueuedNotifications->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesModels.php(45): Illuminate\\Notifications\\SendQueuedNotifications->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: Illuminate\\Notifications\\SendQueuedNotifications->__wakeup()\n#4 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(53): unserialize(\'O:48:\"Illuminat...\')\n#5 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#6 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#7 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(314): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#8 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(134): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#9 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#11 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#12 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#13 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call(Array)\n#18 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#20 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(1001): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(271): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(147): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 /Applications/XAMPP/xamppfiles/htdocs/digikala/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#26 {main}', '2020-08-27 16:45:57'),
(62, 'database', 'default', '{\"displayName\":\"App\\\\Notifications\\\\SendSms\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:43;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:25:\\\"App\\\\Notifications\\\\SendSms\\\":11:{s:16:\\\"\\u0000*\\u0000mobile_number\\\";s:11:\\\"09141591515\\\";s:10:\\\"\\u0000*\\u0000message\\\";i:643061;s:2:\\\"id\\\";s:36:\\\"cf6eecb9-b6e4-4c23-8d63-3ed666c5737e\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:23:\\\"App\\\\Channels\\\\SmsChannel\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\User]. in /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php:470\nStack trace:\n#0 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesAndRestoresModelIdentifiers.php(102): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesAndRestoresModelIdentifiers.php(57): Illuminate\\Notifications\\SendQueuedNotifications->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesModels.php(45): Illuminate\\Notifications\\SendQueuedNotifications->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: Illuminate\\Notifications\\SendQueuedNotifications->__wakeup()\n#4 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(53): unserialize(\'O:48:\"Illuminat...\')\n#5 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#6 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#7 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(314): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#8 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(134): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#9 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#11 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#12 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#13 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call(Array)\n#18 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#20 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(1001): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(271): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(147): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 /Applications/XAMPP/xamppfiles/htdocs/digikala/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#26 {main}', '2020-08-27 16:45:57'),
(63, 'database', 'default', '{\"displayName\":\"App\\\\Notifications\\\\SendSms\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:45;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:25:\\\"App\\\\Notifications\\\\SendSms\\\":11:{s:16:\\\"\\u0000*\\u0000mobile_number\\\";s:11:\\\"09141592183\\\";s:10:\\\"\\u0000*\\u0000message\\\";s:46:\\\"\\u062f\\u06cc\\u062c\\u06cc \\u0622\\u0646\\u0644\\u0627\\u06cc\\u0646\\n\\u06a9\\u062f \\u062a\\u0627\\u06cc\\u06cc\\u062f : 103410\\\";s:2:\\\"id\\\";s:36:\\\"ad3b31e6-5c91-4363-833f-5d9598772ea5\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:23:\\\"App\\\\Channels\\\\SmsChannel\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\User]. in /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php:470\nStack trace:\n#0 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesAndRestoresModelIdentifiers.php(102): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesAndRestoresModelIdentifiers.php(57): Illuminate\\Notifications\\SendQueuedNotifications->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesModels.php(116): Illuminate\\Notifications\\SendQueuedNotifications->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: Illuminate\\Notifications\\SendQueuedNotifications->__unserialize(Array)\n#4 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(53): unserialize(\'O:48:\"Illuminat...\')\n#5 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#6 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#7 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(314): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#8 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(134): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#9 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#11 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#12 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#13 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call(Array)\n#18 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#20 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(1001): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(271): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(147): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 /Applications/XAMPP/xamppfiles/htdocs/digikala/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#26 {main}', '2020-11-25 22:18:08');
INSERT INTO `failed_jobs` (`id`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(64, 'database', 'default', '{\"displayName\":\"App\\\\Notifications\\\\SendSms\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:46;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:25:\\\"App\\\\Notifications\\\\SendSms\\\":11:{s:16:\\\"\\u0000*\\u0000mobile_number\\\";s:11:\\\"09141592183\\\";s:10:\\\"\\u0000*\\u0000message\\\";s:46:\\\"\\u062f\\u06cc\\u062c\\u06cc \\u0622\\u0646\\u0644\\u0627\\u06cc\\u0646\\n\\u06a9\\u062f \\u062a\\u0627\\u06cc\\u06cc\\u062f : 630057\\\";s:2:\\\"id\\\";s:36:\\\"81d4e8d9-f2b8-45c1-b4f2-71d8997b91c6\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:23:\\\"App\\\\Channels\\\\SmsChannel\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\User]. in /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php:470\nStack trace:\n#0 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesAndRestoresModelIdentifiers.php(102): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesAndRestoresModelIdentifiers.php(57): Illuminate\\Notifications\\SendQueuedNotifications->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/SerializesModels.php(116): Illuminate\\Notifications\\SendQueuedNotifications->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: Illuminate\\Notifications\\SendQueuedNotifications->__unserialize(Array)\n#4 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(53): unserialize(\'O:48:\"Illuminat...\')\n#5 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#6 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(368): Illuminate\\Queue\\Jobs\\Job->fire()\n#7 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(314): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#8 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(134): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#9 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#11 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#12 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(32): call_user_func_array(Array, Array)\n#13 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Container/Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call(Array)\n#18 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#20 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(1001): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(271): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/symfony/console/Application.php(147): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 /Applications/XAMPP/xamppfiles/htdocs/digikala/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 /Applications/XAMPP/xamppfiles/htdocs/digikala/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#26 {main}', '2020-11-25 22:18:08');

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(9, 9, 24, '2020-02-26 12:01:57', '2020-02-26 12:01:57'),
(10, 9, 19, '2020-02-26 12:02:02', '2020-02-26 12:02:02'),
(21, 9, 18, '2020-02-26 15:18:00', '2020-02-26 15:18:00'),
(27, 26, 12, '2020-05-04 10:24:22', '2020-05-04 10:24:22');

-- --------------------------------------------------------

--
-- Table structure for table `filter`
--

CREATE TABLE `filter` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `position` smallint(6) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `filter`
--

INSERT INTO `filter` (`id`, `category_id`, `title`, `parent_id`, `position`, `item_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(5, 87, 'نوع', 0, 1, 85, NULL, NULL, '2019-10-17 11:16:19'),
(6, 87, 'سیستم عامل اندروید', 5, 1, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(7, 87, 'سایر سیستم عامل ها', 5, 4, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(8, 87, 'سیستم عامل ویندوز فون', 5, 3, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(9, 87, 'سیستم عامل iOS', 5, 2, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(11, 87, 'بازه‌ی سایز صفحه نمایش', 0, 2, 0, NULL, NULL, '2019-10-17 11:16:19'),
(12, 87, '۵.۰ تا ۵.۵ اینچ', 11, 1, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(13, 87, '۵.۵ تا ۶.۰ اینچ', 11, 2, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(14, 87, 'تا ۲.۰ اینچ', 11, 3, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(15, 87, '۳.۰ تا ۴.۰ اینچ', 11, 4, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(16, 87, '۴.۵ تا ۵.۰ اینچ', 11, 5, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(17, 87, '۲.۰ تا ۲.۴ اینچ', 11, 6, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(18, 87, '۴.۰ تا ۴.۵ اینچ', 11, 7, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(19, 87, '۲.۴ تا ۲.۸ اینچ', 11, 8, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(20, 87, '۲.۸ تا ۳.۰ اینچ', 11, 9, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(21, 87, '۶.۰ اینچ و بزرگتر', 11, 10, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(22, 87, 'رزولوشن عکس', 0, 3, 74, NULL, NULL, '2019-10-17 11:16:19'),
(23, 87, '۵.۰ مگاپیکسل', 22, 1, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(24, 87, '۱۳.۰ مگاپیکسل', 22, 2, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(25, 87, '۸.۰ مگاپیکسل', 22, 3, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(26, 87, '۲ مگاپیکسل', 22, 4, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(27, 87, '۳.۲ مگاپیکسل', 22, 5, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(28, 87, 'VGA', 22, 6, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(29, 87, '۱۲.۰ مگاپیکسل', 22, 7, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(30, 87, '۱۶.۰ مگاپیکسل', 22, 8, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(31, 87, '۱.۳ مگاپیکسل', 22, 9, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(32, 87, 'فاقد دوربین', 22, 10, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(33, 87, '۲۰.۰ مگاپیکسل', 22, 11, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(34, 87, '۲۱.۰ مگاپیکسل', 22, 12, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(35, 87, '۲۳.۰ مگاپیکسل', 22, 13, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(36, 87, '۲۰.۷ مگاپیکسل', 22, 14, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(37, 87, '۴.۰ مگاپیکسل', 22, 15, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(38, 87, '۱۲.۲ مگاپیکسل', 22, 16, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(39, 87, '۳ مگاپیکسل', 22, 17, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(40, 87, '۱۹.۰ مگاپیکسل', 22, 18, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(41, 87, '۱۰.۰ مگاپیکسل', 22, 19, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(42, 87, '۱۸.۰ مگاپیکسل', 22, 20, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(43, 87, '۴۰.۰ مگاپیکسل', 22, 21, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(44, 87, '۲۴.۰ مگاپیکسل', 22, 22, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(45, 87, 'تعداد سیم کارت', 0, 4, 40, NULL, NULL, '2019-10-17 11:16:19'),
(46, 87, 'دو', 45, 1, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(47, 87, 'تک', 45, 2, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(48, 87, 'سه', 45, 3, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(49, 87, 'شبکه های ارتباطی', 0, 5, 63, NULL, NULL, '2019-10-17 11:16:19'),
(50, 87, '۲G', 49, 1, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(51, 87, '۳G', 49, 2, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(52, 87, '۴G', 49, 3, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(53, 87, '۵G', 49, 4, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(54, 87, 'باتری قابل تعویض', 0, 6, 93, NULL, NULL, '2019-10-17 11:16:19'),
(55, 87, 'خیر', 54, 1, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(56, 87, 'بله', 54, 2, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(57, 87, 'حافظه داخلی', 0, 7, 0, NULL, NULL, '2019-10-17 11:16:19'),
(58, 87, '۱۶ گیگابایت', 57, 1, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(59, 87, '۳۲ گیگابایت', 57, 2, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(60, 87, '۸ گیگابایت', 57, 3, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(61, 87, '۶۴ گیگابایت', 57, 4, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(62, 87, '۴ گیگابایت', 57, 5, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(63, 87, '۱۲۸ گیگابایت', 57, 6, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(64, 87, '۳۲ مگابایت', 57, 7, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(65, 87, '۶۴ مگابایت', 57, 8, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(66, 87, '۲۵۶ گیگابایت', 57, 9, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(67, 87, '۴ مگابایت', 57, 10, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(68, 87, '۵۱۲ مگابایت', 57, 11, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(69, 87, '۱۶ مگابایت', 57, 12, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(70, 87, '۸ مگابایت', 57, 13, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(71, 87, '۱۲۸ مگابایت', 57, 14, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(72, 87, 'مقدار RAM', 0, 8, 164, NULL, NULL, '2019-10-17 11:16:19'),
(73, 87, '۲ گیگابایت', 72, 1, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(74, 87, '۱ گیگابایت', 72, 2, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(75, 87, '۳ گیگابایت', 72, 3, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(76, 87, '۴ گیگابایت', 72, 4, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(77, 87, '۵۱۲ مگابایت', 72, 5, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(78, 87, '۳۲ مگابایت', 72, 6, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(79, 87, '۶ گیگابایت', 72, 7, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(80, 87, '۱.۵ گیگابایت', 72, 8, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(81, 87, '۲۵۶ مگابایت', 72, 9, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(82, 87, '۲۴ مگابایت', 72, 10, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(83, 87, '۴ مگابایت', 72, 11, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(84, 87, '۸ مگابایت', 72, 12, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(85, 87, '۶۴ مگابایت', 72, 13, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(86, 87, '۱۲۸ مگابایت', 72, 14, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(87, 87, '۱۶ مگابایت', 72, 15, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(88, 87, 'حس‌گرها', 0, 9, 92, NULL, NULL, '2019-10-17 11:16:19'),
(89, 87, 'شتاب‌سنج (Accelerometer)', 88, 1, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(90, 87, 'مجاورت (Proximity)', 88, 2, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(91, 87, 'قطب‌نما (Compass)', 88, 3, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(92, 87, 'ژیروسکوپ (Gyro)', 88, 4, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(93, 87, 'روشنایی (Light)', 88, 5, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(94, 87, 'اثرانگشت روی قاب جلویی (FingerPrint|Front-Mounted)', 88, 6, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(95, 87, 'فشارسنج (Barometer)', 88, 7, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(96, 87, 'اثرانگشت روی قاب پشتی (FingerPrint|Rear-Mounted)', 88, 8, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(97, 87, 'ندارد', 88, 9, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(98, 87, 'شمارنده ضربان قلب (Heart Rate)', 88, 10, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(99, 87, 'سنجش اکسیژن خون (SPO۲)', 88, 11, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(100, 87, 'عنبیه چشم (Iris Scanner)', 88, 12, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(101, 87, 'طیف رنگ (Color Spectrum)', 88, 13, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(102, 87, 'فرمان‌های حرکتی (Gesture)', 88, 14, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(103, 87, 'تشخیص چهره بیومتریک (Face ID)', 88, 15, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(104, 87, 'مانیتورکننده وضعیت حسگرها (SensorCore)', 88, 16, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(105, 87, 'سنجش میزان UV', 88, 17, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(106, 87, 'مجاورت با امکان درک حالت‌های مختلف (ToF Proximity)', 88, 18, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(107, 87, 'ارتفاع سنج (Altimeter)', 88, 19, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(108, 87, 'تشخیص چهره به کمک اینفرارد (Infrared face recognition)', 88, 20, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(109, 87, 'دما و رطوبت (Temperature & Humidity)', 88, 21, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(110, 87, 'اثرانگشت زیر صفحه نمایش (FingerPrint|Under-Display)', 88, 22, NULL, NULL, NULL, '2019-10-17 11:16:19'),
(111, 172, 'نوع رایحه', 0, 1, 175, NULL, NULL, '2019-10-17 05:19:36'),
(112, 172, 'شیرین', 111, 1, NULL, NULL, NULL, '2019-10-17 05:19:36'),
(113, 172, 'طبیعت', 111, 2, NULL, NULL, NULL, '2019-10-17 05:19:36'),
(114, 172, 'گرم', 111, 3, NULL, NULL, NULL, '2019-10-17 05:19:36'),
(115, 172, 'خوراکی', 111, 4, NULL, NULL, NULL, '2019-10-17 05:19:36'),
(116, 172, 'گل', 111, 5, NULL, NULL, NULL, '2019-10-17 05:19:36'),
(117, 172, 'تند', 111, 6, NULL, NULL, NULL, '2019-10-17 05:19:36'),
(118, 172, 'خنک', 111, 7, NULL, NULL, NULL, '2019-10-17 05:19:36'),
(119, 172, 'شرقی', 111, 8, NULL, NULL, NULL, '2019-10-17 05:19:36'),
(120, 172, 'تلخ', 111, 9, NULL, NULL, NULL, '2019-10-17 05:19:36'),
(121, 172, 'ترش', 111, 10, NULL, NULL, NULL, '2019-10-17 05:19:36'),
(122, 172, 'ساختار رایحه', 0, 2, 176, NULL, NULL, '2019-10-17 05:19:36'),
(123, 172, 'گیاهان معطر', 122, 1, NULL, NULL, NULL, '2019-10-17 05:19:36'),
(124, 172, 'گل', 122, 2, NULL, NULL, NULL, '2019-10-17 05:19:36'),
(125, 172, 'چوب', 122, 3, NULL, NULL, NULL, '2019-10-17 05:19:36'),
(126, 172, 'میوه', 122, 4, NULL, NULL, NULL, '2019-10-17 05:19:36'),
(127, 172, 'مرکبات', 122, 5, NULL, NULL, NULL, '2019-10-17 05:19:36'),
(128, 172, 'ادویه', 122, 6, NULL, NULL, NULL, '2019-10-17 05:19:36'),
(129, 172, 'وانیل', 122, 7, NULL, NULL, NULL, '2019-10-17 05:19:36'),
(130, 172, 'خاک و زمین', 122, 8, NULL, NULL, NULL, '2019-10-17 05:19:36'),
(131, 172, 'اقیانوس', 122, 9, NULL, NULL, NULL, '2019-10-17 05:19:36'),
(132, 172, 'چرم', 122, 10, NULL, NULL, NULL, '2019-10-17 05:19:36'),
(133, 172, 'صمغ', 122, 11, NULL, NULL, NULL, '2019-10-17 05:19:36'),
(134, 172, 'اسموکی', 122, 12, NULL, NULL, NULL, '2019-10-17 05:19:36'),
(135, 172, 'شکلات', 122, 13, NULL, NULL, NULL, '2019-10-17 05:19:36'),
(136, 172, 'نوع', 0, 3, 174, NULL, NULL, '2019-10-17 05:19:36'),
(137, 172, 'بانوان', 136, 1, NULL, NULL, NULL, '2019-10-17 05:19:36'),
(138, 172, 'آقایان', 136, 2, NULL, NULL, NULL, '2019-10-17 05:19:36'),
(139, 172, 'آقایان و بانوان', 136, 3, NULL, NULL, NULL, '2019-10-17 05:19:36'),
(140, 172, 'کودکان', 136, 4, NULL, NULL, NULL, '2019-10-17 05:19:36'),
(141, 172, 'سایز', 0, 4, 168, NULL, NULL, '2019-10-17 05:19:36'),
(142, 172, '۱۰۰ میلی لیتر', 141, 1, NULL, NULL, NULL, '2019-10-17 05:19:36'),
(143, 172, '۵۰ میلی لیتر', 141, 2, NULL, NULL, NULL, '2019-10-17 05:19:36'),
(144, 172, '۳۰ میلی لیتر', 141, 3, NULL, NULL, NULL, '2019-10-17 05:19:36'),
(145, 172, '۷۵ میلی لیتر', 141, 4, NULL, NULL, NULL, '2019-10-17 05:19:36'),
(146, 172, '۸۰ میلی لیتر', 141, 5, NULL, NULL, NULL, '2019-10-17 05:19:36'),
(149, 76, 'نوع', 0, 1, 191, NULL, NULL, '2020-12-03 21:28:35'),
(150, 76, 'نوع ۱', 149, 1, NULL, NULL, NULL, '2020-12-03 21:28:35'),
(151, 76, 'نوع ۱', 149, 2, NULL, NULL, NULL, '2020-12-03 21:28:35');

-- --------------------------------------------------------

--
-- Table structure for table `filter_product`
--

CREATE TABLE `filter_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  `filter_value` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `filter_product`
--

INSERT INTO `filter_product` (`id`, `product_id`, `filter_id`, `filter_value`, `created_at`, `updated_at`) VALUES
(66, 12, 45, 47, NULL, NULL),
(67, 12, 72, 81, NULL, NULL),
(76, 19, 45, 46, NULL, NULL),
(77, 19, 72, 84, NULL, NULL),
(78, 19, 49, 50, NULL, NULL),
(79, 19, 49, 51, NULL, NULL),
(80, 19, 5, 6, NULL, NULL),
(81, 19, 88, 89, NULL, NULL),
(82, 19, 88, 90, NULL, NULL),
(83, 19, 88, 91, NULL, NULL),
(84, 19, 88, 92, NULL, NULL),
(85, 19, 54, 56, NULL, NULL),
(86, 11, 5, 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gift_carts`
--

CREATE TABLE `gift_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `credit_cart` int(11) NOT NULL,
  `credit_used` int(11) NOT NULL,
  `validity_date` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gift_carts`
--

INSERT INTO `gift_carts` (`id`, `code`, `user_id`, `order_id`, `credit_cart`, `credit_used`, `validity_date`, `created_at`, `updated_at`) VALUES
(2, 'digiGift-686944', 9, 8, 100000, 100000, NULL, '2019-12-24 06:11:29', '2020-11-16 20:47:09');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_lists`
--

CREATE TABLE `inventory_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_count` int(11) NOT NULL,
  `product_warranty_id` int(11) NOT NULL,
  `stockroom_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `inventory_lists`
--

INSERT INTO `inventory_lists` (`id`, `product_count`, `product_warranty_id`, `stockroom_id`, `created_at`, `updated_at`) VALUES
(3, 5, 7, 1, '2020-03-02 04:04:37', '2020-03-09 05:44:00'),
(4, 3, 10, 1, '2020-03-02 04:04:37', '2020-03-09 05:44:00'),
(5, 7, 12, 1, '2020-03-02 04:07:45', '2021-02-02 10:28:31'),
(6, 2, 21, 2, '2020-03-03 05:48:58', '2020-03-09 13:59:55'),
(7, 4, 22, 2, '2020-03-03 05:48:58', '2020-03-09 13:59:55'),
(8, 2, 11, 1, '2020-03-09 05:44:00', '2020-03-09 05:44:00'),
(9, 3, 13, 1, '2020-03-09 05:44:00', '2020-03-09 05:44:00'),
(10, 1, 21, 1, '2020-03-09 05:44:00', '2020-03-09 05:44:00'),
(11, 2, 22, 1, '2020-03-09 05:44:00', '2020-03-11 18:45:50'),
(12, 1, 23, 1, '2020-03-09 05:44:00', '2020-03-09 05:44:00'),
(13, 1, 30, 1, '2020-03-09 05:44:00', '2020-03-09 05:44:00'),
(14, 2, 37, 1, '2020-03-09 05:44:00', '2020-04-03 10:42:11'),
(15, 2, 36, 1, '2020-03-09 05:44:00', '2020-03-09 05:44:00'),
(16, 11, 40, 1, '2020-03-09 05:44:00', '2020-03-31 11:27:34'),
(17, 4, 43, 1, '2020-03-09 05:44:00', '2020-03-14 07:12:27'),
(18, 1, 7, 2, '2020-03-09 13:59:55', '2020-03-09 13:59:55'),
(19, 2, 10, 2, '2020-03-09 13:59:55', '2020-03-09 13:59:55'),
(20, 1, 11, 2, '2020-03-09 13:59:55', '2020-03-09 13:59:55'),
(21, 2, 12, 2, '2020-03-09 13:59:55', '2020-03-09 13:59:55'),
(22, 1, 13, 2, '2020-03-09 13:59:55', '2020-03-09 13:59:55'),
(23, 1, 15, 2, '2020-03-09 13:59:55', '2020-03-09 13:59:55'),
(24, 2, 16, 2, '2020-03-09 13:59:55', '2020-03-09 13:59:55'),
(25, 6, 23, 2, '2020-03-09 13:59:55', '2020-04-04 10:00:41'),
(26, 1, 24, 2, '2020-03-09 13:59:55', '2020-03-09 13:59:55'),
(27, 2, 26, 2, '2020-03-09 13:59:55', '2020-03-09 13:59:55'),
(28, 1, 28, 2, '2020-03-09 13:59:55', '2020-03-09 13:59:55'),
(29, 2, 29, 2, '2020-03-09 13:59:55', '2020-03-09 13:59:55'),
(30, 1, 30, 2, '2020-03-09 13:59:55', '2020-03-09 13:59:55'),
(31, 9, 36, 2, '2020-03-09 13:59:55', '2020-04-04 10:00:41'),
(32, 2, 37, 2, '2020-03-09 13:59:55', '2020-03-09 13:59:55'),
(33, 1, 38, 2, '2020-03-09 13:59:55', '2020-03-09 13:59:55'),
(34, 2, 40, 2, '2020-03-09 13:59:55', '2020-03-09 13:59:55'),
(35, 1, 42, 2, '2020-03-09 13:59:55', '2020-03-09 13:59:55'),
(36, 2, 43, 2, '2020-03-09 13:59:55', '2020-03-09 13:59:55'),
(37, 2, 44, 2, '2020-03-09 13:59:55', '2020-03-09 13:59:55'),
(38, 2, 47, 1, '2020-03-31 10:48:29', '2020-03-31 10:48:29'),
(39, 1, 53, 1, '2020-04-03 10:42:11', '2020-04-03 10:42:11'),
(40, 10, 55, 1, '2020-05-21 03:49:20', '2020-05-21 03:49:20');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` smallint(6) NOT NULL,
  `show_item` smallint(6) NOT NULL DEFAULT 0,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `category_id`, `title`, `position`, `show_item`, `parent_id`, `created_at`, `updated_at`) VALUES
(35, 87, 'مشخصات کلی', 1, 0, 0, NULL, '2019-10-17 02:52:55'),
(37, 87, 'وزن', 2, 0, 35, NULL, '2019-10-17 02:52:55'),
(38, 87, 'ساختار بدنه', 3, 0, 35, NULL, '2019-10-17 02:52:55'),
(39, 87, 'ویژگی‌های خاص', 5, 0, 35, NULL, '2019-10-17 02:52:55'),
(40, 87, 'تعداد سیم کارت', 4, 1, 35, NULL, '2019-10-17 02:52:55'),
(41, 87, 'پردازنده', 2, 0, 0, NULL, '2019-10-17 02:52:55'),
(42, 87, 'تراشه', 1, 0, 41, NULL, '2019-10-17 02:52:55'),
(43, 87, 'پردازنده‌ی مرکزی', 2, 0, 41, NULL, '2019-10-17 02:52:55'),
(44, 87, 'نوع پردازنده', 3, 0, 41, NULL, '2019-10-17 02:52:55'),
(45, 87, 'فرکانس پردازنده‌ی مرکزی', 4, 0, 41, NULL, '2019-10-17 02:52:55'),
(46, 87, 'پردازنده‌ی گرافیکی', 5, 0, 41, NULL, '2019-10-17 02:52:55'),
(47, 98, 'حافظه', 3, 0, 0, NULL, '2019-03-01 15:46:31'),
(48, 98, 'حافظه داخلی', 1, 1, 47, NULL, '2019-03-01 15:46:31'),
(49, 98, 'مقدار RAM', 2, 1, 47, NULL, '2019-03-01 15:46:31'),
(50, 98, 'پشتیبانی از کارت حافظه جانبی', 3, 0, 47, NULL, '2019-03-01 15:46:31'),
(51, 98, 'حداکثر ظرفیت کارت حافظه', 4, 0, 47, NULL, '2019-03-01 15:46:31'),
(52, 87, 'صفحه نمایش', 4, 0, 0, NULL, '2019-10-17 02:52:55'),
(53, 87, 'صفحه نمایش رنگی', 1, 0, 52, NULL, '2019-10-17 02:52:55'),
(54, 87, 'صفحه نمایش لمسی', 2, 0, 52, NULL, '2019-10-17 02:52:55'),
(55, 87, 'نوع', 3, 0, 52, NULL, '2019-10-17 02:52:55'),
(56, 87, 'فناوری', 4, 0, 52, NULL, '2019-10-17 02:52:55'),
(57, 87, 'اندازه', 5, 0, 52, NULL, '2019-10-17 02:52:55'),
(58, 87, 'رزولوشن', 6, 0, 52, NULL, '2019-10-17 02:52:55'),
(59, 87, 'تراکم پیکسلی', 7, 0, 52, NULL, '2019-10-17 02:52:55'),
(60, 87, 'محافظت', 8, 0, 52, NULL, '2019-10-17 02:52:55'),
(61, 87, 'تعداد رنگ', 9, 0, 52, NULL, '2019-10-17 02:52:55'),
(62, 87, 'ارتباطات', 5, 0, 0, NULL, '2019-10-17 02:52:55'),
(63, 87, 'شبکه های ارتباطی', 1, 1, 62, NULL, '2019-10-17 02:52:55'),
(64, 87, 'شبکه 2G', 2, 0, 62, NULL, '2019-10-17 02:52:55'),
(65, 87, 'شبکه 3G', 3, 0, 62, NULL, '2019-10-17 02:52:55'),
(66, 87, 'شبکه 4G', 4, 0, 62, NULL, '2019-10-17 02:52:55'),
(67, 87, 'فن‌آوری‌های ارتباطی', 5, 0, 62, NULL, '2019-10-17 02:52:55'),
(68, 87, 'Wi-Fi', 6, 0, 62, NULL, '2019-10-17 02:52:55'),
(69, 87, 'بلوتوث', 7, 0, 62, NULL, '2019-10-17 02:52:55'),
(70, 87, 'رادیو', 8, 0, 62, NULL, '2019-10-17 02:52:55'),
(71, 87, 'درگاه ارتباطی', 9, 0, 62, NULL, '2019-10-17 02:52:55'),
(72, 87, 'دوربین', 6, 0, 0, NULL, '2019-10-17 02:52:55'),
(73, 87, 'دوربین', 1, 0, 72, NULL, '2019-10-17 02:52:55'),
(74, 87, 'رزولوشن عکس', 2, 1, 72, NULL, '2019-10-17 02:52:55'),
(75, 87, 'فناوری فوکوس', 3, 0, 72, NULL, '2019-10-17 02:52:55'),
(76, 87, 'فلش', 4, 0, 72, NULL, '2019-10-17 02:52:55'),
(77, 87, 'قابلیت‌های دوربین', 5, 0, 72, NULL, '2019-10-17 02:52:55'),
(78, 87, 'فیلمبرداری', 6, 0, 72, NULL, '2019-10-17 02:52:55'),
(79, 87, 'دوربین سلفی', 7, 0, 72, NULL, '2019-10-17 02:52:55'),
(80, 87, 'صدا', 7, 0, 0, NULL, '2019-10-17 02:52:55'),
(81, 87, 'بلندگو', 1, 0, 80, NULL, '2019-10-17 02:52:55'),
(82, 87, 'خروجی صدا', 2, 0, 80, NULL, '2019-10-17 02:52:55'),
(83, 87, 'توضیحات تکمیلی صدا', 3, 0, 80, NULL, '2019-10-17 02:52:55'),
(84, 87, 'امکانات نرم افزاری', 8, 0, 0, NULL, '2019-10-17 02:52:55'),
(85, 87, 'سیستم عامل', 1, 0, 84, NULL, '2019-10-17 02:52:55'),
(86, 87, 'نسخه سیستم عامل', 2, 0, 84, NULL, '2019-10-17 02:52:55'),
(87, 87, 'پشتیبانی از زبان فارسی', 3, 0, 84, NULL, '2019-10-17 02:52:55'),
(88, 87, 'منوی فارسی', 5, 0, 84, NULL, '2019-10-17 02:52:55'),
(89, 87, 'دفترچه تلفن', 6, 0, 84, NULL, '2019-10-17 02:52:55'),
(90, 87, 'ضبط صدا', 9, 0, 84, NULL, '2019-10-17 02:52:55'),
(91, 87, 'سایر مشخصات', 9, 0, 0, NULL, '2019-10-17 02:52:55'),
(92, 87, 'حس‌گرها', 1, 1, 91, NULL, '2019-10-17 02:52:55'),
(93, 87, 'باتری قابل تعویض', 2, 1, 91, NULL, '2019-10-17 02:52:55'),
(94, 87, 'مشخصات باتری', 3, 0, 91, NULL, '2019-10-17 02:52:55'),
(95, 87, 'اقلام همراه گوشی', 6, 0, 91, NULL, '2019-10-17 02:52:55'),
(99, 87, 'ابعاد', 1, 0, 35, NULL, '2019-10-17 02:52:55'),
(100, 98, 'مشخصات فیزیکی', 1, 0, 0, NULL, '2019-02-10 16:10:13'),
(101, 87, 'ابعاد', 1, 0, 100, NULL, '2019-02-10 16:10:13'),
(102, 87, 'وزن', 2, 1, 100, NULL, '2019-02-10 16:10:13'),
(103, 98, 'پردازنده مرکزی', 2, 0, 0, NULL, '2019-02-10 16:10:13'),
(104, 98, 'سازنده پردازنده', 1, 0, 103, NULL, '2019-02-10 16:10:13'),
(105, 98, 'سری پردازنده', 2, 1, 103, NULL, '2019-02-10 16:10:13'),
(106, 98, 'مدل پردازنده', 3, 0, 103, NULL, '2019-02-10 16:10:13'),
(107, 98, 'محدوده سرعت پردازنده', 4, 0, 103, NULL, '2019-02-10 16:10:14'),
(108, 98, 'فرکانس پردازنده', 5, 0, 103, NULL, '2019-02-10 16:10:14'),
(109, 98, 'حافظه Cache', 6, 0, 103, NULL, '2019-02-10 16:10:14'),
(110, 98, 'حافظه RAM', 3, 0, 0, NULL, '2019-02-10 16:10:14'),
(111, 98, 'ظرفیت حافظه RAM', 1, 1, 110, NULL, '2019-02-10 16:10:14'),
(112, 98, 'نوع حافظه RAM', 2, 1, 110, NULL, '2019-02-10 16:10:14'),
(117, 98, 'پردازنده گرافیکی', 5, 0, 0, NULL, '2019-02-10 16:10:14'),
(118, 98, 'سازنده پردازنده گرافیکی', 1, 0, 117, NULL, '2019-02-10 16:10:14'),
(119, 98, 'مدل پردازنده گرافیکی', 2, 0, 117, NULL, '2019-02-10 16:10:14'),
(120, 98, 'حافظه اختصاصی پردازنده گرافیکی', 3, 0, 117, NULL, '2019-02-10 16:10:14'),
(121, 98, 'صفحه نمایش', 6, 0, 0, NULL, '2019-02-10 16:10:14'),
(122, 98, 'اندازه صفحه نمایش', 1, 0, 121, NULL, '2019-02-10 16:10:14'),
(123, 98, 'نوع صفحه نمایش', 2, 0, 121, NULL, '2019-02-10 16:10:14'),
(124, 98, 'دقت صفحه نمایش', 3, 0, 121, NULL, '2019-02-10 16:10:14'),
(125, 98, 'صفحه نمایش مات', 4, 1, 121, NULL, '2019-02-10 16:10:14'),
(126, 98, 'صفحه نمایش لمسی', 5, 1, 121, NULL, '2019-02-10 16:10:14'),
(127, 98, 'توضیحات صفحه نمایش', 6, 0, 121, NULL, '2019-02-10 16:10:14'),
(128, 98, 'امکانات', 7, 0, 0, NULL, '2019-02-10 16:10:14'),
(129, 98, 'درایو نوری', 1, 0, 128, NULL, '2019-02-10 16:10:14'),
(130, 98, 'وبکم', 2, 0, 128, NULL, '2019-02-10 16:10:14'),
(131, 98, 'توضیحات وبکم', 3, 0, 128, NULL, '2019-02-10 16:10:14'),
(132, 98, 'مشخصات اسپیکر', 4, 0, 128, NULL, '2019-02-10 16:10:14'),
(133, 98, 'کیبورد با نور پس زمینه', 5, 0, 128, NULL, '2019-02-10 16:10:14'),
(134, 98, 'مشخصات تاچ پد', 6, 0, 128, NULL, '2019-02-10 16:10:14'),
(135, 98, 'حسگر اثر انگشت', 7, 0, 128, NULL, '2019-02-10 16:10:14'),
(136, 98, 'کارت خوان', 8, 0, 128, NULL, '2019-02-10 16:10:14'),
(137, 98, 'مودم', 9, 0, 128, NULL, '2019-02-10 16:10:14'),
(138, 98, 'شبکه بی سیم Wi-Fi', 10, 0, 128, NULL, '2019-02-10 16:10:14'),
(139, 98, 'توضیحات شبکه بی سیم Wi-Fi', 11, 0, 128, NULL, '2019-02-10 16:10:14'),
(140, 98, 'بلوتوث', 12, 0, 128, NULL, '2019-02-10 16:10:14'),
(141, 98, 'پورت شبکه Ethernet', 13, 0, 128, NULL, '2019-02-10 16:10:14'),
(142, 98, 'پورت VGA', 14, 0, 128, NULL, '2019-02-10 16:10:14'),
(143, 98, 'پورت HDMI', 15, 0, 128, NULL, '2019-02-10 16:10:14'),
(144, 98, 'پورت USB Type-C', 16, 0, 128, NULL, '2019-02-10 16:10:14'),
(145, 98, 'تعداد پورت USB 3.0', 17, 0, 128, NULL, '2019-02-10 16:10:14'),
(146, 98, 'پورت Thunderbolt', 18, 0, 128, NULL, '2019-02-10 16:10:14'),
(147, 98, 'پورت Serial', 19, 0, 128, NULL, '2019-02-10 16:10:14'),
(148, 98, 'سایر مشخصات', 8, 0, 0, NULL, '2019-02-10 16:10:14'),
(149, 98, 'طبقه‌بندی', 1, 0, 148, NULL, '2019-02-10 16:10:14'),
(150, 98, 'شارژدهی باتری', 2, 0, 148, NULL, '2019-02-10 16:10:14'),
(151, 98, 'سیستم عامل', 3, 1, 148, NULL, '2019-02-10 16:10:14'),
(152, 98, 'توضیحات سیستم عامل', 4, 0, 148, NULL, '2019-02-10 16:10:14'),
(153, 98, 'امکانات دیگر', 5, 0, 148, NULL, '2019-02-10 16:10:14'),
(154, 98, 'اقلام همراه لپ تاپ', 6, 0, 148, NULL, '2019-02-10 16:10:14'),
(155, 87, 'سایر قابلیت ها', 10, 0, 52, NULL, '2019-10-17 02:52:55'),
(156, 87, 'موسیقی', 7, 0, 84, NULL, '2019-10-17 02:52:55'),
(157, 87, 'ویدیو', 8, 0, 84, NULL, '2019-10-17 02:52:55'),
(158, 87, 'میزان شارژ آماده به کار', 4, 0, 91, NULL, '2019-10-17 02:52:55'),
(159, 87, 'میزان شارژ مکالمه', 5, 0, 91, NULL, '2019-10-17 02:52:55'),
(160, 87, 'سایر قابلیت‌ها', 7, 0, 91, NULL, '2019-10-17 02:52:55'),
(161, 87, 'قابلیت‌های نرم‌افزاری', 4, 0, 84, NULL, '2019-10-17 02:52:55'),
(162, 87, 'حافظه', 3, 0, 0, NULL, '2019-10-17 02:52:55'),
(163, 87, 'حافظه داخلی', 1, 1, 162, NULL, '2019-10-17 02:52:55'),
(164, 87, 'مقدار RAM', 2, 1, 162, NULL, '2019-10-17 02:52:55'),
(165, 87, 'پشتیبانی از کارت حافظه جانبی', 3, 0, 162, NULL, '2019-10-17 02:52:55'),
(166, 87, 'حداکثر ظرفیت کارت حافظه', 4, 0, 162, NULL, '2019-10-17 02:52:55'),
(167, 172, 'مشخصات کلی', 1, 0, 0, NULL, NULL),
(168, 172, 'حجم', 1, 1, 167, NULL, NULL),
(169, 172, 'کشور مبدا برند', 2, 0, 167, NULL, NULL),
(170, 172, 'سال معرفی', 3, 0, 167, NULL, NULL),
(171, 172, 'صادر کننده مجوز', 4, 0, 167, NULL, NULL),
(172, 172, 'کشور سازنده', 5, 0, 167, NULL, NULL),
(173, 172, 'مشخصات رایحه', 2, 0, 0, NULL, NULL),
(174, 172, 'مناسب برای', 1, 1, 173, NULL, NULL),
(175, 172, 'نوع رایحه', 2, 0, 173, NULL, NULL),
(176, 172, 'ساختار رایحه', 3, 0, 173, NULL, NULL),
(177, 172, 'نت آغازی', 4, 0, 173, NULL, NULL),
(178, 172, 'نت میانی', 5, 0, 173, NULL, NULL),
(179, 172, 'نت پایانی', 6, 0, 173, NULL, NULL),
(190, 76, 'مشخصات کلی', 1, 0, 0, NULL, NULL),
(191, 76, 'برند', 1, 0, 190, NULL, NULL),
(192, 76, 'جنس', 2, 0, 190, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `item_value`
--

CREATE TABLE `item_value` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `item_value`
--

INSERT INTO `item_value` (`id`, `product_id`, `item_id`, `item_value`, `created_at`, `updated_at`) VALUES
(727, 10, 99, '7.8 × 76.7 × 158.3 میلی‌متر', NULL, NULL),
(728, 10, 37, '155 گرم', NULL, NULL),
(729, 10, 38, 'فلز و پلاستیک (فریم از فلز و قاب پشتی پلاستیک)', NULL, NULL),
(730, 10, 40, 'دو سیم کارت', NULL, NULL),
(731, 10, 39, 'مجهز به حس‌گر اثرانگشت , فبلت , مناسب عکاسی', NULL, NULL),
(732, 10, 42, 'Qualcomm MSM8937 Snapdragon 430 Chipset', NULL, NULL),
(733, 10, 43, 'Octa-core Cortex-A53 CPU', NULL, NULL),
(734, 10, 44, '64 بیت', NULL, NULL),
(735, 10, 45, '1.4 گیگاهرتز', NULL, NULL),
(736, 10, 46, 'Adreno 505 GPU', NULL, NULL),
(737, 10, 163, '32 گیگابایت', NULL, NULL),
(738, 10, 164, '3 گیگابایت', NULL, NULL),
(739, 10, 165, 'microSD', NULL, NULL),
(740, 10, 166, '256 گیگابایت', NULL, NULL),
(741, 10, 53, 'بله', NULL, NULL),
(742, 10, 54, 'بله', NULL, NULL),
(743, 10, 55, 'LCD', NULL, NULL),
(744, 10, 56, 'IPS', NULL, NULL),
(745, 10, 57, '5.9 اینچ', NULL, NULL),
(746, 10, 58, 'HD+ | 720 x 1440', NULL, NULL),
(747, 10, 59, '273 پیکسل بر هر اینچ', NULL, NULL),
(748, 10, 61, '16 میلیون رنگ', NULL, NULL),
(749, 10, 155, 'قابلیت دریافت تا 10 لمس همزمان', NULL, NULL),
(750, 10, 155, 'فناوری FullView', NULL, NULL),
(751, 10, 63, '2G , 3G , 4G', NULL, NULL),
(752, 10, 64, 'GSM 850 / 900 / 1800 / 1900', NULL, NULL),
(753, 10, 64, 'برای هر دو سیم‌کارت', NULL, NULL),
(754, 10, 65, 'HSDPA 850 / 900 / 1900 / 2100', NULL, NULL),
(755, 10, 66, 'LTE band 1|2100, 3|1800, 7|2600, 8|900, 28|700', NULL, NULL),
(756, 10, 67, 'بلوتوث , EDGE , GPRS , رادیو , Wi-Fi', NULL, NULL),
(757, 10, 68, 'Wi-Fi 802.11 b/g/n', NULL, NULL),
(758, 10, 68, 'Wi-Fi Direct, hotspot', NULL, NULL),
(759, 10, 69, 'نسخه 4.2', NULL, NULL),
(760, 10, 69, 'A2DP, LE', NULL, NULL),
(761, 10, 70, 'رادیو FM', NULL, NULL),
(762, 10, 71, 'microUSB v2.0', NULL, NULL),
(763, 10, 73, 'بله', NULL, NULL),
(764, 10, 74, '13.0 مگاپیکسل', NULL, NULL),
(765, 10, 75, 'Phase Detection', NULL, NULL),
(766, 10, 76, 'LED', NULL, NULL),
(767, 10, 77, 'دارای دو دوربین در پشت گوشی | دو دوربین 13.0 مگاپیکسل+ 2.0 مگاپیکسل  (Duo Camera)', NULL, NULL),
(768, 10, 77, 'قابلیت ثبت موقعیت جغرافیایی عکس‌ها و فیلم‌ها (Geo-Tagging)', NULL, NULL),
(769, 10, 77, 'قابلیت فوکوس با اشاره روی سوژه (Touch Focus)', NULL, NULL),
(770, 10, 77, 'قابلیت تشخیص چهره (Face Detection)', NULL, NULL),
(771, 10, 77, 'قابلیت عکاسی پانوراما (Panorama)', NULL, NULL),
(772, 10, 77, 'قابلیت عکاسی HDR', NULL, NULL),
(773, 10, 78, 'رزولوشن 1080 × 1920 و سرعت 30 فریم بر ثانیه (1080p@30FPS)', NULL, NULL),
(774, 10, 79, 'دارای سنسور با رزولوشن 8 مگاپیکسل', NULL, NULL),
(775, 10, 81, 'دارد', NULL, NULL),
(776, 10, 82, 'جک 3.5 میلی‌متری', NULL, NULL),
(777, 10, 83, 'قابلیت حذف صدا‌های مزاحم هنگام مکالمه با استفاده از میکروفون دوم (Active Noise Cancellation With Dedicated Mic)', NULL, NULL),
(778, 10, 85, 'Android', NULL, NULL),
(779, 10, 86, 'Oreo 8.0', NULL, NULL),
(780, 10, 87, 'بله', NULL, NULL),
(781, 10, 161, 'ایمیل , سرویس‌های گوگل شامل Google Search, Google Maps, Gmail و YouTube , مرورگر HTML5 , MMS , قابلیت نمایش اسناد مایکروسافت آفیس , قابلیت نمایش فایل‌های متنی PDF , برنامه ویرایش عکس , قابلیت استفاده از سرویس شبکه‌های اجتماعی', NULL, NULL),
(782, 10, 88, 'دارد', NULL, NULL),
(783, 10, 89, 'با امکان افزودن مخاطب به تعداد بی‌نهایت', NULL, NULL),
(784, 10, 156, 'Flac , MP3 , WAV', NULL, NULL),
(785, 10, 157, 'H.263 , H.264 , MP4', NULL, NULL),
(786, 10, 90, 'بله', NULL, NULL),
(787, 10, 92, 'شتاب‌سنج (Accelerometer) , قطب‌نما (Compass) , اثرانگشت روی قاب پشتی (FingerPrint|Rear-Mounted) , روشنایی (Light) , مجاورت (Proximity)', NULL, NULL),
(788, 10, 93, 'خیر', NULL, NULL),
(789, 10, 94, 'باتری لیتیوم-یون با ظرفیت 3000 میلی‌آمپرساعت', NULL, NULL),
(790, 10, 95, 'شارژر , کابل USB , دفترچه‌ راهنما', NULL, NULL),
(791, 10, 160, 'مجهز به رابط کاربری EMUI 8.0', NULL, NULL),
(792, 2, 99, '7.7 × 77.4 × 157.5 میلی‌متر', NULL, NULL),
(793, 2, 37, '208 گرم', NULL, NULL),
(794, 2, 38, 'فلز و شیشه', NULL, NULL),
(795, 2, 38, 'شیشه مقاوم در برابر خط و خش', NULL, NULL),
(796, 2, 38, 'پوشش Oleophobic', NULL, NULL),
(797, 2, 38, 'دارای استاندارد IP68 برای مقاومت در برابر آب (به مدت 30 دقیقه در عمق 2 متر)', NULL, NULL),
(798, 2, 40, 'دو سیم کارت', NULL, NULL),
(799, 2, 39, 'مقاوم در برابر آب , دارای بدنه مقاوم , مناسب عکاسی , فبلت , مناسب بازی , مجهز به حس‌گر تشخیص چهره', NULL, NULL),
(800, 2, 42, 'Apple A12 Bionic Chipset', NULL, NULL),
(801, 2, 43, 'Hexa-core (Vortex + Tempest) CPU', NULL, NULL),
(802, 2, 44, '64 بیت', NULL, NULL),
(803, 2, 45, '1.6 و 2.5 گیگاهرتز', NULL, NULL),
(804, 2, 46, 'Apple (4-core graphics) GPU', NULL, NULL),
(805, 2, 163, '64 گیگابایت', NULL, NULL),
(806, 2, 164, '4 گیگابایت', NULL, NULL),
(807, 2, 165, 'ندارد', NULL, NULL),
(808, 2, 53, 'بله', NULL, NULL),
(809, 2, 54, 'بله', NULL, NULL),
(810, 2, 55, 'OLED', NULL, NULL),
(811, 2, 56, 'Super Retina', NULL, NULL),
(812, 2, 57, '6.0 اینچ و بزرگتر', NULL, NULL),
(813, 2, 58, '6.5 اینچ', NULL, NULL),
(814, 2, 59, '2688 × 1242', NULL, NULL),
(815, 2, 60, 'Scratch-Resistant Glass', NULL, NULL),
(816, 2, 61, '16 میلیون رنگ', NULL, NULL),
(817, 2, 155, 'پشتیبانی از استاندارد Dolby Vision/HDR10', NULL, NULL),
(818, 2, 155, 'مجهز به فناوری تشخیص لمس سه‌بعدی (3D Touch)', NULL, NULL),
(819, 2, 155, 'قابلیت نمایش رنگ‌های نزدیک به واقعیت (True-Tone Display)', NULL, NULL),
(820, 2, 155, 'قابلیت نمایش طیف رنگی گستره (Wide Color Gamut Display)', NULL, NULL),
(821, 2, 155, 'سرعت تشخیص لمس 120 هرتزی (120Hz ،Touch-sensing)', NULL, NULL),
(822, 2, 155, 'قابلیت دریافت تا 10 لمس همزمان', NULL, NULL),
(823, 2, 63, '2G , 3G , 4G', NULL, NULL),
(824, 2, 64, 'GSM 850 / 900 / 1800 / 1900', NULL, NULL),
(825, 2, 65, 'HSDPA 850 / 900 / 1700 / 1900 / 2100', NULL, NULL),
(826, 2, 65, 'HSPA با سرعت دانلود 42.2 مگابیت بر ثانیه و آپلود 5.76 مگابیت بر ثانیه', NULL, NULL),
(827, 2, 66, '1|2100, 2|1900, 3|1800, 4|1700/2100, 5|850, 7|2600, 8|900, 12|700, 13|700), 14|700), 17|700, 18|800, 19|800, 20|800, 25|1900, 26|850, 29|700, 30|2300, 32|1500, 34|2000, 38|2600, 39|1900, 40|2300, 41|2500, 46, 66|1700/2100, 71|600', NULL, NULL),
(828, 2, 67, 'GPRS , EDGE , Wi-Fi , بلوتوث , NFC', NULL, NULL),
(829, 2, 68, 'Wi-Fi .11 a/b/g/n/ac', NULL, NULL),
(830, 2, 68, 'Dual-band, Hotspot', NULL, NULL),
(831, 2, 69, 'نسخه‌ 5.0', NULL, NULL),
(832, 2, 69, 'A2DP, LE', NULL, NULL),
(833, 2, 70, 'A-GPS , GLONASS , GALILEO , Quasi-Zenith|QZSS', NULL, NULL),
(834, 2, 71, 'Lightning', NULL, NULL),
(835, 2, 73, 'دو دوربین اصلی', NULL, NULL),
(836, 2, 74, '12.0 مگاپیکسل', NULL, NULL),
(837, 2, 76, 'Quad LED', NULL, NULL),
(838, 2, 77, 'دارای دو دوربین در پشت گوشی | دو دوربین 12 مگاپیکسل + 12 مگاپیکسل (Dual)', NULL, NULL),
(839, 2, 77, 'دوربین اول با دریچه‌ی دیافراگم f/1.8، فاصله کانونی لنز 26 میلی‌متر (Focus Length 26 mm)، سایز سنسور 1/2.55 اینچ (\'\'Sensor Size 1/2.55) و ثبت تصاویر با پیکسل‎هایی به سایز 1.4 میکرومتر (1.4µm Pixel Size)، مجهز به لرزشگیر اپتیکال تصویر (Optical Image Stabilization)، همراه با فناوری فوکوس اتوماتیک (Phase Detection)', NULL, NULL),
(840, 2, 77, 'دوربین دوم با دریچه‌ی دیافراگم f/2.4، فاصله کانونی لنز 52 میلی‌متر (Focus Length 52 mm)، سایز سنسور 1/3.4 اینچ (\'\'Sensor Size 1/3.4) و ثبت تصاویر با پیکسل‎هایی به سایز 1.0 میکرومتر (1.0µm Pixel Size)، مجهز به لرزشگیر اپتیکال تصویر (Optical Image Stabilization)، زوم اپتیکال 2 برابر (2x optical zoom) همراه با فناوری فوکوس اتوماتیک (Phase Detection)', NULL, NULL),
(841, 2, 77, 'قابلیت ثبت موقعیت جغرافیایی عکس‌ها و فیلم‌ها (Geo-Tagging)', NULL, NULL),
(842, 2, 77, 'قابلیت فوکوس با اشاره روی سوژه (Touch Focus)', NULL, NULL),
(843, 2, 77, 'قابلیت تشخیص چهره و لبخند (Face and Smile Detection)', NULL, NULL),
(844, 2, 77, 'قابلیت عکاسی پانوراما (Panorama)', NULL, NULL),
(845, 2, 77, 'قابلیت عکاسی HDR', NULL, NULL),
(846, 2, 78, 'رزولوشن 2160 × 3840 و سرعت 24/30/60 فریم بر ثانیه (2160p@24/30/60FPS)', NULL, NULL),
(847, 2, 78, 'رزولوشن 1080 × 1920 و سرعت 30/60/120/240 فریم بر ثانیه (1080p@30/60/120/240FPS)', NULL, NULL),
(848, 2, 78, 'قابلیت فیلم‌برداری HDR', NULL, NULL),
(849, 2, 78, 'ضبط صدای استریو', NULL, NULL),
(850, 2, 79, 'دارای سنسور با رزولوشن 7 مگاپیکسل', NULL, NULL),
(851, 2, 79, 'دارای دریچه‌ی دیافراگم f/2.2 و فاصله کانونی لنز 32 میلی‌متر (Focus Length 32 mm)', NULL, NULL),
(852, 2, 79, 'قابلیت عکاسی HDR', NULL, NULL),
(853, 2, 79, 'فیلمبرداری با رزولوشن 1920 × 1080 و سرعت 60 فریم بر ثانیه (1080p@60FPS)', NULL, NULL),
(854, 2, 81, 'دارد', NULL, NULL),
(855, 2, 82, 'Lightning', NULL, NULL),
(856, 2, 83, 'قابلیت حذف صدا‌های مزاحم هنگام مکالمه با استفاده از میکروفون دوم (Active Noise Cancellation With Dedicated Mic)', NULL, NULL),
(857, 2, 85, 'iOS', NULL, NULL),
(858, 2, 86, '12', NULL, NULL),
(859, 2, 87, 'بله', NULL, NULL),
(860, 2, 88, 'ندارد', NULL, NULL),
(861, 2, 89, 'MMS , مرورگر HTML , مرورگر HTML5 , قابلیت نمایش اسناد مایکروسافت آفیس , قابلیت نمایش فایل‌های متنی PDF , برنامه ویرایش عکس , قابلیت استفاده از سرویس شبکه‌های اجتماعی', NULL, NULL),
(862, 2, 156, 'MP3 , WMA , AC3 , AAX+ , AIFF', NULL, NULL),
(863, 2, 157, 'MP4 , H.265', NULL, NULL),
(864, 2, 90, 'بله', NULL, NULL),
(865, 2, 92, 'قطب‌نما (Compass) , شتاب‌سنج (Accelerometer) , مجاورت (Proximity) , فشارسنج (Barometer) , ژیروسکوپ (Gyro) , تشخیص چهره بیومتریک (Face ID)', NULL, NULL),
(866, 2, 93, 'خیر', NULL, NULL),
(867, 2, 94, 'باتری از نوع لیتیوم-یون با ظرفیت 3174 میلی‌آمپرساعت', NULL, NULL),
(868, 2, 158, '65 ساعت', NULL, NULL),
(869, 2, 159, '25 ساعت', NULL, NULL),
(870, 2, 95, 'دفترچه‌ راهنما , هدفون , شارژر , کابل Lightning', NULL, NULL),
(871, 2, 160, 'قابلیت شارژ سریع باتری (50 درصد شارژ در 30 دقیقه)', NULL, NULL),
(872, 2, 160, 'قابلیت شارژ به‌صورت بی‌سیم (Qi Wireless Charging)', NULL, NULL),
(873, 2, 160, 'مجهز به دستیار صوتی اپل Siri', NULL, NULL),
(874, 2, 160, 'مجهز به سرویس‌های ابری iCloud', NULL, NULL),
(875, 5, 99, '8.8 × 76.4 × 161.9 میلی‌متر', NULL, NULL),
(876, 5, 37, '201 گرم', NULL, NULL),
(877, 5, 38, 'فلز و شیشه (محافظ گوریلا گلس 5 روی قاب پشتی)', NULL, NULL),
(878, 5, 38, 'دارای گواهینامه IP68 مقاوم در برابر گرد و غبار و آب تا عمق 1.5 متر و به مدت 30 دقیقه', NULL, NULL),
(879, 5, 38, 'کاربرد شیار دوم برای سیم‌کارت یا کارت حافظه‌ی جانبی', NULL, NULL),
(880, 5, 40, 'دو سیم کارت', NULL, NULL),
(881, 5, 39, 'مناسب عکاسی , مجهز به حس‌گر اثرانگشت , مناسب بازی , دارای قلم', NULL, NULL),
(882, 5, 42, 'Samsung Exynos 9810 Chipset', NULL, NULL),
(883, 5, 43, 'Octa-Core Mongoose + Quad-Core ARM Cortex-A55 CPU', NULL, NULL),
(884, 5, 44, '64 بیت', NULL, NULL),
(885, 5, 45, '2.7 و 1.8 گیگاهرتز', NULL, NULL),
(886, 5, 46, 'Mali-G72', NULL, NULL),
(887, 5, 163, '128 گیگابایت', NULL, NULL),
(888, 5, 164, '6 گیگابایت', NULL, NULL),
(889, 5, 165, 'microSD', NULL, NULL),
(890, 5, 166, '512 گیگابایت', NULL, NULL),
(891, 5, 53, 'بله', NULL, NULL),
(892, 5, 54, 'بله', NULL, NULL),
(893, 5, 55, 'OLED', NULL, NULL),
(894, 5, 56, 'Super AMOLED', NULL, NULL),
(895, 5, 57, '6.4 اینچ', NULL, NULL),
(896, 5, 58, '2960 × 1440 | QuadHD', NULL, NULL),
(897, 5, 59, '516 پیکسل بر هر اینچ', NULL, NULL),
(898, 5, 60, 'Corning Gorilla Glass 5', NULL, NULL),
(899, 5, 61, '16 میلیون رنگ', NULL, NULL),
(900, 5, 63, '2G , 3G , 4G', NULL, NULL),
(901, 5, 64, 'GSM 850 / 900 / 1800 / 1900', NULL, NULL),
(902, 5, 64, 'هر دو سیم کارت', NULL, NULL),
(903, 5, 65, 'HSDPA 850 / 900 / 1900 / 2100', NULL, NULL),
(904, 5, 65, 'HSPA با سرعت دانلود 42.2 مگابیت بر ثانیه و آپلود 5.76 مگابیت بر ثانیه', NULL, NULL),
(905, 5, 66, 'LTE band 1|2100, 2|1900, 3|1800, 4|1700/2100, 5|850, 7|2600, 8|900, 12|700, 13|700, 17|700, 18|800, 19|800, 20|800, 25|1900, 26|850, 28|700, 32|1500, 38|2600, 39|1900, 40|2300, 41|2500, 66|1700/2100', NULL, NULL),
(906, 5, 66, 'LTE از نوع Cat18 با سرعت دانلود 1200 مگابیت بر ثانیه و آپلود 200 مگابیت بر ثانیه', NULL, NULL),
(907, 5, 67, 'GPRS , EDGE , Wi-Fi , بلوتوث , NFC', NULL, NULL),
(908, 5, 68, 'Wi-Fi 802.11 a/b/g/n/ac', NULL, NULL),
(909, 5, 68, 'Dual-band, Wi-Fi Direct, Hotspot', NULL, NULL),
(910, 5, 69, 'نسخه 5.0', NULL, NULL),
(911, 5, 69, 'A2DP, aptX, LE', NULL, NULL),
(912, 5, 70, 'ندارد', NULL, NULL),
(913, 5, 71, 'USB Type-C 1.0 v3.1', NULL, NULL),
(914, 5, 73, 'دو دوربین اصلی', NULL, NULL),
(915, 5, 74, '12.0 مگاپیکسل', NULL, NULL),
(916, 5, 75, 'AutoFocus', NULL, NULL),
(917, 5, 76, 'LED', NULL, NULL),
(918, 5, 77, 'دارای دو دوربین در پشت گوشی | دو دوربین 12 مگاپیکسل+ 12 مگاپیکسل (Duo Camera)', NULL, NULL),
(919, 5, 77, 'دوربین اول با دریچه‌ی دیافراگم f/1.5، فاصله کانونی لنز 26 میلی‌متر (Focus Length 26 mm)، سایز سنسور 1/2.55 اینچ (\'\'Sensor Size 1/2.55)، ثبت تصاویر با پیکسل‎هایی به سایز 1.4 میکرومتر (1.4µm Pixel Size) همراه با فناوری فوکوس اتوماتیک (Phase Detection)', NULL, NULL),
(920, 5, 77, 'دوربین دوم با دریچه‌ی دیافراگم f/2.4، فاصله کانونی لنز 52 میلی‌متر (Focus Length 52 mm)، سایز سنسور 1/3.6 اینچ (\'\'Sensor Size 1/3.6)، ثبت تصاویر با پیکسل‎هایی به سایز 1.0 میکرومتر (1.0µm Pixel Size) همراه با فناوری فوکوس اتوماتیک (Autofocus)، مجهز به زوم اپتیکال تا 2 برابر (2x Optical Zoom)', NULL, NULL),
(921, 5, 77, 'هر دو دوربین مجهز به لرزشگیر اپتیکال تصویر (Optical Image Stabilization)', NULL, NULL),
(922, 5, 77, 'قابلیت ثبت موقعیت جغرافیایی عکس‌ها و فیلم‌ها (Geo-Tagging)', NULL, NULL),
(923, 5, 77, 'قابلیت فوکوس با اشاره روی سوژه (Touch Focus)', NULL, NULL),
(924, 5, 77, 'قابلیت تشخیص چهره (Face Detection)', NULL, NULL),
(925, 5, 77, 'قابلیت عکاسی پانوراما (Panorama)', NULL, NULL),
(926, 5, 77, 'قابلیت عکاسی HDR به صورت خودکار', NULL, NULL),
(927, 5, 78, 'رزولوشن 2160 × 3840 و سرعت 60 فریم بر ثانیه (2160p@30FPS)', NULL, NULL),
(928, 5, 78, 'رزولوشن 1080 × 1920 و سرعت 240 فریم بر ثانیه (1080p@60FPS)', NULL, NULL),
(929, 5, 78, 'رزولوشن 720 × 1280 و سرعت 960 فریم بر ثانیه (720p@240FPS)', NULL, NULL),
(930, 5, 78, 'قابلیت فیلمبرداری HDR', NULL, NULL),
(931, 5, 78, 'قابلیت فیلمبردارای هم‌زمان با هر دو دوربین (Dual-video Recording)', NULL, NULL),
(932, 5, 79, 'دارای سنسور با رزولوشن 8 مگاپیکسل', NULL, NULL),
(933, 5, 79, 'با دریچه‌ی دیافراگم f/1.7، فاصله کانونی لنز 25 میلی‌متر (Focus Length 25 mm)', NULL, NULL),
(934, 5, 79, 'مجهز به فناوری فوکوس اتوماتیک (Autofocus)', NULL, NULL),
(935, 5, 79, 'سایز سنسور 1/3.6 اینچ (\'\'Sensor Size 1/3.6)', NULL, NULL),
(936, 5, 79, 'ثبت تصاویر با پیکسل‎هایی به سایز 1.22 میکرومتر (1.22µm Pixel Size)', NULL, NULL),
(937, 5, 79, 'فیلمبرداری با رزولوشن 2560 × 1440 و سرعت 30 فریم بر ثانیه (1440p@30FPS)', NULL, NULL),
(938, 5, 79, 'قابلیت استفاده از هر دو دوربین در هنگام مکالمه تصویری (Dual Video Call)', NULL, NULL),
(939, 5, 79, 'قابلیت عکاسی HDR به صورت خودکار', NULL, NULL),
(940, 5, 81, 'دارد', NULL, NULL),
(941, 5, 82, 'جک 3.5 میلی‌متری', NULL, NULL),
(942, 5, 83, 'خروجی 32 بیت و 384 کیلوهرتز', NULL, NULL),
(943, 5, 85, 'Android', NULL, NULL),
(944, 5, 86, 'Oreo 8.1', NULL, NULL),
(945, 5, 87, 'بله', NULL, NULL),
(946, 5, 88, 'دارد', NULL, NULL),
(947, 5, 89, 'با امکان افزودن مخاطب به تعداد بی‌نهایت', NULL, NULL),
(948, 5, 90, 'بله', NULL, NULL),
(949, 5, 92, 'قطب‌نما (Compass) , شتاب‌سنج (Accelerometer) , مجاورت (Proximity) , فشارسنج (Barometer) , شمارنده ضربان قلب (Heart Rate) , سنجش اکسیژن خون (SPO2) , ژیروسکوپ (Gyro) , عنبیه چشم (Iris Scanner) , اثرانگشت روی قاب پشتی (FingerPrint|Rear-Mounted)', NULL, NULL),
(950, 5, 93, 'خیر', NULL, NULL),
(951, 5, 94, 'باتری از نوع لیتیوم-یون با ظرفیت 4000 میلی‌آمپر ساعت', NULL, NULL),
(952, 5, 95, 'دفترچه‌ راهنما , قلم S-Pen , شارژر , هندزفری', NULL, NULL),
(1246, 17, 99, '164.3 × 76.7 × 7.9 میلی‌متر', NULL, NULL),
(1247, 17, 37, '183 گرم', NULL, NULL),
(1248, 17, 40, 'دو سیم کارت', NULL, NULL),
(1249, 17, 39, 'مجهز به حس‌گر اثرانگشت , فبلت , مناسب عکاسی , مناسب عکاسی سلفی , مناسب بازی', NULL, NULL),
(1250, 17, 42, 'Qualcomm SDM675 Snapdragon 675 (یازده نانومتری)', NULL, NULL),
(1251, 17, 43, '8 هسته‌ای (دو هسته‌ی 2.0 گیگاهرتز Kryo 460 طلایی و شش هسته‌ی 1.7 گیگاهرتز Kryo 460 نقره‌ای)', NULL, NULL),
(1252, 17, 46, 'Adreno 612', NULL, NULL),
(1253, 17, 163, '128 گیگابایت', NULL, NULL),
(1254, 17, 164, '۶ گیگابایت', NULL, NULL),
(1255, 17, 165, 'microSD', NULL, NULL),
(1256, 17, 166, '512 گیگابایت', NULL, NULL),
(1257, 17, 53, 'بله', NULL, NULL),
(1258, 17, 54, 'بله', NULL, NULL),
(1259, 17, 56, 'Super AMOLED', NULL, NULL),
(1260, 17, 57, '6.6 اینچ', NULL, NULL),
(1261, 17, 58, '2400 × 1080 پیکسل', NULL, NULL),
(1262, 17, 59, '393 پیکسل بر هر اینچ', NULL, NULL),
(1263, 17, 60, 'دارد', NULL, NULL),
(1264, 17, 61, '16 میلیون رنگ', NULL, NULL),
(1265, 17, 63, '۲G,۳G,۴G', NULL, NULL),
(1266, 17, 67, 'GPRS , EDGE , Wi-Fi , بلوتوث , NFC', NULL, NULL),
(1267, 17, 69, '5.0، A2DP، LE', NULL, NULL),
(1268, 17, 71, 'USB Type-C 1.0 v2.0', NULL, NULL),
(1269, 17, 73, 'بله', NULL, NULL),
(1270, 17, 75, 'AutoFocus', NULL, NULL),
(1271, 17, 76, 'Dual LED', NULL, NULL),
(1272, 17, 77, 'دوربین سه‌گانه:', NULL, NULL),
(1273, 17, 77, '32 مگاپیکسل (فوکوس خودکار با تشخیص فاز، f/1.7)', NULL, NULL),
(1274, 17, 77, '8 مگاپیکسل (لنز فوق‌عریض 12 میلی‌متری، f/2.2)', NULL, NULL),
(1275, 17, 77, '5 مگاپیکسل (f/2.2، سنسور تشخیص عمق تصویر)', NULL, NULL),
(1276, 17, 78, '2160p@30fps، 1080p@30/240fps', NULL, NULL),
(1277, 17, 79, '32 مگاپیکسل (f/2.0)', NULL, NULL),
(1278, 17, 81, 'دارد', NULL, NULL),
(1279, 17, 82, 'جک 3.5 میلی‌متری', NULL, NULL),
(1280, 17, 83, 'لغو کننده‌ی نویز صدا از طریق میکروفون اختصاصی', NULL, NULL),
(1281, 17, 85, 'Android', NULL, NULL),
(1282, 17, 86, 'Pie 9.0', NULL, NULL),
(1283, 17, 87, 'بله', NULL, NULL),
(1284, 17, 161, 'MMS , ایمیل , مرورگر HTML , مرورگر HTML5 , قابلیت نمایش اسناد مایکروسافت آفیس , قابلیت نمایش فایل‌های متنی PDF , سرویس‌های گوگل شامل Google Search, Google Maps, Gmail و YouTube , قابلیت استفاده از سرویس شبکه‌های اجتماعی', NULL, NULL),
(1285, 17, 88, 'ندارد', NULL, NULL),
(1286, 17, 90, 'بله', NULL, NULL),
(1287, 17, 92, 'قطب‌نما (Compass),شتاب‌سنج (Accelerometer),ژیروسکوپ (Gyro)', NULL, NULL),
(1288, 17, 93, 'خیر', NULL, NULL),
(1289, 17, 94, '4500 میلی آمپر ساعت', NULL, NULL),
(1290, 17, 95, 'دفترچه‌ راهنما , شارژر', NULL, NULL),
(1297, 23, 99, '8.4 × 73.4 × 158 میلی‌متر', NULL, NULL),
(1298, 23, 37, '192 گرم', NULL, NULL),
(1299, 23, 164, '۸ مگابایت', NULL, NULL),
(1311, 24, 168, '۱۰۰ میلی لیتر', NULL, NULL),
(1312, 24, 169, 'امارات', NULL, NULL),
(1313, 24, 170, '2014', NULL, NULL),
(1314, 24, 171, 'سازمان غذا و دارو', NULL, NULL),
(1315, 24, 172, 'امارات', NULL, NULL),
(1316, 24, 174, 'آقایان', NULL, NULL),
(1317, 24, 175, 'شیرین,طبیعت,خوراکی,تند,خنک', NULL, NULL),
(1318, 24, 176, 'گل,میوه,مرکبات,وانیل,خاک و زمین', NULL, NULL),
(1319, 24, 177, 'فلفل سیاه و نارنج', NULL, NULL),
(1320, 24, 178, 'فلفل سیچوان، اسطوخودوس، گل شمعدانی، صمغ لامی، فلفل صورتی، علف وتیور و گیاه پاتچولی', NULL, NULL),
(1321, 24, 179, 'چوب سدر، گل لادن و عنبر', NULL, NULL),
(1323, 11, 40, 'دو سیم کارته', NULL, NULL),
(1779, 12, 99, '7.7 × 70.9 × 143.6 میلی‌متر', NULL, NULL),
(1780, 12, 37, '174 گرم', NULL, NULL),
(1781, 12, 38, 'دارای گواهینامه IP67 مقاوم در برابر گرد و غبار و آب تا عمق 1 متر و به مدت 30 دقیقه', NULL, NULL),
(1782, 12, 38, 'فلز و شیشه (محافظ گوریلا گلس روی قاب پشتی)', NULL, NULL),
(1783, 12, 40, 'تک سیم کارت', NULL, NULL),
(1784, 12, 39, 'مقاوم در برابر آب , مناسب عکاسی , مناسب عکاسی سلفی , مناسب بازی , مجهز به حس‌گر تشخیص چهره', NULL, NULL),
(1785, 12, 42, 'Apple A11 Bionic Chipset', NULL, NULL),
(1786, 12, 43, 'Dual-Core Monsoon + Quad-Core Mistral CPU', NULL, NULL),
(1787, 12, 44, '64 بیت', NULL, NULL),
(1788, 12, 46, 'Apple Three Core GPU', NULL, NULL),
(1789, 12, 163, '256 گیگابایت', NULL, NULL),
(1790, 12, 164, '256 گیگابایت', NULL, NULL),
(1791, 12, 165, 'ندارد', NULL, NULL),
(1792, 12, 53, 'بله', NULL, NULL),
(1793, 12, 54, 'بله', NULL, NULL),
(1794, 12, 56, 'Super Retina', NULL, NULL),
(1795, 12, 57, '5.8 اینچ', NULL, NULL),
(1796, 12, 58, '2436 × 1125', NULL, NULL),
(1797, 12, 59, '458 پیکسل بر هر اینچ', NULL, NULL),
(1798, 12, 60, 'Scratch-Resistant Glass', NULL, NULL),
(1799, 12, 61, '16 میلیون رنگ', NULL, NULL),
(1800, 12, 155, 'پشتیبانی از استاندارد Dolby Vision/HDR10', NULL, NULL),
(1801, 12, 155, 'مجهز به فناوری تشخیص لمس سه‌بعدی (3D Touch)', NULL, NULL),
(1802, 12, 155, 'قابلیت نمایش رنگ‌های نزدیک به واقعیت (True-Tone Display)', NULL, NULL),
(1803, 12, 155, 'قابلیت نمایش طیف رنگی گستره (Wide Color Gamut Display)', NULL, NULL),
(1804, 12, 155, 'قابلیت دریافت تا 10 لمس همزمان', NULL, NULL),
(1805, 12, 63, '2G , 3G , 4G', NULL, NULL),
(1806, 12, 64, 'GSM 850 / 900 / 1800 / 1900', NULL, NULL),
(1807, 12, 65, 'HSDPA 850 / 900 / 1700 / 1900 / 2100 - A1901, A1865', NULL, NULL),
(1808, 12, 65, 'HSPA با سرعت دانلود 42.2 مگابیت بر ثانیه و آپلود 5.76 مگابیت بر ثانیه', NULL, NULL),
(1809, 12, 66, 'LTE band 1|2100, 2|1900, 3|1800, 4|1700/2100, 5|850, 7|2600, 8|900, 12|700, 13|700, 17|700, 18|800, 19|800, 20|800, 25|1900, 26|850, 28|700, 29|700, 30|2300, 34|2000, 38|2600, 39|1900, 40|2300, 41|2500, 66|1700/2100', NULL, NULL),
(1810, 12, 66, 'LTE از نوع Cat16 با سرعت دانلود 1024 مگابیت بر ثانیه و آپلود 150 مگابیت بر ثانیه', NULL, NULL),
(1811, 12, 67, 'GPRS , EDGE , Wi-Fi , بلوتوث , NFC', NULL, NULL),
(1812, 12, 68, 'Wi-Fi 802.11 a/b/g/n/ac', NULL, NULL),
(1813, 12, 68, 'Dual-band, Hotspot', NULL, NULL),
(1814, 12, 69, 'نسخه‌ 5.0', NULL, NULL),
(1815, 12, 69, 'A2DP, LE', NULL, NULL),
(1816, 12, 71, 'Lightning', NULL, NULL),
(1817, 12, 73, 'دو دوربین اصلی', NULL, NULL),
(1818, 12, 74, '12.0 مگاپیکسل', NULL, NULL),
(1819, 12, 75, 'Phase Detection', NULL, NULL),
(1820, 12, 76, 'Quad LED', NULL, NULL),
(1821, 12, 77, 'دارای دو دوربین در پشت گوشی | دو دوربین 12 مگاپیکسل+ 12 مگاپیکسل (Dual)', NULL, NULL),
(1822, 12, 77, 'دوربین اول با دریچه‌ی دیافراگم f/1.8', NULL, NULL),
(1823, 12, 77, 'دوربین دوم با دریچه‌ی دیافراگم f/2.4', NULL, NULL),
(1824, 12, 77, 'هر دو دوربین مجهز به لرزشگیر اپتیکال تصویر (Optical Image Stabilization)', NULL, NULL),
(1825, 12, 77, 'مجهز به زوم اپتیکال تا 2 برابر (2x Optical Zoom)', NULL, NULL),
(1826, 12, 77, 'قابلیت عکاسی با رزولوشن 8 مگاپیکسل همزمان با فیلمبرداری با رزولوشن 4K همزمان (Simultaneous 4K video and 8MP image recording)', NULL, NULL),
(1827, 12, 77, 'قابلیت ثبت موقعیت جغرافیایی عکس‌ها و فیلم‌ها (Geo-Tagging)', NULL, NULL),
(1828, 12, 77, 'قابلیت فوکوس با اشاره روی سوژه (Touch Focus)', NULL, NULL),
(1829, 12, 77, 'قابلیت تشخیص چهره و لبخند (Face and Smile Detection)', NULL, NULL),
(1830, 12, 77, 'قابلیت عکاسی پانوراما (Panorama)', NULL, NULL),
(1831, 12, 77, 'قابلیت عکاسی HDR', NULL, NULL),
(1832, 12, 78, 'رزولوشن 2160 × 3840 و سرعت 24/30/60 فریم بر ثانیه (2160p@24/30/60FPS)', NULL, NULL),
(1833, 12, 78, 'رزولوشن 1080 × 1920 و سرعت 30/60/120/240 فریم بر ثانیه (1080p@30/60/120/240FPS)', NULL, NULL),
(1834, 12, 79, 'دارای سنسور با رزولوشن 7 مگاپیکسل', NULL, NULL),
(1835, 12, 79, 'دارای دریچه‌ی دیافراگم f/2.2', NULL, NULL),
(1836, 12, 79, 'قابلیت عکاسی پانوراما (Panorama)', NULL, NULL),
(1837, 12, 79, 'قابلیت تشخیص چهره (Face Detection)', NULL, NULL),
(1838, 12, 79, 'قابلیت عکاسی HDR', NULL, NULL),
(1839, 12, 79, 'فیلمبرداری با رزولوشن 1920 × 1080 و سرعت 30 فریم بر ثانیه (1080p@30FPS)', NULL, NULL),
(1840, 12, 81, 'استریو', NULL, NULL),
(1841, 12, 82, 'Lightning', NULL, NULL),
(1842, 12, 83, 'قابلیت حذف صدا‌های مزاحم هنگام مکالمه با استفاده از میکروفون دوم (Active Noise Cancellation With Dedicated Mic)', NULL, NULL),
(1843, 12, 85, 'iOS', NULL, NULL),
(1844, 12, 86, '11', NULL, NULL),
(1845, 12, 87, 'بله', NULL, NULL),
(1846, 12, 161, 'MMS , ایمیل , مرورگر HTML5 , قابلیت نمایش اسناد مایکروسافت آفیس , قابلیت نمایش فایل‌های متنی PDF , برنامه ویرایش عکس , قابلیت استفاده از سرویس شبکه‌های اجتماعی', NULL, NULL),
(1847, 12, 88, 'ندارد', NULL, NULL),
(1848, 12, 156, 'WAV , AC3 , AAX+ , AIFF', NULL, NULL),
(1849, 12, 157, 'MP4 , H.264', NULL, NULL),
(1850, 12, 90, 'بله', NULL, NULL),
(1851, 12, 92, 'قطب‌نما (Compass) , شتاب‌سنج (Accelerometer) , مجاورت (Proximity) , فشارسنج (Barometer) , ژیروسکوپ (Gyro) , تشخیص چهره بیومتریک (Face ID)', NULL, NULL),
(1852, 12, 94, 'باتری از نوع لیتیوم-یون با ظرفیت 2716 میلی‌آمپر ساعت', NULL, NULL),
(1853, 12, 159, '21 ساعت', NULL, NULL),
(1854, 12, 95, 'دفترچه‌ راهنما , شارژر , هندزفری , کابل Lightning , تبدیل Lightning به جک 3.5 میلی‌متری صدا', NULL, NULL),
(1855, 12, 160, 'قابلیت شارژ سریع باتری (Fast Battery Charging)', NULL, NULL),
(1856, 12, 160, 'قابلیت شارژ به‌صورت بی‌سیم (Wireless Charging)', NULL, NULL),
(1857, 12, 160, 'مجهز به دستیار صوتی اپل Siri', NULL, NULL),
(1858, 12, 160, 'مجهز به سرویس‌های ابری iCloud', NULL, NULL),
(1882, 19, 99, '7.8 × 74.1 × 157.6 میلی‌متر', NULL, NULL),
(1883, 19, 37, 'رنگ های معمول 175 گرم و رنگ های سرامیکی 198 گرم', NULL, NULL),
(1884, 19, 38, 'فلز و شیشه (محافظ گوریلا گلس 5 روی قاب پشتی + فریم آلومینیومی + حافظ گوریلا گلس 6 روی قاب جلویی)', NULL, NULL),
(1885, 19, 38, 'دارای گواهینامه IP68 مقاوم در برابر گرد و غبار و آب تا عمق 1.5 متر و به مدت 30 دقیقه', NULL, NULL),
(1886, 19, 38, 'کاربرد شیار دوم برای سیم‌کارت یا کارت حافظه‌ی جانبی', NULL, NULL),
(1887, 19, 40, 'دو سیم کارت', NULL, NULL),
(1888, 19, 39, 'مقاوم در برابر آب , دارای بدنه مقاوم , مناسب عکاسی , فبلت , مجهز به حس‌گر اثرانگشت , مناسب عکاسی سلفی , مجهز به حس‌گر تشخیص چهره', NULL, NULL),
(1889, 19, 42, 'Exynos 9820 (8 nm) Chipset', NULL, NULL),
(1890, 19, 43, 'Dual-Core Monogoose M4 + Dual-Core Cortex-A75 + Quad-Core Cortex-A55', NULL, NULL),
(1891, 19, 44, '64 بیت', NULL, NULL),
(1892, 19, 45, '2.73 , 2.31 , 1.95 گیگاهرتز', NULL, NULL),
(1893, 19, 46, 'Mali-G76 MP12 GPU', NULL, NULL),
(1894, 19, 163, '128 گیگابایت', NULL, NULL),
(1895, 19, 164, '۸ مگابایت,', NULL, NULL),
(1896, 19, 165, 'microSD', NULL, NULL),
(1897, 19, 166, '1 ترابایت', NULL, NULL),
(1898, 19, 63, '۲G,۳G', NULL, NULL),
(1899, 19, 92, 'شتاب‌سنج (Accelerometer),مجاورت (Proximity),قطب‌نما (Compass),ژیروسکوپ (Gyro),', NULL, NULL),
(1900, 19, 93, 'بله', NULL, NULL),
(1901, 19, 94, 'باتری لیتیوم یون با ظرفیت 4100 میلی‌آمپرساعت', NULL, NULL),
(1902, 19, 160, 'قابلیت شارژ سریع با توان 15 وات', NULL, NULL),
(1903, 19, 160, 'مجهز به شارژ بی‌سیم Qi', NULL, NULL),
(1904, 19, 160, 'پشتیبانی از شارژ سریع بی سیم با توان 15 وات', NULL, NULL),
(1905, 19, 160, 'پشتیبانی از شبکه‌ی بی‌سیم +ANT', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT -1,
  `parent_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `user_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `from_id` int(11) NOT NULL,
  `to_id` int(11) NOT NULL,
  `from_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `to_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `status`, `parent_id`, `title`, `content`, `file`, `user_id`, `user_type`, `from_id`, `to_id`, `from_type`, `time`, `deleted_at`, `created_at`, `updated_at`, `to_type`) VALUES
(1, 0, 0, 'اشکال در مدارک ارسالی', 'سلام \r\nفروشنده گرامی در اسکن شناسنامه ارسالی شما واضح نبوده و لازم هست مجددا از قسمت پروفایل ارسال نمایید\r\nبا تشکر', '1587050146.png', 10, 'App\\Seller', 26, 10, 'App\\User', 1587050146, NULL, '2020-04-16 10:45:46', '2020-04-17 10:41:43', 'App\\Seller'),
(2, 0, 0, 'عدم واریز کارکرد', 'سلام\r\nکارکرد این ماه فروشگاه واریز نشده لطفا بررسی فرمایید', '1587106184.png', 10, 'App\\Seller', 10, 0, 'App\\Seller', 1587106184, NULL, '2020-04-17 02:19:44', '2020-04-20 10:29:16', 'App\\User'),
(3, -1, 2, NULL, '؟', NULL, 10, 'App\\Seller', 10, 0, 'App\\Seller', 1587109844, NULL, '2020-04-17 03:20:44', '2020-04-17 03:20:44', 'App\\User'),
(4, -1, 2, NULL, 'سلام\r\nتا یکی دو روز دیگهه واریز میشه', NULL, 10, 'App\\Seller', 26, 10, 'App\\User', 1587133810, NULL, '2020-04-17 10:00:10', '2020-04-17 10:00:10', 'App\\Seller'),
(5, -1, 2, NULL, 'بله ممنون', NULL, 10, 'App\\Seller', 10, 0, 'App\\Seller', 1587134144, NULL, '2020-04-17 10:05:44', '2020-04-17 10:05:44', 'App\\User'),
(7, -1, 2, NULL, 'بله\r\nممنون', NULL, 10, 'App\\Seller', 10, 0, 'App\\Seller', 1587134626, NULL, '2020-04-17 10:13:46', '2020-04-17 10:13:46', 'App\\User'),
(8, -1, 1, NULL, 'سلام\r\nچشم حتما انجام میشه', NULL, 10, 'App\\Seller', 10, 0, 'App\\Seller', 1587136136, NULL, '2020-04-17 10:38:56', '2020-04-17 10:38:56', 'App\\User'),
(9, 0, 0, ' عدم بازگشت وجه', 'سلام\r\nلطفا هزینه مربوط به کالای مرجوع شده را واریز نمایید\r\nبا تشکر', NULL, 9, 'App\\User', 9, 0, 'App\\User', 1587140471, NULL, '2020-04-17 11:51:11', '2020-04-20 11:26:47', 'App\\User'),
(10, -1, 9, NULL, 'سلام\r\nهزینه به شماره کارتی ارسال شما واریز شده', NULL, 9, 'App\\User', 26, 9, 'App\\User', 1587394427, NULL, '2020-04-20 10:23:47', '2020-04-20 10:23:47', 'App\\User'),
(11, -1, 2, NULL, 'ارسالی تستی', NULL, 10, 'App\\Seller', 26, 10, 'App\\User', 1587394747, NULL, '2020-04-20 10:29:07', '2020-04-20 10:29:07', 'App\\Seller'),
(12, -1, 9, NULL, 'ممنون', NULL, 9, 'App\\User', 9, 0, 'App\\User', 1587398159, NULL, '2020-04-20 11:25:59', '2020-04-20 11:25:59', 'App\\User'),
(13, 0, 0, 'آماده سازی سفارش', 'سلام\r\nکاربر گرامی سفارش شما آماده ارسال می باشد', NULL, 9, 'App\\User', 26, 9, 'App\\User', 1587403996, NULL, '2020-04-20 13:03:16', '2020-04-22 13:45:50', 'App\\User'),
(14, -1, 13, NULL, 'ارسال شد', NULL, 9, 'App\\User', 26, 9, 'App\\User', 1587404595, NULL, '2020-04-20 13:13:15', '2020-04-20 13:13:15', 'App\\User'),
(15, -1, 13, NULL, 'سلام\r\nممنون', NULL, 9, 'App\\User', 9, 0, 'App\\User', 1587404649, NULL, '2020-04-20 13:14:09', '2020-04-20 13:14:09', 'App\\User'),
(16, 0, 0, 'واریز کار کردن فروردین ماه', 'سلام\r\nکارکرد فرودین ماه شما به مبلغ ده میلیون تومان واریز شد', NULL, 10, 'App\\Seller', 26, 10, 'App\\User', 1587404860, NULL, '2020-04-20 13:17:40', '2020-04-22 11:11:15', 'App\\Seller'),
(27, 0, 0, 'آماده سازی سفارش', 'سلام\r\nآماده سازی سفارش شده انجام شده و به زودی ارسال خواهد شد', NULL, 9, 'App\\User', 26, 9, 'App\\User', 1587572753, NULL, '2020-04-22 11:55:53', '2020-04-22 12:53:47', 'App\\User'),
(29, -1, 0, 'آماده سازی محصولات', 'سلام\r\nلطفا محصولات مربوط به سفارشات اخیر را آماده و به انبار فروشگاه ارسال نمایید', NULL, 10, 'App\\Seller', 26, 10, 'App\\User', 1587573138, NULL, '2020-04-22 12:02:18', '2020-04-22 12:02:18', 'App\\Seller'),
(32, -1, 29, NULL, 'لطفا در اسرع وقت محصولات را ارسال نمایید', NULL, 10, 'App\\Seller', 26, 10, 'App\\User', 1587573923, NULL, '2020-04-22 12:15:23', '2020-04-22 12:15:23', 'App\\Seller'),
(36, -1, 0, 'آماده سازی محصولات', 'سلام\r\nلطفا محصولات مربوط به سفارشات اخیر را آماده و به انبار فروشگاه ارسال نمایید', NULL, 10, 'App\\Seller', 26, 10, 'App\\User', 1587574915, NULL, '2020-04-22 12:31:55', '2020-04-22 12:31:55', 'App\\Seller'),
(37, -1, 27, NULL, 'ارسال سفارش شما هم انجام شد', NULL, 9, 'App\\User', 26, 9, 'App\\User', 1587575146, NULL, '2020-04-22 12:35:46', '2020-04-22 12:35:46', 'App\\User'),
(38, -1, 0, 'آماده سازی محصولات', 'سلام\r\nلطفا محصولات مربوط به سفارشات اخیر را آماده و به انبار فروشگاه ارسال نمایید', NULL, 10, 'App\\Seller', 26, 10, 'App\\User', 1587579370, NULL, '2020-04-22 13:46:10', '2020-04-22 13:46:10', 'App\\Seller'),
(44, 0, 0, 'تست ۲', 'تست ۲', NULL, 9, 'App\\User', 9, 0, 'App\\User', 1612946629, NULL, '2021-02-10 05:13:49', '2021-02-10 05:16:08', 'App\\User');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_09_13_142158_create_category_table', 1),
(5, '2019_09_15_201947_create_brands_table', 1),
(6, '2019_09_15_212914_create_colors_table', 1),
(7, '2019_09_16_144313_create_products_table', 1),
(8, '2019_09_16_213710_add_column_to_products_table', 1),
(9, '2019_09_16_223717_create_product_color', 1),
(10, '2019_09_17_204919_create_warranties_table', 1),
(11, '2019_09_17_211158_create_product_warranties_table', 1),
(12, '2019_09_18_201334_create_product_price', 1),
(13, '2019_09_20_211249_create_product_galleries_table', 1),
(14, '2019_09_22_222318_create_sliders_table', 1),
(15, '2019_09_22_233858_create_items_table', 1),
(16, '2019_09_26_232051_add_item_value_table', 1),
(17, '2019_10_02_224442_create_filter_table', 1),
(18, '2019_10_04_220958_create_filter_product', 1),
(19, '2019_10_20_140927_add_columns_to_products_table', 2),
(20, '2019_10_20_160003_add_column_to_product_warranties_table', 3),
(21, '2019_10_20_160419_add_old_price_table', 4),
(22, '2019_10_24_170628_create_jobs_table', 5),
(23, '2014_10_12_000000_create_users_table', 6),
(24, '2019_10_24_170635_create_failed_jobs_table', 7),
(25, '2019_12_12_070456_create_setting_table', 8),
(26, '2019_12_12_081010_create_provinve_table', 9),
(27, '2019_12_12_081201_create_city_table', 9),
(28, '2019_12_12_180258_create_address_table', 10),
(44, '2019_12_17_092414_create_orders_table', 11),
(45, '2019_12_17_093240_create_order_products_table', 11),
(46, '2019_12_17_094339_create_order_infos_table', 11),
(48, '2019_12_24_090011_create_gift_carts_table', 12),
(50, '2019_12_25_164412_create_discount_codes_table', 13),
(53, '2020_01_16_180911_create_cat_brands_table', 14),
(54, '2020_01_19_071909_add_column_ready_to_shipment_to_product_table', 15),
(55, '2020_01_24_080020_create_re_views_table', 16),
(58, '2020_01_25_160216_create_comments_table', 17),
(59, '2020_01_25_160713_create_comment_scores_table', 17),
(60, '2020_01_26_155658_create_additional_infos_table', 18),
(61, '2020_01_28_095526_add_column_to_comment_score_table', 19),
(62, '2020_01_28_174828_create_user_scored_status_table', 20),
(63, '2020_02_03_161719_create_sellers_table', 21),
(66, '2020_02_20_073105_create_questions_table', 22),
(67, '2020_02_21_173120_create_user_roles_table', 23),
(68, '2020_02_21_173644_add_role_id_column_to_users_table', 24),
(70, '2020_02_23_090547_add_username_column_to_users_table', 25),
(71, '2020_02_24_091819_create_role_accesses_table', 26),
(72, '2020_02_26_083158_create_favorites_table', 27),
(73, '2020_03_01_080604_create_stockrooms_table', 28),
(74, '2020_03_01_173439_create_stockroom_events_table', 29),
(75, '2020_03_01_173748_create_stockroom_products_table', 29),
(77, '2020_03_01_181839_create_inventory_lists_table', 30),
(79, '2020_03_05_151943_create_commissions_table', 31),
(80, '2020_03_05_170414_add_commission_column_to_sller_table', 32),
(81, '2020_03_05_171015_create_sale_statistics', 33),
(82, '2020_03_05_171140_create_seller_sale_statistics', 33),
(83, '2020_03_05_174043_create_product_sale_statistics', 34),
(84, '2020_03_08_153831_add_forget_password_column_to_user_table', 35),
(86, '2020_03_11_162705_add_order_discount_table', 36),
(87, '2020_03_14_182535_create_pages_table', 37),
(88, '2020_03_20_155640_create_seller_document_table', 38),
(120, '2020_03_24_153352_create_seller_products_table', 40),
(121, '2020_03_25_161350_create_reject_message_table', 41),
(122, '2020_03_31_144849_add_product_warranty_id_to_order_products_table', 42),
(123, '2020_04_01_082949_create_packages_table', 43),
(124, '2020_04_01_083002_create_package_products_table', 43),
(125, '2020_04_06_162324_add_shaba_column_to_sellers_table', 44),
(127, '2020_04_13_153922_create_payments_table', 45),
(128, '2020_04_16_142647_create_messages_table', 46),
(129, '2020_04_24_170309_create_common_questions_table', 47),
(130, '2020_04_24_170413_create_category_common_questions_table', 47),
(131, '2020_04_29_150616_create_submission_events_table', 48),
(132, '2020_05_04_170850_add_status_column_to_product_warranty_table', 49),
(133, '2020_05_05_160150_add_fake_column_to_products_table', 50),
(134, '2020_05_06_151536_create_cart_table', 51),
(136, '2020_05_20_082811_add_column_to_colors_table', 52),
(139, '2020_08_11_163853_create_send_type_order_table', 53),
(143, '2020_08_16_160629_add_product_weight_column_to_products_table', 54),
(144, '2020_08_20_173010_add_send_type_column_to_order_infos_table', 55),
(146, '2020_11_30_023318_create_test_table', 56),
(147, '2016_06_01_000001_create_oauth_auth_codes_table', 57),
(148, '2016_06_01_000002_create_oauth_access_tokens_table', 57),
(149, '2016_06_01_000003_create_oauth_refresh_tokens_table', 57),
(150, '2016_06_01_000004_create_oauth_clients_table', 57),
(151, '2016_06_01_000005_create_oauth_personal_access_clients_table', 57);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('4171bd7f3b69bd4b2e06efb4559375d2542930a61809b4b2fe2765649d2847d6a1f94ba04f2143cc', 9, 3, NULL, '[]', 0, '2021-05-22 17:07:59', '2021-05-22 17:07:59', '2021-06-06 21:37:58'),
('79386ada433b87ee32d9554f192ac79a489b099a94c1ababac67e347f2ac73b86a264425b0c16de5', 10, 3, NULL, '[]', 0, '2021-06-03 10:46:09', '2021-06-03 10:46:09', '2021-06-18 15:16:09'),
('b888ef4eb56fe6ec062d0ef4f1f9b8f85dcbcaf1e2b43d9c2cdbe7a256d516afc79998009e5ceac6', 10, 3, NULL, '[]', 0, '2021-05-22 17:21:25', '2021-05-22 17:21:25', '2021-06-06 21:51:25'),
('c20d43688eb230597519a58e1fe49916c0da9d8e9edf3d6a914c967ae84f9c8540f72a82bb3fcfef', 9, 3, NULL, '[]', 0, '2021-05-22 17:10:34', '2021-05-22 17:10:34', '2021-06-06 21:40:34'),
('d2440db5bb2d5f05b36faf79eac5cb7f4388652199ef4a493409f5c615bc1137c0aeca6d8d611d04', 9, 3, NULL, '[]', 0, '2021-05-22 17:02:45', '2021-05-22 17:02:45', '2021-06-06 21:32:45'),
('f540d03e5a83c49e8e474316fa913e5c2104e7ec1144266973efca02ad0d08ba5750f701f3c63192', 9, 3, NULL, '[]', 0, '2021-05-22 17:17:13', '2021-05-22 17:17:13', '2021-06-06 21:47:13');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Password Grant Client', 'P4CZxNCeX4AWFvhjiw9EbGdBBgMjW1pwvLnE3CmM', 'sellers', 'http://localhost', 0, 1, 0, '2021-05-22 16:49:27', '2021-05-22 16:49:27'),
(2, NULL, 'Laravel Personal Access Client', '3vtjv1PjTc09xMCViwP6vtXM9WHju48U8xQjqAzU', NULL, 'http://localhost', 1, 0, 0, '2021-05-22 17:01:57', '2021-05-22 17:01:57'),
(3, NULL, 'Laravel Password Grant Client', 'PDeOj6WKmPZE32atZCMGNSHVrCcvPdnBDlgvADeR', 'sellers', 'http://localhost', 0, 1, 0, '2021-05-22 17:01:57', '2021-05-22 17:01:57'),
(4, NULL, 'Laravel Password Grant Client', 'ZHwqqG7HVMwVX5aCkJ6B0dGR0ivq7MPPURSO33Rn', 'sellers', 'http://localhost', 0, 1, 0, '2021-05-22 17:13:06', '2021-05-22 17:13:06'),
(5, NULL, 'Laravel Password Grant Client', 'eti3Gf6oggbjSd3BIcgPJEghJWUfth8Jmgv3gLSQ', 'users', 'http://localhost', 0, 1, 0, '2021-05-31 14:28:12', '2021-05-31 14:28:12');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 2, '2021-05-22 17:01:57', '2021-05-22 17:01:57');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('03e959b8490f2895a6055ec50c78cee8c6cba23aaeab8dac50f5849e63193d329e7f1fc7a295e21a', '79386ada433b87ee32d9554f192ac79a489b099a94c1ababac67e347f2ac73b86a264425b0c16de5', 0, '2022-06-03 15:16:09'),
('0be50d057927c732d3e62b9e6cdce9474759ce3bc4f2325867217f48e89c32074d8e0504704a9341', '4171bd7f3b69bd4b2e06efb4559375d2542930a61809b4b2fe2765649d2847d6a1f94ba04f2143cc', 0, '2022-05-22 21:37:59'),
('1e773a53edaf43697693d4434c56aafb6a739b9df3a831d8a0d16f0c379e03f03358ba51eb531e57', 'f540d03e5a83c49e8e474316fa913e5c2104e7ec1144266973efca02ad0d08ba5750f701f3c63192', 0, '2022-05-22 21:47:13'),
('5590f40ecc9657f78b1768dfa03b61bfe8f5b966846c9fd0f105494739b38ce14c8012976a85e033', 'c20d43688eb230597519a58e1fe49916c0da9d8e9edf3d6a914c967ae84f9c8540f72a82bb3fcfef', 0, '2022-05-22 21:40:34'),
('5c4b37487433bbe774e715da5eae318d067162fe5e42ef3be48bef395acd9ed42bf4e591a9414a0d', 'b888ef4eb56fe6ec062d0ef4f1f9b8f85dcbcaf1e2b43d9c2cdbe7a256d516afc79998009e5ceac6', 0, '2022-05-22 21:51:25'),
('9092416136e208fb786ff1cfd5c00c12a60304a901531d05d155fa73f1acbb8a0ab16b642a149284', 'd2440db5bb2d5f05b36faf79eac5cb7f4388652199ef4a493409f5c615bc1137c0aeca6d8d611d04', 0, '2022-05-22 21:32:45');

-- --------------------------------------------------------

--
-- Table structure for table `old_price`
--

CREATE TABLE `old_price` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `warranty_id` int(11) NOT NULL,
  `price1` int(11) NOT NULL,
  `price2` int(11) NOT NULL,
  `product_number` int(11) NOT NULL,
  `product_number_cart` int(11) NOT NULL,
  `Number_product_sales` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `old_price`
--

INSERT INTO `old_price` (`id`, `warranty_id`, `price1`, `price2`, `product_number`, `product_number_cart`, `Number_product_sales`, `created_at`, `updated_at`) VALUES
(26, 5, 15480000, 15080000, 0, 5, 20, NULL, NULL),
(57, 7, 15180000, 15000000, 0, 2, 6, NULL, NULL),
(58, 36, 16000000, 16000000, 0, 3, 10, NULL, NULL),
(59, 29, 15000000, 15000000, 0, 2, 5, NULL, NULL),
(60, 10, 6299000, 6299000, 0, 2, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `pay_status` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `total_price` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `order_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pay_code1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pay_code2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_read` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `send_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `discount_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gift_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gift_id` int(11) DEFAULT NULL,
  `updated_at` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `date`, `user_id`, `address_id`, `pay_status`, `total_price`, `price`, `order_id`, `pay_code1`, `pay_code2`, `order_read`, `send_type`, `discount_value`, `discount_code`, `gift_value`, `gift_id`, `updated_at`, `created_at`, `deleted_at`) VALUES
(2, '1398-9-28', 9, 11, 'ok', 14930000, 14930000, '57677972944', NULL, NULL, 'ok', '2', NULL, NULL, NULL, NULL, 1576861777, 1576772944, NULL),
(4, '1398-9-28', 9, 11, 'ok', 29898000, 29898000, '57678981739', NULL, NULL, 'ok', '2', NULL, NULL, NULL, NULL, 1577112592, 1576781739, NULL),
(5, '1398-9-28', 9, 11, 'ok', 29898000, 29898000, '57678981861', NULL, NULL, 'ok', '1', NULL, NULL, NULL, NULL, 1577112003, 1576781861, NULL),
(6, '1398-9-29', 9, 11, 'ok', 26000, 26000, '57686961067', NULL, NULL, 'ok', '1', NULL, NULL, NULL, NULL, 1577120958, 1576861067, NULL),
(7, '1398-10-3', 9, 11, 'canceled', 126000, 126000, '57717979788', NULL, NULL, 'ok', '1', NULL, NULL, NULL, NULL, 1588695540, 1577179788, NULL),
(8, '1398-10-3', 9, 11, 'ok', 126000, 126000, '57717979827', NULL, NULL, 'ok', '1', NULL, NULL, NULL, NULL, 1577180229, 1577179827, NULL),
(9, '1398-10-4', 9, 11, 'ok', 14818000, 14718000, '57729990065', NULL, NULL, 'ok', '1', NULL, NULL, '100000', 2, 1577291772, 1577290065, NULL),
(10, '1398-10-4', 9, 11, 'ok', 14818000, 14818000, '57729992112', NULL, NULL, 'ok', '1', NULL, NULL, NULL, NULL, 1583750411, 1577292112, NULL),
(11, '1398-10-5', 9, 11, 'canceled', 14818000, 14818000, '57738984287', NULL, NULL, 'ok', '1', NULL, NULL, NULL, NULL, 1588695540, 1577384287, NULL),
(12, '1398-10-6', 9, 11, 'canceled', 14800000, 14700000, '57739997822', NULL, NULL, 'ok', '1', NULL, NULL, NULL, NULL, 1588695540, 1577397822, NULL),
(13, '1398-10-6', 9, 11, 'ok', 14826000, 14666000, '57745956991', NULL, NULL, 'ok', '2', '110000', 'takhfif', '50000', 2, 1577457147, 1577456991, NULL),
(14, '1398-12-13', 9, 15, 'ok', 13000000, 13000000, '58322928237', NULL, NULL, 'ok', '1', NULL, NULL, NULL, NULL, 1583517194, 1583228237, NULL),
(15, '1398-12-15', 9, 15, 'ok', 28000000, 28000000, '58342929357', NULL, NULL, 'ok', '1', NULL, NULL, NULL, NULL, 1583431194, 1583429357, NULL),
(16, '1398-12-15', 9, 15, 'ok', 14800000, 14800000, '58343934340', NULL, NULL, 'ok', '1', NULL, NULL, NULL, NULL, 1583516634, 1583434340, NULL),
(17, '1398-12-19', 9, 15, 'ok', 14800000, 14800000, '58377979749', NULL, NULL, 'ok', '1', NULL, NULL, NULL, NULL, 1589958395, 1583779749, NULL),
(18, '1398-12-19', 9, 15, 'ok', 14800000, 14800000, '58377979985', NULL, NULL, 'ok', '1', NULL, NULL, NULL, NULL, 1589958395, 1583779985, NULL),
(19, '1398-12-19', 9, 15, 'ok', 14800000, 14800000, '58378980118', NULL, NULL, 'ok', '1', NULL, NULL, NULL, NULL, 1583785024, 1583780118, NULL),
(20, '1398-12-21', 9, 15, 'canceled', 25500000, 25300000, '58392926104', NULL, NULL, 'ok', '1', '200000', 'takhfif', NULL, NULL, 1589958330, 1583926104, NULL),
(21, '1398-12-21', 9, 15, 'canceled', 25500000, 25300000, '58392926228', NULL, NULL, 'ok', '1', '200000', 'takhfif', NULL, NULL, 1589958330, 1583926228, NULL),
(22, '1398-12-21', 9, 15, 'ok', 35980000, 35390400, '58394944583', NULL, NULL, 'ok', '1', '589600', 'takhfif', NULL, NULL, 1583944688, 1583944583, NULL),
(23, '1398-12-21', 9, 15, 'ok', 42279000, 41563420, '58394948569', NULL, NULL, 'ok', '1', '715580', 'takhfif', NULL, NULL, 1583948653, 1583948569, NULL),
(24, '1398-12-21', 9, 15, 'ok', 13180000, 13048200, '58395952639', NULL, NULL, 'ok', '1', '131800', 'takhfif', NULL, NULL, 1583952730, 1583952639, NULL),
(25, '1398-12-21', 9, 15, 'canceled', 10498000, 10498000, '58395956285', NULL, NULL, 'ok', '1', NULL, NULL, NULL, NULL, 1589958327, 1583956285, NULL),
(26, '1398-12-21', 9, 15, 'canceled', 10660000, 10660000, '58395956338', NULL, NULL, 'ok', '1', NULL, NULL, NULL, NULL, 1589958326, 1583956338, NULL),
(27, '1398-12-21', 9, 15, 'canceled', 10660000, 10660000, '58395956505', NULL, NULL, 'ok', '1', NULL, NULL, NULL, NULL, 1589958322, 1583956505, NULL),
(28, '1398-12-24', 9, 15, 'ok', 14872000, 14721778, '58417975076', NULL, NULL, 'ok', '1', '150222.22220720001', 'takhfif', NULL, NULL, 1584175182, 1584175076, NULL),
(29, '1398-12-24', 9, 15, 'ok', 14872000, 14721778, '58417976013', NULL, NULL, 'ok', '1', '150222.22220720001', 'takhfif', NULL, NULL, 1584176070, 1584176013, NULL),
(30, '1398-12-24', 9, 15, 'ok', 27800000, 27800000, '58420904595', NULL, NULL, 'ok', '1', NULL, NULL, NULL, NULL, 1584205072, 1584204595, NULL),
(31, '1398-12-24', 9, 15, 'ok', 27800000, 27800000, '58420905150', NULL, NULL, 'ok', '1', NULL, NULL, NULL, NULL, 1584205242, 1584205150, NULL),
(32, '1398-12-24', 9, 15, 'canceled', 27800000, 27800000, '58420905158', NULL, NULL, 'ok', '1', NULL, NULL, NULL, NULL, 1588695540, 1584205158, NULL),
(33, '1399-1-11', 9, 15, 'ok', 53000, 53000, '58558981495', NULL, NULL, 'ok', '1', NULL, NULL, NULL, NULL, 1586988936, 1585581495, NULL),
(34, '1399-1-11', 9, 15, 'ok', 53000, 53000, '58558981945', NULL, NULL, 'ok', '1', NULL, NULL, NULL, NULL, 1586988935, 1585581945, NULL),
(35, '1399-1-11', 9, 15, 'ok', 55000, 55000, '58558982429', NULL, NULL, 'ok', '1', NULL, NULL, NULL, NULL, 1586988933, 1585582429, NULL),
(36, '1399-1-12', 9, 15, 'ok', 105000, 105000, '58566965269', NULL, NULL, 'ok', '1', NULL, NULL, NULL, NULL, 1586988931, 1585665269, NULL),
(37, '1399-1-12', 9, 15, 'ok', 55000, 55000, '58566967093', NULL, NULL, 'ok', '1', NULL, NULL, NULL, NULL, 1586988930, 1585667093, NULL),
(38, '1399-2-4', 9, 15, 'canceled', 36889000, 36889000, '58766961379', NULL, NULL, 'ok', '1', NULL, NULL, NULL, NULL, 1589958315, 1587661379, NULL),
(39, '1399-2-4', 9, 15, 'canceled', 36889000, 36889000, '58766961420', NULL, NULL, 'ok', '1', NULL, NULL, NULL, NULL, 1589958310, 1587661420, NULL),
(40, '1399-2-4', 9, 15, 'canceled', 36889000, 36889000, '58766961423', NULL, NULL, 'ok', '1', NULL, NULL, NULL, NULL, 1589958308, 1587661423, NULL),
(41, '1399-2-4', 9, 15, 'error_connect', 36889000, 36889000, '58766961454', NULL, NULL, 'ok', '1', NULL, NULL, NULL, NULL, 1589958306, 1587661454, NULL),
(42, '1399-2-5', 9, 15, 'error_connect', 105000, 105000, '58773939842', NULL, NULL, 'ok', '1', NULL, NULL, NULL, NULL, 1588005894, 1587739842, NULL),
(46, '1399-2-11', 9, 15, 'error_connect', 44100000, 44100000, '58826964217', NULL, NULL, 'ok', '2', NULL, NULL, NULL, NULL, 1588264257, 1588264217, NULL),
(47, '1399-2-17', 9, 15, 'error_connect', 12000000, 12000000, '58877977447', NULL, NULL, 'ok', '1', NULL, NULL, NULL, NULL, 1589958297, 1588777447, NULL),
(48, '1399-2-17', 9, 15, 'error_connect', 12000000, 12000000, '58877977720', NULL, NULL, 'ok', '1', NULL, NULL, NULL, NULL, 1588937433, 1588777720, NULL),
(49, '1399-2-21', 9, 15, 'ok', 53000, 0, '58912925830', NULL, 'with out payment', 'ok', '1', NULL, NULL, '53000', 2, 1589125995, 1589125830, NULL),
(50, '1399-3-1', 9, 15, 'canceled', 13218000, 13218000, '59004948345', NULL, NULL, 'ok', '2', NULL, NULL, NULL, NULL, 1590639482, 1590048345, NULL),
(51, '1399-4-18', 9, 15, 'ok', 30110000, 30110000, '59418980341', NULL, NULL, 'ok', '1', NULL, NULL, NULL, NULL, 1594185893, 1594180341, NULL),
(52, '1399-4-26', 9, 15, 'ok', 30000000, 30000000, '59490901965', NULL, NULL, 'ok', '1', NULL, NULL, NULL, NULL, 1594902013, 1594901965, NULL),
(84, '1399-5-30', 9, 15, 'canceled', 119473000, 119473000, '59794944285', NULL, NULL, 'ok', '2', NULL, NULL, NULL, NULL, 1597947075, 1597944285, NULL),
(85, '1399-5-30', 9, 15, 'canceled', 119473000, 119473000, '59794944896', NULL, NULL, 'ok', '2', NULL, NULL, NULL, NULL, 1597947075, 1597944896, NULL),
(90, '1399-5-30', 9, 15, 'canceled', 119468000, 119468000, '59794947368', NULL, NULL, 'ok', '1', NULL, NULL, NULL, NULL, 1598197240, 1597947368, NULL),
(91, '1399-6-22', 9, 15, 'error_connect', 109120000, 104352000, '59988986931', NULL, NULL, 'ok', '1', NULL, NULL, NULL, NULL, 1600422387, 1599886931, NULL),
(92, '1399-6-22', 9, 15, 'error_connect', 109120000, 104352000, '59988986945', NULL, NULL, 'ok', '1', NULL, NULL, NULL, NULL, 1599887016, 1599886945, NULL),
(93, '1399-6-22', 9, 15, 'error_connect', 109120000, 104352000, '59988987811', NULL, NULL, 'ok', '1', '4768000', 'takhfif', NULL, NULL, 1600422383, 1599887811, NULL),
(94, '1399-6-22', 9, 15, 'error_connect', 109120000, 104352000, '59988987841', NULL, NULL, 'ok', '1', '4768000', 'takhfif', NULL, NULL, 1599887889, 1599887841, NULL),
(95, '1399-6-22', 9, 15, 'error_connect', 109120000, 104352000, '59988987913', NULL, NULL, 'ok', '1', '4768000', 'takhfif', NULL, NULL, 1599887930, 1599887913, NULL),
(98, '1399-6-23', 9, 15, 'error_connect', 109120000, 104352000, '60001912218', NULL, NULL, 'ok', '1', '4768000', 'takhfif', NULL, NULL, 1600012231, 1600012218, NULL),
(99, '1399-6-23', 9, 15, 'canceled', 109120000, 104352000, '60001912253', NULL, NULL, 'ok', '1', NULL, NULL, NULL, NULL, 1600147547, 1600012253, NULL),
(100, '1399-6-25', 9, 15, 'error_connect', 49620000, 48823800, '60014947508', NULL, NULL, 'ok', '1', '796200', 'takhfif', NULL, NULL, 1600147550, 1600147508, NULL),
(101, '1399-8-26', 9, 1, 'canceled', 88900000, 88900000, '60548987540', NULL, NULL, 'no', '1', NULL, NULL, NULL, NULL, 1605572151, 1605487540, NULL),
(102, '1399-8-26', 9, 1, 'canceled', 88900000, 88900000, '60548987703', NULL, NULL, 'ok', '1', NULL, NULL, NULL, NULL, 1605572151, 1605487703, NULL),
(103, '1399-8-26', 9, 1, 'canceled', 86635000, 88900000, '60548988153', NULL, NULL, 'ok', '1', '2265000', 'takhfif', NULL, NULL, 1611330394, 1605488153, NULL),
(104, '1399-8-26', 9, 1, 'canceled', 88900000, 86635000, '60548988309', NULL, NULL, 'ok', '1', '2265000', 'takhfif', NULL, NULL, 1605572151, 1605488309, NULL),
(105, '1399-8-27', 9, 15, 'canceled', 88900000, 86635000, '60556964349', NULL, NULL, 'ok', '2', '2265000', 'takhfif', NULL, NULL, 1611304032, 1605564349, NULL),
(106, '1399-8-27', 9, 15, 'ok', 88900000, 88840000, '60557971098', NULL, '1000', 'ok', '2', NULL, NULL, '60000', 2, 1605572209, 1605571098, NULL),
(113, '1399-11-22', 9, 11, 'ok', 65124000, 65124000, '61297971215', NULL, 'with out payment', 'no', '1', NULL, NULL, NULL, NULL, 1612971281, 1612971215, NULL),
(114, '1399-11-22', 9, 11, 'awaiting_payemnt', 65124000, 65124000, '61297976469', NULL, NULL, 'no', '1', NULL, NULL, NULL, NULL, 1612976469, 1612976469, NULL),
(115, '1399-11-22', 9, 11, 'awaiting_payment', 65124000, 65124000, '61297976525', NULL, NULL, 'no', '1', NULL, NULL, NULL, NULL, 1612976525, 1612976525, NULL),
(116, '1399-11-23', 9, 11, 'ok', 65124000, 65124000, '61306960274', NULL, 'with out payment', 'ok', '1', NULL, NULL, NULL, NULL, 1613063657, 1613060274, NULL),
(131, '1400-2-27', 9, 11, 'error_connect', 110424000, 110424000, '62119993982', NULL, NULL, 'no', '1', NULL, NULL, NULL, NULL, 1621193982, 1621193982, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_discount`
--

CREATE TABLE `order_discount` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_id` int(11) NOT NULL,
  `discount_price` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `min_price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `amount_percent` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_discount`
--

INSERT INTO `order_discount` (`id`, `cat_id`, `discount_price`, `total_price`, `min_price`, `created_at`, `updated_at`, `order_id`, `amount_percent`) VALUES
(1, 87, 459600, 22980000, 10000000, NULL, NULL, 22, 2),
(2, 0, 130000, 13000000, 5000000, NULL, NULL, 22, NULL),
(3, 87, 585580, 29279000, 24000000, NULL, NULL, 23, 2),
(4, 0, 130000, 13000000, 5000000, NULL, NULL, 23, 1),
(5, 0, 131800, 13180000, 13200000, NULL, NULL, 24, 1),
(6, 0, 150222, 15022222, 5000000, NULL, NULL, 28, 1),
(7, 0, 150222, 15022222, 5000000, NULL, NULL, 29, 1),
(8, 87, 4768000, 238400000, 20000000, NULL, NULL, 91, 2),
(9, 87, 4768000, 238400000, 20000000, NULL, NULL, 92, 2),
(10, 87, 4768000, 238400000, 20000000, NULL, NULL, 93, 2),
(11, 87, 4768000, 238400000, 20000000, NULL, NULL, 94, 2),
(12, 87, 4768000, 238400000, 20000000, NULL, NULL, 95, 2),
(13, 87, 4768000, 238400000, 20000000, NULL, NULL, 98, 2),
(14, 87, 4768000, 238400000, 20000000, NULL, NULL, 99, 2),
(15, 115, 600000, 30000000, 20000000, NULL, NULL, 100, 2),
(16, 0, 196200, 19620000, 5000000, NULL, NULL, 100, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_infos`
--

CREATE TABLE `order_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `delivery_order_interval` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `send_order_amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `products_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `warranty_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `colors_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `send_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order_send_time` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `send_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `send_price_type` smallint(6) NOT NULL DEFAULT 0,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_infos`
--

INSERT INTO `order_infos` (`id`, `order_id`, `delivery_order_interval`, `send_order_amount`, `products_id`, `warranty_id`, `colors_id`, `send_status`, `order_send_time`, `deleted_at`, `created_at`, `updated_at`, `send_type_name`, `send_price_type`, `user_id`) VALUES
(3, 2, '۳۰ آذر تا ۳ دی', '8000', '24-8', '3-2', '0-2', '6', 1576790944, NULL, '2019-12-19 16:29:04', '2021-01-22 03:16:19', NULL, 0, 9),
(4, 2, '۲ دی تا ۵ دی', '0', '2', '2', '3', '4', 1576963744, NULL, '2019-12-19 16:29:04', '2021-01-22 03:16:19', NULL, 0, 9),
(7, 4, '۲ دی تا ۵ دی', '0', '2', '2', '3', '2', 1576961739, NULL, '2019-12-19 18:55:39', '2021-01-22 03:16:19', NULL, 0, 9),
(8, 4, '۳۰ آذر تا ۳ دی', '0', '2-8', '1-2', '2-2', '2', 1576788939, NULL, '2019-12-19 18:55:39', '2021-01-22 03:16:19', NULL, 0, 9),
(9, 5, '۲ دی تا ۵ دی', '0', '2-2-8', '2-1-2', '3-2-2', '5', 1576961861, NULL, '2019-12-19 18:57:41', '2021-01-22 03:16:19', NULL, 0, 9),
(10, 6, '۱ دی تا ۴ دی', '8000', '8', '2', '2', '3', 1576875468, NULL, '2019-12-20 16:57:48', '2021-01-22 03:16:19', NULL, 0, 9),
(11, 7, '۵ دی تا ۸ دی', '8000', '8-22', '2-2', '2-0', '-1', 1577222988, NULL, '2019-12-24 09:29:48', '2021-01-22 03:16:19', NULL, 0, 9),
(12, 8, '۵ دی تا ۸ دی', '8000', '8-22', '2-2', '2-0', '1', 1577219427, NULL, '2019-12-24 09:30:27', '2021-01-22 03:16:19', NULL, 0, 9),
(13, 9, '۸ دی تا ۱۱ دی', '0', '2-8', '2-2', '3-2', '1', 1577480865, NULL, '2019-12-25 16:07:45', '2021-01-22 03:16:19', NULL, 0, 9),
(14, 10, '۸ دی تا ۱۱ دی', '0', '2-8', '2-2', '3-2', '1', 1577479312, NULL, '2019-12-25 16:41:52', '2021-01-22 03:16:19', NULL, 0, 9),
(15, 11, '۹ دی تا ۱۲ دی', '0', '8-2', '2-2', '2-3', '-1', 1577567887, NULL, '2019-12-26 18:18:07', '2021-01-22 03:16:19', NULL, 0, 9),
(16, 12, '۱۰ دی تا ۱۳ دی', '0', '2', '2', '3', '-1', 1577653422, NULL, '2019-12-26 22:03:42', '2021-01-22 03:16:19', NULL, 0, 9),
(17, 13, '۱۰ دی تا ۱۳ دی', '0', '2', '2', '3', '1', 1577654991, NULL, '2019-12-27 14:29:51', '2021-01-22 03:16:19', NULL, 0, 9),
(18, 13, '۸ دی تا ۱۱ دی', '8000', '8', '2', '2', '1', 1577482191, NULL, '2019-12-27 14:29:51', '2021-01-22 03:16:19', NULL, 0, 9),
(19, 14, '۱۴ اسفند تا ۱۷ اسفند', '0', '18', '2', '7', '1', 1583267837, NULL, '2020-03-03 09:37:17', '2021-01-22 03:16:19', NULL, 0, 9),
(20, 15, '۱۷ اسفند تا ۲۰ اسفند', '0', '18-2', '2-1', '7-3', '1', 1583530157, NULL, '2020-03-05 17:29:17', '2021-01-22 03:16:19', NULL, 0, 9),
(21, 16, '۱۸ اسفند تا ۲۱ اسفند', '0', '2', '2', '3', '1', 1583614340, NULL, '2020-03-05 18:52:20', '2021-01-22 03:16:19', NULL, 0, 9),
(22, 17, '۲۲ اسفند تا ۲۵ اسفند', '0', '2', '2', '3', '1', 1583959749, NULL, '2020-03-09 18:49:09', '2021-01-22 03:16:19', NULL, 0, 9),
(23, 18, '۲۲ اسفند تا ۲۵ اسفند', '0', '2', '2', '3', '1', 1583959985, NULL, '2020-03-09 18:53:05', '2021-01-22 03:16:19', NULL, 0, 9),
(24, 19, '۲۲ اسفند تا ۲۵ اسفند', '0', '2', '2', '3', '1', 1583960118, NULL, '2020-03-09 18:55:18', '2021-01-22 03:16:19', NULL, 0, 9),
(25, 20, '۲۳ اسفند تا ۲۶ اسفند', '0', '18-12', '2-2', '7-7', '-1', 1584048504, NULL, '2020-03-11 11:28:24', '2021-01-22 03:16:19', NULL, 0, 9),
(26, 21, '۲۳ اسفند تا ۲۶ اسفند', '0', '18-12', '2-2', '7-7', '-1', 1584045028, NULL, '2020-03-11 11:30:28', '2021-01-22 03:16:19', NULL, 0, 9),
(27, 22, '۲۳ اسفند تا ۲۶ اسفند', '0', '12-18-19', '2-2-3', '7-7-6', '6', 1584045383, NULL, '2020-03-11 16:36:23', '2021-01-22 03:16:19', NULL, 0, 9),
(28, 23, '۲۳ اسفند تا ۲۶ اسفند', '0', '18-19-12-11', '2-3-2-3', '7-6-7-2', '6', 1584045769, NULL, '2020-03-11 17:42:49', '2021-01-22 03:16:19', NULL, 0, 9),
(29, 24, '۲۲ اسفند تا ۲۵ اسفند', '0', '18-8', '2-2', '7-2', '6', 1583959839, NULL, '2020-03-11 18:50:39', '2021-01-22 03:16:19', NULL, 0, 9),
(30, 25, '۲۲ اسفند تا ۲۵ اسفند', '0', '8-19', '2-3', '2-6', '-1', 1583959885, NULL, '2020-03-11 19:51:25', '2021-01-22 03:16:19', NULL, 0, 9),
(31, 26, '۲۲ اسفند تا ۲۵ اسفند', '0', '8-19', '2-3', '2-6', '-1', 1583959938, NULL, '2020-03-11 19:52:18', '2021-01-22 03:16:19', NULL, 0, 9),
(32, 27, '۲۲ اسفند تا ۲۵ اسفند', '0', '8-19', '2-3', '2-6', '-1', 1583960105, NULL, '2020-03-11 19:55:05', '2021-01-22 03:16:19', NULL, 0, 9),
(33, 28, '۲۷ اسفند تا ۱ فروردین', '0', '8-2', '2-2', '2-3', '6', 1584391076, NULL, '2020-03-14 08:37:56', '2021-01-22 03:16:19', NULL, 0, 9),
(34, 29, '۲۷ اسفند تا ۱ فروردین', '0', '2-8', '2-2', '3-2', '6', 1584392013, NULL, '2020-03-14 08:53:33', '2021-01-22 03:16:19', NULL, 0, 9),
(35, 30, '۲۷ اسفند تا ۱ فروردین', '0', '18-2', '2-2', '7-3', '1', 1584391795, NULL, '2020-03-14 16:49:55', '2021-01-22 03:16:19', NULL, 0, 9),
(36, 31, '۲۷ اسفند تا ۱ فروردین', '0', '18-2', '2-2', '7-3', '6', 1584392350, NULL, '2020-03-14 16:59:10', '2021-01-22 03:16:19', NULL, 0, 9),
(37, 32, '۲۷ اسفند تا ۱ فروردین', '0', '18-2', '2-2', '7-3', '-1', 1584392358, NULL, '2020-03-14 16:59:18', '2021-01-22 03:16:19', NULL, 0, 9),
(38, 33, '۱۳ فروردین تا ۱۶ فروردین', '5000', '26', '2', '1', '1', 1585685895, NULL, '2020-03-30 15:18:15', '2021-01-22 03:16:19', NULL, 0, 9),
(39, 34, '۱۳ فروردین تا ۱۶ فروردین', '5000', '26', '2', '1', '1', 1585686345, NULL, '2020-03-30 15:25:45', '2021-01-22 03:16:19', NULL, 0, 9),
(40, 35, '۱۳ فروردین تا ۱۶ فروردین', '5000', '26', '1', '1', '1', 1585683229, NULL, '2020-03-30 15:33:49', '2021-01-22 03:16:19', NULL, 0, 9),
(41, 36, '۱۴ فروردین تا ۱۷ فروردین', '5000', '26', '1', '1', '1', 1585769669, NULL, '2020-03-31 14:34:29', '2021-01-22 03:16:19', NULL, 0, 9),
(42, 37, '۱۴ فروردین تا ۱۷ فروردین', '5000', '26', '1', '1', '3', 1585771493, NULL, '2020-03-31 15:04:53', '2021-01-22 03:16:19', NULL, 0, 9),
(43, 38, '۵ اردیبهشت تا ۸ اردیبهشت', '0', '20', '3', '5', '-1', 1587672179, NULL, '2020-04-23 17:02:59', '2021-01-22 03:16:19', NULL, 0, 9),
(44, 39, '۵ اردیبهشت تا ۸ اردیبهشت', '0', '20', '3', '5', '-1', 1587672220, NULL, '2020-04-23 17:03:40', '2021-01-22 03:16:19', NULL, 0, 9),
(45, 40, '۵ اردیبهشت تا ۸ اردیبهشت', '0', '20', '3', '5', '-1', 1587672223, NULL, '2020-04-23 17:03:43', '2021-01-22 03:16:19', NULL, 0, 9),
(46, 41, '۵ اردیبهشت تا ۸ اردیبهشت', '0', '20', '3', '5', '-1', 1587672254, NULL, '2020-04-23 17:04:14', '2021-01-22 03:16:19', NULL, 0, 9),
(47, 42, '۶ اردیبهشت تا ۹ اردیبهشت', '5000', '22', '2', '0', '-1', 1587757842, NULL, '2020-04-24 14:50:42', '2021-01-22 03:16:19', NULL, 0, 9),
(54, 46, '۱۳ اردیبهشت تا ۱۶ اردیبهشت', '0', '12', '36_1', '5', '-1', 1588361417, NULL, '2020-04-30 16:30:17', '2021-01-22 03:16:19', NULL, 0, 9),
(55, 46, '۱۲ اردیبهشت تا ۱۵ اردیبهشت', '0', '12-2', '11_1-38_2', '5-2', '-1', 1588275017, NULL, '2020-04-30 16:30:17', '2021-01-22 03:16:19', NULL, 0, 9),
(56, 47, '۱۹ اردیبهشت تا ۲۲ اردیبهشت', '0', '12', '44_2', '7', '-1', 1588881847, NULL, '2020-05-06 15:04:07', '2021-01-22 03:16:19', NULL, 0, 9),
(57, 48, '۱۹ اردیبهشت تا ۲۲ اردیبهشت', '0', '12', '44_2', '7', '-1', 1588882120, NULL, '2020-05-06 15:08:40', '2021-01-22 03:16:19', NULL, 0, 9),
(58, 49, '۲۳ اردیبهشت تا ۲۶ اردیبهشت', '5000', '26', '48_2', '1', '4', 1589226630, NULL, '2020-05-10 15:50:30', '2021-01-22 03:16:19', NULL, 0, 9),
(59, 50, '۵ خرداد تا ۸ خرداد', '0', '29', '55_2', '10', '-1', 1590350745, NULL, '2020-05-21 08:05:45', '2021-01-22 03:16:19', NULL, 0, 9),
(60, 50, '۳ خرداد تا ۶ خرداد', '5000', '29', '56_2', '13', '-1', 1590177945, NULL, '2020-05-21 08:05:45', '2021-01-22 03:16:19', NULL, 0, 9),
(61, 50, '۲ خرداد تا ۵ خرداد', '0', '12', '11_1', '5', '-1', 1590091545, NULL, '2020-05-21 08:05:45', '2021-01-22 03:16:19', NULL, 0, 9),
(62, 51, '۲۱ تیر تا ۲۴ تیر', '0', '31-30', '61_2-60_3', '10-5', '1', 1594410741, NULL, '2020-07-08 03:52:21', '2021-01-22 03:16:19', NULL, 0, 9),
(63, 52, '۲۷ تیر تا ۳۰ تیر', '0', '30', '60_3', '5', '4', 1594930765, NULL, '2020-07-16 12:19:25', '2021-01-22 03:16:19', NULL, 0, 9),
(64, 84, '۳۱ مرداد تا ۳ شهریور', '0', '30-9', '60_3-15_1', '5-0', '-1', 1597955085, NULL, '2020-08-20 17:24:45', '2021-01-22 03:16:19', NULL, 0, 9),
(65, 84, '۲ شهریور تا ۵ شهریور', '0', '24-2', '53_3-40_2', '1-3', '-1', 1598127885, NULL, '2020-08-20 17:24:45', '2021-01-22 03:16:19', NULL, 0, 9),
(66, 84, '۳ شهریور تا ۶ شهریور', '5000', '29', '55_2', '10', '-1', 1598214285, NULL, '2020-08-20 17:24:45', '2021-01-22 03:16:19', NULL, 0, 9),
(67, 84, '۴ شهریور تا ۷ شهریور', '20000', '32', '65_3', '0', '-1', 1598127885, NULL, '2020-08-20 17:24:45', '2021-01-22 03:16:19', NULL, 0, 9),
(68, 84, '۵ شهریور تا ۸ شهریور', '60000', '33', '66_2', '5', '-1', 1598041485, NULL, '2020-08-20 17:24:45', '2021-01-22 03:16:19', NULL, 0, 9),
(69, 85, '۳۱ مرداد تا ۳ شهریور', '0', '30-9', '60_3-15_1', '5-0', '-1', 1597952096, NULL, '2020-08-20 17:34:56', '2021-01-22 03:16:19', 'ارسال عادی', 0, 9),
(70, 85, '۲ شهریور تا ۵ شهریور', '0', '24-2', '53_3-40_2', '1-3', '-1', 1598124896, NULL, '2020-08-20 17:34:56', '2021-01-22 03:16:19', 'ارسال عادی', 0, 9),
(71, 85, '۳ شهریور تا ۶ شهریور', '5000', '29', '55_2', '10', '-1', 1598211296, NULL, '2020-08-20 17:34:56', '2021-01-22 03:16:19', 'ارسال عادی', 0, 9),
(72, 85, '۴ شهریور تا ۷ شهریور', '20000', '32', '65_3', '0', '-1', 1598124896, NULL, '2020-08-20 17:34:56', '2021-01-22 03:16:19', 'ارسال کالای بزرگ و سنگین', 0, 9),
(73, 85, '۵ شهریور تا ۸ شهریور', '60000', '33', '66_2', '5', '-1', 1598038496, NULL, '2020-08-20 17:34:56', '2021-01-22 03:16:19', 'ارسال کالای بزرگ و فوق سنگین', 1, 9),
(80, 90, '۳ شهریور تا ۶ شهریور', '0', '30-24-9-29-2', '60_3-53_3-15_1-55_2-40_2', '5-1-0-10-3', '-1', 1598213768, NULL, '2020-08-20 18:16:08', '2021-01-22 03:16:19', 'ارسال عادی', 0, 9),
(81, 90, '۴ شهریور تا ۷ شهریور', '20000', '32', '65_3', '0', '-1', 1598127368, NULL, '2020-08-20 18:16:08', '2021-01-22 03:16:19', 'ارسال کالای بزرگ و سنگین', 0, 9),
(82, 90, '۵ شهریور تا ۸ شهریور', '60000', '33', '66_2', '5', '-1', 1598040968, NULL, '2020-08-20 18:16:08', '2021-01-22 03:16:19', 'ارسال کالای بزرگ و فوق سنگین', 1, 9),
(83, 91, '۲۵ شهریور تا ۲۸ شهریور', '0', '30-2', '60_3-40_2', '5-3', '-1', 1600113732, NULL, '2020-09-12 05:02:12', '2021-01-22 03:16:19', 'پست پیشتاز با ظرفیت اختصاصی برای دیجی آنلاین', 0, 9),
(84, 91, '۲۷ شهریور تا ۳۰ شهریور', '20000', '32', '65_3', '0', '-1', 1600113732, NULL, '2020-09-12 05:02:12', '2021-01-22 03:16:19', 'باربری', 0, 9),
(85, 92, '۲۵ شهریور تا ۲۸ شهریور', '0', '30-2', '60_3-40_2', '5-3', '-1', 1600113745, NULL, '2020-09-12 05:02:25', '2021-01-22 03:16:19', 'پست پیشتاز با ظرفیت اختصاصی برای دیجی آنلاین', 0, 9),
(86, 92, '۲۷ شهریور تا ۳۰ شهریور', '20000', '32', '65_3', '0', '-1', 1600113745, NULL, '2020-09-12 05:02:25', '2021-01-22 03:16:19', 'باربری', 0, 9),
(87, 93, '۲۵ شهریور تا ۲۸ شهریور', '0', '30-2', '60_3-40_2', '5-3', '-1', 1600114611, NULL, '2020-09-12 05:16:51', '2021-01-22 03:16:19', 'پست پیشتاز با ظرفیت اختصاصی برای دیجی آنلاین', 0, 9),
(88, 93, '۲۷ شهریور تا ۳۰ شهریور', '20000', '32', '65_3', '0', '-1', 1600114611, NULL, '2020-09-12 05:16:51', '2021-01-22 03:16:19', 'باربری', 0, 9),
(89, 94, '۲۵ شهریور تا ۲۸ شهریور', '0', '30-2', '60_3-40_2', '5-3', '-1', 1600114641, NULL, '2020-09-12 05:17:21', '2021-01-22 03:16:19', 'پست پیشتاز با ظرفیت اختصاصی برای دیجی آنلاین', 0, 9),
(90, 94, '۲۷ شهریور تا ۳۰ شهریور', '20000', '32', '65_3', '0', '-1', 1600114641, NULL, '2020-09-12 05:17:21', '2021-01-22 03:16:19', 'باربری', 0, 9),
(91, 95, '۲۵ شهریور تا ۲۸ شهریور', '0', '30-2', '60_3-40_2', '5-3', '-1', 1600114713, NULL, '2020-09-12 05:18:33', '2021-01-22 03:16:19', 'پست پیشتاز با ظرفیت اختصاصی برای دیجی آنلاین', 0, 9),
(92, 95, '۲۷ شهریور تا ۳۰ شهریور', '20000', '32', '65_3', '0', '-1', 1600114713, NULL, '2020-09-12 05:18:33', '2021-01-22 03:16:19', 'باربری', 0, 9),
(93, 98, '۲۶ شهریور تا ۲۹ شهریور', '0', '30-2', '60_3-40_2', '5-3', '-1', 1600199418, NULL, '2020-09-13 15:50:18', '2021-01-22 03:16:19', 'پست پیشتاز با ظرفیت اختصاصی برای دیجی آنلاین', 0, 9),
(94, 98, '۲۸ شهریور تا ۳۱ شهریور', '20000', '32', '65_3', '0', '-1', 1600199418, NULL, '2020-09-13 15:50:18', '2021-01-22 03:16:19', 'باربری', 0, 9),
(95, 99, '۲۶ شهریور تا ۲۹ شهریور', '0', '30-2', '60_3-40_2', '5-3', '-1', 1600199453, NULL, '2020-09-13 15:50:53', '2021-01-22 03:16:19', 'پست پیشتاز با ظرفیت اختصاصی برای دیجی آنلاین', 0, 9),
(96, 99, '۲۸ شهریور تا ۳۱ شهریور', '20000', '32', '65_3', '0', '-1', 1600199453, NULL, '2020-09-13 15:50:53', '2021-01-22 03:16:19', 'باربری', 0, 9),
(97, 100, '۲۶ شهریور تا ۲۹ شهریور', '0', '30-22', '60_3-42_2', '5-0', '-1', 1600201508, NULL, '2020-09-15 05:25:08', '2021-01-22 03:16:19', 'پست پیشتاز با ظرفیت اختصاصی برای دیجی آنلاین', 0, 9),
(98, 100, '۳۰ شهریور تا ۲ مهر', '20000', '32', '65_3', '0', '-1', 1600374308, NULL, '2020-09-15 05:25:08', '2021-01-22 03:16:19', 'باربری', 0, 9),
(99, 101, '۲۸ آبان تا ۱ آذر', '0', '19-2', '26_3-7_1', '6-3', '-1', 1605645940, NULL, '2020-11-16 00:45:40', '2021-01-22 03:16:19', 'پست پیشتاز با ظرفیت اختصاصی برای دیجی آنلاین', 0, 9),
(100, 101, '۲ آذر تا ۵ آذر', '60000', '33', '66_2', '5', '-1', 1605645940, NULL, '2020-11-16 00:45:40', '2021-01-22 03:16:19', 'باربری', 1, 9),
(101, 101, '۱ آذر تا ۴ آذر', '20000', '32', '65_3', '0', '-1', 1605732340, NULL, '2020-11-16 00:45:40', '2021-01-22 03:16:19', 'باربری', 0, 9),
(102, 102, '۲۸ آبان تا ۱ آذر', '0', '19-2', '26_3-7_1', '6-3', '-1', 1605646103, NULL, '2020-11-16 00:48:23', '2021-01-22 03:16:19', 'پست پیشتاز با ظرفیت اختصاصی برای دیجی آنلاین', 0, 9),
(103, 102, '۲ آذر تا ۵ آذر', '60000', '33', '66_2', '5', '-1', 1605646103, NULL, '2020-11-16 00:48:23', '2021-01-22 03:16:19', 'باربری', 1, 9),
(104, 102, '۱ آذر تا ۴ آذر', '20000', '32', '65_3', '0', '-1', 1605732503, NULL, '2020-11-16 00:48:23', '2021-01-22 03:16:19', 'باربری', 0, 9),
(105, 103, '۲۸ آبان تا ۱ آذر', '0', '19-2', '26_3-7_1', '6-3', '-1', 1605646553, NULL, '2020-11-16 00:55:53', '2021-01-22 12:16:34', 'پست پیشتاز با ظرفیت اختصاصی برای دیجی آنلاین', 0, 9),
(106, 103, '۲ آذر تا ۵ آذر', '60000', '33', '66_2', '5', '-1', 1605646553, NULL, '2020-11-16 00:55:53', '2021-01-22 12:16:34', 'باربری', 1, 9),
(107, 103, '۱ آذر تا ۴ آذر', '20000', '32', '65_3', '0', '-1', 1605732953, NULL, '2020-11-16 00:55:53', '2021-01-22 12:16:34', 'باربری', 0, 9),
(108, 104, '۲۸ آبان تا ۱ آذر', '0', '19-2', '26_3-7_1', '6-3', '-1', 1605646709, NULL, '2020-11-16 00:58:29', '2021-01-22 03:16:19', 'پست پیشتاز با ظرفیت اختصاصی برای دیجی آنلاین', 0, 9),
(109, 104, '۲ آذر تا ۵ آذر', '60000', '33', '66_2', '5', '-1', 1605646709, NULL, '2020-11-16 00:58:29', '2021-01-22 03:16:19', 'باربری', 1, 9),
(110, 104, '۱ آذر تا ۴ آذر', '20000', '32', '65_3', '0', '-1', 1605733109, NULL, '2020-11-16 00:58:29', '2021-01-22 03:16:19', 'باربری', 0, 9),
(111, 105, '۲۸ آبان تا ۱ آذر', '0', '19', '26_3', '6', '-1', 1605647149, NULL, '2020-11-16 22:05:49', '2021-01-22 08:27:12', 'ارسال عادی', 0, 9),
(112, 105, '۲۹ آبان تا ۲ آذر', '0', '2', '7_1', '3', '-1', 1605733549, NULL, '2020-11-16 22:05:49', '2021-01-22 08:27:12', 'ارسال عادی', 0, 9),
(113, 105, '۳ آذر تا ۶ آذر', '60000', '33', '66_2', '5', '-1', 1605733549, NULL, '2020-11-16 22:05:49', '2021-01-22 08:27:12', 'ارسال کالای بزرگ و فوق سنگین', 1, 9),
(114, 105, '۲ آذر تا ۵ آذر', '20000', '32', '65_3', '0', '-1', 1605819949, NULL, '2020-11-16 22:05:49', '2021-01-22 08:27:12', 'ارسال کالای بزرگ و سنگین', 0, 9),
(115, 106, '۲۸ آبان تا ۱ آذر', '0', '19', '26_3', '6', '1', 1605646698, NULL, '2020-11-16 23:58:18', '2021-02-02 07:07:40', 'ارسال عادی', 0, 9),
(116, 106, '۲۹ آبان تا ۲ آذر', '0', '2', '7_1', '3', '1', 1605733098, NULL, '2020-11-16 23:58:18', '2021-01-22 03:16:19', 'ارسال عادی', 0, 9),
(117, 106, '۳ آذر تا ۶ آذر', '60000', '33', '66_2', '5', '1', 1605733098, NULL, '2020-11-16 23:58:18', '2021-01-22 03:16:19', 'ارسال کالای بزرگ و فوق سنگین', 1, 9),
(118, 106, '۲ آذر تا ۵ آذر', '20000', '32', '65_3', '0', '1', 1605819498, NULL, '2020-11-16 23:58:18', '2021-01-22 03:16:19', 'ارسال کالای بزرگ و سنگین', 0, 9),
(119, 113, '۲۷ بهمن تا ۳۰ بهمن', '25000', '32', '65_3', '0', '1', 1613162015, NULL, '2021-02-10 15:33:35', '2021-02-10 15:33:35', 'باربری', 0, 9),
(120, 113, '۲۵ بهمن تا ۲۸ بهمن', '0', '2-11-18-12', '7_1-10_3-22_2-11_1', '3-2-7-5', '1', 1613075615, NULL, '2021-02-10 15:33:35', '2021-02-10 15:33:35', 'پست پیشتاز با ظرفیت اختصاصی برای دیجی آنلاین', 0, 9),
(121, 114, '۲۷ بهمن تا ۳۰ بهمن', '25000', '32', '65_3', '0', '0', 1613163669, NULL, '2021-02-10 17:01:09', '2021-02-10 17:01:09', 'باربری', 0, 9),
(122, 114, '۲۵ بهمن تا ۲۸ بهمن', '0', '2-11-18-12', '7_1-10_3-22_2-11_1', '3-2-7-5', '0', 1613077269, NULL, '2021-02-10 17:01:09', '2021-02-10 17:01:09', 'پست پیشتاز با ظرفیت اختصاصی برای دیجی آنلاین', 0, 9),
(123, 115, '۲۷ بهمن تا ۳۰ بهمن', '25000', '32', '65_3', '0', '0', 1613163725, NULL, '2021-02-10 17:02:05', '2021-02-10 17:02:05', 'باربری', 0, 9),
(124, 115, '۲۵ بهمن تا ۲۸ بهمن', '0', '2-11-18-12', '7_1-10_3-22_2-11_1', '3-2-7-5', '0', 1613077325, NULL, '2021-02-10 17:02:05', '2021-02-10 17:02:05', 'پست پیشتاز با ظرفیت اختصاصی برای دیجی آنلاین', 0, 9),
(125, 116, '۲۸ بهمن تا ۱ اسفند', '25000', '32', '65_3', '0', '1', 1613251074, NULL, '2021-02-11 16:17:54', '2021-02-11 16:17:54', 'باربری', 0, 9),
(126, 116, '۲۶ بهمن تا ۲۹ بهمن', '0', '2-11-18-12', '7_1-10_3-22_2-11_1', '3-2-7-5', '1', 1613164674, NULL, '2021-02-11 16:17:54', '2021-02-11 16:17:54', 'پست پیشتاز با ظرفیت اختصاصی برای دیجی آنلاین', 0, 9),
(127, 131, '۱ خرداد تا ۴ خرداد', '25000', '32', '65_3', '0', '0', 1621453182, NULL, '2021-05-16 19:39:42', '2021-05-16 19:39:42', 'باربری', 0, 9),
(128, 131, '۳۰ اردیبهشت تا ۲ خرداد', '0', '2-11-18-12', '7_1-10_3-22_2-11_1', '3-2-7-5', '0', 1621366782, NULL, '2021-05-16 19:39:42', '2021-05-16 19:39:42', 'پست پیشتاز با ظرفیت اختصاصی برای دیجی آنلاین', 0, 9),
(129, 131, '۲ خرداد تا ۵ خرداد', '60000', '33', '66_2', '5', '0', 1621366782, NULL, '2021-05-16 19:39:42', '2021-05-16 19:39:42', 'باربری', 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `warranty_id` int(11) NOT NULL,
  `product_price1` int(11) NOT NULL,
  `product_price2` int(11) NOT NULL,
  `product_count` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL DEFAULT 0,
  `preparation_time` int(11) NOT NULL DEFAULT 0,
  `send_status` int(11) NOT NULL DEFAULT 0,
  `time` int(11) NOT NULL DEFAULT 0,
  `seller_read` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `commission` int(11) NOT NULL DEFAULT 0,
  `tozihat` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `stockroom_id` int(11) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_warranty_id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `color_id`, `warranty_id`, `product_price1`, `product_price2`, `product_count`, `seller_id`, `preparation_time`, `send_status`, `time`, `seller_read`, `commission`, `tozihat`, `stockroom_id`, `deleted_at`, `created_at`, `updated_at`, `product_warranty_id`, `user_id`) VALUES
(4, 2, 24, 0, 3, 114000, 104000, 1, 0, 0, 6, 1576772944, 'no', 0, NULL, 0, NULL, NULL, '2020-03-31 10:25:53', 43, 9),
(5, 2, 2, 3, 2, 14800000, 14800000, 1, 10, 2, 4, 1576772944, 'no', 0, NULL, 0, NULL, NULL, '2020-03-31 10:25:53', 40, 9),
(6, 2, 8, 2, 2, 28000, 18000, 1, 0, 0, 6, 1576772944, 'no', 0, NULL, 0, NULL, NULL, '2020-03-31 10:25:53', 12, 9),
(10, 4, 2, 3, 2, 14800000, 14800000, 1, 10, 2, 1, 1576781739, 'no', 0, NULL, 0, NULL, NULL, '2020-03-31 10:25:53', 40, 9),
(11, 4, 2, 2, 1, 15480000, 15080000, 1, 0, 0, 2, 1576781739, 'no', 0, NULL, 0, NULL, NULL, '2020-03-31 10:25:53', 5, 9),
(12, 4, 8, 2, 2, 28000, 18000, 1, 0, 0, 2, 1576781739, 'no', 0, NULL, 0, NULL, NULL, '2020-03-31 10:25:53', 12, 9),
(13, 5, 2, 3, 2, 14800000, 14800000, 1, 10, 2, 5, 1576781861, 'no', 0, NULL, 0, NULL, NULL, '2020-03-31 10:25:53', 40, 9),
(14, 5, 2, 2, 1, 15480000, 15080000, 1, 0, 0, 5, 1576781861, 'no', 0, NULL, 0, NULL, NULL, '2020-03-31 10:25:53', 5, 9),
(15, 5, 8, 2, 2, 28000, 18000, 1, 0, 0, 5, 1576781861, 'no', 0, NULL, 0, NULL, NULL, '2020-03-31 10:25:53', 12, 9),
(16, 6, 8, 2, 2, 28000, 18000, 1, 0, 0, 3, 1576861068, 'no', 0, NULL, 0, NULL, NULL, '2020-03-31 10:25:53', 12, 9),
(17, 7, 8, 2, 2, 28000, 18000, 1, 0, 0, 0, 1577179788, 'no', 0, NULL, 0, NULL, NULL, '2020-03-31 10:25:53', 12, 9),
(18, 7, 22, 0, 2, 100000, 100000, 1, 0, 0, 0, 1577179788, 'no', 0, NULL, 0, NULL, NULL, '2020-03-31 10:25:53', 42, 9),
(19, 8, 8, 2, 2, 28000, 18000, 1, 0, 0, 1, 1577179827, 'no', 0, NULL, 0, NULL, NULL, '2020-03-31 10:25:53', 12, 9),
(20, 8, 22, 0, 2, 100000, 100000, 1, 0, 0, 1, 1577179827, 'no', 0, NULL, 0, NULL, NULL, '2020-03-31 10:25:53', 42, 9),
(21, 9, 2, 3, 2, 14800000, 14800000, 1, 10, 2, 1, 1577290065, 'no', 0, NULL, 0, NULL, NULL, '2020-03-31 10:25:53', 40, 9),
(22, 9, 8, 2, 2, 28000, 18000, 1, 0, 0, 1, 1577290065, 'no', 0, NULL, 0, NULL, NULL, '2020-03-31 10:25:53', 12, 9),
(23, 10, 2, 3, 2, 14800000, 14800000, 1, 10, 2, 1, 1577292112, 'no', 0, NULL, 0, NULL, NULL, '2020-03-31 10:25:53', 40, 9),
(24, 10, 8, 2, 2, 28000, 18000, 1, 0, 0, 1, 1577292112, 'no', 0, NULL, 0, NULL, NULL, '2020-03-31 10:25:53', 12, 9),
(25, 11, 8, 2, 2, 28000, 18000, 1, 0, 0, 0, 1577384287, 'no', 0, NULL, 0, NULL, NULL, '2020-03-31 10:25:53', 12, 9),
(26, 11, 2, 3, 2, 14800000, 14800000, 1, 10, 2, 0, 1577384287, 'no', 0, NULL, 0, NULL, NULL, '2020-03-31 10:25:53', 40, 9),
(27, 12, 2, 3, 2, 14800000, 14800000, 1, 10, 2, 0, 1577397822, 'no', 0, NULL, 0, NULL, NULL, '2020-03-31 10:25:53', 40, 9),
(28, 13, 2, 3, 2, 14800000, 14800000, 1, 10, 2, 1, 1577456991, 'no', 0, NULL, 0, NULL, NULL, '2020-03-31 10:25:53', 40, 9),
(29, 13, 8, 2, 2, 28000, 18000, 1, 0, 0, 1, 1577456991, 'no', 0, NULL, 0, NULL, NULL, '2020-03-31 10:25:53', 12, 9),
(30, 14, 18, 7, 2, 14300000, 13000000, 1, 10, 0, 1, 1583228237, 'no', 0, NULL, 0, NULL, NULL, '2020-03-31 10:25:53', 22, 9),
(31, 15, 18, 7, 2, 14300000, 13000000, 1, 10, 0, 1, 1583429357, 'no', 260000, NULL, 0, NULL, NULL, '2020-03-31 10:25:53', 22, 9),
(32, 15, 2, 3, 1, 15180000, 15000000, 1, 0, 1, 1, 1583429357, 'no', 0, NULL, 0, NULL, NULL, '2020-03-31 10:25:53', 7, 9),
(33, 16, 2, 3, 2, 14800000, 14800000, 1, 10, 2, 1, 1583434340, 'no', 740000, NULL, 0, NULL, NULL, '2020-03-31 10:25:53', 40, 9),
(34, 17, 2, 3, 2, 14800000, 14800000, 1, 10, 2, 1, 1583779749, 'no', 740000, NULL, 0, NULL, NULL, '2020-03-31 10:25:53', 40, 9),
(35, 18, 2, 3, 2, 14800000, 14800000, 1, 10, 2, 1, 1583779985, 'no', 740000, NULL, 0, NULL, NULL, '2020-03-31 10:25:53', 40, 9),
(36, 19, 2, 3, 2, 14800000, 14800000, 1, 10, 2, 1, 1583780118, 'no', 740000, NULL, 0, NULL, NULL, '2020-03-31 10:25:53', 40, 9),
(37, 20, 18, 7, 2, 14300000, 13000000, 1, 10, 0, 0, 1583926104, 'no', 0, NULL, 0, NULL, NULL, '2020-03-31 10:25:53', 22, 9),
(38, 20, 12, 7, 2, 15000000, 12500000, 1, 0, 1, 0, 1583926104, 'no', 0, NULL, 0, NULL, NULL, '2020-03-31 10:25:53', 44, 9),
(39, 21, 18, 7, 2, 14300000, 13000000, 1, 10, 0, 0, 1583926228, 'no', 0, NULL, 0, NULL, NULL, '2020-03-31 10:25:53', 22, 9),
(40, 21, 12, 7, 2, 15000000, 12500000, 1, 0, 1, 0, 1583926228, 'no', 0, NULL, 0, NULL, NULL, '2020-03-31 10:25:53', 44, 9),
(41, 22, 12, 7, 2, 15000000, 12500000, 1, 0, 1, 6, 1583944583, 'no', 0, NULL, 0, NULL, NULL, '2020-03-31 10:25:53', 44, 9),
(42, 22, 18, 7, 2, 14300000, 13000000, 1, 10, 0, 6, 1583944583, 'no', 260000, NULL, 0, NULL, NULL, '2020-03-31 10:25:53', 22, 9),
(43, 22, 19, 6, 3, 11480000, 10480000, 1, 0, 0, 6, 1583944583, 'no', 0, NULL, 0, NULL, NULL, '2020-03-31 10:25:53', 26, 9),
(44, 23, 18, 7, 2, 14300000, 13000000, 1, 10, 0, 6, 1583948569, 'no', 260000, NULL, 1, NULL, NULL, '2020-03-31 10:25:53', 22, 9),
(45, 23, 19, 6, 3, 11480000, 10480000, 1, 0, 0, 6, 1583948569, 'no', 0, NULL, 0, NULL, NULL, '2020-03-31 10:25:53', 26, 9),
(46, 23, 12, 7, 2, 15000000, 12500000, 1, 0, 1, 6, 1583948569, 'no', 0, NULL, 0, NULL, NULL, '2020-03-31 10:25:53', 44, 9),
(47, 23, 11, 2, 3, 6299000, 6299000, 1, 0, 0, 6, 1583948569, 'no', 0, NULL, 0, NULL, NULL, '2020-03-31 10:25:53', 10, 9),
(48, 24, 18, 7, 2, 14300000, 13000000, 1, 10, 0, 6, 1583952639, 'no', 260000, NULL, 0, NULL, NULL, '2020-03-31 10:25:53', 22, 9),
(49, 24, 8, 2, 2, 28000, 18000, 2, 0, 0, 6, 1583952639, 'no', 0, 'این کالا مربوط به سفارش ۵۸۳۹۵۹۵۲۶۳۹ می باشد', 1, NULL, NULL, '2020-03-31 10:25:53', 12, 9),
(53, 25, 8, 2, 2, 28000, 18000, 1, 0, 0, 0, 1583956285, 'no', 0, NULL, 0, NULL, NULL, '2020-03-31 10:25:53', 12, 9),
(54, 25, 19, 6, 3, 11480000, 10480000, 1, 0, 0, 0, 1583956285, 'no', 0, NULL, 0, NULL, NULL, '2020-03-31 10:25:53', 26, 9),
(55, 26, 8, 2, 2, 28000, 18000, 10, 0, 0, 0, 1583956338, 'no', 0, NULL, 0, NULL, NULL, '2020-03-31 10:25:53', 12, 9),
(56, 26, 19, 6, 3, 11480000, 10480000, 1, 0, 0, 0, 1583956338, 'no', 0, NULL, 0, NULL, NULL, '2020-03-31 10:25:53', 26, 9),
(57, 27, 8, 2, 2, 28000, 18000, 10, 0, 0, 0, 1583956505, 'no', 0, NULL, 0, NULL, NULL, '2020-03-31 10:25:53', 12, 9),
(58, 27, 19, 6, 3, 11480000, 10480000, 1, 0, 0, 0, 1583956505, 'no', 0, NULL, 0, NULL, NULL, '2020-03-31 10:25:53', 26, 9),
(59, 24, 8, 2, 2, 28000, 18000, 8, 0, 0, 6, 1583952639, 'no', 0, NULL, 0, NULL, '2020-03-11 16:30:09', '2020-03-31 10:25:53', 12, 9),
(60, 28, 8, 2, 2, 28000, 18000, 1, 0, 0, -1, 1584175076, 'no', 0, NULL, 1, NULL, NULL, '2021-02-02 06:58:31', 12, 9),
(61, 28, 2, 3, 2, 14800000, 14800000, 1, 10, 2, 6, 1584175076, 'no', 740000, NULL, 0, NULL, NULL, '2020-03-31 10:25:53', 40, 9),
(62, 28, 8, 2, 2, 28000, 18000, 3, 0, 0, 6, 1584175076, 'no', 0, NULL, 0, NULL, '2020-03-14 05:11:15', '2020-03-31 10:25:53', 12, 9),
(63, 29, 2, 3, 2, 14800000, 14800000, 1, 10, 2, -1, 1584176013, 'ok', 740000, 'این کالا به دلیل نارضایتی مشتری از کیفیت محصول برگشت داده شده', 1, NULL, NULL, '2020-04-12 20:45:12', 40, 9),
(64, 29, 8, 2, 2, 28000, 18000, 1, 0, 0, 6, 1584176013, 'no', 0, NULL, 0, NULL, NULL, '2020-03-31 10:25:53', 12, 9),
(65, 29, 8, 2, 2, 28000, 18000, 3, 0, 0, 6, 1584176013, 'no', 0, NULL, 0, NULL, '2020-03-14 05:25:03', '2020-03-31 10:25:53', 12, 9),
(66, 30, 18, 7, 2, 14300000, 13000000, 1, 10, 0, 1, 1584204595, 'ok', 260000, NULL, 0, NULL, NULL, '2020-04-12 20:45:15', 22, 9),
(67, 30, 2, 3, 2, 14800000, 14800000, 1, 10, 2, 1, 1584204595, 'ok', 740000, NULL, 0, NULL, NULL, '2020-04-12 20:45:16', 40, 9),
(68, 31, 18, 7, 2, 14300000, 13000000, 1, 10, 0, 6, 1584205150, 'ok', 260000, NULL, 0, NULL, NULL, '2020-04-12 20:45:18', 22, 9),
(69, 31, 2, 3, 2, 14800000, 14800000, 1, 10, 2, -1, 1584205150, 'ok', 740000, 'این کالا به دلیل نارضایتی مشتری برگشت داده شده', 1, NULL, NULL, '2020-04-12 20:45:20', 40, 9),
(70, 32, 18, 7, 2, 14300000, 13000000, 1, 10, 0, 0, 1584205158, 'ok', 0, NULL, 0, NULL, NULL, '2020-04-12 20:45:25', 22, 9),
(71, 32, 2, 3, 2, 14800000, 14800000, 1, 10, 2, 0, 1584205158, 'ok', 0, NULL, 0, NULL, NULL, '2020-04-12 20:45:27', 40, 9),
(72, 33, 26, 1, 2, 60000, 48000, 1, 0, 1, 1, 1585581495, 'no', 0, NULL, 0, NULL, NULL, '2020-03-31 10:25:53', 48, 9),
(73, 34, 26, 1, 2, 60000, 48000, 1, 0, 1, 1, 1585581945, 'no', 0, NULL, 0, NULL, NULL, '2020-03-31 10:25:53', 48, 9),
(74, 35, 26, 1, 1, 58000, 50000, 1, 10, 1, 1, 1585582429, 'ok', 0, NULL, 0, NULL, NULL, '2020-03-31 12:33:27', 47, 9),
(75, 36, 26, 1, 1, 58000, 50000, 2, 10, 1, 1, 1585665269, 'ok', 0, NULL, 0, NULL, NULL, '2020-03-31 12:33:24', 47, 9),
(76, 37, 26, 1, 1, 58000, 50000, 1, 10, 1, 3, 1585667093, 'ok', 0, NULL, 0, NULL, NULL, '2020-03-31 12:30:31', 47, 9),
(77, 38, 20, 5, 3, 36889000, 36889000, 1, 10, 0, 0, 1587661379, 'no', 0, NULL, 0, NULL, NULL, NULL, 31, 9),
(78, 39, 20, 5, 3, 36889000, 36889000, 1, 10, 0, 0, 1587661420, 'no', 0, NULL, 0, NULL, NULL, NULL, 31, 9),
(79, 40, 20, 5, 3, 36889000, 36889000, 1, 10, 0, 0, 1587661423, 'no', 0, NULL, 0, NULL, NULL, NULL, 31, 9),
(80, 41, 20, 5, 3, 36889000, 36889000, 1, 10, 0, 0, 1587661454, 'no', 0, NULL, 0, NULL, NULL, NULL, 31, 9),
(81, 42, 22, 0, 2, 100000, 100000, 1, 0, 0, 0, 1587739842, 'no', 0, NULL, 0, NULL, NULL, NULL, 42, 9),
(85, 44, 12, 5, 1, 16000000, 16000000, 1, 10, 1, 0, 1588262850, 'no', 0, NULL, 0, NULL, NULL, NULL, 36, 9),
(91, 46, 12, 5, 1, 16000000, 16000000, 1, 10, 1, 0, 1588264217, 'no', 0, NULL, 0, NULL, NULL, NULL, 36, 9),
(92, 46, 12, 5, 1, 17000000, 13000000, 1, 0, 0, 0, 1588264217, 'no', 0, NULL, 0, NULL, NULL, NULL, 11, 9),
(93, 46, 2, 2, 2, 15100000, 15100000, 1, 0, 0, 0, 1588264217, 'no', 0, NULL, 0, NULL, NULL, NULL, 38, 9),
(94, 47, 12, 7, 2, 15000000, 12000000, 1, 0, 1, 0, 1588777447, 'no', 0, NULL, 0, NULL, NULL, NULL, 44, 9),
(95, 48, 12, 7, 2, 15000000, 12000000, 1, 0, 1, 0, 1588777720, 'no', 0, NULL, 0, NULL, NULL, NULL, 44, 9),
(96, 49, 26, 1, 2, 60000, 48000, 1, 0, 1, 1, 1589125830, 'no', 0, NULL, 0, NULL, NULL, NULL, 48, 9),
(97, 50, 29, 10, 2, 149000, 69000, 2, 0, 3, 0, 1590048345, 'no', 0, NULL, 0, NULL, NULL, NULL, 55, 9),
(98, 50, 29, 13, 2, 155000, 75000, 1, 0, 1, 0, 1590048345, 'no', 0, NULL, 0, NULL, NULL, NULL, 56, 9),
(99, 50, 12, 5, 1, 17000000, 13000000, 1, 0, 0, 0, 1590048345, 'no', 0, NULL, 0, NULL, NULL, NULL, 11, 9),
(100, 51, 31, 10, 2, 78000, 55000, 2, 10, 2, 1, 1594180341, 'no', 0, NULL, 0, NULL, NULL, NULL, 61, 9),
(101, 51, 30, 5, 3, 30000000, 30000000, 1, 0, 0, 1, 1594180341, 'no', 0, NULL, 0, NULL, NULL, NULL, 60, 9),
(102, 52, 30, 5, 3, 30000000, 30000000, 1, 0, 0, 4, 1594901965, 'no', 0, NULL, 0, NULL, NULL, NULL, 60, 9),
(313, 84, 30, 5, 3, 30000000, 30000000, 1, 0, 0, 0, 1597944285, 'no', 0, NULL, 0, NULL, NULL, NULL, 60, 9),
(314, 84, 24, 1, 3, 120000, 100000, 1, 10, 2, 0, 1597944285, 'no', 0, NULL, 0, NULL, NULL, NULL, 53, 9),
(315, 84, 9, 0, 1, 10079000, 10079000, 1, 0, 0, 0, 1597944285, 'no', 0, NULL, 0, NULL, NULL, NULL, 15, 9),
(316, 84, 29, 10, 2, 149000, 69000, 1, 0, 3, 0, 1597944285, 'no', 0, NULL, 0, NULL, NULL, NULL, 55, 9),
(317, 84, 2, 3, 2, 15000000, 14900000, 1, 10, 2, 0, 1597944285, 'no', 0, NULL, 0, NULL, NULL, NULL, 40, 9),
(318, 84, 32, 0, 3, 20000000, 19000000, 1, 0, 2, 0, 1597944285, 'no', 0, NULL, 0, NULL, NULL, NULL, 65, 9),
(319, 84, 33, 5, 2, 45300000, 45300000, 1, 0, 1, 0, 1597944285, 'no', 0, NULL, 0, NULL, NULL, NULL, 66, 9),
(320, 85, 30, 5, 3, 30000000, 30000000, 1, 0, 0, 0, 1597944896, 'no', 0, NULL, 0, NULL, NULL, NULL, 60, 9),
(321, 85, 24, 1, 3, 120000, 100000, 1, 10, 2, 0, 1597944896, 'no', 0, NULL, 0, NULL, NULL, NULL, 53, 9),
(322, 85, 9, 0, 1, 10079000, 10079000, 1, 0, 0, 0, 1597944896, 'no', 0, NULL, 0, NULL, NULL, NULL, 15, 9),
(323, 85, 29, 10, 2, 149000, 69000, 1, 0, 3, 0, 1597944896, 'no', 0, NULL, 0, NULL, NULL, NULL, 55, 9),
(324, 85, 2, 3, 2, 15000000, 14900000, 1, 10, 2, 0, 1597944896, 'no', 0, NULL, 0, NULL, NULL, NULL, 40, 9),
(325, 85, 32, 0, 3, 20000000, 19000000, 1, 0, 2, 0, 1597944896, 'no', 0, NULL, 0, NULL, NULL, NULL, 65, 9),
(326, 85, 33, 5, 2, 45300000, 45300000, 1, 0, 1, 0, 1597944896, 'no', 0, NULL, 0, NULL, NULL, NULL, 66, 9),
(355, 90, 30, 5, 3, 30000000, 30000000, 1, 0, 0, 0, 1597947368, 'no', 0, NULL, 0, NULL, NULL, NULL, 60, 9),
(356, 90, 24, 1, 3, 120000, 100000, 1, 10, 2, 0, 1597947368, 'no', 0, NULL, 0, NULL, NULL, NULL, 53, 9),
(357, 90, 9, 0, 1, 10079000, 10079000, 1, 0, 0, 0, 1597947368, 'no', 0, NULL, 0, NULL, NULL, NULL, 15, 9),
(358, 90, 29, 10, 2, 149000, 69000, 1, 0, 3, 0, 1597947368, 'no', 0, NULL, 0, NULL, NULL, NULL, 55, 9),
(359, 90, 2, 3, 2, 15000000, 14900000, 1, 10, 2, 0, 1597947368, 'no', 0, NULL, 0, NULL, NULL, NULL, 40, 9),
(360, 90, 32, 0, 3, 20000000, 19000000, 1, 0, 2, 0, 1597947368, 'no', 0, NULL, 0, NULL, NULL, NULL, 65, 9),
(361, 90, 33, 5, 2, 45300000, 45300000, 1, 0, 1, 0, 1597947368, 'no', 0, NULL, 0, NULL, NULL, NULL, 66, 9),
(362, 91, 30, 5, 3, 30000000, 30000000, 1, 0, 0, 0, 1599886931, 'no', 0, NULL, 0, NULL, NULL, NULL, 60, 9),
(363, 91, 2, 3, 2, 15000000, 14900000, 4, 10, 2, 0, 1599886931, 'no', 0, NULL, 0, NULL, NULL, NULL, 40, 9),
(364, 91, 32, 0, 3, 20000000, 19500000, 1, 0, 2, 0, 1599886931, 'no', 0, NULL, 0, NULL, NULL, NULL, 65, 9),
(365, 92, 30, 5, 3, 30000000, 30000000, 1, 0, 0, 0, 1599886945, 'no', 0, NULL, 0, NULL, NULL, NULL, 60, 9),
(366, 92, 2, 3, 2, 15000000, 14900000, 4, 10, 2, 0, 1599886945, 'no', 0, NULL, 0, NULL, NULL, NULL, 40, 9),
(367, 92, 32, 0, 3, 20000000, 19500000, 1, 0, 2, 0, 1599886945, 'no', 0, NULL, 0, NULL, NULL, NULL, 65, 9),
(368, 93, 30, 5, 3, 30000000, 30000000, 1, 0, 0, 0, 1599887811, 'no', 0, NULL, 0, NULL, NULL, NULL, 60, 9),
(369, 93, 2, 3, 2, 15000000, 14900000, 4, 10, 2, 0, 1599887811, 'no', 0, NULL, 0, NULL, NULL, NULL, 40, 9),
(370, 93, 32, 0, 3, 20000000, 19500000, 1, 0, 2, 0, 1599887811, 'no', 0, NULL, 0, NULL, NULL, NULL, 65, 9),
(371, 94, 30, 5, 3, 30000000, 30000000, 1, 0, 0, 0, 1599887841, 'no', 0, NULL, 0, NULL, NULL, NULL, 60, 9),
(372, 94, 2, 3, 2, 15000000, 14900000, 4, 10, 2, 0, 1599887841, 'no', 0, NULL, 0, NULL, NULL, NULL, 40, 9),
(373, 94, 32, 0, 3, 20000000, 19500000, 1, 0, 2, 0, 1599887841, 'no', 0, NULL, 0, NULL, NULL, NULL, 65, 9),
(374, 95, 30, 5, 3, 30000000, 30000000, 1, 0, 0, 0, 1599887913, 'no', 0, NULL, 0, NULL, NULL, NULL, 60, 9),
(375, 95, 2, 3, 2, 15000000, 14900000, 4, 10, 2, 0, 1599887913, 'no', 0, NULL, 0, NULL, NULL, NULL, 40, 9),
(376, 95, 32, 0, 3, 20000000, 19500000, 1, 0, 2, 0, 1599887913, 'no', 0, NULL, 0, NULL, NULL, NULL, 65, 9),
(377, 98, 30, 5, 3, 30000000, 30000000, 1, 0, 0, 0, 1600012218, 'no', 0, NULL, 0, NULL, NULL, NULL, 60, 9),
(378, 98, 2, 3, 2, 15000000, 14900000, 4, 10, 2, 0, 1600012218, 'no', 0, NULL, 0, NULL, NULL, NULL, 40, 9),
(379, 98, 32, 0, 3, 20000000, 19500000, 1, 0, 2, 0, 1600012218, 'no', 0, NULL, 0, NULL, NULL, NULL, 65, 9),
(380, 99, 30, 5, 3, 30000000, 30000000, 1, 0, 0, 0, 1600012253, 'no', 0, NULL, 0, NULL, NULL, NULL, 60, 9),
(381, 99, 2, 3, 2, 15000000, 14900000, 4, 10, 2, 0, 1600012253, 'no', 0, NULL, 0, NULL, NULL, NULL, 40, 9),
(382, 99, 32, 0, 3, 20000000, 19500000, 1, 0, 2, 0, 1600012253, 'no', 0, NULL, 0, NULL, NULL, NULL, 65, 9),
(383, 100, 30, 5, 3, 30000000, 30000000, 1, 0, 0, 0, 1600147508, 'no', 0, NULL, 0, NULL, NULL, NULL, 60, 9),
(384, 100, 22, 0, 2, 100000, 100000, 1, 0, 0, 0, 1600147508, 'no', 0, NULL, 0, NULL, NULL, NULL, 42, 9),
(385, 100, 32, 0, 3, 20000000, 19500000, 1, 0, 2, 0, 1600147508, 'no', 0, NULL, 0, NULL, NULL, NULL, 65, 9),
(386, 101, 19, 6, 3, 11480000, 10480000, 1, 0, 0, 0, 1605487540, 'no', 0, NULL, 0, NULL, NULL, NULL, 26, 9),
(387, 101, 2, 3, 1, 15180000, 14000000, 1, 0, 1, 0, 1605487540, 'no', 0, NULL, 0, NULL, NULL, NULL, 7, 9),
(388, 101, 33, 5, 2, 45300000, 45300000, 1, 0, 1, 0, 1605487540, 'no', 0, NULL, 0, NULL, NULL, NULL, 66, 9),
(389, 101, 32, 0, 3, 20000000, 19100000, 1, 0, 2, 0, 1605487540, 'no', 0, NULL, 0, NULL, NULL, NULL, 65, 9),
(390, 102, 19, 6, 3, 11480000, 10480000, 1, 0, 0, 0, 1605487703, 'no', 0, NULL, 0, NULL, NULL, NULL, 26, 9),
(391, 102, 2, 3, 1, 15180000, 14000000, 1, 0, 1, 0, 1605487703, 'no', 0, NULL, 0, NULL, NULL, NULL, 7, 9),
(392, 102, 33, 5, 2, 45300000, 45300000, 1, 0, 1, 0, 1605487703, 'no', 0, NULL, 0, NULL, NULL, NULL, 66, 9),
(393, 102, 32, 0, 3, 20000000, 19100000, 1, 0, 2, 0, 1605487703, 'no', 0, NULL, 0, NULL, NULL, NULL, 65, 9),
(394, 103, 19, 6, 3, 11480000, 10480000, 1, 0, 0, -1, 1605488153, 'no', 0, NULL, 0, NULL, NULL, '2021-01-22 12:16:34', 26, 9),
(395, 103, 2, 3, 1, 15180000, 14000000, 1, 0, 1, -1, 1605488153, 'no', 0, NULL, 0, NULL, NULL, '2021-01-22 12:16:34', 7, 9),
(396, 103, 33, 5, 2, 45300000, 45300000, 1, 0, 1, -1, 1605488153, 'no', 0, NULL, 0, NULL, NULL, '2021-01-22 12:16:34', 66, 9),
(397, 103, 32, 0, 3, 20000000, 19100000, 1, 0, 2, -1, 1605488153, 'no', 0, NULL, 0, NULL, NULL, '2021-01-22 12:16:34', 65, 9),
(398, 104, 19, 6, 3, 11480000, 10480000, 1, 0, 0, 0, 1605488309, 'no', 0, NULL, 0, NULL, NULL, NULL, 26, 9),
(399, 104, 2, 3, 1, 15180000, 14000000, 1, 0, 1, 0, 1605488309, 'no', 0, NULL, 0, NULL, NULL, NULL, 7, 9),
(400, 104, 33, 5, 2, 45300000, 45300000, 1, 0, 1, 0, 1605488309, 'no', 0, NULL, 0, NULL, NULL, NULL, 66, 9),
(401, 104, 32, 0, 3, 20000000, 19100000, 1, 0, 2, 0, 1605488309, 'no', 0, NULL, 0, NULL, NULL, NULL, 65, 9),
(402, 105, 19, 6, 3, 11480000, 10480000, 1, 0, 0, 0, 1605564349, 'no', 0, NULL, 0, NULL, NULL, NULL, 26, 9),
(403, 105, 2, 3, 1, 15180000, 14000000, 1, 0, 1, 0, 1605564349, 'no', 0, NULL, 0, NULL, NULL, NULL, 7, 9),
(404, 105, 33, 5, 2, 45300000, 45300000, 1, 0, 1, 0, 1605564349, 'no', 0, NULL, 0, NULL, NULL, NULL, 66, 9),
(405, 105, 32, 0, 3, 20000000, 19100000, 1, 0, 2, 0, 1605564349, 'no', 0, NULL, 0, NULL, NULL, NULL, 65, 9),
(406, 106, 19, 6, 3, 11480000, 10480000, 1, 0, 0, 0, 1605571098, 'no', 0, NULL, 0, NULL, NULL, NULL, 26, 9),
(407, 106, 2, 3, 1, 15180000, 14000000, 1, 0, 1, 1, 1605571098, 'no', 0, NULL, 0, NULL, NULL, NULL, 7, 9),
(408, 106, 33, 5, 2, 45300000, 45300000, 1, 0, 1, 1, 1605571098, 'no', 0, NULL, 0, NULL, NULL, NULL, 66, 9),
(409, 106, 32, 0, 3, 20000000, 19100000, 1, 0, 2, 1, 1605571098, 'no', 0, NULL, 0, NULL, NULL, NULL, 65, 9),
(440, 113, 32, 0, 3, 20000000, 19000000, 1, 0, 2, 1, 1612971215, 'no', 0, NULL, 0, NULL, NULL, NULL, 65, 9),
(441, 113, 2, 3, 1, 15180000, 14000000, 1, 0, 1, 1, 1612971215, 'no', 0, NULL, 0, NULL, NULL, NULL, 7, 9),
(442, 113, 11, 2, 3, 6299000, 6099000, 1, 0, 0, 1, 1612971215, 'no', 0, NULL, 0, NULL, NULL, NULL, 10, 9),
(443, 113, 18, 7, 2, 14300000, 13000000, 1, 10, 0, 1, 1612971215, 'no', 260000, NULL, 0, NULL, NULL, '2021-02-10 15:34:41', 22, 9),
(444, 113, 12, 5, 1, 17000000, 13000000, 1, 0, 0, 1, 1612971215, 'no', 0, NULL, 0, NULL, NULL, NULL, 11, 9),
(445, 114, 32, 0, 3, 20000000, 19000000, 1, 0, 2, 0, 1612976469, 'no', 0, NULL, 0, NULL, NULL, NULL, 65, 9),
(446, 114, 2, 3, 1, 15180000, 14000000, 1, 0, 1, 0, 1612976469, 'no', 0, NULL, 0, NULL, NULL, NULL, 7, 9),
(447, 114, 11, 2, 3, 6299000, 6099000, 1, 0, 0, 0, 1612976469, 'no', 0, NULL, 0, NULL, NULL, NULL, 10, 9),
(448, 114, 18, 7, 2, 14300000, 13000000, 1, 10, 0, 0, 1612976469, 'no', 0, NULL, 0, NULL, NULL, NULL, 22, 9),
(449, 114, 12, 5, 1, 17000000, 13000000, 1, 0, 0, 0, 1612976469, 'no', 0, NULL, 0, NULL, NULL, NULL, 11, 9),
(450, 115, 32, 0, 3, 20000000, 19000000, 1, 0, 2, 0, 1612976525, 'no', 0, NULL, 0, NULL, NULL, NULL, 65, 9),
(451, 115, 2, 3, 1, 15180000, 14000000, 1, 0, 1, 0, 1612976525, 'no', 0, NULL, 0, NULL, NULL, NULL, 7, 9),
(452, 115, 11, 2, 3, 6299000, 6099000, 1, 0, 0, 0, 1612976525, 'no', 0, NULL, 0, NULL, NULL, NULL, 10, 9),
(453, 115, 18, 7, 2, 14300000, 13000000, 1, 10, 0, 0, 1612976525, 'no', 0, NULL, 0, NULL, NULL, NULL, 22, 9),
(454, 115, 12, 5, 1, 17000000, 13000000, 1, 0, 0, 0, 1612976525, 'no', 0, NULL, 0, NULL, NULL, NULL, 11, 9),
(455, 116, 32, 0, 3, 20000000, 19000000, 1, 0, 2, 1, 1613060274, 'no', 0, NULL, 0, NULL, NULL, NULL, 65, 9),
(456, 116, 2, 3, 1, 15180000, 14000000, 1, 0, 1, 1, 1613060274, 'no', 0, NULL, 0, NULL, NULL, NULL, 7, 9),
(457, 116, 11, 2, 3, 6299000, 6099000, 1, 0, 0, 1, 1613060274, 'no', 0, NULL, 0, NULL, NULL, NULL, 10, 9),
(458, 116, 18, 7, 2, 14300000, 13000000, 1, 10, 0, 1, 1613060274, 'no', 260000, NULL, 0, NULL, NULL, '2021-02-11 17:14:17', 22, 9),
(459, 116, 12, 5, 1, 17000000, 13000000, 1, 0, 0, 1, 1613060274, 'no', 0, NULL, 0, NULL, NULL, NULL, 11, 9),
(496, 131, 32, 0, 3, 20000000, 19000000, 1, 0, 2, 0, 1621193982, 'no', 0, NULL, 0, NULL, NULL, NULL, 65, 9),
(497, 131, 2, 3, 1, 15180000, 14000000, 1, 0, 1, 0, 1621193982, 'no', 0, NULL, 0, NULL, NULL, NULL, 7, 9),
(498, 131, 11, 2, 3, 6299000, 6099000, 1, 0, 0, 0, 1621193982, 'no', 0, NULL, 0, NULL, NULL, NULL, 10, 9),
(499, 131, 18, 7, 2, 14300000, 13000000, 1, 10, 0, 0, 1621193982, 'no', 0, NULL, 0, NULL, NULL, NULL, 22, 9),
(500, 131, 12, 5, 1, 17000000, 13000000, 1, 0, 0, 0, 1621193982, 'no', 0, NULL, 0, NULL, NULL, NULL, 11, 9),
(501, 131, 33, 5, 2, 45300000, 45300000, 1, 0, 1, 0, 1621193982, 'no', 0, NULL, 0, NULL, NULL, NULL, 66, 9);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `seller_id` int(11) NOT NULL,
  `product_count` int(11) NOT NULL,
  `send_time` int(11) NOT NULL,
  `stockroom_id` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `send_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `package_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tozihat` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `deleted_at`, `created_at`, `updated_at`, `seller_id`, `product_count`, `send_time`, `stockroom_id`, `status`, `send_date`, `package_id`, `tozihat`) VALUES
(1, NULL, '2020-04-01 08:51:09', '2020-04-03 09:58:11', 10, 3, 1585855799, 1, '-2', '1399/01/14', '5116109288', NULL),
(2, NULL, '2020-04-03 15:14:39', '2020-04-03 12:16:38', 10, 5, 1585942199, 2, '-2', '1399/01/15', '9459106729', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `package_products`
--

CREATE TABLE `package_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` int(11) NOT NULL,
  `product_count` int(11) NOT NULL,
  `warranty_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `real_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `package_products`
--

INSERT INTO `package_products` (`id`, `package_id`, `product_count`, `warranty_id`, `created_at`, `updated_at`, `real_count`) VALUES
(1, 1, 2, 37, '2020-04-01 08:51:09', '2020-04-01 08:51:09', NULL),
(2, 1, 1, 53, '2020-04-01 08:51:09', '2020-04-01 08:51:09', NULL),
(3, 2, 2, 23, '2020-04-03 15:14:39', '2020-04-03 15:14:39', 1),
(4, 2, 3, 36, '2020-04-03 15:14:39', '2020-04-03 15:14:39', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `url`, `keywords`, `description`, `content`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'حریم خصوصی', 'حریم-خصوصی', ',حریم خصوصی', NULL, '<p>دیجی&zwnj;کالا با تاکید بر احترامی که برای حریم شخصی کاربران قائل است، برای خرید، ثبت نظر یا استفاده از برخی امکانات وب&zwnj;سایت اطلاعاتی را از کاربران درخواست می&zwnj;کند تا بتواند خدماتی امن و مطمئن را به کاربران ارائه دهد. برای پردازش و ارسال سفارش، اطلاعاتی مانند آدرس، شماره تلفن و ایمیل مورد نیاز است و از آنجا که کلیه فعالیت&zwnj;های دیجی&zwnj;کالا قانونی و مبتنی بر قوانین تجارت الکترونیک صورت می&zwnj;گیرد و طی فرایند خرید، فاکتور رسمی و بنا به درخواست مشتریان حقوقی گواهی ارزش افزوده صادر می&zwnj;شود، از این رو وارد کردن اطلاعاتی مانند نام و کد ملی برای اشخاص حقیقی یا کد اقتصادی و شناسه ملی برای خریدهای سازمانی لازم است. یادآوری می&zwnj;شود آدرس ایمیل و تلفن&zwnj;هایی که مشتری در پروفایل خود ثبت می&zwnj;کند، تنها آدرس ایمیل و تلفن&zwnj;های رسمی و مورد تایید مشتری است و تمام مکاتبات و پاسخ&zwnj;های شرکت از طریق آنها صورت می&zwnj;گیرد.<br />\r\nبنابراین درج آدرس، ایمیل و شماره تماس&zwnj;های همراه و ثابت توسط مشتری، به منزله مورد تایید بودن صحت آنها است و در صورتی که موارد فوق به صورت صحیح یا کامل درج نشده باشد، دیجی&zwnj;کالا جهت اطمینان از صحت و قطعیت ثبت سفارش می&zwnj;تواند از مشتری، اطلاعات تکمیلی و بیشتری درخواست کند.<br />\r\nمشتریان می&zwnj;توانند نام، آدرس و تلفن شخص دیگری را برای تحویل گرفتن سفارش وارد کنند و دیجی&zwnj;کالا تنها برای ارسال همان سفارش، از این اطلاعات استفاده خواهد کرد.<br />\r\nهمچنین دیجی&zwnj;کالا ممکن است برای ارتباط با مشتریان، بهینه&zwnj;سازی محتوای وب&zwnj;سایت و تحقیقات بازاریابی از برخی اطلاعات استفاده کند و برای اطلاع&zwnj;رسانی رویدادها و اخبار، خدمات و سرویس&zwnj;های ویژه یا پروموشن&zwnj;ها، برای اعضای وب&zwnj;سایت ایمیل یا پیامک ارسال نماید. در صورتی که کاربران تمایل به دریافت اینگونه ایمیل&zwnj;ها و پیامک&zwnj;ها نداشته باشند، می&zwnj;توانند عضویت دریافت خبرنامه دیجی&zwnj;کالا را در پروفایل خود لغو کنند. عدم اقدام جهت لغو، به منزله ی موافقت ضمنی با دریافت ایمیل&zwnj;ها و پیام&zwnj;ها و سلب حق اعتراض می&zwnj;باشد.</p>', NULL, '2020-03-14 15:13:48', '2020-09-18 07:10:06'),
(2, 'شرایط استفاده', 'شرایط-استفاده', NULL, NULL, '<p>شرایط استفاده</p>', NULL, '2020-03-14 15:36:17', '2020-11-30 20:05:10');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('09141592083', '$2y$10$mxw5mGIWFa4C4OQE9rs0zuzqA2Tvsm.MHvqUI6kAGrc3WtdEvldwC', '2020-12-02 15:20:56');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `shenase` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `time`, `seller_id`, `price`, `shenase`, `created_at`, `updated_at`) VALUES
(41, 1586797924, 10, 1000000, NULL, '2020-04-13 12:42:04', '2020-04-13 12:42:04'),
(42, 1586797924, 27, 2000000, NULL, '2020-04-13 12:42:04', '2020-04-13 12:42:04');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) DEFAULT NULL,
  `discount_price` int(11) DEFAULT NULL,
  `show` smallint(6) NOT NULL DEFAULT 1,
  `view` int(11) NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `special` smallint(6) NOT NULL DEFAULT 0,
  `cat_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `image_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tozihat` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_number` int(11) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT 0,
  `send_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `score` int(11) NOT NULL DEFAULT 0,
  `score_count` int(11) NOT NULL DEFAULT 0,
  `seller_id` int(11) NOT NULL DEFAULT 0,
  `use_for_gift_cart` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `validity_date` int(11) DEFAULT NULL,
  `ready_to_shipment` int(11) NOT NULL DEFAULT 0,
  `fake` smallint(6) NOT NULL DEFAULT 0,
  `product_weight` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `ename`, `product_url`, `price`, `discount_price`, `show`, `view`, `keywords`, `description`, `special`, `cat_id`, `brand_id`, `image_url`, `tozihat`, `order_number`, `deleted_at`, `created_at`, `updated_at`, `status`, `send_status`, `score`, `score_count`, `seller_id`, `use_for_gift_cart`, `validity_date`, `ready_to_shipment`, `fake`, `product_weight`) VALUES
(1, 'لپ تاپ 13 اینچی اپل مدل MacBook Pro MPXQ2 2017', 'Apple MacBook Pro MPXQ2 2017 - 13 inch Laptop', 'لپ-تاپ-13-اینچی-اپل-مدل-MacBook-Pro-MPXQ2-2017', NULL, NULL, 1, 0, NULL, 'تست', 0, 97, 4, '1552129113.jpg', '<p>لپ تاپ 13 اینچی اپل مدل MacBook Pro MPXQ2 2017</p>', 0, NULL, '2019-02-05 06:53:55', '2019-10-17 11:25:51', 0, '0', 0, 0, 0, 'no', NULL, 0, 0, 0),
(2, 'گوشی موبایل اپل مدل iPhone XS Max دو سیم‌ کارت ظرفیت 64 گیگابایت', 'Apple iPhone XS Max Dual SIM 64GB Mobile Phone', 'گوشی-موبایل-اپل-مدل-iPhone-XS-Max-دو-سیم‌-کارت-ظرفیت-64-گیگابایت', 14000000, 1180000, 1, 0, ',گوشی موبایل,موبایل', 'خرید گوشی موبایل', 0, 87, 4, '1552134276.jpg', '<p>گوشی موبایل اپل مدل iPhone XS Max دو سیم&zwnj; کارت ظرفیت 64 گیگابایت</p>', 0, NULL, '2019-02-05 07:49:55', '2021-01-23 15:32:07', 1, '0', 0, 0, 0, 'no', NULL, 0, 0, 0),
(6, 'لپ تاپ 13 اینچی مایکروسافت مدل Surface Laptop - F', 'Microsoft Surface Laptop - F - 13 inch Laptop', 'لپ-تاپ-13-اینچی-مایکروسافت-مدل-Surface-Laptop-F', NULL, NULL, 1, 0, NULL, 'لپ تاپ', 0, 98, 16, '1549536823.jpg', '<p>لپ تاپ 13 اینچی مایکروسافت مدل Surface Laptop - F</p>', 0, NULL, '2019-02-07 03:32:37', '2020-05-01 09:52:20', 0, '0', 0, 0, 0, 'no', NULL, 0, 0, 0),
(8, 'کاور سیلیکونی مدل SlC مناسب برای گوشی موبایل آیفون 6/6s', NULL, 'کاور-سیلیکونی-مدل-SlC-مناسب-برای-گوشی-موبایل-آیفون-6-6s', 20000, 8000, 1, 0, NULL, 'کاور موبایل', 0, 77, 4, '1549920419.jpg', '<p>کاور سیلیکونی مدل SlC مناسب برای گوشی موبایل آیفون 6/6s</p>', 0, NULL, '2019-02-11 14:27:00', '2020-07-28 22:22:03', 1, '0', 0, 0, 0, 'no', NULL, 0, 0, 0),
(9, 'گوشی موبایل اپل مدل iPhone 8 ظرفیت 256 گیگابایت', 'Apple iPhone 8 256GB Mobile Phone', 'گوشی-موبایل-اپل-مدل-iPhone-8-ظرفیت-256-گیگابایت', 10079000, 0, 1, 0, NULL, 'گوشی موبایل', 0, 87, 4, '1551045911.jpg', NULL, 0, NULL, '2019-02-24 15:05:11', '2021-01-22 08:26:27', 1, '0', 0, 0, 0, 'no', NULL, 0, 0, 0),
(10, 'گوشی موبایل هوآوی مدل Y7 Prime 2018 دو سیم کارت', 'Huawei Y7 Prime 2018 Dual SIM Mobile Phone', 'گوشی-موبایل-هوآوی-مدل-Y7-Prime-2018-دو-سیم-کارت', 2199000, 0, 1, 0, NULL, 'گوشی موبایل', 0, 87, 7, '1552122115.jpg', '<p>گوشی موبایل هوآوی مدل Y7 Prime 2018 دو سیم کارت</p>', 0, NULL, '2019-03-09 02:01:55', '2020-05-22 14:16:23', 1, '0', 0, 0, 0, NULL, NULL, 0, 0, 0),
(11, 'گوشی موبایل نوکیا مدل 8Sirocco ظرفیت 128 گیگابایت', 'Nokia 8 Sirocco 128GB Mobile Phone', 'گوشی-موبایل-نوکیا-مدل-8Sirocco-ظرفیت-128-گیگابایت', 6099000, 200000, 1, 0, NULL, 'گوشی نوکیا', 0, 87, 14, '1552236270.jpg', '<h1>گوشی موبایل نوکیا مدل 8Sirocco ظرفیت 128 گیگابایت</h1>', 0, NULL, '2019-03-10 09:44:30', '2021-01-23 15:32:57', 1, '2', 0, 0, 0, NULL, NULL, 0, 0, 0),
(12, 'گوشی موبایل اپل مدل iPhone X ظرفیت 256 گیگابایت', 'Apple iPhone X 256GB Mobile Phone', 'گوشی-موبایل-اپل-مدل-iPhone-X-ظرفیت-256-گیگابایت', 13000000, 4000000, 1, 0, NULL, 'گوشی موبایل اپل', 0, 87, 4, '1562362008.jpg', '<p>اپل در سالگرد ده&zwnj;سالگی آیفون، از آیفونی سخن به میان&shy; آورد که آن را با نام آیفون 10 یا آیفون ایکس صدا می&zwnj;&shy;زد. بسیاری از قسمت&shy;&zwnj;های آیفون جدید، دست&zwnj;خوش تغییرات بزرگی شده&zwnj;&shy;اند که طرف&shy;&zwnj;داران اپل را هیجان&shy;&zwnj;زده کرده است و آیفون 10 را به محصولی متفاوت تبدیل کرده&shy;&zwnj;اند. نمایشگری که این بار با پنل&shy; اولد ساخته&zwnj;شده و اپل نام فناوری به&zwnj;کاررفته در آن را سوپر رتینا گذاشته است تابه&zwnj;حال در هیچ آیفون دیگری استفاده&zwnj;نشده بود. این نمایشگر رزولوشن بالایی در مقایسه با آیفون&shy;&zwnj;های قبلی دارد به&zwnj;طوری&zwnj;که در اندازه&shy;&zwnj;ی 5.8 اینچ&zwnj;&shy;اش در حدود 458 پیکسل را در هر اینچ جا داده است. این اولین بار است که این حجم از پیکسل در اینچ و همچنین ابعاد در نمایشگر آیفون&shy;&zwnj;ها استفاده شده است. همچنین این نمایشگر تقریبا تمام قاب جلویی گوشی را پر کرده؛ این مورد در کنار لبه&shy;&zwnj;های براق قاب اصلی جلوه&shy;&zwnj;ای لوکس به آیفون 10 داده است. قاب پشتی هم از جنس شیشه ساخته&zwnj;شده تا هم گوشی مشکل آنتن&shy;&zwnj;دهی نداشته باشد و هم امکان شارژ بی&shy;سیم باتری هم در این گوشی وجود داشته باشد. این بدنه&shy;&zwnj;ی زیبا در مقابل خط&zwnj;&shy;وخش مقاومت بالایی دارد و می&shy;&zwnj;توانید از اینکه آب و گردوغبار به&zwnj;&shy;راحتی روی آیفون ایکس تاثیر نمی&shy;&zwnj;گذارد، خیال&shy;&zwnj;تان راحت باشد. مورد دیگر مجهز شدن آیفون 10 به حسگر تشخیص چهره است. این فناوری چهره&shy;&zwnj;ی شما را با استفاده از فناوری جدید شناسایی می&shy;&zwnj;کند؛ حتی اگر تغییری در چهره&shy;&zwnj;ی شما ایجاد شود، آن را شناخته و تنها با صورت شما قفل گوشی را باز می&shy;&zwnj;کند. به لطف این فناوری جدید دیگر خبری از حسگر اثرانگشت در آیفون 10 نیست. دو دوربین که هر دو سنسور&shy;هایی 12 مگاپیکسلی دارند از دیگر مواردی هستند که این گوشی را از سایر آیفون&shy;&zwnj;ها متمایز کرده است. قابلیت اتصال به شبکه&shy;&zwnj;های 4G با سرعت دانلود تا یک گیگابیت بر ثانیه، بلوتوث نسخه&shy;&zwnj;ی 5، نسخه&shy;&zwnj;ی 11 از iOS که مخصوص آیفون 10 شخصی&shy;&zwnj;سازی شده و از همه مهم&zwnj;تر حذف کلید خانه که به نظر اپل دیگر نیازی به آن احساس نمی&shy;&zwnj;شود از دیگر ویژگی&shy;&zwnj;های جدید این گوشی هستند. از نظر سخت&shy;&zwnj;افزاری هم این گوشی از تراشه&shy;&zwnj;ی جدید A11 بهره می&zwnj;&shy;برد که در آن پردازنده&zwnj;&shy;ای شش هسته&shy;&zwnj;ا&zwnj;ی و قدرتمند قرارگرفته تا بتواند علاوه بر کارهای معمول، از قابلیت&shy;&zwnj;های جدید واقعیت مجازی که اپل این روزها روی آن تمرکز خاصی دارد، پشتیبانی کند. آیفون جدید تنها در دو رنگ خاکستری و نقره&zwnj;ای ارائه می&shy;&zwnj;شود.</p>', 0, NULL, '2019-07-05 12:26:49', '2021-01-23 15:32:21', 1, '1', 106, 6, 0, 'no', NULL, 0, 0, 0),
(13, 'کیف کلاسوری مدل js453 مناسب برای گوشی موبایل سامسونگ Galaxy A7 2018', NULL, 'کیف-کلاسوری-مدل-js453-مناسب-برای-گوشی-موبایل-سامسونگ-Galaxy-A7-2018', 53000, 0, 1, 0, NULL, 'کیف کلاسوری مدل js453 مناسب برای گوشی موبایل سامسونگ Galaxy A7 2018', 0, 76, 1, '1562413219.jpg', '<p>کیف کلاسوری js453 از سری محصولات محبوبی میباشد که علاوه بر محافظت از تلفن همراه شما در برابر خط و خش و ضربه می تواند به عنوان استند نیز استفاده شود. این مدل از کیف های کلاسوری سامسونگ به گونه ای طراحی شده که می تواند به عنوان اسنتد نیز استفاده شود. پس زمانی که نیاز به تماشای فیلم داشته باشید یا این که در حال وب گردی هستید می توانید گوشی خود را در حالت استند قرار داده و از آن استفاده کنید. قاب جلویی در این کیف کلاسوری حالت آینه ای دارد که زیبایی خاصی به گوشی تلفن همراه شما می بخشد. قاب پشتی این مدل از پلاستیک سخت ساخته شده و انعطاف پذیر نیست. در قسمتی که گوشی شما به قاب متصل می شود یک حالت مخملی دارد که باعث جلو گیری از ایجاد کوچکترین آسیب ها بر پشت گوشی شما می شود. دو طرف قاب که گوشی را در خود نگه می دارند حالت ژله ای دارند که گوشی شما راحت تر در قاب قرار بگیرد و در قسمت بالا و پایین کیف کلاسوری سامسونگ پوششی در نظر گرفته نشده که شما راحت تر بتوانید به پورت ها دسترسی داشته باشید. کیف کلاسوری مدل js453 که برای گوشی سامسونگ گلکسی a750طراحی شده محل قرار گیری دکمه&zwnj;ها، دوربین، درگاه&zwnj;ها، اسپیکر و بلندگوها به طور دقیق اندازه گیری شده و برش خورده پس برای دسترسی به آنها مشکلی نخواهید داشت.</p>', 0, NULL, '2019-07-06 02:40:19', '2020-07-28 22:21:02', 0, '0', 0, 0, 0, 'no', NULL, 0, 0, 0),
(17, 'گوشی موبایل سامسونگ مدل Galaxy A70 SM-A705FN/DS دو سیم‌کارت ظرفیت 128 گیگابایت', 'null', 'گوشی-موبایل-سامسونگ-مدل-Galaxy-A70-SM-A705FN-DS-دو-سیم‌کارت-ظرفیت-128-گیگابایت', 5349000, NULL, 1, 0, NULL, 'گوشی موبایل سامسونگ مدل Galaxy A70 SM-A705FN/DS دو سیم‌کارت ظرفیت 128 گیگابایت', 0, 87, 1, '1564582027.jpg', '<p>گوشی سامسونگ گلکسی A70 از سبک طراحی دیگر گوشی های سری گلکسی A 2019 سامسونگ پیروی می&zwnj;کند با این تفاوت که ابعاد و اندازه بزرگ&zwnj;تری دارد و به نظر می&zwnj;رسد قاب پشت آن براق&zwnj;تر طراحی شده است. دو لبه سمت راست و چپ قاب پشت گوشی کمی خمیده هستند و این امر منجر به خوش دست تر شدن دستگاه می&zwnj;شود. در گوشه سمت چپ و فوقانی قاب پشت آن هم لنز دوربین سه گانه و چراغ فلش LED اختصاصی آن تعبیه شده است. با توجه به اینکه در قاب پشت دستگاه هیچ اسکنر انگشتی وجود ندارد، شاید این سوال در ذهنتان ایجاد شود که آنلاک گوشی چگونه انجام خواهد شد؟ سامسونگ گوشی گلکسی A70 را به نمایشگری مجهز کرده که مثل سری گوشی های گلکسی S10 از قابلیت اسکن انگشت کاربر و آنلاک صفحه نمایش پشتیبانی می&zwnj;کند. صفحه نمایش این گوشی 6.7 اینچی است و به لطف حاشیه های باریکی که دارد، تقریبا 86 درصد از کل مساحت پنل جلوی دستگاه را در بر می&zwnj;گیرد. روی لبه فوقانی نمایشگر گوشی یک زائده کوچک U شکل نصب است که لنز دوربین سلفی گوشی در آن قسمت نصب می&zwnj;شود و اصطلاحا به آن ناچ (Notch) می&zwnj;گوییم. سامسونگ روی صفحه نمایش این گوشی را با یک لایه گلس محافظ هم پوشانده است. سری گوشی های سامسونگ گلکسی A 2019 همگی از نظر سیستم عامل و رابط کاربری وضعیت یکسانی دارند. گوشی گلکسی A70 هم مثل دیگر گوشی های این سری به طور پیش فرض از اندروید 9 پای (Android 9 Pie) بهره می&zwnj;برد و رابط کاربری One UI سامسونگ هم در کنار آن نصب و راه&zwnj;اندازی شده است. تراشه&zwnj;ای که در قلب این اسمارتفون بکار رفته، تراشه اسنپدراگون 675 کوالکام است که از لیتوگرافی 11 نانومتری بهره می&zwnj;برد و یکی از جدیدترین تراشه های میان رده رو به بالای کوالکام محسوب می&zwnj;شود. پردازنده مرکزی این تراشه از هشت هسته پردازشگر تشکیل شده که شش مورد آن ها از نوع Kyro 460 Silver هستند و فرکانس کاری 1.7 گیگاهرتزی دارند. دو هسته پردازشگر دیگر تراشه هم از نوع Kyro 460 Gold خواهند بود و فرکانس کاری 2 گیگاهرتزی را ارائه می&zwnj;کنند. پردازنده گرافیکی Adreno 620 هم در این تراشه وظیفه تجزیه و تحلیل داده های گرافیکی را بر عهده خواهد داشت. دوربین اصلی این گوشی از سه لنز 32، 8 و 5 مگاپیکسلی تشکیل شده که به ترتیب از نوع واید (Wide)، اولتراواید (Ultrawide) و عمقی (Depth) هستند. لنز دوربین واید 32 مگاپیکسلی گوشی دیافراگم F/1.7 دارد. لنز دوربین اولتراواید 8 مگاپیکسلی آن از دیافراگم F/2.2 بهره می&zwnj;برد و لنز دوربین عمقی 5 مگاپیکسلی آن هم دیافراگم F/2.2 را ارائه می&zwnj;کند. دوربین اصلی این گوشی از یک چراغ فلش LED بهره&zwnj;مند است و از قابلیت هایی مثل فوکوس خودکار مرحله&zwnj;ای (PDAF)، عکسبرداری پانوراما، HDR، عکسبرداری پرتره، عکسبرداری با زاویه دید گسترده و ضبط ویدئو های 4K با فریم ریت 30 فریم در هر ثانیه پشتیبانی به عمل می&zwnj;آورد.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 0, NULL, '2019-07-31 05:07:07', '2020-01-17 10:21:17', 1, '0', 0, 0, 10, 'no', NULL, 0, 0, 0),
(18, 'لپ تاپ 13 اینچی اپل مدل MacBook Air MRE82 2018 با صفحه نمایش رتینا', 'null', 'لپ-تاپ-13-اینچی-اپل-مدل-MacBook-Air-MRE82-2018-با-صفحه-نمایش-رتینا', 13000000, 1300000, 1, 0, NULL, 'لپ تاپ 13 اینچی اپل مدل MacBook Air MRE82 2018 با صفحه نمایش رتینا', 0, 98, 4, '1564587646.jpg', '<p>سال 2008 میلادی شرکت اپل اولین نسل از الترابوک&zwnj;های MacBook Air را روانه&zwnj;ی بازار کرد و استاندارد جدیدی از وزن، ابعاد و کارایی را برای این نوع از دستگاه&zwnj;ها معرفی نمود. تاکنون نه نسل از این محصول تولید شده که هر سال از لحاظ طراحی ظاهری، امکانات، ویژگی&zwnj;ها و سخت&zwnj;افزارها پیشرفت کرده و کامل&zwnj;تر شده است. اپل در سری 2016 آلترابوک MacBook Air را بازار معرفی کرد. سال 2018 پس از گذشت 10 سال از تولید این محصول، اپل نسخه جدیدی از مک بوک ایر با را به بازار عرضه کرده است. این الترابوک اپل از نسل هشتم پردازنده&zwnj;های سری Core اینتل استفاده کرده و طبیعتاً پردازشگر گرافیکی آنبرد آن هم از سری Intel UHD Graphics 617 است. رم هشت گیگابایتی از نوع 2133 MHz LPDDR3 که می&zwnj;توان آن را تا 16 گیگابایت ارتقا داد و حافظه&zwnj;ی داخلی 128 گیگابایتی (تا حداکثر 1.5 ترابایتی) از نوع SSD هم از دیگر مشخصات سخت&zwnj;افزاری این مدل جدید هستند. این کانفیگ مجهز به هشت گیگابایت رم و 128 گیگابایت حافظه&zwnj;ی داخلی است که برای کاربری&zwnj;های حرفه&zwnj;ای&zwnj;تر که به سرعت بالاتر و حافظه&zwnj;ی داخلی بیشتری نیاز دارند مناسب است. استفاده از دو پورت USB-C که هم تنها تغییری است که در بخش پورت&zwnj;ها ایجاد شده است. این درگاه&zwnj;های USB-C از فناوری Thunderbolt 3 پشتیبانی می&zwnj;کنند و فناوری DisplayPort هم در آن به کار گرفته شده است. هرچند که این تعداد پورت در کل برای یک آلترابوک مناسب است و محصولات اپل استانداردهای خاص خود را دارند، اما جای پورت&zwnj;های معمول&zwnj;تری مانند HDMI یا LAN روی این دستگاه خالی است. صفحه&zwnj;نمایش این دستگاه در 13.3 اینچی با وضوح پیش&zwnj;فرض 2560 در 1600 پیکسل موجود است. صفحه&zwnj;نمایش این محصول از نوع رتینا (Rerina) و با پنل IPS و روکش براق طراحی شده است. کیبورد و تاچ&zwnj;پد مانند تمامی دیگر محصولات اپل از کیفیت بسیار بالایی برخوردار هستند. کیبورد از نوع جزیره&zwnj;ای با استاندارد QWERTY و مجهز به نور پس&zwnj;زمینه بوده و تاچ&zwnj;پد هم از نوع یک&zwnj;تکه با سطح صیقلی و دقت بسیار بالا است. سنسور Touch ID دیگر ویژگی قابل&zwnj;توجه مک بوک ایر 2018 است. شرکت اپل این محصول را در سه رنگ نقره&zwnj;ای، طلایی و خاکستری به بازار عرضه کرده است.</p>', 0, NULL, '2019-07-31 06:40:46', '2021-01-23 15:32:36', 1, '0', 0, 0, 10, 'no', NULL, 0, 0, 0),
(19, 'گوشی موبایل سامسونگ مدل Samsung Galaxy S10 Plus SM-G975F/DS دو سیم کارت ظرفیت 128 گیگابایت', 'Samsung Galaxy S10 Plus SM-G975F/DS Dual SIM 128GB Mobile Phone', 'گوشی-موبایل-سامسونگ-مدل-Samsung-Galaxy-S10-Plus-SM-G975F-DS-دو-سیم-کارت-ظرفیت-128-گیگابایت', 10480000, 1000000, 1, 0, NULL, 'گوشی موبایل سامسونگ مدل Samsung Galaxy S10 Plus SM-G975F/DS دو سیم کارت ظرفیت 128 گیگابایت', 0, 87, 1, '1564698777.jpg', '<p>گوشی&zwnj;های شرکت سامسونگ معمولاً دارای نسخه&zwnj;های پلاس با ابعاد بزرگ&zwnj;تر هستند. به نظر می&zwnj;رسد سامسونگ قصد دارد&nbsp;این سنت را همچنان ادامه دهد، چراکه گوشی موبایل &laquo;Galaxy S10 Plus&raquo; به بازار عرضه شده است تا بزرگ&zwnj;تر و حتی پرقدرت&zwnj;تر از Galaxy S10 ظاهر شود. این نسخه از گوشی اس 10 پلاس شرکت ساسونگ با میزان حافظه داخلی 128 گیگابایت به بازار عرضه شده است. البته امکان افزایش میزان حافظه این گوشی با شیار کارت حافظه تا 1 ترابایت دیگر هم وجود دارد تا تقریباً تمام دغدغه کاربر پوشش داده شود. سامسونگ برای این گوشی میزان رم 8 گیگابایتی در نظر گرفته است تا در توانایی و ظرفیت این محصول هیچ حرف و حدیثی باقی نماند. گوشی Galaxy S10 Plus یکی از چهار محصول جدید سامسونگ است. این گوشی فریمی آلومینیومی دارد و پشت و جلوی آن از شیشه ساخته شده است و جلوه&zwnj;ی زیبایی به گوشی داده است. روکش محافظ شیشه&zwnj;های پشت و جلوی این گوشی Corning Gorilla Glass&nbsp;است. این گوشی گواهینامه IP68 دارد، یعنی تا ۳۰ دقیقه و تا عمق ۱.۵متری در برابر آب مقاوم است و گردوغبار هم نمی&zwnj;تواند آن را از کار بیندازد. حسگر اثر انگشت این گوشی در زیر صفحه&zwnj;نمایش کار گذاشته شده است و عملکرد کاملاً مطلوبی دارد. صفحه&zwnj;نمایش استفاده&zwnj;شده در این گوشی 6.4 اینچ با رزولوشن QHD+ یعنی 1440 x 3040&nbsp;است که با استفاده از فناوری&nbsp;جدید Dynamic AMOLED&nbsp;و پنل OLED تصاویر شفاف و بی&zwnj;نظیری را به نمایش می&zwnj;گذارد. این صفحه&zwnj;نمایش در هر اینچ 522 پیکسل را نشان می&zwnj;دهد که این یعنی جزئیات و وضوح تصویر عالی است. تراشه&zwnj;ی این محصول، Exynos 9820 است که به&zwnj;عنوان تراشه&zwnj;ای 8 نانومتری عملکرد فوق&zwnj;العاده بهینه&zwnj;ای دارد. تراشه&zwnj;ی گرافیکی Mali-G76 MP12 هم برای پخش ویدئو و بازی مناسب است. مجموعه دوربین&zwnj;های گلکسی S10 Plus از دو سنسور ۱۲مگاپیکسلی و یک سنسور 16 مگاپیکسلی تشکیل شده و به فلش LED مجهز شده است. دوربین&zwnj;های این محصول امکانات و ویژگی&zwnj;های بی&zwnj;نظیری هم در عکاسی و هم در فیلم&zwnj;برداری دارد که از مهم&zwnj;ترین آن&zwnj;ها می&zwnj;توان به قابلیت فیلم&zwnj;برداری هم&zwnj;زمان با دو دوربین اشاره کرد. همچنین دریچه&zwnj;ی دیافراگم f/1.5-2.4 باعث می&zwnj;شود تصاویر با روشنایی خوبی ثبت شوند و کیفیت عکس&zwnj;های گرفته شده بسیار راضی&zwnj;کننده باشند. دوربین&zwnj;های Telephoto و Ultra Wide هم امکانات این گوشی را فراتر برده&zwnj;اند و زوم اپتیکال دو برابر و تصویر فوق گسترده را برای این گوشی به همراه آورده&zwnj;اند. این محصول دارای دو حسگر دوبین سلفی است. دوربین سلفی سنسوری 10 مگاپیکسلی این گوشی قادر است عکس&zwnj;های عریض بگیرد و دوربین 8 مگاپیکسلی دیگر هم نقش سنسور عمق را به خوبی ایفا می کند. قابلیت عکاسی HDR به&zwnj;صورت اتوماتیک هم یکی دیگر از ویژگی&zwnj;های دوربین سلفی است. پشتیبانی از فناوری شارژ سریع 15 واتی، درگاه USB Type-C و حسگر اثرانگشت در زیر نمایشگر هم از دیگر ویژگی&zwnj;های این تازه&zwnj;وارد خانواده سامسونگ است. امکان شارژ شدن سریع بی&zwnj;سیم و قابلیت شارژر دیگر دستگاه&zwnj;ها به&zwnj;صورت بی&zwnj;سیم از دیگر ویژگی&zwnj;هایی هستند که این گوشی را در رده پرچم&zwnj;داران مدرن قرار می&zwnj;دهند. گوشی Galaxy S10 Plus را می&zwnj;تواند قوی&zwnj;ترین محصول در میان چهار گوشی جدید سامسونگ به&zwnj;حساب آورد. این گوشی با میزان رم و حافظه داخلی بالا خبری خوبی را برای علاقه&zwnj;مندان به بازی و مولتی تسکنیگ به همراه دارد.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 0, NULL, '2019-08-01 13:32:57', '2021-01-22 08:26:27', 1, '1', 0, 0, 10, 'no', NULL, 0, 0, 0),
(20, 'لپ تاپ 13 اینچی مایکروسافت مدل Surface Book 2- D', 'Microsoft Surface Book 2- D - 13 inch Laptop', 'لپ-تاپ-13-اینچی-مایکروسافت-مدل-Surface-Book-2-D', 36889000, 0, 1, 0, NULL, 'لپ تاپ 13 اینچی مایکروسافت مدل Surface Book 2- D', 0, 98, 16, '1566135472.jpg', '<p>در کنفرانس 6 اکتبر 2015 مایکروسافت همه&zwnj;چیز طبق پیش&zwnj;بینی&zwnj;ها بود و محصولاتی که همگان از قبل انتظار داشتند یکی پس از دیگری معرفی می&zwnj;شدند. اما در یک سوم پایانی کنفرانس ناگهان از محصولی رونمایی شد که تمامی حضار را غافلگیر کرد؛ اولین لپ&zwnj;تاپ مایکروسافت به نام Surface Book. اخیرا سری جدید این لپ&zwnj;تاپ با نام Surace Book 2 هم وارد بازار شده است. این لپ&zwnj;تاپ تبدیل&zwnj;پذیر 13 اینچی یک ترکیب بی&zwnj;نظیر از طراحی زیبا و خلاقانه درکنار سخت&zwnj;افزارهای قدرتمند است. لولای متصل&zwnj;کننده صفحه&zwnj;&zwnj;نمایش به بدنه&zwnj;ی لپ&zwnj;تاپ به گونه&zwnj;ای طراحی شده که می&zwnj;توان صفحه&zwnj;&zwnj;نمایش را از بدنه جدا کرد و مانند یک تبلت آن را در دست گرفت. صفحه&zwnj;&zwnj;نمایش کم&zwnj;نظیر این محصول از نوع لمسی با پنل مخصوص و انحصاری مایکروسافت با نام PixelSense و روکش براق است که وضوح تصویری متفاوت برابر با 3000x2000 پیکسل دارد. با وجود براق&zwnj;بودن روکش، باز هم این صفحه&zwnj;&zwnj;نمایش زاویه&zwnj;ی دید بالایی دارد و حتی در محیط&zwnj;های خارجی هم می&zwnj;توان تصاویر را با شفافیت بالایی روی آن مشاهده کرد. به جرات می&zwnj;توان گفت 2 Surface Book یکی از بهترین لپ&zwnj;تاپ&zwnj;های ویندوزی است. نسل هشتم پردازنده&zwnj;های سری Core i7 اینتل، حافظه داخلی SSD و 16 گیگابایت رم، از جمله عوامل قدرتمندبودن این دستگاه هستند. پردازشگر گرافیکی این محصول NVIDIA GeForce GTX 1050 با دو گیگابایت حافظه&zwnj;ی اختصاصی موجود است. این مدل که در حال حاضر نمونه بالارده در بین مدل&zwnj;های 2 Surface Book محسوب می&zwnj;شود، با پردازنده مرکزی Core i7 8650U، رم 16 گیگابایتی، یک ترابایت حافظه&zwnj;ی داخلی SSD و پردازشگر گرافیکی مجزا ارائه می&zwnj;شود. کاربرانی که قصد اجرای برنامه&zwnj;های نیمه&zwnj;حرفه&zwnj;ای و البته تا حدودی حرفه&zwnj;ای را داشته یا می&zwnj;خواهند بازی&zwnj;های کامپیوتری را با کیفیت قابل قبولی بازی کنند، این مدل می&zwnj;تواند انتخاب مناسبی برای آن&zwnj;ها باشد. باتری این لپ&zwnj;تاپ تا 17 ساعت روشن ماندن دستگاه را در حالت پخش ویدئو تضمین می&zwnj;کند. برای این لپ&zwnj;تاپ یک قلم دیجیتالی به نام Surface Pen هم در نظر گرفته شده که می&zwnj;توانید آن را به صورت جدا خریداری کنید و برای کار و طراحی روی صفحه&zwnj;ی نمایش لمسی دستگاه، تقریبا بدون نقص است. پورت&zwnj;های ورودی و خروجی زیادی روی دستگاه مشاهده نمی&zwnj;شود که عبارتند از دو پورت USB 3.1، یک پورت USB Type-C، کارت&zwnj;خوان و جک 3.5 میلی&zwnj;متری صدا که به&zwnj;غیر از جک صدا باقی پورت&zwnj;ها روی داک قرار گرفته&zwnj;اند. البته روی لبه بالایی تبلت سه کلید برای روشن و خاموش کردن دستگاه و کم و زیاد کردن صدا هم وجود دارد. در مجموع می&zwnj;توان 2 Surface Book را خوش&zwnj;ساخت&zwnj;ترین دستگاه ویندوزی حال حاضر دانست که با قابلیت&zwnj;های متعدد خود تجربه کاربری کاملا متفاوتی را خلق خواهد کرد.</p>', 0, NULL, '2019-08-18 04:37:52', '2020-08-27 16:45:57', 1, '1', 0, 0, 10, 'no', NULL, 0, 0, 0),
(22, 'کارت هدیه دیجی کالا به ارزش 100.000 تومان طرح تولد', 'Digikala 100.000 Toman Gift Card Birth Design', 'کارت-هدیه-دیجی-کالا-به-ارزش-100.000-تومان-طرح-تولد', 100000, NULL, 1, 0, NULL, 'کارت هدیه دیجی کالا به ارزش 100.000 تومان طرح تولد', 0, 148, 20, '1567775348.jpg', '<p>مطمئنا دادن هدیه به عزیزان و نزدیکان یکی از لذت&zwnj;بخش&zwnj;ترین کارهای ممکن در دنیاست. اصلا مهم نیست که این هدیه چه چیزی باشد، این&zwnj;که عزیز یا دوست شما متوجه شود که به فکرش هستید عشق و علاقه شما را ثابت خواهد کرد. اما مشکل&zwnj;ترین قسمت هدیه دادن، اطمینان داشتن از این است که بهترین انتخاب ممکن برای آن&zwnj;ها چیست. لباس، عطروادکلن، گوشی موبایل، دوربین عکاسی، لپ&zwnj;تاپ، یا یک چیز دیگر؟ شاید بهترین راه این باشد که درعین سوپرایز شدن امکان انتخاب آنچه می&zwnj;خواهند را برایشان فراهم کنیم و انتخاب را به عهده خودشان بگذاریم.<br />\r\nکارت هدیه دیجی&zwnj;کالا راهکاری&zwnj;ست هوشمندانه برای هدیه دادن به عزیزان، نزدیکان و دستان شما. کارت هدیه دیجی&zwnj;کالا امکان انتخاب از بین هزاران کالای مختلف در دیجی&zwnj;کالا را به هدیه گیرنده خواهد داد.&nbsp;این کارت&zwnj;ها بدون تاریخ انقضا و در مبالغ مختلف طراحی شده&zwnj;اند تا تجربه یک خرید خوب را بتوان به سلیقه کسی که دوست&zwnj;ش داریم هدیه دهیم.<br />\r\nنکته&zwnj;هایی که باید بدانید: با اولین استفاده، کارت هدیه در حساب کاربری شما ثبت می&zwnj;شود و امکان استفاده از آن برای دیگر کاربران وجود نخواهد داشت.&nbsp; اعتبار کارت هدیه را می&zwnj;توان در چند سبد خرید مجزا استفاده کرد. اعتبار این کارت تنها برای خرید کالا قابل استفاده است و نمی&zwnj;توان از موجودی این کارت برای خرید کارت هدیه دیگری استفاده کرد. در صورت مرجوع کردن کالاهایی که با استفاده از اعتبار کارت هدیه خریده بودید، مبلغ آن&zwnj;ها به حساب همان کارت هدیه باز می&zwnj;گردد. کارت هدیه دیجی&zwnj;کالا، امکان مرجوع کردن یا تبدیل به وجه نقد را ندارد.&nbsp; اگر مبلغ سفارش شما بیش از اعتبار کارت هدیه باشد، می&zwnj;توانید باقیمانده را با روش&zwnj;های عادی پرداخت کنید.<br />\r\nراهنمای استفاده: اگر یک کارت هدیه دیجی&zwnj;کالا دریافت کرده&zwnj;اید، برای استفاده از آن،&zwnj; پس از ورود به حساب کاربری کالاهای مورد نظرتان&nbsp;را به سبد خریـد اضافه و مراحل ثبت سفارش را طی کنید. با رسیدن به مرحله&zwnj;ی اطلاعات سفارش، پوشش روی شماره سریال کارت هدیه را خراشیده، سریال را با دقت و بدون فاصله در کادر مخصوص وارد کرده و دکمه&zwnj;ی ثبت کارت هدیه را بزنید.&nbsp; در نهایت شیوه&zwnj;ی پرداختتان را انتخاب و خرید خود را نهایی کنید.&nbsp; امکان استفاده از دو یا چند کارت هدیه برای ثبت یک سفارش وجود ندارد.&nbsp; کارت هدیه شما محرمانه است، لطفا در حفظ و نگهداری آن دقت فرمایید.</p>\r\n\r\n<p>&nbsp;</p>', 0, NULL, '2019-09-06 04:09:08', '2020-02-25 13:31:56', 1, '0', 0, 0, 0, 'yes', NULL, 0, 0, 0),
(23, 'گوشی موبایل هوآوی مدل P30 Pro VOG-L29 دو سیم کارت ظرفیت 256 گیگابایت - با برچسب قیمت مصرف کننده', 'Huawei P30 Pro VOG-L29 Dual SIM 256GB Mobile Phon', 'گوشی-موبایل-هوآوی-مدل-P30-Pro-VOG-L29-دو-سیم-کارت-ظرفیت-256-گیگابایت-با-برچسب-قیمت-مصرف-کننده', 0, NULL, 1, 0, NULL, 'گوشی موبایل هوآوی مدل P30 Pro VOG-L29 دو سیم کارت ظرفیت 256 گیگابایت - با برچسب قیمت مصرف کننده', 0, 87, 7, '1567982091.jpg', '<p>این گوشی توسط دیجی&zwnj;کالا با تایید سازمان حمایت مصرف کنندگان و تولیدکنندگان عرضه می&zwnj;شود و برچسب قیمت مصرف&zwnj;کننده دارد. این گوشی&zwnj; با قیمت کنترل&zwnj;شده وارد کشور شده و فقط برای عرضه به مصرف&zwnj;کننده نهایی تامین شده&zwnj; است. به علت محدودیت در تعداد این گوشی&zwnj;ها و به منظور توزیع عادلانه در سراسر کشور، سازوکار مشخص و شفافی به شرح زیر طراحی شده است:</p>\r\n\r\n<p>- هر کاربر فقط می&zwnj;تواند یک عدد از این گوشی&zwnj;ها را خریداری کند<br />\r\n- برای جلوگیری از سواستفاده&zwnj;های احتمالی، مشخصات خریدار با کنترل و تطبیق شماره موبایل، مشخصات کارت بانکی، آدرس و کد ملی بررسی خواهد شد.<br />\r\n- در صورت هرگونه تخطی از شرایط فوق، سفارش لغو و وجه پرداختی عودت خواهد شد.</p>\r\n\r\n<p>هوآوی با تولید گوشی P30 Pro مرز بین گوشی&zwnj;های سری Mate &nbsp;و P را کم&zwnj;رنگ کرده است. این شرکت در سال&zwnj;های اخیر تقریباً هر شش ماه یک&zwnj;بار طرفداران گوشی&zwnj;های موبایل را هیجان&zwnj;زده می&zwnj;کند. گوشی P 30 Pro تقریباً هر آنچه در Mate 20 Pro دیده بودیم را در خود دارد؛ با این تفاوت که ویژگی&zwnj;هایی جدید به آن اضافه شده است. بیش از هر چیز 4 دوربین قاب پشتی این گوشی نگاه&zwnj;ها را به خود معطوف کرده است. این سنسورهای 4 گانه که محصول شرکت مطرح لایکا (Leica) هستند، این گوشی را به دوربینی حرفه&zwnj;ای و ارزشمند تبدیل کرده&zwnj;اند. دوربین اصلی در این گوشی دارای سنسوری از نوع عریض (Wide) و با کیفیت 40 مگاپیکسل است. این سنسور در کنار سنسور 20 مگاپیکسلی عکس&zwnj;های فوق&zwnj;العاده&zwnj;ای برای طرفداران عکاسی به ارمغان می&zwnj;آورد. اما این پایان کار نیست حسگر تله&zwnj;فوتو 8 مگاپیکسلی در کنار سنسور TOF سه&zwnj;بعدی تجربه&zwnj;ای فوق&zwnj;العاده از عکاسی در شرایط محیطی مختلف را به وجود می&zwnj;آورند. دوربین سلفی هم به حسگری 32 مگاپیکسلی مجهز شده است تا این گوشی را به محصولی ایدئال برای علاقه&zwnj;مندان به عکاسی تبدیل کند. نمایشگر پی 30 پرو هم از نوع OLED است و رزولوشن بالایی دارد؛ به&zwnj;طوری&zwnj;که در اندازه&zwnj;ی 6.47اینچی&zwnj;اش، حدود 398 پیکسل را در هر اینچ جا داده است. حاشیه اندک و نبود شیار نه&zwnj;چندان دوست&zwnj;داشتنی، ظاهری لوکس و مطلوب به این گوشی داده است. قاب پشتی هم مانند دیگر گوشی&zwnj;های امروزی براق است. این بدنه&shy;&zwnj;ی زیبا در مقابل خط&zwnj;&zwnj;وخش مقاومت زیادی دارد. ویژگی دیگر مجهز شدن P 30 Pro&nbsp; به حسگر اثرانگشت در زیر صفحه&zwnj;نمایش است که مشابه آن را در قبلاً در Mate 20 pro &nbsp;دیده بودیم. این فناوری خطوط انگشت شما را با استفاده از فناوری جدید شناسایی می&zwnj;&zwnj;کند و تنها با لمس انگشت شما قفل گوشی را به&zwnj;سرعت باز می&zwnj;کند. البته دوربین سلفی هم قادر است چهره کاربر را به&zwnj;سرعت تشخیص دهد و قفل گوشی را باز کند. نکته&zwnj;ی بعدی درباره&zwnj;ی این گوشی وجود چیپست قدرتمند و 7 نانومتری Kirin 980 است که خیال کاربر را از پردازش&zwnj;های بسیار سنگین هم راحت می&zwnj;کند. این چیپست پرقدرت در کنار 8 گیگابایت رم و 256 گیگابایت حافظه داخلی قرار گرفته است تا انتظارات کاربران حرفه&zwnj;ای را بالا ببرد. قابلیت اتصال به شبکه&shy;&zwnj;های 4G با سرعت بالا، بلوتوث نسخه&shy;&zwnj;ی 5.0، نسخه&shy;&zwnj;ی 9 از اندروید و از همه مهم&zwnj;تر باتری پرقدرت 4200 میلی&zwnj;آمپرساعتی از دیگر ویژگی&zwnj;های این گوشی خاص هستند. گفتنی است این محصول می&zwnj;تواند به&zwnj;صورت بی&zwnj;سیم شارژ شود و مانند یک پاوربانک مدرن، گوشی&zwnj;ها یا دیگر دستگاه&zwnj;های مجهز به فناوری شارژ بی&zwnj;سیم را شارژ کند. به نظر می&zwnj;رسد گوشی P30 pro به بازار عرضه شده است تا استانداردهای جدیدی را برای صنعت تولید گوشی همراه تعریف کند.</p>', 0, NULL, '2019-09-08 13:34:51', '2020-06-05 10:39:57', 0, '0', 0, 0, 0, 'no', NULL, 0, 0, 0),
(24, 'ادو پرفیوم مردانه فراگرنس ورد مدل Suave حجم 100 میلی لیتر', 'Fragrance World Suave Eau De Parfum For men 100ml', 'ادو-پرفیوم-مردانه-فراگرنس-ورد-مدل-Suave-حجم-100-میلی-لیتر', 100000, 20000, 1, 0, NULL, 'ادو پرفیوم مردانه فراگرنس ورد مدل Suave حجم 100 میلی لیتر', 0, 172, 21, '1572609480.jpg', '<p>برند اماراتی و خوش&zwnj;نام فراگرنس ورد در سال 2014 میلادی محصولی خاص و متفاوت را روانه بازار ساخت. این محصول که Suave نام دارد، از همان زمان عرضه با استقبال بسیار خوبی مواجه شد و توانست به یکی از پرفروش&zwnj;ترین عطرهای این برند مبدل شود. Suave را تا حد زیادی می&zwnj;توان الهام گرفته از اثر مشهور کمپانی دیور و طراح شاخص این برند، فرانسوا دماکی، یعنی sauvage نامید. به&zwnj;محض اولین اسپری از Suave روی پوست و در محل نبض یا لباستان، بوی فلفل سیچوان، نارنج و عنبر را احساس خواهید کرد. فلفل سیچوان با تندی خود، انرژی زیادی را به شما و کسانی که در اطرافتان حضور دارند، منتقل می&zwnj;کند. نارنج که از خانواده&zwnj;ی مرکبات است، بوی شیرینی دارد و شادی و نشاط را با خودش به ارمغان می&zwnj;آورد. عنبر هم با عطر تندش باعث تند شدن این ترکیب عجیب&zwnj;وغریب سه&zwnj;گانه می&zwnj;شود. با توجه به برند، قدرت پخش بو و ماندگاری بالایی که Suave دارد، برای هدیه دادن به پدر، همسر یا دوستتان گزینه&zwnj;ای اصلی و مهم حساب می&zwnj;شود. پس اگر به&zwnj;دنبال عطری باکیفیت و مقرون به&zwnj;صرفه هستید، Suave می&zwnj;تواند انتخاب بسیار مناسبی برای شما باشد.</p>', 0, NULL, '2019-11-01 04:58:00', '2020-11-25 22:18:08', 1, '0', 0, 0, 0, 'no', NULL, 0, 0, 0),
(25, 'کاور 360 درجه مدل GKK مناسب برای گوشی موبایل سامسونگ Galaxy A30 / A21', 'a', 'کاور-360-درجه-مدل-GKK-مناسب-برای-گوشی-موبایل-سامسونگ-Galaxy-A30-A21', NULL, NULL, 1, 0, NULL, NULL, 0, 77, 1, '1585065540.jpg', '<p>&nbsp;کاور 360 درجه مدل GKK مناسب برای گوشی موبایل سامسونگ Galaxy A30 / A20 </p>', 0, NULL, '2020-03-24 11:29:00', '2020-03-25 11:33:33', -2, '0', 0, 0, 10, NULL, NULL, 0, 0, 0),
(26, 'کاور سامورایی مدل GC-019 مناسب برای گوشی موبایل سامسونگ Galaxy A50s/A30s/A50', 'null', 'کاور-سامورایی-مدل-GC-019-مناسب-برای-گوشی-موبایل-سامسونگ-Galaxy-A50s-A30s-A50', 48000, 12000, 1, 0, NULL, 'تست ۲', 0, 77, 1, '1585068379.jpg', '<p>&nbsp;کاور سامورایی مدل GC-019 مناسب برای گوشی موبایل سامسونگ Galaxy A50s/A30s/A50</p>', 0, NULL, '2020-03-24 12:16:19', '2020-05-09 07:53:31', 1, '0', 0, 0, 10, 'no', NULL, 1, 1, 0),
(27, 'لپ تاپ 13 اینچی ایسوس مدل ZenBook S13 UX392FN - A', 'ASUS ZenBook S13 UX392FN - A - 13 inch Laptop', 'لپ-تاپ-13-اینچی-ایسوس-مدل-ZenBook-S13-UX392FN-A', NULL, NULL, 1, 0, ',تست', 'تست', 0, 98, 1, '1585152702.jpg', '<p>لپ&zwnj;تاپ &laquo;ZenBook S13 UX392FN&raquo; از محصولات زیبا و شکیل &laquo;ایسوس&raquo; است&nbsp;که طراحی آن شبیه مدل&zwnj;های پیشین ذن&zwnj;بوک است. بدنه&zwnj;ی تمام&zwnj;فلزی و باریک آن برای رقابت با مک&zwnj;بوک اپل ساخته شده است. امکانات سخت&zwnj;افزاری بسیار خوب، استفاده از جدیدترین قطعات موجود در بازار از ویژگی&zwnj;های چشمگیر این لپ&zwnj;تاپ است. این دستگاه از پردازنده&zwnj;ی سری Core i7 با محدوده&zwnj;ی فرکانس 1.8 تا 4.6 گیگاهرتز بهره برده است. حافظه&zwnj;ی رم این دستگاه 16 گیگابایت است. حافظه&zwnj;ی متشکل از 512 گیگابایت حافظه&zwnj;ی SSD، سرعت بوت&zwnj;آپ دستگاه و همچنین انتقال اطلاعات را در زمان کوتاهی فراهم می&zwnj;کند. برای کارهای گرافیکی، پردازنده&zwnj;ی گرافیکی ساخت شرکت NVIDIA با مدل&nbsp;Geforce MX150&nbsp;و 2 گیگابایت حافظه&zwnj;ی اختصاصی استفاده شده که می&zwnj;توان گفت تقریبا از پس هر کاری برمی&zwnj;آید و برای کارهای گرافیکی سنگین و بازی&zwnj;ها مناسب است. صفحه&zwnj;نمایش 13.9اینچی با دقت Full HD تجربه&zwnj;ی تصویری فوق&zwnj;العاده و رنگ&zwnj;هایی زنده را به کاربر می&zwnj;دهد. باریک&zwnj;بودن این دستگاه می&zwnj;تواند توجیهی برای نبود درایو نوری باشد. بلندگوهای این لپ&zwnj;تاپ هم از تکنولوژی SonicMaster&zwnj; استفاده می&zwnj;کنند که صدای خوب و شفافی را به &zwnj;وجود می&zwnj;آورند. با توجه به قطعات سخت&zwnj;افزاری و امکانات، این دستگاه در رده&zwnj;ی مالتی&zwnj;مدیا قرار می&zwnj;گیرد. باتری لیتیوم&zwnj;پلیمری با ظرفیت 50 وات&zwnj;ساعت، شارژدهی این لپ&zwnj;تاپ را تامین می&zwnj;کند. از دیگر امکانات این دستگاه وجود پورت&zwnj;های نسل جدید اعم از USB Type-C است که امکان اتصال دستگاه&zwnj;های بیشتری را فراهم می&zwnj;کند. این لپ&zwnj;تاپ برای کسانی مناسب است که می&zwnj;خواهند در کنار یک لپ&zwnj;تاپ کارآمد و قوی، از زیبایی و طراحی منحصربه&zwnj;فرد آن هم لذت ببرند.</p>', 0, NULL, '2020-03-25 05:09:04', '2020-05-03 12:39:15', -3, '0', 0, 0, 10, 'no', NULL, 0, 0, 0),
(28, 'لپ تاپ 15 اینچی ایسوس مدل VivoBook R564FJ-P', 'ASUS VivoBook R564FJ-P 15 inch Laptop', 'لپ-تاپ-15-اینچی-ایسوس-مدل-VivoBook-R564FJ-P', 111, 0, 1, 0, NULL, 'لپ تاپ 15 اینچی ایسوس مدل VivoBook R564FJ-P', 0, 98, 22, '1589011103.jpg', '<p>لپ&zwnj;تاپ&zwnj;های سری R &laquo;ایسوس&raquo; با توجه به کارایی و کیفیت، جزو پرطرفدارترین محصولات این شرکت محسوب می&zwnj;شوند این محصولات معمولا با مشخصات سخت&zwnj;افزاری مختلف و در طرح&zwnj;ها و رنگ&zwnj;بندی&zwnj;های متنوعی عرضه می&zwnj;شوند تا پاسخ&zwnj;گوی نیاز کاربران مختلف باشند یکی از این محصولات &laquo;R564FJ&raquo; است که مثل مدل&zwnj;های قبلی تماما از پلاستیک ساخته شده است؛ اما کیفیت و استحکام آن حس یک بدنه&zwnj;ی آلومینیومی را القا می&zwnj;کند با وجود ضخامت بدنه&zwnj;ی کم، تنها 1/75 کیلوگرم وزن دارد و به همین دلیل برای حمل&zwnj;ونقل دائمی گزینه&zwnj;ی مناسبی است از صفحه&zwnj;نمایش ۱۵/۶ اینچ و با کیفیت FullHD و روکش مات در ساخت آن استفاده شده است همان&zwnj;طورکه می&zwnj;دانید روکش مات بعد از مدتی استفاده چشم را خسته نمی&zwnj;کند؛ در مدل R564 از تکنولوژی&zwnj;های اختصاصی ایسوس مثل Splendid و Eye Care استفاده شده است که باعث می&zwnj;شود چشم خسته نشود بلندگوهای این محصول از سری SonicMaster است که می&zwnj;توان تجربه&zwnj;ی صدایی باکیفیت و واضح را از آن انتظار داشت کیبوردهای جزیره&zwnj;ای با کلیدهای بزرگ و پد لمسی یک&zwnj;تکه با حساسیت زیاد و امکان استفاده از فرمان&zwnj;های لمسی، باعث شده است این محصول یک ابزار کارآمد برای انجام تمام کارهای روزمره باشد. رابط&zwnj;های کاربری و پورت&zwnj;ها هم از تنوع خوبی برخوردارند و علاوه&zwnj;بر پورت&zwnj;های معمولی مثل USB 3, USB 2 یک پورت جدید هم دارد این مدل مجهز به پردازنده&zwnj;ی مرکزی INTEL CORE I7 8565U، پردازشگر گرافیکی GFORCE NVIDIA MX230 با 2 گیگابایت حافظه&zwnj;ی گرافیکی مجزا، 12 گیگابایت حافظه&zwnj;ی رم و 1000 گیگابایت حافظه&zwnj;ی داخلی همراه 128 گیگابایت حافظه SSD است که برای کاربری عمومی مناسب است .</p>', 0, NULL, '2020-05-09 03:28:23', '2020-07-08 16:18:25', 0, '0', 0, 0, 0, 'no', NULL, 1, 0, 0),
(29, 'پیراهن مردانه فرد مدل P.Baz.289', NULL, 'پیراهن-مردانه-فرد-مدل-P.Baz.289', 69000, 80000, 1, 0, ',پیراهن', 'پیراهن مردانه فرد مدل P.Baz.289', 0, 193, 20, '1589965593.jpg', NULL, 0, NULL, '2020-05-20 04:36:33', '2020-09-04 15:26:20', 1, '0', 0, 0, 0, 'no', NULL, 1, 0, 0),
(30, 'کامپیوتر همه کاره 27 اینچی اپل مدل iMac MRR12 2019 با صفحه نمایش رتینا 5K', NULL, 'کامپیوتر-همه-کاره-27-اینچی-اپل-مدل-iMac-MRR12-2019-با-صفحه-نمایش-رتینا-5K', 30000000, 0, 1, 0, NULL, 'کامپیوتر همه کاره 27 اینچی اپل مدل iMac MRR12 2019 با صفحه نمایش رتینا 5K', 0, 115, 4, '1590073475.jpg', NULL, 0, NULL, '2020-05-21 10:34:35', '2021-01-22 08:26:27', 1, '0', 0, 0, 0, 'no', NULL, 0, 0, 0),
(31, 'پیراهن مردانه کد M02247', NULL, 'پیراهن-مردانه-کد-M02247', 55000, 23000, 1, 0, NULL, 'پیراهن مردانه کد M02247', 0, 193, 20, '1590078664.jpg', '<p>به منظور اینکه انتخاب بهتری داشته باشید لطفا راهنمای سایزبندی را در عکس آخر مشاهده، با یک لباس خود مقایسه و سپس سایز خود را انتخاب نمایید.</p>', 0, NULL, '2020-05-21 12:01:04', '2021-01-21 05:03:28', 1, '0', 0, 0, 10, 'no', NULL, 2, 0, 0),
(32, 'تلویزیون ال سی دی سونی مدل KDL-49W800G سایز 49 اینچ', 'Sony KDL-49W800G LCD TV 49 Inch', 'تلویزیون-ال-سی-دی-سونی-مدل-KDL-49W800G-سایز-49-اینچ', 19000000, 1000000, 1, 0, ',تلویزیون', 'تلویزیون ال سی دی سونی مدل KDL-49W800G سایز 49 اینچ', 0, 205, 1, '1596681008.jpg', '<p>تلویزیون ال سی دی سونی مدل KDL-49W800G&nbsp;سایز 49 اینچ تصویر را با کیفیت&nbsp;Full HD &nbsp;نمایش می&zwnj;دهد و قابلیت&zwnj;هایی دارد که به بهتر شدن کیفیت تصویر کمک می&zwnj;کنند. این تلویزیون به فناوری&nbsp;X-Reality Pro&nbsp;مجهز است. این فناوری در واقع برای بهبود تصاویر کیفیت پایین برای نمایش روی صفحه&zwnj; نمایشی با روزلوشن بالا طراحی شده است. فناوری دیگر&nbsp;Dynamic Contrast Enhancer&nbsp;نام دارد که کنتراست تصویر را بهبود بخشیده و باعث می&zwnj;شود تصاویر واقعی&zwnj;تر به نظر برسند. دو فناوری دیگر هم با عناوین&nbsp;Motion Flow XR 200&nbsp;وLive Colour&nbsp; برای بهبود حرکت اجسام در تصویر و پالت رنگ تلویزیون طراحی شده&zwnj;اند. این تلویزیون طراحی بسیار زیبایی هم دارد و می&zwnj;تواند افزونه&zwnj;ی مناسبی برای دکوراسیون خانه باشد. سیستم صوتی مدل KDL-49W800G&nbsp;از نوع دو کاناله است و توان خروجی آن 10 وات است. باتوجه به سایز این مدل و این که برای سالن&zwnj;های کوچک و متوسط مناسب است، این سیستم صوتی می&zwnj;تواند نیازهای کاربر را به خوبی برطرف کند. البته سیستم صوتی دستگاه از&nbsp;Dolby Digital،&nbsp;Dolby Digital Plus،&nbsp;Dolby&nbsp;Plus پشتیبانی می&zwnj;کند. مدل&nbsp; KDL-49W800G به درگاه&zwnj;های&nbsp;USB،&nbsp;HDMI و کامپوزیت مجهز است و قابلیت اتصال به&nbsp;Wifi&nbsp;نیز دارد.</p>', 0, NULL, '2020-08-05 21:59:58', '2020-11-17 18:52:30', 1, '0', 0, 0, 0, 'no', NULL, 2, 0, 11.2),
(33, 'یخچال و فریزر دوقلوی سامسونگ مدل RR30PN-RZ30PN', 'Samsung RR30PN-RZ30PN Refrigerator', 'یخچال-و-فریزر-دوقلوی-سامسونگ-مدل-RR30PN-RZ30PN', 45300000, 0, 1, 0, ',یخچال و فریزر', 'یخچال و فریزر دوقلوی سامسونگ مدل RR30PN-RZ30PN', 0, 209, 1, '1597070612.jpg', '<p>یخچال&zwnj; و فریزر دوقلوی &laquo;سامسونگ&raquo; مدل &laquo;RR30PN-RZ30PN&raquo; مجموعه&zwnj;ای کامل و کارآمد به&zwnj;شمار می&zwnj;رود&zwj;. این مجموعه شامل یک یخچال و یک فریزر است که در کنار هم قرار گرفته&zwnj;اند و نیازهای یک خانواده&zwnj;ی متوسط تا بزرگ را مرتفع می&zwnj;سازند؛ البته می&zwnj;توان هریک از این دو را به&zwnj;تنهایی نیز استفاده کرد و لزومی به کنار هم قرارگرفتن آن&zwnj;ها نیست. فریزر این مدل دارای کشوهای بزرگ و کوچک و طبقات مختلف است تا نگهداری و انجماد موادغذایی به&zwnj;راحتی و به&zwnj;سرعت انجام گیرد و دسترسی به آن&zwnj;ها نیز ساده باشد. روی درِ فریزر نیز طبقات کوچکی در نظر گرفته شده است تا موادغذایی یا بسته&zwnj;های کوچک در آن&zwnj;ها جای گیرند و منجمد شوند. در قسمت یخچال علاوه&zwnj;بر طبقات و کشوها محفظه&zwnj;ی Fresh Zone هم در نظر گرفته شده است تا در دمای مناسب اقدام به سردکردن مواد غذایی، میوه و سبزیجات کند. روی در، طبقات متعددی تعبیه شده است. صدای دستگاه کم است و اصلا شنیده نمی&zwnj;شود. نمایشگر و دکمه&zwnj;های کنترلی روی در نصب شده&zwnj;اند. دستگیره&zwnj;ها ساده و به صورت لوله&zwnj;ای طراحی شده&zwnj;اند. مصرف انرژی این دستگاه&zwnj;ها کم بوده و آن&zwnj;ها را در رده&zwnj;ی مصرف انرژی A+ قرار داده است. روی در یخچال هم یک آبریز بیرونی نصب شده است و به شرط پرکردن منبع آب داخلی توسط کاربر، می&zwnj;توان بدون بازکردن در به آب خنک دسترسی داشت. سامسونگ از برندهای شناخته&zwnj;شده&zwnj;ی محصولات و لوازم خانگی برقی است که با ارائه&zwnj;ی دستگاه&zwnj;های باکیفیت و همچنین خدمات پس از فروش مناسب، رضایت مشتریان را جلب کرده و طرفداران زیادی در سراسر جهان دارد.</p>\r\n\r\n<p>&nbsp;</p>', 0, NULL, '2020-08-10 10:13:33', '2020-08-16 11:46:58', 1, '0', 0, 0, 0, 'no', NULL, 1, 0, 110),
(34, 'تلویزیون ال ای دی ایکس ویژن مدل 55XT540 سایز 55 اینچ', 'X.Vision 55XT540 LED TV 55 Inch', 'تلویزیون-ال-ای-دی-ایکس-ویژن-مدل-55XT540-سایز-55-اینچ', NULL, NULL, 1, 0, ',تلویزیون,سامسونگ', 'تلویزیون ال ای دی ایکس ویژن مدل 55XT540 سایز 55 اینچ', 0, 73, 5, '1607209945.jpg', '<p>تلویزیون هوشمند &laquo;ایکس&zwnj;ویژن&raquo; مدل &laquo;55XT540 &raquo; محصولی بادوام و خوش&zwnj;ساخت از این برند است که امکانات متعددی را در اختیار کاربرانش می&zwnj;گذارد. کیفیت&zwnj;تصویر این تلویزیون Full HD است و تصاویر را با وضوح و شفافیت بسیار خوبی نمایش می&zwnj;دهد. زاویه&zwnj;دید وسیعی دارد و امکان تماشای صفحه&zwnj;نمایش را از محدوده&zwnj; وسیعی فراهم می&zwnj;کند. نسبت تصویر آن 16:9 است و تصویر را با ابعاد متناسبی به پخش می&zwnj;گذارد. سیستم&zwnj;صوتی تلویزیون 55XT540 دوکاناله است و با کمک دو بلندگوی 10واتی، در مجموع 20 وات صدا تولید می&zwnj;کند. شرکت سازنده برای این مدل، دو عدد درگاه USB در نظر گرفته شده است. با استفاده از این 2 پورت می&zwnj;توانید فلش&zwnj;مموری و هارد اکسترنال خود را به تلویزیون متصل کرده و از فایل&zwnj;های موجود در آن&zwnj;ها استفاده کنید. برای اتصال پخش&zwnj;کننده&zwnj;ها به این تلویزیون می&zwnj;توانید از بین درگاه HDMI و کامپوزیت یکی را انتخاب کنید. درگاه HDMI قادر است تصاویر را با کیفیت Full HD به صفحه&zwnj;نمایش منتقل کند. از دیگر ویژگی&zwnj;های جالب این مدل، می&zwnj;توان به قابلیت ماشین زمان (Time Shift) اشاره کرد؛ کارایی این قابلیت به این صورت است که با ذخیره&zwnj;کردن برنامه&zwnj; درحال&zwnj;پخش، می&zwnj;توانید به لحظات قبلی بازگردید. فرمت&zwnj;های تصویری قابل&zwnj;پشتیبانی این مدل بسیار متنوع است و به شما کمک می&zwnj;کند که به&zwnj;راحتی، فایل&zwnj;های دلخواه خود را به&zwnj;وسیله&zwnj;ی درگاه ارتباطی موردنظر پخش &zwnj;کنید. این تلویزیون به&zwnj;همراه یک عدد ریموت&zwnj;کنترل ارائه می&zwnj;شود که کارایی بسیار ساده&zwnj;ای دارد</p>', 0, NULL, '2020-12-05 19:42:25', '2020-12-05 21:41:15', 0, '0', 0, 0, 0, NULL, NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_color`
--

CREATE TABLE `product_color` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `color_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_color`
--

INSERT INTO `product_color` (`id`, `color_id`, `product_id`, `cat_id`, `created_at`, `updated_at`) VALUES
(30, 2, 10, 0, NULL, NULL),
(31, 3, 10, 0, NULL, NULL),
(32, 6, 10, 0, NULL, NULL),
(42, 2, 11, 0, NULL, NULL),
(170, 2, 13, 0, NULL, NULL),
(171, 6, 13, 0, NULL, NULL),
(210, 2, 8, 77, NULL, NULL),
(211, 3, 8, 77, NULL, NULL),
(212, 4, 8, 77, NULL, NULL),
(214, 3, 23, 87, NULL, NULL),
(217, 5, 20, 98, NULL, NULL),
(218, 7, 20, 98, NULL, NULL),
(251, 1, 17, 87, NULL, NULL),
(252, 2, 17, 87, NULL, NULL),
(261, 2, 18, 98, NULL, NULL),
(262, 7, 18, 98, NULL, NULL),
(263, 5, 12, 87, NULL, NULL),
(264, 7, 12, 87, NULL, NULL),
(271, 2, 25, 77, NULL, NULL),
(285, 3, 19, 87, NULL, NULL),
(286, 6, 19, 87, NULL, NULL),
(287, 7, 19, 87, NULL, NULL),
(303, 1, 2, 87, NULL, NULL),
(304, 2, 2, 87, NULL, NULL),
(305, 3, 2, 87, NULL, NULL),
(307, 5, 27, 98, NULL, NULL),
(320, 1, 26, 77, NULL, NULL),
(322, 1, 30, 115, '2020-05-21 16:08:35', '2020-05-21 16:08:35'),
(323, 5, 30, 115, '2020-05-21 16:13:26', '2020-05-21 16:13:26'),
(324, 1, 24, 172, '2020-07-20 21:26:54', '2020-07-20 21:26:54'),
(325, 5, 33, 209, '2020-08-10 14:44:09', '2020-08-10 14:44:09');

-- --------------------------------------------------------

--
-- Table structure for table `product_gallery`
--

CREATE TABLE `product_gallery` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_gallery`
--

INSERT INTO `product_gallery` (`id`, `product_id`, `image_url`, `position`, `created_at`, `updated_at`) VALUES
(47, 2, 'image_2121549728411.jpg', 1, NULL, NULL),
(48, 2, 'image_2691549728411.jpg', 6, NULL, NULL),
(49, 2, 'image_2651549728411.jpg', 2, NULL, NULL),
(50, 2, 'image_2181549728411.jpg', 3, NULL, NULL),
(51, 2, 'image_2141549728411.jpg', 5, NULL, NULL),
(52, 2, 'image_2251549733835.jpg', 4, NULL, NULL),
(54, 1, 'image_171549734953.jpg', 2, NULL, NULL),
(55, 1, 'image_1671549734953.jpg', 1, NULL, NULL),
(56, 1, 'image_1531549734953.jpg', 4, NULL, NULL),
(57, 1, 'image_1961549734953.jpg', 3, NULL, NULL),
(58, 10, 'image_1081552162634.jpg', 1, NULL, NULL),
(59, 10, 'image_10461552162636.jpg', 2, NULL, NULL),
(60, 10, 'image_1091552162637.jpg', 3, NULL, NULL),
(61, 10, 'image_10581552162639.jpg', 4, NULL, NULL),
(62, 10, 'image_10641552162640.jpg', 5, NULL, NULL),
(63, 10, 'image_10371552162642.jpg', 6, NULL, NULL),
(64, 10, 'image_10741552162646.jpg', 7, NULL, NULL),
(65, 10, 'image_10461552162662.jpg', 8, NULL, NULL),
(66, 5, 'image_521552162814.jpg', 1, NULL, NULL),
(67, 5, 'image_5561552162815.jpg', 2, NULL, NULL),
(68, 5, 'image_5651552162816.jpg', 3, NULL, NULL),
(69, 5, 'image_5661552162818.jpg', 4, NULL, NULL),
(70, 5, 'image_581552162820.jpg', 5, NULL, NULL),
(71, 5, 'image_5221552162821.jpg', 6, NULL, NULL),
(72, 11, 'image_11981552236298.jpg', 1, NULL, NULL),
(73, 11, 'image_11151552236300.jpg', 2, NULL, NULL),
(74, 11, 'image_11351552236303.jpg', 3, NULL, NULL),
(75, 11, 'image_11741552236305.jpg', 4, NULL, NULL),
(76, 9, 'image_9581562230398.jpg', 1, NULL, NULL),
(77, 9, 'image_9241562230424.jpg', 3, NULL, NULL),
(78, 9, 'image_9521562230424.jpg', 2, NULL, NULL),
(79, 9, 'image_9631562230424.jpg', 4, NULL, NULL),
(80, 12, 'image_12781562400089.jpg', 1, NULL, NULL),
(81, 12, 'image_12661562400092.jpg', 2, NULL, NULL),
(82, 12, 'image_12171562400121.jpg', 4, NULL, NULL),
(83, 12, 'image_12281562400140.jpg', 3, NULL, NULL),
(84, 13, 'image_13201562413326.jpg', 1, NULL, NULL),
(85, 13, 'image_131001562413326.jpg', 2, NULL, NULL),
(86, 13, 'image_13501562413326.jpg', 4, NULL, NULL),
(87, 13, 'image_13591562413327.jpg', 3, NULL, NULL),
(88, 14, 'image_14881562414848.jpg', 1, NULL, NULL),
(89, 14, 'image_1421562414849.jpg', 2, NULL, NULL),
(90, 14, 'image_14771562414851.jpg', 3, NULL, NULL),
(91, 23, 'image_23371567982475.jpg', 1, NULL, NULL),
(92, 23, 'image_23401567982481.jpg', 2, NULL, NULL),
(93, 23, 'image_23221567982481.jpg', 3, NULL, NULL),
(95, 23, 'image_2321567982501.jpg', 4, NULL, NULL),
(103, 20, 'image_20721569700047.jpg', 1, NULL, NULL),
(104, 20, 'image_20781569700471.jpg', 2, NULL, NULL),
(106, 20, 'image_20831569700593.jpg', 3, NULL, NULL),
(107, 24, 'image_24751571315101.jpg', 1, NULL, NULL),
(108, 24, 'image_24641571315104.jpg', 2, NULL, NULL),
(109, 24, 'image_24951571315106.jpg', 3, NULL, NULL),
(111, 19, 'image_19221585497219.jpg', 1, NULL, NULL),
(112, 19, 'image_19821585497433.jpg', 2, NULL, NULL),
(115, 28, 'image_28441589103218.jpg', 1, NULL, NULL),
(116, 28, 'image_28651589103218.jpg', 2, NULL, NULL),
(117, 28, 'image_28341589103218.jpg', 3, NULL, NULL),
(120, 34, 'image_34301607218819.jpg', 1, NULL, NULL),
(121, 34, 'image_3471607218819.jpg', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_price`
--

CREATE TABLE `product_price` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `warranty_id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `Year` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `mount` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `day` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_price`
--

INSERT INTO `product_price` (`id`, `warranty_id`, `time`, `Year`, `mount`, `day`, `price`, `product_id`, `color_id`, `created_at`, `updated_at`) VALUES
(1, 40, 1571669677, '1398', '7', '29', 11800000, 2, 3, NULL, NULL),
(2, 40, 1571752281, '1398', '7', '30', 12800000, 2, 3, NULL, NULL),
(3, 31, 1571752300, '1398', '7', '30', 30889000, 20, 5, NULL, NULL),
(4, 13, 1571846521, '1398', '8', '1', 33000, 13, 6, NULL, NULL),
(5, 28, 1571846556, '1398', '8', '1', 12300000, 18, 7, NULL, NULL),
(6, 5, 1571846579, '1398', '8', '1', 12080000, 2, 2, NULL, NULL),
(7, 29, 1571846619, '1398', '8', '1', 13000000, 18, 2, NULL, NULL),
(8, 13, 1571937330, '1398', '8', '2', 53000, 13, 6, NULL, NULL),
(9, 5, 1571937332, '1398', '8', '2', 15080000, 2, 2, NULL, NULL),
(10, 28, 1571937334, '1398', '8', '2', 12300000, 18, 7, NULL, NULL),
(11, 29, 1571937342, '1398', '8', '2', 15000000, 18, 2, NULL, NULL),
(12, 40, 1571937347, '1398', '8', '2', 14800000, 2, 3, NULL, NULL),
(13, 31, 1571937367, '1398', '8', '2', 36889000, 20, 5, NULL, NULL),
(14, 28, 1572264238, '1398', '8', '6', 12300000, 18, 7, NULL, NULL),
(15, 28, 1575122932, '1398', '9', '9', 12300000, 18, 7, NULL, NULL),
(16, 40, 1572513823, '1398', '8', '9', 14800000, 2, 3, NULL, NULL),
(17, 30, 1572541680, '1398', '8', '9', 12500000, 18, 2, NULL, NULL),
(18, 11, 1579194779, '1398', '10', '26', 13000000, 12, 5, NULL, NULL),
(19, 40, 1579418684, '1398', '10', '29', 14800000, 2, 3, NULL, NULL),
(20, 5, 1579418837, '1398', '10', '29', 15080000, 2, 2, NULL, NULL),
(21, 28, 1579798632, '1398', '11', '3', 14300000, 18, 7, NULL, NULL),
(22, 30, 1579798632, '1398', '11', '3', 14500000, 18, 2, NULL, NULL),
(23, 5, 1579798747, '1398', '11', '3', 13080000, 2, 2, NULL, NULL),
(28, 0, 1579984200, '1398', '11', '6', 0, 2, 3, NULL, '2020-02-01 09:33:05'),
(29, 7, 1580329800, '1398', '11', '10', 15000000, 2, 3, NULL, NULL),
(30, 40, 1580549990, '1398', '11', '12', 14800000, 2, 3, NULL, NULL),
(31, 0, 1580551070, '1398', '11', '12', 0, 2, 2, NULL, '2020-02-01 09:57:56'),
(32, 7, 1580739413, '1398', '11', '14', 13000000, 2, 3, NULL, NULL),
(33, 36, 1580739426, '1398', '11', '14', 15000000, 12, 5, NULL, NULL),
(34, 28, 1580739450, '1398', '11', '14', 13300000, 18, 7, NULL, NULL),
(36, 38, 1580746509, '1398', '11', '14', 15100000, 2, 2, NULL, NULL),
(37, 7, 1582215865, '1398', '12', '1', 15000000, 2, 3, NULL, NULL),
(38, 36, 1582215865, '1398', '12', '1', 16000000, 12, 5, NULL, NULL),
(39, 28, 1582215865, '1398', '12', '1', 14300000, 18, 7, NULL, NULL),
(40, 44, 1583774966, '1398', '12', '19', 12500000, 12, 7, NULL, NULL),
(41, 47, 1585292947, '1399', '1', '8', 50000, 26, 1, NULL, '2020-03-27 15:44:53'),
(42, 48, 1585408717, '1399', '1', '9', 48000, 26, 1, NULL, NULL),
(43, 53, 1585410175, '1399', '1', '9', 100000, 24, 0, NULL, '2020-03-28 15:49:19'),
(44, 47, 1585665175, '1399', '1', '12', 50000, 26, 1, NULL, NULL),
(45, 7, 1586714360, '1399', '1', '24', 13000000, 2, 3, NULL, NULL),
(46, 7, 1587573654, '1399', '2', '3', 15000000, 2, 3, NULL, NULL),
(47, 36, 1588261540, '1399', '2', '11', 16000000, 12, 5, NULL, NULL),
(48, 13, 1588342798, '1399', '2', '12', 53000, 13, 6, NULL, NULL),
(49, 36, 1588356276, '1399', '2', '12', 15000000, 12, 5, NULL, NULL),
(50, 31, 1588356375, '1399', '2', '12', 34889000, 20, 5, NULL, NULL),
(51, 40, 1588602653, '1399', '2', '15', 14800000, 2, 3, NULL, NULL),
(52, 44, 1588602711, '1399', '2', '15', 12000000, 12, 7, NULL, NULL),
(53, 48, 1588611713, '1399', '2', '15', 48000, 26, 1, NULL, NULL),
(54, 44, 1588950120, '1399', '2', '19', 12500000, 12, 7, NULL, NULL),
(55, 31, 1588955074, '1399', '2', '19', 34950000, 20, 5, NULL, NULL),
(56, 48, 1589010800, '1399', '2', '20', 48000, 26, 1, NULL, '2020-05-09 07:53:27'),
(57, 36, 1589697907, '1399', '2', '28', 16000000, 12, 5, NULL, NULL),
(58, 31, 1589697907, '1399', '2', '28', 36889000, 20, 5, NULL, NULL),
(59, 7, 1589697974, '1399', '2', '28', 13000000, 2, 3, NULL, NULL),
(60, 16, 1589698117, '1399', '2', '28', 2000000, 10, 2, NULL, NULL),
(61, 55, 1589966926, '1399', '2', '31', 69000, 29, 10, NULL, NULL),
(62, 56, 1590045935, '1399', '3', '1', 75000, 29, 13, NULL, NULL),
(63, 60, 1590077065, '1399', '3', '1', 30000000, 30, 5, NULL, '2020-05-21 16:05:27'),
(64, 60, 1590077133, '1399', '3', '1', 30000000, 30, 1, NULL, '2020-05-21 16:08:27'),
(65, 62, 1590080010, '1399', '3', '1', 51000, 31, 10, NULL, NULL),
(66, 7, 1590156983, '1399', '3', '2', 15000000, 2, 3, NULL, NULL),
(67, 16, 1590156983, '1399', '3', '2', 2199000, 10, 2, NULL, NULL),
(68, 7, 1590780944, '1399', '3', '10', 13000000, 2, 3, NULL, NULL),
(69, 31, 1590781016, '1399', '3', '10', 34889000, 20, 5, NULL, NULL),
(70, 61, 1591128325, '1399', '3', '14', 55000, 31, 10, NULL, NULL),
(71, 7, 1591948915, '1399', '3', '23', 13000000, 2, 3, NULL, NULL),
(72, 31, 1591948915, '1399', '3', '23', 36889000, 20, 5, NULL, NULL),
(73, 36, 1592026802, '1399', '3', '24', 13000000, 12, 5, NULL, NULL),
(74, 7, 1592666877, '1399', '3', '31', 15000000, 2, 3, NULL, NULL),
(75, 36, 1592666877, '1399', '3', '31', 16000000, 12, 5, NULL, NULL),
(76, 31, 1594058062, '1399', '4', '16', 34889000, 20, 5, NULL, NULL),
(77, 61, 1594135574, '1399', '4', '17', 55000, 31, 10, NULL, NULL),
(78, 61, 1594177224, '1399', '4', '18', 55000, 31, 10, NULL, NULL),
(79, 0, 1594225095, '1399', '4', '18', 0, 28, 0, NULL, '2020-07-08 16:18:22'),
(80, 40, 1594787126, '1399', '4', '25', 14900000, 2, 3, NULL, NULL),
(81, 53, 1595280414, '1399', '4', '31', 100000, 24, 1, NULL, NULL),
(82, 12, 1595954507, '1399', '5', '7', 20000, 8, 2, NULL, NULL),
(83, 12, 1595989434, '1399', '5', '8', 18000, 8, 2, NULL, NULL),
(84, 64, 1596682781, '1399', '5', '16', 19000000, 32, 0, NULL, NULL),
(85, 65, 1596767734, '1399', '5', '17', 19000000, 32, 0, NULL, NULL),
(86, 66, 1597070649, '1399', '5', '20', 45300000, 33, 5, NULL, NULL),
(87, 31, 1598546757, '1399', '6', '6', 36889000, 20, 5, NULL, NULL),
(88, 7, 1598546807, '1399', '6', '6', 13000000, 2, 3, NULL, NULL),
(89, 29, 1598546827, '1399', '6', '6', 13000000, 18, 2, NULL, NULL),
(90, 36, 1598550476, '1399', '6', '6', 13000000, 12, 5, NULL, NULL),
(91, 56, 1598550486, '1399', '6', '6', 75000, 29, 13, NULL, NULL),
(92, 15, 1598550498, '1399', '6', '6', 9079000, 9, 0, NULL, NULL),
(93, 36, 1598652217, '1399', '6', '8', 12900000, 12, 5, NULL, NULL),
(94, 7, 1599233180, '1399', '6', '14', 15000000, 2, 3, NULL, NULL),
(95, 29, 1599233180, '1399', '6', '14', 15000000, 18, 2, NULL, NULL),
(96, 56, 1599233180, '1399', '6', '14', 75000, 29, 13, NULL, NULL),
(97, 65, 1599233278, '1399', '6', '14', 19500000, 32, 0, NULL, NULL),
(98, 11, 1599405349, '1399', '6', '16', 13000000, 12, 5, NULL, NULL),
(99, 15, 1599405349, '1399', '6', '16', 10079000, 9, 0, NULL, NULL),
(100, 7, 1599405395, '1399', '6', '16', 14000000, 2, 3, NULL, NULL),
(101, 29, 1599405407, '1399', '6', '16', 14000000, 18, 2, NULL, NULL),
(102, 53, 1599405418, '1399', '6', '16', 100000, 24, 1, NULL, NULL),
(103, 65, 1604792246, '1399', '8', '18', 19200000, 32, 0, NULL, NULL),
(104, 65, 1604872995, '1399', '8', '19', 19100000, 32, 0, NULL, NULL),
(105, 7, 1605134606, '1399', '8', '22', 14000000, 2, 3, NULL, NULL),
(106, 36, 1605134891, '1399', '8', '22', 16000000, 12, 5, NULL, NULL),
(107, 65, 1605651750, '1399', '8', '28', 19000000, 32, 0, NULL, NULL),
(108, 7, 1606342688, '1399', '9', '6', 14000000, 2, 3, NULL, NULL),
(109, 29, 1606342688, '1399', '9', '6', 13000000, 18, 2, NULL, NULL),
(110, 53, 1606342688, '1399', '9', '6', 100000, 24, 1, NULL, NULL),
(111, 11, 1606342688, '1399', '9', '6', 13000000, 12, 5, NULL, NULL),
(112, 60, 1606342784, '1399', '9', '6', 27000000, 30, 5, NULL, NULL),
(113, 15, 1606342812, '1399', '9', '6', 9079000, 9, 0, NULL, NULL),
(114, 26, 1606343509, '1399', '9', '6', 10480000, 19, 6, NULL, NULL),
(115, 7, 1606443799, '1399', '9', '7', 13900000, 2, 3, NULL, NULL),
(116, 7, 1607019936, '1399', '9', '13', 13900000, 2, 3, NULL, NULL),
(117, 29, 1607019942, '1399', '9', '13', 13000000, 18, 2, NULL, NULL),
(118, 36, 1607019948, '1399', '9', '13', 13500000, 12, 5, NULL, NULL),
(119, 61, 1611218008, '1399', '11', '2', 55000, 31, 10, NULL, NULL),
(120, 7, 1611303986, '1399', '11', '3', 15000000, 2, 3, NULL, NULL),
(121, 29, 1611303987, '1399', '11', '3', 15000000, 18, 2, NULL, NULL),
(122, 36, 1611303987, '1399', '11', '3', 16000000, 12, 5, NULL, NULL),
(123, 60, 1611303987, '1399', '11', '3', 30000000, 30, 5, NULL, NULL),
(124, 15, 1611303987, '1399', '11', '3', 10079000, 9, 0, NULL, NULL),
(125, 26, 1611303987, '1399', '11', '3', 10480000, 19, 6, NULL, NULL),
(126, 7, 1611415927, '1399', '11', '4', 14000000, 2, 3, NULL, NULL),
(127, 36, 1611415941, '1399', '11', '4', 15000000, 12, 5, NULL, NULL),
(128, 29, 1611415956, '1399', '11', '4', 14000000, 18, 2, NULL, NULL),
(129, 10, 1611415977, '1399', '11', '4', 6099000, 11, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_sale_statistics`
--

CREATE TABLE `product_sale_statistics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `month` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `day` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `commision` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_sale_statistics`
--

INSERT INTO `product_sale_statistics` (`id`, `year`, `month`, `day`, `price`, `product_id`, `commision`, `created_at`, `updated_at`) VALUES
(34, '1398', '12', '24', 14800000, 2, 740000, NULL, NULL),
(35, '1398', '12', '24', 54000, 8, 0, NULL, NULL),
(36, '1398', '12', '24', 26000000, 18, 520000, NULL, NULL),
(37, '1399', '1', '11', 388000, 26, 0, NULL, NULL),
(38, '1399', '1', '12', 400000, 26, 0, NULL, NULL),
(39, '1399', '2', '21', 96000, 26, 0, NULL, NULL),
(40, '1399', '2', '28', 96000, 26, 0, NULL, NULL),
(41, '1399', '4', '18', 110000, 31, 0, NULL, NULL),
(42, '1399', '4', '18', 30000000, 30, 0, NULL, NULL),
(43, '1399', '4', '26', 30000000, 30, 0, NULL, NULL),
(44, '1399', '6', '6', 110000, 31, 0, NULL, NULL),
(45, '1399', '6', '6', 60000000, 30, 0, NULL, NULL),
(46, '1399', '8', '27', 20960000, 19, 0, NULL, NULL),
(47, '1399', '8', '27', 28000000, 2, 0, NULL, NULL),
(48, '1399', '8', '27', 90600000, 33, 0, NULL, NULL),
(49, '1399', '8', '27', 38200000, 32, 0, NULL, NULL),
(50, '1399', '9', '6', 20960000, 19, 0, NULL, NULL),
(51, '1399', '9', '6', 28000000, 2, 0, NULL, NULL),
(52, '1399', '9', '6', 90600000, 33, 0, NULL, NULL),
(53, '1399', '9', '6', 38200000, 32, 0, NULL, NULL),
(54, '1399', '11', '22', 38000000, 32, 0, NULL, NULL),
(55, '1399', '11', '22', 28000000, 2, 0, NULL, NULL),
(56, '1399', '11', '22', 12198000, 11, 0, NULL, NULL),
(57, '1399', '11', '22', 26000000, 18, 520000, NULL, NULL),
(58, '1399', '11', '22', 26000000, 12, 0, NULL, NULL),
(59, '1399', '11', '23', 19000000, 32, 0, NULL, NULL),
(60, '1399', '11', '23', 14000000, 2, 0, NULL, NULL),
(61, '1399', '11', '23', 6099000, 11, 0, NULL, NULL),
(62, '1399', '11', '23', 13000000, 18, 260000, NULL, NULL),
(63, '1399', '11', '23', 13000000, 12, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_warranties`
--

CREATE TABLE `product_warranties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `warranty_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL DEFAULT 0,
  `price1` int(11) NOT NULL,
  `price2` int(11) NOT NULL,
  `send_time` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL DEFAULT 0,
  `product_number` int(11) DEFAULT NULL,
  `product_number_cart` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `show_index` smallint(6) NOT NULL DEFAULT 0,
  `offers` smallint(6) NOT NULL DEFAULT 0,
  `offers_first_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `offers_last_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `offers_first_time` int(11) NOT NULL DEFAULT 0,
  `offers_last_time` int(11) NOT NULL DEFAULT 0,
  `status` smallint(6) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_warranties`
--

INSERT INTO `product_warranties` (`id`, `product_id`, `warranty_id`, `color_id`, `price1`, `price2`, `send_time`, `seller_id`, `product_number`, `product_number_cart`, `deleted_at`, `created_at`, `updated_at`, `show_index`, `offers`, `offers_first_date`, `offers_last_date`, `offers_first_time`, `offers_last_time`, `status`) VALUES
(5, 2, 1, 2, 15480000, 13080000, 1, 0, 20, 5, '2020-02-01 06:27:56', NULL, '2020-02-01 06:27:56', 0, 1, '1398/11/3', '1398/11/7', 1579725000, 1580156999, 1),
(6, 5, 2, 0, 1178900, 1078900, 0, 0, 10, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 1),
(7, 2, 1, 3, 15180000, 14000000, 1, 0, 3, 2, NULL, NULL, '2021-01-23 15:32:07', 0, 1, '1399/11/4', '1399/11/12', 1611347400, 1612124999, 1),
(10, 11, 3, 2, 6299000, 6099000, 0, 0, 7, 2, NULL, NULL, '2021-01-23 15:32:57', 0, 1, '1399/11/4', '1399/11/13', 1611347400, 1612211399, 1),
(11, 12, 1, 5, 17000000, 13000000, 0, 0, 6, 1, NULL, NULL, '2020-11-25 22:18:08', 0, 0, '1399/6/16', '1399/6/20', 1599334200, 1599766199, 1),
(12, 8, 2, 2, 28000, 21000, 0, 0, 1, 3, NULL, NULL, '2020-07-28 23:44:14', 0, 0, NULL, NULL, 0, 0, 1),
(13, 13, 2, 6, 53000, 53000, 0, 0, 100, 1, NULL, NULL, '2020-05-01 09:50:12', 0, 0, '1398/8/1', '1398/8/4', 1571776200, 1572121799, 1),
(14, 14, 2, 2, 35500, 35000, 0, 0, 5, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 1),
(15, 9, 1, 0, 10079000, 10079000, 0, 0, 2, 1, NULL, NULL, '2021-01-22 08:26:27', 0, 0, '1399/9/6', '1399/9/9', 1606336200, 1606681799, 1),
(16, 10, 3, 2, 2199000, 2199000, 0, 0, 2, 1, NULL, NULL, '2020-05-22 14:16:23', 0, 0, '1399/2/28', '1399/2/30', 1589657400, 1589916599, 1),
(21, 18, 3, 7, 14500000, 13500000, 0, 10, 10, 1, NULL, NULL, '2020-05-05 10:05:47', 0, 0, NULL, NULL, 0, 0, 1),
(22, 18, 2, 7, 14300000, 13000000, 0, 10, 7, 1, NULL, NULL, '2020-05-05 10:05:47', 0, 0, NULL, NULL, 0, 0, 1),
(23, 19, 3, 7, 11589000, 11589000, 0, 10, 5, 1, NULL, NULL, '2020-05-05 10:05:47', 0, 0, NULL, NULL, 0, 0, 1),
(24, 19, 3, 3, 11480000, 11180000, 0, 0, 5, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 1),
(26, 19, 3, 6, 11480000, 10480000, 0, 0, 1, 1, NULL, NULL, '2021-01-22 08:26:27', 0, 0, '1399/9/7', '1399/9/9', 1606422600, 1606681799, 1),
(28, 18, 3, 7, 14500000, 14300000, 0, 0, 10, 1, NULL, NULL, '2020-02-20 16:24:25', 0, 0, '1398/11/14', '1398/11/17', 1580675400, 1581020999, 1),
(29, 18, 3, 2, 15000000, 14000000, 0, 0, 5, 2, NULL, NULL, '2021-01-23 15:32:36', 0, 1, '1399/11/4', '1399/11/13', 1611347400, 1612211399, 1),
(30, 18, 1, 2, 15000000, 14500000, 0, 0, 5, 2, NULL, NULL, '2020-01-23 16:57:12', 0, 0, '1398/8/9', '1398/8/13', 1572467400, 1572899399, 1),
(31, 20, 3, 5, 36889000, 36889000, 0, 10, 5, 1, NULL, NULL, '2020-08-27 12:15:57', 0, 0, '1399/4/16', '1399/4/20', 1593977400, 1594409399, 1),
(36, 12, 1, 5, 16000000, 15000000, 1, 10, 10, 3, NULL, NULL, '2021-01-23 15:32:21', 0, 1, '1399/11/4', '1399/11/12', 1611347400, 1612124999, 1),
(37, 17, 3, 2, 5349000, 5349000, 0, 10, 10, 3, NULL, NULL, '2020-05-05 10:05:47', 0, 0, NULL, NULL, 0, 0, 1),
(38, 2, 2, 2, 15100000, 15100000, 0, 0, 10, 1, NULL, NULL, '2020-02-03 12:45:09', 0, 0, NULL, NULL, 0, 0, 1),
(40, 2, 2, 3, 15000000, 14900000, 2, 10, 10, 6, NULL, NULL, '2020-07-14 23:55:26', 0, 0, '1398/7/30', '1398/8/3', 1571689800, 1572035399, 1),
(42, 22, 2, 0, 100000, 100000, 0, 0, 100000, 200, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 1),
(43, 24, 3, 0, 114000, 104000, 0, 0, 10, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 1),
(44, 12, 2, 7, 15000000, 13000000, 1, 0, 0, 2, NULL, '2020-03-09 13:59:26', '2020-05-08 11:02:38', 0, 0, NULL, NULL, 0, 0, 1),
(47, 26, 1, 1, 58000, 50000, 1, 10, 10, 2, '2020-05-04 12:43:33', '2020-03-27 02:50:37', '2020-05-04 12:43:33', 0, 0, NULL, NULL, 0, 0, 1),
(48, 26, 2, 1, 60000, 48000, 1, 0, 10, 2, NULL, '2020-03-28 10:48:37', '2020-05-04 12:33:39', 0, 0, NULL, NULL, 0, 0, 1),
(53, 24, 3, 1, 120000, 100000, 2, 10, 1, 2, NULL, '2020-03-28 11:19:28', '2020-11-25 22:18:08', 0, 0, '1399/6/16', '1399/6/20', 1599334200, 1599766199, 1),
(54, 26, 1, 1, 50000, 50000, 1, 0, 10, 1, NULL, '2020-05-09 03:23:20', '2020-05-09 03:23:31', 0, 0, NULL, NULL, 0, 0, 1),
(55, 29, 2, 10, 149000, 69000, 3, 0, 10, 2, NULL, '2020-05-20 04:58:46', '2020-05-20 04:58:46', 0, 0, NULL, NULL, 0, 0, 1),
(56, 29, 2, 13, 155000, 75000, 1, 0, 10, 1, NULL, '2020-05-21 02:55:35', '2020-09-04 15:26:20', 0, 0, '1399/6/6', '1399/6/13', 1598470200, 1599161399, 1),
(60, 30, 3, 5, 30000000, 30000000, 0, 0, 6, 1, NULL, '2020-05-21 11:38:35', '2021-01-22 08:26:27', 0, 0, '1399/9/6', '1399/9/10', 1606336200, 1606768199, 1),
(61, 31, 2, 10, 78000, 55000, 2, 10, 2, 2, NULL, '2020-05-21 12:23:30', '2021-01-21 05:03:28', 0, 0, NULL, NULL, 0, 0, 1),
(62, 31, 3, 10, 80000, 51000, 0, 0, 10, 1, NULL, '2020-05-21 12:24:22', '2021-01-29 13:14:32', 0, 0, NULL, NULL, 0, 0, 1),
(65, 32, 3, 0, 20000000, 19000000, 2, 0, 3, 2, NULL, '2020-08-06 22:25:01', '2020-11-17 18:52:30', 0, 0, NULL, NULL, 0, 0, 1),
(66, 33, 2, 5, 45300000, 45300000, 1, 0, 6, 2, NULL, '2020-08-10 10:14:09', '2020-08-10 10:14:09', 0, 0, NULL, NULL, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'آذربایجان شرقی', NULL, '2019-06-28 23:58:34', '2019-06-29 01:32:46'),
(3, 'آذربایجان غربی', NULL, '2019-06-29 01:01:15', '2019-06-29 01:01:15'),
(4, 'اردبیل', NULL, '2019-06-29 01:01:26', '2019-06-29 01:01:26'),
(5, 'اصفهان', NULL, '2019-06-29 01:01:37', '2019-06-29 01:01:37'),
(6, 'البرز', NULL, '2019-06-29 01:01:46', '2019-06-29 01:01:46'),
(7, 'ایلام', NULL, '2019-06-29 01:01:56', '2019-06-29 01:01:56'),
(8, 'بوشهر', NULL, '2019-06-29 01:02:05', '2019-12-12 05:51:26'),
(10, 'تهران', NULL, '2019-06-29 01:30:23', '2019-12-12 05:51:26');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL DEFAULT 0,
  `status` smallint(6) NOT NULL DEFAULT 0,
  `answer_count` smallint(6) NOT NULL DEFAULT 0,
  `send_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `question` text COLLATE utf8_unicode_ci NOT NULL,
  `like` int(11) NOT NULL DEFAULT 0,
  `dislike` int(11) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `time`, `product_id`, `user_id`, `question_id`, `status`, `answer_count`, `send_email`, `question`, `like`, `dislike`, `deleted_at`) VALUES
(1, 1582187135, 12, 9, 0, 1, 4, 'ok', 'با سلام\r\nمن میخوام بدونم کیفیت دوربین سلفی این گوشی در چه حد هست؟!از گلکسی s9 سامسونگ بهتره یا کیفیت ضعیفی داره؟!ممنون میشم اگه کمکم کنین', 0, 0, NULL),
(14, 1582303768, 12, 25, 0, 1, 0, 'no', 'من میخوام گوشیمو عوض کنم به نظرتون اس 10پلاس بگیرم یا آیفون x؟؟(فقط میخوام دوربینش خوب باشه و زیاد عمر کنه و سیستم عاملش هنگ نکنه)', 0, 0, NULL),
(18, 1582876419, 12, 26, 0, 1, 1, 'no', 'سلام \r\nدوستان لطفا هر کی درباره این موضوع چیزی میدونه بگه . من میخام x بگیرم ولی چند جا خوندم که روی صفش یه خط سبز میفته یا فیس ایدیش خراب میشه . ممندن میشم جواب بدین خیلی واجبه', 0, 0, NULL),
(19, 1582876555, 12, 9, 14, 1, 0, 'no', 'مشخصه که سامسونگ بهتره تو ایران الان ما تحریمیم و برنامه هایی مثله اسنپ و غیره از آیفون حذف شدن پس عقل حکم میکنه که سامسونگ الان و در حال حاضر خیلی بهتره', 0, 0, NULL),
(20, 1582876576, 12, 9, 14, 1, 0, 'no', 'اگربرات کیفیت مهمه نه مارک و پز s10 رو بگیر عالیه من s9 شو دارم و خوشحالم که ایفوت نگرفتم که الان بخواد برنامه هاش به خاطر تحریم و... کارنکنه و هنگ کنه شک نکن که با خریدنs10 پشیمون نمیشی', 0, 0, NULL),
(23, 1601489021, 2, 9, 0, 0, 0, 'no', 'تست', 0, 0, '2020-10-07 10:59:10');

-- --------------------------------------------------------

--
-- Table structure for table `reject_message`
--

CREATE TABLE `reject_message` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tozihat` text COLLATE utf8_unicode_ci NOT NULL,
  `time` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reject_message`
--

INSERT INTO `reject_message` (`id`, `tozihat`, `time`, `user_id`, `product_id`) VALUES
(1, 'توضیحات محصول باید به صورت کامل و شفاف نوشته شود', 1585153807, 26, 27);

-- --------------------------------------------------------

--
-- Table structure for table `review_product`
--

CREATE TABLE `review_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tozihat` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `review_product`
--

INSERT INTO `review_product` (`id`, `title`, `tozihat`, `product_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(10, 'Face ID (کسی به‌غیراز تو را نمی‌شناسم)', '<p><img alt=\"\" src=\"http://localhost/digikala/public/files/review/a.jpg?_t=1562362158\" style=\"width:100%\" /></p>\r\n\r\n<p>در فناوری تشخیص چهره&zwnj;ی اپل، یک دوربین و فرستنده&zwnj;ی مادون&zwnj;قرمز در بالای نمایشگر قرار داده &zwnj;شده&zwnj; است؛ هنگامی&zwnj;که آیفون می&zwnj;خواهد چهره&zwnj;ی شما را تشخیص دهد، فرستنده&zwnj;ی نوری نامرئی را به &zwnj;صورت شما می&zwnj;تاباند. دوربین مادون&zwnj;قرمز، این نور را تشخیص داده و با الگویی که قبلا از صورت شما ثبت کرده، مطابقت می&zwnj;دهد و در صورت یکی&zwnj;بودن، قفل گوشی را باز می&zwnj;کند. اپل ادعا کرده، الگوی صورت را با استفاده از سی هزار نقطه ذخیره می&zwnj;کند که دورزدن آن اصلا کار ساده&zwnj;ای نیست. استفاده از ماسک، عکس یا موارد مشابه نمی&zwnj;تواند امنیت اطلاعات شما را به خطر اندازد؛ اما اگر برادر یا خواهر دوقلو دارید، باید برای امنیت اطلاعاتتان نگران باشید.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"block\">\r\n<p>استفاده از فناوری&zwnj;های جدید روی گوشی&zwnj;ها این روزها در بین تمام تولیدکنندگان باب شده است. اپل هم در آیفون 10 سنگ&zwnj;تمام گذاشته و از تکنولوژی پیشرفته&zwnj;ی تشخیص چهره استفاده کرده تا آیفون جدید، صاحبش را با یک نگاه بشناسد. باید اپل را به&zwnj;خاطر جرئتی که برای حذف حسگر اثرانگشت از روی iPhone X به خرج داده ستود.</p>\r\n</div>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/digikala/public/files/review/2.jpg?_t=1562362248\" style=\"width:100%\" /></p>\r\n\r\n<p>حسگر چهره در هر شرایطی کار می&zwnj;کند: هنگامی&zwnj;که در تختخواب هستید، هنگامی&zwnj;که عینک آفتابی زده&zwnj;اید، هنگامی&zwnj;که آرایشتان را عوض می&zwnj;کنید، ریش می&zwnj;گذارید یا صورتتان را اصلاح می&zwnj;کنید، وقتی از کلاه استفاده می&zwnj;کنید یا حتی اگر در تاریکی مطلق باشید. شاید فکر کنید، استفاده از آن ساده&zwnj;تر از اثرانگشت نیست؛ اما سخت در اشتباه&zwnj;اید؛ چراکه استفاده از آن بی&zwnj;دردسرتر از اثرانگشت است و فقط باید به آن عادت کنید که این اتفاق حتما در چند روز ابتدایی استفاده از آیفون 10 رخ خواهد داد. می&zwnj;توانید تنها با نگاه به آیفون 10، قفل گوشی را بازکنید، از پرداخت اپل استفاده کنید، از فروشگاه اپل، برنامه و بازی بخرید، پسورد&zwnj;هایتان را در سفاری وارد کنید یا حتی برای بازکردن برنامه&zwnj;هایی که قبلا نیاز به اثرانگشتتان داشتند، حالا از صورتتان برای باز شدنشان استفاده کنید.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/digikala/public/files/review/1431842.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>فقط یک نکته&zwnj;ی مثبت در مورد Face ID وجود ندارد؛ بلکه موارد زیادی هستند که دانستن آن&zwnj;ها ضروری به نظر می&zwnj;رسد. آیفون 10 فقط چهره&zwnj;ی یک نفر را می&zwnj;شناسد و نمی&zwnj;توانید مثل اثرانگشت، چند چهره را به آیفون معرفی کنید تا از آن&zwnj;ها برای بازکردنش استفاده کنید. اگر آیفون در تلاش اول، صورت شما را نشناسد، باید نمایشگر را برای شناختن مجدد خاموش و روشن کنید یا اینکه آن را پایین ببرید و دوباره روبه&zwnj;روی صورتتان قرار دهید. این تمام ماجرا نیست؛ اگر آیفون 10 بین افراد زیادی که چهره&zwnj;شان را نمی&zwnj;شناسد دست&zwnj;به&zwnj;دست شود، دیگر به شناخت چهره عکس&zwnj;العمل نشان نمی&zwnj;دهد و حتما باید از پین یا پسوورد برای بازکردن آن استفاده کنید تا دوباره صورتتان را بشناسد.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/digikala/public/files/review/1439653.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p>اپل سعی کرده نهایت استفاده را از این فناوری جدید بکند؛ استفاده از آن برای ثبت تصاویر پرتره با دوربین سلفی، استفاده برای ساختن شکلک&zwnj;های بامزه که آن&zwnj;ها را Animoji نامیده است و همچنین استفاده برای روشن نگه&zwnj;داشتن گوشی زمانی که کاربر به آن نگاه می&zwnj;کند، مواردی هستند که iPhone X به کمک حسگر اینفرارد، بدون نقص آن&zwnj;ها را انجام می&zwnj;دهد.</p>\r\n\r\n<p>&nbsp;</p>', 12, NULL, '2020-01-25 05:46:52', '2020-01-25 05:46:52'),
(11, 'نمایش‌گر (رنگی‌تر از همیشه)', '<p><img alt=\"\" src=\"http://localhost/digikala/public/files/review/1429172.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p>اولین تجربه&zwnj;ی استفاده از پنل&zwnj;های اولد سامسونگ روی گوشی&zwnj;های اپل، نتیجه&zwnj;ای جذاب برای همه به همراه آورده است. مهندسی افزوده&zwnj;ی اپل روی این پنل&zwnj;ها باعث شده تا غلظت رنگ&zwnj;ها کاملا متعادل باشد، نه مثل آیفون 8 کم باشد و نه مثل گلکسی S8 اشباع باشد تا از حد تعادل خارج شود. اپل این نمایشگر را Super Retina نامیده تا ثابت کند، بهترین نمایشگر موجود در دنیا را طراحی کرده و از آن روی iPhone X&nbsp; استفاده کرده است.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/digikala/public/files/review/1436228.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p>این نمایشگر در مقایسه با پنل&zwnj;های معمولی، مصرف انرژی کمتری دارد و این به خاطر استفاده از پنل&zwnj;های اولد است؛ اما این مشخصه باعث نشده تا نور نمایشگر مثل محصولات دیگری که پنل اولد دارند کم باشد؛ بلکه این پنل در هر شرایطی بهترین بازده&zwnj;ی ممکن را دارد. استفاده زیر نور شدید خورشید یا تاریکی مطلق فرقی ندارد، آیفون 10 خود را با شرایط تطبیق می&zwnj;دهد. این تمام ماجرا نیست. در نمایشگر آیفون 10 نقطه&zwnj;ی حساس به تراز سفیدی نور محیط قرار داده &zwnj;شده&zwnj;اند تا آیفون 10 را با شرایط نوری محیطی که از آن استفاده می&zwnj;کنید، هماهنگ کند و تراز سفیدی نمایشگر را به&zwnj;صورت خودکار تغییر دهد. این فناوری که با نام True-Tone نام&zwnj;گذاری شده، کمک می&zwnj;کند رنگ&zwnj;های نمایشگر در هر نوری نزدیک&zwnj;ترین غلظت و تراز سفیدی ممکن را به رنگ&zwnj;های طبیعی داشته باشد.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/digikala/public/files/review/1406339.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p>بریدگی بالای نمایشگر شاید تنها نقطه&zwnj;ی منفی در نمایشگر آیفون 10 باشد. این قسمت به&zwnj;خصوص زمانی که قصد دارید از تمام نمایشگر برای دیدن فیلم و عکس، بازی&zwnj;کردن یا وبگردی استفاده کنید، ناخوشایند به نظر می&zwnj;رسد.</p>', 12, NULL, '2020-01-25 05:47:24', '2020-01-25 05:47:24'),
(12, 'طراحی و ساخت (قربانی کردن سنت برای امروزی شدن)', '<p><img alt=\"\" src=\"http://localhost/digikala/public/files/review/1398679.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p>اپل پا جای پای سامسونگ گذاشته و برای داشتن ظاهری امروزی و استفاده از جدیدترین فناوری&zwnj;های روز، سنت ده&zwnj;ساله&zwnj;ی طراحی گوشی&zwnj;هایش را شکسته است. دیگر کلید خانه&zwnj;ای وجود ندارد و تمام قاب جلویی را نمایشگر پر کرده است. حتی نمایشگر هم برای استفاده از فناوری تشخیص چهره قربانی شده و قسمت بالایی آن بریده &zwnj;شده است و لبه&zwnj;ی بالایی آن در مقایسه با هر گوشی دیگری که تا به امروز دیده بودیم، حالت متفاوتی دارد. ابعاد iPhone X کمی بزرگ&zwnj;تر از ابعاد آیفون 6 است؛ اما نمایشگرش حدود یک اینچ بزرگ&zwnj;تر از آیفون 6 است. این نشان می&zwnj;دهد، فاصله&zwnj;ی لبه&zwnj;ها تا نمایشگر تا جای ممکن از طراحی جدیدترین آیفون اپل حذف&zwnj; شده&zwnj; است.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/digikala/public/files/review/1441226.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p>زبان طراحی جدید، آیفون 10 را به&zwnj;طور عجیبی به سمت تبدیل&zwnj;شدنش به یک کالای لوکس پیش برده است. نگاه کلی به طراحی این گوشی نشان می&zwnj;دهد، اپل سنت&zwnj;شکنی کرده و کالایی تولید کرده تا از هر نظر با نسخه&zwnj;های قبلی آیفون متفاوت باشد. استفاده از شیشه برای قاب پشتی، فلزی براق برای قاب اصلی، حذف کلید خانه و در انتها استفاده از نمایشگری بزرگ مواردی هستند که نشان&zwnj;دهنده&zwnj;ی تفاوت iPhone X با نسخه&zwnj;های قبلی آیفون است. تمام سطوح آیفون براق و صیقلی طراحی &zwnj;شده&zwnj;اند و تنها برآمدگی آیفون جدید مربوط به مجموعه&zwnj;ی دوربین آن می&zwnj;شود که حدود یک میلی&zwnj;متری از قاب پشتی بیرون زده است. برخلاف آیفون 8پلاس، دوربین&zwnj;های روی قاب پشتی به حالت عمودی روی قاب پشتی قرار گرفته&zwnj;اند.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/digikala/public/files/review/1418947.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p>آیفون جدید در دو رنگ خاکستری و نقره&zwnj;ای راهی بازار شده که در هر دو مدل قاب جلویی به رنگ مشکی است و این بابت استفاده از سنسورهای متعدد در بخش بالایی نمایشگر است. برخلاف تمام آیفون&zwnj;های فلزی که تا امروز ساخته&zwnj; شده&zwnj;اند، قاب اصلی از فلزی براق ساخته &zwnj;شده تا زیر نور خودنمایی کند.</p>\r\n\r\n<p>&nbsp;</p>', 12, NULL, '2020-01-25 06:10:58', '2020-01-25 06:10:58'),
(13, 'iOS (تغییر برای رسیدن به اوج)', '<p><img alt=\"\" src=\"http://localhost/digikala/public/files/review/1425298.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p>فداکردن کلید خانه که 10 سال روی آیفون وجود داشت و بریدن نمایشگر از بالا کافی نبود؛ بلکه آیفون 10 آن&zwnj;قدر برای اپل اهمیت دارد که حتی iOS را هم به خاطر آن تغییر داده است. چیزی که کمتر شاهد آن بودیم؛ اما iOS تا جای ممکن برای رساندن آیفون جدید به هدفی که مدنظر اپل بوده تغییر کرده است. این تغییر از تعویض مکان آیکون&zwnj;های ارتباطی، ساعت و گردکردن لبه&zwnj;ی کلید&zwnj;های مجازی شروع &zwnj;شده و تا اضافه&zwnj;کردن ژست&zwnj;های حرکتی جدید بعد از 10 سال به iOS پیش رفته است.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/digikala/public/files/review/1378811.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p>اگر ده سال به استفاده از کلید خانه عادت کرده&zwnj;اید، باید با حذف این کلید و استفاده از ژست&zwnj;های حرکتی جدید کنار بیایید. البته به&zwnj;کاربردن این ژست&zwnj;ها خیلی ساده&zwnj;تر از استفاده از کلید خانه است. اطمینان داشته باشید مثل Face ID در طی چند روز، به استفاده از آن عادت خواهید کرد. تنها موردی که فکر زیادی روی آن نشده و اپل آن را به بدترین حالت ممکن طراحی کرده، بستن برنامه&zwnj;های باز است. اگر قبلا تنها با حرکت&zwnj;دادن صفحه&zwnj;ی برنامه به سمت بالا آن برنامه را می&zwnj;بستید، حالا باید به روش iOS 4.0 عمل کنید.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/digikala/public/files/review/1441024.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p>مورد دیگری که آزاردهنده است، هماهنگ&zwnj;نشدن برنامه&zwnj;های سازنده&zwnj;ها با اندازه و بریدگی نمایشگر است؛ هنوز بسیاری از برنامه&zwnj;های معروف و کاربردی که هر روز با آن&zwnj;ها سروکار داریم، با این نمایشگر هماهنگ نشده&zwnj;اند. بسیاری از برنامه&zwnj;ها باحالتی شبیه به آیفون 8پلاس نمایش داده می&zwnj;شوند، برنامه&zwnj;هایی هم هستند که تمام صفحه&zwnj;نمایش را پر می&zwnj;کنند؛ اما آن&zwnj;طورکه باید کامل نیستند و از لبه&zwnj;ها استفاده&zwnj;ی لازم را نکرده&zwnj;اند؛ البته لیست برنامه&zwnj;ها و بازی&zwnj;هایی که با iPhone x هماهنگی دارند، در فروشگاه اپل قابل&zwnj;دیدن است. اپل قول داده است این مشکل به&zwnj;زودی حل شود.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/digikala/public/files/review/1414456.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p>درعوض سرعت حرکت بین برنامه&zwnj;های باز یا فراخوانی برنامه&zwnj;هایی که باز هستند، دقت در تشخیص منظور کاربر از هر لمس روی نمایشگر، سرعت بوت&zwnj;شدن آیفون 10 و حتی پردازش&zwnj;های سنگین هنگام استفاده از Animoji مواردی هستند که در iOS جدید به&zwnj;خوبی مدیریت &zwnj;شده&zwnj;اند.</p>', 12, NULL, '2020-01-25 06:12:02', '2020-01-25 06:12:02'),
(14, 'سخت‌افزار،عملکرد و کارایی (قدرتی کم‌نظیر در بین سرشناس‌ترین برندها)', '<p>     <img alt=\"\" src=\"http://localhost/digikala/public/files/review/1438696.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p>انجام بازی&zwnj;های سنگین یا برنامه&zwnj;هایی که برای اجرا نیاز به پردازش بالایی دارند، برای آیفون 10 در حد شوخی هستند. اصلا فکرش را هم نکنید که هنگام کارکردن با این گوشی مکثی احساس کنید. این مورد حتی در انجام پردازش&zwnj;های سنگین هنگام استفاده از دوربین برای افزودن واقعیت مجازی، هنگام استفاده از اطلاعات بیومتریک صورت شما هنگام بازکردن قفل گوشی، ساختن Animoji یا خروجی&zwnj;گرفتن از عکس&zwnj;های پرتره که درجه&zwnj;یک هستند، دیده نمی&zwnj;شود، چه برسد به آنکه هنگام بازی&zwnj;کردن یا بازکردن چند برنامه کنار هم، دیده شوند.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/digikala/public/files/review/1417038.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p>مثل بقیه&zwnj;ی گوشی&zwnj;های امروزی بازار، امکان اتصال به شبکه&zwnj;های نسل چهارم با سرعت انتقال یک گیگابیت بر ثانیه، بلوتوث نسخه&zwnj;ی مثل بقیه&zwnj;ی گوشی&zwnj;های امروزی بازار، امکان اتصال به شبکه&zwnj;های نسل چهارم با سرعت انتقال یک گیگابیت بر ثانیه، بلوتوث نسخه&zwnj;ی 5، Wi-Fi با استاندارد ac و استفاده از تمام ماهواره&zwnj;های موجود برای مکان&zwnj;یابی دقیق و سریع از دیگر مشخصات سخت&zwnj;افزاری آیفون 10 است.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/digikala/public/files/review/1393728.jpg\" style=\"width:40%\" /></p>\r\n\r\n<p>موضوعی که اشاره به آن ضروری به نظر می&zwnj;رسد، باتری آیفون 10 است که حالا با استفاده از فناوری شارژ سریع می&zwnj;توان آن را به&zwnj;سرعت شارژ کرد؛ اما برای استفاده از فناوری شارژ سریع، حتما باید یک شارژ جداگانه سفارش دهید و استفاده از شارژر داخل جعبه برای این موضوع کفایت نمی&zwnj;کند؛ همچنین آیفون 10 خیلی بعد از رقبا به فناوری شارژ بی&zwnj;سیم مجهز شده و این در حالی است که اپل هیچ نوآوری&zwnj;ای در این مورد نکرده است.<br />\r\nباتری آیفون جدید ظرفیت 2716میلی&zwnj;آمپرساعتی دارد و با توجه به نمایشگر و تراشه&zwnj;ی ده&zwnj;نانومتری که هر دو مصرف حداقلی دارند، زمان زیادی را دوام می&zwnj;آورد. نتایج به&zwnj;دست&zwnj;آمده از دوام باتری آیفون 10 خوب است اما عالی نیست؛ در حالت عادی استفاده&zwnj;ی روزمره، می&zwnj;توانید به حدود یازده ساعت استفاده از گوشی در حالت صفحه روشن، دل&zwnj; خوش کنید. این زمان از تمام آیفون&zwnj;های قبلی بیشتر است. این زمان در حالتی است که به شبکه&zwnj;ی 4G متصل باشید و از گوشی برای دیدن فیلم، وبگردی، گوش&zwnj;دادن به موسیقی، بازی&zwnj;کردن، چک&zwnj;کردن شبکه&zwnj;های اجتماعی و عکاسی استفاده معمول را داشته باشید.</p>', 12, NULL, '2020-01-25 06:15:16', '2020-06-14 15:19:09'),
(15, NULL, '<p>از تولید اولین آیفون در سال 2007، ده سالی می&zwnj;گذرد و اپل جشن ده&zwnj;ساله&zwnj;شدن آیفون را با تولید آیفونی جشن گرفته که اعتقاد دارد، می&zwnj;تواند تحولی بزرگ در دنیای موبایل پدید آورد. این دقیقا شبیه حرفی است که استیو جابز ده سال پیش در مراسم معرفی اولین آیفون گفت. امروز که به ده سال پیش نگاه می&zwnj;کنیم، آیفون باعث شده تا صنعت موبایل پیشرفتی عجیب&zwnj;و&zwnj;غریب داشته باشد. در مقابل خیلی از منتقدان عقیده دارند، آیفون 10 آن&zwnj;طورکه بایدوشاید نمی&zwnj;تواند محصولی انقلابی باشد. اپل سعی کرده کم&zwnj;کاری سه سال قبل را در تولید این گوشی جبران کند و امکانات جدیدی را روی آن قرار دهد تا علاوه بر طرفداران اپل، بقیه&zwnj;ی کاربران هم به خرید آن ترغیب شوند.</p>\r\n\r\n<p>&nbsp;</p>', 12, NULL, '2020-01-25 06:28:27', '2020-01-25 06:28:27');

-- --------------------------------------------------------

--
-- Table structure for table `role_accesses`
--

CREATE TABLE `role_accesses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `access` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_accesses`
--

INSERT INTO `role_accesses` (`id`, `role_id`, `access`, `created_at`, `updated_at`) VALUES
(36, 2, '{\"products\":[\"product_edit\",\"remove_product\"],\"sliders\":[\"slider_edit\",\"restore_slider\"],\"orders\":[\"change_status\",\"items_today\"],\"stockrooms\":[\"add_input\"],\"users\":[\"user_edit\",\"user_remove\",\"user_order\",\"user_access\",\"user_message\"],\"seller\":[\"seller_message\"],\"comments\":[\"comment_manager\"],\"incredible-offers\":[\"incredible_offers_manager\"]}', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sale_statistics`
--

CREATE TABLE `sale_statistics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `month` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `day` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `commision` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sale_statistics`
--

INSERT INTO `sale_statistics` (`id`, `year`, `month`, `day`, `price`, `commision`, `created_at`, `updated_at`) VALUES
(6, '1398', '12', '24', 40854000, 1260000, NULL, NULL),
(7, '1399', '1', '11', 388000, 0, NULL, NULL),
(8, '1399', '1', '12', 400000, 0, NULL, NULL),
(9, '1399', '2', '21', 96000, 0, NULL, NULL),
(10, '1399', '2', '28', 96000, 0, NULL, NULL),
(11, '1399', '4', '18', 30110000, 0, NULL, NULL),
(12, '1399', '4', '26', 30000000, 0, NULL, NULL),
(13, '1399', '6', '6', 60110000, 0, NULL, NULL),
(14, '1399', '8', '27', 177760000, 0, NULL, NULL),
(15, '1399', '9', '6', 177760000, 0, NULL, NULL),
(16, '1399', '11', '22', 130198000, 520000, NULL, NULL),
(17, '1399', '11', '23', 65099000, 260000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `step` smallint(6) NOT NULL,
  `account_status` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'awaiting_approval',
  `active_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `brand_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province_id` int(11) NOT NULL DEFAULT 0,
  `city_id` int(11) NOT NULL DEFAULT 0,
  `account_type` smallint(6) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total_commission` int(11) DEFAULT 0,
  `paid_commission` int(11) DEFAULT 0,
  `total_price` int(11) DEFAULT 0,
  `new_order_count` int(11) DEFAULT 0,
  `shaba` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`id`, `email`, `mobile`, `password`, `step`, `account_status`, `active_code`, `brand_name`, `fname`, `lname`, `province_id`, `city_id`, `account_type`, `deleted_at`, `created_at`, `updated_at`, `total_commission`, `paid_commission`, `total_price`, `new_order_count`, `shaba`) VALUES
(10, 'ali.sedighi.tu@gmail.com', '09141592083', '$2y$10$0vaWQbFweZl7111/Fx.1lulGIelsW1s2TqzF3jiceL9f4AEk129xu', 4, 'active', '', 'ایده پردازان جوان', 'علی', 'صدیقی', 1, 2, 2, NULL, '2020-03-20 12:40:14', '2021-01-02 02:38:11', 780000, 100000, 39320000, 13, 'IR062960000000100324200001'),
(27, 'info@idehpardazanjavan.com', '09141592085', '$2y$10$abMR.uaCjaHt7ZBN5OyuIOxCAejYhD9m/WqfdH46PZRkQ8jvtKVVS', 4, 'active', NULL, 'فروشگاه ایرانیان', 'آراز', 'صدیقی', 4, 3, NULL, NULL, '2019-02-05 06:53:55', '2020-05-05 17:52:28', 0, 200000, 200000, 0, 'IR062960000000100324200001');

-- --------------------------------------------------------

--
-- Table structure for table `seller_document`
--

CREATE TABLE `seller_document` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` int(11) NOT NULL,
  `shenasname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cart` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rooznamepic` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `seller_document`
--

INSERT INTO `seller_document` (`id`, `seller_id`, `shenasname`, `cart`, `rooznamepic`, `created_at`, `updated_at`) VALUES
(2, 10, 'shenasname_1586194734.png', 'cart_1586194734.png', 'rooznamepic_1584720700.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `seller_products`
--

CREATE TABLE `seller_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `seller_products`
--

INSERT INTO `seller_products` (`id`, `seller_id`, `product_id`, `cat_id`, `brand_id`, `created_at`, `updated_at`) VALUES
(1, 10, 25, 77, 1, NULL, NULL),
(2, 10, 26, 77, 1, NULL, NULL),
(3, 10, 19, 87, 1, NULL, NULL),
(4, 10, 27, 98, 1, NULL, NULL),
(5, 10, 24, 172, 21, '2020-03-28 15:49:28', '2020-03-28 15:49:28'),
(6, 10, 31, 193, 20, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `seller_sale_statistics`
--

CREATE TABLE `seller_sale_statistics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `month` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `day` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `commision` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `seller_sale_statistics`
--

INSERT INTO `seller_sale_statistics` (`id`, `year`, `month`, `day`, `price`, `seller_id`, `commision`, `created_at`, `updated_at`) VALUES
(8, '1398', '12', '24', 40800000, 10, 1260000, NULL, NULL),
(9, '1399', '1', '11', 50000, 10, 0, NULL, NULL),
(10, '1399', '1', '12', 200000, 10, 0, NULL, NULL),
(11, '1399', '4', '18', 110000, 10, 0, NULL, NULL),
(12, '1399', '6', '6', 110000, 10, 0, NULL, NULL),
(13, '1399', '11', '22', 26000000, 10, 520000, NULL, NULL),
(14, '1399', '11', '23', 13000000, 10, 260000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `send_type_order`
--

CREATE TABLE `send_type_order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type_icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight1` int(11) NOT NULL DEFAULT 0,
  `weight2` int(11) DEFAULT NULL,
  `price_type` smallint(6) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `send_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `send_type_order`
--

INSERT INTO `send_type_order` (`id`, `type_name`, `type_key`, `type_icon`, `weight1`, `weight2`, `price_type`, `created_at`, `updated_at`, `deleted_at`, `send_type_name`) VALUES
(40, 'ارسال عادی', 'normal', '1597768459.png', 0, 10, 0, '2020-08-13 11:21:17', '2020-08-18 12:04:19', NULL, 'پست پیشتاز با ظرفیت اختصاصی برای دیجی آنلاین'),
(41, 'ارسال کالای بزرگ و سنگین', 'heavy', '1597768542.png', 10, 40, 0, '2020-08-13 12:05:31', '2020-08-18 12:05:42', NULL, 'باربری'),
(42, 'ارسال کالای بزرگ و فوق سنگین', 'superHeavy', '1597768586.png', 40, 210, 1, '2020-08-13 12:06:29', '2020-08-18 12:06:26', NULL, 'باربری');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `option_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `option_name`, `option_value`, `created_at`, `updated_at`) VALUES
(4, 'send_time', '2', NULL, NULL),
(5, 'send_price', '8000', NULL, NULL),
(6, 'min_order_price', '150000', NULL, NULL),
(11, 'TerminalId', '1', NULL, NULL),
(12, 'Username', '23', NULL, NULL),
(13, 'Password', '3', NULL, NULL),
(14, 'gateway', '1', NULL, NULL),
(19, 'heavy_send_time', '3', NULL, NULL),
(20, 'heavy_send_price', '25000', NULL, NULL),
(23, 'normal_send_time', '2', NULL, NULL),
(24, 'normal_send_price', '10000', NULL, NULL),
(25, 'normal_min_order_price', '150000', NULL, NULL),
(26, 'superHeavy_send_time', '5', NULL, NULL),
(27, 'superHeavy_send_price', '60000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile_image_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `url`, `image_url`, `mobile_image_url`, `deleted_at`, `created_at`, `updated_at`) VALUES
(10, 'پارتنرشیپ - آنر', 'http://localhost/digikala/public', 'desktop1598371151.jpg', 'mobile1598378866.jpg', NULL, '2020-08-25 11:29:11', '2020-08-25 13:37:46'),
(11, 'لوازم جانبی موبایل', 'http://localhost/digikala/public', 'desktop1598700753.jpg', 'mobile1598700753.jpg', NULL, '2020-08-29 07:02:33', '2020-08-29 07:02:33'),
(12, 'تلویزیون', 'http://localhost/digikala/public', 'desktop1606172984.jpg', 'mobile1606172984.jpg', NULL, '2020-11-23 19:39:44', '2020-11-23 19:39:44'),
(13, 'ارسال توسط فروشنده', 'http://localhost/digikala/public', 'desktop1606253050.jpg', 'mobile1606253050.jpg', NULL, '2020-11-24 17:54:10', '2020-11-30 21:31:01');

-- --------------------------------------------------------

--
-- Table structure for table `stockrooms`
--

CREATE TABLE `stockrooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stockrooms`
--

INSERT INTO `stockrooms` (`id`, `name`, `address`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'انبار مرکزی', 'تبریز - باغمیشه نصر سوم', NULL, '2020-03-01 05:12:52', '2020-03-01 05:29:35'),
(2, 'انبار شماره  ۲', NULL, NULL, '2020-03-01 05:29:11', '2020-03-01 05:55:17');

-- --------------------------------------------------------

--
-- Table structure for table `stockroom_events`
--

CREATE TABLE `stockroom_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `stockroom_id` int(11) NOT NULL,
  `tozihat` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` int(11) NOT NULL,
  `product_count` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stockroom_events`
--

INSERT INTO `stockroom_events` (`id`, `type`, `user_id`, `stockroom_id`, `tozihat`, `time`, `product_count`, `created_at`, `updated_at`) VALUES
(6, 'input', 26, 1, 'تست', 1583134477, 5, '2020-03-02 04:04:37', '2020-03-02 04:04:37'),
(7, 'input', 26, 1, NULL, 1583134665, 3, '2020-03-02 04:07:45', '2020-03-02 04:07:45'),
(14, 'output', 26, 1, 'این محصول بابت ارسال سفارش با شناسه ۱۰ از انبار خارج و تحویل پست داده شده', 1583170613, 1, '2020-03-02 14:06:53', '2020-03-02 14:06:53'),
(15, 'input', 9, 2, NULL, 1583227138, 3, '2020-03-03 05:48:58', '2020-03-03 05:48:58'),
(16, 'input', 26, 1, NULL, 1583745240, 21, '2020-03-09 05:44:00', '2020-03-09 05:44:00'),
(17, 'input', 26, 2, NULL, 1583774995, 32, '2020-03-09 13:59:55', '2020-03-09 13:59:55'),
(18, 'input', 26, 1, NULL, 1583952350, 1, '2020-03-11 18:45:50', '2020-03-11 18:45:50'),
(19, 'input', 26, 1, 'این کالا مربوط به سفارش ۵۸۳۹۵۹۵۲۶۳۹ می باشد', 1583956809, 2, '2020-03-11 20:00:09', '2020-03-11 20:00:09'),
(20, 'input', 26, 1, 'این کالا به دلیل کیفیت پایین توسط مشتری پس داده شده \r\nشماره سفاش : ۵۸۴۱۷۹۷۶۰۱۳', 1584176247, 1, '2020-03-14 08:57:27', '2020-03-14 08:57:27'),
(21, 'input', 26, 1, 'این محصول به دلیل نارضایتی مشتری برگشت داده شده', 1584181065, 1, '2020-03-14 10:17:45', '2020-03-14 10:17:45'),
(22, 'input', 26, 1, NULL, 1584181418, 1, '2020-03-14 10:23:38', '2020-03-14 10:23:38'),
(23, 'input', 26, 1, 'تست', 1584181613, 1, '2020-03-14 10:26:53', '2020-03-14 10:26:53'),
(24, 'input', 26, 1, 'تست ۲', 1584182088, 1, '2020-03-14 10:34:48', '2020-03-14 10:34:48'),
(25, 'input', 26, 1, NULL, 1584182162, 1, '2020-03-14 10:36:02', '2020-03-14 10:36:02'),
(26, 'input', 26, 1, 'تست ۱', 1584182378, 1, '2020-03-14 10:39:38', '2020-03-14 10:39:38'),
(27, 'output', 26, 1, 'این محصولات برای ارسال سفارشات جاری از انبار خارج شده', 1584182547, 2, '2020-03-14 07:12:27', '2020-03-14 07:12:27'),
(28, 'input', 26, 1, NULL, 1584182796, 1, '2020-03-14 10:46:36', '2020-03-14 10:46:36'),
(30, 'output', 26, 1, 'تست ۲', 1584183163, 1, '2020-03-14 10:52:43', '2020-03-14 10:52:43'),
(31, 'input', 26, 1, 'تست', 1584183272, 1, '2020-03-14 10:54:32', '2020-03-14 10:54:32'),
(32, 'output', 26, 1, 'این کالا بعد از بررسی مجددا تحویل خریدار داده شده', 1584183351, 1, '2020-03-14 10:55:51', '2020-03-14 10:55:51'),
(33, 'input', 26, 1, NULL, 1584183602, 1, '2020-03-14 11:00:02', '2020-03-14 11:00:02'),
(34, 'output', 26, 1, NULL, 1584183627, 1, '2020-03-14 11:00:27', '2020-03-14 11:00:27'),
(35, 'input', 26, 1, 'این کالا به دلیل نارضایتی مشتری از کیفیت محصول برگشت داده شده', 1584183680, 1, '2020-03-14 11:01:20', '2020-03-14 11:01:20'),
(36, 'input', 26, 1, 'این کالا به دلیل نارضایتی مشتری برگشت داده شده', 1584205293, 1, '2020-03-14 17:01:33', '2020-03-14 17:01:33'),
(37, 'input', 26, 1, NULL, 1585667909, 2, '2020-03-31 10:48:29', '2020-03-31 10:48:29'),
(38, 'input', 26, 1, NULL, 1585669868, 1, '2020-03-31 11:21:08', '2020-03-31 11:21:08'),
(39, 'output', 26, 1, NULL, 1585670254, 1, '2020-03-31 11:27:34', '2020-03-31 11:27:34'),
(40, 'input', 26, 1, 'محصولات مربوط به محموله 5116109288', 1585926731, 2, '2020-04-03 10:42:11', '2020-04-03 10:42:11'),
(41, 'input', 26, 2, NULL, 1585931918, 3, '2020-04-03 12:08:38', '2020-04-03 12:08:38'),
(42, 'input', 26, 2, NULL, 1585932023, 5, '2020-04-03 12:10:23', '2020-04-03 12:10:23'),
(43, 'input', 26, 2, NULL, 1586010641, 5, '2020-04-04 10:00:41', '2020-04-04 10:00:41'),
(44, 'input', 26, 1, NULL, 1590049160, 10, '2020-05-21 03:49:20', '2020-05-21 03:49:20'),
(45, 'input', 26, 1, NULL, 1612261711, 1, '2021-02-02 10:28:31', '2021-02-02 10:28:31');

-- --------------------------------------------------------

--
-- Table structure for table `stockroom_products`
--

CREATE TABLE `stockroom_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_id` int(11) NOT NULL,
  `product_warranty_id` int(11) NOT NULL,
  `product_count` int(11) NOT NULL,
  `stockroom_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stockroom_products`
--

INSERT INTO `stockroom_products` (`id`, `event_id`, `product_warranty_id`, `product_count`, `stockroom_id`, `created_at`, `updated_at`) VALUES
(5, 6, 7, 3, 1, '2020-03-02 04:04:37', '2020-03-02 04:04:37'),
(6, 6, 10, 2, 1, '2020-03-02 04:04:37', '2020-03-02 04:04:37'),
(7, 7, 7, 1, 1, '2020-03-02 04:07:45', '2020-03-02 04:07:45'),
(8, 7, 12, 2, 1, '2020-03-02 04:07:45', '2020-03-02 04:07:45'),
(15, 14, 7, 1, 1, '2020-03-02 14:06:53', '2020-03-02 14:06:53'),
(16, 15, 21, 1, 2, '2020-03-03 05:48:58', '2020-03-03 05:48:58'),
(17, 15, 22, 2, 2, '2020-03-03 05:48:58', '2020-03-03 05:48:58'),
(18, 16, 7, 2, 1, '2020-03-09 05:44:00', '2020-03-09 05:44:00'),
(19, 16, 10, 1, 1, '2020-03-09 05:44:00', '2020-03-09 05:44:00'),
(20, 16, 11, 2, 1, '2020-03-09 05:44:00', '2020-03-09 05:44:00'),
(21, 16, 13, 3, 1, '2020-03-09 05:44:00', '2020-03-09 05:44:00'),
(22, 16, 21, 1, 1, '2020-03-09 05:44:00', '2020-03-09 05:44:00'),
(23, 16, 22, 1, 1, '2020-03-09 05:44:00', '2020-03-09 05:44:00'),
(24, 16, 23, 1, 1, '2020-03-09 05:44:00', '2020-03-09 05:44:00'),
(25, 16, 30, 1, 1, '2020-03-09 05:44:00', '2020-03-09 05:44:00'),
(26, 16, 37, 1, 1, '2020-03-09 05:44:00', '2020-03-09 05:44:00'),
(27, 16, 36, 2, 1, '2020-03-09 05:44:00', '2020-03-09 05:44:00'),
(28, 16, 40, 1, 1, '2020-03-09 05:44:00', '2020-03-09 05:44:00'),
(29, 16, 43, 5, 1, '2020-03-09 05:44:00', '2020-03-09 05:44:00'),
(30, 17, 7, 1, 2, '2020-03-09 13:59:55', '2020-03-09 13:59:55'),
(31, 17, 10, 2, 2, '2020-03-09 13:59:55', '2020-03-09 13:59:55'),
(32, 17, 11, 1, 2, '2020-03-09 13:59:55', '2020-03-09 13:59:55'),
(33, 17, 12, 2, 2, '2020-03-09 13:59:55', '2020-03-09 13:59:55'),
(34, 17, 13, 1, 2, '2020-03-09 13:59:55', '2020-03-09 13:59:55'),
(35, 17, 15, 1, 2, '2020-03-09 13:59:55', '2020-03-09 13:59:55'),
(36, 17, 16, 2, 2, '2020-03-09 13:59:55', '2020-03-09 13:59:55'),
(37, 17, 21, 1, 2, '2020-03-09 13:59:55', '2020-03-09 13:59:55'),
(38, 17, 22, 2, 2, '2020-03-09 13:59:55', '2020-03-09 13:59:55'),
(39, 17, 23, 1, 2, '2020-03-09 13:59:55', '2020-03-09 13:59:55'),
(40, 17, 24, 1, 2, '2020-03-09 13:59:55', '2020-03-09 13:59:55'),
(41, 17, 26, 2, 2, '2020-03-09 13:59:55', '2020-03-09 13:59:55'),
(42, 17, 28, 1, 2, '2020-03-09 13:59:55', '2020-03-09 13:59:55'),
(43, 17, 29, 2, 2, '2020-03-09 13:59:55', '2020-03-09 13:59:55'),
(44, 17, 30, 1, 2, '2020-03-09 13:59:55', '2020-03-09 13:59:55'),
(45, 17, 36, 1, 2, '2020-03-09 13:59:55', '2020-03-09 13:59:55'),
(46, 17, 37, 2, 2, '2020-03-09 13:59:55', '2020-03-09 13:59:55'),
(47, 17, 38, 1, 2, '2020-03-09 13:59:55', '2020-03-09 13:59:55'),
(48, 17, 40, 2, 2, '2020-03-09 13:59:55', '2020-03-09 13:59:55'),
(49, 17, 42, 1, 2, '2020-03-09 13:59:55', '2020-03-09 13:59:55'),
(50, 17, 43, 2, 2, '2020-03-09 13:59:55', '2020-03-09 13:59:55'),
(51, 17, 44, 2, 2, '2020-03-09 13:59:55', '2020-03-09 13:59:55'),
(52, 18, 22, 1, 1, '2020-03-11 18:45:50', '2020-03-11 18:45:50'),
(53, 19, 12, 2, 1, '2020-03-11 20:00:09', '2020-03-11 20:00:09'),
(54, 20, 12, 1, 1, '2020-03-14 08:57:27', '2020-03-14 08:57:27'),
(55, 21, 40, 1, 1, '2020-03-14 10:17:45', '2020-03-14 10:17:45'),
(56, 22, 40, 1, 1, '2020-03-14 10:23:38', '2020-03-14 10:23:38'),
(57, 23, 40, 1, 1, '2020-03-14 10:26:53', '2020-03-14 10:26:53'),
(58, 24, 40, 1, 1, '2020-03-14 10:34:48', '2020-03-14 10:34:48'),
(59, 25, 40, 1, 1, '2020-03-14 10:36:02', '2020-03-14 10:36:02'),
(60, 26, 12, 1, 1, '2020-03-14 10:39:38', '2020-03-14 10:39:38'),
(61, 27, 43, 1, 1, '2020-03-14 07:12:27', '2020-03-14 07:12:27'),
(62, 27, 40, 1, 1, '2020-03-14 07:12:27', '2020-03-14 07:12:27'),
(63, 28, 12, 1, 1, '2020-03-14 10:46:36', '2020-03-14 10:46:36'),
(65, 30, 12, 1, 1, '2020-03-14 10:52:43', '2020-03-14 10:52:43'),
(66, 31, 40, 1, 1, '2020-03-14 10:54:32', '2020-03-14 10:54:32'),
(67, 32, 40, 1, 1, '2020-03-14 10:55:51', '2020-03-14 10:55:51'),
(68, 33, 12, 1, 1, '2020-03-14 11:00:02', '2020-03-14 11:00:02'),
(69, 34, 12, 1, 1, '2020-03-14 11:00:27', '2020-03-14 11:00:27'),
(70, 35, 40, 1, 1, '2020-03-14 11:01:20', '2020-03-14 11:01:20'),
(71, 36, 40, 1, 1, '2020-03-14 17:01:33', '2020-03-14 17:01:33'),
(72, 37, 47, 2, 1, '2020-03-31 10:48:29', '2020-03-31 10:48:29'),
(73, 38, 40, 1, 1, '2020-03-31 11:21:08', '2020-03-31 11:21:08'),
(74, 39, 40, 1, 1, '2020-03-31 11:27:34', '2020-03-31 11:27:34'),
(75, 40, 37, 1, 1, '2020-04-03 10:42:11', '2020-04-03 10:42:11'),
(76, 40, 53, 1, 1, '2020-04-03 10:42:11', '2020-04-03 10:42:11'),
(77, 41, 23, 1, 2, '2020-04-03 12:08:38', '2020-04-03 12:08:38'),
(78, 41, 36, 2, 2, '2020-04-03 12:08:38', '2020-04-03 12:08:38'),
(79, 42, 23, 2, 2, '2020-04-03 12:10:23', '2020-04-03 12:10:23'),
(80, 42, 36, 3, 2, '2020-04-03 12:10:23', '2020-04-03 12:10:23'),
(81, 43, 23, 2, 2, '2020-04-04 10:00:41', '2020-04-04 10:00:41'),
(82, 43, 36, 3, 2, '2020-04-04 10:00:41', '2020-04-04 10:00:41'),
(83, 44, 55, 10, 1, '2020-05-21 03:49:20', '2020-05-21 03:49:20'),
(84, 45, 12, 1, 1, '2021-02-02 10:28:31', '2021-02-02 10:28:31');

-- --------------------------------------------------------

--
-- Table structure for table `submission_events`
--

CREATE TABLE `submission_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `from` smallint(6) NOT NULL,
  `to` smallint(6) NOT NULL,
  `tozihat` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `submission_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `submission_events`
--

INSERT INTO `submission_events` (`id`, `created_at`, `updated_at`, `user_id`, `from`, `to`, `tozihat`, `submission_id`) VALUES
(1, '2020-04-29 11:09:17', '2020-04-29 11:09:17', 26, 1, 2, 'تست', 42),
(2, '2020-04-29 11:09:46', '2020-04-29 11:09:46', 26, 2, 3, NULL, 42),
(3, '2020-04-30 04:17:03', '2020-04-30 04:17:03', 9, 2, 3, 'آماده سازی محصولات این مرسوله انجام و از انبار خارج شد', 10),
(4, '2020-08-12 03:49:07', '2020-08-12 03:49:07', 26, 1, 2, NULL, 63),
(5, '2020-10-01 10:57:08', '2020-10-01 10:57:08', 26, 1, 2, NULL, 8),
(6, '2020-10-01 12:41:51', '2020-10-01 12:41:51', 26, 1, 2, NULL, 58),
(7, '2020-10-01 12:42:12', '2020-10-01 12:42:12', 26, 2, 3, NULL, 58),
(8, '2020-10-01 12:42:24', '2020-10-01 12:42:24', 26, 3, 4, 'مرسوله تحویل پست گردید', 58),
(9, '2020-10-01 12:48:34', '2020-10-01 12:48:34', 26, 2, 1, NULL, 63),
(10, '2020-10-01 12:48:38', '2020-10-01 12:48:38', 26, 1, 0, NULL, 63),
(11, '2020-10-01 12:48:43', '2020-10-01 12:48:43', 26, 0, 1, NULL, 63),
(12, '2020-10-01 12:54:02', '2020-10-01 12:54:02', 26, 0, 1, NULL, 97),
(13, '2020-10-01 12:54:25', '2020-10-01 12:54:25', 26, 1, 0, NULL, 97),
(14, '2020-10-01 12:54:45', '2020-10-01 12:54:45', 26, 1, 2, NULL, 7),
(15, '2020-10-07 05:52:20', '2020-10-07 05:52:20', 26, 1, 3, NULL, 63),
(16, '2020-10-07 05:55:09', '2020-10-07 05:55:09', 26, 3, 4, NULL, 63),
(17, '2021-02-02 07:07:40', '2021-02-02 07:07:40', 26, 1, 0, NULL, 115),
(18, '2021-02-02 07:08:05', '2021-02-02 07:08:05', 26, 0, 0, 'تحویل مرسوله به خریدار انجام شد', 115),
(19, '2021-02-02 07:08:12', '2021-02-02 07:08:12', 26, 0, 0, NULL, 115);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `account_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active_code` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user',
  `role_id` int(11) NOT NULL DEFAULT 0,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `forget_password_code` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `mobile`, `password`, `account_status`, `active_code`, `remember_token`, `created_at`, `updated_at`, `deleted_at`, `role`, `role_id`, `username`, `forget_password_code`) VALUES
(9, 'علی صدیقی', '09141592083', '$2y$10$nMUtzVmGKFVgC8JZL5mx5uX/qZXVssjnSSoSRx5BU/igOPYrqIH8.', 'active', 530926, 'E8r7wZx4c63DU4UbWR4gnKpinctFDhBCLJ9UdVrYPaalFms74OkTqwbUXurN', '2019-11-01 14:25:02', '2020-12-02 15:20:56', NULL, 'user', 2, NULL, 973855),
(10, NULL, '09141592084', '$2y$10$QiSwwR36sZ8M/HBhF8upI.Ta7JMbgFMZHDsk3ozzYp2QhwSJYHDhO', 'active', NULL, NULL, '2020-01-28 04:32:30', '2020-01-28 04:32:50', NULL, 'user', 0, NULL, NULL),
(11, NULL, '09141592085', '$2y$10$uJT4kVlvqbrAxo/WpsQQ8uAetfcC7TlV6Iv.gba1jc9LU9unYF4oe', 'active', NULL, NULL, '2020-02-14 05:09:18', '2020-02-23 06:20:38', NULL, 'user', 0, NULL, NULL),
(25, NULL, '09141101010', '$2y$10$uzBWadHTBn3PspP0OCaYteyAsJYfjLiG.DymZcIQfO.8J7k9/s9Dq', 'active', NULL, 'ZenI1I0RBLK8QDdNZp3q221MnHRuIeZSoN75JiFkyVk32zYVYHjxH6oxI2nZ', '2020-02-18 15:05:58', '2020-02-23 06:20:38', NULL, 'user', 0, NULL, NULL),
(26, 'مدیر', '09141592020', '$2y$10$Y3B8YYpmXIKMjSDSUNGmXu66s6fiaq1fu29lPtgAx3ZNZt4OTV8ba', 'active', NULL, 'yVAUEu781kypuDwvYa5YxzzrDkj8pCk5Sny2n3yJDRL9jv1D8SXodQVyB4xH', '2020-02-23 05:38:37', '2020-02-23 14:30:10', NULL, 'admin', 0, 'admin', NULL),
(27, NULL, '09141592021', '$2y$10$EMm3dlLUs0hSw5waqSs4Qe2THXVGFqC1ZNIIGKH9vRO6YyWE10bXy', 'InActive', 558763, NULL, '2020-03-08 15:36:48', '2020-04-30 04:43:35', NULL, 'user', 0, NULL, NULL),
(36, NULL, '9141598080', '$2y$10$1TXDlNZSx6unu6Y4.649HuiiRx9DWNoNTGktgspHfqEEA1VOh1iua', 'InActive', 583998, NULL, '2020-06-22 00:39:24', '2020-06-22 00:39:24', NULL, 'user', 0, NULL, NULL),
(38, NULL, '09141101020', '$2y$10$bAcHa8hsKxSyL3b0yQm2Xuli3Ux1rVhcRl0d5TOvm5Fg6ijTRonIy', 'InActive', 461847, NULL, '2020-07-09 14:59:47', '2020-07-09 14:59:47', NULL, 'user', 0, NULL, NULL),
(44, 'ali sedighi', '09141591515', '$2y$10$sSnrl6xJq7JNyz2AFjhc8uEsY0sKXJkSHVF5Q2.X2CY60XJq9uRvS', 'active', 541943, 'hf9QCrwGBqBXgMbaZqu4qY1aTrJ0Qwa1I7POfUcfJS6122wi0ytNg4DDUe8a', '2020-08-03 23:58:57', '2020-08-04 00:21:19', NULL, 'user', 0, NULL, NULL),
(47, NULL, '09365736719', '$2y$10$xgybNIGFrV/oYSagT/YN4Oe.gERcwOyJtvVWolJ42kpe3QuwxYhBO', 'InActive', 672219, NULL, '2020-10-18 14:41:21', '2020-10-18 14:41:21', NULL, 'user', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'نویسنده', NULL, '2020-02-21 14:27:07', '2020-02-21 15:08:24'),
(2, 'انباردار', NULL, '2020-02-21 15:13:50', '2020-02-21 15:13:50');

-- --------------------------------------------------------

--
-- Table structure for table `user_scored_status`
--

CREATE TABLE `user_scored_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `row_id` int(11) NOT NULL,
  `score_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_scored_status`
--

INSERT INTO `user_scored_status` (`id`, `user_id`, `type`, `row_id`, `score_type`) VALUES
(52, 10, 'comments', 2, 'dislike'),
(54, 9, 'comments', 2, 'dislike'),
(55, 9, 'comments', 2, 'like'),
(58, 9, 'questions', 3, 'dislike'),
(59, 9, 'questions', 4, 'like'),
(63, 9, 'questions', 2, 'like'),
(64, 9, 'comments', 3, 'like');

-- --------------------------------------------------------

--
-- Table structure for table `warranties`
--

CREATE TABLE `warranties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `warranties`
--

INSERT INTO `warranties` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'گارانتی ۱۸ ماهه هما تلکام', NULL, '2019-02-11 09:23:18', '2019-02-11 09:39:47'),
(2, 'گارانتی اصالت و سلامت فیزیکی کالا', NULL, '2019-02-11 09:40:36', '2019-02-11 10:10:09'),
(3, 'گارانتی ۱۸ ماهه الماس سیستم', NULL, '2019-07-02 00:52:05', '2020-12-07 19:27:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `additional_infos`
--
ALTER TABLE `additional_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_common_questions`
--
ALTER TABLE `category_common_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cat_brands`
--
ALTER TABLE `cat_brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment_scores`
--
ALTER TABLE `comment_scores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commissions`
--
ALTER TABLE `commissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `common_questions`
--
ALTER TABLE `common_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discount_codes`
--
ALTER TABLE `discount_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `filter`
--
ALTER TABLE `filter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `filter_product`
--
ALTER TABLE `filter_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gift_carts`
--
ALTER TABLE `gift_carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory_lists`
--
ALTER TABLE `inventory_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_value`
--
ALTER TABLE `item_value`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

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
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `old_price`
--
ALTER TABLE `old_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_discount`
--
ALTER TABLE `order_discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_infos`
--
ALTER TABLE `order_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_products`
--
ALTER TABLE `package_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_gallery`
--
ALTER TABLE `product_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_price`
--
ALTER TABLE `product_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sale_statistics`
--
ALTER TABLE `product_sale_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_warranties`
--
ALTER TABLE `product_warranties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reject_message`
--
ALTER TABLE `reject_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review_product`
--
ALTER TABLE `review_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_accesses`
--
ALTER TABLE `role_accesses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale_statistics`
--
ALTER TABLE `sale_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sellers_email_unique` (`email`),
  ADD UNIQUE KEY `sellers_mobile_unique` (`mobile`);

--
-- Indexes for table `seller_document`
--
ALTER TABLE `seller_document`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller_products`
--
ALTER TABLE `seller_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller_sale_statistics`
--
ALTER TABLE `seller_sale_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `send_type_order`
--
ALTER TABLE `send_type_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stockrooms`
--
ALTER TABLE `stockrooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stockroom_events`
--
ALTER TABLE `stockroom_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stockroom_products`
--
ALTER TABLE `stockroom_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submission_events`
--
ALTER TABLE `submission_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_mobile_unique` (`mobile`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_scored_status`
--
ALTER TABLE `user_scored_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warranties`
--
ALTER TABLE `warranties`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `additional_infos`
--
ALTER TABLE `additional_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT for table `category_common_questions`
--
ALTER TABLE `category_common_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cat_brands`
--
ALTER TABLE `cat_brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `comment_scores`
--
ALTER TABLE `comment_scores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `commissions`
--
ALTER TABLE `commissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `common_questions`
--
ALTER TABLE `common_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `discount_codes`
--
ALTER TABLE `discount_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `filter`
--
ALTER TABLE `filter`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `filter_product`
--
ALTER TABLE `filter_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `gift_carts`
--
ALTER TABLE `gift_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `inventory_lists`
--
ALTER TABLE `inventory_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT for table `item_value`
--
ALTER TABLE `item_value`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1906;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `old_price`
--
ALTER TABLE `old_price`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `order_discount`
--
ALTER TABLE `order_discount`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `order_infos`
--
ALTER TABLE `order_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=502;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `package_products`
--
ALTER TABLE `package_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `product_color`
--
ALTER TABLE `product_color`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=326;

--
-- AUTO_INCREMENT for table `product_gallery`
--
ALTER TABLE `product_gallery`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `product_price`
--
ALTER TABLE `product_price`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `product_sale_statistics`
--
ALTER TABLE `product_sale_statistics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `product_warranties`
--
ALTER TABLE `product_warranties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `province`
--
ALTER TABLE `province`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `reject_message`
--
ALTER TABLE `reject_message`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `review_product`
--
ALTER TABLE `review_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `role_accesses`
--
ALTER TABLE `role_accesses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `sale_statistics`
--
ALTER TABLE `sale_statistics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `seller_document`
--
ALTER TABLE `seller_document`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `seller_products`
--
ALTER TABLE `seller_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `seller_sale_statistics`
--
ALTER TABLE `seller_sale_statistics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `send_type_order`
--
ALTER TABLE `send_type_order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `stockrooms`
--
ALTER TABLE `stockrooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stockroom_events`
--
ALTER TABLE `stockroom_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `stockroom_products`
--
ALTER TABLE `stockroom_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `submission_events`
--
ALTER TABLE `submission_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_scored_status`
--
ALTER TABLE `user_scored_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `warranties`
--
ALTER TABLE `warranties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
