-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2021 at 12:27 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `archive_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` smallint(6) NOT NULL COMMENT 'Primary key ',
  `title` varchar(256) NOT NULL COMMENT 'Judul berita',
  `description` text NOT NULL COMMENT 'Isi Berita',
  `category_id` tinyint(4) NOT NULL COMMENT 'kategori berita',
  `status_id` tinyint(4) NOT NULL COMMENT 'status berita',
  `create_dtm` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'tgl dibuatnya berita',
  `update_dtm` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp() COMMENT 'tgl berita diupdate maupun diedit'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabel data berita';

-- --------------------------------------------------------

--
-- Table structure for table `news_category`
--

CREATE TABLE `news_category` (
  `id` tinyint(4) NOT NULL COMMENT 'Primary key untuk news_category',
  `name` varchar(32) NOT NULL COMMENT 'Deskripsi kategori berita'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabel untuk detail kategori berita';

--
-- Dumping data for table `news_category`
--

INSERT INTO `news_category` (`id`, `name`) VALUES
(1, 'Siaran Berita'),
(2, 'Advertorial');

-- --------------------------------------------------------

--
-- Table structure for table `news_detail`
--

CREATE TABLE `news_detail` (
  `news_id` smallint(6) NOT NULL COMMENT 'FK primary key tabel news_id',
  `user_act_id` tinyint(4) NOT NULL COMMENT 'FK primary key user_act',
  `views` smallint(6) NOT NULL COMMENT 'jumlah views berita',
  `thumbnail` text NOT NULL COMMENT 'thumbnail berita, url gambar pada server'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabel detail berita';

-- --------------------------------------------------------

--
-- Table structure for table `news_status`
--

CREATE TABLE `news_status` (
  `id` tinyint(4) NOT NULL COMMENT 'Primary key untuk news_status',
  `name` varchar(32) NOT NULL COMMENT 'Deskripsi status berita'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table untuk detail status berita';

--
-- Dumping data for table `news_status`
--

INSERT INTO `news_status` (`id`, `name`) VALUES
(1, 'Draft'),
(2, 'Published'),
(3, 'Takedown');

-- --------------------------------------------------------

--
-- Table structure for table `user_act`
--

CREATE TABLE `user_act` (
  `id` tinyint(4) NOT NULL COMMENT 'Primary Key untuk user_act_id',
  `code` varchar(32) NOT NULL COMMENT 'code a.k.a Username ',
  `name` varchar(64) NOT NULL COMMENT 'Nama user',
  `password` varchar(64) NOT NULL COMMENT 'Password User encrypt dengan SHA-256',
  `role_id` tinyint(4) NOT NULL COMMENT 'FK primary key tabel user_act_role',
  `email` varchar(64) NOT NULL COMMENT 'email User',
  `msisdn` varchar(32) NOT NULL COMMENT 'No kontak User'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabel untuk data akses user ke aplikasi';

-- --------------------------------------------------------

--
-- Table structure for table `user_act_role`
--

CREATE TABLE `user_act_role` (
  `id` tinyint(4) NOT NULL COMMENT 'Primary key untuk role user',
  `name` varchar(32) NOT NULL COMMENT 'Deskripsi untuk tiap role idnya'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table detail role user';

--
-- Dumping data for table `user_act_role`
--

INSERT INTO `user_act_role` (`id`, `name`) VALUES
(1, 'Admin'),
(2, 'Staff'),
(3, 'Member');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `INDEX_NEWS_IDX1` (`title`),
  ADD KEY `INDEX_NEWS_IDX2` (`description`(768)),
  ADD KEY `INDEX_NEWS_IDX3` (`create_dtm`);

--
-- Indexes for table `news_category`
--
ALTER TABLE `news_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_detail`
--
ALTER TABLE `news_detail`
  ADD KEY `INDEX_NEWS_DETAIL_IDX1` (`news_id`,`user_act_id`);

--
-- Indexes for table `news_status`
--
ALTER TABLE `news_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_act`
--
ALTER TABLE `user_act`
  ADD PRIMARY KEY (`id`),
  ADD KEY `INDEX_USER_ACT_CODE_EMAIL_MSISDN_NAME` (`code`,`email`,`name`,`msisdn`);

--
-- Indexes for table `user_act_role`
--
ALTER TABLE `user_act_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Primary key ';

--
-- AUTO_INCREMENT for table `news_status`
--
ALTER TABLE `news_status`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT 'Primary key untuk news_status', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_act`
--
ALTER TABLE `user_act`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key untuk user_act_id';

--
-- AUTO_INCREMENT for table `user_act_role`
--
ALTER TABLE `user_act_role`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT 'Primary key untuk role user', AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
