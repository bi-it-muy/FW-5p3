-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2025 at 11:22 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12
SET
    SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

START TRANSACTION;

SET
    time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;

/*!40101 SET NAMES utf8mb4 */
;

--
-- Database: `todolistdb`
--
-- --------------------------------------------------------
--
-- Table structure for table `tasks`
--
CREATE TABLE `tasks` (
    `id` int(11) NOT NULL,
    `title` varchar(255) NOT NULL,
    `description` text DEFAULT NULL,
    `status` enum('pending', 'in_progress', 'completed') DEFAULT 'pending',
    `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
    `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

--
-- Dumping data for table `tasks`
--
INSERT INTO
    `tasks` (
        `id`,
        `title`,
        `description`,
        `status`,
        `created_at`,
        `updated_at`
    )
VALUES
    (
        1,
        'congrats',
        '',
        'pending',
        '2025-01-20 12:06:14',
        '2025-01-29 10:21:59'
    ),
    (
        3,
        'you did it',
        '',
        'pending',
        '2025-01-29 10:21:26',
        '2025-01-29 10:21:26'
    );

--
-- Indexes for dumped tables
--
--
-- Indexes for table `tasks`
--
ALTER TABLE
    `tasks`
ADD
    PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--
--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE
    `tasks`
MODIFY
    `id` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 4;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;