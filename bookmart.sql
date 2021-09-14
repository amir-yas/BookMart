-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2021 at 02:21 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookmart`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'Seller');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(5, 1, 25),
(6, 1, 26),
(7, 1, 27),
(8, 1, 28),
(1, 1, 33),
(2, 1, 34),
(3, 1, 35),
(4, 1, 36);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add category', 7, 'add_category'),
(26, 'Can change category', 7, 'change_category'),
(27, 'Can delete category', 7, 'delete_category'),
(28, 'Can view category', 7, 'view_category'),
(29, 'Can add order', 8, 'add_orders'),
(30, 'Can change order', 8, 'change_orders'),
(31, 'Can delete order', 8, 'delete_orders'),
(32, 'Can view order', 8, 'view_orders'),
(33, 'Can add product', 9, 'add_product'),
(34, 'Can change product', 9, 'change_product'),
(35, 'Can delete product', 9, 'delete_product'),
(36, 'Can view product', 9, 'view_product'),
(37, 'Can add Seller', 10, 'add_seller'),
(38, 'Can change Seller', 10, 'change_seller'),
(39, 'Can delete Seller', 10, 'delete_seller'),
(40, 'Can view Seller', 10, 'view_seller');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$HutAwpmgcB6qFgACbKahwP$hqsjo0EFJdX1Fzfr1RRklM7OFaykwJP7k7wlqSH0e7A=', '2021-09-14 11:41:39.390747', 1, 'amir', '', '', '', 1, 1, '2021-09-13 09:41:31.661472'),
(2, 'pbkdf2_sha256$260000$jlaA4E8WjvY8kPD6ZaUIC4$RrvJ8sJjtkdt7ARYNGnpazyFBG9PvTiueeBvZ4jRozU=', '2021-09-14 11:38:28.761068', 0, 'book_seller', 'Book', 'Seller', '', 1, 1, '2021-09-13 10:23:20.000000'),
(3, 'pbkdf2_sha256$260000$6dv3yuxhi8LlffbNaCL1v0$qBLvgzZmS0Ww7y56rvGVsgyGtGbIGBQep1ph1jQ7io8=', '2021-09-13 10:36:58.992879', 0, '8765', 'bbb', 'ac', 'abc@gmail.com', 0, 1, '2021-09-13 10:36:41.703865'),
(4, 'pbkdf2_sha256$260000$AtU3Xz2X50y7wmBnIi6i5T$EuuSBuy+Iz6/28BpUesV+ytiKteVtUy9Ur939RjUCy4=', '2021-09-14 11:39:36.284938', 0, 'seller2', '', '', '', 1, 1, '2021-09-14 10:04:12.000000'),
(5, 'pbkdf2_sha256$260000$TEY73KZ4WOVjgapOlnF5hT$iGX0K/egKlyvU3cpZqFyRTNVCNseygcvF/cHoAwOlUk=', '2021-09-14 11:17:41.592258', 0, '8520', 'User', '1', 'user@mail.com', 0, 1, '2021-09-14 10:34:55.826747');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 2, 1),
(2, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-09-13 09:55:58.849255', '1', 'Biography', 1, '[{\"added\": {}}]', 7, 1),
(2, '2021-09-13 09:59:57.102201', '1', 'sadsa', 1, '[{\"added\": {}}]', 9, 1),
(3, '2021-09-13 10:16:41.606831', '1', 'Seller', 1, '[{\"added\": {}}]', 3, 1),
(4, '2021-09-13 10:23:21.205169', '2', 'book_seller', 1, '[{\"added\": {}}]', 4, 1),
(5, '2021-09-13 10:23:48.224247', '2', 'book_seller', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Staff status\", \"Groups\"]}}]', 4, 1),
(6, '2021-09-13 10:52:07.395563', '1', 'sadsa', 3, '', 9, 1),
(7, '2021-09-13 10:56:04.817905', '2', 'Color Block Men Round Neck', 1, '[{\"added\": {}}]', 9, 2),
(8, '2021-09-13 11:05:44.319538', '1', 'Book Seller', 1, '[{\"added\": {}}]', 10, 1),
(9, '2021-09-14 09:46:32.533846', '1', 'Book Seller', 1, '[{\"added\": {}}]', 10, 1),
(10, '2021-09-14 09:50:42.678649', '3', 'T-Shirt', 1, '[{\"added\": {}}]', 9, 2),
(11, '2021-09-14 09:52:09.592923', '4', 'Men Maroon Printed Round Neck', 1, '[{\"added\": {}}]', 9, 2),
(12, '2021-09-14 10:02:59.112895', '5', 'Men Blue Body Skinny Fit Mid-Rise Clean Look Stretchable Jeans', 1, '[{\"added\": {}}]', 9, 2),
(13, '2021-09-14 10:04:13.232202', '4', 'seller2', 1, '[{\"added\": {}}]', 4, 1),
(14, '2021-09-14 10:04:31.633129', '2', 'Seller2', 1, '[{\"added\": {}}]', 10, 1),
(15, '2021-09-14 10:05:24.626909', '4', 'seller2', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"Groups\"]}}]', 4, 1),
(16, '2021-09-14 10:20:49.595798', '6', 'Men Maroon Printed Round Neck', 1, '[{\"added\": {}}]', 9, 4),
(17, '2021-09-14 10:23:31.727072', '7', 'new', 1, '[{\"added\": {}}]', 9, 4),
(18, '2021-09-14 10:25:03.904664', '8', 'ner', 1, '[{\"added\": {}}]', 9, 4),
(19, '2021-09-14 11:20:06.136945', '6', 'Men Maroon Printed Round Neck', 3, '', 9, 1),
(20, '2021-09-14 11:23:26.385325', '2', 'Crime', 1, '[{\"added\": {}}]', 7, 1),
(21, '2021-09-14 11:23:37.917754', '3', 'Sports', 1, '[{\"added\": {}}]', 7, 1),
(22, '2021-09-14 11:24:36.284819', '8', 'ner', 2, '[{\"changed\": {\"fields\": [\"Product category\"]}}]', 9, 1),
(23, '2021-09-14 11:37:25.955578', '8', 'ner', 3, '', 9, 1),
(24, '2021-09-14 11:37:26.072661', '5', 'Men Blue Body Skinny Fit Mid-Rise Clean Look Stretchable Jeans', 3, '', 9, 1),
(25, '2021-09-14 11:37:26.139712', '4', 'Men Maroon Printed Round Neck', 3, '', 9, 1),
(26, '2021-09-14 11:37:26.239782', '3', 'T-Shirt', 3, '', 9, 1),
(27, '2021-09-14 11:38:43.194115', '9', 'After You', 1, '[{\"added\": {}}]', 9, 2),
(28, '2021-09-14 11:39:07.686586', '10', 'Big Magic', 1, '[{\"added\": {}}]', 9, 2),
(29, '2021-09-14 11:39:54.255614', '11', 'A Tale for the Time Being', 1, '[{\"added\": {}}]', 9, 4),
(30, '2021-09-14 11:40:18.750820', '12', 'The Great Gatsby', 1, '[{\"added\": {}}]', 9, 4),
(31, '2021-09-14 11:52:48.735800', '1', 'Book Seller', 2, '[{\"changed\": {\"fields\": [\"Seller images\"]}}]', 10, 1),
(32, '2021-09-14 11:53:17.209453', '2', 'Seller2', 2, '[{\"changed\": {\"fields\": [\"Seller images\"]}}]', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_categories`
--

CREATE TABLE `django_categories` (
  `id` bigint(20) NOT NULL,
  `cat_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_categories`
--

INSERT INTO `django_categories` (`id`, `cat_name`) VALUES
(1, 'Biography'),
(2, 'Crime'),
(3, 'Sports');

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'bookmart_app', 'category'),
(8, 'bookmart_app', 'orders'),
(9, 'bookmart_app', 'product'),
(10, 'bookmart_app', 'seller'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-09-13 09:39:17.571878'),
(2, 'auth', '0001_initial', '2021-09-13 09:39:31.817179'),
(3, 'admin', '0001_initial', '2021-09-13 09:39:35.516891'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-09-13 09:39:35.575923'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-09-13 09:39:35.650974'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-09-13 09:39:36.863888'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-09-13 09:39:38.430072'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-09-13 09:39:38.690258'),
(9, 'auth', '0004_alter_user_username_opts', '2021-09-13 09:39:38.757312'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-09-13 09:39:40.193406'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-09-13 09:39:40.261458'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-09-13 09:39:40.309506'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-09-13 09:39:40.580688'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-09-13 09:39:40.935962'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-09-13 09:39:41.157111'),
(16, 'auth', '0011_update_proxy_permissions', '2021-09-13 09:39:41.234145'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-09-13 09:39:41.838606'),
(18, 'bookmart_app', '0001_initial', '2021-09-13 09:39:45.379208'),
(19, 'sessions', '0001_initial', '2021-09-13 09:39:46.702175'),
(20, 'bookmart_app', '0002_product_product_added_by', '2021-09-13 10:53:18.087791'),
(21, 'bookmart_app', '0002_alter_product_product_added_by', '2021-09-14 09:52:53.947842'),
(22, 'bookmart_app', '0003_rename_product_added_by_product_product_added_by_seller', '2021-09-14 09:59:48.651314'),
(23, 'bookmart_app', '0004_product_total_product_sold', '2021-09-14 10:28:35.218403'),
(24, 'bookmart_app', '0005_alter_seller_seller_images', '2021-09-14 10:37:29.717863'),
(25, 'bookmart_app', '0006_alter_product_product_name', '2021-09-14 11:20:18.020834');

-- --------------------------------------------------------

--
-- Table structure for table `django_orders`
--

CREATE TABLE `django_orders` (
  `order_id` int(11) NOT NULL,
  `item_json` longtext NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `city` varchar(50) NOT NULL,
  `zipcode` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_orders`
--

INSERT INTO `django_orders` (`order_id`, `item_json`, `name`, `address`, `city`, `zipcode`) VALUES
(1, '{\"null\":[2,\"HRX by Hrithik Roshan\",\"389\"]}', 'Abc', 'Mau', 'Mau', '275101'),
(2, '{\"null\":[1,\"T-Shirt\",\"\"]}', 'Abc', 'Mau', 'Mau', '275101'),
(3, '{\"null\":[1,\"T-Shirt\",\"\"]}', 'Seller', 'Mau', 'Mau', '275101'),
(4, '{\"null\":[1,\"T-Shirt\",\"\"]}', 'Seller', 'Mau', 'Mau', '275101'),
(5, '{\"null\":[1,\"T-Shirt\",\"\"]}', 'Seller', 'Mau', 'Mau', '275101'),
(6, '{\"null\":[1,\"T-Shirt\",\"\"]}', 'Seller', 'Mau', 'Mau', '275101'),
(7, '{\"null\":[1,\"T-Shirt\",\"\"]}', 'Seller', 'Mau', 'Mau', '275101'),
(8, '{\"null\":[1,\"T-Shirt\",\"\"]}', 'Seller', 'Mau', 'Mau', '275101'),
(9, '{\"null\":[1,\"T-Shirt\",\"\"]}', 'Seller', 'Mau', 'Mau', '275101'),
(10, '{\"null\":[1,\"T-Shirt\",\"\"]}', 'Seller', 'Mau', 'Mau', '275101'),
(11, '{\"null\":[1,\"T-Shirt\",\"\"]}', 'Seller', 'Mau', 'Mau', '275101'),
(12, '{\"null\":[1,\"T-Shirt\",\"\"]}', 'Seller', 'Mau', 'Mau', '275101'),
(13, '{\"null\":[1,\"Men Maroon Printed Round Neck\",\"\"]}', 'Abc', 'Mau', 'Mau', '275101'),
(14, '{\"null\":[4,\"T-Shirt\",\"389\"]}', 'Abc', 'Mau', 'Mau', '275101');

-- --------------------------------------------------------

--
-- Table structure for table `django_products`
--

CREATE TABLE `django_products` (
  `id` bigint(20) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_desc` varchar(150) DEFAULT NULL,
  `product_dimension` varchar(25) DEFAULT NULL,
  `product_price` varchar(15) NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_add_date` datetime(6) NOT NULL,
  `product_category_id` bigint(20) NOT NULL,
  `product_added_by_seller_id` bigint(20) NOT NULL,
  `total_product_sold` int(10) UNSIGNED NOT NULL CHECK (`total_product_sold` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_products`
--

INSERT INTO `django_products` (`id`, `product_name`, `product_desc`, `product_dimension`, `product_price`, `product_image`, `product_add_date`, `product_category_id`, `product_added_by_seller_id`, `total_product_sold`) VALUES
(9, 'After You', NULL, NULL, '99', 'images/718ReYbwlFL.jpg', '2021-09-14 11:38:43.120044', 2, 1, 0),
(10, 'Big Magic', NULL, NULL, '389', 'images/91JxVjINNsL.jpg', '2021-09-14 11:39:07.569513', 3, 1, 0),
(11, 'A Tale for the Time Being', NULL, NULL, '677', 'images/9129dzchsGL.jpg', '2021-09-14 11:39:54.165551', 1, 2, 0),
(12, 'The Great Gatsby', NULL, NULL, '999', 'images/81djg0KWthS.jpg', '2021-09-14 11:40:18.706770', 2, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `django_sellers`
--

CREATE TABLE `django_sellers` (
  `id` bigint(20) NOT NULL,
  `seller_name` varchar(25) NOT NULL,
  `seller_images` varchar(100) NOT NULL,
  `seller_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_sellers`
--

INSERT INTO `django_sellers` (`id`, `seller_name`, `seller_images`, `seller_user_id`) VALUES
(1, 'Book Seller', 'seller_images/Dickens_Gurney_head.jpg', 2),
(2, 'Seller2', 'seller_images/WS.jpg', 4);

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('04e26mkw4j7m39q3p4yotw7zs0cyed21', '.eJxVjEEOwiAQRe_C2hBKYQCX7j0DGZipVA1NSrsy3l1JutDNX_z38l4i4r6VuDde40ziLAZx-v0S5gfXDuiO9bbIvNRtnZPsijxok9eF-Hk53L9AwVZ61ifIELw1NqlpdEYDgMaRKSTnDSApwsCJrXZemWEi7UNwmANl-q54fwDMHDfv:1mQ6ol:AUqa1LNVNlwKBktsaFAsQbhS24GTbHacR-TtafMyn3I', '2021-09-28 11:41:39.684994');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_categories`
--
ALTER TABLE `django_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_orders`
--
ALTER TABLE `django_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `django_products`
--
ALTER TABLE `django_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_products_product_name_bfa73109_uniq` (`product_name`),
  ADD KEY `django_products_product_category_id_885fc028_fk_django_ca` (`product_category_id`),
  ADD KEY `django_products_product_added_by_id_01eb246f_fk_auth_user_id` (`product_added_by_seller_id`);

--
-- Indexes for table `django_sellers`
--
ALTER TABLE `django_sellers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `django_categories`
--
ALTER TABLE `django_categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `django_orders`
--
ALTER TABLE `django_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_products`
--
ALTER TABLE `django_products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_sellers`
--
ALTER TABLE `django_sellers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_products`
--
ALTER TABLE `django_products`
  ADD CONSTRAINT `django_products_product_category_id_885fc028_fk_django_ca` FOREIGN KEY (`product_category_id`) REFERENCES `django_categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
