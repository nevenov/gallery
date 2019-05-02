-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 02, 2019 at 03:14 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gallery_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `photo_id` int(11) NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `date_posted` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `photo_id`, `author`, `body`, `date_posted`) VALUES
(10, 16, 'Stoian Nedev', 'tretresgaregf', '2019-03-13 11:51:04'),
(11, 11, 'Stoian Nedev', 'test 1212 test 1212 test 1212 test 1212 test 1212 test 1212 test 1212 test 1212 test 1212 test 1212 test 1212 test 1212', '2019-03-13 11:51:04'),
(12, 11, 'Stoian Nedev', 'test 34444 test 34444 test 34444 test 34444 test 34444 test 34444', '2019-03-13 11:51:04'),
(13, 15, 'Stoian Nedev', 'date posted test date posted test date posted test date posted test date posted test date posted test date posted test date posted test date posted test date posted test date posted test date posted test date posted test date posted test', '2019-03-13 11:53:03');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `caption` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alternate_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_upload` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `title`, `caption`, `alternate_text`, `description`, `filename`, `type`, `size`, `user_id`, `date_upload`) VALUES
(11, 'Some meaningful title', 'New Caption 111', 'New Alternate Text 2134214214', '<p>New Descriptionv wqfwrvewewfew eqrgre gr</p>', 'images-14.jpg', 'image/jpeg', 21992, 19, '2019-03-13 11:26:27'),
(13, 'Car 2', 'Donec et iaculis eros', 'New Alternate Text 1212', '<p>DescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescription</p>', 'images_2.jpg', 'image/jpeg', 18578, 15, '2019-03-13 11:26:27'),
(15, 'Large Car picture 2', '', '', '', '_large_image_2.jpg', 'image/jpeg', 309568, 19, '2019-03-13 11:26:27'),
(16, 'Large Car picture 3', '', '', '', '_large_image_3.jpg', 'image/jpeg', 165053, 19, '2019-03-13 11:26:27'),
(17, 'Car 6', '', '', '', 'images-6.jpg', 'image/jpeg', 21886, 19, '2019-03-13 11:26:27'),
(18, 'Car 7', '', '', '', 'images-7.jpg', 'image/jpeg', 24140, 19, '2019-03-13 11:26:27'),
(19, 'Car 8', '', '', '', 'images-8.jpg', 'image/jpeg', 20810, 19, '2019-03-13 11:26:27'),
(20, 'Car 4', '', '', '', '_large_image_4.jpg', 'image/jpeg', 554659, 19, '2019-03-13 11:26:27'),
(22, '32 Photo', '', '', '', 'images-32.jpg', 'image/jpeg', 22772, 15, '2019-03-13 11:26:27'),
(23, '', '', '', '', 'images-41.jpg', 'image/jpeg', 16296, 19, '2019-03-13 11:26:27'),
(24, '', '', '', '', 'images-42.jpg', 'image/jpeg', 22401, 19, '2019-03-13 11:26:27'),
(25, '', '', '', '', 'images-35.jpg', 'image/jpeg', 23672, 19, '2019-03-13 11:26:27'),
(26, '', '', '', '', 'images-38.jpg', 'image/jpeg', 21857, 19, '2019-03-13 11:26:27'),
(28, 'Cool Car', 'Donec et iaculis eros', 'New Alternate Text', '<p>Donec et iaculis erosDonec et iaculis erosDonec et iaculis erosDonec et iaculis erosDonec et iaculis eros</p>', 'images-43.jpg', 'image/jpeg', 27955, 19, '2019-03-13 11:26:27'),
(30, 'Lorem ipsum dolor sit amet', '', '', '', 'images-30.jpg', 'image/jpeg', 20257, 19, '2019-03-13 11:32:05'),
(31, '', '', '', '', 'images-18.jpg', 'image/jpeg', 27595, 19, '2019-03-13 11:35:10'),
(32, '', '', '', '', 'images-22.jpg', 'image/jpeg', 21133, 22, '2019-03-13 11:35:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `user_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `first_name`, `last_name`, `user_image`) VALUES
(15, 'svetlak2', '123456', 'Svetoslav', 'Nedev', '_large_image_4.jpg'),
(19, 'nevenov', 'my123', 'Stoyan', 'Nedev', '_large_image_3.jpg'),
(22, 'svetlak5', 'm0d3rAt0r', 'Cyrillic', 'Недев', '_large_image_1.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `photo_id` (`photo_id`),
  ADD KEY `photo_id_2` (`photo_id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_3` (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
