-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2023 at 02:54 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shorterisbetter`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Username`, `Password`) VALUES
('kezya', '$2y$10$p35fJKxU1MD2Bw1s42f2v.3JEh8BvAiB5tYeh4TETRGw3XRs.j4RG'),
('rafael', '$2y$10$pZ2lguaXsohhyR4DBul6u.LOTf0dp3T7RBEN8RzjlT.0RXGbOBLuq'),
('raihan', '$2y$10$V60ouB/8B5bRxFoa6c5fhefcN.YOCyUtNqDu.Sp7p1MRXdixsi4O.'),
('robi', '$2y$10$.m9npz10kBvoPe94rmcDAeUdMXZXJ7On6jzvkGJIryJKcWnTWpYHW'),
('samuel', '$2y$10$Q2i3DOf48cN.dHZ7/iLJZuR5RxRXKsJYDabVUcMthK4Cfu3TSW4Gu'),
('rafael26', '$2y$10$K17cb1zL5ZeoYsZ/ge1.ouoYGMlAKpxdAmf9aKQJsFP0VWUu3JTpe'),
('Joni', '$2y$10$6jLMwniuUrVBuWx5CkfM9.uXj7G7QIGJytvHl.TuLXi4ywY.QLwCa'),
('kezyagabriel', '$2y$10$R7u1ytHS6ZI6ZfOwzCNqHuHqeWF0nYsMIt0ObnrR5qZ8J6VCrIEjS');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
