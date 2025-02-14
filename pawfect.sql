-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 29. Jul 2023 um 20:16
-- Server-Version: 10.4.28-MariaDB
-- PHP-Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `pawfect`
--
CREATE DATABASE IF NOT EXISTS `pawfect` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pawfect`;

-- --------------------------------------------------------
--
-- Table structure for table `animals`
--

CREATE TABLE `animals` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `picture` varchar(100) DEFAULT NULL,
  `address` varchar(60) NOT NULL,
  `description` varchar(10000) NOT NULL,
  `size` varchar(20) NOT NULL,
  `age` varchar(30) NOT NULL,
  `vaccinated` varchar(3) NOT NULL,
  `breed` varchar(30) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `agency_id_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `animals`
--

INSERT INTO `animals` (`id`, `name`, `picture`, `address`, `description`, `size`, `age`, `vaccinated`, `breed`, `status`, `agency_id_fk`) VALUES
(1, 'Marble', 'cat1.jpg', 'Praterstraße 25, 1020 Vienna', 'Meet \"Marble,\" hello', '23', '9 ', 'Yes', 'Cat', 0, 3),
(2, 'Oreo', 'bunny.jpg', 'Währinger Gürtel 30, 1090 Vienna', 'hello', '10', '0.5', 'No', 'Bunny', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `pet_adoptions`
--

CREATE TABLE `pet_adoptions` (
  `id` int(11) NOT NULL,
  `adopt_date` date DEFAULT NULL,
  `user_id_fk` int(11) NOT NULL,
  `animal_id_fk` int(11) NOT NULL,
  `request_date` date NOT NULL,
  `living_condition` varchar(2000) NOT NULL,
  `previous_experience` varchar(2000) NOT NULL,
  `adoption_reason` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pet_adoptions`
--

INSERT INTO `pet_adoptions` (`id`, `adopt_date`, `user_id_fk`, `animal_id_fk`, `request_date`, `living_condition`, `previous_experience`, `adoption_reason`) VALUES
(1, '2023-07-29', 2, 2, '2023-07-29', 'dummy living condition text', 'dummy previous expeirence text', 'dummy reason text'),
(2, NULL, 4, 5, '2023-08-17', 'last try. great house for this dog', 'no experience', 'i want it');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(40) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(80) NOT NULL,
  `phone` int(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `picture` varchar(100) DEFAULT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `password`, `address`, `phone`, `email`, `picture`, `status`) VALUES
(1, 'Stefanie', 'Sarközi    ', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'Engerthstraße 88/1/5/21', 123456, 's.steffi1998@gmx.at', '64c5155549167.jpg', 'adm');
-- if you want to test shelter or agency user, passwords are 11111111

--
-- Indexes for dumped tables
--

--
-- Indexes for table `animals`
--
ALTER TABLE `animals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `agency_id_fk` (`agency_id_fk`);

--
-- Indexes for table `pet_adoptions`
--
ALTER TABLE `pet_adoptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_fk` (`user_id_fk`),
  ADD KEY `animal_id_fk` (`animal_id_fk`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `animals`
--
ALTER TABLE `animals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pet_adoptions`
--
ALTER TABLE `pet_adoptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `animals`
--
ALTER TABLE `animals`
  ADD CONSTRAINT `animals_ibfk_1` FOREIGN KEY (`agency_id_fk`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `pet_adoptions`
--
ALTER TABLE `pet_adoptions`
  ADD CONSTRAINT `pet_adoptions_ibfk_1` FOREIGN KEY (`user_id_fk`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `pet_adoptions_ibfk_2` FOREIGN KEY (`animal_id_fk`) REFERENCES `animals` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
