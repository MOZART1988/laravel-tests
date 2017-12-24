-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 24 2017 г., 19:17
-- Версия сервера: 5.6.34
-- Версия PHP: 7.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `laravel-tests`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `created_at`, `updated_at`) VALUES
(2, 0, 2, 'Admin', 'fa-tasks', '', NULL, NULL),
(3, 2, 3, 'Users', 'fa-users', 'auth/users', NULL, NULL),
(6, 2, 6, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL),
(8, 0, 0, 'Лекции', 'fa-bars', '#', '2017-12-24 04:19:54', '2017-12-24 04:19:54'),
(9, 8, 0, 'Лекции', 'fa-bars', '/lectures', '2017-12-24 04:20:31', '2017-12-24 04:20:31'),
(10, 8, 0, 'Тесты', 'fa-bars', '/tests', '2017-12-24 04:20:53', '2017-12-24 04:20:53'),
(11, 0, 0, 'Вопросы и ответы', 'fa-bars', '#', '2017-12-24 04:21:39', '2017-12-24 04:21:39'),
(12, 11, 0, 'Вопросы', 'fa-bars', '/questions', '2017-12-24 04:21:59', '2017-12-24 04:21:59'),
(13, 11, 0, 'Ответы', 'fa-bars', '/answers', '2017-12-24 04:22:37', '2017-12-24 04:22:37');

-- --------------------------------------------------------

--
-- Структура таблицы `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2017-12-24 03:13:18', '2017-12-24 03:13:18'),
(2, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 03:13:23', '2017-12-24 03:13:23'),
(3, 1, 'admin', 'GET', '127.0.0.1', '[]', '2017-12-24 03:13:30', '2017-12-24 03:13:30'),
(4, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 03:13:34', '2017-12-24 03:13:34'),
(5, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2017-12-24 03:21:52', '2017-12-24 03:21:52'),
(6, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 03:21:56', '2017-12-24 03:21:56'),
(7, 1, 'admin', 'GET', '127.0.0.1', '[]', '2017-12-24 03:50:22', '2017-12-24 03:50:22'),
(8, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2017-12-24 03:50:25', '2017-12-24 03:50:25'),
(9, 2, 'admin', 'GET', '127.0.0.1', '[]', '2017-12-24 04:13:33', '2017-12-24 04:13:33'),
(10, 2, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2017-12-24 04:13:35', '2017-12-24 04:13:35'),
(11, 2, 'admin', 'GET', '127.0.0.1', '[]', '2017-12-24 04:13:41', '2017-12-24 04:13:41'),
(12, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 04:13:46', '2017-12-24 04:13:46'),
(13, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 04:13:51', '2017-12-24 04:13:51'),
(14, 2, 'admin', 'GET', '127.0.0.1', '[]', '2017-12-24 04:14:02', '2017-12-24 04:14:02'),
(15, 1, 'admin', 'GET', '127.0.0.1', '[]', '2017-12-24 04:14:27', '2017-12-24 04:14:27'),
(16, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 04:18:52', '2017-12-24 04:18:52'),
(17, 1, 'admin/auth/menu/4', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"b2qv288ZqRrSYAwEdwLce71RIszvmEEDhMf3DC0m\"}', '2017-12-24 04:19:04', '2017-12-24 04:19:04'),
(18, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 04:19:05', '2017-12-24 04:19:05'),
(19, 1, 'admin/auth/menu/5', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"b2qv288ZqRrSYAwEdwLce71RIszvmEEDhMf3DC0m\"}', '2017-12-24 04:19:16', '2017-12-24 04:19:16'),
(20, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 04:19:17', '2017-12-24 04:19:17'),
(21, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":null,\"icon\":\"fa-bars\",\"uri\":\"#\",\"roles\":[\"1\",null],\"_token\":\"b2qv288ZqRrSYAwEdwLce71RIszvmEEDhMf3DC0m\"}', '2017-12-24 04:19:37', '2017-12-24 04:19:37'),
(22, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-12-24 04:19:37', '2017-12-24 04:19:37'),
(23, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u041b\\u0435\\u043a\\u0446\\u0438\\u0438\",\"icon\":\"fa-bars\",\"uri\":\"#\",\"roles\":[\"1\",null],\"_token\":\"b2qv288ZqRrSYAwEdwLce71RIszvmEEDhMf3DC0m\"}', '2017-12-24 04:19:53', '2017-12-24 04:19:53'),
(24, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-12-24 04:19:54', '2017-12-24 04:19:54'),
(25, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"\\u041b\\u0435\\u043a\\u0446\\u0438\\u0438\",\"icon\":\"fa-bars\",\"uri\":\"\\/lectures\",\"roles\":[\"1\",null],\"_token\":\"b2qv288ZqRrSYAwEdwLce71RIszvmEEDhMf3DC0m\"}', '2017-12-24 04:20:31', '2017-12-24 04:20:31'),
(26, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-12-24 04:20:31', '2017-12-24 04:20:31'),
(27, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"\\u0422\\u0435\\u0441\\u0442\\u044b\",\"icon\":\"fa-bars\",\"uri\":\"\\/tests\",\"roles\":[\"1\",null],\"_token\":\"b2qv288ZqRrSYAwEdwLce71RIszvmEEDhMf3DC0m\"}', '2017-12-24 04:20:53', '2017-12-24 04:20:53'),
(28, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-12-24 04:20:53', '2017-12-24 04:20:53'),
(29, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":null,\"icon\":\"fa-bars\",\"uri\":\"#\",\"roles\":[\"1\",null],\"_token\":\"b2qv288ZqRrSYAwEdwLce71RIszvmEEDhMf3DC0m\"}', '2017-12-24 04:21:27', '2017-12-24 04:21:27'),
(30, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-12-24 04:21:27', '2017-12-24 04:21:27'),
(31, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u0412\\u043e\\u043f\\u0440\\u043e\\u0441\\u044b \\u0438 \\u043e\\u0442\\u0432\\u0435\\u0442\\u044b\",\"icon\":\"fa-bars\",\"uri\":\"#\",\"roles\":[\"1\",null],\"_token\":\"b2qv288ZqRrSYAwEdwLce71RIszvmEEDhMf3DC0m\"}', '2017-12-24 04:21:39', '2017-12-24 04:21:39'),
(32, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-12-24 04:21:39', '2017-12-24 04:21:39'),
(33, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"11\",\"title\":\"\\u0412\\u043e\\u043f\\u0440\\u043e\\u0441\\u044b\",\"icon\":\"fa-bars\",\"uri\":\"\\/questions\",\"roles\":[\"1\",null],\"_token\":\"b2qv288ZqRrSYAwEdwLce71RIszvmEEDhMf3DC0m\"}', '2017-12-24 04:21:59', '2017-12-24 04:21:59'),
(34, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-12-24 04:21:59', '2017-12-24 04:21:59'),
(35, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"11\",\"title\":\"\\u041e\\u0442\\u0432\\u0435\\u0442\\u044b\",\"icon\":\"fa-bars\",\"uri\":\"\\/answers\",\"roles\":[\"1\",null],\"_token\":\"b2qv288ZqRrSYAwEdwLce71RIszvmEEDhMf3DC0m\"}', '2017-12-24 04:22:37', '2017-12-24 04:22:37'),
(36, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-12-24 04:22:37', '2017-12-24 04:22:37'),
(37, 1, 'admin/auth/menu/7', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"b2qv288ZqRrSYAwEdwLce71RIszvmEEDhMf3DC0m\"}', '2017-12-24 04:22:58', '2017-12-24 04:22:58'),
(38, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 04:22:59', '2017-12-24 04:22:59'),
(39, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 04:23:08', '2017-12-24 04:23:08'),
(40, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 04:23:09', '2017-12-24 04:23:09'),
(41, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-12-24 04:23:16', '2017-12-24 04:23:16'),
(42, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 04:23:20', '2017-12-24 04:23:20'),
(43, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 04:23:24', '2017-12-24 04:23:24'),
(44, 1, 'admin/auth/menu/1', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"b2qv288ZqRrSYAwEdwLce71RIszvmEEDhMf3DC0m\"}', '2017-12-24 04:23:29', '2017-12-24 04:23:29'),
(45, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 04:23:29', '2017-12-24 04:23:29'),
(46, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2017-12-24 04:23:35', '2017-12-24 04:23:35'),
(47, 1, 'admin/questions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 04:23:39', '2017-12-24 04:23:39'),
(48, 1, 'admin/lectures', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 04:23:43', '2017-12-24 04:23:43'),
(49, 1, 'admin/lectures/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 04:23:45', '2017-12-24 04:23:45'),
(50, 1, 'admin/lectures', 'POST', '127.0.0.1', '{\"title\":\"\\u041b\\u0435\\u043a\\u0446\\u0438\\u044f \\u043f\\u043e \\u043c\\u0430\\u0442\\u0435\\u043c\\u0430\\u0442\\u0438\\u043a\\u0435\",\"description\":\"\\u041b\\u0435\\u043a\\u0446\\u0438\\u044f \\u043f\\u043e \\u043c\\u0430\\u0442\\u0435\\u043c\\u0430\\u0442\\u0438\\u043a\\u0435\",\"youtube_video\":\"https:\\/\\/www.youtube.com\\/embed\\/zIYfYT5THDY\",\"_token\":\"b2qv288ZqRrSYAwEdwLce71RIszvmEEDhMf3DC0m\",\"_previous_\":\"http:\\/\\/laravel-tests\\/admin\\/lectures\"}', '2017-12-24 04:25:16', '2017-12-24 04:25:16'),
(51, 1, 'admin/lectures', 'GET', '127.0.0.1', '[]', '2017-12-24 04:25:17', '2017-12-24 04:25:17'),
(52, 1, 'admin/tests', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 04:25:22', '2017-12-24 04:25:22'),
(53, 1, 'admin/tests/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 04:25:24', '2017-12-24 04:25:24'),
(54, 1, 'admin/tests', 'POST', '127.0.0.1', '{\"title\":\"\\u0422\\u0435\\u0441\\u0442 \\u043f\\u043e \\u043c\\u0430\\u0442\\u0435\\u043c\\u0430\\u0442\\u0438\\u043a\\u0435 1\",\"lecture_id\":\"1\",\"_token\":\"b2qv288ZqRrSYAwEdwLce71RIszvmEEDhMf3DC0m\",\"_previous_\":\"http:\\/\\/laravel-tests\\/admin\\/tests\"}', '2017-12-24 04:25:34', '2017-12-24 04:25:34'),
(55, 1, 'admin/tests/create', 'GET', '127.0.0.1', '[]', '2017-12-24 04:25:36', '2017-12-24 04:25:36'),
(56, 1, 'admin/tests/create', 'GET', '127.0.0.1', '[]', '2017-12-24 04:26:56', '2017-12-24 04:26:56'),
(57, 1, 'admin/tests/create', 'GET', '127.0.0.1', '[]', '2017-12-24 04:27:09', '2017-12-24 04:27:09'),
(58, 1, 'admin/tests', 'POST', '127.0.0.1', '{\"title\":\"\\u0422\\u0435\\u0441\\u0442 \\u043f\\u043e \\u043c\\u0430\\u0442\\u0435\\u043c\\u0430\\u0442\\u0438\\u043a\\u0435\",\"lecture_id\":\"1\",\"description\":\"\\u041e\\u0441\\u043d\\u043e\\u0432\\u044b \\u043c\\u0430\\u0442\\u0435\\u043c\\u0430\\u0442\\u0438\\u043a\\u0438, \\u0447\\u0435\\u0442\\u0432\\u0435\\u0440\\u0442\\u044c 1\",\"_token\":\"b2qv288ZqRrSYAwEdwLce71RIszvmEEDhMf3DC0m\"}', '2017-12-24 04:27:36', '2017-12-24 04:27:36'),
(59, 1, 'admin/tests/create', 'GET', '127.0.0.1', '[]', '2017-12-24 04:27:36', '2017-12-24 04:27:36'),
(60, 1, 'admin/tests', 'POST', '127.0.0.1', '{\"title\":\"\\u0422\\u0435\\u0441\\u0442 \\u043f\\u043e \\u043c\\u0430\\u0442\\u0435\\u043c\\u0430\\u0442\\u0438\\u043a\\u0435\",\"lecture_id\":\"1\",\"description\":\"\\u041e\\u0441\\u043d\\u043e\\u0432\\u044b \\u043c\\u0430\\u0442\\u0435\\u043c\\u0430\\u0442\\u0438\\u043a\\u0438, \\u0447\\u0435\\u0442\\u0432\\u0435\\u0440\\u0442\\u044c 1\",\"_token\":\"b2qv288ZqRrSYAwEdwLce71RIszvmEEDhMf3DC0m\"}', '2017-12-24 04:28:25', '2017-12-24 04:28:25'),
(61, 1, 'admin/tests/create', 'GET', '127.0.0.1', '[]', '2017-12-24 04:28:25', '2017-12-24 04:28:25'),
(62, 1, 'admin/tests/create', 'GET', '127.0.0.1', '[]', '2017-12-24 04:28:28', '2017-12-24 04:28:28'),
(63, 1, 'admin/tests', 'POST', '127.0.0.1', '{\"title\":\"sdfsdfsdfg\",\"lecture_id\":\"1\",\"description\":\"sdfsdf\",\"_token\":\"b2qv288ZqRrSYAwEdwLce71RIszvmEEDhMf3DC0m\"}', '2017-12-24 04:28:35', '2017-12-24 04:28:35'),
(64, 1, 'admin/tests/create', 'GET', '127.0.0.1', '[]', '2017-12-24 04:28:35', '2017-12-24 04:28:35'),
(65, 1, 'admin/tests', 'POST', '127.0.0.1', '{\"title\":\"\\u0422\\u0435\\u0441\\u0442 1 \\u043f\\u043e \\u043c\\u0430\\u0442\\u0435\\u043c\\u0430\\u0442\\u0438\\u043a\\u0435\",\"lecture_id\":\"1\",\"description\":\"\\u0422\\u0435\\u0441\\u0442 \\u043f\\u043e \\u043c\\u0430\\u0442\\u0435\\u043c\\u0430\\u0442\\u0438\\u043a\\u0435, \\u0447\\u0430\\u0441\\u0442\\u044c 1\",\"_token\":\"b2qv288ZqRrSYAwEdwLce71RIszvmEEDhMf3DC0m\"}', '2017-12-24 04:29:17', '2017-12-24 04:29:17'),
(66, 1, 'admin/tests', 'GET', '127.0.0.1', '[]', '2017-12-24 04:29:17', '2017-12-24 04:29:17'),
(67, 1, 'admin/questions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 04:29:32', '2017-12-24 04:29:32'),
(68, 1, 'admin/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 04:29:34', '2017-12-24 04:29:34'),
(69, 1, 'admin/questions', 'POST', '127.0.0.1', '{\"question\":\"\\u0421\\u043a\\u043e\\u043b\\u044c\\u043a\\u043e \\u0431\\u0443\\u0434\\u0435\\u0442 1 + 1\",\"test_id\":\"1\",\"_token\":\"b2qv288ZqRrSYAwEdwLce71RIszvmEEDhMf3DC0m\",\"_previous_\":\"http:\\/\\/laravel-tests\\/admin\\/questions\"}', '2017-12-24 04:29:54', '2017-12-24 04:29:54'),
(70, 1, 'admin/questions', 'GET', '127.0.0.1', '[]', '2017-12-24 04:29:54', '2017-12-24 04:29:54'),
(71, 1, 'admin/answers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 04:29:57', '2017-12-24 04:29:57'),
(72, 1, 'admin/answers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 04:29:58', '2017-12-24 04:29:58'),
(73, 1, 'admin/answers/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 04:30:00', '2017-12-24 04:30:00'),
(74, 1, 'admin/answers', 'POST', '127.0.0.1', '{\"answer\":\"2\",\"question_id\":\"1\",\"is_correct\":[null],\"_token\":\"b2qv288ZqRrSYAwEdwLce71RIszvmEEDhMf3DC0m\",\"_previous_\":\"http:\\/\\/laravel-tests\\/admin\\/answers\"}', '2017-12-24 04:30:05', '2017-12-24 04:30:05'),
(75, 1, 'admin/answers/create', 'GET', '127.0.0.1', '[]', '2017-12-24 04:30:05', '2017-12-24 04:30:05'),
(76, 1, 'admin/answers/create', 'GET', '127.0.0.1', '[]', '2017-12-24 04:33:34', '2017-12-24 04:33:34'),
(77, 1, 'admin/answers/create', 'GET', '127.0.0.1', '[]', '2017-12-24 04:35:33', '2017-12-24 04:35:33'),
(78, 1, 'admin/answers/create', 'GET', '127.0.0.1', '[]', '2017-12-24 04:35:55', '2017-12-24 04:35:55'),
(79, 1, 'admin/answers', 'POST', '127.0.0.1', '{\"answer\":\"2\",\"question_id\":\"1\",\"is_correct\":[\"1\",null],\"_token\":\"b2qv288ZqRrSYAwEdwLce71RIszvmEEDhMf3DC0m\"}', '2017-12-24 04:36:02', '2017-12-24 04:36:02'),
(80, 1, 'admin/answers/create', 'GET', '127.0.0.1', '[]', '2017-12-24 04:36:03', '2017-12-24 04:36:03'),
(81, 1, 'admin/answers', 'POST', '127.0.0.1', '{\"answer\":\"2\",\"question_id\":\"1\",\"is_correct\":[\"1\",null],\"_token\":\"b2qv288ZqRrSYAwEdwLce71RIszvmEEDhMf3DC0m\"}', '2017-12-24 04:46:41', '2017-12-24 04:46:41'),
(82, 1, 'admin/answers', 'GET', '127.0.0.1', '[]', '2017-12-24 04:46:41', '2017-12-24 04:46:41'),
(83, 1, 'admin/answers/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 04:46:45', '2017-12-24 04:46:45'),
(84, 1, 'admin/answers/1', 'PUT', '127.0.0.1', '{\"answer\":\"2\",\"question_id\":\"1\",\"is_correct\":[\"1\",null],\"_token\":\"b2qv288ZqRrSYAwEdwLce71RIszvmEEDhMf3DC0m\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/laravel-tests\\/admin\\/answers\"}', '2017-12-24 04:46:50', '2017-12-24 04:46:50'),
(85, 1, 'admin/answers', 'GET', '127.0.0.1', '[]', '2017-12-24 04:46:50', '2017-12-24 04:46:50'),
(86, 1, 'admin/answers/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 04:46:51', '2017-12-24 04:46:51'),
(87, 1, 'admin/answers/1', 'PUT', '127.0.0.1', '{\"answer\":\"2\",\"question_id\":\"1\",\"is_correct\":[\"1\",null],\"_token\":\"b2qv288ZqRrSYAwEdwLce71RIszvmEEDhMf3DC0m\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/laravel-tests\\/admin\\/answers\"}', '2017-12-24 04:47:14', '2017-12-24 04:47:14'),
(88, 1, 'admin/answers/1/edit', 'GET', '127.0.0.1', '[]', '2017-12-24 04:47:14', '2017-12-24 04:47:14'),
(89, 1, 'admin/answers/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 04:47:44', '2017-12-24 04:47:44'),
(90, 1, 'admin/answers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 04:47:47', '2017-12-24 04:47:47'),
(91, 1, 'admin/answers/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 04:47:51', '2017-12-24 04:47:51'),
(92, 1, 'admin/answers/1', 'PUT', '127.0.0.1', '{\"answer\":\"2\",\"question_id\":\"1\",\"is_correct\":[\"1\",null],\"_token\":\"b2qv288ZqRrSYAwEdwLce71RIszvmEEDhMf3DC0m\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/laravel-tests\\/admin\\/answers\"}', '2017-12-24 04:47:53', '2017-12-24 04:47:53'),
(93, 1, 'admin/answers/1/edit', 'GET', '127.0.0.1', '[]', '2017-12-24 04:47:54', '2017-12-24 04:47:54'),
(94, 1, 'admin/answers/1/edit', 'GET', '127.0.0.1', '[]', '2017-12-24 04:49:50', '2017-12-24 04:49:50'),
(95, 1, 'admin/answers/1/edit', 'GET', '127.0.0.1', '[]', '2017-12-24 04:50:10', '2017-12-24 04:50:10'),
(96, 1, 'admin/answers/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 04:51:09', '2017-12-24 04:51:09'),
(97, 1, 'admin/answers/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 04:51:10', '2017-12-24 04:51:10'),
(98, 1, 'admin/answers/1', 'PUT', '127.0.0.1', '{\"answer\":\"2\",\"question_id\":\"1\",\"is_correct\":[\"1\",null],\"_token\":\"b2qv288ZqRrSYAwEdwLce71RIszvmEEDhMf3DC0m\",\"_method\":\"PUT\"}', '2017-12-24 04:51:12', '2017-12-24 04:51:12'),
(99, 1, 'admin/answers/1', 'GET', '127.0.0.1', '[]', '2017-12-24 04:51:30', '2017-12-24 04:51:30'),
(100, 1, 'admin/answers/1/edit', 'GET', '127.0.0.1', '[]', '2017-12-24 04:51:36', '2017-12-24 04:51:36'),
(101, 1, 'admin/answers/1', 'PUT', '127.0.0.1', '{\"answer\":\"2\",\"question_id\":\"1\",\"is_correct\":[\"1\",null],\"_token\":\"b2qv288ZqRrSYAwEdwLce71RIszvmEEDhMf3DC0m\",\"_method\":\"PUT\"}', '2017-12-24 04:51:39', '2017-12-24 04:51:39'),
(102, 1, 'admin/answers/1', 'GET', '127.0.0.1', '[]', '2017-12-24 04:52:30', '2017-12-24 04:52:30'),
(103, 1, 'admin/answers/1', 'GET', '127.0.0.1', '[]', '2017-12-24 04:52:59', '2017-12-24 04:52:59'),
(104, 1, 'admin', 'GET', '127.0.0.1', '[]', '2017-12-24 04:53:10', '2017-12-24 04:53:10'),
(105, 1, 'admin/answers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 04:53:14', '2017-12-24 04:53:14'),
(106, 1, 'admin/answers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 04:53:14', '2017-12-24 04:53:14'),
(107, 1, 'admin/answers/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 04:53:27', '2017-12-24 04:53:27'),
(108, 1, 'admin/answers/1', 'PUT', '127.0.0.1', '{\"answer\":\"2\",\"question_id\":\"1\",\"is_correct\":[\"1\",null],\"_token\":\"b2qv288ZqRrSYAwEdwLce71RIszvmEEDhMf3DC0m\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/laravel-tests\\/admin\\/answers\"}', '2017-12-24 04:53:30', '2017-12-24 04:53:30'),
(109, 1, 'admin/answers/1', 'GET', '127.0.0.1', '[]', '2017-12-24 04:54:47', '2017-12-24 04:54:47'),
(110, 1, 'admin/answers/1/edit', 'GET', '127.0.0.1', '[]', '2017-12-24 04:54:54', '2017-12-24 04:54:54'),
(111, 1, 'admin/answers/1', 'PUT', '127.0.0.1', '{\"answer\":\"2\",\"question_id\":\"1\",\"is_correct\":\"1\",\"_token\":\"b2qv288ZqRrSYAwEdwLce71RIszvmEEDhMf3DC0m\",\"_method\":\"PUT\"}', '2017-12-24 04:54:58', '2017-12-24 04:54:58'),
(112, 1, 'admin/answers', 'GET', '127.0.0.1', '[]', '2017-12-24 04:54:58', '2017-12-24 04:54:58'),
(113, 1, 'admin/answers/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 04:55:00', '2017-12-24 04:55:00'),
(114, 1, 'admin/answers/1', 'PUT', '127.0.0.1', '{\"answer\":\"2\",\"question_id\":\"1\",\"is_correct\":\"0\",\"_token\":\"b2qv288ZqRrSYAwEdwLce71RIszvmEEDhMf3DC0m\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/laravel-tests\\/admin\\/answers\"}', '2017-12-24 04:55:03', '2017-12-24 04:55:03'),
(115, 1, 'admin/answers', 'GET', '127.0.0.1', '[]', '2017-12-24 04:55:03', '2017-12-24 04:55:03'),
(116, 1, 'admin', 'GET', '127.0.0.1', '[]', '2017-12-24 06:41:11', '2017-12-24 06:41:11'),
(117, 1, 'admin', 'GET', '127.0.0.1', '[]', '2017-12-24 07:26:08', '2017-12-24 07:26:08'),
(118, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 07:26:11', '2017-12-24 07:26:11'),
(119, 1, 'admin/answers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 07:26:15', '2017-12-24 07:26:15'),
(120, 1, 'admin/answers/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 07:26:18', '2017-12-24 07:26:18'),
(121, 1, 'admin/answers', 'POST', '127.0.0.1', '{\"answer\":\"5\",\"question_id\":\"1\",\"is_correct\":\"0\",\"_token\":\"t3ajGGCcOLrahnaBhlUlmfKIJxn0kg3noviLSIId\",\"_previous_\":\"http:\\/\\/laravel-tests\\/admin\\/answers\"}', '2017-12-24 07:26:24', '2017-12-24 07:26:24'),
(122, 1, 'admin/answers', 'GET', '127.0.0.1', '[]', '2017-12-24 07:26:24', '2017-12-24 07:26:24'),
(123, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 07:26:29', '2017-12-24 07:26:29'),
(124, 1, 'admin', 'GET', '127.0.0.1', '[]', '2017-12-24 08:46:53', '2017-12-24 08:46:53'),
(125, 1, 'admin/questions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 08:46:57', '2017-12-24 08:46:57'),
(126, 1, 'admin/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 08:46:59', '2017-12-24 08:46:59'),
(127, 1, 'admin/questions', 'POST', '127.0.0.1', '{\"question\":\"\\u0421\\u043a\\u043e\\u043b\\u044c\\u043a\\u043e \\u0431\\u0443\\u0434\\u0435\\u0442 2 + 3?\",\"test_id\":\"1\",\"_token\":\"t3ajGGCcOLrahnaBhlUlmfKIJxn0kg3noviLSIId\",\"_previous_\":\"http:\\/\\/laravel-tests\\/admin\\/questions\"}', '2017-12-24 08:47:17', '2017-12-24 08:47:17'),
(128, 1, 'admin/questions', 'GET', '127.0.0.1', '[]', '2017-12-24 08:47:17', '2017-12-24 08:47:17'),
(129, 1, 'admin/answers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 08:47:20', '2017-12-24 08:47:20'),
(130, 1, 'admin/answers/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 08:47:22', '2017-12-24 08:47:22'),
(131, 1, 'admin/answers', 'POST', '127.0.0.1', '{\"answer\":\"5\",\"question_id\":\"2\",\"is_correct\":\"1\",\"_token\":\"t3ajGGCcOLrahnaBhlUlmfKIJxn0kg3noviLSIId\",\"_previous_\":\"http:\\/\\/laravel-tests\\/admin\\/answers\"}', '2017-12-24 08:47:41', '2017-12-24 08:47:41'),
(132, 1, 'admin/answers', 'GET', '127.0.0.1', '[]', '2017-12-24 08:47:41', '2017-12-24 08:47:41'),
(133, 1, 'admin/answers/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 08:47:44', '2017-12-24 08:47:44'),
(134, 1, 'admin/answers', 'POST', '127.0.0.1', '{\"answer\":\"87\",\"question_id\":\"2\",\"is_correct\":\"0\",\"_token\":\"t3ajGGCcOLrahnaBhlUlmfKIJxn0kg3noviLSIId\",\"_previous_\":\"http:\\/\\/laravel-tests\\/admin\\/answers\"}', '2017-12-24 08:47:52', '2017-12-24 08:47:52'),
(135, 1, 'admin/answers', 'GET', '127.0.0.1', '[]', '2017-12-24 08:47:52', '2017-12-24 08:47:52'),
(136, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 08:48:12', '2017-12-24 08:48:12'),
(137, 1, 'admin', 'GET', '127.0.0.1', '[]', '2017-12-24 09:04:15', '2017-12-24 09:04:15'),
(138, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 09:04:17', '2017-12-24 09:04:17'),
(139, 1, 'admin/answers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 09:04:23', '2017-12-24 09:04:23'),
(140, 1, 'admin/answers/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 09:04:27', '2017-12-24 09:04:27'),
(141, 1, 'admin/answers/1', 'PUT', '127.0.0.1', '{\"answer\":\"2\",\"question_id\":\"1\",\"is_correct\":\"1\",\"_token\":\"M9Anbv1yVOCK06JTjyIG45m4DKGAe5IRbHQMTWmK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/laravel-tests\\/admin\\/answers\"}', '2017-12-24 09:04:35', '2017-12-24 09:04:35'),
(142, 1, 'admin/answers', 'GET', '127.0.0.1', '[]', '2017-12-24 09:04:35', '2017-12-24 09:04:35'),
(143, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 09:04:40', '2017-12-24 09:04:40'),
(144, 1, 'admin', 'GET', '127.0.0.1', '[]', '2017-12-24 09:11:06', '2017-12-24 09:11:06'),
(145, 1, 'admin/results', 'GET', '127.0.0.1', '[]', '2017-12-24 09:11:12', '2017-12-24 09:11:12'),
(146, 1, 'admin/results', 'GET', '127.0.0.1', '[]', '2017-12-24 09:11:34', '2017-12-24 09:11:34'),
(147, 1, 'admin/results', 'GET', '127.0.0.1', '[]', '2017-12-24 09:11:51', '2017-12-24 09:11:51'),
(148, 1, 'admin/results', 'GET', '127.0.0.1', '[]', '2017-12-24 09:14:08', '2017-12-24 09:14:08'),
(149, 1, 'admin/results', 'GET', '127.0.0.1', '[]', '2017-12-24 09:14:32', '2017-12-24 09:14:32'),
(150, 1, 'admin/results', 'GET', '127.0.0.1', '[]', '2017-12-24 09:15:24', '2017-12-24 09:15:24'),
(151, 1, 'admin/results', 'GET', '127.0.0.1', '[]', '2017-12-24 09:16:53', '2017-12-24 09:16:53'),
(152, 1, 'admin/lectures', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 09:16:59', '2017-12-24 09:16:59'),
(153, 1, 'admin/tests', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 09:17:04', '2017-12-24 09:17:04'),
(154, 1, 'admin/tests', 'GET', '127.0.0.1', '[]', '2017-12-24 09:17:47', '2017-12-24 09:17:47'),
(155, 1, 'admin/tests', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 09:17:50', '2017-12-24 09:17:50'),
(156, 1, 'admin/questions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 09:17:53', '2017-12-24 09:17:53'),
(157, 1, 'admin/questions', 'GET', '127.0.0.1', '[]', '2017-12-24 09:19:17', '2017-12-24 09:19:17'),
(158, 1, 'admin/answers', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 09:19:23', '2017-12-24 09:19:23'),
(159, 1, 'admin/answers', 'GET', '127.0.0.1', '[]', '2017-12-24 09:19:45', '2017-12-24 09:19:45'),
(160, 1, 'admin/answers', 'GET', '127.0.0.1', '[]', '2017-12-24 09:20:09', '2017-12-24 09:20:09'),
(161, 1, 'admin/results', 'GET', '127.0.0.1', '[]', '2017-12-24 09:20:19', '2017-12-24 09:20:19'),
(162, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2017-12-24 09:23:45', '2017-12-24 09:23:45');

-- --------------------------------------------------------

--
-- Структура таблицы `answers`
--

CREATE TABLE `answers` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_correct` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `answers`
--

INSERT INTO `answers` (`id`, `question_id`, `answer`, `created_at`, `updated_at`, `is_correct`) VALUES
(1, 1, '2', '2017-12-24 04:46:41', '2017-12-24 09:04:35', 1),
(2, 1, '5', '2017-12-24 07:26:24', '2017-12-24 07:26:24', 0),
(3, 2, '5', '2017-12-24 08:47:41', '2017-12-24 08:47:41', 1),
(4, 2, '87', '2017-12-24 08:47:52', '2017-12-24 08:47:52', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `lectures`
--

CREATE TABLE `lectures` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube_video` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `lectures`
--

INSERT INTO `lectures` (`id`, `title`, `youtube_video`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Лекция по математике', 'https://www.youtube.com/embed/zIYfYT5THDY', 'Лекция по математике', '2017-12-24 04:25:16', '2017-12-24 04:25:16');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_01_04_173148_create_admin_tables', 1),
(2, '2017_12_19_070757_create_lectures_table', 1),
(3, '2017_12_19_071556_create_tests_table', 1),
(4, '2017_12_19_071930_create_questions_table', 1),
(5, '2017_12_19_072001_create_answers_table', 1),
(6, '2017_12_23_114256_add_description_to_tests_add_is_correct_to_answers', 1),
(7, '2017_12_24_091618_add_default_role_for_user', 2),
(8, '2017_12_24_093421_add_email_to_user', 3),
(9, '2017_12_24_103043_add_default_value_to_is_correct', 4),
(10, '2017_12_24_104534_add_is_correct_to_answers', 5),
(11, '2017_12_24_133025_create_user_tests_result', 6),
(12, '2017_12_24_133540_create_results_table', 7);

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `test_id` int(11) NOT NULL,
  `question` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `questions`
--

INSERT INTO `questions` (`id`, `test_id`, `question`, `created_at`, `updated_at`) VALUES
(1, 1, 'Сколько будет 1 + 1', '2017-12-24 04:29:54', '2017-12-24 04:29:54'),
(2, 1, 'Сколько будет 2 + 3?', '2017-12-24 08:47:17', '2017-12-24 08:47:17');

-- --------------------------------------------------------

--
-- Структура таблицы `results`
--

CREATE TABLE `results` (
  `id` int(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer_id` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `results`
--

INSERT INTO `results` (`id`, `user_id`, `question_id`, `answer_id`, `test_id`, `created_at`, `updated_at`) VALUES
(7, 2, 1, 2, 1, '2017-12-24 09:04:58', '2017-12-24 09:05:07'),
(8, 2, 2, 3, 1, '2017-12-24 09:04:59', '2017-12-24 09:05:08');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2017-12-24 03:13:06', '2017-12-24 03:13:06'),
(2, 'User', 'user', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `role_menu`
--

CREATE TABLE `role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `role_menu`
--

INSERT INTO `role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL),
(1, 8, NULL, NULL),
(1, 9, NULL, NULL),
(1, 10, NULL, NULL),
(1, 11, NULL, NULL),
(1, 12, NULL, NULL),
(1, 13, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `role_permissions`
--

CREATE TABLE `role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `role_permissions`
--

INSERT INTO `role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `role_users`
--

CREATE TABLE `role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `role_users`
--

INSERT INTO `role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(2, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `tests`
--

CREATE TABLE `tests` (
  `id` int(10) UNSIGNED NOT NULL,
  `lecture_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tests`
--

INSERT INTO `tests` (`id`, `lecture_id`, `title`, `created_at`, `updated_at`, `description`) VALUES
(1, 1, 'Тест 1 по математике', '2017-12-24 04:29:17', '2017-12-24 04:29:17', 'Тест по математике, часть 1');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$kbkIOBmB2Nb5PyYptd1GO.yHS04K8of2M8l0.ZghETnPXa4FKNsky', 'Administrator', NULL, 'Z3c43b7QKvjzyATy5CGwH7r3reL1hpmqN0pcCAOi44DmbXQqHddTJDdxijHo', '2017-12-24 03:13:05', '2017-12-24 03:13:05'),
(2, 'wfwdave@gmail.com', '$2y$10$LhUOddstnCljsfDHdw4/h.iFdZGbZ7nuiCmbTy/2nCidcMSE1rnjS', 'Иван Мосягин', NULL, 'Go3RJ2wT2mbsdJOskeslko2lYJMhCDk75ae8UFmH2WuNVeIQGXHBdTindjMl', '2017-12-24 03:44:02', '2017-12-24 03:44:02');

-- --------------------------------------------------------

--
-- Структура таблицы `user_permissions`
--

CREATE TABLE `user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Индексы таблицы `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `lectures`
--
ALTER TABLE `lectures`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Индексы таблицы `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Индексы таблицы `role_menu`
--
ALTER TABLE `role_menu`
  ADD KEY `role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Индексы таблицы `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD KEY `role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Индексы таблицы `role_users`
--
ALTER TABLE `role_users`
  ADD KEY `role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Индексы таблицы `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Индексы таблицы `user_permissions`
--
ALTER TABLE `user_permissions`
  ADD KEY `user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;
--
-- AUTO_INCREMENT для таблицы `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `lectures`
--
ALTER TABLE `lectures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `results`
--
ALTER TABLE `results`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
