-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2021 at 08:58 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `username` varchar(100) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`username`, `image`) VALUES
('satyam', 'upload/image/satyam/wp5480705-ganpati-bappa-hd-desktop-wallpapers.jpg'),
('satyam', 'upload/image/satyam/ganpati.jpg'),
('satyam', 'upload/image/satyam/sonika-agarwal-oDmQkXyzzfE-unsplash.jpg'),
('satyam', 'upload/image/satyam/sonika-agarwal-oDmQkXyzzfE-unsplash.jpg'),
('satyam', 'upload/image/satyam/sonika-agarwal-oDmQkXyzzfE-unsplash.jpg'),
('satyam kumar', 'upload/image/satyam kumar/sonika-agarwal-oDmQkXyzzfE-unsplash.jpg'),
('satyam kumar aditya', 'upload/image/satyam kumar aditya/sonika-agarwal-oDmQkXyzzfE-unsplash.jpg'),
('hiiu', 'upload/image/hiiu/ganpati.jpg'),
('rqr', 'upload/image/rqr/wp5480705-ganpati-bappa-hd-desktop-wallpapers.jpg'),
('adi', 'upload/image/adi/wp5480705-ganpati-bappa-hd-desktop-wallpapers.jpg'),
('saty', 'upload/image/saty/ganpati.jpg'),
('sat', 'upload/image/sat/ganpati.jpg'),
('sat1', 'upload/image/sat1/1.jpg'),
('sat1', 'upload/image/sat1/bharat-gas-booking.jpg'),
('sat1', 'upload/image/sat1/chechListView.png'),
('sat1', 'upload/image/sat1/1.jpg'),
('sat1', 'upload/image/sat1/bharat-gas-booking.jpg'),
('sat1', 'upload/image/sat1/chechListView.png'),
('hello', 'upload/image/hello/dog2.jpg'),
('hello', 'upload/image/hello/lion_dog.jpg'),
('hello', 'upload/image/hello/mindful2-practice_2500-1600x900.jpg'),
('hello', 'upload/image/hello/productivity.jpg'),
('hello', 'upload/image/hello/R&D.jpg'),
('hello1', 'upload/image/hello1/dog2.jpg'),
('hello1', 'upload/image/hello1/lion_dog.jpg'),
('hello1', 'upload/image/hello1/mindful2-practice_2500-1600x900.jpg'),
('hello1', 'upload/image/hello1/productivity.jpg'),
('hello1', 'upload/image/hello1/R&D.jpg'),
('helloworld', 'upload/image/helloworld/dog2.jpg'),
('helloworld', 'upload/image/helloworld/lion_dog.jpg'),
('helloworld', 'upload/image/helloworld/mindful2-practice_2500-1600x900.jpg'),
('helloworld', 'upload/image/helloworld/productivity.jpg'),
('helloworld', 'upload/image/helloworld/R&D.jpg'),
('anish', 'upload/image/anish/lion_dog.jpg'),
('anish', 'upload/image/anish/mindful2-practice_2500-1600x900.jpg'),
('anish', 'upload/image/anish/productivity.jpg'),
('anish', 'upload/image/anish/R&D.jpg'),
('anish', 'upload/image/anish/third_to-do.jpg'),
('satyamKumarAditya', 'upload/image/satyamKumarAditya/1.jpg'),
('satyamKumarAditya', 'upload/image/satyamKumarAditya/bharat-gas-booking.jpg'),
('satyamKumarAditya', 'upload/image/satyamKumarAditya/dog2.jpg'),
('satyamKumarAditya', 'upload/image/satyamKumarAditya/lion_dog.jpg'),
('satyamKumarAditya', 'upload/image/satyamKumarAditya/1.jpg'),
('satyamKumarAditya', 'upload/image/satyamKumarAditya/bharat-gas-booking.jpg'),
('satyamKumarAditya', 'upload/image/satyamKumarAditya/dog2.jpg'),
('satyamKumarAditya', 'upload/image/satyamKumarAditya/lion_dog.jpg'),
('satyamKumarAditya11', 'upload/image/satyamKumarAditya11/1.jpg'),
('satyamKumarAditya11', 'upload/image/satyamKumarAditya11/bharat-gas-booking.jpg'),
('satyamKumarAditya11', 'upload/image/satyamKumarAditya11/dog2.jpg'),
('satyamKumarAditya11', 'upload/image/satyamKumarAditya11/lion_dog.jpg'),
('satyam01', 'upload/image/satyam01/dog2.jpg'),
('satyam01', 'upload/image/satyam01/lion_dog.jpg'),
('satyam01', 'upload/image/satyam01/mindful2-practice_2500-1600x900.jpg'),
('satyam01', 'upload/image/satyam01/productivity.jpg'),
('satyam kumar aditya', 'upload/image/satyam kumar aditya/1.jpg'),
('satyam kumar aditya', 'upload/image/satyam kumar aditya/bharat-gas-booking.jpg'),
('satyam kumar aditya', 'upload/image/satyam kumar aditya/chechListView.png'),
('keshri', 'upload/image/keshri/1.jpg'),
('keshri', 'upload/image/keshri/bharat-gas-booking.jpg'),
('keshri', 'upload/image/keshri/chechListView.png'),
('keshri nandan', 'upload/image/keshri nandan/1.jpg'),
('keshri nandan', 'upload/image/keshri nandan/bharat-gas-booking.jpg'),
('keshri nandan', 'upload/image/keshri nandan/chechListView.png'),
('ankur patel', 'upload/image/ankur patel/1.jpg'),
('ankur patel', 'upload/image/ankur patel/bharat-gas-booking.jpg'),
('ankur patel', 'upload/image/ankur patel/chechListView.png');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `username` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `pass` varchar(45) DEFAULT NULL,
  `dob` varchar(10) DEFAULT NULL,
  `mobile` int(10) DEFAULT NULL,
  `optionalemail` varchar(45) DEFAULT NULL,
  `optionalmobile` int(11) DEFAULT NULL,
  `add1` varchar(255) DEFAULT NULL,
  `add2` varchar(255) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `pdf` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`username`, `email`, `pass`, `dob`, `mobile`, `optionalemail`, `optionalmobile`, `add1`, `add2`, `city`, `state`, `reason`, `pdf`) VALUES
('ankur patel', 'abcdemo@gmail.com', '$2y$10$8sTSH5VFtNfWApF9IUnaJe.Gq2QXgEXe3LAtco', '1998-12-31', 2147483647, 'sklic@gmail.com', 2147483647, 'vapi', 'surat', 'vapi', 'gujrat', 'wanted to join because i m fresser', 'upload/pdf/Bubbler-Template-Showeet(standard).pptx'),
('keshri', 'ab@gmail.com', '$2y$10$KNy2lKHXjS3r65dQO1skK.2Q4c8WaI8QThYcW6', '1998-12-31', 2147483647, 'sklic@gmail.com', 2147483647, 'vapi', 'surat', 'vapi', 'gujrat', 'wanted to join because i m fresser', 'upload/pdf/Bubbler-Template-Showeet(standard).pptx'),
('keshri nandan', 'abcdemo@gmail.com', '$2y$10$kMptHuLy9V6ZP6tB8Ae6Gegc2FL8SY9hBgp.Lj', '1998-12-31', 2147483647, 'sklic@gmail.com', 2147483647, 'vapi', 'surat', 'vapi', 'gujrat', 'wanted to join because i m fresser', 'upload/pdf/Bubbler-Template-Showeet(standard).pptx'),
('satyam kumar aditya', 'abcdef@gmail.com', '$2y$10$Ab6q926sNDybmhkgH7l1ieDHFbtqa9iod.8YDV', '1998-12-31', 2147483647, 'sklic@gmail.com', 2147483647, 'baroda', 'surat', 'surat', 'gujrat', 'wanted to join because i m fresser', 'upload/pdf/Bubbler-Template-Showeet(standard).pptx'),
('satyam01', 'abcd@gmail.com', '$2y$10$7NXkSbNhXjzYfXHIbajPI.FmccwtbY3sktaShf', '1998-12-31', 2147483647, 'sklic@gmail.com', 2147483647, 'baroda', 'baroda', 'baroda', 'gujrat', 'wanted to join because i m fresser', 'upload/pdf/Bubbler-Template-Showeet(standard).pptx');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`username`,`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
