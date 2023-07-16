-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2023 at 07:21 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anime`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `show_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `show_id`, `user_id`, `user_name`, `created_at`) VALUES
(41, '11', 1, 14, 'khalid', '2023-07-11 22:43:53'),
(42, '1111', 1, 18, 'Ammar', '2023-07-11 22:59:13'),
(43, 'hey', 1, 22, 'Khalid M', '2023-07-11 23:02:28'),
(44, 'love it!', 2, 22, 'Khalid M', '2023-07-11 23:02:57'),
(45, 'Love it!!', 1, 25, 'haitham', '2023-07-12 05:13:13'),
(47, 'I love this show!', 1, 26, 'Abdl', '2023-07-12 05:46:39');

-- --------------------------------------------------------

--
-- Table structure for table `episodes`
--

CREATE TABLE `episodes` (
  `id` int(10) NOT NULL,
  `video` varchar(200) NOT NULL,
  `thumbnail` varchar(200) NOT NULL,
  `show_id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `episodes`
--

INSERT INTO `episodes` (`id`, `video`, `thumbnail`, `show_id`, `name`, `created_at`) VALUES
(1, '1.mp4', 'anime-watch.jpg', 1, '1', '2023-07-11 01:02:59'),
(2, '2.mp4', 'anime-watch.jpg', 1, '2', '2023-07-11 01:02:59'),
(3, '1.mp4', 'anime-watch.jpg', 2, '1', '2023-07-11 01:02:59'),
(4, 'scarface.mp4', 'scarface.jpg', 6, '1', '2023-07-11 01:02:59');

-- --------------------------------------------------------

--
-- Table structure for table `followings`
--

CREATE TABLE `followings` (
  `id` int(10) NOT NULL,
  `show_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `followings`
--

INSERT INTO `followings` (`id`, `show_id`, `user_id`, `created_at`) VALUES
(20, 1, 14, '2023-07-11 00:10:52'),
(21, 2, 14, '2023-07-11 00:23:15'),
(22, 1, 16, '2023-07-11 13:07:16'),
(23, 1, 16, '2023-07-11 13:08:05'),
(24, 2, 16, '2023-07-11 13:10:04'),
(25, 1, 18, '2023-07-11 22:08:47'),
(26, 1, 20, '2023-07-11 22:22:42'),
(27, 1, 21, '2023-07-11 22:27:25'),
(28, 2, 22, '2023-07-11 23:03:13'),
(29, 1, 23, '2023-07-11 23:44:38'),
(30, 2, 23, '2023-07-11 23:44:51'),
(31, 6, 24, '2023-07-11 23:58:44'),
(32, 1, 25, '2023-07-12 05:12:58'),
(34, 1, 26, '2023-07-12 05:46:20');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`, `created_at`) VALUES
(1, 'Action', '2023-07-08 23:58:03'),
(2, 'Adventure', '2023-07-08 23:58:03'),
(3, 'Magic', '2023-07-08 23:58:03');

-- --------------------------------------------------------

--
-- Table structure for table `shows`
--

CREATE TABLE `shows` (
  `id` int(10) NOT NULL,
  `title` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `type` varchar(200) NOT NULL,
  `actors` varchar(200) NOT NULL,
  `date_aired` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `genre` varchar(200) NOT NULL,
  `duration` varchar(200) NOT NULL,
  `producers` varchar(200) NOT NULL,
  `num_available` int(10) NOT NULL,
  `num_total` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shows`
--

INSERT INTO `shows` (`id`, `title`, `image`, `description`, `type`, `actors`, `date_aired`, `status`, `genre`, `duration`, `producers`, `num_available`, `num_total`, `created_at`) VALUES
(1, 'The Seven Deadly Sins: Wrath of the Gods', 'tv-1.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sollicitudin tempor id eu nisl nunc. Viverra nam libero justo laoreet sit amet cursus sit. Dictum sit amet justo donec enim diam. Laoreet suspendisse interdum consectetur libero id faucibus nisl tincidunt eget. Donec s vitae ultricies leo integer malesuada. Mollis nunc sed id semper risus in.', 'TV Series', 'Khalid', 'Oct 02, 2019 to ?', 'Airing', 'Action', '24 min/ep', 'Haitham', 12, 99, '2023-07-07 13:47:29'),
(2, 'Gintama Movie 2: Kanketsu-hen - Yorozuya yo Eien', 'tv-2.jpg', 'Id eu nisl nunc mi ipsum faucibus. Ac tortor dignissim convallis aenean et tortor at risus. Dictumst quisque sagittis purus sit. Mauris vitae ultricies leo integer malesuada nunc. Felis donec et odio pellentesque diam volutpat. Morbi quis commodo odio aenean sed adipiscing. Netus et malesuada fames ac turpis egestas maecenas pharetra convallis. Sed arcu non odio euismod lacinia at quis risus sed. Sit amet risus n', 'TV Series', 'Khalid', 'Oct 07, 2019 to ?', 'Airing', 'Adventure', '30 min/ep', 'Haitham', 20, 100, '2023-07-07 13:47:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `email` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password`, `created_at`) VALUES
(14, 'km@gmail.com', 'khalid', '$2y$10$ZV955PVmLMNmVmUYyc7CZO7iapjTKmHmVehwxTZgsbpR..cj4/nSC', '2023-07-07 13:29:35'),
(22, 'khalid@gmail.com', 'Khalid M', '$2y$10$YXvdscko0tzX54G7OEllKuPoD./Ej85UslsZQz77LVCGum.N0k2yW', '2023-07-11 23:01:38'),
(23, 'demo@gmail.com', 'demo', '$2y$10$mTAN4w/Vq3iCOErLRQxZKuExheI4lbWpvO3Zi8qGbsDp.A7UhQVgy', '2023-07-11 23:21:13'),
(24, 'rabea@gmail.com', 'rabea', '$2y$10$ifFQ7KPWIY5UDQ7rR/pVAuvEGHaO6TtzUUDnY/ibDp4o3Lm0c3L2m', '2023-07-11 23:56:05'),
(25, 'haitham@gmail.com', 'haitham', '$2y$10$6vThzyLRfQWG7l5T0J9NI.Kf3M4fOX69S7wAqQZQRrc9Zbrw7u/m6', '2023-07-12 05:12:12'),
(26, 'Abdelrahman2023@gmail.com', 'Abdl', '$2y$10$GlnnesIKHBNc9gpsMZ/i2uFPlT80jDBkq0Ce3UBAqpOLoHQyOFN/q', '2023-07-12 05:44:44');

-- --------------------------------------------------------

--
-- Table structure for table `views`
--

CREATE TABLE `views` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `show_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `views`
--

INSERT INTO `views` (`id`, `user_id`, `show_id`, `created_at`) VALUES
(6, 1, 2, '2023-07-11 20:04:07'),
(7, 1, 1, '2023-07-11 20:04:07'),
(8, 14, 1, '2023-07-11 22:43:57'),
(9, 18, 1, '2023-07-11 22:59:13'),
(10, 22, 1, '2023-07-11 23:02:28'),
(12, 25, 1, '2023-07-12 05:13:13'),
(24, 1, 6, '2023-07-11 20:04:07'),
(26, 26, 1, '2023-07-12 05:46:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `episodes`
--
ALTER TABLE `episodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `followings`
--
ALTER TABLE `followings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shows`
--
ALTER TABLE `shows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `episodes`
--
ALTER TABLE `episodes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `followings`
--
ALTER TABLE `followings`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shows`
--
ALTER TABLE `shows`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `views`
--
ALTER TABLE `views`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
