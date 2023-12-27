-- phpMyAdmin SQL Dump
-- version 5.2.1deb1+focal2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 25, 2023 at 06:38 PM
-- Server version: 8.0.35-0ubuntu0.20.04.1
-- PHP Version: 7.4.3-4ubuntu2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sakila`
--

-- --------------------------------------------------------

--
-- Structure for view `valuation_report`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `valuation_report`  AS SELECT `a`.`district` AS `district`, count(distinct `c`.`customer_id`) AS `total_customers`, sum(`t`.`total_dvds_rented`) AS `total_dvds_rented`, avg(`r`.`avg_rental_duration`) AS `avg_rental_duration` FROM (((`rental_duration` `r` join `customer` `c` on((`r`.`customer_id` = `c`.`customer_id`))) join `address` `a` on((`c`.`address_id` = `a`.`address_id`))) join `total_dvds` `t` on((`c`.`customer_id` = `t`.`customer_id`))) GROUP BY `a`.`district` ;

--
-- VIEW `valuation_report`
-- Data: None
--

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
