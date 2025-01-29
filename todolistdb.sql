CREATE DATABASE IF NOT EXISTS todolistdb;

USE todolistdb;

CREATE TABLE `tasks` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `title` varchar(255) NOT NULL,
    `description` text DEFAULT NULL,
    `status` enum('pending', 'in_progress', 'completed') DEFAULT 'pending',
    `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
    `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
    PRIMARY KEY (`id`)
);

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
        2,
        'you did it',
        '',
        'pending',
        '2025-01-29 10:21:26',
        '2025-01-29 10:21:26'
    );