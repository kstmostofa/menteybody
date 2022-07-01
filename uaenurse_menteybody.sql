-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 27, 2022 at 02:08 AM
-- Server version: 5.7.23-23
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uaenurse_menteybody`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `advertisement_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `advertisement_status` int(11) NOT NULL DEFAULT '0' COMMENT '0: disable 1: enable',
  `advertisement_place` int(11) NOT NULL DEFAULT '1' COMMENT '1:listing results pages 2: listing search page 3: business listing page 4: blog posts pages 5: blog topic pages 6: blog tag pages 7: single post page',
  `advertisement_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `advertisement_position` int(11) NOT NULL DEFAULT '1' COMMENT '0: disable 1: enable',
  `advertisement_alignment` int(11) NOT NULL DEFAULT '1' COMMENT '1: left 2: center 3: right',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `attribute_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_type` int(11) NOT NULL DEFAULT '1' COMMENT '1:text 2:select 3:multi-select 4:link',
  `attribute_seed_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `canvas_posts`
--

CREATE TABLE `canvas_posts` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(95) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `published_at` datetime DEFAULT NULL,
  `featured_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_image_caption` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `canvas_posts_tags`
--

CREATE TABLE `canvas_posts_tags` (
  `post_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `canvas_posts_topics`
--

CREATE TABLE `canvas_posts_topics` (
  `post_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `canvas_tags`
--

CREATE TABLE `canvas_tags` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(95) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `canvas_topics`
--

CREATE TABLE `canvas_topics` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(95) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `canvas_user_meta`
--

CREATE TABLE `canvas_user_meta` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dark_mode` tinyint(4) DEFAULT '0',
  `digest` tinyint(4) DEFAULT '0',
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `canvas_views`
--

CREATE TABLE `canvas_views` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `canvas_visits`
--

CREATE TABLE `canvas_visits` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_parent_id` int(11) DEFAULT NULL,
  `category_description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_slug`, `category_icon`, `created_at`, `updated_at`, `category_parent_id`, `category_description`) VALUES
(24, 'Massage Spa Services', 'massage-spa-services', 'fas fa-spa', '2021-11-14 04:27:14', '2021-12-31 05:33:31', NULL, 'Massage and Spa services in UAE. Massage and Spa services include Facial Treatments, Body Treatments, Massage Treatments, For Mothers-to-be, Wedding Journey, Kids, and Teens Spa, Beauty Spa, Baby Spa'),
(25, 'Facial Treatments', 'facial-treatments-spa', 'far fa-smile-beam', '2021-11-14 04:33:49', '2021-11-14 04:33:49', 24, 'Facial Treatments in Spa.'),
(28, 'Beauty Salon & Parlour', 'beauty-salon-parlour-uae', NULL, '2021-11-14 04:50:33', '2021-12-19 14:57:30', NULL, 'Beauty Salon & Parlours in UAE - Find Massage Centres and Spas near you - Swedish massage, Hot stone massage, Aromatherapy massage, Ayurvedic Massage, Deep tissue massage, Reflexology, Thai massage, Prenatal massage, Couple’s Massage, Balinese Massage'),
(29, 'Beauty & Wellness Centre', 'beauty-wellness-center-uae', NULL, '2021-11-14 04:50:33', '2021-12-19 14:57:41', NULL, NULL),
(30, 'Health & Fitness Centre', 'health-fitness-uae', NULL, '2021-11-14 04:50:33', '2021-12-19 14:57:51', NULL, NULL),
(31, 'Others', 'others-uae', NULL, '2021-11-14 04:50:33', '2021-12-19 14:58:08', NULL, NULL),
(32, 'Facial Treatments', 'Facial-Treatments-uae', NULL, '2021-11-14 04:50:33', '2021-11-21 06:20:34', 24, 'Find the best Facial Treatments centre / service in the UAE. Get detailed information about Facial Treatments service, book appointments and plan your visit - Menteybody.com'),
(33, 'Body Treatments', 'Body-Treatments-uae', NULL, '2021-11-14 04:50:33', '2021-11-21 06:20:34', 24, 'Find the best Body Treatments centre / service in the UAE. Get detailed information about Body Treatments service, book appointments and plan your visit - Menteybody.com'),
(34, 'Massage Treatments', 'Massage-Treatments-uae', NULL, '2021-11-14 04:50:33', '2021-11-21 06:20:34', 24, 'Find the best Massage Treatments centre / service in the UAE. Get detailed information about Massage Treatments service, book appointments and plan your visit - Menteybody.com'),
(35, 'For Mothers-to-be', 'For-Mothers-to-be-uae', NULL, '2021-11-14 04:50:33', '2021-11-21 06:20:34', 24, 'Find the best For Mothers-to-be centre / service in the UAE. Get detailed information about For Mothers-to-be service, book appointments and plan your visit - Menteybody.com'),
(36, 'Wedding Journey', 'Wedding-Journey-uae', NULL, '2021-11-14 04:50:33', '2021-11-21 06:20:34', 24, 'Find the best Wedding Journey centre / service in the UAE. Get detailed information about Wedding Journey service, book appointments and plan your visit - Menteybody.com'),
(37, 'Kids and Teens Spa', 'Kids-and-Teens-Spa-uae', NULL, '2021-11-14 04:50:33', '2021-11-21 06:20:34', 24, 'Find the best Kids and Teens Spa centre / service in the UAE. Get detailed information about Kids and Teens Spa service, book appointments and plan your visit - Menteybody.com'),
(38, 'Beauty Spa', 'Beauty-Spa-uae', NULL, '2021-11-14 04:50:33', '2021-11-21 06:20:34', 24, 'Find the best Beauty Spa centre / service in the UAE. Get detailed information about Beauty Spa service, book appointments and plan your visit - Menteybody.com'),
(39, 'Baby Spa', 'Baby-Spa-uae', NULL, '2021-11-14 04:50:33', '2021-11-21 06:20:34', 24, 'Find the best Baby Spa centre / service in the UAE. Get detailed information about Baby Spa service, book appointments and plan your visit - Menteybody.com'),
(40, 'Swedish massage', 'Swedish-massage-uae', NULL, '2021-11-14 04:50:33', '2021-11-21 06:20:34', 24, 'Find the best Swedish massage centre / service in the UAE. Get detailed information about Swedish massage service, book appointments and plan your visit - Menteybody.com'),
(41, 'Hot stone massage', 'Hot-stone-massage-uae', NULL, '2021-11-14 04:50:33', '2021-11-21 06:20:34', 24, 'Find the best Hot stone massage centre / service in the UAE. Get detailed information about Hot stone massage service, book appointments and plan your visit - Menteybody.com'),
(42, 'Aromatherapy massage', 'Aromatherapy-massage-uae', NULL, '2021-11-14 04:50:33', '2021-11-21 06:20:34', 24, 'Find the best Aromatherapy massage centre / service in the UAE. Get detailed information about Aromatherapy massage service, book appointments and plan your visit - Menteybody.com'),
(43, 'Ayurvedic Massage', 'Ayurvedic-Massage-uae', NULL, '2021-11-14 04:50:33', '2021-11-21 06:20:34', 24, 'Find the best Ayurvedic Massage centre / service in the UAE. Get detailed information about Ayurvedic Massage service, book appointments and plan your visit - Menteybody.com'),
(44, 'Deep tissue massage', 'Deep-tissue-massage-uae', NULL, '2021-11-14 04:50:33', '2021-11-21 06:20:34', 24, 'Find the best Deep tissue massage centre / service in the UAE. Get detailed information about Deep tissue massage service, book appointments and plan your visit - Menteybody.com'),
(45, 'Sports massage', 'Sports-massage-uae', NULL, '2021-11-14 04:50:33', '2021-11-21 06:20:34', 24, 'Find the best Sports massage centre / service in the UAE. Get detailed information about Sports massage service, book appointments and plan your visit - Menteybody.com'),
(46, 'Trigger point massage', 'Trigger-point-massage-uae', NULL, '2021-11-14 04:50:33', '2021-11-21 06:20:34', 24, 'Find the best Trigger point massage centre / service in the UAE. Get detailed information about Trigger point massage service, book appointments and plan your visit - Menteybody.com'),
(47, 'Reflexology', 'Reflexology-uae', NULL, '2021-11-14 04:50:33', '2021-11-21 06:20:34', 24, 'Find the best Reflexology centre / service in the UAE. Get detailed information about Reflexology service, book appointments and plan your visit - Menteybody.com'),
(48, 'Shiatsu massage', 'Shiatsu-massage-uae', NULL, '2021-11-14 04:50:33', '2021-11-21 06:20:34', 24, 'Find the best Shiatsu massage centre / service in the UAE. Get detailed information about Shiatsu massage service, book appointments and plan your visit - Menteybody.com'),
(49, 'Thai massage', 'Thai-massage-uae', NULL, '2021-11-14 04:50:33', '2021-11-21 06:20:34', 24, 'Find the best Thai massage centre / service in the UAE. Get detailed information about Thai massage service, book appointments and plan your visit - Menteybody.com'),
(50, 'Prenatal massage', 'Prenatal-massage-uae', NULL, '2021-11-14 04:50:33', '2021-11-21 06:20:34', 24, 'Find the best Prenatal massage centre / service in the UAE. Get detailed information about Prenatal massage service, book appointments and plan your visit - Menteybody.com'),
(51, 'Couple’s massage', 'Couples-massage-uae', NULL, '2021-11-14 04:50:33', '2021-11-21 06:20:34', 24, 'Find the best Couple’s massage centre / service in the UAE. Get detailed information about Couple’s massage service, book appointments and plan your visit - Menteybody.com'),
(52, 'Chair massage', 'Chair-massage-uae', NULL, '2021-11-14 04:50:33', '2021-11-21 06:20:34', 24, 'Find the best Chair massage centre / service in the UAE. Get detailed information about Chair massage service, book appointments and plan your visit - Menteybody.com'),
(53, 'Watsu massage', 'Watsu-massage-uae', NULL, '2021-11-14 04:50:33', '2021-11-21 06:20:34', 24, 'Find the best Watsu massage centre / service in the UAE. Get detailed information about Watsu massage service, book appointments and plan your visit - Menteybody.com'),
(54, 'Lymph Massage', 'Lymph-Massage-uae', NULL, '2021-11-14 04:50:33', '2021-11-21 06:20:34', 24, 'Find the best Lymph Massage centre / service in the UAE. Get detailed information about Lymph Massage service, book appointments and plan your visit - Menteybody.com'),
(55, 'Lifestream Massage', 'Lifestream-Massage-uae', NULL, '2021-11-14 04:50:33', '2021-11-21 06:20:34', 24, 'Find the best Lifestream Massage centre / service in the UAE. Get detailed information about Lifestream Massage service, book appointments and plan your visit - Menteybody.com'),
(56, 'Healing Touch', 'Healing-Touch-uae', NULL, '2021-11-14 04:50:33', '2021-11-21 06:20:34', 24, 'Find the best Healing Touch centre / service in the UAE. Get detailed information about Healing Touch service, book appointments and plan your visit - Menteybody.com'),
(57, 'Anma Massage (Japanese)', 'Anma-Massage-Japanese-uae', NULL, '2021-11-14 04:50:33', '2021-11-21 06:20:34', 24, 'Find the best Anma Massage (Japanese) centre / service in the UAE. Get detailed information about Anma Massage (Japanese) service, book appointments and plan your visit - Menteybody.com'),
(58, 'Balinese Massage', 'Balinese-Massage-uae', NULL, '2021-11-14 04:50:33', '2021-11-21 06:20:34', 24, 'Find the best Balinese Massage centre / service in the UAE. Get detailed information about Balinese Massage service, book appointments and plan your visit - Menteybody.com'),
(59, 'Aqua Massage', 'Aqua-Massage-uae', NULL, '2021-11-14 04:50:33', '2021-11-21 06:20:34', 24, 'Find the best Aqua Massage centre / service in the UAE. Get detailed information about Aqua Massage service, book appointments and plan your visit - Menteybody.com'),
(60, 'Chinese Massage', 'Chinese-Massage-uae', NULL, '2021-11-14 04:50:33', '2021-11-21 06:20:34', 24, 'Find the best Chinese Massage centre / service in the UAE. Get detailed information about Chinese Massage service, book appointments and plan your visit - Menteybody.com'),
(61, 'Hilot Massage', 'Hilot-Massage-uae', NULL, '2021-11-14 04:50:33', '2021-11-21 06:20:34', 24, 'Find the best Hilot Massage centre / service in the UAE. Get detailed information about Hilot Massage service, book appointments and plan your visit - Menteybody.com'),
(62, 'Any Other Type Massage', 'Any-Other-Type-Massage-uae', NULL, '2021-11-14 04:50:33', '2021-11-21 06:20:34', 24, 'Find the best Any Other Type Massage centre / service in the UAE. Get detailed information about Any Other Type Massage service, book appointments and plan your visit - Menteybody.com'),
(63, 'Ayurvedic spa', 'Ayurvedic-spa-uae', NULL, '2021-11-14 04:50:33', '2021-11-21 06:20:34', 24, 'Find the best Ayurvedic spa centre / service in the UAE. Get detailed information about Ayurvedic spa service, book appointments and plan your visit - Menteybody.com'),
(64, 'Bootcamp spa', 'Bootcamp-spa-uae', NULL, '2021-11-14 04:50:33', '2021-11-21 06:20:34', 24, 'Find the best Bootcamp spa centre / service in the UAE. Get detailed information about Bootcamp spa service, book appointments and plan your visit - Menteybody.com'),
(65, 'Club spa', 'Club-spa-uae', NULL, '2021-11-14 04:50:33', '2021-11-21 06:20:34', 24, 'Find the best Club spa centre / service in the UAE. Get detailed information about Club spa service, book appointments and plan your visit - Menteybody.com'),
(66, 'Day spa', 'Day-spa-uae', NULL, '2021-11-14 04:50:33', '2021-11-21 06:20:34', 24, 'Find the best Day spa centre / service in the UAE. Get detailed information about Day spa service, book appointments and plan your visit - Menteybody.com'),
(67, 'Dental spa', 'Dental-spa-uae', NULL, '2021-11-14 04:50:33', '2021-11-21 06:20:34', 24, 'Find the best Dental spa centre / service in the UAE. Get detailed information about Dental spa service, book appointments and plan your visit - Menteybody.com'),
(68, 'Destination spa', 'Destination-spa-uae', NULL, '2021-11-14 04:50:33', '2021-11-21 06:20:34', 24, 'Find the best Destination spa centre / service in the UAE. Get detailed information about Destination spa service, book appointments and plan your visit - Menteybody.com'),
(69, 'Hammam spa', 'Hammam-spa-uae', NULL, '2021-11-14 04:50:33', '2021-11-21 06:20:34', 24, 'Find the best Hammam spa centre / service in the UAE. Get detailed information about Hammam spa service, book appointments and plan your visit - Menteybody.com'),
(70, 'Medical spa', 'Medical-spa-uae', NULL, '2021-11-14 04:50:33', '2021-11-21 06:20:34', 24, 'Find the best Medical spa centre / service in the UAE. Get detailed information about Medical spa service, book appointments and plan your visit - Menteybody.com'),
(71, 'Mineral spring spa', 'Mineral-spring-spa-uae', NULL, '2021-11-14 04:50:33', '2021-11-21 06:20:34', 24, 'Find the best Mineral spring spa centre / service in the UAE. Get detailed information about Mineral spring spa service, book appointments and plan your visit - Menteybody.com'),
(72, 'Spa resort', 'Spa-resort-uae', NULL, '2021-11-14 04:50:33', '2021-11-21 06:20:34', 24, 'Find the best Spa resort centre / service in the UAE. Get detailed information about Spa resort service, book appointments and plan your visit - Menteybody.com'),
(73, 'Thalassotherapy spa', 'Thalassotherapy-spa-uae', NULL, '2021-11-14 04:50:33', '2021-11-21 06:20:34', 24, 'Find the best Thalassotherapy spa centre / service in the UAE. Get detailed information about Thalassotherapy spa service, book appointments and plan your visit - Menteybody.com'),
(75, 'Bridal Make up', 'bridal-make-up-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 05:45:12', 28, 'Find the best Bridal Make up centre / service in the UAE. Get detailed information about Bridal Make up service, book appointments and plan your visit - Menteybody.com'),
(76, 'Hair Spa', 'hair-spa-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 05:45:07', 28, 'Find the best Hair Spa centre / service in the UAE. Get detailed information about Hair Spa service, book appointments and plan your visit - Menteybody.com'),
(77, 'Facials', 'facials-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 05:59:26', 28, 'Find the best Facials centre / service in the UAE. Get detailed information about Facials service, book appointments and plan your visit - Menteybody.com'),
(78, 'Waxing and bleaching', 'waxing-and-bleaching-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 05:44:54', 28, 'Find the best Waxing and bleaching centre / service in the UAE. Get detailed information about Waxing and bleaching service, book appointments and plan your visit - Menteybody.com'),
(79, 'Hair Loss treatment', 'hair-loss-treatment-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 05:44:37', 28, 'Find the best Hair Loss treatment centre / service in the UAE. Get detailed information about Hair Loss treatment service, book appointments and plan your visit - Menteybody.com'),
(80, 'Hair-Cutting', 'hair-cutting-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 05:44:13', 28, 'Find the best Hair-Cutting centre / service in the UAE. Get detailed information about Hair-Cutting service, book appointments and plan your visit - Menteybody.com'),
(81, 'Hair Colouring', 'hair-colouring-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 05:44:07', 28, 'Find the best Hair Colouring centre / service in the UAE. Get detailed information about Hair Colouring service, book appointments and plan your visit - Menteybody.com'),
(82, 'Hair Sytling', 'hair-sytling-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 05:44:02', 28, 'Find the best Hair Sytling centre / service in the UAE. Get detailed information about Hair Sytling service, book appointments and plan your visit - Menteybody.com'),
(83, 'Waxing and Hair removal', 'waxing-and-hair-removal-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 05:43:55', 28, 'Find the best Waxing and Hair removal centre / service in the UAE. Get detailed information about Waxing and Hair removal service, book appointments and plan your visit - Menteybody.com'),
(84, 'Nail treatments', 'nail-treatments-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 05:43:41', 28, 'Find the best Nail treatments centre / service in the UAE. Get detailed information about Nail treatments service, book appointments and plan your visit - Menteybody.com'),
(86, 'Skin care treatments', 'skin-care-treatments-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 05:43:21', 28, 'Find the best Skin care treatments centre / service in the UAE. Get detailed information about Skin care treatments service, book appointments and plan your visit - Menteybody.com'),
(87, 'Tanning', 'tanning-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 05:43:16', 28, 'Find the best Tanning centre / service in the UAE. Get detailed information about Tanning service, book appointments and plan your visit - Menteybody.com'),
(88, 'Face threading', 'face-threading-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 05:43:11', 28, 'Find the best Face threading centre / service in the UAE. Get detailed information about Face threading service, book appointments and plan your visit - Menteybody.com'),
(89, 'Pedicure', 'pedicure-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 05:43:06', 28, 'Find the best Pedicure centre / service in the UAE. Get detailed information about Pedicure service, book appointments and plan your visit - Menteybody.com'),
(90, 'Manicure', 'manicure-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 05:43:01', 28, 'Find the best Manicure centre / service in the UAE. Get detailed information about Manicure service, book appointments and plan your visit - Menteybody.com'),
(91, 'Trimming', 'trimming-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 05:42:54', 28, 'Find the best Trimming centre / service in the UAE. Get detailed information about Trimming service, book appointments and plan your visit - Menteybody.com'),
(92, 'Bleaching Service', 'bleaching-service-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 05:42:41', 28, 'Find the best Bleaching Service centre / service in the UAE. Get detailed information about Bleaching Service service, book appointments and plan your visit - Menteybody.com'),
(93, 'Hair smoothing', 'hair-smoothing-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 05:42:35', 28, 'Find the best Hair smoothing centre / service in the UAE. Get detailed information about Hair smoothing service, book appointments and plan your visit - Menteybody.com'),
(94, 'Nail art', 'nail-art-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 05:42:28', 28, 'Find the best Nail art centre / service in the UAE. Get detailed information about Nail art service, book appointments and plan your visit - Menteybody.com'),
(95, 'Hair straightening', 'hair-straightening-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 05:42:19', 28, 'Find the best Hair straightening centre / service in the UAE. Get detailed information about Hair straightening service, book appointments and plan your visit - Menteybody.com'),
(96, 'Gym & Fitness Centre', 'gym-fitness-centre-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 05:40:52', 30, 'Find the best Gym & Fitness Centre centre / service in the UAE. Get detailed information about Gym & Fitness Centre service, book appointments and plan your visit - Menteybody.com'),
(97, 'Weight Loss', 'weight-loss-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 05:39:33', 30, 'Find the best Weight Loss centre / service in the UAE. Get detailed information about Weight Loss service, book appointments and plan your visit - Menteybody.com'),
(98, 'Bootcamp', 'bootcamp-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 05:40:43', 30, 'Find the best Bootcamp centre / service in the UAE. Get detailed information about Bootcamp service, book appointments and plan your visit - Menteybody.com'),
(99, 'Body Building', 'body-building-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 05:40:35', 30, 'Find the best Body Building centre / service in the UAE. Get detailed information about Body Building service, book appointments and plan your visit - Menteybody.com'),
(100, 'Slimming', 'slimming-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 06:02:49', 29, 'Find the best Slimming centre / service in the UAE. Get detailed information about Slimming service, book appointments and plan your visit - Menteybody.com'),
(101, 'Zumba', 'zumba-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 05:40:07', 30, 'Find the best Zumba centre / service in the UAE. Get detailed information about Zumba service, book appointments and plan your visit - Menteybody.com'),
(102, 'MMA And Kick Boxing', 'mma-kick-boxing-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 06:51:34', 30, 'Find the best MMA And Kick Boxing center / services in the UAE. Get detailed information about MMA And Kick Boxing service, book appointments and plan your visit - Menteybody.com'),
(103, 'Spinning & Indoor Cycling', 'spinning-cycling-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 06:46:19', 30, 'Find the best Spinning & Indoor Cycling centre in the UAE. Get detailed information about Spinning & Indoor Cycling service, book appointments and plan your visit - Menteybody.com'),
(104, 'Ladies Only Gym', 'ladies-only-gym-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 05:38:04', 30, 'Find the best Ladies Only Gym centre / service in the UAE. Get detailed information about Ladies Only Gym service, book appointments and plan your visit - Menteybody.com'),
(105, 'Yoga', 'yoga-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 05:37:52', 30, 'Find the best Yoga centre / service in the UAE. Get detailed information about Yoga service, book appointments and plan your visit - Menteybody.com'),
(106, 'Meditation', 'meditation-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 05:37:17', 30, 'Find the best Meditation centre / service in the UAE. Get detailed information about Meditation service, book appointments and plan your visit - Menteybody.com'),
(107, 'Eczema', 'eczema-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 06:06:36', 29, 'Find the best Eczema centre / service in the UAE. Get detailed information about Eczema service, book appointments and plan your visit - Menteybody.com'),
(108, 'Psoriasis', 'psoriasis-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 06:06:45', 29, 'Find the best Psoriasis centre / service in the UAE. Get detailed information about Psoriasis service, book appointments and plan your visit - Menteybody.com'),
(109, 'Vitiligo', 'vitiligo-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 06:06:50', 29, 'Find the best Vitiligo centre / service in the UAE. Get detailed information about Vitiligo service, book appointments and plan your visit - Menteybody.com'),
(110, 'Childhood Obesity', 'childhood-obesity-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 06:20:50', 29, 'Find the best Childhood Obesity centre / service in the UAE. Get detailed information about Childhood Obesity service, book appointments and plan your visit - Menteybody.com'),
(111, 'Poor Weight Gain', 'poor-weight-gain-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 06:06:55', 29, 'Find the best Poor Weight Gain centre / service in the UAE. Get detailed information about Poor Weight Gain service, book appointments and plan your visit - Menteybody.com'),
(112, 'Acne & Acne Scar Solutions', 'acne-acne-scar-solutions-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 06:16:27', 29, 'Find the best Acne & Acne Scar Solutions centre / service in the UAE. Get detailed information about Acne & Acne Scar Solutions service, book appointments and plan your visit - Menteybody.com'),
(113, 'Age Control Solutions', 'age-control-solutions-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 06:16:34', 29, 'Find the best Age Control Solutions centre / service in the UAE. Get detailed information about Age Control Solutions service, book appointments and plan your visit - Menteybody.com'),
(114, 'Dark Circle Solutions', 'dark-circle-solutions-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 06:16:41', 29, 'Find the best Dark Circle Solutions centre / service in the UAE. Get detailed information about Dark Circle Solutions service, book appointments and plan your visit - Menteybody.com'),
(115, 'Hand & Feet Rejuvenation', 'Hand-Feet-Rejuvenation-uae', NULL, '2021-11-14 04:50:33', '2021-11-21 06:20:34', 24, 'Find the best Hand & Feet Rejuvenation centre / service in the UAE. Get detailed information about Hand & Feet Rejuvenation service, book appointments and plan your visit - Menteybody.com'),
(116, 'Lip Enhancement Solutions', 'lip-enhancement-solutions-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 06:07:00', 29, 'Find the best Lip Enhancement Solutions centre / service in the UAE. Get detailed information about Lip Enhancement Solutions service, book appointments and plan your visit - Menteybody.com'),
(117, 'Pigmentation Solutions', 'pigmentation-solutions-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 06:07:08', 29, 'Find the best Pigmentation Solutions centre / service in the UAE. Get detailed information about Pigmentation Solutions service, book appointments and plan your visit - Menteybody.com'),
(118, 'Skin Glow Solutions', 'skin-glow-solutions-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 06:07:22', 29, 'Find the best Skin Glow Solutions centre / service in the UAE. Get detailed information about Skin Glow Solutions service, book appointments and plan your visit - Menteybody.com'),
(119, 'Ultima Laser Hair Reduction Solutions', 'ultima-laser-hair-reduction-solutions-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 06:07:27', 29, 'Find the best Ultima Laser Hair Reduction Solutions centre / service in the UAE. Get detailed information about Ultima Laser Hair Reduction Solutions service, book appointments and plan your visit - Menteybody.com'),
(120, 'Wart Removal', 'wart-removal-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 06:07:38', 29, 'Find the best Wart Removal centre / service in the UAE. Get detailed information about Wart Removal service, book appointments and plan your visit - Menteybody.com'),
(121, 'Volume Filling & Augmentation Solutions', 'volume-filling-augmentation-solutions-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 06:07:44', 29, 'Find the best Volume Filling & Augmentation Solutions centre / service in the UAE. Get detailed information about Volume Filling & Augmentation Solutions service, book appointments and plan your visit - Menteybody.com'),
(122, 'Skin Rejuvenation', 'skin-rejuvenation-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 06:20:57', 29, 'Find the best Skin Rejuvenation centre / service in the UAE. Get detailed information about Skin Rejuvenation service, book appointments and plan your visit - Menteybody.com'),
(123, 'Stretch Mark Solutions', 'stretch-mark-solutions-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 06:07:53', 29, 'Find the best Stretch Mark Solutions centre / service in the UAE. Get detailed information about Stretch Mark Solutions service, book appointments and plan your visit - Menteybody.com'),
(124, 'Sweat-Free Solutions', 'sweat-free-solutions-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 06:08:09', 29, 'Find the best Sweat-Free Solutions centre / service in the UAE. Get detailed information about Sweat-Free Solutions service, book appointments and plan your visit - Menteybody.com'),
(125, 'Active Release Therapy/Technique (ART)', 'active-release-therapy-technique-art-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 06:08:20', 29, 'Find the best Active Release Therapy/Technique (ART)  centre / service in the UAE. Get detailed information about Active Release Therapy/Technique (ART)  service, book appointments and plan your visit - Menteybody.com'),
(126, 'Myofascial Release Therapy', 'myofascial-release-therapy-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 06:08:25', 29, 'Find the best Myofascial Release Therapy centre / service in the UAE. Get detailed information about Myofascial Release Therapy service, book appointments and plan your visit - Menteybody.com'),
(127, 'Acupressure / Acupuncture', 'acupressure-acupuncture-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 06:08:33', 29, 'Find the best Acupressure / Acupuncture centre / service in the UAE. Get detailed information about Acupressure / Acupuncture service, book appointments and plan your visit - Menteybody.com'),
(128, 'Cupping Therapy', 'cupping-therapy-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 06:08:40', 29, 'Find the best Cupping Therapy centre / service in the UAE. Get detailed information about Cupping Therapy service, book appointments and plan your visit - Menteybody.com'),
(129, 'Craniosacral Therapy', 'craniosacral-therapy-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 06:08:46', 29, 'Find the best Craniosacral Therapy centre / service in the UAE. Get detailed information about Craniosacral Therapy service, book appointments and plan your visit - Menteybody.com'),
(130, 'Trigger Point Therapy', 'trigger-point-therapy-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 06:14:49', 29, 'Find the best Trigger Point Therapy centre / service in the UAE. Get detailed information about Trigger Point Therapy service, book appointments and plan your visit - Menteybody.com'),
(131, 'Biodynamic Massage Therapy', 'Biodynamic-Massage-Therapy-uae', NULL, '2021-11-14 04:50:33', '2021-11-21 06:20:34', 24, 'Find the best Biodynamic Massage Therapy centre / service in the UAE. Get detailed information about Biodynamic Massage Therapy service, book appointments and plan your visit - Menteybody.com'),
(132, 'Lomilomi Massage Therapy', 'Lomilomi-Massage-Therapy-uae', NULL, '2021-11-14 04:50:33', '2021-11-21 06:20:34', 24, 'Find the best Lomilomi Massage Therapy centre / service in the UAE. Get detailed information about Lomilomi Massage Therapy service, book appointments and plan your visit - Menteybody.com'),
(133, 'Ashiatsu Therapy', 'Ashiatsu-Therapy-uae', NULL, '2021-11-14 04:50:33', '2021-11-21 06:20:34', 24, 'Find the best Ashiatsu Therapy centre / service in the UAE. Get detailed information about Ashiatsu Therapy service, book appointments and plan your visit - Menteybody.com'),
(134, 'Aquatic Bodywork Therapy', 'Aquatic-Bodywork-Therapy-uae', NULL, '2021-11-14 04:50:33', '2021-11-21 06:20:34', 24, 'Find the best Aquatic Bodywork Therapy centre / service in the UAE. Get detailed information about Aquatic Bodywork Therapy service, book appointments and plan your visit - Menteybody.com'),
(135, 'Burmese Massage Therapy', 'Burmese-Massage-Therapy-uae', NULL, '2021-11-14 04:50:33', '2021-11-21 06:20:34', 24, 'Find the best Burmese Massage Therapy centre / service in the UAE. Get detailed information about Burmese Massage Therapy service, book appointments and plan your visit - Menteybody.com'),
(136, 'Structural Integration Therapy / Rolfing', 'structural-integration-therapy-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 06:16:09', 29, 'Find the best Structural Integration Therapy / Rolfing centre / service in the UAE. Get detailed information about Structural Integration Therapy / Rolfing service, book appointments and plan your visit - Menteybody.com'),
(137, 'BioMechanical Stimulation (BMS) Therapy', 'biomechanical-stimulation-bms-therapy-uae', NULL, '2021-11-14 04:50:33', '2021-12-31 06:16:14', 29, 'Find the best BioMechanical Stimulation (BMS) Therapy centre / service in the UAE. Get detailed information about BioMechanical Stimulation (BMS) Therapy service, book appointments and plan your visit - Menteybody.com'),
(138, 'Amatsu', 'Amatsu-uae', NULL, '2021-11-14 04:50:33', '2021-11-21 06:20:34', 24, 'Find the best Amatsu centre / service in the UAE. Get detailed information about Amatsu service, book appointments and plan your visit - Menteybody.com'),
(139, 'Lymphatic Drainage Therapy', 'Lymphatic-Drainage-Therapy-uae', NULL, '2021-11-14 04:50:33', '2021-11-21 06:20:34', 24, 'Find the best Lymphatic Drainage Therapy centre / service in the UAE. Get detailed information about Lymphatic Drainage Therapy service, book appointments and plan your visit - Menteybody.com'),
(140, 'Detan', 'detan-beauty-wellness-uae', NULL, '2021-12-31 06:23:02', '2021-12-31 06:23:02', 29, 'Find the best Detan services in the UAE. Get detailed information about Detan services, book appointments, and plan your visit - Menteybody.com'),
(141, 'Face & Body Peel', 'face-body-skin-peel-uae', NULL, '2021-12-31 06:24:52', '2021-12-31 06:52:44', 29, 'Find the best Face & Body Peel service in the UAE. Get detailed information about Face & Body Peel services, book appointments, and plan your visit - Menteybody.com'),
(142, 'BOTOX Cosmetic', 'botox-cosmetic-beauty-uae', NULL, '2021-12-31 06:26:49', '2021-12-31 06:26:49', 29, 'Find the best BOTOX Cosmetic services in the UAE. Get detailed information about BOTOX Cosmetic services, book appointments, and plan your visit - Menteybody.com'),
(143, 'Pilates studio', 'pilates-studio-uae', NULL, '2021-12-31 06:48:07', '2021-12-31 06:48:07', 30, 'Find the best Pilates studio in the UAE. Get detailed information about Pilates studios, book appointments, and plan your visit - Menteybody.com'),
(144, 'Cross Functional Training', 'cross-functional-training-uae', NULL, '2021-12-31 06:50:24', '2021-12-31 06:50:24', 30, 'Find the best Cross-Functional Training Centers in the UAE. Get detailed information about Cross Functional Training centers, book appointments, and plan your visit - Menteybody.com'),
(145, 'Kids Fitness', 'kids-fitness-uae', NULL, '2021-12-31 06:52:26', '2021-12-31 06:52:26', 30, 'Find the best Kids Fitness Centers in the UAE. Get detailed information about Kids Fitness centers, book appointments, and plan your visit - Menteybody.com'),
(146, 'Pre-Natal Fitness', 'pre-natal-fitness-uae', NULL, '2021-12-31 06:54:24', '2021-12-31 06:54:34', 30, 'Find the best Pre-Natal Fitness centre / service in the UAE. Get detailed information about Pre-Natal Fitness service, book appointments and plan your visit - Menteybody.com'),
(147, 'Beauty Supplies & Store', 'beauty-supplies-store', NULL, '2022-04-16 22:36:16', '2022-04-16 22:36:16', NULL, 'List of Stores and Suppliers - Cosmetics store, Ayurvedic Medicine Store, Beauty Accessories, Salon Equipments Stores, Beauty & Salon Furnitures, Beauty Sets, Beauty supply stores'),
(148, 'Cosmetics store', 'cosmetics-store-supplies', NULL, '2022-04-16 22:36:49', '2022-04-16 22:36:49', 147, 'Cosmetics store'),
(149, 'Ayurvedic Medicine Stores', 'ayurvedic-medicine-supplies', NULL, '2022-04-16 22:37:29', '2022-04-16 22:37:29', 147, 'Ayurvedic Medicine Stores'),
(150, 'Beauty Accessories Store', 'beauty-accessories-store', NULL, '2022-04-16 22:38:13', '2022-04-16 22:38:13', 147, 'Beauty Accessories Store'),
(151, 'Salon Equipments Stores', 'salon-equipments-stores', NULL, '2022-04-16 22:39:16', '2022-04-16 22:39:16', 147, 'Salon Equipment Stores'),
(152, 'Beauty & Salon Furnitures', 'beauty-salon-furnitures', NULL, '2022-04-17 01:23:02', '2022-04-17 01:23:19', 147, 'Beauty & Salon Furnitures'),
(153, 'Beauty supply store', 'beauty-supply-store', NULL, '2022-04-17 01:23:54', '2022-04-17 01:23:54', 147, 'Beauty supply store'),
(154, 'Ayurvedic Clinic', 'ayurvedic-clinic', NULL, '2022-05-06 17:48:24', '2022-05-06 17:48:24', 29, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_custom_field`
--

CREATE TABLE `category_custom_field` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_custom_field`
--

INSERT INTO `category_custom_field` (`id`, `category_id`, `custom_field_id`, `created_at`, `updated_at`) VALUES
(133, 24, 16, '2021-11-14 04:36:39', '2021-11-14 04:36:39'),
(135, 24, 17, '2021-11-14 04:37:59', '2021-11-14 04:37:59'),
(140, 24, 12, '2021-11-16 08:02:36', '2021-11-16 08:02:36'),
(142, 24, 1, '2021-11-16 08:05:22', '2021-11-16 08:05:22'),
(145, 24, 3, '2021-12-18 16:58:17', '2021-12-18 16:58:17'),
(148, 24, 5, '2021-12-18 16:58:33', '2021-12-18 16:58:33'),
(150, 24, 6, '2021-12-18 16:58:52', '2021-12-18 16:58:52'),
(152, 24, 11, '2021-12-18 16:59:05', '2021-12-18 16:59:05'),
(155, 24, 19, '2021-12-19 03:15:35', '2021-12-19 03:15:35'),
(156, 28, 20, '2021-12-19 03:20:05', '2021-12-19 03:20:05'),
(158, 28, 22, '2021-12-19 11:33:45', '2021-12-19 11:33:45'),
(159, 24, 22, '2021-12-19 11:33:45', '2021-12-19 11:33:45'),
(160, 28, 1, '2021-12-19 11:42:28', '2021-12-19 11:42:28'),
(161, 24, 15, '2021-12-31 05:25:00', '2021-12-31 05:25:00'),
(162, 24, 18, '2021-12-31 05:25:11', '2021-12-31 05:25:11'),
(165, 29, 22, '2021-12-31 06:28:57', '2021-12-31 06:28:57'),
(166, 30, 23, '2021-12-31 07:05:25', '2021-12-31 07:05:25'),
(167, 29, 24, '2021-12-31 07:12:39', '2021-12-31 07:12:39'),
(197, 28, 24, '2021-12-31 07:12:39', '2021-12-31 07:12:39'),
(218, 30, 24, '2021-12-31 07:12:39', '2021-12-31 07:12:39'),
(234, 24, 24, '2021-12-31 07:12:39', '2021-12-31 07:12:39'),
(286, 31, 24, '2021-12-31 07:12:39', '2021-12-31 07:12:39'),
(287, 29, 25, '2021-12-31 07:16:46', '2021-12-31 07:16:46'),
(288, 28, 25, '2021-12-31 07:16:46', '2021-12-31 07:16:46'),
(289, 30, 25, '2021-12-31 07:16:46', '2021-12-31 07:16:46'),
(291, 24, 25, '2021-12-31 07:16:46', '2021-12-31 07:16:46'),
(292, 31, 25, '2021-12-31 07:16:46', '2021-12-31 07:16:46'),
(293, 29, 26, '2021-12-31 07:20:33', '2021-12-31 07:20:33'),
(294, 28, 26, '2021-12-31 07:20:33', '2021-12-31 07:20:33'),
(295, 30, 26, '2021-12-31 07:20:33', '2021-12-31 07:20:33'),
(297, 24, 26, '2021-12-31 07:20:33', '2021-12-31 07:20:33'),
(298, 31, 26, '2021-12-31 07:20:33', '2021-12-31 07:20:33'),
(299, 29, 6, '2021-12-31 07:22:48', '2021-12-31 07:22:48'),
(300, 28, 6, '2021-12-31 07:22:48', '2021-12-31 07:22:48'),
(301, 30, 6, '2021-12-31 07:22:48', '2021-12-31 07:22:48'),
(303, 31, 6, '2021-12-31 07:22:48', '2021-12-31 07:22:48'),
(304, 29, 17, '2021-12-31 07:24:26', '2021-12-31 07:24:26'),
(305, 28, 17, '2021-12-31 07:24:26', '2021-12-31 07:24:26'),
(306, 30, 17, '2021-12-31 07:24:26', '2021-12-31 07:24:26'),
(308, 31, 17, '2021-12-31 07:24:26', '2021-12-31 07:24:26'),
(309, 29, 16, '2021-12-31 07:24:41', '2021-12-31 07:24:41'),
(310, 28, 16, '2021-12-31 07:24:41', '2021-12-31 07:24:41'),
(311, 30, 16, '2021-12-31 07:24:41', '2021-12-31 07:24:41'),
(313, 31, 16, '2021-12-31 07:24:41', '2021-12-31 07:24:41'),
(314, 29, 12, '2021-12-31 07:24:59', '2021-12-31 07:24:59'),
(315, 28, 12, '2021-12-31 07:24:59', '2021-12-31 07:24:59'),
(316, 30, 12, '2021-12-31 07:24:59', '2021-12-31 07:24:59'),
(318, 31, 12, '2021-12-31 07:24:59', '2021-12-31 07:24:59'),
(319, 29, 1, '2021-12-31 07:25:14', '2021-12-31 07:25:14'),
(320, 30, 1, '2021-12-31 07:25:14', '2021-12-31 07:25:14'),
(322, 31, 1, '2021-12-31 07:25:14', '2021-12-31 07:25:14'),
(323, 29, 3, '2021-12-31 07:25:35', '2021-12-31 07:25:35'),
(324, 28, 3, '2021-12-31 07:25:35', '2021-12-31 07:25:35'),
(325, 30, 3, '2021-12-31 07:25:35', '2021-12-31 07:25:35'),
(327, 31, 3, '2021-12-31 07:25:35', '2021-12-31 07:25:35'),
(328, 29, 5, '2021-12-31 07:25:55', '2021-12-31 07:25:55'),
(329, 28, 5, '2021-12-31 07:25:55', '2021-12-31 07:25:55'),
(330, 30, 5, '2021-12-31 07:25:55', '2021-12-31 07:25:55'),
(332, 31, 5, '2021-12-31 07:25:55', '2021-12-31 07:25:55'),
(333, 29, 15, '2021-12-31 07:26:25', '2021-12-31 07:26:25'),
(334, 28, 15, '2021-12-31 07:26:25', '2021-12-31 07:26:25'),
(335, 30, 15, '2021-12-31 07:26:25', '2021-12-31 07:26:25'),
(337, 31, 15, '2021-12-31 07:26:25', '2021-12-31 07:26:25'),
(338, 30, 27, '2021-12-31 16:55:10', '2021-12-31 16:55:10'),
(339, 99, 27, '2021-12-31 16:55:48', '2021-12-31 16:55:48'),
(340, 98, 27, '2021-12-31 16:55:48', '2021-12-31 16:55:48'),
(341, 144, 27, '2021-12-31 16:55:48', '2021-12-31 16:55:48'),
(342, 96, 27, '2021-12-31 16:55:48', '2021-12-31 16:55:48'),
(343, 145, 27, '2021-12-31 16:55:48', '2021-12-31 16:55:48'),
(344, 104, 27, '2021-12-31 16:55:48', '2021-12-31 16:55:48'),
(345, 143, 27, '2021-12-31 16:55:48', '2021-12-31 16:55:48'),
(346, 146, 27, '2021-12-31 16:55:48', '2021-12-31 16:55:48'),
(347, 103, 27, '2021-12-31 16:55:48', '2021-12-31 16:55:48'),
(348, 97, 27, '2021-12-31 16:55:48', '2021-12-31 16:55:48'),
(349, 29, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(350, 112, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(351, 125, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(352, 127, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(353, 113, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(354, 137, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(355, 142, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(356, 110, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(357, 129, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(358, 128, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(359, 114, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(360, 140, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(361, 107, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(362, 141, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(363, 116, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(364, 126, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(365, 117, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(366, 111, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(367, 108, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(368, 118, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(369, 122, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(370, 100, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(371, 123, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(372, 136, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(373, 124, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(374, 130, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(375, 119, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(376, 109, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(377, 121, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(378, 120, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(379, 28, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(380, 92, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(381, 75, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(382, 88, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(383, 77, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(384, 81, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(385, 79, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(386, 93, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(387, 76, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(388, 95, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(389, 82, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(390, 80, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(391, 90, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(392, 94, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(393, 84, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(394, 89, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(395, 86, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(396, 87, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(397, 91, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(398, 78, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(399, 83, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(400, 30, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(401, 99, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(402, 98, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(403, 144, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(404, 96, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(405, 145, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(406, 104, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(407, 106, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(408, 102, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(409, 143, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(410, 146, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(411, 103, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(412, 97, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(413, 105, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(414, 101, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(415, 24, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(416, 138, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(417, 57, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(418, 62, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(419, 59, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(420, 134, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(421, 42, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(422, 133, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(423, 43, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(424, 63, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(425, 39, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(426, 58, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(427, 38, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(428, 131, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(429, 33, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(430, 64, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(431, 135, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(432, 52, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(433, 60, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(434, 65, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(435, 51, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(436, 66, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(437, 44, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(438, 67, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(439, 68, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(440, 25, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(441, 32, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(442, 35, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(443, 69, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(444, 115, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(445, 56, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(446, 61, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(447, 41, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(448, 37, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(449, 55, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(450, 132, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(451, 54, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(452, 139, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(453, 34, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(454, 70, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(455, 71, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(456, 50, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(457, 47, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(458, 48, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(459, 72, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(460, 45, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(461, 40, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(462, 49, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(463, 73, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(464, 46, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(465, 53, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(466, 36, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45'),
(467, 31, 28, '2021-12-31 17:00:45', '2021-12-31 17:00:45');

-- --------------------------------------------------------

--
-- Table structure for table `category_item`
--

CREATE TABLE `category_item` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_item`
--

INSERT INTO `category_item` (`id`, `category_id`, `item_id`, `created_at`, `updated_at`) VALUES
(37, 24, 18, '2021-11-14 21:53:24', '2021-11-14 21:53:24'),
(53, 30, 18, '2022-06-26 14:47:27', '2022-06-26 14:47:27');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `state_id` int(11) NOT NULL,
  `city_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_lat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_lng` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `state_id`, `city_name`, `city_state`, `city_slug`, `city_lat`, `city_lng`, `created_at`, `updated_at`) VALUES
(12212747, 6254929, 'Abu Hail', 'DXB', 'Abu-Hail-Dubai', '25.285853864953012', '55.32876370863464', '2021-11-13 14:51:41', '2021-11-13 14:51:41'),
(12212748, 6254929, 'Dubai Silicon Oasis Industrial Area', 'DXB', 'Dubai-Silicon-Oasis-Industrial-Area', '25.1290582341343', '55.387134331252696', '2021-11-14 05:08:17', '2021-11-14 05:08:17'),
(12212749, 6254929, 'Jumeirah Village Circle (JVC)', 'Dubai', 'jumeirah-village-circle-jvc-dubai-uae', '', '', NULL, NULL),
(12212750, 6254929, 'Dubai Marina ', 'Dubai', 'dubai-marina-dubai-uae', '', '', NULL, NULL),
(12212751, 6254929, 'Business Bay ', 'Dubai', 'business-bay-dubai-uae', '', '', NULL, NULL),
(12212752, 6254929, 'Downtown Dubai ', 'Dubai', 'downtown-dubai-dubai-uae', '', '', NULL, NULL),
(12212753, 6254929, 'Al Barsha', 'Dubai', 'al-barsha-dubai-uae', '', '', NULL, NULL),
(12212754, 6254929, 'Bur Dubai', 'Dubai', 'bur-dubai-dubai-uae', '', '', NULL, NULL),
(12212755, 6254929, 'Deira', 'Dubai', 'deira-dubai-uae', '', '', NULL, NULL),
(12212756, 6254929, 'Al Nahda ', 'Dubai', 'al-nahda-dubai-uae', '', '', NULL, NULL),
(12212757, 6254929, 'Arjan', 'Dubai', 'arjan-dubai-uae', '', '', NULL, NULL),
(12212758, 6254929, 'Palm Jumeirah', 'Dubai', 'palm-jumeirah-dubai-uae', '', '', NULL, NULL),
(12212759, 6254929, 'The Lagoons', 'Dubai', 'the-lagoons-dubai-uae', '', '', NULL, NULL),
(12212760, 6254929, 'Sheikh Zayed Road', 'Dubai', 'sheikh-zayed-road-dubai-uae', '', '', NULL, NULL),
(12212761, 6254929, 'Mirdif ', 'Dubai', 'mirdif-dubai-uae', '', '', NULL, NULL),
(12212762, 6254929, 'Dubai Silicon Oasis', 'Dubai', 'dubai-silicon-oasis-dubai-uae', '', '', NULL, NULL),
(12212763, 6254929, 'DAMAC Hills 2 (Akoya by DAMAC) ', 'Dubai', 'damac-hills-2-dubai-uae', '', '', NULL, NULL),
(12212764, 6254929, 'Jumeirah Beach Residence (JBR) ', 'Dubai', 'jumeirah-beach-residence-jbr-dubai-uae', '', '', NULL, NULL),
(12212765, 6254929, 'Discovery Gardens', 'Dubai', 'discovery-gardens-dubai-uae', '', '', NULL, NULL),
(12212766, 6254929, 'Jumeirah Lake Towers (JLT) ', 'Dubai', 'jumeirah-lake-towers-jlt-dubai-uae', '', '', NULL, NULL),
(12212767, 6254929, 'International City ', 'Dubai', 'international-city-dubai-uae', '', '', NULL, NULL),
(12212768, 6254929, 'Jumeirah ', 'Dubai', 'jumeirah-dubai-uae', '', '', NULL, NULL),
(12212769, 6254929, 'Al Warqaa', 'Dubai', 'al-warqaa-dubai-uae', '', '', NULL, NULL),
(12212770, 6254929, 'Dubai Sports City', 'Dubai', 'dubai-sports-city-dubai-uae', '', '', NULL, NULL),
(12212771, 6254929, 'Barsha Heights (Tecom) ', 'Dubai', 'barsha-heights-tecom-dubai-uae', '', '', NULL, NULL),
(12212772, 6254929, 'Dubai Hills Estate ', 'Dubai', 'dubai-hills-estate-dubai-uae', '', '', NULL, NULL),
(12212773, 6254929, 'Dubailand', 'Dubai', 'dubailand-dubai-uae', '', '', NULL, NULL),
(12212774, 6254929, 'Al Satwa ', 'Dubai', 'al-satwa-dubai-uae', '', '', NULL, NULL),
(12212775, 6254929, 'Al Jaddaf', 'Dubai', 'al-jaddaf-dubai-uae', '', '', NULL, NULL),
(12212776, 6254929, 'Town Square', 'Dubai', 'town-square-dubai-uae', '', '', NULL, NULL),
(12212777, 6254929, 'Al Furjan', 'Dubai', 'al-furjan-dubai-uae', '', '', NULL, NULL),
(12212778, 6254929, 'Al Qusais', 'Dubai', 'al-qusais-dubai-uae', '', '', NULL, NULL),
(12212779, 6254929, 'Al Karama', 'Dubai', 'al-karama-dubai-uae', '', '', NULL, NULL),
(12212780, 6254929, 'Dubai South', 'Dubai', 'dubai-south-dubai-uae', '', '', NULL, NULL),
(12212781, 6254929, 'The Springs', 'Dubai', 'the-springs-dubai-uae', '', '', NULL, NULL),
(12212782, 6254929, 'DAMAC Hills', 'Dubai', 'damac-hills-dubai-uae', '', '', NULL, NULL),
(12212783, 6254929, 'Al Quoz', 'Dubai', 'al-quoz-dubai-uae', '', '', NULL, NULL),
(12212784, 6254929, 'Dubai Residence Complex', 'Dubai', 'dubai-residence-complex-dubai-uae', '', '', NULL, NULL),
(12212785, 6254929, 'Umm Suqeim ', 'Dubai', 'umm-suqeim-dubai-uae', '', '', NULL, NULL),
(12212786, 6254929, 'Dubai Production City (IMPZ) ', 'Dubai', 'dubai-production-city-impz-dubai-uae', '', '', NULL, NULL),
(12212787, 6254929, 'Motor City ', 'Dubai', 'motor-city-dubai-uae', '', '', NULL, NULL),
(12212788, 6254929, 'The Views', 'Dubai', 'the-views-dubai-uae', '', '', NULL, NULL),
(12212789, 6254929, 'Muhaisnah', 'Dubai', 'muhaisnah-dubai-uae', '', '', NULL, NULL),
(12212790, 6254929, 'Jumeirah Village Triangle (JVT)', 'Dubai', 'jumeirah-village-triangle-jvt-dubai-uae', '', '', NULL, NULL),
(12212791, 6254929, 'Mohammed Bin Rashid City ', 'Dubai', 'mohammed-bin-rashid-city-dubai-uae', '', '', NULL, NULL),
(12212792, 6254929, 'Meydan City', 'Dubai', 'meydan-city-dubai-uae', '', '', NULL, NULL),
(12212793, 6254929, 'Remraam', 'Dubai', 'remraam-dubai-uae', '', '', NULL, NULL),
(12212794, 6254929, 'Arabian Ranches', 'Dubai', 'arabian-ranches-dubai-uae', '', '', NULL, NULL),
(12212795, 6254929, 'Liwan', 'Dubai', 'liwan-dubai-uae', '', '', NULL, NULL),
(12212796, 6254929, 'The Gardens', 'Dubai', 'the-gardens-dubai-uae', '', '', NULL, NULL),
(12212797, 6254929, 'Al Garhoud ', 'Dubai', 'al-garhoud-dubai-uae', '', '', NULL, NULL),
(12212798, 6254929, 'DIFC ', 'Dubai', 'difc-dubai-uae', '', '', NULL, NULL),
(12212799, 6254929, 'Dubai Investment Park (DIP)', 'Dubai', 'dubai-investment-park-dip-dubai-uae', '', '', NULL, NULL),
(12212800, 6254929, 'The Greens ', 'Dubai', 'the-greens-dubai-uae', '', '', NULL, NULL),
(12212801, 6254929, 'Reem ', 'Dubai', 'reem-dubai-uae', '', '', NULL, NULL),
(12212802, 6254929, 'Jumeirah Park', 'Dubai', 'jumeirah-park-dubai-uae', '', '', NULL, NULL),
(12212803, 6254929, 'Culture Village', 'Dubai', 'culture-village-dubai-uae', '', '', NULL, NULL),
(12212804, 6254929, 'Al Mamzar', 'Dubai', 'al-mamzar-dubai-uae', '', '', NULL, NULL),
(12212805, 6254929, 'Nad Al Hamar ', 'Dubai', 'nad-al-hamar-dubai-uae', '', '', NULL, NULL),
(12212806, 6254929, 'Old Town ', 'Dubai', 'old-town-dubai-uae', '', '', NULL, NULL),
(12212807, 6254929, 'Al Mina', 'Dubai', 'al-mina-dubai-uae', '', '', NULL, NULL),
(12212808, 6254929, 'Serena ', 'Dubai', 'serena-dubai-uae', '', '', NULL, NULL),
(12212809, 6254929, 'Dubai Waterfront ', 'Dubai', 'dubai-waterfront-dubai-uae', '', '', NULL, NULL),
(12212810, 6254929, 'Al Safa', 'Dubai', 'al-safa-dubai-uae', '', '', NULL, NULL),
(12212811, 6254929, 'Dubai Media City ', 'Dubai', 'dubai-media-city-dubai-uae', '', '', NULL, NULL),
(12212812, 6254929, 'Jumeirah Golf Estates', 'Dubai', 'jumeirah-golf-estates-dubai-uae', '', '', NULL, NULL),
(12212813, 6254929, 'Al Sufouh', 'Dubai', 'al-sufouh-dubai-uae', '', '', NULL, NULL),
(12212814, 6254929, 'Arabian Ranches 2', 'Dubai', 'arabian-ranches-2-dubai-uae', '', '', NULL, NULL),
(12212815, 6254929, 'Al Badaa ', 'Dubai', 'al-badaa-dubai-uae', '', '', NULL, NULL),
(12212816, 6254929, 'Al Warsan', 'Dubai', 'al-warsan-dubai-uae', '', '', NULL, NULL),
(12212817, 6254929, 'Al Khawaneej ', 'Dubai', 'al-khawaneej-dubai-uae', '', '', NULL, NULL),
(12212818, 6254929, 'Al Rashidiya ', 'Dubai', 'al-rashidiya-dubai-uae', '', '', NULL, NULL),
(12212819, 6254929, 'Bluewaters Island', 'Dubai', 'bluewaters-island-dubai-uae', '', '', NULL, NULL),
(12212820, 6254929, 'The Villa', 'Dubai', 'the-villa-dubai-uae', '', '', NULL, NULL),
(12212821, 6254929, 'Al Wasl', 'Dubai', 'al-wasl-dubai-uae', '', '', NULL, NULL),
(12212822, 6254929, 'Nad Al Sheba ', 'Dubai', 'nad-al-sheba-dubai-uae', '', '', NULL, NULL),
(12212823, 6254929, 'Dubai Festival City', 'Dubai', 'dubai-festival-city-dubai-uae', '', '', NULL, NULL),
(12212824, 6254929, 'Dubai World Central', 'Dubai', 'dubai-world-central-dubai-uae', '', '', NULL, NULL),
(12212825, 6254929, 'Dubai Studio City', 'Dubai', 'dubai-studio-city-dubai-uae', '', '', NULL, NULL),
(12212826, 6254929, 'Al Hudaiba ', 'Dubai', 'al-hudaiba-dubai-uae', '', '', NULL, NULL),
(12212827, 6254929, 'Academic City', 'Dubai', 'academic-city-dubai-uae', '', '', NULL, NULL),
(12212828, 6254929, 'Green Community', 'Dubai', 'green-community-dubai-uae', '', '', NULL, NULL),
(12212829, 6254929, 'Al Awir', 'Dubai', 'al-awir-dubai-uae', '', '', NULL, NULL),
(12212830, 6254929, 'Al Jafiliya', 'Dubai', 'al-jafiliya-dubai-uae', '', '', NULL, NULL),
(12212831, 6254929, 'Ras Al Khor', 'Dubai', 'ras-al-khor-dubai-uae', '', '', NULL, NULL),
(12212832, 6254929, 'The Hills', 'Dubai', 'the-hills-dubai-uae', '', '', NULL, NULL),
(12212833, 6254929, 'Dubai Harbour', 'Dubai', 'dubai-harbour-dubai-uae', '', '', NULL, NULL),
(12212834, 6254929, 'Dubai Industrial Park', 'Dubai', 'dubai-industrial-park-dubai-uae', '', '', NULL, NULL),
(12212835, 6254929, 'Mudon', 'Dubai', 'mudon-dubai-uae', '', '', NULL, NULL),
(12212836, 6254929, 'World Trade Centre ', 'Dubai', 'world-trade-centre-dubai-uae', '', '', NULL, NULL),
(12212837, 6254929, 'The Lakes', 'Dubai', 'the-lakes-dubai-uae', '', '', NULL, NULL),
(12212838, 6254929, 'Dubai Science Park ', 'Dubai', 'dubai-science-park-dubai-uae', '', '', NULL, NULL),
(12212839, 6254929, 'Umm Ramool ', 'Dubai', 'umm-ramool-dubai-uae', '', '', NULL, NULL),
(12212840, 6254929, 'Downtown Jebel Ali ', 'Dubai', 'downtown-jebel-ali-dubai-uae', '', '', NULL, NULL),
(12212841, 6254929, 'Jumeirah Islands ', 'Dubai', 'jumeirah-islands-dubai-uae', '', '', NULL, NULL),
(12212842, 6254929, 'Al Barari', 'Dubai', 'al-barari-dubai-uae', '', '', NULL, NULL),
(12212843, 6254929, 'Al Manara', 'Dubai', 'al-manara-dubai-uae', '', '', NULL, NULL),
(12212844, 6254929, 'The Meadows', 'Dubai', 'the-meadows-dubai-uae', '', '', NULL, NULL),
(12212845, 6254929, 'Al Mizhar', 'Dubai', 'al-mizhar-dubai-uae', '', '', NULL, NULL),
(12212846, 6254929, 'Jebel Ali', 'Dubai', 'jebel-ali-dubai-uae', '', '', NULL, NULL),
(12212847, 6254929, 'Al Twar', 'Dubai', 'al-twar-dubai-uae', '', '', NULL, NULL),
(12212848, 6254929, 'Oud Al Muteena ', 'Dubai', 'oud-al-muteena-dubai-uae', '', '', NULL, NULL),
(12212849, 6254929, 'Umm Al Sheif ', 'Dubai', 'umm-al-sheif-dubai-uae', '', '', NULL, NULL),
(12212850, 6254929, 'Ibn Battuta Gate ', 'Dubai', 'ibn-battuta-gate-dubai-uae', '', '', NULL, NULL),
(12212851, 6254929, 'Dubai Internet City', 'Dubai', 'dubai-internet-city-dubai-uae', '', '', NULL, NULL),
(12212852, 6254929, 'Bukadra', 'Dubai', 'bukadra-dubai-uae', '', '', NULL, NULL),
(12212853, 6254930, 'Al Reem Island ', 'Abu Dhabi', 'al-reem-island-abu-dhabi-uae', '', '', NULL, NULL),
(12212854, 6254930, 'Mohammed Bin Zayed City', 'Abu Dhabi', 'mohammed-bin-zayed-city-abu-dhabi-uae', '', '', NULL, NULL),
(12212855, 6254930, 'Khalifa City A ', 'Abu Dhabi', 'khalifa-city-a-abu-dhabi-uae', '', '', NULL, NULL),
(12212856, 6254930, 'Al Raha Beach', 'Abu Dhabi', 'al-raha-beach-abu-dhabi-uae', '', '', NULL, NULL),
(12212857, 6254930, 'Yas Island ', 'Abu Dhabi', 'yas-island-abu-dhabi-uae', '', '', NULL, NULL),
(12212858, 6254930, 'Al Khalidiyah', 'Abu Dhabi', 'al-khalidiyah-abu-dhabi-uae', '', '', NULL, NULL),
(12212859, 6254930, 'Al Reef', 'Abu Dhabi', 'al-reef-abu-dhabi-uae', '', '', NULL, NULL),
(12212860, 6254930, 'Saadiyat Island', 'Abu Dhabi', 'saadiyat-island-abu-dhabi-uae', '', '', NULL, NULL),
(12212861, 6254930, 'Corniche Area', 'Abu Dhabi', 'corniche-area-abu-dhabi-uae', '', '', NULL, NULL),
(12212862, 6254930, 'Al Muroor', 'Abu Dhabi', 'al-muroor-abu-dhabi-uae', '', '', NULL, NULL),
(12212863, 6254930, 'Tourist Club Area TCA', 'Abu Dhabi', 'tourist-club-area-tca-abu-dhabi-uae', '', '', NULL, NULL),
(12212864, 6254930, 'Hamdan Street', 'Abu Dhabi', 'hamdan-street-abu-dhabi-uae', '', '', NULL, NULL),
(12212865, 6254930, 'Shakhbout City Khalifa City B', 'Abu Dhabi', 'shakhbout-city-khalifa-city-b-abu-dhabi-uae', '', '', NULL, NULL),
(12212866, 6254930, 'Corniche Road', 'Abu Dhabi', 'corniche-road-abu-dhabi-uae', '', '', NULL, NULL),
(12212867, 6254930, 'Al Shamkha ', 'Abu Dhabi', 'al-shamkha-abu-dhabi-uae', '', '', NULL, NULL),
(12212868, 6254930, 'Al Nahyan', 'Abu Dhabi', 'al-nahyan-abu-dhabi-uae', '', '', NULL, NULL),
(12212869, 6254930, 'Mussafah ', 'Abu Dhabi', 'mussafah-abu-dhabi-uae', '', '', NULL, NULL),
(12212870, 6254930, 'Electra Street ', 'Abu Dhabi', 'electra-street-abu-dhabi-uae', '', '', NULL, NULL),
(12212871, 6254930, 'Al Bateen', 'Abu Dhabi', 'al-bateen-abu-dhabi-uae', '', '', NULL, NULL),
(12212872, 6254930, 'Al Mushrif ', 'Abu Dhabi', 'al-mushrif-abu-dhabi-uae', '', '', NULL, NULL),
(12212873, 6254930, 'Airport Street ', 'Abu Dhabi', 'airport-street-abu-dhabi-uae', '', '', NULL, NULL),
(12212874, 6254930, 'Al Shamkha South ', 'Abu Dhabi', 'al-shamkha-south-abu-dhabi-uae', '', '', NULL, NULL),
(12212875, 6254930, 'Danet Abu Dhabi', 'Abu Dhabi', 'danet-abu-dhabi-abu-dhabi-uae', '', '', NULL, NULL),
(12212876, 6254930, 'Al Ghadeer ', 'Abu Dhabi', 'al-ghadeer-abu-dhabi-uae', '', '', NULL, NULL),
(12212877, 6254930, 'Baniyas', 'Abu Dhabi', 'baniyas-abu-dhabi-uae', '', '', NULL, NULL),
(12212878, 6254930, 'Rawdhat Abu Dhabi', 'Abu Dhabi', 'rawdhat-abu-dhabi-abu-dhabi-uae', '', '', NULL, NULL),
(12212879, 6254930, 'Al Salam Street', 'Abu Dhabi', 'al-salam-street-abu-dhabi-uae', '', '', NULL, NULL),
(12212880, 6254930, 'Hydra Village', 'Abu Dhabi', 'hydra-village-abu-dhabi-uae', '', '', NULL, NULL),
(12212881, 6254930, 'Al Raha Gardens', 'Abu Dhabi', 'al-raha-gardens-abu-dhabi-uae', '', '', NULL, NULL),
(12212882, 6254930, 'Al Najda Street', 'Abu Dhabi', 'al-najda-street-abu-dhabi-uae', '', '', NULL, NULL),
(12212883, 6254930, 'Al Falah Street', 'Abu Dhabi', 'al-falah-street-abu-dhabi-uae', '', '', NULL, NULL),
(12212884, 6254930, 'Eastern Road ', 'Abu Dhabi', 'eastern-road-abu-dhabi-uae', '', '', NULL, NULL),
(12212885, 6254930, 'Al Samha ', 'Abu Dhabi', 'al-samha-abu-dhabi-uae', '', '', NULL, NULL),
(12212886, 6254930, 'Al Markaziya ', 'Abu Dhabi', 'al-markaziya-abu-dhabi-uae', '', '', NULL, NULL),
(12212887, 6254930, 'Between Two Bridges Bain Al Jessrain ', 'Abu Dhabi', 'between-two-bridges-bain-al-jessrain-abu-dhabi-uae', '', '', NULL, NULL),
(12212888, 6254930, 'Sheikh Khalifa Bin Zayed Street', 'Abu Dhabi', 'sheikh-khalifa-bin-zayed-street-abu-dhabi-uae', '', '', NULL, NULL),
(12212889, 6254930, 'Al Wahdah', 'Abu Dhabi', 'al-wahdah-abu-dhabi-uae', '', '', NULL, NULL),
(12212890, 6254930, 'Al Karamah ', 'Abu Dhabi', 'al-karamah-abu-dhabi-uae', '', '', NULL, NULL),
(12212891, 6254930, 'Al Bahia ', 'Abu Dhabi', 'al-bahia-abu-dhabi-uae', '', '', NULL, NULL),
(12212892, 6254930, 'Al Matar ', 'Abu Dhabi', 'al-matar-abu-dhabi-uae', '', '', NULL, NULL),
(12212893, 6254930, 'Al Hosn', 'Abu Dhabi', 'al-hosn-abu-dhabi-uae', '', '', NULL, NULL),
(12212894, 6254930, 'Defence Street ', 'Abu Dhabi', 'defence-street-abu-dhabi-uae', '', '', NULL, NULL),
(12212895, 6254930, 'Madinat Zayed', 'Abu Dhabi', 'madinat-zayed-abu-dhabi-uae', '', '', NULL, NULL),
(12212896, 6254930, 'Al Rahba ', 'Abu Dhabi', 'al-rahba-abu-dhabi-uae', '', '', NULL, NULL),
(12212897, 6254930, 'Al Shahama ', 'Abu Dhabi', 'al-shahama-abu-dhabi-uae', '', '', NULL, NULL),
(12212898, 6254930, 'Abu Dhabi Gate City Officers City', 'Abu Dhabi', 'abu-dhabi-gate-city-officers-city-abu-dhabi-uae', '', '', NULL, NULL),
(12212899, 6254930, 'Al Shawamekh ', 'Abu Dhabi', 'al-shawamekh-abu-dhabi-uae', '', '', NULL, NULL),
(12212900, 6254930, 'Al Manaseer', 'Abu Dhabi', 'al-manaseer-abu-dhabi-uae', '', '', NULL, NULL),
(12212901, 6254930, 'Al Raha Golf Gardens ', 'Abu Dhabi', 'al-raha-golf-gardens-abu-dhabi-uae', '', '', NULL, NULL),
(12212902, 6254930, 'Al Mina', 'Abu Dhabi', 'al-mina-abu-dhabi-uae', '', '', NULL, NULL),
(12212903, 6254930, 'Capital Centre ', 'Abu Dhabi', 'capital-centre-abu-dhabi-uae', '', '', NULL, NULL),
(12212904, 6254930, 'Al Maqtaa', 'Abu Dhabi', 'al-maqtaa-abu-dhabi-uae', '', '', NULL, NULL),
(12212905, 6254930, 'Al Zahraa', 'Abu Dhabi', 'al-zahraa-abu-dhabi-uae', '', '', NULL, NULL),
(12212906, 6254930, 'Zayed Sports City', 'Abu Dhabi', 'zayed-sports-city-abu-dhabi-uae', '', '', NULL, NULL),
(12212907, 6254930, 'Liwa Street', 'Abu Dhabi', 'liwa-street-abu-dhabi-uae', '', '', NULL, NULL),
(12212908, 6254930, 'The Marina ', 'Abu Dhabi', 'the-marina-abu-dhabi-uae', '', '', NULL, NULL),
(12212909, 6254930, 'Al Rawdah', 'Abu Dhabi', 'al-rawdah-abu-dhabi-uae', '', '', NULL, NULL),
(12212910, 6254930, 'Al Falah City', 'Abu Dhabi', 'al-falah-city-abu-dhabi-uae', '', '', NULL, NULL),
(12212911, 6254930, 'Madinat Al Riyadh', 'Abu Dhabi', 'madinat-al-riyadh-abu-dhabi-uae', '', '', NULL, NULL),
(12212912, 6254930, 'Navy Gate', 'Abu Dhabi', 'navy-gate-abu-dhabi-uae', '', '', NULL, NULL),
(12212913, 6254930, 'Masdar City', 'Abu Dhabi', 'masdar-city-abu-dhabi-uae', '', '', NULL, NULL),
(12212914, 6254930, 'Al Qurm', 'Abu Dhabi', 'al-qurm-abu-dhabi-uae', '', '', NULL, NULL),
(12212915, 6254930, 'Marina Village ', 'Abu Dhabi', 'marina-village-abu-dhabi-uae', '', '', NULL, NULL),
(12212916, 6254930, 'Al Zahiyah ', 'Abu Dhabi', 'al-zahiyah-abu-dhabi-uae', '', '', NULL, NULL),
(12212917, 6254930, 'Hadbat Al Zaafran', 'Abu Dhabi', 'hadbat-al-zaafran-abu-dhabi-uae', '', '', NULL, NULL),
(12212918, 6254930, 'Al Maryah Island ', 'Abu Dhabi', 'al-maryah-island-abu-dhabi-uae', '', '', NULL, NULL),
(12212919, 6254930, 'Al Manhal', 'Abu Dhabi', 'al-manhal-abu-dhabi-uae', '', '', NULL, NULL),
(12212920, 6254930, 'Al Gurm', 'Abu Dhabi', 'al-gurm-abu-dhabi-uae', '', '', NULL, NULL),
(12212921, 6254930, 'Sas Al Nakhl Village ', 'Abu Dhabi', 'sas-al-nakhl-village-abu-dhabi-uae', '', '', NULL, NULL),
(12212922, 6254930, 'Al Danah ', 'Abu Dhabi', 'al-danah-abu-dhabi-uae', '', '', NULL, NULL),
(12212923, 6254930, 'Al Nasr Street ', 'Abu Dhabi', 'al-nasr-street-abu-dhabi-uae', '', '', NULL, NULL),
(12212924, 6254930, 'Sheikh Rashid Bin Saeed Street ', 'Abu Dhabi', 'sheikh-rashid-bin-saeed-street-abu-dhabi-uae', '', '', NULL, NULL),
(12212925, 6254930, 'Grand Mosque District', 'Abu Dhabi', 'grand-mosque-district-abu-dhabi-uae', '', '', NULL, NULL),
(12212926, 6254930, 'Al Aman', 'Abu Dhabi', 'al-aman-abu-dhabi-uae', '', '', NULL, NULL),
(12212927, 6254930, 'Rabdan ', 'Abu Dhabi', 'rabdan-abu-dhabi-uae', '', '', NULL, NULL),
(12212928, 6254934, 'Al Nahda ', 'Sharjah', 'al-nahda-sharjah-uae', '', '', NULL, NULL),
(12212929, 6254934, 'Muwailih Commercial', 'Sharjah', 'muwailih-commercial-sharjah-uae', '', '', NULL, NULL),
(12212930, 6254934, 'Muwaileh ', 'Sharjah', 'muwaileh-sharjah-uae', '', '', NULL, NULL),
(12212931, 6254934, 'Al Taawun', 'Sharjah', 'al-taawun-sharjah-uae', '', '', NULL, NULL),
(12212932, 6254934, 'Al Majaz ', 'Sharjah', 'al-majaz-sharjah-uae', '', '', NULL, NULL),
(12212933, 6254934, 'Al Khan', 'Sharjah', 'al-khan-sharjah-uae', '', '', NULL, NULL),
(12212934, 6254934, 'Al Qasimia ', 'Sharjah', 'al-qasimia-sharjah-uae', '', '', NULL, NULL),
(12212935, 6254934, 'Al Mamzar', 'Sharjah', 'al-mamzar-sharjah-uae', '', '', NULL, NULL),
(12212936, 6254934, 'Al Tai ', 'Sharjah', 'al-tai-sharjah-uae', '', '', NULL, NULL),
(12212937, 6254934, 'Abu Shagara', 'Sharjah', 'abu-shagara-sharjah-uae', '', '', NULL, NULL),
(12212938, 6254934, 'Al Nabba ', 'Sharjah', 'al-nabba-sharjah-uae', '', '', NULL, NULL),
(12212939, 6254934, 'Barashi', 'Sharjah', 'barashi-sharjah-uae', '', '', NULL, NULL),
(12212940, 6254934, 'Al Qulayaah', 'Sharjah', 'al-qulayaah-sharjah-uae', '', '', NULL, NULL),
(12212941, 6254934, 'Bu Tina', 'Sharjah', 'bu-tina-sharjah-uae', '', '', NULL, NULL),
(12212942, 6254934, 'Corniche Al Buhaira', 'Sharjah', 'corniche-al-buhaira-sharjah-uae', '', '', NULL, NULL),
(12212943, 6254934, 'Al Mujarrah', 'Sharjah', 'al-mujarrah-sharjah-uae', '', '', NULL, NULL),
(12212944, 6254934, 'Industrial Area', 'Sharjah', 'industrial-area-sharjah-uae', '', '', NULL, NULL),
(12212945, 6254934, 'Al Mahatah ', 'Sharjah', 'al-mahatah-sharjah-uae', '', '', NULL, NULL),
(12212946, 6254934, 'Al Shuwaihean', 'Sharjah', 'al-shuwaihean-sharjah-uae', '', '', NULL, NULL),
(12212947, 6254934, 'Al Qasba ', 'Sharjah', 'al-qasba-sharjah-uae', '', '', NULL, NULL),
(12212948, 6254934, 'Rolla Area ', 'Sharjah', 'rolla-area-sharjah-uae', '', '', NULL, NULL),
(12212949, 6254934, 'Al Wahda Street', 'Sharjah', 'al-wahda-street-sharjah-uae', '', '', NULL, NULL),
(12212950, 6254934, 'Al Suyoh ', 'Sharjah', 'al-suyoh-sharjah-uae', '', '', NULL, NULL),
(12212951, 6254934, 'Al Ghuwair ', 'Sharjah', 'al-ghuwair-sharjah-uae', '', '', NULL, NULL),
(12212952, 6254934, 'Al Musalla ', 'Sharjah', 'al-musalla-sharjah-uae', '', '', NULL, NULL),
(12212953, 6254934, 'Hoshi', 'Sharjah', 'hoshi-sharjah-uae', '', '', NULL, NULL),
(12212954, 6254934, 'Maysaloon', 'Sharjah', 'maysaloon-sharjah-uae', '', '', NULL, NULL),
(12212955, 6254934, 'Sharqan', 'Sharjah', 'sharqan-sharjah-uae', '', '', NULL, NULL),
(12212956, 6254934, 'Al Jazzat', 'Sharjah', 'al-jazzat-sharjah-uae', '', '', NULL, NULL),
(12212957, 6254934, 'Al Nasserya', 'Sharjah', 'al-nasserya-sharjah-uae', '', '', NULL, NULL),
(12212958, 6254934, 'Al Yarmook ', 'Sharjah', 'al-yarmook-sharjah-uae', '', '', NULL, NULL),
(12212959, 6254934, 'Al Rifah ', 'Sharjah', 'al-rifah-sharjah-uae', '', '', NULL, NULL),
(12212960, 6254934, 'Al Jubail', 'Sharjah', 'al-jubail-sharjah-uae', '', '', NULL, NULL),
(12212961, 6254934, 'Al Rahmaniya ', 'Sharjah', 'al-rahmaniya-sharjah-uae', '', '', NULL, NULL),
(12212962, 6254934, 'Al Falaj ', 'Sharjah', 'al-falaj-sharjah-uae', '', '', NULL, NULL),
(12212963, 6254934, 'Al Mareija ', 'Sharjah', 'al-mareija-sharjah-uae', '', '', NULL, NULL),
(12212964, 6254934, 'Al Nekhailat ', 'Sharjah', 'al-nekhailat-sharjah-uae', '', '', NULL, NULL),
(12212965, 6254934, 'Al Noaf', 'Sharjah', 'al-noaf-sharjah-uae', '', '', NULL, NULL),
(12212966, 6254934, 'Al Ramla ', 'Sharjah', 'al-ramla-sharjah-uae', '', '', NULL, NULL),
(12212967, 6254934, 'Al Qadisiya', 'Sharjah', 'al-qadisiya-sharjah-uae', '', '', NULL, NULL),
(12212968, 6254934, 'Al Juraina ', 'Sharjah', 'al-juraina-sharjah-uae', '', '', NULL, NULL),
(12212969, 6254934, 'Al Ramtha', 'Sharjah', 'al-ramtha-sharjah-uae', '', '', NULL, NULL),
(12212970, 6254934, 'Al Soor', 'Sharjah', 'al-soor-sharjah-uae', '', '', NULL, NULL),
(12212971, 6254934, 'Bu Daniq ', 'Sharjah', 'bu-daniq-sharjah-uae', '', '', NULL, NULL),
(12212972, 6254934, 'Um Tarafa', 'Sharjah', 'um-tarafa-sharjah-uae', '', '', NULL, NULL),
(12212973, 6254934, 'Al Ghafia', 'Sharjah', 'al-ghafia-sharjah-uae', '', '', NULL, NULL),
(12212974, 6254934, 'Tilal City ', 'Sharjah', 'tilal-city-sharjah-uae', '', '', NULL, NULL),
(12212975, 6254934, 'Al Madam ', 'Sharjah', 'al-madam-sharjah-uae', '', '', NULL, NULL),
(12212976, 6254934, 'Al Azra', 'Sharjah', 'al-azra-sharjah-uae', '', '', NULL, NULL),
(12212977, 6254934, 'Sharjah University City', 'Sharjah', 'sharjah-university-city-sharjah-uae', '', '', NULL, NULL),
(12212978, 6254934, 'Aljada ', 'Sharjah', 'aljada-sharjah-uae', '', '', NULL, NULL),
(12212979, 6254934, 'Al Rifa', 'Sharjah', 'al-rifa-sharjah-uae', '', '', NULL, NULL),
(12212980, 6254934, 'Maleha ', 'Sharjah', 'maleha-sharjah-uae', '', '', NULL, NULL),
(12212981, 6254934, 'Al Khezamia', 'Sharjah', 'al-khezamia-sharjah-uae', '', '', NULL, NULL),
(12212982, 6254934, 'Sharjah Garden City', 'Sharjah', 'sharjah-garden-city-sharjah-uae', '', '', NULL, NULL),
(12212983, 6254934, 'Hamriyah Free Zone ', 'Sharjah', 'hamriyah-free-zone-sharjah-uae', '', '', NULL, NULL),
(12212984, 6254934, 'Al Sabkha', 'Sharjah', 'al-sabkha-sharjah-uae', '', '', NULL, NULL),
(12212985, 6254934, 'Al Hazannah', 'Sharjah', 'al-hazannah-sharjah-uae', '', '', NULL, NULL),
(12212986, 6254931, 'Al Nuaimiya', 'Ajman', 'al-nuaimiya-ajman-uae', '', '', NULL, NULL),
(12212987, 6254931, 'Al Rashidiya ', 'Ajman', 'al-rashidiya-ajman-uae', '', '', NULL, NULL),
(12212988, 6254931, 'Al Rawda ', 'Ajman', 'al-rawda-ajman-uae', '', '', NULL, NULL),
(12212989, 6254931, 'Ajman Downtown ', 'Ajman', 'ajman-downtown-ajman-uae', '', '', NULL, NULL),
(12212990, 6254931, 'Al Sawan ', 'Ajman', 'al-sawan-ajman-uae', '', '', NULL, NULL),
(12212991, 6254931, 'Al Mowaihat', 'Ajman', 'al-mowaihat-ajman-uae', '', '', NULL, NULL),
(12212992, 6254931, 'Al Jurf', 'Ajman', 'al-jurf-ajman-uae', '', '', NULL, NULL),
(12212993, 6254931, 'Corniche Ajman ', 'Ajman', 'corniche-ajman-ajman-uae', '', '', NULL, NULL),
(12212994, 6254931, 'Al Hamidiyah ', 'Ajman', 'al-hamidiyah-ajman-uae', '', '', NULL, NULL),
(12212995, 6254931, 'Emirates City', 'Ajman', 'emirates-city-ajman-uae', '', '', NULL, NULL),
(12212996, 6254931, 'Garden City', 'Ajman', 'garden-city-ajman-uae', '', '', NULL, NULL),
(12212997, 6254931, 'Al Rumaila ', 'Ajman', 'al-rumaila-ajman-uae', '', '', NULL, NULL),
(12212998, 6254931, 'Ajman Industrial ', 'Ajman', 'ajman-industrial-ajman-uae', '', '', NULL, NULL),
(12212999, 6254931, 'Al Bustan', 'Ajman', 'al-bustan-ajman-uae', '', '', NULL, NULL),
(12213000, 6254931, 'Al Yasmeen ', 'Ajman', 'al-yasmeen-ajman-uae', '', '', NULL, NULL),
(12213001, 6254931, 'Al Nakhil', 'Ajman', 'al-nakhil-ajman-uae', '', '', NULL, NULL),
(12213002, 6254931, 'Sheikh Khalifa Bin Zayed Street', 'Ajman', 'sheikh-khalifa-bin-zayed-street-ajman-uae', '', '', NULL, NULL),
(12213003, 6254931, 'Al Zahya ', 'Ajman', 'al-zahya-ajman-uae', '', '', NULL, NULL),
(12213004, 6254931, 'King Faisal Street ', 'Ajman', 'king-faisal-street-ajman-uae', '', '', NULL, NULL),
(12213005, 6254931, 'Al Amerah', 'Ajman', 'al-amerah-ajman-uae', '', '', NULL, NULL),
(12213006, 6254931, 'Musherief', 'Ajman', 'musherief-ajman-uae', '', '', NULL, NULL),
(12213007, 6254931, 'Liwara 1 ', 'Ajman', 'liwara-1-ajman-uae', '', '', NULL, NULL),
(12213008, 6254931, 'Al Raqaib', 'Ajman', 'al-raqaib-ajman-uae', '', '', NULL, NULL),
(12213009, 6254931, 'Al Helio ', 'Ajman', 'al-helio-ajman-uae', '', '', NULL, NULL),
(12213010, 6254933, 'Al Hamra Village ', 'Ras Al Khaimah ', 'al-hamra-village-ras-al-khaimah-uae', '', '', NULL, NULL),
(12213011, 6254933, 'Al Marjan Island ', 'Ras Al Khaimah ', 'al-marjan-island-ras-al-khaimah-uae', '', '', NULL, NULL),
(12213012, 6254933, 'Mina Al Arab ', 'Ras Al Khaimah ', 'mina-al-arab-ras-al-khaimah-uae', '', '', NULL, NULL),
(12213013, 6254933, 'Al Seer', 'Ras Al Khaimah ', 'al-seer-ras-al-khaimah-uae', '', '', NULL, NULL),
(12213014, 6254933, 'Al Qusaidat', 'Ras Al Khaimah ', 'al-qusaidat-ras-al-khaimah-uae', '', '', NULL, NULL),
(12213015, 6254933, 'Al Mairid', 'Ras Al Khaimah ', 'al-mairid-ras-al-khaimah-uae', '', '', NULL, NULL),
(12213016, 6254933, 'Dafan Al Nakheel ', 'Ras Al Khaimah ', 'dafan-al-nakheel-ras-al-khaimah-uae', '', '', NULL, NULL),
(12213017, 6254933, 'Al Nakheel ', 'Ras Al Khaimah ', 'al-nakheel-ras-al-khaimah-uae', '', '', NULL, NULL),
(12213018, 6254933, 'The Cove Rotana Resort ', 'Ras Al Khaimah ', 'the-cove-rotana-resort-ras-al-khaimah-uae', '', '', NULL, NULL),
(12213019, 6254933, 'Rak City ', 'Ras Al Khaimah ', 'rak-city-ras-al-khaimah-uae', '', '', NULL, NULL),
(12213020, 6254933, 'Khuzam ', 'Ras Al Khaimah ', 'khuzam-ras-al-khaimah-uae', '', '', NULL, NULL),
(12213021, 6254933, 'Al Refaa ', 'Ras Al Khaimah ', 'al-refaa-ras-al-khaimah-uae', '', '', NULL, NULL),
(12213022, 6254933, 'Al Uraibi', 'Ras Al Khaimah ', 'al-uraibi-ras-al-khaimah-uae', '', '', NULL, NULL),
(12213023, 6254933, 'Yasmin Village ', 'Ras Al Khaimah ', 'yasmin-village-ras-al-khaimah-uae', '', '', NULL, NULL),
(12213024, 6254935, 'Al Maqtaa', 'Umm Al Quwain', 'al-maqtaa-umm-al-quwain-uae', '', '', NULL, NULL),
(12213025, 6254935, 'Johar', 'Umm Al Quwain', 'johar-umm-al-quwain-uae', '', '', NULL, NULL),
(12213026, 6254935, 'Al Salamah ', 'Umm Al Quwain', 'al-salamah-umm-al-quwain-uae', '', '', NULL, NULL),
(12213027, 6254935, 'King Faisal Street ', 'Umm Al Quwain', 'king-faisal-street-umm-al-quwain-uae', '', '', NULL, NULL),
(12213028, 6254935, 'Umm Al Quwain Marina ', 'Umm Al Quwain', 'umm-al-quwain-marina-umm-al-quwain-uae', '', '', NULL, NULL),
(12213029, 6254935, 'Al Aahad ', 'Umm Al Quwain', 'al-aahad-umm-al-quwain-uae', '', '', NULL, NULL),
(12213030, 6254935, 'Al Abraq ', 'Umm Al Quwain', 'al-abraq-umm-al-quwain-uae', '', '', NULL, NULL),
(12213031, 6254935, 'Al Atheab', 'Umm Al Quwain', 'al-atheab-umm-al-quwain-uae', '', '', NULL, NULL),
(12213032, 6254935, 'Al Dar Al Baidah ', 'Umm Al Quwain', 'al-dar-al-baidah-umm-al-quwain-uae', '', '', NULL, NULL),
(12213033, 6254935, 'Al Dhaid ', 'Umm Al Quwain', 'al-dhaid-umm-al-quwain-uae', '', '', NULL, NULL),
(12213034, 6254935, 'Al Door', 'Umm Al Quwain', 'al-door-umm-al-quwain-uae', '', '', NULL, NULL),
(12213035, 6254935, 'Al Haditha ', 'Umm Al Quwain', 'al-haditha-umm-al-quwain-uae', '', '', NULL, NULL),
(12213036, 6254935, 'Al Hamrah', 'Umm Al Quwain', 'al-hamrah-umm-al-quwain-uae', '', '', NULL, NULL),
(12213037, 6254935, 'Al Haweah', 'Umm Al Quwain', 'al-haweah-umm-al-quwain-uae', '', '', NULL, NULL),
(12213038, 6254935, 'Al Khor', 'Umm Al Quwain', 'al-khor-umm-al-quwain-uae', '', '', NULL, NULL),
(12213039, 6254935, 'Al Madar ', 'Umm Al Quwain', 'al-madar-umm-al-quwain-uae', '', '', NULL, NULL),
(12213040, 6254935, 'Al Maidan', 'Umm Al Quwain', 'al-maidan-umm-al-quwain-uae', '', '', NULL, NULL),
(12213041, 6254935, 'Al Medfeq', 'Umm Al Quwain', 'al-medfeq-umm-al-quwain-uae', '', '', NULL, NULL),
(12213042, 6254935, 'Al Raas', 'Umm Al Quwain', 'al-raas-umm-al-quwain-uae', '', '', NULL, NULL),
(12213043, 6254935, 'Al Rafaah', 'Umm Al Quwain', 'al-rafaah-umm-al-quwain-uae', '', '', NULL, NULL),
(12213044, 6254935, 'Al Ramlah', 'Umm Al Quwain', 'al-ramlah-umm-al-quwain-uae', '', '', NULL, NULL),
(12213045, 6254935, 'Al Reqqah', 'Umm Al Quwain', 'al-reqqah-umm-al-quwain-uae', '', '', NULL, NULL),
(12213046, 6254935, 'Al Rowdah', 'Umm Al Quwain', 'al-rowdah-umm-al-quwain-uae', '', '', NULL, NULL),
(12213047, 6254935, 'Defence Camp ', 'Umm Al Quwain', 'defence-camp-umm-al-quwain-uae', '', '', NULL, NULL),
(12213048, 6254935, 'Emirates Modern Industrial ', 'Umm Al Quwain', 'emirates-modern-industrial-umm-al-quwain-uae', '', '', NULL, NULL),
(12213049, 6254935, 'Green Belt ', 'Umm Al Quwain', 'green-belt-umm-al-quwain-uae', '', '', NULL, NULL),
(12213050, 6254935, 'Industrial Area', 'Umm Al Quwain', 'industrial-area-umm-al-quwain-uae', '', '', NULL, NULL),
(12213051, 6254935, 'Lamagdar ', 'Umm Al Quwain', 'lamagdar-umm-al-quwain-uae', '', '', NULL, NULL),
(12213052, 6254935, 'Latin', 'Umm Al Quwain', 'latin-umm-al-quwain-uae', '', '', NULL, NULL),
(12213053, 6254935, 'Old Town Area', 'Umm Al Quwain', 'old-town-area-umm-al-quwain-uae', '', '', NULL, NULL),
(12213054, 6254935, 'Shanteer ', 'Umm Al Quwain', 'shanteer-umm-al-quwain-uae', '', '', NULL, NULL),
(12213055, 6254935, 'Umm Al Quwain Airport', 'Umm Al Quwain', 'umm-al-quwain-airport-umm-al-quwain-uae', '', '', NULL, NULL),
(12213056, 6254935, 'Umm Al Thuoob', 'Umm Al Quwain', 'umm-al-thuoob-umm-al-quwain-uae', '', '', NULL, NULL),
(12213057, 6254936, 'Al Jimi', 'Al Ain ', 'al-jimi-al-ain-uae', '', '', NULL, NULL),
(12213058, 6254936, 'Asharej', 'Al Ain ', 'asharej-al-ain-uae', '', '', NULL, NULL),
(12213059, 6254936, 'Al Khabisi ', 'Al Ain ', 'al-khabisi-al-ain-uae', '', '', NULL, NULL),
(12213060, 6254936, 'Al Muwaiji ', 'Al Ain ', 'al-muwaiji-al-ain-uae', '', '', NULL, NULL),
(12213061, 6254936, 'Zakher ', 'Al Ain ', 'zakher-al-ain-uae', '', '', NULL, NULL),
(12213062, 6254936, 'Al Mutarad ', 'Al Ain ', 'al-mutarad-al-ain-uae', '', '', NULL, NULL),
(12213063, 6254936, 'Al Marakhaniya ', 'Al Ain ', 'al-marakhaniya-al-ain-uae', '', '', NULL, NULL),
(12213064, 6254936, 'Al Sorooj', 'Al Ain ', 'al-sorooj-al-ain-uae', '', '', NULL, NULL),
(12213065, 6254936, 'Falaj Hazzaa ', 'Al Ain ', 'falaj-hazzaa-al-ain-uae', '', '', NULL, NULL),
(12213066, 6254936, 'Al Hili', 'Al Ain ', 'al-hili-al-ain-uae', '', '', NULL, NULL),
(12213067, 6254936, 'Al Jahili', 'Al Ain ', 'al-jahili-al-ain-uae', '', '', NULL, NULL),
(12213068, 6254936, 'Central District ', 'Al Ain ', 'central-district-al-ain-uae', '', '', NULL, NULL),
(12213069, 6254936, 'Al Towayya ', 'Al Ain ', 'al-towayya-al-ain-uae', '', '', NULL, NULL),
(12213070, 6254936, 'Al Murabaa ', 'Al Ain ', 'al-murabaa-al-ain-uae', '', '', NULL, NULL),
(12213071, 6254936, 'Al Nyadat', 'Al Ain ', 'al-nyadat-al-ain-uae', '', '', NULL, NULL),
(12213072, 6254936, 'Al Zakher', 'Al Ain ', 'al-zakher-al-ain-uae', '', '', NULL, NULL),
(12213073, 6254936, 'Al Rawdah Al Sharqiyah ', 'Al Ain ', 'al-rawdah-al-sharqiyah-al-ain-uae', '', '', NULL, NULL),
(12213074, 6254936, 'Al Mutawaa ', 'Al Ain ', 'al-mutawaa-al-ain-uae', '', '', NULL, NULL),
(12213075, 6254936, 'Al Bateen', 'Al Ain ', 'al-bateen-al-ain-uae', '', '', NULL, NULL),
(12213076, 6254936, 'Al Foah', 'Al Ain ', 'al-foah-al-ain-uae', '', '', NULL, NULL),
(12213077, 6254936, 'Al Sidrah', 'Al Ain ', 'al-sidrah-al-ain-uae', '', '', NULL, NULL),
(12213078, 6254936, 'Al Maqam ', 'Al Ain ', 'al-maqam-al-ain-uae', '', '', NULL, NULL),
(12213079, 6254936, 'Shab Al Ashkar ', 'Al Ain ', 'shab-al-ashkar-al-ain-uae', '', '', NULL, NULL),
(12213080, 6254936, 'Al Khalidiya ', 'Al Ain ', 'al-khalidiya-al-ain-uae', '', '', NULL, NULL),
(12213081, 6254936, 'Sheibat Al Watah ', 'Al Ain ', 'sheibat-al-watah-al-ain-uae', '', '', NULL, NULL),
(12213082, 6254936, 'Al Qattara ', 'Al Ain ', 'al-qattara-al-ain-uae', '', '', NULL, NULL),
(12213083, 6254936, 'Al Masoudi ', 'Al Ain ', 'al-masoudi-al-ain-uae', '', '', NULL, NULL),
(12213084, 6254932, 'Al Faseel', 'Fujairah ', 'al-faseel-fujairah-uae', '', '', NULL, NULL),
(12213085, 6254932, 'Al Gurfaa', 'Fujairah ', 'al-gurfaa-fujairah-uae', '', '', NULL, NULL),
(12213086, 6254932, 'Al Hilal ', 'Fujairah ', 'al-hilal-fujairah-uae', '', '', NULL, NULL),
(12213087, 6254932, 'Al Ittihad ', 'Fujairah ', 'al-ittihad-fujairah-uae', '', '', NULL, NULL),
(12213088, 6254932, 'Al Mahatta ', 'Fujairah ', 'al-mahatta-fujairah-uae', '', '', NULL, NULL),
(12213089, 6254932, 'Al Sharia', 'Fujairah ', 'al-sharia-fujairah-uae', '', '', NULL, NULL),
(12213090, 6254932, 'Al Sharia 1', 'Fujairah ', 'al-sharia-1-fujairah-uae', '', '', NULL, NULL),
(12213091, 6254932, 'Anajaimat', 'Fujairah ', 'anajaimat-fujairah-uae', '', '', NULL, NULL),
(12213092, 6254932, 'Fujairah Free Zone ', 'Fujairah ', 'fujairah-free-zone-fujairah-uae', '', '', NULL, NULL),
(12213093, 6254932, 'Ghalala', 'Fujairah ', 'ghalala-fujairah-uae', '', '', NULL, NULL),
(12213094, 6254932, 'Haleefath', 'Fujairah ', 'haleefath-fujairah-uae', '', '', NULL, NULL),
(12213095, 6254932, 'Ishwais', 'Fujairah ', 'ishwais-fujairah-uae', '', '', NULL, NULL),
(12213096, 6254932, 'Madhab ', 'Fujairah ', 'madhab-fujairah-uae', '', '', NULL, NULL),
(12213097, 6254932, 'Merashid ', 'Fujairah ', 'merashid-fujairah-uae', '', '', NULL, NULL),
(12213098, 6254932, 'Owaid', 'Fujairah ', 'owaid-fujairah-uae', '', '', NULL, NULL),
(12213099, 6254932, 'Port of Fujairah ', 'Fujairah ', 'port-of-fujairah-fujairah-uae', '', '', NULL, NULL),
(12213100, 6254932, 'Rughaylat', 'Fujairah ', 'rughaylat-fujairah-uae', '', '', NULL, NULL),
(12213101, 6254932, 'Rumaila', 'Fujairah ', 'rumaila-fujairah-uae', '', '', NULL, NULL),
(12213102, 6254932, 'Safad', 'Fujairah ', 'safad-fujairah-uae', '', '', NULL, NULL),
(12213103, 6254932, 'Sakamkam ', 'Fujairah ', 'sakamkam-fujairah-uae', '', '', NULL, NULL),
(12213104, 6254932, 'Seh Al Rahi', 'Fujairah ', 'seh-al-rahi-fujairah-uae', '', '', NULL, NULL),
(12213105, 6254932, 'Town Center', 'Fujairah ', 'town-center-fujairah-uae', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `commenter_id` varchar(95) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commenter_type` varchar(95) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guest_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guest_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commentable_type` varchar(95) COLLATE utf8mb4_unicode_ci NOT NULL,
  `commentable_id` varchar(95) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `child_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_abbr` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `country_status` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_name`, `country_abbr`, `country_slug`, `created_at`, `updated_at`, `country_status`) VALUES
(396, 'United Arab Emirates', 'UAE', 'uae', '2021-11-12 00:25:16', '2021-11-12 00:25:16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customizations`
--

CREATE TABLE `customizations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customization_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customization_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customization_default_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme_id` int(11) NOT NULL,
  `customization_recommend_width_px` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'for homepage or innerpage background image',
  `customization_recommend_height_px` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'for homepage or innerpage background image'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customizations`
--

INSERT INTO `customizations` (`id`, `customization_key`, `customization_value`, `created_at`, `updated_at`, `customization_default_value`, `theme_id`, `customization_recommend_width_px`, `customization_recommend_height_px`) VALUES
(1, 'site_primary_color', '#30e3ca', '2021-11-11 04:57:46', '2021-11-11 04:57:47', '#30e3ca', 1, NULL, NULL),
(2, 'site_header_background_color', '#fff', '2021-11-11 04:57:46', '2021-11-11 04:57:47', '#fff', 1, NULL, NULL),
(3, 'site_footer_background_color', '#333333', '2021-11-11 04:57:46', '2021-11-11 04:57:47', '#333333', 1, NULL, NULL),
(4, 'site_header_font_color', '#000', '2021-11-11 04:57:46', '2021-11-11 04:57:47', '#000', 1, NULL, NULL),
(5, 'site_footer_font_color', '#fff', '2021-11-11 04:57:46', '2021-11-11 04:57:47', '#fff', 1, NULL, NULL),
(6, 'site_homepage_header_background_type', 'image_background', '2021-11-11 04:57:46', '2021-12-18 20:14:35', 'default_background', 1, NULL, NULL),
(7, 'site_homepage_header_background_color', NULL, '2021-11-11 04:57:46', '2021-11-11 04:57:47', NULL, 1, NULL, NULL),
(8, 'site_homepage_header_background_image', 'homepage-header-2021-12-18-61bddebb5214c1.jpg', '2021-11-11 04:57:46', '2021-12-18 20:14:35', NULL, 1, '1200', '800'),
(9, 'site_homepage_header_background_youtube_video', NULL, '2021-11-11 04:57:46', '2021-11-11 04:57:47', NULL, 1, NULL, NULL),
(10, 'site_innerpage_header_background_type', 'default_background', '2021-11-11 04:57:46', '2021-11-11 04:57:47', 'default_background', 1, NULL, NULL),
(11, 'site_innerpage_header_background_color', NULL, '2021-11-11 04:57:46', '2021-11-11 04:57:47', NULL, 1, NULL, NULL),
(12, 'site_innerpage_header_background_image', NULL, '2021-11-11 04:57:46', '2021-11-11 04:57:47', NULL, 1, '1200', '600'),
(13, 'site_innerpage_header_background_youtube_video', NULL, '2021-11-11 04:57:46', '2021-11-11 04:57:47', NULL, 1, NULL, NULL),
(14, 'site_homepage_header_title_font_color', '#7aeaed', '2021-11-11 04:57:46', '2021-12-18 20:15:49', '#fff', 1, NULL, NULL),
(15, 'site_homepage_header_paragraph_font_color', 'white', '2021-11-11 04:57:46', '2021-12-18 20:17:18', 'rgba(255, 255, 255, 0.5)', 1, NULL, NULL),
(16, 'site_innerpage_header_title_font_color', 'white', '2021-11-11 04:57:46', '2021-12-18 19:59:10', '#fff', 1, NULL, NULL),
(17, 'site_innerpage_header_paragraph_font_color', 'rgba(255, 255, 255, 0.5)', '2021-11-11 04:57:46', '2021-11-11 04:57:47', 'rgba(255, 255, 255, 0.5)', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT NULL COMMENT 'ABANDONED',
  `custom_field_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_field_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1:text 2:select 3:multi-select 4:link',
  `custom_field_seed_value` text COLLATE utf8mb4_unicode_ci,
  `custom_field_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_fields`
--

INSERT INTO `custom_fields` (`id`, `category_id`, `custom_field_name`, `custom_field_type`, `custom_field_seed_value`, `custom_field_order`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Price Range', '2', '$,$$,$$$,$$$$', 1, '2021-11-10 04:57:52', '2021-11-10 04:57:52'),
(3, NULL, 'Wi-Fi', '2', 'Free, Paid', 6, '2021-11-10 04:57:52', '2021-12-31 07:25:35'),
(5, NULL, 'General Features', '3', 'Offering a Deal, Accepts Credit Cards, Good for Kids, Wheelchair Accessible, By Appointment Only, Dogs Allowed, Sells Gift Certificates, Hot and New, Offers Military Discount, Gender Neutral Restrooms, Open to All', 2, '2021-11-10 04:57:52', '2021-11-10 04:57:52'),
(6, NULL, 'General Amenities', '3', 'Free Parking, Free Wi-fi, Water Dispensers, Has TV, Pets Allowed, By Appointment Only', 2, '2021-11-10 04:57:52', '2021-12-31 07:22:48'),
(11, NULL, 'Online Shop', '4', NULL, 3, '2021-11-10 04:57:52', '2021-11-10 04:57:52'),
(12, NULL, 'Request an Appointment', '4', NULL, 3, '2021-11-10 04:57:52', '2021-11-10 04:57:52'),
(15, NULL, 'Request a Quote', '4', NULL, 3, '2021-11-10 04:57:52', '2021-11-10 04:57:52'),
(16, NULL, 'Caters to', '2', 'Male, Female, UniSex', 3, '2021-11-14 04:36:39', '2021-12-31 07:28:55'),
(17, NULL, 'Center Type', '2', 'Solo, Multilocation', 9, '2021-11-14 04:37:59', '2021-11-14 04:54:27'),
(18, NULL, 'Massage Type', '3', 'Swedish massage, Hot stone massage, Aromatherapy massage, Ayurvedic Massage, Deep tissue massage, Sports massage, Trigger point massage, Reflexology, Shiatsu massage, Thai massage, Prenatal massage, Couple’s massage, Chair massage, Watsu massage, Lymph Massage, Lifestream Massage, Healing Touch, Anma Massage (Japanese), Balinese Massage, Aqua Massage, Chinese Massage, Hilot Massage, Any Other Type Massage', 8, '2021-11-14 04:53:56', '2021-11-14 04:53:56'),
(19, NULL, 'Spa Services', '3', 'Facial Treatments, Body Treatments, Massage Treatments, For Mothers-to-be, Ayurvedic spa, Bootcamp spa, Club spa, Day spa, Dental spa, Destination spa, Hammam spa, Medical spa, Mineral spring spa, Spa resort, Thalassotherapy spa, Wedding Journey, Kids and Teens Spa, Beauty Spa, Baby Spa', 5, '2021-12-19 03:15:35', '2021-12-19 11:40:31'),
(20, NULL, 'Salon Services', '3', 'Manicure & Pedicure, Bridal Make up, Hair Spa, Facials, Waxing and bleaching, Hair Loss treatment, Hair-Cutting, Hair Colouring, Hair Sytling, Waxing and Hair removal, Nail treatments, Facials, Skin care treatments, Tanning, Face threading, Pedicure, Manicure, Trimming, Bleaching Service, Hair smoothing, Nail art, Hair straightening', 3, '2021-12-19 03:20:05', '2021-12-31 07:28:16'),
(22, NULL, 'Beauty & Wellness Center', '3', 'Eczema, Psoriasis, Vitiligo, Childhood Obesity, Poor Weight Gain, Acne & Acne Scar Solutions, Age Control Solutions, Dark Circle Solutions, Hand & Feet Rejuvenation, Lip Enhancement Solutions, Pigmentation Solutions, Skin Glow Solutions, Ultima Laser Hair Reduction Solutions, Wart Removal, Volume Filling & Augmentation Solutions, Skin Rejuvenation, Stretch Mark Solutions, Sweat-Free Solutions', 5, '2021-12-19 11:33:45', '2021-12-19 11:33:45'),
(23, NULL, 'Fitness Center Amenities', '3', '24 Hour Facility, Personal Training, Personal Trainer, Juice Bar, Swimming Pool, Steam Room, Sauna, Cardio Equipment, Strength Training Equipment, Stretching Area Cycling Studio, Music And Video Entertainment, Nutritional Support, Physiotherapy, Online Classes, Lounge Area, Towels, Spin Studio, Mind and Body Studio, Group Sessions, Lockers, Showers, Changing Rooms, Vending Machine', NULL, '2021-12-31 07:05:25', '2021-12-31 16:51:29'),
(24, NULL, 'Accessibility', '3', 'Wheelchair Accessible Entrace, Wheelchair Accessible Washroom, Wheelchair Accessible Seating', NULL, '2021-12-31 07:12:39', '2021-12-31 07:12:39'),
(25, NULL, 'Payments', '3', 'Card Payments, Mobile Payments, Cash Only, Cheques', NULL, '2021-12-31 07:16:46', '2021-12-31 07:16:46'),
(26, NULL, 'Health & Safety', '3', 'Mask Required, Temperature Check Requried, PCR Test Requried, Vaccination Certificate Requried', NULL, '2021-12-31 07:20:33', '2021-12-31 07:20:33'),
(27, NULL, 'Service Offerings (Gyms)', '3', 'Fitness Improvement, Fat Loss, Muscle Building, Injury Rehab/Recovery, Strength Building, Body Transformation, Event Specific', NULL, '2021-12-31 16:55:10', '2021-12-31 16:55:10'),
(28, NULL, 'Cleansed', '2', 'Yes, No', 1, '2021-12-31 17:00:44', '2021-12-31 17:00:44');

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
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `faqs_question` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `faqs_question`, `faqs_answer`, `faqs_order`, `created_at`, `updated_at`) VALUES
(1, 'How to list my item?', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corrupti esse voluptates deleniti, ratione, suscipit quam cumque beatae, enim mollitia voluptatum velit excepturi possimus odio dolore molestiae officiis aspernatur provident praesentium.', 1, '2021-11-10 04:57:48', '2021-11-10 04:57:48'),
(2, 'Is this available in my country?', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corrupti esse voluptates deleniti, ratione, suscipit quam cumque beatae, enim mollitia voluptatum velit excepturi possimus odio dolore molestiae officiis aspernatur provident praesentium.', 2, '2021-11-10 04:57:48', '2021-11-10 04:57:48'),
(3, 'Is it free?', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corrupti esse voluptates deleniti, ratione, suscipit quam cumque beatae, enim mollitia voluptatum velit excepturi possimus odio dolore molestiae officiis aspernatur provident praesentium.', 3, '2021-11-10 04:57:48', '2021-11-10 04:57:48'),
(4, 'How the system works?', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corrupti esse voluptates deleniti, ratione, suscipit quam cumque beatae, enim mollitia voluptatum velit excepturi possimus odio dolore molestiae officiis aspernatur provident praesentium.', 4, '2021-11-10 04:57:48', '2021-11-10 04:57:48');

-- --------------------------------------------------------

--
-- Table structure for table `import_csv_data`
--

CREATE TABLE `import_csv_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `import_csv_data_filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `import_csv_data_sample` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `import_csv_data_skip_first_row` int(11) NOT NULL DEFAULT '1',
  `import_csv_data_total_rows` int(11) NOT NULL,
  `import_csv_data_parsed_rows` int(11) NOT NULL DEFAULT '0',
  `import_csv_data_parse_status` int(11) NOT NULL DEFAULT '1' COMMENT '1:not parsed 2:partial parsed 3:all parsed',
  `import_csv_data_for_model` int(11) NOT NULL DEFAULT '1' COMMENT '1:listing 2:category 3:product',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `import_csv_data`
--

INSERT INTO `import_csv_data` (`id`, `import_csv_data_filename`, `import_csv_data_sample`, `import_csv_data_skip_first_row`, `import_csv_data_total_rows`, `import_csv_data_parsed_rows`, `import_csv_data_parse_status`, `import_csv_data_for_model`, `created_at`, `updated_at`) VALUES
(2, '61cedd73769d7-menteybody-listings-upload-template-gyms-Dec2021-Test-2.csv', '[[\"Waldorf Astoria Dubai Palm Jumeirah\",\"gym-fitness-centre-Waldorf-Astoria-Dubai-Palm-Jumeirah\",\"Crescent Rd - The Palm Jumeirah - Dubai\",\"Palm Jumeirah\",\"Dubai\",\"United Arab Emirates\",\"25.1345825\",\"55.1510903\",\"12345\",\"Waldorf Astoria Dubai Palm Jumeirah located in Dubai is one of the best Gyms in this area.\",\"04 818 2222\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],[\"The Spa\",\"gym-fitness-centre-The-Spa\",\"1 Sheikh Zayed Rd - Trade Centre - Trade Centre 1 - Dubai\",\"\",\"Dubai\",\"United Arab Emirates\",\"25.2265\",\"55.2842\",\"12345\",\"The Spa located in Dubai is one of the best Gyms in this area.\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"]]', 1, 2, 2, 3, 1, '2021-12-31 17:37:39', '2021-12-31 18:11:57'),
(3, '61f3980ce3cb9-yoga-import-sample-1.csv', '[[\"7341\",\"InterContinental Dubai Marina, an IHG Hotel\",\"King Salman Bin Abdulaziz Al Saud St - Dubai Marina - Dubai\",\"\",\"King Salman Bin Abdulaziz Al Saud St - Dubai Marina - Dubai\",\"King\",\"Salman Bin Abdulaziz Al Saud St - Dubai Marina - Dubai\",\"34HQ+H4 Dubai\",\"ihg.com\",\"04 446 6777\",\"\",\"https:\\/\\/www.facebook.com\\/ihghotels\",\"https:\\/\\/twitter.com\\/IHGhotels\",\"\",\"25.0789633\",\"55.1378512\",\"\",\"\",\"4.5\",\"2,738 reviews\",\"https:\\/\\/lh5.googleusercontent.com\\/p\\/AF1QipMn9qKg8MpW8skFIWo1PlBqqkQZnczLzpzT3wRn=w408-h272-k-no\",\"????????????? ??? ??????\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"https:\\/\\/www.google.com\\/aclk?sa=l&ai=Cm4u5mIm8YYKAKoH8sgK9sIiIA4j1kc1ilq-v1IENgtjV3eohCAoQASAAKARgkQaCAR9nb29nbGVtb2Rlcy1kZXNrdG9wLW1hcHMtaG90ZWxzoAGP85HxA6gDBaoERk_QmJykEnMsGKrPiu25tayFd1sFz-T1OmJ5QeIY-g3LFV_bRFZiDQcjMNdm5B8PNnDkGW-U9COv5SibYGkD89HEYh50Kf3ABIDIusPOA4gFqLiE1i3ABZIBoAZlkAcDyAmsAaIKbQoKMjAyMS0xMi0xNxABKSNFg-s_bDDSMgNpaGc4AEgBUglLRFhHSUdDT1JdAKCARGWuh2dDcgNBRUSCAQYKBEtEWEewAQG4AQDIAeeA2i_gAQLoAQHwAQH4AQCgAgDgAgDqAgNBRUTwAgGKAwDoCgGQCwPQCxu4DAHQFQGAFwE&sig=AOD64_12Hp8_ZEMAaF8f2-SWVvvp-FOnrg&adurl=https:\\/\\/travel-productads.koddi.com\\/PropertyAdvocateAPI\\/ClickRedirect?client%3DIHG%26channel%3DGHPA%26placement%3Dmapresults%26campaign%3D12260023336%26destinationUrl%3Dhttps%253A%252F%252Fwww.ihg.com%252Fredirect%253Fpath%253Drates%2526brandCode%253Dic%2526localeCode%253Den%2526regionCode%253DAE%2526currency%253DAED%2526rate%253D1029.00%2526hotelCode%253DDXBPL%2526checkInDate%253D17%2526checkInMonthYear%253D122021%2526checkOutDate%253D18%2526checkOutMonthYear%253D122021%2526numberOfAdults%253D2%2526numberOfChildren%253D0%2526numberOfRooms%253D1%2526cm_mmc%253Dhpa_paid_AE_desktop_DXBPL_mapresults_1_AED_2021-12-17_default_12260023336__KDXGIGCOR%2526glat%253DMETA%2526selectedRatePlan%253DKDXGIGCOR%2526_PMID%253D99618783, https:\\/\\/www.google.com\\/aclk?sa=l&ai=Cz5-PmIm8YYKAKoH8sgK9sIiIA_aZ0qpe7cismK4L69XtzYwaCAoQAiAAKARgkQaCAR9nb29nbGVtb2Rlcy1kZXNrdG9wLW1hcHMtaG90ZWxzoAHQypnZAqgDBaoER0_Qz5mmEnMsGKrPitDkwp-Fd1sc5M4j9qdxQeJYYt3Bjc_yb9k2C3DUKzdj2HjTAdxeMU2U-DdX4BT8vFQh89_S9UpyXgrhwAS-r4Kt-QKIBcPQzeEkwAWSAaAGZZAHA8gJrAGiCqIBCgoyMDIxLTEyLTE3EAEpI0WD6z9sMNIyCXplbmhvdGVsczgASAFSFTEzMC1uby1tZWFsX3dlYl9mYWxzZV3skWRDZR-FY0JyA1VTRIIBBQoDMTMwigEhSW50ZXJuYXRpb25hbF9FTi1VUy1VU0RfemVuaG90ZWxzsAEBuAEAyAGX2pUw4AEA6AEC8AEB-AEBoAIA4AIA6gIDQUVE8AIBigMA6AoDkAsD0AsbuAwB0BUBgBcB&sig=AOD64_3Nk1tZsfX3FmaTBcC5iuNXsUBWBA&adurl=https:\\/\\/www.zenhotels.com\\/go\\/rooms\\/6792398\\/?dates%3D17.12.2021-18.12.2021%26cur%3DAED%26lang%3Den%26utm_source%3Dgoogle_hotelads%26utm_medium%3Dcpc-metasearch%26partner_slug%3Dgoogle%26guests%3D2%26from%3Dintercontinental_dubai_marina.280.USD.h-93aad979-20b9-5e8b-898c-d1fda3f4f970%26utm_campaign%3Den-AE%26room%3Ds-a834499b-34d0-5e60-a44f-c0186b9bcad8%26price%3Done%26scroll%3Dprices%26partner_data%3D_5xp9oreO1yMyb38quDcDXBksTxELkEIxETxKnZgE-p20Uff1Vht-o5KL4Of3B3n-CxJ3BidBW6khtiywo-k2Eiv3wstTKHinLQFSC3fiM0cGbLLYupKeHe8tJDD4M_7lv1D9cM2Zw%3D%3D%26utm_content%3Dcommissions%26utm_term%3Dgacid_9868372035.bw_0.los_1.dow_Friday.dtype_default.hid_6792398.rid_130.aud_.d_desktop.ad_1.ctype_hotel.promo_0.apireqtype_common, https:\\/\\/www.google.com\\/aclk?sa=L&ai=CPw30mIm8YYKAKoH8sgK9sIiIA6r5k9RYyfG-ztkO6eSg2IkrCAoQAyAAKARgkQaCAR9nb29nbGVtb2Rlcy1kZXNrdG9wLW1hcHMtaG90ZWxzqQIC0ZMyqQGzPqgDBaoERE_QyPfGEnNkGC-MRetE2RwoV5McQYaM92p5ATpQIJ_DrF1EsF9Cicu3ycQpKKO1FNbtO2OMcsK8quQtcksN62soaz7wwASDyea68AOIBYjd7N4YwAWSAaAGZZAHA8gJrAGiCpIBCgoyMDIxLTEyLTE3EAEpI0WD6z9sMNIyE2Jvb2tpbmcuY29tU3RhbmRhcmQ4AEgBUhkxMzcwNDk2MTRfODc4NzkzMTFfM180Ml8wXQCggERlZoZ7Q3IDQUVEggELCgkxMzcwNDk2MTSwAQG4AQDIAf_N5C_gAQLoAQPwAQH4AQKgAgDgAgDqAgNBRUTwAgGKAwDoCgGQCwPQCxvQFQGAFwE&sig=AOD64_0BCsu5gUT8pnpPH33CkmxqYcTLSQ&adurl=https:\\/\\/www.booking.com\\/hotel\\/ae\\/intercontinental-dubai-marina.html?%26checkin%3D2021-12-17%26checkout%3D2021-12-18%26group_adults%3D2%26show_room%3D137049614_87879311_3_42_0%26lang%3Den%26selected_currency%3DAED%26exrt%3D1.00000000%26ext_price_total%3D1280.53%26ext_price_tax%3D251.52%26xfc%3DAED%26group_children%3D0%26req_children%3D0%26%26utm_source%3Dmetagha%26utm_medium%3Dmapresults%26utm_campaign%3DAE%26utm_term%3Dhotel-1370496%26utm_content%3Ddev-desktop_los-1_bw-0_dow-Friday_defdate-1_room-0_gstadt-2_rateid-0_aud-0_gacid-6641364616_mcid-10_ppa-0_clrid-0_ad-1_gstkid-0_checkin-20211217%26aid%3D1288301%26label%3Dmetagha-link-MRAE-hotel-1370496_dev-desktop_los-1_bw-0_dow-Friday_defdate-1_room-0_gstadt-2_rateid-0_aud-0_gacid-6641364616_mcid-10_ppa-0_clrid-0_ad-1_gstkid-0_checkin-20211217_lp-1000013_r-15439861621730518033%26gclid%3D%7Bgclid%7D, https:\\/\\/www.google.com\\/aclk?sa=l&ai=CGLVamIm8YYKAKoH8sgK9sIiIA9aVjpBcqeH67KsPv7SHkNMsCAoQBCAAKARgkQaCAR9nb29nbGVtb2Rlcy1kZXNrdG9wLW1hcHMtaG90ZWxzoAGMgc7_AqgDBaoERk_QqfulEnMsGKrPiv2V7o-Fd1sFi9k19qdxQeJYYt3Bjc_ybtk2QkG1LTdtzmWxANzkGW-U9COt9hajbGkD89HEHGxmbf7ABJu3jo7nA4gFitK-hDrABZIBoAZlkAcDyAmsAaIKlQEKCjIwMjEtMTItMTcQASkjRYPrP2ww0jINYWdvZGFzdGFuZGFyZDgASAFSJGExMDMxMTYxLTMxMzAtZjNiOS1kM2RiLTU1N2MzMmU4N2Y2ZF0AoIBEZa6He0NyA0FFRIIBCQoHNjg1NTcyNLABAbgBAMgBwY_sL-ABAugBBPABAfgBA6ACAOACAOoCA0FFRPACAYoDAOgKAZALA9ALG7gMAdAVAYAXAQ&sig=AOD64_1VpGshsa3OVIeh7WKhUvrL8MNKdQ&adurl=https:\\/\\/www.agoda.com\\/partners\\/partnersearch.aspx?site_id%3D1731125%26CkInDay%3D17%26CkInMonth%3D12%26CkInYear%3D2021%26CkOutDay%3D18%26campaignid%3D15578671370%26CkOutMonth%3D12%26CkOutYear%3D2021%26SearchDateType%3Ddefault%26NumberOfAdults%3D2%26LT%3D0%26NumberOfChildren%3D0%26childages%3D%26NumberOfRooms%3D1%26gsite%3Dmapresults%26los%3D1%26PartnerCurrency%3DAED%26hid%3D783959%26RoomID%3D6855724%26PriceTax%3D251.53%26PriceTotal%3D1280.53%26RatePlan%3Da1031161-3130-f3b9-d3db-557c32e87f6d%26UserCountry%3DAE%26Currency%3DAED%26UserDevice%3Ddesktop%26Verif%3Dfalse%26rr%3D%26audience_list%3D%26mcid%3D3038%26booking_source%3Dcpc%26adType%3D1, https:\\/\\/www.ihg.com\\/redirect?path=rates&brandCode=ic&localeCode=en&regionCode=AE&currency=AED&rate=1322.10&hotelCode=DXBPL&checkInDate=06&checkInMonthYear=012022&checkOutDate=07&checkOutMonthYear=012022&numberOfAdults=2&numberOfChildren=0&numberOfRooms=1&cm_mmc=hpa_free_AE_desktop_DXBPL_mapresults_1_AED_2022-01-06_default___OSTGIDAS1&glat=FREE&selectedRatePlan=OSTGIDAS1&, https:\\/\\/ae.trip.com\\/hotels\\/redirect?hotelid=2626689&city=220&shoppingid=c1d86d95e6d84975aba5ab0d19c856d6&adult=2&children=0&ages&checkin=2022-01-06&checkout=2022-01-07&curr=AED&Allianceid=15214&Sid=1349486&prid=LANG_AE&ouid=06_01_2022_1_mapresults_2626689_AE_desktop_default___0_0-LANG_AE&hpaopts=stand%5BH4sIAAAAAAAAAOOaysjFJMEkxMTBKNXFyLH22qn3TEJchoaW5oYG5uYGRgbtnBaT4hzzv875kre9y8EzdP-lnx9u9zkEcExiVIHzAt9Lx1c_O9LpEAkTSYSJzGBsXLmAcSPjLPXrIhyTEhx2MDJdZFxSYMt1fX-dw0NGBhAoa3Z4wTj1xBTFTpaY_kNfNWy8HaQUkg1TLMxSLE1TzVIsTCzNTROTEoHYIMXQMtnC1CzFTIFZY-b_j71sHoxBbEYuFubmjlEyXMyhwS6Cu7I5fy5ol3SQYnZ0dVFcr_qked7Z3_ZJrKl5uo6uGWc5KjK7GJk8GFcxMgAA4FPx_f4AAAA%5Dfgt%5B1%5D&br=622.75&tf=130.76&display=exavg&locale=en_ae\",\"All, Latesta day ago, Rooms, Exterior, Amenities, Food & drink, From visitors, By owner, Street View & 360, Videos\",\"https:\\/\\/www.google.com\\/maps\\/place\\/InterContinental+Dubai+Marina,+an+IHG+Hotel\\/@25.0789633,55.1356625,17z\\/data=!4m13!1m3!2m2!1syoga+studio+in+Masfout+-+Ajman!6e1!3m8!1s0x3e5f6b5549044509:0x688002471d6a3d64!5m2!4m1!1i2!8m2!3d25.0789633!4d55.1378512!15sCh55b2dhIHN0dWRpbyBpbiBNYXNmb3V0IC0gQWptYW5aHiIceW9nYSBzdHVkaW8gaW4gbWFzZm91dCBham1hbpIBBWhvdGVsmgEjQ2haRFNVaE5NRzluUzBWSlEwRm5TVU52Y0dORVIwNW5FQUU?hl=en\"]]', 1, 1, 1, 3, 1, '2022-01-28 14:15:24', '2022-01-28 14:25:03'),
(6, '625f938c995ac-gym-test.csv', '[]', 1, 0, 0, 1, 1, '2022-04-20 11:01:00', '2022-04-20 11:01:00'),
(7, '625f93a38b594-gym-test.csv', '[]', 1, 0, 0, 1, 1, '2022-04-20 11:01:23', '2022-04-20 11:01:23'),
(8, '625f9415905a4-gym-test.csv', '[[\"Abu Dhabi Muay Thai\",\"Fatima Bint Mubarak St - Zone 1 - Abu Dhabi\",\"\",\"Fatima Bint Mubarak St - Zone 1 - Abu Dhabi\",\"Fatima\",\"Bint Mubarak St - Zone 1 - Abu Dhabi\",\"F9R9+QG Abu Dhabi\",\"abudhabimuaythai.com\",\"02 676 9658\",\"info@abudhabimuaythai.com\",\"https:\\/\\/www.facebook.com\\/AbuDhabiMuayThai\\/\",\"https:\\/\\/twitter.com\\/AD_MUAYTHAI\",\"https:\\/\\/www.instagram.com\\/abudhabimuaythai\\/\",\"24.4919946\",\"54.3688512\",\"\",\"Muay Thai boxing gym\",\"4.7\",\"74 reviews\",\"\",\"\",\"\",\"\",\"\",\"\",\"10AM9PM\",\"10AM9PM\",\"10AM9PM\",\"10AM9PM\",\"Closed\",\"10AM9PM\",\"10AM9PM\",\"\",\"All, Latest18 days ago, By owner, Videos\",\"https:\\/\\/www.google.com\\/maps\\/place\\/Abu+Dhabi+Muay+Thai\\/@24.3495341,54.3598244,11z\\/data=!3m1!5s0x3e5e37707c0115bb:0x4a165e1f1461ec41!4m10!1m3!2m2!1sGyms+in+Abu+Dhabi!6e1!3m5!1s0x3e5e665d86b7b909:0x5c1ff6be647d467!8m2!3d24.4919946!4d54.3688512!15sChFHeW1zIGluIEFidSBEaGFiaZIBFG11YXlfdGhhaV9ib3hpbmdfZ3lt?hl=en\"]]', 1, 1, 0, 1, 1, '2022-04-20 11:03:17', '2022-04-20 11:03:17'),
(9, '6262ca9b5fd6b-gym-test-22-apr-22.csv', '[[\"Abu Dhabi Muay Thai\",\"Fatima Bint Mubarak St - Zone 1 - Abu Dhabi\",\"Fatima Bint Mubarak St - Zone 1 - Abu Dhabi\",\"\",\"Fatima\",\"Bint Mubarak St - Zone 1 - Abu Dhabi\",\"abudhabimuaythai.com\",\"02 676 9658\",\"https:\\/\\/www.facebook.com\\/AbuDhabiMuayThai\\/\",\"https:\\/\\/twitter.com\\/AD_MUAYTHAI\",\"https:\\/\\/www.instagram.com\\/abudhabimuaythai\\/\",\"24.4919946\",\"54.3688512\",\"Gym & Fitness Centre\",\"4.7\",\"74 reviews\",\"\",\"\",\"\",\"\",\"\",\"\",\"10AM\\u20139PM\",\"10AM\\u20139PM\",\"10AM\\u20139PM\",\"10AM\\u20139PM\",\"Closed\",\"10AM\\u20139PM\",\"10AM\\u20139PM\",\"\",\"All, Latest18 days ago, By owner, Videos\",\"https:\\/\\/www.google.com\\/maps\\/place\\/Abu+Dhabi+Muay+Thai\\/@24.3495341,54.3598244,11z\\/data=!3m1!5s0x3e5e37707c0115bb:0x4a165e1f1461ec41!4m10!1m3!2m2!1sGyms+in+Abu+Dhabi!6e1!3m5!1s0x3e5e665d86b7b909:0x5c1ff6be647d467!8m2!3d24.4919946!4d54.3688512!15sChFHeW1zIGluIEFidSBEaGFiaZIBFG11YXlfdGhhaV9ib3hpbmdfZ3lt?hl=en\"]]', 1, 1, 1, 3, 1, '2022-04-22 21:32:43', '2022-04-22 21:37:07'),
(10, '62750715cded2-ayurvedic-clinic.csv', '[[\"Al Raha Ayurvedic Women\'S Health Spa\",\"Al-Raha-Ayurvedic-WomenS-Health-Spa\",\"AL RAHA Ayurvedic, Physical Therapy Clinic, Fujairah Trade Center - Hamad Bin Abdulla Rd - FujairahAL RAHA AyurvedicPhysical Therapy ClinicFujairahTrade Center - Hamad Bin Abdulla Rd - Fujairah\",\"Fujairah\",\"Fujairah\",\"UAE\",\"25.1213415\",\"56.3310964\",\"\",\"Al Raha Ayurvedic Women\'S Health Spa is a Ayurvedic clinic in Fujairah\",\"055 813 7450\",\"alrahaayurvedic.com\",\"https:\\/\\/www.facebook.com\\/alrahaayurvedicspa\\/?ref=bookmarks\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],[\"Kottakkal Ayurvedic Treatment Centre\",\"Kottakkal-Ayurvedic-Treatment-Centre\",\"Al Hanaa Center, Al Mankhool Road, Al Jaffilia - Al Satwa - DubaiAl Hanaa CenterAl Mankhool RoadAlJaffilia - Al Satwa - Dubai\",\"Dubai\",\"Dubai\",\"UAE\",\"25.2366939\",\"55.2798332\",\"\",\"Kottakkal Ayurvedic Treatment Centre is a Ayurvedic clinic in Dubai\",\"04 332 0333\",\"kottakkalayurveda.ae\",\"https:\\/\\/www.facebook.com\\/kottakkalayurvedacenter\",\"https:\\/\\/twitter.com\\/ayurdubai\",\"\",\"\",\"\",\"\",\"\",\"\"],[\"Al Shifa Ayurvedic Treatment Centre\",\"Al-Shifa-Ayurvedic-Treatment-Centre\",\"Near Safeer Hypermarket - ???? ??????? - Al Rashidiya 1 - AjmanNear Safeer Hypermarket - ???? ??????? - Al Rashidiya 1 - AjmanNearSafeer Hypermarket - ???? ??????? - Al Rashidiya 1 - Ajman\",\"Ajman\",\"Ajman\",\"UAE\",\"25.3929771\",\"55.4564803\",\"\",\"Al Shifa Ayurvedic Treatment Centre is a Ayurvedic clinic in Ajman\",\"06 740 8646\",\"alshifaayurveda.ae\",\"https:\\/\\/www.facebook.com\\/alshifaayurvediccenter\",\"https:\\/\\/twitter.com\\/share\",\"\",\"\",\"\",\"\",\"\",\"\"]]', 1, 7, 0, 1, 1, '2022-05-06 17:31:33', '2022-05-06 17:31:33'),
(11, '627508f872e10-ayurvedic-clinic.csv', '[[\"Al Raha Ayurvedic Women\'S Health Spa\",\"AL RAHA Ayurvedic, Physical Therapy Clinic, Fujairah Trade Center - Hamad Bin Abdulla Rd - FujairahAL RAHA AyurvedicPhysical Therapy ClinicFujairahTrade Center - Hamad Bin Abdulla Rd - Fujairah\",\"Fujairah\",\"Fujairah\",\"UAE\",\"25.1213415\",\"56.3310964\",\"\",\"Al Raha Ayurvedic Women\'S Health Spa is a Ayurvedic clinic in Fujairah\",\"055 813 7450\",\"alrahaayurvedic.com\",\"https:\\/\\/www.facebook.com\\/alrahaayurvedicspa\\/?ref=bookmarks\",\"\",\"\",\"\",\"\",\"\"],[\"Kottakkal Ayurvedic Treatment Centre\",\"Al Hanaa Center, Al Mankhool Road, Al Jaffilia - Al Satwa - DubaiAl Hanaa CenterAl Mankhool RoadAlJaffilia - Al Satwa - Dubai\",\"Dubai\",\"Dubai\",\"UAE\",\"25.2366939\",\"55.2798332\",\"\",\"Kottakkal Ayurvedic Treatment Centre is a Ayurvedic clinic in Dubai\",\"04 332 0333\",\"kottakkalayurveda.ae\",\"https:\\/\\/www.facebook.com\\/kottakkalayurvedacenter\",\"https:\\/\\/twitter.com\\/ayurdubai\",\"\",\"\",\"\",\"\"],[\"Al Shifa Ayurvedic Treatment Centre\",\"Near Safeer Hypermarket - ???? ??????? - Al Rashidiya 1 - AjmanNear Safeer Hypermarket - ???? ??????? - Al Rashidiya 1 - AjmanNearSafeer Hypermarket - ???? ??????? - Al Rashidiya 1 - Ajman\",\"Ajman\",\"Ajman\",\"UAE\",\"25.3929771\",\"55.4564803\",\"\",\"Al Shifa Ayurvedic Treatment Centre is a Ayurvedic clinic in Ajman\",\"06 740 8646\",\"alshifaayurveda.ae\",\"https:\\/\\/www.facebook.com\\/alshifaayurvediccenter\",\"https:\\/\\/twitter.com\\/share\",\"\",\"\",\"\",\"\"]]', 1, 7, 7, 3, 1, '2022-05-06 17:39:36', '2022-05-06 17:39:57'),
(12, '627538fd87d23-adventure-sports-club-1.csv', '[]', 1, 0, 0, 1, 1, '2022-05-06 21:04:29', '2022-05-06 21:04:29'),
(13, '627539e65e3e7-adventure-sports-club-1.csv', '[]', 1, 0, 0, 1, 1, '2022-05-06 21:08:22', '2022-05-06 21:08:22'),
(14, '62753a3c2452f-adventure-sports-club-1.csv', '[]', 1, 0, 0, 1, 1, '2022-05-06 21:09:48', '2022-05-06 21:09:48'),
(15, '62753ad9e5ccb-adventure-sports-club-2.csv', '[]', 1, 0, 0, 1, 1, '2022-05-06 21:12:25', '2022-05-06 21:12:25'),
(16, '62753c3d7dfc1-adventure-sports-club-2.csv', '[]', 1, 0, 0, 1, 1, '2022-05-06 21:18:21', '2022-05-06 21:18:21'),
(17, '62753daf7c9aa-adventure-sports-club-2.csv', '[]', 1, 0, 0, 1, 1, '2022-05-06 21:24:31', '2022-05-06 21:24:31');

-- --------------------------------------------------------

--
-- Table structure for table `import_item_data`
--

CREATE TABLE `import_item_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `import_item_data_markup` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `import_item_data_item_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `import_item_data_item_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `import_item_data_item_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `import_item_data_city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `import_item_data_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `import_item_data_country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `import_item_data_item_lat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `import_item_data_item_lng` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `import_item_data_item_postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `import_item_data_item_description` text COLLATE utf8mb4_unicode_ci,
  `import_item_data_item_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `import_item_data_item_website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `import_item_data_item_social_facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `import_item_data_item_social_twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `import_item_data_item_social_linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `import_item_data_item_youtube_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `import_item_data_process_status` int(11) NOT NULL DEFAULT '1' COMMENT '1:not processed 2:processed success 3:processed error',
  `import_item_data_item_id` int(11) DEFAULT NULL,
  `import_item_data_source` int(11) NOT NULL DEFAULT '1' COMMENT '1:csv file 2:google place',
  `import_item_data_process_error_log` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `import_item_data_item_image` text COLLATE utf8mb4_unicode_ci,
  `import_item_data_item_image_galleries` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `import_item_data`
--

INSERT INTO `import_item_data` (`id`, `import_item_data_markup`, `import_item_data_item_title`, `import_item_data_item_slug`, `import_item_data_item_address`, `import_item_data_city`, `import_item_data_state`, `import_item_data_country`, `import_item_data_item_lat`, `import_item_data_item_lng`, `import_item_data_item_postal_code`, `import_item_data_item_description`, `import_item_data_item_phone`, `import_item_data_item_website`, `import_item_data_item_social_facebook`, `import_item_data_item_social_twitter`, `import_item_data_item_social_linkedin`, `import_item_data_item_youtube_id`, `import_item_data_process_status`, `import_item_data_item_id`, `import_item_data_source`, `import_item_data_process_error_log`, `created_at`, `updated_at`, `import_item_data_item_image`, `import_item_data_item_image_galleries`) VALUES
(1, 'gyms-test-menteybody-listings-upload-template-gyms-Dec2021-Test.csv', 'gallery images URLs', NULL, 'slug', 'address', 'city', 'state', 'country', 'latitude', 'longitude', 'postal code', 'description', 'phone', 'website', 'facebook', 'twitter', 'linkedin', 1, NULL, 1, NULL, '2021-12-31 17:26:15', '2021-12-31 17:26:15', 'youtube id ', 'featured\nimage\nURL\n'),
(2, 'gyms-test-menteybody-listings-upload-template-gyms-Dec2021-Test.csv', '', NULL, 'gym-fitness-centre-Waldorf-Astoria-Dubai-Palm-Jumeirah', 'Crescent Rd - The Palm Jumeirah - Dubai', '', 'Dubai', 'United Arab Emirates', '25.1345825', '55.1510903', '12345', 'Waldorf Astoria Dubai Palm Jumeirah located in Dubai is one of the best Gyms in this area.', '04 818 2222', '', '', '', '', 3, NULL, 1, 'Listing title is required', '2021-12-31 17:26:15', '2021-12-31 17:27:59', '', '\n'),
(3, 'gyms-test-menteybody-listings-upload-template-gyms-Dec2021-Test.csv', '', NULL, 'gym-fitness-centreThe-Spa', '1 Sheikh Zayed Rd - Trade Centre - Trade Centre 1 - Dubai', '', 'Dubai', 'United Arab Emirates', '25.2265', '55.2842', '12345', 'The Spa located in Dubai is one of the best Gyms in this area.', '', '', '', '', '', 3, NULL, 1, 'Listing title is required', '2021-12-31 17:26:15', '2021-12-31 17:27:59', '', '\n'),
(4, 'test2-menteybody-listings-upload-template-gyms-Dec2021-Test-2.csv', '', NULL, 'Crescent Rd - The Palm Jumeirah - Dubai', 'Palm Jumeirah', 'Dubai', 'United Arab Emirates', '25.1345825', '55.1510903', NULL, 'Waldorf Astoria Dubai Palm Jumeirah located in Dubai is one of the best Gyms in this area.', '04 818 2222', NULL, '', '', '', '', 3, NULL, 1, 'Listing title is required', '2021-12-31 18:11:57', '2021-12-31 18:13:17', '', '\n'),
(5, 'test2-menteybody-listings-upload-template-gyms-Dec2021-Test-2.csv', '', NULL, '1 Sheikh Zayed Rd - Trade Centre - Trade Centre 1 - Dubai', '', 'Dubai', 'United Arab Emirates', '25.2265', '55.2842', NULL, 'The Spa located in Dubai is one of the best Gyms in this area.', '', NULL, '', '', '', '', 3, NULL, 1, 'Listing title is required', '2021-12-31 18:11:57', '2021-12-31 18:13:17', '', '\n'),
(6, 'yoga-sample-1', 'InterContinental Dubai Marina, an IHG Hotel', NULL, 'King Salman Bin Abdulaziz Al Saud St - Dubai Marina - Dubai', 'Dubai Marina', 'Dubai', 'UAE', '25.0789633', '55.1378512', '34HQ+H4 Dubai', 'InterContinental Dubai Marina, an IHG Hotel', '04 446 6777', 'https://www.ihg.com', 'https://www.facebook.com/ihghotels', 'https://twitter.com/IHGhotels', NULL, NULL, 2, 19, 1, 'The city does not exist, please add city in Location > City > Add City', '2022-01-28 14:25:03', '2022-01-28 14:57:09', NULL, NULL),
(7, '6262ca9b5fd6b-gym-test-22-apr-22.csv', 'Abu Dhabi Muay Thai', NULL, 'Fatima Bint Mubarak St - Zone 1 - Abu Dhabi', 'Fatima Bint Mubarak St - Zone 1 - Abu Dhabi', 'Fatima', 'UAE', '24.4919946', '54.3688512', NULL, 'Fatima Bint Mubarak St - Zone 1 - Abu Dhabi', '02 676 9658', 'https://www.abudhabimuaythai.com', 'https://www.facebook.com/AbuDhabiMuayThai/', 'https://twitter.com/AD_MUAYTHAI', NULL, NULL, 3, NULL, 1, 'The state does not exist, please add state in Location > State > Add State', '2022-04-22 21:37:07', '2022-04-22 21:53:07', NULL, NULL),
(8, '627508f872e10-ayurvedic-clinic.csv', 'Al Raha Ayurvedic Women\'S Health Spa', NULL, 'AL RAHA Ayurvedic, Physical Therapy Clinic, Fujairah Trade Center - Hamad Bin Abdulla Rd - FujairahAL RAHA AyurvedicPhysical Therapy ClinicFujairahTrade Center - Hamad Bin Abdulla Rd - Fujair', NULL, 'Fujairah', 'UAE', '25.1213415', '56.3310964', NULL, 'Al Raha Ayurvedic Women\'S Health Spa is a Ayurvedic clinic in Fujairah', '055 813 7450', 'http://www.alrahaayurvedic.com', 'https://www.facebook.com/alrahaayurvedicspa/?ref=bookmarks', NULL, NULL, NULL, 2, 20, 1, 'Undefined variable: city_id', '2022-05-06 17:39:57', '2022-05-06 19:40:58', NULL, NULL),
(9, '627508f872e10-ayurvedic-clinic.csv', 'Kottakkal Ayurvedic Treatment Centre', NULL, 'Al Hanaa Center, Al Mankhool Road, Al Jaffilia - Al Satwa - DubaiAl Hanaa CenterAl Mankhool RoadAlJaffilia - Al Satwa - Dubai', 'Dubai', 'Dubai', 'UAE', '25.2366939', '55.2798332', '', 'Kottakkal Ayurvedic Treatment Centre is a Ayurvedic clinic in Dubai', '04 332 0333', 'kottakkalayurveda.ae', 'https://www.facebook.com/kottakkalayurvedacenter', 'https://twitter.com/ayurdubai', '', '', 2, 21, 1, 'The city does not exist, please add city in Location > City > Add City', '2022-05-06 17:39:57', '2022-05-06 20:42:05', '', '\n'),
(10, '627508f872e10-ayurvedic-clinic.csv', 'Al Shifa Ayurvedic Treatment Centre', NULL, 'Near Safeer Hypermarket - ???? ??????? - Al Rashidiya 1 - AjmanNear Safeer Hypermarket - ???? ??????? - Al Rashidiya 1 - AjmanNearSafeer Hypermarket - ???? ??????? - Al Rashidiya 1 - Ajman', 'Ajman', 'Ajman', 'UAE', '25.3929771', '55.4564803', '', 'Al Shifa Ayurvedic Treatment Centre is a Ayurvedic clinic in Ajman', '06 740 8646', 'alshifaayurveda.ae', 'https://www.facebook.com/alshifaayurvediccenter', 'https://twitter.com/share', '', '', 2, 22, 1, NULL, '2022-05-06 17:39:57', '2022-05-06 20:42:05', '', '\n'),
(11, '627508f872e10-ayurvedic-clinic.csv', 'Alfalah Physiotherapy Centre', NULL, 'Zone 1 - E6 - Abu DhabiZone 1 - E6 - Abu DhabiZone1 - E6 - Abu Dhabi', 'Abu Dhabi', 'Abu Dhabi', 'UAE', '24.489501', '54.3583801', '', 'Alfalah Physiotherapy Centre is a Ayurvedic clinic in Abu Dhabi', '02 644 8521', 'alfalahayurveda.com', 'https://www.facebook.com/alfalahayurveda', '', '', '', 2, 24, 1, NULL, '2022-05-06 17:39:57', '2022-05-06 20:42:05', '', '\n'),
(12, '627508f872e10-ayurvedic-clinic.csv', 'Kerala Ayurvedic Center Llc', NULL, 'Roof Floor, Moh\'d Ibrahim Siddiqi Building, Opposite Spinneys - DubaiRoof FloorMoh\'d Ibrahim Siddiqi BuildingOppositeSpinneys - Dubai', 'Dubai', 'Dubai', 'UAE', '25.2484433', '55.3011414', '', 'Kerala Ayurvedic Center Llc is a Ayurvedic clinic in Dubai', '04 396 6630', 'keralaayurvedicdubai.com', 'https://www.facebook.com/keralaayurvedicdubai/', '', '', '', 2, 25, 1, NULL, '2022-05-06 17:39:57', '2022-05-06 20:42:05', '', '\n'),
(13, '627508f872e10-ayurvedic-clinic.csv', 'Kottakkal Ayurvedic Centre', NULL, 'Gurfa Road - FujairahGurfa Road - FujairahGurfaRoad - Fujairah', 'Fujairah', 'Fujairah', 'UAE', '25.1227962', '56.3554029', '', 'Kottakkal Ayurvedic Centre is a Ayurvedic clinic in Fujairah', '09 222 9390', '', '', '', '', '', 2, 26, 1, NULL, '2022-05-06 17:39:57', '2022-05-06 20:42:05', '', '\n'),
(14, '627508f872e10-ayurvedic-clinic.csv', 'Ayurcare Relax Center', NULL, 'Al Fulaya Plaza Nakheel, Kharan Road, Opp.Yasmin Village - Ras al KhaimahAl Fulaya Plaza NakheelKharan RoadOpp.YasminVillage - Ras al Khaimah', 'Ras al Khaimah', 'Ras al Khaimah', 'UAE', '25.7390986', '55.9787802', '', 'Ayurcare Relax Center is a Ayurvedic clinic in Ras al Khaimah', '052 750 4263', '', '', '', '', '', 2, 23, 1, NULL, '2022-05-06 17:39:57', '2022-05-06 20:42:05', '', '\n');

-- --------------------------------------------------------

--
-- Table structure for table `import_item_feature_data`
--

CREATE TABLE `import_item_feature_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `import_item_data_id` int(11) NOT NULL,
  `import_item_feature_data_custom_field_id` int(11) NOT NULL,
  `import_item_feature_data_item_feature_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `import_item_feature_data`
--

INSERT INTO `import_item_feature_data` (`id`, `import_item_data_id`, `import_item_feature_data_custom_field_id`, `import_item_feature_data_item_feature_value`, `created_at`, `updated_at`) VALUES
(1, 6, 6, 'All, Latesta day ago, Rooms, Exterior, Amenities, Food & drink, From visitors, By owner, Street View & 360', '2022-01-28 14:25:03', '2022-01-28 14:25:03');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscription_id` int(11) NOT NULL,
  `invoice_num` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_item_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_item_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_amount` decimal(5,2) NOT NULL,
  `invoice_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subscription_paypal_profile_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `invoice_razorpay_payment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_razorpay_signature` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_pay_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_stripe_invoice_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_bank_transfer_bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_bank_transfer_detail` text COLLATE utf8mb4_unicode_ci,
  `invoice_bank_transfer_future_plan_id` int(11) DEFAULT NULL,
  `invoice_payumoney_transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_payumoney_future_plan_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL COMMENT 'ABANDONED',
  `item_status` int(11) NOT NULL DEFAULT '1' COMMENT '1:submitted 2:published 3:suspended',
  `item_featured` int(11) NOT NULL DEFAULT '0' COMMENT '0/1',
  `item_featured_by_admin` int(11) NOT NULL DEFAULT '0' COMMENT '0/1',
  `item_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_address_hide` int(11) NOT NULL DEFAULT '0' COMMENT '0: not hide 1:hide',
  `city_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `item_postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_price` int(11) DEFAULT NULL,
  `item_website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_lat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_lng` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `item_social_facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_social_twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_social_linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_features_string` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_image_medium` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_image_small` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_image_tiny` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_categories_string` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_image_blur` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_youtube_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_average_rating` decimal(2,1) DEFAULT NULL,
  `item_location_str` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_type` int(11) NOT NULL DEFAULT '1' COMMENT '1: regular item 2:online item',
  `item_hour_time_zone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'America/New_York',
  `item_hour_show_hours` int(11) NOT NULL DEFAULT '2' COMMENT '1:show 2:not show'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `user_id`, `category_id`, `item_status`, `item_featured`, `item_featured_by_admin`, `item_title`, `item_slug`, `item_description`, `item_image`, `item_address`, `item_address_hide`, `city_id`, `state_id`, `country_id`, `item_postal_code`, `item_price`, `item_website`, `item_phone`, `item_lat`, `item_lng`, `created_at`, `updated_at`, `item_social_facebook`, `item_social_twitter`, `item_social_linkedin`, `item_features_string`, `item_image_medium`, `item_image_small`, `item_image_tiny`, `item_categories_string`, `item_image_blur`, `item_youtube_id`, `item_average_rating`, `item_location_str`, `item_type`, `item_hour_time_zone`, `item_hour_show_hours`) VALUES
(18, 1, NULL, 2, 1, 1, 'Dreamworks Spa | Radisson RED Hotel', 'Dreamworks-Spa-Radisson-RED-DSO', 'Pamper yourself with a wide range of spa treatments, such as Balinese massage, Thai, hot stone or four-hands spa treatments. Facials, body scrubs and Hamman rituals are also available.\r\n\r\nWe use only the finest quality products. Our services include a wide range of spa treatments, such as Traditional Balinese massage, Traditional Thai massage, Foot massage, Hot Stone treatment as well as Facials, Body Scrubs, Hammam rituals and more that suits your needs.', 'dreamworks-spa-radisson-red-hotel-619122e0bf124-2021-11-14-619122e0bf1c3.jpg', 'Radisson RED Hotel , Dubai Digital Park - Dubai Silicon Oasis Industrial Area', 0, 12212748, 6254929, 396, NULL, NULL, 'https://www.dreamworks.ae/', '+97144495063', '25.11899', '55.37974', '2021-11-14 21:53:24', '2022-06-26 14:47:27', NULL, NULL, NULL, 'UniSex Free Parking, Private Lot, Valet Swedish massage, Hot stone massage, Aromatherapy massage, Deep tissue massage, Reflexology, Shiatsu massage, Chair massage, Balinese Massage, Chinese Massage Multilocation ', 'dreamworks-spa-radisson-red-hotel-619122e0bf124-2021-11-14-619122e0bf1c4-medium.jpg', 'dreamworks-spa-radisson-red-hotel-619122e0bf124-2021-11-14-619122e0bf1c5-small.jpg', 'dreamworks-spa-radisson-red-hotel-619122e0bf124-2021-11-14-619122e0bf1c6-tiny.jpg', ' Health & Fitness Centre Massage Spa Services', 'dreamworks-spa-radisson-red-hotel-619122e0bf124-2021-11-14-619122e0bf1c7-blur.jpg', NULL, NULL, 'Dubai Silicon Oasis Industrial Area Dubai United Arab Emirates ', 1, 'Asia/Dubai', 1);

-- --------------------------------------------------------

--
-- Table structure for table `item_claims`
--

CREATE TABLE `item_claims` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_claim_full_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_claim_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_claim_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_claim_additional_proof` text COLLATE utf8mb4_unicode_ci,
  `item_claim_additional_upload` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_claim_status` int(11) DEFAULT NULL COMMENT '1:claim requested, 2:claim disapprove, 3:claim approve',
  `item_claim_reply` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_features`
--

CREATE TABLE `item_features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `item_feature_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_features`
--

INSERT INTO `item_features` (`id`, `item_id`, `custom_field_id`, `item_feature_value`, `created_at`, `updated_at`) VALUES
(105, 18, 16, 'UniSex', '2021-11-14 21:54:45', '2021-11-14 21:54:45'),
(107, 18, 18, 'Swedish massage, Hot stone massage, Aromatherapy massage, Deep tissue massage, Reflexology, Shiatsu massage, Chair massage, Balinese Massage, Chinese Massage', '2021-11-14 21:54:45', '2021-11-14 21:54:45'),
(108, 18, 17, 'Multilocation', '2021-11-14 21:54:45', '2021-11-14 21:54:45');

-- --------------------------------------------------------

--
-- Table structure for table `item_hours`
--

CREATE TABLE `item_hours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_hour_day_of_week` int(11) NOT NULL COMMENT '1-7:mon-sun',
  `item_hour_open_time` time NOT NULL,
  `item_hour_close_time` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_hours`
--

INSERT INTO `item_hours` (`id`, `item_id`, `item_hour_day_of_week`, `item_hour_open_time`, `item_hour_close_time`, `created_at`, `updated_at`) VALUES
(103, 18, 1, '12:00:00', '22:00:00', '2021-11-14 21:54:45', '2021-11-14 21:54:45'),
(104, 18, 2, '12:00:00', '22:00:00', '2021-11-14 21:54:45', '2021-11-14 21:54:45'),
(105, 18, 3, '12:00:00', '22:00:00', '2021-11-14 21:54:45', '2021-11-14 21:54:45'),
(106, 18, 4, '12:00:00', '22:00:00', '2021-11-14 21:54:45', '2021-11-14 21:54:45'),
(107, 18, 5, '12:00:00', '22:00:00', '2021-11-14 21:54:45', '2021-11-14 21:54:45'),
(108, 18, 6, '12:00:00', '22:00:00', '2021-11-14 21:54:45', '2021-11-14 21:54:45'),
(109, 18, 7, '12:00:00', '22:00:00', '2021-11-14 21:54:45', '2021-11-14 21:54:45');

-- --------------------------------------------------------

--
-- Table structure for table `item_hour_exceptions`
--

CREATE TABLE `item_hour_exceptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_hour_exception_date` date NOT NULL,
  `item_hour_exception_open_time` time DEFAULT NULL,
  `item_hour_exception_close_time` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_image_galleries`
--

CREATE TABLE `item_image_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_image_gallery_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_image_gallery_thumb_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_image_gallery_size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_image_galleries`
--

INSERT INTO `item_image_galleries` (`id`, `item_id`, `item_image_gallery_name`, `item_image_gallery_thumb_name`, `item_image_gallery_size`, `created_at`, `updated_at`) VALUES
(1, 18, 'gallary-2021-11-14-619122e42bb9d.jpg', 'gallary-2021-11-14-619122e42bb9d-thumb.jpg', NULL, '2021-11-14 21:53:24', '2021-11-14 21:53:24'),
(2, 18, 'gallary-2021-11-14-619122e46ff8a.jpg', 'gallary-2021-11-14-619122e46ff8a-thumb.jpg', NULL, '2021-11-14 21:53:24', '2021-11-14 21:53:24'),
(3, 18, 'gallary-2021-11-14-619122e4807fc.jpg', 'gallary-2021-11-14-619122e4807fc-thumb.jpg', NULL, '2021-11-14 21:53:24', '2021-11-14 21:53:24'),
(4, 18, 'gallary-2021-11-14-619122e4928d9.jpg', 'gallary-2021-11-14-619122e4928d9-thumb.jpg', NULL, '2021-11-14 21:53:24', '2021-11-14 21:53:24');

-- --------------------------------------------------------

--
-- Table structure for table `item_leads`
--

CREATE TABLE `item_leads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_lead_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_lead_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_lead_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_lead_subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_lead_message` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_sections`
--

CREATE TABLE `item_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_section_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_section_position` int(11) NOT NULL,
  `item_section_order` int(11) NOT NULL,
  `item_section_status` int(11) NOT NULL DEFAULT '1' COMMENT '1:draft, 2:published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_section_collections`
--

CREATE TABLE `item_section_collections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_section_id` int(11) NOT NULL,
  `item_section_collection_order` int(11) NOT NULL,
  `item_section_collection_collectible_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_section_collection_collectible_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_user`
--

CREATE TABLE `item_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `language`, `created_at`, `updated_at`) VALUES
(1, NULL, 'en', '2021-11-11 04:57:44', '2021-11-11 04:57:44');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `thread_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_28_175635_create_threads_table', 1),
(4, '2014_10_28_175710_create_messages_table', 1),
(5, '2014_10_28_180224_create_participants_table', 1),
(6, '2014_11_03_154831_add_soft_deletes_to_participants_table', 1),
(7, '2014_12_04_124531_add_softdeletes_to_threads_table', 1),
(8, '2017_03_30_152742_add_soft_deletes_to_messages_table', 1),
(9, '2018_06_30_113500_create_comments_table', 1),
(10, '2018_08_29_200844_create_languages_table', 1),
(11, '2018_08_29_205156_create_translations_table', 1),
(12, '2018_10_12_000000_create_canvas_tables', 1),
(13, '2019_02_16_000000_create_canvas_topics_tables', 1),
(14, '2019_03_05_000000_add_indexes_to_canvas_views', 1),
(15, '2019_07_26_000000_alter_canvas_posts_published_at_default_value', 1),
(16, '2019_08_19_000000_create_failed_jobs_table', 1),
(17, '2019_12_08_000000_alter_canvas_tags_add_user_id', 1),
(18, '2019_12_08_000000_alter_canvas_topics_add_user_id', 1),
(19, '2019_12_09_000000_alter_canvas_posts_add_compound_index', 1),
(20, '2019_12_09_000000_alter_canvas_posts_user_id_default_value', 1),
(21, '2019_12_09_000000_alter_canvas_views_rename_indexes', 1),
(22, '2019_12_10_000000_create_canvas_user_meta_table', 1),
(23, '2020_02_03_000000_create_canvas_visits_table', 1),
(24, '2020_03_29_000000_alter_canvas_user_meta_add_locale', 1),
(25, '2020_04_10_000000_alter_canvas_tables_user_id_column_type', 1),
(26, '2020_04_14_020740_create_roles_table', 1),
(27, '2020_04_14_020801_create_items_table', 1),
(28, '2020_04_14_020841_create_item_image_galleries_table', 1),
(29, '2020_04_14_020900_create_categories_table', 1),
(30, '2020_04_14_020923_create_custom_fields_table', 1),
(31, '2020_04_14_020953_create_item_features_table', 1),
(32, '2020_04_14_021004_create_cities_table', 1),
(33, '2020_04_14_021013_create_states_table', 1),
(34, '2020_04_14_021028_create_countries_table', 1),
(35, '2020_04_21_123146_create_testimonials_table', 1),
(36, '2020_04_21_123244_create_faqs_table', 1),
(37, '2020_04_21_123334_create_social_medias_table', 1),
(38, '2020_04_21_123430_create_settings_table', 1),
(39, '2020_04_24_122358_create_thread_item_rels_table', 1),
(40, '2020_04_26_045845_create_plans_table', 1),
(41, '2020_04_26_052229_create_subscriptions_table', 1),
(42, '2020_04_27_114810_create_invoices_table', 1),
(43, '2020_04_27_115157_create_paypal_ipn_logs_table', 1),
(44, '2020_06_12_024935_add_social_media_links_to_items_table', 1),
(45, '2020_06_12_090840_add_item_features_string_to_items_table', 1),
(46, '2020_06_13_140234_create_item_user_table', 1),
(47, '2020_06_14_061750_add_item_image_medium_small_to_items_table', 1),
(48, '2020_06_14_073101_add_google_analytics_to_settings_table', 1),
(49, '2020_06_16_025717_add_site_language_to_settings_table', 1),
(50, '2020_06_26_123858_create_reviews_table', 1),
(51, '2020_06_27_160843_alter_reviews_table_body_column_type', 1),
(52, '2020_07_06_051354_add_item_image_gallery_thumb_name_to_item_image_galleries_table', 1),
(53, '2020_07_08_113823_create_advertisements_table', 1),
(54, '2020_07_13_065428_create_social_logins_table', 1),
(55, '2020_07_15_053824_create_socialite_accounts_table', 1),
(56, '2020_07_16_025651_add_header_footer_to_settings_table', 1),
(57, '2020_07_20_061652_add_smtp_to_settings_table', 1),
(58, '2020_07_20_083817_add_user_prefer_lang_to_users_table', 1),
(59, '2020_07_23_131458_add_parent_id_to_categories_table', 1),
(60, '2020_07_24_052425_create_category_custom_field_table', 1),
(61, '2020_07_24_070030_create_category_item_table', 1),
(62, '2020_07_27_021404_add_item_categories_string_to_items_table', 1),
(63, '2020_08_07_134624_create_customizations_table', 1),
(64, '2020_08_14_033350_add_item_image_blur_to_items_table', 1),
(65, '2020_08_14_063101_add_item_youtube_id_to_items_table', 1),
(66, '2020_08_21_024033_add_pay_method_to_subscriptions_table', 1),
(67, '2020_08_21_024408_add_razorpay_to_settings_table', 1),
(68, '2020_08_21_024500_add_razorpay_to_invoices_table', 1),
(69, '2020_08_21_085845_create_razorpay_webhook_logs_table', 1),
(70, '2020_09_11_065009_create_review_image_galleries_table', 1),
(71, '2020_09_15_071953_add_recaptcha_to_settings_table', 1),
(72, '2020_09_17_055219_create_item_claims_table', 1),
(73, '2020_09_23_151719_create_stripe_webhook_logs_table', 1),
(74, '2020_09_23_152258_add_stripe_to_subscriptions_table', 1),
(75, '2020_09_23_152638_add_stripe_to_invoices_table', 1),
(76, '2020_09_24_051101_add_stripe_to_settings_table', 1),
(77, '2020_09_26_025152_create_setting_bank_transfers_table', 1),
(78, '2020_09_26_053209_add_bank_transfer_to_invoices_table', 1),
(79, '2020_09_30_064840_add_sitemap_to_settings_table', 1),
(80, '2020_11_02_072719_create_products_table', 1),
(81, '2020_11_02_074021_create_product_image_galleries_table', 1),
(82, '2020_11_02_074706_create_attributes_table', 1),
(83, '2020_11_02_075734_create_product_features_table', 1),
(84, '2020_11_10_070532_add_product_to_settings_table', 1),
(85, '2020_11_11_072017_create_item_sections_table', 1),
(86, '2020_11_11_072804_create_item_section_collections_table', 1),
(87, '2020_12_03_044914_add_cache_to_settings_table', 1),
(88, '2020_12_03_150332_add_google_map_to_settings_table', 1),
(89, '2020_12_07_022000_add_category_description_to_categories_table', 1),
(90, '2020_12_08_015156_create_import_csv_data_table', 1),
(91, '2020_12_08_071710_create_import_item_data', 1),
(92, '2020_12_14_045936_add_item_average_rating_to_items_table', 1),
(93, '2020_12_16_032106_alter_plans_plan_price_length', 1),
(94, '2020_12_29_033113_add_user_prefer_country_to_users_table', 1),
(95, '2021_01_05_035810_add_payumoney_to_settings_table', 1),
(96, '2021_01_05_040403_add_payumoney_to_invoices_table', 1),
(97, '2021_01_15_060816_create_themes_table', 1),
(98, '2021_01_15_062737_add_theme_id_to_customizations_table', 1),
(99, '2021_01_15_063219_add_theme_id_to_settings_table', 1),
(100, '2021_01_28_120017_add_location_str_to_items_table', 1),
(101, '2021_01_29_083250_add_item_type_to_items_table', 1),
(102, '2021_02_07_122643_add_max_free_listing_to_plans_table', 1),
(103, '2021_02_08_081827_add_abandoned_comment_to_subscriptions_table', 1),
(104, '2021_02_19_070354_create_settings_items_table', 1),
(105, '2021_02_20_024440_create_import_item_feature_data', 1),
(106, '2021_04_17_041556_add_recommend_width_height_to_customizations_table', 1),
(107, '2021_05_28_072011_create_item_leads_table', 1),
(108, '2021_05_29_132017_add_setting_site_recaptcha_item_lead_enable_to_settings_table', 1),
(109, '2021_06_10_050903_create_sessions_table', 1),
(110, '2021_06_25_132059_add_state_city_sitemap_to_settings_table', 1),
(111, '2021_06_26_060822_add_images_to_import_item_data_table', 1),
(112, '2021_06_26_142907_create_settings_languages_table', 1),
(113, '2021_06_28_064622_add_status_to_countries_table', 1),
(114, '2021_07_03_141155_add_indexes_to_items_table', 1),
(115, '2021_07_03_144334_add_indexes_to_category_item_table', 1),
(116, '2021_07_03_151354_add_indexes_to_item_features_table', 1),
(117, '2021_07_04_060750_add_indexes_to_categories_table', 1),
(118, '2021_07_04_061136_add_indexes_to_states_table', 1),
(119, '2021_07_04_061446_add_indexes_to_cities_table', 1),
(120, '2021_08_09_130126_add_indexes_to_item_sections_table', 1),
(121, '2021_08_09_132521_add_indexes_to_customizations_table', 1),
(122, '2021_08_09_134958_add_indexes_to_countries_table', 1),
(123, '2021_08_13_131715_add_item_hour_info_to_items_table', 1),
(124, '2021_08_13_132914_create_item_hours_table', 1),
(125, '2021_08_13_134157_create_item_hour_exceptions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE `participants` (
  `id` int(10) UNSIGNED NOT NULL,
  `thread_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `last_read` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('dr.arunaadaikkappan@gmail.com', '$2y$10$tpXaTAb1a8wyFKLEH3.C0ulyAioqWTDdYfwFQt8LZppVPwEvSL0eG', '2022-06-18 01:55:59');

-- --------------------------------------------------------

--
-- Table structure for table `paypal_ipn_logs`
--

CREATE TABLE `paypal_ipn_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `paypal_ipn_log_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `plan_type` int(11) NOT NULL COMMENT '1:free 2:paid 3:admin_plan',
  `plan_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_max_featured_listing` int(11) DEFAULT NULL COMMENT 'unlimited listing if null',
  `plan_features` text COLLATE utf8mb4_unicode_ci,
  `plan_period` int(11) NOT NULL COMMENT '1:lifetime 2:monthly 3:quarterly 4:yearly',
  `plan_price` decimal(9,2) NOT NULL,
  `plan_status` int(11) NOT NULL COMMENT '1:enabled 0:disabled',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `plan_max_free_listing` int(11) DEFAULT NULL COMMENT 'unlimited free listing if null'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `plan_type`, `plan_name`, `plan_max_featured_listing`, `plan_features`, `plan_period`, `plan_price`, `plan_status`, `created_at`, `updated_at`, `plan_max_free_listing`) VALUES
(1, 1, 'Free', 0, 'Email support', 1, '0.00', 1, '2021-11-10 04:57:51', '2021-11-10 04:57:51', NULL),
(2, 3, 'Admin', NULL, 'admin only plan', 1, '0.00', 1, '2021-11-10 04:57:51', '2021-11-10 04:57:51', NULL),
(3, 2, 'Monthly Premium', 10, 'Priority email support', 2, '9.99', 1, '2021-11-10 04:57:51', '2021-11-10 04:57:51', NULL),
(4, 2, 'Quarterly Premium', 20, 'Priority email support', 3, '26.99', 1, '2021-11-10 04:57:51', '2021-11-10 04:57:51', NULL),
(5, 2, 'Yearly Premium', 30, 'Priority email support', 4, '94.99', 1, '2021-11-10 04:57:51', '2021-11-10 04:57:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_status` int(11) NOT NULL DEFAULT '1' COMMENT '1:pending 2:approved 3:suspend',
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` decimal(12,2) DEFAULT NULL,
  `product_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image_small` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_image_medium` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_image_large` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_features`
--

CREATE TABLE `product_features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `product_feature_value` text COLLATE utf8mb4_unicode_ci,
  `product_feature_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_image_galleries`
--

CREATE TABLE `product_image_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_image_gallery_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image_gallery_thumb_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `razorpay_webhook_logs`
--

CREATE TABLE `razorpay_webhook_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `razorpay_webhook_log_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `customer_service_rating` int(11) DEFAULT NULL,
  `quality_rating` int(11) DEFAULT NULL,
  `friendly_rating` int(11) DEFAULT NULL,
  `pricing_rating` int(11) DEFAULT NULL,
  `recommend` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` enum('Sales','Service','Parts') COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `reviewrateable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewrateable_id` bigint(20) UNSIGNED NOT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `review_image_galleries`
--

CREATE TABLE `review_image_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `review_id` int(11) NOT NULL,
  `review_image_gallery_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review_image_gallery_thumb_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review_image_gallery_size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', '2021-11-10 04:57:48', '2021-11-10 04:57:48'),
(3, 'User', 'user', '2021-11-10 04:57:48', '2021-11-10 04:57:48');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `setting_site_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting_site_favicon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting_site_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting_site_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting_site_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting_site_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting_site_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting_site_city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting_site_country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting_site_postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting_site_about` text COLLATE utf8mb4_unicode_ci,
  `setting_site_location_lat` double(18,15) NOT NULL,
  `setting_site_location_lng` double(18,15) NOT NULL,
  `setting_site_location_country_id` int(11) NOT NULL,
  `setting_site_seo_home_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting_site_seo_home_description` text COLLATE utf8mb4_unicode_ci,
  `setting_site_seo_home_keywords` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting_site_paypal_mode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sandbox' COMMENT 'sandbox or live',
  `setting_site_paypal_payment_action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Sale',
  `setting_site_paypal_currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USD',
  `setting_site_paypal_billing_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'MerchantInitiatedBilling',
  `setting_site_paypal_notify_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `setting_site_paypal_locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en_US',
  `setting_site_paypal_validate_ssl` tinyint(1) NOT NULL DEFAULT '0',
  `setting_site_paypal_sandbox_username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting_site_paypal_sandbox_password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting_site_paypal_sandbox_secret` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting_site_paypal_sandbox_certificate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting_site_paypal_sandbox_app_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting_site_paypal_live_username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting_site_paypal_live_password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting_site_paypal_live_secret` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting_site_paypal_live_certificate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting_site_paypal_live_app_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting_page_about_enable` int(11) NOT NULL DEFAULT '0' COMMENT '0:off, 1:on',
  `setting_page_about` longtext COLLATE utf8mb4_unicode_ci,
  `setting_page_terms_of_service_enable` int(11) NOT NULL DEFAULT '0' COMMENT '0:off, 1:on',
  `setting_page_terms_of_service` longtext COLLATE utf8mb4_unicode_ci,
  `setting_page_privacy_policy_enable` int(11) NOT NULL DEFAULT '0' COMMENT '0:off, 1:on',
  `setting_page_privacy_policy` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `setting_site_google_analytic_enabled` int(11) NOT NULL DEFAULT '0' COMMENT '1:on 0:off',
  `setting_site_google_analytic_tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting_site_google_analytic_not_track_admin` int(11) NOT NULL DEFAULT '1' COMMENT '1:track 0:no track',
  `setting_site_language` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ABANDONED',
  `setting_site_header_enabled` int(11) NOT NULL DEFAULT '0' COMMENT '1:on 0:off',
  `setting_site_header` longtext COLLATE utf8mb4_unicode_ci,
  `setting_site_footer_enabled` int(11) NOT NULL DEFAULT '0' COMMENT '1:on 0:off',
  `setting_site_footer` longtext COLLATE utf8mb4_unicode_ci,
  `settings_site_smtp_enabled` int(11) NOT NULL DEFAULT '0' COMMENT '0:disabled 1:enabled',
  `settings_site_smtp_sender_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings_site_smtp_sender_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings_site_smtp_host` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings_site_smtp_port` int(11) DEFAULT NULL,
  `settings_site_smtp_encryption` int(11) NOT NULL DEFAULT '0' COMMENT '0:null 1:ssl 2:tls',
  `settings_site_smtp_username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings_site_smtp_password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting_site_razorpay_enable` int(11) NOT NULL DEFAULT '0' COMMENT '0:disable 1:enable',
  `setting_site_razorpay_api_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting_site_razorpay_api_secret` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting_site_razorpay_currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INR',
  `setting_site_paypal_enable` int(11) NOT NULL DEFAULT '0' COMMENT '0:disable 1:enable',
  `setting_site_recaptcha_login_enable` int(11) NOT NULL DEFAULT '0' COMMENT '0:disable 1:enable',
  `setting_site_recaptcha_sign_up_enable` int(11) NOT NULL DEFAULT '0' COMMENT '0:disable 1:enable',
  `setting_site_recaptcha_contact_enable` int(11) NOT NULL DEFAULT '0' COMMENT '0:disable 1:enable',
  `setting_site_recaptcha_site_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting_site_recaptcha_secret_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting_site_stripe_enable` int(11) NOT NULL DEFAULT '0' COMMENT '0:disable 1:enable',
  `setting_site_stripe_publishable_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting_site_stripe_secret_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting_site_stripe_webhook_signing_secret` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting_site_stripe_currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'usd',
  `setting_site_sitemap_index_enable` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_site_sitemap_show_in_footer` int(11) NOT NULL DEFAULT '1' COMMENT '0:not show 1:show',
  `setting_site_sitemap_page_enable` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_site_sitemap_page_frequency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'weekly' COMMENT '1:always 2:hourly 3:daily 4:weekly 5:monthly 6:yearly 7:never',
  `setting_site_sitemap_page_format` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'xml' COMMENT '1:xml 2:html 3:txt 4:ror-rss 5:ror-rdf',
  `setting_site_sitemap_page_include_to_index` int(11) NOT NULL DEFAULT '1' COMMENT '0:not include 1:include',
  `setting_site_sitemap_category_enable` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_site_sitemap_category_frequency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'weekly' COMMENT '1:always 2:hourly 3:daily 4:weekly 5:monthly 6:yearly 7:never',
  `setting_site_sitemap_category_format` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'xml' COMMENT '1:xml 2:html 3:txt 4:ror-rss 5:ror-rdf',
  `setting_site_sitemap_category_include_to_index` int(11) NOT NULL DEFAULT '1' COMMENT '0:not include 1:include',
  `setting_site_sitemap_listing_enable` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_site_sitemap_listing_frequency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'weekly' COMMENT '1:always 2:hourly 3:daily 4:weekly 5:monthly 6:yearly 7:never',
  `setting_site_sitemap_listing_format` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'xml' COMMENT '1:xml 2:html 3:txt 4:ror-rss 5:ror-rdf',
  `setting_site_sitemap_listing_include_to_index` int(11) NOT NULL DEFAULT '1' COMMENT '0:not include 1:include',
  `setting_site_sitemap_post_enable` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_site_sitemap_post_frequency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'weekly' COMMENT '1:always 2:hourly 3:daily 4:weekly 5:monthly 6:yearly 7:never',
  `setting_site_sitemap_post_format` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'xml' COMMENT '1:xml 2:html 3:txt 4:ror-rss 5:ror-rdf',
  `setting_site_sitemap_post_include_to_index` int(11) NOT NULL DEFAULT '1' COMMENT '0:not include 1:include',
  `setting_site_sitemap_tag_enable` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_site_sitemap_tag_frequency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'weekly' COMMENT '1:always 2:hourly 3:daily 4:weekly 5:monthly 6:yearly 7:never',
  `setting_site_sitemap_tag_format` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'xml' COMMENT '1:xml 2:html 3:txt 4:ror-rss 5:ror-rdf',
  `setting_site_sitemap_tag_include_to_index` int(11) NOT NULL DEFAULT '1' COMMENT '0:not include 1:include',
  `setting_site_sitemap_topic_enable` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_site_sitemap_topic_frequency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'weekly' COMMENT '1:always 2:hourly 3:daily 4:weekly 5:monthly 6:yearly 7:never',
  `setting_site_sitemap_topic_format` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'xml' COMMENT '1:xml 2:html 3:txt 4:ror-rss 5:ror-rdf',
  `setting_site_sitemap_topic_include_to_index` int(11) NOT NULL DEFAULT '1' COMMENT '0:not include 1:include',
  `setting_product_max_gallery_photos` int(11) NOT NULL DEFAULT '6',
  `setting_product_auto_approval_enable` int(11) NOT NULL DEFAULT '0' COMMENT '0:disable 1:enable',
  `setting_product_currency_symbol` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '$',
  `setting_site_last_cached_at` datetime DEFAULT NULL,
  `setting_site_map` int(11) NOT NULL DEFAULT '1' COMMENT '1:OpenStreetMap 2:Google Map',
  `setting_site_map_google_api_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting_site_payumoney_enable` int(11) NOT NULL DEFAULT '0' COMMENT '0:disable 1:enable',
  `setting_site_payumoney_mode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting_site_payumoney_merchant_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting_site_payumoney_salt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting_site_active_theme_id` int(11) NOT NULL,
  `setting_site_recaptcha_item_lead_enable` int(11) NOT NULL DEFAULT '0' COMMENT '0:disable 1:enable',
  `setting_site_sitemap_state_enable` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_site_sitemap_state_frequency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'weekly' COMMENT '1:always 2:hourly 3:daily 4:weekly 5:monthly 6:yearly 7:never',
  `setting_site_sitemap_state_format` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'xml' COMMENT '1:xml 2:html 3:txt 4:ror-rss 5:ror-rdf',
  `setting_site_sitemap_state_include_to_index` int(11) NOT NULL DEFAULT '1' COMMENT '0:not include 1:include',
  `setting_site_sitemap_city_enable` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_site_sitemap_city_frequency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'weekly' COMMENT '1:always 2:hourly 3:daily 4:weekly 5:monthly 6:yearly 7:never',
  `setting_site_sitemap_city_format` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'xml' COMMENT '1:xml 2:html 3:txt 4:ror-rss 5:ror-rdf',
  `setting_site_sitemap_city_include_to_index` int(11) NOT NULL DEFAULT '1' COMMENT '0:not include 1:include'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `setting_site_logo`, `setting_site_favicon`, `setting_site_name`, `setting_site_email`, `setting_site_phone`, `setting_site_address`, `setting_site_state`, `setting_site_city`, `setting_site_country`, `setting_site_postal_code`, `setting_site_about`, `setting_site_location_lat`, `setting_site_location_lng`, `setting_site_location_country_id`, `setting_site_seo_home_title`, `setting_site_seo_home_description`, `setting_site_seo_home_keywords`, `setting_site_paypal_mode`, `setting_site_paypal_payment_action`, `setting_site_paypal_currency`, `setting_site_paypal_billing_type`, `setting_site_paypal_notify_url`, `setting_site_paypal_locale`, `setting_site_paypal_validate_ssl`, `setting_site_paypal_sandbox_username`, `setting_site_paypal_sandbox_password`, `setting_site_paypal_sandbox_secret`, `setting_site_paypal_sandbox_certificate`, `setting_site_paypal_sandbox_app_id`, `setting_site_paypal_live_username`, `setting_site_paypal_live_password`, `setting_site_paypal_live_secret`, `setting_site_paypal_live_certificate`, `setting_site_paypal_live_app_id`, `setting_page_about_enable`, `setting_page_about`, `setting_page_terms_of_service_enable`, `setting_page_terms_of_service`, `setting_page_privacy_policy_enable`, `setting_page_privacy_policy`, `created_at`, `updated_at`, `setting_site_google_analytic_enabled`, `setting_site_google_analytic_tracking_id`, `setting_site_google_analytic_not_track_admin`, `setting_site_language`, `setting_site_header_enabled`, `setting_site_header`, `setting_site_footer_enabled`, `setting_site_footer`, `settings_site_smtp_enabled`, `settings_site_smtp_sender_name`, `settings_site_smtp_sender_email`, `settings_site_smtp_host`, `settings_site_smtp_port`, `settings_site_smtp_encryption`, `settings_site_smtp_username`, `settings_site_smtp_password`, `setting_site_razorpay_enable`, `setting_site_razorpay_api_key`, `setting_site_razorpay_api_secret`, `setting_site_razorpay_currency`, `setting_site_paypal_enable`, `setting_site_recaptcha_login_enable`, `setting_site_recaptcha_sign_up_enable`, `setting_site_recaptcha_contact_enable`, `setting_site_recaptcha_site_key`, `setting_site_recaptcha_secret_key`, `setting_site_stripe_enable`, `setting_site_stripe_publishable_key`, `setting_site_stripe_secret_key`, `setting_site_stripe_webhook_signing_secret`, `setting_site_stripe_currency`, `setting_site_sitemap_index_enable`, `setting_site_sitemap_show_in_footer`, `setting_site_sitemap_page_enable`, `setting_site_sitemap_page_frequency`, `setting_site_sitemap_page_format`, `setting_site_sitemap_page_include_to_index`, `setting_site_sitemap_category_enable`, `setting_site_sitemap_category_frequency`, `setting_site_sitemap_category_format`, `setting_site_sitemap_category_include_to_index`, `setting_site_sitemap_listing_enable`, `setting_site_sitemap_listing_frequency`, `setting_site_sitemap_listing_format`, `setting_site_sitemap_listing_include_to_index`, `setting_site_sitemap_post_enable`, `setting_site_sitemap_post_frequency`, `setting_site_sitemap_post_format`, `setting_site_sitemap_post_include_to_index`, `setting_site_sitemap_tag_enable`, `setting_site_sitemap_tag_frequency`, `setting_site_sitemap_tag_format`, `setting_site_sitemap_tag_include_to_index`, `setting_site_sitemap_topic_enable`, `setting_site_sitemap_topic_frequency`, `setting_site_sitemap_topic_format`, `setting_site_sitemap_topic_include_to_index`, `setting_product_max_gallery_photos`, `setting_product_auto_approval_enable`, `setting_product_currency_symbol`, `setting_site_last_cached_at`, `setting_site_map`, `setting_site_map_google_api_key`, `setting_site_payumoney_enable`, `setting_site_payumoney_mode`, `setting_site_payumoney_merchant_key`, `setting_site_payumoney_salt`, `setting_site_active_theme_id`, `setting_site_recaptcha_item_lead_enable`, `setting_site_sitemap_state_enable`, `setting_site_sitemap_state_frequency`, `setting_site_sitemap_state_format`, `setting_site_sitemap_state_include_to_index`, `setting_site_sitemap_city_enable`, `setting_site_sitemap_city_frequency`, `setting_site_sitemap_city_format`, `setting_site_sitemap_city_include_to_index`) VALUES
(1, 'logo-2021-12-18-61bda9c3cc710.png', 'favicon-2021-11-26-61a0a7371cd74.png', 'menteybody.com', 'menteybody@gmail.com', '+971 581698545', 'Dubai', 'Dubai', 'Dubai', 'UAE', NULL, 'menteybody.com\'s mission is to make the mind and health-related services in the UAE easily accessible for all the expatriates and residents living in UAE.  Also, we enable our users to make better decisions when it comes to mind and body-related services by providing the most accurate and curated information on our portal.', 25.204930000000000, 55.282290000000000, 396, 'Find Massage Spas, Gyms, Salons in UAE | menteybody.com', 'Find the best Massage Centers,  Beauty Salons, Spa Services, Wellness Center Health, Gyms, Yoga Centres, Meditation and any services related to body and mind in Dubai, Sharjah, Abu Dhabi, Ajman, Ras Al Khaimah, Umm Al Quwain, Fujairah - menteybody.com', 'Massage Centers,  Beauty Salons, Spa Services, Wellness Center Health, Gyms, Yoga Centres, Meditation', 'sandbox', 'Sale', 'USD', 'MerchantInitiatedBilling', '', 'en_US', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '<h2>                             <strong><span style=\"font-size:16pt;\"><br></span></strong></h2>\n\n<h2><strong><span style=\"font-size:16pt;\">Our Mission</span></strong><br></h2>\n\n<p>We strive to offer our users the best available selection of\nhealth and fitness services, and the utmost convenience. </p>\n\n<p><strong><span style=\"font-size:16pt;\">Our Vision</span></strong></p>\n\n\n\n<p>Our vision is to make quality health and fitness services accessible\nto everyone in need.</p>\n\n<p><strong><span style=\"font-size:16pt;\">Values</span></strong></p>\n\n\n\n<p>Our Core values are convenience, most accurate and curated\ninformation</p>\n\n<p><strong><span style=\"font-size:16pt;\">Our offerings</span></strong></p>\n\n\n\n<p>Comprehensive health and fitness services directory with\ndetailed and curated information about Beauty, Spa, Massage, Gym, Fitness, and\nWellness Centres across the country.</p>', 1, '<p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Please read these terms of service (\"terms\", \"terms of service\") carefully before using [website] website (the \"service\") operated by [name] (\"us\", \'we\", \"our\").</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\"><strong>Conditions of Use</strong></p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">We will provide their services to you, which are subject to the conditions stated below in this document. Every time you visit this website, use its services or make a purchase, you accept the following conditions. This is why we urge you to read them carefully.</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\"><strong>Privacy Policy</strong></p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Before you continue using our website we advise you to read our privacy policy [link to privacy policy] regarding our user data collection. It will help you better understand our practices.</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\"><strong>Copyright</strong></p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Content published on this website (digital downloads, images, texts, graphics, logos) is the property of [name] and/or its content creators and protected by international copyright laws. The entire compilation of the content found on this website is the exclusive property of [name], with copyright authorship for this compilation by [name].</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\"><strong>Communications</strong></p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">The entire communication with us is electronic. Every time you send us an email or visit our website, you are going to be communicating with us. You hereby consent to receive communications from us. If you subscribe to the news on our website, you are going to receive regular emails from us. We will continue to communicate with you by posting news and notices on our website and by sending you emails. You also agree that all notices, disclosures, agreements and other communications we provide to you electronically meet the legal requirements that such communications be in writing.</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\"><strong>Applicable Law</strong></p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">By visiting this website, you agree that the laws of the [your location], without regard to principles of conflict laws, will govern these terms of service, or any dispute of any sort that might come between [name] and you, or its business partners and associates.</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\"><strong style=\"font-family: Nunito, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 1rem;\">Disputes</strong><br></p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Any dispute related in any way to your visit to this website or to products you purchase from us shall be arbitrated by state or federal court [your location] and you consent to exclusive jurisdiction and venue of such courts.</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\"><span style=\"font-family: Nunito, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 1rem;\"><strong>Comments, Reviews, and Emails</strong></span><br></p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Visitors may post content as long as it is not obscene, illegal, defamatory, threatening, infringing of intellectual property rights, invasive of privacy or injurious in any other way to third parties. Content has to be free of software viruses, political campaign, and commercial solicitation.</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">We reserve all rights (but not the obligation) to remove and/or edit such content. When you post your content, you grant [name] non-exclusive, royalty-free and irrevocable right to use, reproduce, publish, modify such content throughout the world in any media.</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\"><strong>License and Site Access</strong></p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">We grant you a limited license to access and make personal use of this website. You are not allowed to download or modify it. This may be done only with written consent from us.</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\"><strong>User Account</strong></p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">If you are an owner of an account on this website, you are solely responsible for maintaining the confidentiality of your private user details (username and password). You are responsible for all activities that occur under your account or password.</p><p style=\"border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">We reserve all rights to terminate accounts, edit or remove content and cancel orders in their sole discretion.</p>', 1, '<p>This privacy policy (\"policy\") will help you understand how [name] (\"us\", \"we\", \"our\") uses and protects the data you provide to us when you visit and use [website] (\"website\", \"service\").</p><p>We reserve the right to change this policy at any given time, of which you will be promptly updated. If you want to make sure that you are up to date with the latest changes, we advise you to frequently visit this page.</p><p><strong>What User Data We Collect</strong></p><p>When you visit the website, we may collect the following data:</p><p><ul><li>Your IP address.</li><li>Your contact information and email address.</li><li>Other information such as interests and preferences.</li><li>Data profile regarding your online behavior on our website.</li></ul></p><p><strong>Why We Collect Your Data</strong></p><p>We are collecting your data for several reasons:</p><p><ul><li>To better understand your needs.</li><li>To improve our services and products.</li><li>To send you promotional emails containing the information we think you will find interesting.</li><li>To contact you to fill out surveys and participate in other types of market research.</li><li>To customize our website according to your online behavior and personal preferences.</li></ul></p><p><strong>Safeguarding and Securing the Data</strong></p><p>[name] is committed to securing your data and keeping it confidential. [name] has done all in its power to prevent data theft, unauthorized access, and disclosure by implementing the latest technologies and software, which help us safeguard all the information we collect online.</p><p><strong>Our Cookie Policy</strong></p><p>Once you agree to allow our website to use cookies, you also agree to use the data it collects regarding your online behavior (analyze web traffic, web pages you spend the most time on, and websites you visit).</p><p>The data we collect by using cookies is used to customize our website to your needs. After we use the data for statistical analysis, the data is completely removed from our systems.</p><p>Please note that cookies don\'t allow us to gain control of your computer in any way. They are strictly used to monitor which pages you find useful and which you do not so that we can provide a better experience for you.</p><p>If you want to disable cookies, you can do it by accessing the settings of your internet browser. (Provide links for cookie settings for major internet browsers).</p><p><span style=\"font-family: Nunito, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 1rem;\"><strong>Links to Other Websites</strong></span></p><p>Our website contains links that lead to other websites. If you click on these links [name] is not held responsible for your data and privacy protection. Visiting those websites is not governed by this privacy policy agreement. Make sure to read the privacy policy documentation of the website you go to from our website.</p><p><strong>Restricting the Collection of your Personal Data</strong></p><p>At some point, you might wish to restrict the use and collection of your personal data. You can achieve this by doing the following:</p><p><ul><li>When you are filling the forms on the website, make sure to check if there is a box which you can leave unchecked, if you don\'t want to disclose your personal information.</li><li>If you have already agreed to share your information with us, feel free to contact us via email and we will be more than happy to change this for you.</li></ul></p><p>[name] will not lease, sell or distribute your personal information to any third parties, unless we have your permission. We might do so if the law forces us. Your personal information will be used when we need to send you promotional materials if you agree to this privacy policy.</p>', '2021-11-10 04:57:51', '2022-05-03 18:45:57', 1, 'G-6W0J3EJJTB', 1, NULL, 1, '<!-- Global site tag (gtag.js) - Google Analytics -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=G-6W0J3EJJTB\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'G-6W0J3EJJTB\');\r\n</script>', 0, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 'INR', 0, 0, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, 'usd', 1, 1, 1, 'weekly', 'xml', 1, 1, 'weekly', 'xml', 1, 1, 'weekly', 'xml', 1, 1, 'weekly', 'xml', 1, 1, 'weekly', 'xml', 1, 1, 'weekly', 'xml', 1, 6, 0, '$', '2022-05-03 12:45:57', 1, NULL, 0, NULL, NULL, NULL, 1, 0, 1, 'weekly', 'xml', 1, 1, 'weekly', 'xml', 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings_items`
--

CREATE TABLE `settings_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `setting_id` int(11) NOT NULL,
  `setting_item_max_gallery_photos` int(11) NOT NULL DEFAULT '12',
  `setting_item_auto_approval_enable` int(11) NOT NULL DEFAULT '0' COMMENT '0:disable 1:enable',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings_items`
--

INSERT INTO `settings_items` (`id`, `setting_id`, `setting_item_max_gallery_photos`, `setting_item_auto_approval_enable`, `created_at`, `updated_at`) VALUES
(1, 1, 10, 0, '2021-11-11 04:57:47', '2021-12-18 16:10:50');

-- --------------------------------------------------------

--
-- Table structure for table `settings_languages`
--

CREATE TABLE `settings_languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `setting_id` int(11) NOT NULL,
  `setting_language_default_language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `setting_language_af_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_sq_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_ar_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_hy_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_az_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_be_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_bn_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_bs_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_bg_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_ca_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_zh_cn_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_zh_tw_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_hr_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_cs_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_da_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_nl_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_en_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_et_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_fi_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_fr_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_gl_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_ka_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_de_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_el_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_ht_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_he_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_hi_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_hu_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_is_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_id_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_ga_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_it_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_ja_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_ko_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_ky_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_lv_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_lt_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_lb_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_mk_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_ms_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_mn_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_my_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_ne_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_no_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_fa_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_pl_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_pt_br_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_ro_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_ru_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_sr_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_sk_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_sl_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_so_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_es_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_su_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_sv_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_th_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_tr_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_tk_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_uk_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_uz_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `setting_language_vi_language` int(11) NOT NULL DEFAULT '1' COMMENT '0:disable 1:enable',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings_languages`
--

INSERT INTO `settings_languages` (`id`, `setting_id`, `setting_language_default_language`, `setting_language_af_language`, `setting_language_sq_language`, `setting_language_ar_language`, `setting_language_hy_language`, `setting_language_az_language`, `setting_language_be_language`, `setting_language_bn_language`, `setting_language_bs_language`, `setting_language_bg_language`, `setting_language_ca_language`, `setting_language_zh_cn_language`, `setting_language_zh_tw_language`, `setting_language_hr_language`, `setting_language_cs_language`, `setting_language_da_language`, `setting_language_nl_language`, `setting_language_en_language`, `setting_language_et_language`, `setting_language_fi_language`, `setting_language_fr_language`, `setting_language_gl_language`, `setting_language_ka_language`, `setting_language_de_language`, `setting_language_el_language`, `setting_language_ht_language`, `setting_language_he_language`, `setting_language_hi_language`, `setting_language_hu_language`, `setting_language_is_language`, `setting_language_id_language`, `setting_language_ga_language`, `setting_language_it_language`, `setting_language_ja_language`, `setting_language_ko_language`, `setting_language_ky_language`, `setting_language_lv_language`, `setting_language_lt_language`, `setting_language_lb_language`, `setting_language_mk_language`, `setting_language_ms_language`, `setting_language_mn_language`, `setting_language_my_language`, `setting_language_ne_language`, `setting_language_no_language`, `setting_language_fa_language`, `setting_language_pl_language`, `setting_language_pt_br_language`, `setting_language_ro_language`, `setting_language_ru_language`, `setting_language_sr_language`, `setting_language_sk_language`, `setting_language_sl_language`, `setting_language_so_language`, `setting_language_es_language`, `setting_language_su_language`, `setting_language_sv_language`, `setting_language_th_language`, `setting_language_tr_language`, `setting_language_tk_language`, `setting_language_uk_language`, `setting_language_uz_language`, `setting_language_vi_language`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-11-11 04:57:47', '2021-11-11 04:57:47');

-- --------------------------------------------------------

--
-- Table structure for table `setting_bank_transfers`
--

CREATE TABLE `setting_bank_transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `setting_bank_transfer_bank_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `setting_bank_transfer_bank_account_info` text COLLATE utf8mb4_unicode_ci,
  `setting_bank_transfer_status` int(11) NOT NULL DEFAULT '0' COMMENT '0:disable, 1:enable',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting_bank_transfers`
--

INSERT INTO `setting_bank_transfers` (`id`, `setting_bank_transfer_bank_name`, `setting_bank_transfer_bank_account_info`, `setting_bank_transfer_status`, `created_at`, `updated_at`) VALUES
(1, 'Bank of America', 'Bank of America Account #: 8897 6546 8990 5433', 0, '2021-11-11 04:57:46', '2021-11-11 04:57:46');

-- --------------------------------------------------------

--
-- Table structure for table `socialite_accounts`
--

CREATE TABLE `socialite_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `socialite_account_provider_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `socialite_account_provider_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_logins`
--

CREATE TABLE `social_logins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `social_login_provider_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_login_provider_client_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_login_provider_client_secret` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_login_enabled` int(11) NOT NULL DEFAULT '0' COMMENT '0: disabled 1: enabled',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_logins`
--

INSERT INTO `social_logins` (`id`, `social_login_provider_name`, `social_login_provider_client_id`, `social_login_provider_client_secret`, `social_login_enabled`, `created_at`, `updated_at`) VALUES
(1, 'Facebook', '', '', 0, '2021-11-11 04:57:46', '2021-11-11 04:57:46'),
(2, 'Google', '', '', 0, '2021-11-11 04:57:46', '2021-11-11 04:57:46'),
(3, 'Twitter', '', '', 0, '2021-11-11 04:57:46', '2021-11-11 04:57:46'),
(4, 'LinkedIn', '', '', 0, '2021-11-11 04:57:46', '2021-11-11 04:57:46'),
(5, 'GitHub', '', '', 0, '2021-11-11 04:57:46', '2021-11-11 04:57:46');

-- --------------------------------------------------------

--
-- Table structure for table `social_medias`
--

CREATE TABLE `social_medias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `social_media_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `social_media_icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `social_media_link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `social_media_order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_medias`
--

INSERT INTO `social_medias` (`id`, `social_media_name`, `social_media_icon`, `social_media_link`, `social_media_order`, `created_at`, `updated_at`) VALUES
(1, 'Facebook', 'fab fa-facebook-f', 'https://facebook.com', 1, '2021-11-10 04:57:48', '2021-11-10 04:57:48'),
(2, 'Twitter', 'fab fa-twitter', 'https://twitter.com', 2, '2021-11-10 04:57:48', '2021-11-10 04:57:48'),
(3, 'Instagram', 'fab fa-instagram', 'https://instagram.com', 3, '2021-11-10 04:57:48', '2021-11-10 04:57:48'),
(4, 'LinkedIn', 'fab fa-linkedin-in', 'https://linkedin.com', 4, '2021-11-10 04:57:48', '2021-11-10 04:57:48');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` int(11) NOT NULL,
  `state_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_abbr` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_country_abbr` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `country_id`, `state_name`, `state_abbr`, `state_slug`, `state_country_abbr`, `created_at`, `updated_at`) VALUES
(6254929, 396, 'Dubai', 'DXB', 'Dubai-UAE', 'UAE', '2021-11-12 00:27:41', '2021-11-12 00:29:56'),
(6254930, 396, 'Abu Dhabi', 'ABD', 'Abu-Dhabi-UAE', 'UAE', '2021-11-12 00:28:21', '2021-11-12 00:31:36'),
(6254931, 396, 'Ajman', 'AJM', 'Ajman-UAE', 'UAE', '2021-11-12 00:32:03', '2021-11-12 00:32:03'),
(6254932, 396, 'Fujairah', 'FUJ', 'Fujairah-UAE', 'UAE', '2021-11-12 00:35:47', '2021-11-12 00:35:47'),
(6254933, 396, 'Ras Al Khaimah', 'RAK', 'Ras-Al-Khaimah-UAE', 'UAE', '2021-11-12 00:37:13', '2021-11-12 00:37:13'),
(6254934, 396, 'Sharjah', 'SHJ', 'Sharjah-UAE', 'UAE', '2021-11-12 00:38:03', '2021-11-12 00:38:03'),
(6254935, 396, 'Umm Al Quwain', 'UAQ', 'Umm-Al-Quwain-UAE', 'UAE', '2021-11-12 00:38:49', '2021-11-12 00:38:49'),
(6254936, 396, 'Al Ain', 'AAN', 'Al-Ain-UAE', 'UAE', '2021-11-18 20:36:32', '2021-11-18 20:36:32');

-- --------------------------------------------------------

--
-- Table structure for table `stripe_webhook_logs`
--

CREATE TABLE `stripe_webhook_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `stripe_webhook_log_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `subscription_start_date` date NOT NULL,
  `subscription_end_date` date DEFAULT NULL,
  `subscription_max_featured_listing` int(11) DEFAULT NULL COMMENT 'ABANDONED',
  `subscription_paypal_profile_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subscription_razorpay_plan_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscription_razorpay_subscription_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscription_pay_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscription_stripe_customer_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscription_stripe_subscription_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscription_stripe_future_plan_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `user_id`, `plan_id`, `subscription_start_date`, `subscription_end_date`, `subscription_max_featured_listing`, `subscription_paypal_profile_id`, `created_at`, `updated_at`, `subscription_razorpay_plan_id`, `subscription_razorpay_subscription_id`, `subscription_pay_method`, `subscription_stripe_customer_id`, `subscription_stripe_subscription_id`, `subscription_stripe_future_plan_id`) VALUES
(1, 1, 2, '2021-11-10', NULL, NULL, NULL, '2021-11-10 04:57:52', '2021-11-10 04:57:52', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, 1, '2022-02-06', NULL, NULL, NULL, '2022-02-06 18:06:26', '2022-02-06 18:06:26', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 3, 1, '2022-04-14', NULL, NULL, NULL, '2022-04-14 22:06:54', '2022-04-14 22:06:54', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 4, 1, '2022-06-17', NULL, NULL, NULL, '2022-06-18 01:51:26', '2022-06-18 01:51:26', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `testimonial_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonial_company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_job_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `testimonial_name`, `testimonial_company`, `testimonial_job_title`, `testimonial_image`, `testimonial_description`, `created_at`, `updated_at`) VALUES
(1, 'Liam Kaufman', 'Project Studio Solutions', 'Founder', NULL, 'WOW! This is great, I think this will be very soon the best directory solution of all, the developer is releasing updates very often and is open to suggestions, can\'t wait to see how is it going to evolve. Don\'t hesitate to buy it, you won\'t regret it.', '2021-11-10 04:57:48', '2021-11-10 04:57:48'),
(2, 'Jeff Dawson', 'JD Web Publishing', 'CEO', NULL, 'Amazing product for local listings with growing features, regular and frequent updates with passion. Always seeks client inputs, collaborative, extends support and clarification, very friendly. Great work!', '2021-11-10 04:57:48', '2021-11-10 04:57:48'),
(3, 'Bette Brennan', 'Forayweb', 'Tech Lead', NULL, 'WOW! One of the Best Creative Software Programmers and Offers Great Support and Listens to suggestions. Great script idea\'s for Entrepreneurs.', '2021-11-10 04:57:48', '2021-11-10 04:57:48');

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `theme_identifier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'an unique column',
  `theme_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme_preview_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme_author` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme_description` text COLLATE utf8mb4_unicode_ci,
  `theme_type` int(11) NOT NULL COMMENT '1:frontend theme, 2:admin theme, 3:user theme',
  `theme_status` int(11) NOT NULL DEFAULT '2' COMMENT '1:active 2:inactive',
  `theme_system_default` int(11) NOT NULL DEFAULT '2' COMMENT '1:system default theme, 2:not system default theme',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `theme_identifier`, `theme_name`, `theme_preview_image`, `theme_author`, `theme_description`, `theme_type`, `theme_status`, `theme_system_default`, `created_at`, `updated_at`) VALUES
(1, 'lduruo10_dh_frontend_default', 'Directory Hub', 'system_default_frontend_theme_preview.jpg', 'lduruo10', 'The Directory Hub Listing & Business Directory CMS default theme. Please use the Edit Colors and Edit Headers buttons to customize the theme styles of yours.', 1, 1, 1, '2021-11-11 04:57:47', '2021-11-11 04:57:47');

-- --------------------------------------------------------

--
-- Table structure for table `threads`
--

CREATE TABLE `threads` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `thread_item_rels`
--

CREATE TABLE `thread_item_rels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `thread_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `role_id` int(11) NOT NULL,
  `user_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_about` text COLLATE utf8mb4_unicode_ci,
  `user_suspended` int(11) NOT NULL DEFAULT '0' COMMENT '0:not suspended 1:suspended',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_prefer_language` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_prefer_country_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `role_id`, `user_image`, `user_about`, `user_suspended`, `created_at`, `updated_at`, `user_prefer_language`, `user_prefer_country_id`) VALUES
(1, 'Menteybody.com', 'adaikkappan.p@gmail.com', '2021-11-10 04:57:52', '$2y$10$VsEj32uAwImk73GuaFMAL.7GU6lGrOUXpcWY4Fi1JRvFRzApmiKoG', 'D3eXFYj31H5g5B9oAxV5Suq0BKNKye1C8O2lCFu08R7YuPGuOsTn6lYyCOFY', 1, 'admin-menteybodycom-2021-12-30-61ce2e4acb13f.jpg', 'This is admin profile description, fee free to re-edit with your own description.', 0, '2021-11-10 04:57:52', '2021-12-31 05:10:18', 'en', NULL),
(2, 'menteybody.com bbbdnwkdowifhrdokpwoeiyutrieowsowddfbvksodkasofjgiekwskfieghrhjkfejfegigofwkdkbhbgiejfwokdd', 'dimafokin199506780tx+8311@inbox.ru', NULL, '$2y$10$YcJmzcRnJf4noGS6pBpWsutGfTkU5m6lweIaemggfgSBaLKX2b.eu', NULL, 3, NULL, NULL, 0, '2022-02-06 18:06:26', '2022-02-06 18:06:26', NULL, NULL),
(3, 'menteybody.com ugrfeiohofidsksmvnjdbvsijf94t9u5t0i4r94ijgrjght9y84r49t64rkowf0ereiuguejdkwdiweofuehdskodjjdgofjsoddggfsidj', 'KsenofontMaidanov+5t3b@mail.ru', NULL, '$2y$10$.AXKK6RigsOghqUvGzVf8e54MX9yYJF5ir2s1ZKpk2gG1aZbqnptC', NULL, 3, NULL, NULL, 0, '2022-04-14 22:06:54', '2022-04-14 22:06:54', NULL, NULL),
(4, 'Aruna Devi', 'dr.arunaadaikkappan@gmail.com', NULL, '$2y$10$mB/1atkvFUcnkffKIBKBKuZy/7OT.8AnQ6fk36RAquWYqPgiwkks6', NULL, 3, NULL, NULL, 0, '2022-06-18 01:51:26', '2022-06-18 01:51:26', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `canvas_posts`
--
ALTER TABLE `canvas_posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `canvas_posts_slug_user_id_unique` (`slug`,`user_id`),
  ADD KEY `canvas_posts_user_id_index` (`user_id`);

--
-- Indexes for table `canvas_posts_tags`
--
ALTER TABLE `canvas_posts_tags`
  ADD UNIQUE KEY `canvas_posts_tags_post_id_tag_id_unique` (`post_id`,`tag_id`);

--
-- Indexes for table `canvas_posts_topics`
--
ALTER TABLE `canvas_posts_topics`
  ADD UNIQUE KEY `canvas_posts_topics_post_id_topic_id_unique` (`post_id`,`topic_id`);

--
-- Indexes for table `canvas_tags`
--
ALTER TABLE `canvas_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `canvas_tags_slug_user_id_unique` (`slug`,`user_id`),
  ADD KEY `canvas_tags_created_at_index` (`created_at`),
  ADD KEY `canvas_tags_user_id_index` (`user_id`);

--
-- Indexes for table `canvas_topics`
--
ALTER TABLE `canvas_topics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `canvas_topics_slug_user_id_unique` (`slug`,`user_id`),
  ADD KEY `canvas_topics_created_at_index` (`created_at`),
  ADD KEY `canvas_topics_user_id_index` (`user_id`);

--
-- Indexes for table `canvas_user_meta`
--
ALTER TABLE `canvas_user_meta`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `canvas_user_meta_user_id_unique` (`user_id`),
  ADD UNIQUE KEY `canvas_user_meta_username_unique` (`username`);

--
-- Indexes for table `canvas_views`
--
ALTER TABLE `canvas_views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `canvas_views_post_id_index` (`post_id`),
  ADD KEY `canvas_views_created_at_index` (`created_at`);

--
-- Indexes for table `canvas_visits`
--
ALTER TABLE `canvas_visits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_category_slug_unique` (`category_slug`),
  ADD KEY `categories_category_parent_id_index` (`category_parent_id`),
  ADD KEY `categories_category_name_index` (`category_name`);

--
-- Indexes for table `category_custom_field`
--
ALTER TABLE `category_custom_field`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_item`
--
ALTER TABLE `category_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_item_category_id_index` (`category_id`),
  ADD KEY `category_item_item_id_index` (`item_id`),
  ADD KEY `category_item_created_at_index` (`created_at`),
  ADD KEY `category_item_updated_at_index` (`updated_at`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_state_id_index` (`state_id`),
  ADD KEY `cities_city_slug_index` (`city_slug`),
  ADD KEY `cities_city_name_index` (`city_name`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_commenter_id_commenter_type_index` (`commenter_id`,`commenter_type`),
  ADD KEY `comments_commentable_type_commentable_id_index` (`commentable_type`,`commentable_id`),
  ADD KEY `comments_child_id_foreign` (`child_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countries_country_name_index` (`country_name`),
  ADD KEY `countries_country_slug_index` (`country_slug`),
  ADD KEY `countries_country_status_index` (`country_status`);

--
-- Indexes for table `customizations`
--
ALTER TABLE `customizations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customizations_theme_id_index` (`theme_id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `import_csv_data`
--
ALTER TABLE `import_csv_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `import_item_data`
--
ALTER TABLE `import_item_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `import_item_feature_data`
--
ALTER TABLE `import_item_feature_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `items_item_slug_unique` (`item_slug`),
  ADD KEY `items_item_status_index` (`item_status`),
  ADD KEY `items_item_type_index` (`item_type`),
  ADD KEY `items_user_id_index` (`user_id`),
  ADD KEY `items_city_id_index` (`city_id`),
  ADD KEY `items_state_id_index` (`state_id`),
  ADD KEY `items_country_id_index` (`country_id`),
  ADD KEY `items_item_featured_index` (`item_featured`),
  ADD KEY `items_item_featured_by_admin_index` (`item_featured_by_admin`),
  ADD KEY `items_item_average_rating_index` (`item_average_rating`),
  ADD KEY `items_created_at_index` (`created_at`),
  ADD KEY `items_updated_at_index` (`updated_at`);

--
-- Indexes for table `item_claims`
--
ALTER TABLE `item_claims`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_features`
--
ALTER TABLE `item_features`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_features_item_id_index` (`item_id`);

--
-- Indexes for table `item_hours`
--
ALTER TABLE `item_hours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_hours_item_id_index` (`item_id`);

--
-- Indexes for table `item_hour_exceptions`
--
ALTER TABLE `item_hour_exceptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_hour_exceptions_item_id_index` (`item_id`);

--
-- Indexes for table `item_image_galleries`
--
ALTER TABLE `item_image_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_leads`
--
ALTER TABLE `item_leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_sections`
--
ALTER TABLE `item_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_sections_item_id_index` (`item_id`),
  ADD KEY `item_sections_item_section_position_index` (`item_section_position`),
  ADD KEY `item_sections_item_section_order_index` (`item_section_order`),
  ADD KEY `item_sections_item_section_status_index` (`item_section_status`);

--
-- Indexes for table `item_section_collections`
--
ALTER TABLE `item_section_collections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_user`
--
ALTER TABLE `item_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `paypal_ipn_logs`
--
ALTER TABLE `paypal_ipn_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_features`
--
ALTER TABLE `product_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_image_galleries`
--
ALTER TABLE `product_image_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `razorpay_webhook_logs`
--
ALTER TABLE `razorpay_webhook_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_reviewrateable_type_reviewrateable_id_index` (`reviewrateable_type`,`reviewrateable_id`),
  ADD KEY `reviews_author_type_author_id_index` (`author_type`,`author_id`);

--
-- Indexes for table `review_image_galleries`
--
ALTER TABLE `review_image_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings_items`
--
ALTER TABLE `settings_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings_languages`
--
ALTER TABLE `settings_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting_bank_transfers`
--
ALTER TABLE `setting_bank_transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialite_accounts`
--
ALTER TABLE `socialite_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_logins`
--
ALTER TABLE `social_logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_medias`
--
ALTER TABLE `social_medias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `states_country_id_index` (`country_id`),
  ADD KEY `states_state_slug_index` (`state_slug`),
  ADD KEY `states_state_name_index` (`state_name`);

--
-- Indexes for table `stripe_webhook_logs`
--
ALTER TABLE `stripe_webhook_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `themes_theme_identifier_unique` (`theme_identifier`);

--
-- Indexes for table `threads`
--
ALTER TABLE `threads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thread_item_rels`
--
ALTER TABLE `thread_item_rels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `translations_language_id_foreign` (`language_id`);

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
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `canvas_user_meta`
--
ALTER TABLE `canvas_user_meta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `canvas_views`
--
ALTER TABLE `canvas_views`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `canvas_visits`
--
ALTER TABLE `canvas_visits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `category_custom_field`
--
ALTER TABLE `category_custom_field`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=468;

--
-- AUTO_INCREMENT for table `category_item`
--
ALTER TABLE `category_item`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12213106;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=397;

--
-- AUTO_INCREMENT for table `customizations`
--
ALTER TABLE `customizations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `import_csv_data`
--
ALTER TABLE `import_csv_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `import_item_data`
--
ALTER TABLE `import_item_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `import_item_feature_data`
--
ALTER TABLE `import_item_feature_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `item_claims`
--
ALTER TABLE `item_claims`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_features`
--
ALTER TABLE `item_features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `item_hours`
--
ALTER TABLE `item_hours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `item_hour_exceptions`
--
ALTER TABLE `item_hour_exceptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_image_galleries`
--
ALTER TABLE `item_image_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `item_leads`
--
ALTER TABLE `item_leads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_sections`
--
ALTER TABLE `item_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_section_collections`
--
ALTER TABLE `item_section_collections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_user`
--
ALTER TABLE `item_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `participants`
--
ALTER TABLE `participants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `paypal_ipn_logs`
--
ALTER TABLE `paypal_ipn_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_features`
--
ALTER TABLE `product_features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_image_galleries`
--
ALTER TABLE `product_image_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `razorpay_webhook_logs`
--
ALTER TABLE `razorpay_webhook_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review_image_galleries`
--
ALTER TABLE `review_image_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings_items`
--
ALTER TABLE `settings_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings_languages`
--
ALTER TABLE `settings_languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `setting_bank_transfers`
--
ALTER TABLE `setting_bank_transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `socialite_accounts`
--
ALTER TABLE `socialite_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_logins`
--
ALTER TABLE `social_logins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `social_medias`
--
ALTER TABLE `social_medias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6254937;

--
-- AUTO_INCREMENT for table `stripe_webhook_logs`
--
ALTER TABLE `stripe_webhook_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `threads`
--
ALTER TABLE `threads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `thread_item_rels`
--
ALTER TABLE `thread_item_rels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_child_id_foreign` FOREIGN KEY (`child_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `translations`
--
ALTER TABLE `translations`
  ADD CONSTRAINT `translations_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
