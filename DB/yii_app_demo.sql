-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Nov 25, 2017 at 02:02 PM
-- Server version: 10.0.31-MariaDB-0ubuntu0.16.04.2
-- PHP Version: 5.6.31-4+ubuntu14.04.1+deb.sury.org+4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yii_app_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('normal', '3', 1508695653),
('su', '1', 1508695630),
('sysadmin', '1', 1508695630),
('user', '3', 1508695653);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('/*', 2, NULL, NULL, NULL, 1508695800, 1508695800),
('/admin/*', 2, NULL, NULL, NULL, 1508695799, 1508695799),
('/admin/assignment/*', 2, NULL, NULL, NULL, 1508695797, 1508695797),
('/admin/assignment/assign', 2, NULL, NULL, NULL, 1508695797, 1508695797),
('/admin/assignment/index', 2, NULL, NULL, NULL, 1508695797, 1508695797),
('/admin/assignment/revoke', 2, NULL, NULL, NULL, 1508695797, 1508695797),
('/admin/assignment/view', 2, NULL, NULL, NULL, 1508695797, 1508695797),
('/admin/default/*', 2, NULL, NULL, NULL, 1508695797, 1508695797),
('/admin/default/index', 2, NULL, NULL, NULL, 1508695797, 1508695797),
('/admin/menu/*', 2, NULL, NULL, NULL, 1508695798, 1508695798),
('/admin/menu/create', 2, NULL, NULL, NULL, 1508695798, 1508695798),
('/admin/menu/delete', 2, NULL, NULL, NULL, 1508695798, 1508695798),
('/admin/menu/index', 2, NULL, NULL, NULL, 1508695797, 1508695797),
('/admin/menu/update', 2, NULL, NULL, NULL, 1508695798, 1508695798),
('/admin/menu/view', 2, NULL, NULL, NULL, 1508695798, 1508695798),
('/admin/permission/*', 2, NULL, NULL, NULL, 1508695798, 1508695798),
('/admin/permission/assign', 2, NULL, NULL, NULL, 1508695798, 1508695798),
('/admin/permission/create', 2, NULL, NULL, NULL, 1508695798, 1508695798),
('/admin/permission/delete', 2, NULL, NULL, NULL, 1508695798, 1508695798),
('/admin/permission/index', 2, NULL, NULL, NULL, 1508695798, 1508695798),
('/admin/permission/remove', 2, NULL, NULL, NULL, 1508695798, 1508695798),
('/admin/permission/update', 2, NULL, NULL, NULL, 1508695798, 1508695798),
('/admin/permission/view', 2, NULL, NULL, NULL, 1508695798, 1508695798),
('/admin/role/*', 2, NULL, NULL, NULL, 1508695798, 1508695798),
('/admin/role/assign', 2, NULL, NULL, NULL, 1508695798, 1508695798),
('/admin/role/create', 2, NULL, NULL, NULL, 1508695798, 1508695798),
('/admin/role/delete', 2, NULL, NULL, NULL, 1508695798, 1508695798),
('/admin/role/index', 2, NULL, NULL, NULL, 1508695798, 1508695798),
('/admin/role/remove', 2, NULL, NULL, NULL, 1508695798, 1508695798),
('/admin/role/update', 2, NULL, NULL, NULL, 1508695798, 1508695798),
('/admin/role/view', 2, NULL, NULL, NULL, 1508695798, 1508695798),
('/admin/route/*', 2, NULL, NULL, NULL, 1508695798, 1508695798),
('/admin/route/assign', 2, NULL, NULL, NULL, 1508695798, 1508695798),
('/admin/route/create', 2, NULL, NULL, NULL, 1508695798, 1508695798),
('/admin/route/index', 2, NULL, NULL, NULL, 1508695798, 1508695798),
('/admin/route/refresh', 2, NULL, NULL, NULL, 1508695798, 1508695798),
('/admin/route/remove', 2, NULL, NULL, NULL, 1508695798, 1508695798),
('/admin/rule/*', 2, NULL, NULL, NULL, 1508695799, 1508695799),
('/admin/rule/create', 2, NULL, NULL, NULL, 1508695799, 1508695799),
('/admin/rule/delete', 2, NULL, NULL, NULL, 1508695799, 1508695799),
('/admin/rule/index', 2, NULL, NULL, NULL, 1508695798, 1508695798),
('/admin/rule/update', 2, NULL, NULL, NULL, 1508695799, 1508695799),
('/admin/rule/view', 2, NULL, NULL, NULL, 1508695798, 1508695798),
('/admin/user/*', 2, NULL, NULL, NULL, 1508695799, 1508695799),
('/admin/user/activate', 2, NULL, NULL, NULL, 1508695799, 1508695799),
('/admin/user/change-password', 2, NULL, NULL, NULL, 1508695799, 1508695799),
('/admin/user/delete', 2, NULL, NULL, NULL, 1508695799, 1508695799),
('/admin/user/index', 2, NULL, NULL, NULL, 1508695799, 1508695799),
('/admin/user/login', 2, NULL, NULL, NULL, 1508695799, 1508695799),
('/admin/user/logout', 2, NULL, NULL, NULL, 1508695799, 1508695799),
('/admin/user/request-password-reset', 2, NULL, NULL, NULL, 1508695799, 1508695799),
('/admin/user/reset-password', 2, NULL, NULL, NULL, 1508695799, 1508695799),
('/admin/user/signup', 2, NULL, NULL, NULL, 1508695799, 1508695799),
('/admin/user/view', 2, NULL, NULL, NULL, 1508695799, 1508695799),
('/debug/*', 2, NULL, NULL, NULL, 1508695800, 1508695800),
('/debug/default/*', 2, NULL, NULL, NULL, 1508695800, 1508695800),
('/debug/default/db-explain', 2, NULL, NULL, NULL, 1508695799, 1508695799),
('/debug/default/download-mail', 2, NULL, NULL, NULL, 1508695799, 1508695799),
('/debug/default/index', 2, NULL, NULL, NULL, 1508695799, 1508695799),
('/debug/default/toolbar', 2, NULL, NULL, NULL, 1508695799, 1508695799),
('/debug/default/view', 2, NULL, NULL, NULL, 1508695799, 1508695799),
('/debug/user/*', 2, NULL, NULL, NULL, 1508695800, 1508695800),
('/debug/user/reset-identity', 2, NULL, NULL, NULL, 1508695800, 1508695800),
('/debug/user/set-identity', 2, NULL, NULL, NULL, 1508695800, 1508695800),
('/gii/*', 2, NULL, NULL, NULL, 1508695800, 1508695800),
('/gii/default/*', 2, NULL, NULL, NULL, 1508695800, 1508695800),
('/gii/default/action', 2, NULL, NULL, NULL, 1508695800, 1508695800),
('/gii/default/diff', 2, NULL, NULL, NULL, 1508695800, 1508695800),
('/gii/default/index', 2, NULL, NULL, NULL, 1508695800, 1508695800),
('/gii/default/preview', 2, NULL, NULL, NULL, 1508695800, 1508695800),
('/gii/default/view', 2, NULL, NULL, NULL, 1508695800, 1508695800),
('/site/*', 2, NULL, NULL, NULL, 1508695800, 1508695800),
('/site/error', 2, NULL, NULL, NULL, 1508695800, 1508695800),
('/site/index', 2, NULL, NULL, NULL, 1508695800, 1508695800),
('/site/login', 2, NULL, NULL, NULL, 1508695800, 1508695800),
('/site/logout', 2, NULL, NULL, NULL, 1508695800, 1508695800),
('normal', 1, 'normal user', NULL, NULL, 1508695602, 1508695602),
('su', 1, 'super user', NULL, NULL, 1508695571, 1508695571),
('sysadmin', 2, 'Can do anything in the application.', NULL, NULL, 1508695112, 1508695112),
('user', 2, 'Can do what a restricted user can do', NULL, NULL, 1508695145, 1508695145);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('normal', '/site/*'),
('normal', 'user'),
('su', '/*'),
('su', 'sysadmin'),
('sysadmin', '/*'),
('user', '/site/*');

-- --------------------------------------------------------

--
-- Table structure for table `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `parent`, `route`, `order`, `data`) VALUES
(2, 'menu', NULL, '/admin/menu/index', NULL, NULL),
(3, 'new assignment', NULL, '/admin/assignment/index', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1508680733),
('m140506_102106_rbac_init', 1508684547),
('m140602_111327_create_menu_table', 1508680739),
('m160312_050000_create_user', 1508680740);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'sysadmin', 'SKhdg8p1RHZO4j2WHyZD64NjjR70FpBO', '$2y$13$K8WajtMnR2/1S/3abj2l9ewz9cWQTyUrWQVwFE6FTncrDtL.PBCia', NULL, 'sysadmin@yii2-app.com', 10, 1508680945, 1508680945),
(2, 'shashank', 'AR3yWLJkVNX1ztzNbi3nMUdvfGrlrOSu', '$2y$13$2HgN58BC04c3s1a0aQ1tPeAMvY3morlmcdinv98bw.tVUFF6DLeZK', NULL, 'meet.shashank007@gmail.com', 10, 1508680989, 1508680989),
(3, 'user', '1vdfMk9VV1PnnPX-YFZT80-1WZ8WzFsJ', '$2y$13$.y2ZWLWFzXJyreQUNw0meOZm3mnyNqsPTaDZLHqD94vsYX9egjiBi', NULL, 'user@yii2-app.com', 10, 1508681015, 1508681015);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`);

--
-- Indexes for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`);

--
-- Indexes for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Indexes for table `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent` (`parent`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
