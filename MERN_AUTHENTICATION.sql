-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2024 at 07:25 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `real_estate`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `uuid`, `name`, `price`, `userId`, `createdAt`, `updatedAt`) VALUES
(7, 'bda40bf7-3388-4a18-8667-a82825b0913b', 'iphone 16 pro max 256Gb 2Sim ZAA', 1400, 1, '2024-09-29 12:26:58', '2024-09-29 17:22:34'),
(9, 'b2ded23e-c228-46b4-939c-d016ced9b523', 'Asus Tuf Dash F15 ', 900, 3, '2024-09-29 15:58:06', '2024-09-29 15:58:06'),
(11, '5292e293-18e5-4c0d-9572-844e411bdc0b', 'Macbook Pro 15inch M3 Pro ', 2400, 1, '2024-09-29 17:22:19', '2024-09-29 17:22:19');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `sid` varchar(36) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`) VALUES
('-E9KBjMUUDCaRB0IHpzJeAJ2xNQBH8H3', '2024-09-30 11:42:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-29 11:42:22', '2024-09-29 11:42:22'),
('10tIeKiv-7WEsvsw1r3pEhpF1knnf7fi', '2024-09-30 15:58:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-29 15:58:06', '2024-09-29 15:58:06'),
('343UmdoNR262vniCjT-Kw1-ElYCuRq_f', '2024-09-30 17:22:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-29 17:22:48', '2024-09-29 17:22:48'),
('4Qd_tdIuBJl8ySlsrHrXXq2pPg-opYL5', '2024-09-30 17:17:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-29 17:17:06', '2024-09-29 17:17:06'),
('8e23EGmdBOqtuN4qOCAF17MGckSAftGp', '2024-09-30 17:21:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-29 17:21:06', '2024-09-29 17:21:06'),
('A1a2CIF_-tJPfUCC9na5Q6UL7mD22-Rb', '2024-09-30 15:56:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-29 15:56:42', '2024-09-29 15:56:42'),
('aGcay3r3d7u3u6vZ0_WhVesE0b3XtJlN', '2024-09-30 12:23:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-29 12:23:59', '2024-09-29 12:23:59'),
('bqq4vfd-NRekLMevbmVhfvQ-qpEnBZBs', '2024-09-30 17:13:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-29 17:13:59', '2024-09-29 17:13:59'),
('b_iX7ERBfyczHC5I6UBOjurgGmkQGeTl', '2024-09-30 17:23:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-29 17:23:09', '2024-09-29 17:23:09'),
('DeJwXs7-xGldevU6jTWs5IHoGrTw_VNc', '2024-09-30 17:23:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-29 17:23:14', '2024-09-29 17:23:14'),
('dlMUW9eqewS9NXZOBXugCeiO-Bc3baqn', '2024-09-30 16:06:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-29 16:06:04', '2024-09-29 16:06:04'),
('dxITUX4UpykSc-HweQ3uopgaubRcPzjL', '2024-09-30 15:32:23', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-29 15:32:23', '2024-09-29 15:32:23'),
('g1S0Tf9d7GsyM5KujoxMl36xTgszp6C2', '2024-09-30 16:07:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-29 16:07:08', '2024-09-29 16:07:08'),
('gr8Ic52aF_MjL-FpwsRm1TZWh3skW8XO', '2024-09-30 12:23:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-29 12:23:49', '2024-09-29 12:23:49'),
('gVJac94yTwIke48EygJY2foNnxkVw52S', '2024-09-30 17:20:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-29 17:20:21', '2024-09-29 17:20:21'),
('heeRCYM8gYwo5t44rKnETpB6krsfDn5x', '2024-09-30 16:02:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-29 16:02:50', '2024-09-29 16:02:50'),
('HjTfTQaEw27Wfoq8ei4JHCfQjZkRKWaw', '2024-09-30 15:58:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-29 15:58:16', '2024-09-29 15:58:16'),
('HvQHvZmO9dg5XXowY3Q3ZIqlHhrMl7oX', '2024-09-30 15:17:37', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-29 15:17:37', '2024-09-29 15:17:37'),
('iky1Csl16LptaLPfVmxxXZ7kxZzzXpWO', '2024-09-30 17:21:56', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-29 17:21:56', '2024-09-29 17:21:56'),
('Im_9uFSZ6DHKNp5XSxs32fffSJ-eG5CS', '2024-09-30 17:14:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-29 17:14:14', '2024-09-29 17:14:14'),
('iTBjOiGJIBJu2FRgVd_D087vtQYDEHUc', '2024-09-30 12:26:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-29 12:26:58', '2024-09-29 12:26:58'),
('JC8m2BrCOBj8Xp9wAn5XYlXGLyOqUEnO', '2024-09-30 17:23:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-29 17:23:10', '2024-09-29 17:23:10'),
('jeFO2vzx-7PaBSJXj1kJyohuHR8iXIK8', '2024-09-30 15:09:33', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-29 15:09:33', '2024-09-29 15:09:33'),
('jFhn5JBT30fbTJWBAzwh-2iEpnjIeqjC', '2024-09-30 16:06:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-29 16:06:49', '2024-09-29 16:06:49'),
('JmvgH5LM-N2eV3jzv49pTVCrR4OTSF_2', '2024-09-30 15:58:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-29 15:58:21', '2024-09-29 15:58:21'),
('jW2h3FmyqK4sP3GQmn9MavSRMzNr2Z7t', '2024-09-30 17:17:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-29 17:17:14', '2024-09-29 17:17:14'),
('kYOGX-hTAc-Ll37MLMK8v5rg6HhWPPjF', '2024-09-30 15:57:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-29 15:57:24', '2024-09-29 15:57:24'),
('L-QJzQSLu36USXotLPaYO32MEEUyZTaf', '2024-09-30 17:22:45', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-29 17:22:45', '2024-09-29 17:22:45'),
('L5H3HBsKYMyhVCfHpatH2992aVQSixTJ', '2024-09-30 16:36:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-29 16:36:46', '2024-09-29 16:36:46'),
('laVV2dvoj1qqx2nnewTpXNoo7sZgBqRH', '2024-09-30 15:57:32', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-29 15:57:32', '2024-09-29 15:57:32'),
('LBqjENsVBMTXuo5JthMEn7R-XbDXeojk', '2024-09-30 12:26:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-29 12:26:48', '2024-09-29 12:26:48'),
('LgNGH-2to8pUs4HdPYsnwDzmr62-yYGA', '2024-09-30 17:23:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"2c7cbf85-56b5-4ef3-8b83-385b1a05f8ed\"}', '2024-09-29 17:23:15', '2024-09-29 17:23:17'),
('LOE6Lm59BpAX48VM4VXHMWAl2VWGiwGA', '2024-09-30 12:26:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-29 12:26:31', '2024-09-29 12:26:31'),
('lS43iQztB5vHYpi_6ouuY1C3cZvodmGI', '2024-09-30 17:17:01', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-29 17:17:01', '2024-09-29 17:17:01'),
('MmJDzj2UyEgEm2CeWQWsSagG6yJ3DRql', '2024-09-30 12:23:11', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-29 12:23:11', '2024-09-29 12:23:11'),
('MQ9O74sXGTxb0N3h6Qo5jKSwJKVTfH92', '2024-09-30 12:19:33', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-29 12:19:33', '2024-09-29 12:19:33'),
('nSFj1uymzM5uEiNp187qrNPbQpDXRAPo', '2024-09-30 17:23:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-29 17:23:06', '2024-09-29 17:23:06'),
('OH5MXIZdNM6bthH8hHtoKhJQjpNzqrIB', '2024-09-30 16:00:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-29 16:00:17', '2024-09-29 16:00:17'),
('qz75wb5yJAauYwapVXg1ADALZNpXZwEr', '2024-09-30 12:25:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-29 12:25:16', '2024-09-29 12:25:16'),
('S-D27avsojeGu7pc84I2JdgFfDXsKSSk', '2024-09-30 17:20:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-29 17:20:08', '2024-09-29 17:20:08'),
('tNBdotSBsakBrIq_GJ3P-QnkM_8bDLwO', '2024-09-30 12:00:54', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-29 12:00:54', '2024-09-29 12:00:54'),
('tntljZrr735JCz-UypeC1xk9S8_qWc1x', '2024-09-30 17:22:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-29 17:22:19', '2024-09-29 17:22:19'),
('UoRa4dBQFsvorU1Rz2VfZhK-PrCS3o8R', '2024-09-30 15:57:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-29 15:57:19', '2024-09-29 15:57:19'),
('VBc6NHGfiqZLTMSoAD42QJYGnvimKDkN', '2024-09-30 17:14:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-29 17:14:12', '2024-09-29 17:14:12'),
('wbpAtnMtUU0oF3mk0hrgJ4eNlBE_YBMN', '2024-09-30 17:21:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-29 17:21:49', '2024-09-29 17:21:49'),
('x1KmpqYoSKQKtuRD-MFtRy_bDnwYYlcQ', '2024-09-30 12:19:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-29 12:19:24', '2024-09-29 12:19:24'),
('xHfdpEVI1qDREGvQEFb3CRKX-fuziLwx', '2024-09-30 16:11:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-29 16:11:29', '2024-09-29 16:11:29'),
('XhtfjQTKCW3fRmynb9K-ZgyH8t20PUiK', '2024-09-30 16:05:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-29 16:05:26', '2024-09-29 16:05:26'),
('Y_t-_q-vb7t8qOx8yBuKwHUni-3tofsJ', '2024-09-30 17:19:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-29 17:19:44', '2024-09-29 17:19:44'),
('ZaoPWR2RXkEscjVwkKWepLu4WBlspbfC', '2024-09-30 16:43:57', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"2c7cbf85-56b5-4ef3-8b83-385b1a05f8ed\"}', '2024-09-28 15:35:06', '2024-09-29 16:43:57'),
('ZkYkOdWNAKPEn-DuQ9EzkuRyxPPuBrIC', '2024-09-30 16:01:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-29 16:01:44', '2024-09-29 16:01:44'),
('_MKMZ98c5kUREmSnJrwKzyK6ka_e0HmJ', '2024-09-30 17:22:33', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-29 17:22:33', '2024-09-29 17:22:33'),
('_qNFKf5HdXe7aNM2NVTkzq24SHq2ZlNd', '2024-09-30 17:17:11', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-29 17:17:11', '2024-09-29 17:17:11'),
('_RG_yOh-7-as6s8THrKm2zZW7dTbCpTL', '2024-09-30 16:04:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-09-29 16:04:46', '2024-09-29 16:04:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_Id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_Id`, `name`, `email`, `password`, `role`, `createdAt`, `updatedAt`) VALUES
(1, '2c7cbf85-56b5-4ef3-8b83-385b1a05f8ed', 'Sinan Aras Yilmaz', 'sinan@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$EvwTra6kjDGolYxAZxT4gw$967EujCMPSOPHKH275hg1IuUJp6rmj6TdTmtdGO9Yek', 'admin', '2024-09-25 16:27:56', '2024-09-29 17:20:09'),
(3, '333ad3ae-79f3-480a-9cc8-fef2af8e5607', 'Dyako Hassan', 'dyako@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$2IYLsDURhr8u/jNhlDQVrw$JWIaXH85uJbhnSiKfAeeKbyvZMztlCRZ5vxiBGgkkaY', 'user', '2024-09-29 15:57:19', '2024-09-29 17:20:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
