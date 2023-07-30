-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2023 at 02:55 PM
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
-- Table structure for table `shortened_urls`
--

CREATE TABLE `shortened_urls` (
  `longURL` varchar(255) NOT NULL,
  `shortURL` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shortened_urls`
--

INSERT INTO `shortened_urls` (`longURL`, `shortURL`) VALUES
('https://www.youtube.com/watch?v=xaQ-NigTJjE', 'www.youtube.com/watch'),
('https://www.youtube.com/watch?v=xaQ-NigTJjE', '5g7u86'),
('https://www.google.com/search?q=sadfdsf&oq=sadfdsf&gs_lcrp=EgZjaHJvbWUyBggAEEUYOTIJCAEQABgKGIAEMgkIAhAAGAoYgAQyCQgDEAAYChiABDIJCAQQABgKGIAEMgkIBRAAGAoYgAQyCQgGEAAYChiABDIJCAcQABgKGIAEMgkICBAAGAoYgAQyCQgJEAAYChiABNIBBzg0OGowajeoAgCwAgA&sourceid=chrome&ie=U', 'd36e6e'),
('https://www.google.com/search?q=ayam&oq=ayam&gs_lcrp=EgZjaHJvbWUqDQgAEAAY4wIYsQMYgAQyDQgAEAAY4wIYsQMYgAQyCggBEC4YsQMYgAQyBggCEEUYOzINCAMQLhiDARixAxiABDINCAQQLhiDARixAxiABDINCAUQLhiDARixAxiABDIHCAYQABiABDIHCAcQABiABDINCAgQLhivARjHARiABDIKCAkQABixAxiABNIBCD', 'd35gjk7'),
('https://www.google.com/search?q=ayam&oq=ayam&gs_lcrp=EgZjaHJvbWUqDQgAEAAY4wIYsQMYgAQyDQgAEAAY4wIYsQMYgAQyCggBEC4YsQMYgAQyBggCEEUYOzINCAMQLhiDARixAxiABDINCAQQLhiDARixAxiABDINCAUQLhiDARixAxiABDIHCAYQABiABDIHCAcQABiABDINCAgQLhivARjHARiABDIKCAkQABixAxiABNIBCD', 'd35gjk7'),
('https://www.google.com/search?q=ayam&oq=ayam&gs_lcrp=EgZjaHJvbWUqDQgAEAAY4wIYsQMYgAQyDQgAEAAY4wIYsQMYgAQyCggBEC4YsQMYgAQyBggCEEUYOzINCAMQLhiDARixAxiABDINCAQQLhiDARixAxiABDINCAUQLhiDARixAxiABDIHCAYQABiABDIHCAcQABiABDINCAgQLhivARjHARiABDIKCAkQABixAxiABNIBCD', 'd35gjk7'),
('https://www.google.com/search?q=dada&oq=dada&gs_lcrp=EgZjaHJvbWUyBggAEEUYOTITCAEQLhiDARivARjHARixAxiABDIKCAIQLhixAxiABDIKCAMQLhixAxiABDIHCAQQLhiABDIKCAUQLhixAxiABDIKCAYQLhixAxiABDINCAcQLhiDARixAxiABDIHCAgQABiABDIHCAkQABiPAtIBBzgxN2owajmoAgCwAgA&sourceid=c', 'd35gjk7'),
('https://www.google.com/search?q=dada&oq=dada&gs_lcrp=EgZjaHJvbWUyBggAEEUYOTITCAEQLhiDARivARjHARixAxiABDIKCAIQLhixAxiABDIKCAMQLhixAxiABDIHCAQQLhiABDIKCAUQLhixAxiABDIKCAYQLhixAxiABDINCAcQLhiDARixAxiABDIHCAgQABiABDIHCAkQABiPAtIBBzgxN2owajmoAgCwAgA&sourceid=c', 'd35gjk7'),
('https://www.google.com/search?q=daging&oq=daging&gs_lcrp=EgZjaHJvbWUqDQgAEAAY4wIYsQMYgAQyDQgAEAAY4wIYsQMYgAQyCggBEC4YsQMYgAQyCggCEC4YsQMYgAQyBwgDEAAYgAQyCggEEAAYsQMYgAQyCggFEC4YsQMYgAQyCggGEC4YsQMYgAQyCggHEAAYsQMYgAQyDQgIEC4YrwEYxwEYgAQyBwgJEAAYgATSAQgxMz', 'f4g6h7'),
('https://www.google.com/search?q=daging&oq=daging&gs_lcrp=EgZjaHJvbWUqDQgAEAAY4wIYsQMYgAQyDQgAEAAY4wIYsQMYgAQyCggBEC4YsQMYgAQyCggCEC4YsQMYgAQyBwgDEAAYgAQyCggEEAAYsQMYgAQyCggFEC4YsQMYgAQyCggGEC4YsQMYgAQyCggHEAAYsQMYgAQyDQgIEC4YrwEYxwEYgAQyBwgJEAAYgATSAQgxMz', 'f4g6h7'),
('https://www.google.com/search?q=daging&oq=daging&gs_lcrp=EgZjaHJvbWUqDQgAEAAY4wIYsQMYgAQyDQgAEAAY4wIYsQMYgAQyCggBEC4YsQMYgAQyCggCEC4YsQMYgAQyBwgDEAAYgAQyCggEEAAYsQMYgAQyCggFEC4YsQMYgAQyCggGEC4YsQMYgAQyCggHEAAYsQMYgAQyDQgIEC4YrwEYxwEYgAQyBwgJEAAYgATSAQgxMz', 'f4g6h7'),
('https://www.google.com/search?q=pitik&oq=pitik&gs_lcrp=EgZjaHJvbWUyBggAEEUYOTINCAEQLhivARjHARiABDIHCAIQABiABDIHCAMQABiABDIKCAQQLhixAxiABDIHCAUQABiABDIHCAYQABiABDIHCAcQABiABDIHCAgQABiABDIHCAkQABiABNIBCDExMTBqMGo5qAIAsAIA&sourceid=chrome&ie=UTF-8', '1a2b3c'),
('https://www.youtube.com/watch?v=DRXFVpJId4A', '111111'),
('https://www.google.com/search?q=babi&oq=babi&gs_lcrp=EgZjaHJvbWUqDQgAEAAY4wIYsQMYgAQyDQgAEAAY4wIYsQMYgAQyCggBEC4YsQMYgAQyCggCEAAYsQMYgAQyBwgDEAAYgAQyCggEEC4YsQMYgAQyCggFEAAYsQMYgAQyBwgGEAAYgAQyCggHEC4YsQMYgAQyCggIEAAYsQMYgAQyCggJEAAYsQMYgATSAQc2MjdqMGo5qA', '9acc82'),
('https://www.google.com/search?q=raihan&oq=raihan&gs_lcrp=EgZjaHJvbWUqCggAEAAY4wIYgAQyCggAEAAY4wIYgAQyBwgBEC4YgAQyBwgCEAAYgAQyBwgDEAAYgAQyBwgEEAAYgAQyBwgFEC4YgAQyBwgGEAAYgAQyBwgHEAAYgAQyBwgIEAAYgAQyBwgJEAAYgATSAQc4NjFqMGo5qAIAsAIA&sourceid=chrome&ie=UTF-8', 'acaa22'),
('https://www.google.com/search?q=new+jeans&sxsrf=AB5stBgvju6aGQJNCq0m_DGhDY61ShvLGA%3A1690721300652&ei=FFzGZOqiJ_v0juMPgpuPuAY&ved=0ahUKEwjq_KfUu7aAAxV7umMGHYLNA2cQ4dUDCA4&uact=5&oq=new+jeans&gs_lp=Egxnd3Mtd2l6LXNlcnAiCW5ldyBqZWFuczIHECMYigUYJzILEC4YgAQYsQ', 'g56k90d'),
('https://www.google.com/search?q=new+jeans&sxsrf=AB5stBgvju6aGQJNCq0m_DGhDY61ShvLGA%3A1690721300652&ei=FFzGZOqiJ_v0juMPgpuPuAY&ved=0ahUKEwjq_KfUu7aAAxV7umMGHYLNA2cQ4dUDCA4&uact=5&oq=new+jeans&gs_lp=Egxnd3Mtd2l6LXNlcnAiCW5ldyBqZWFuczIHECMYigUYJzILEC4YgAQYsQ', '5c8bf3'),
('https://www.google.com/search?q=car&sxsrf=AB5stBixtPtlA5TL_BVE42GYouBoJ18AjQ%3A1690721312429&ei=IFzGZLzqGY2Z4-EP4JaAiAc&ved=0ahUKEwi8-vbZu7aAAxWNzDgGHWALAHEQ4dUDCA4&uact=5&oq=car&gs_lp=Egxnd3Mtd2l6LXNlcnAiA2NhcjIHECMYigUYJzIHECMYigUYJzIEECMYJzIHEAAYigUYQz', '44364c');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
