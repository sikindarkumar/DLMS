-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2021 at 05:28 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_managment`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(25) NOT NULL,
  `pass` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `pass`) VALUES
(1, 'admin@gmail.com', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `bookpic` varchar(25) NOT NULL,
  `bookname` varchar(50) NOT NULL,
  `bookdetail` varchar(250) NOT NULL,
  `bookauthor` varchar(50) NOT NULL,
  `bookpub` varchar(25) NOT NULL,
  `branch` varchar(110) NOT NULL,
  `bookprice` varchar(25) NOT NULL,
  `bookquantity` varchar(25) NOT NULL,
  `bookava` int(11) NOT NULL,
  `bookrent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `bookpic`, `bookname`, `bookdetail`, `bookauthor`, `bookpub`, `branch`, `bookprice`, `bookquantity`, `bookava`, `bookrent`) VALUES
(1, 'letusc.jpg', 'Let Us C', 'Let Us C: Authentic guide to C programming language - 19th Edition.', 'Yashavant Kanetkar', 'BPB Publications', 'CS-IT', '299', '50', 50, 0),
(2, 'cprolan.jpg', 'The C Programming Language', 'The Second Edition of The C Programming Language The book enumerates the concepts related to C Programming language, as prescribed by ANSI standard.', ' Dennis Ritchie', 'Pearson Education India', 'CS-IT', '425', '25', 25, 0),
(3, 'letuscpp.jpg', 'Let Us C++', 'OOPs Concepts implement with C++', 'Yashavant Kanetkar', 'BPB Publications', 'CS-IT', '360', '50', 50, 0),
(4, 'cpp.jpg', 'The C++ Programming Language', 'The definitive book on C++ by the creator of C++, The C++ Programming Language teaches one of the most widely-used, general-purpose programming languages.', 'Bjarne Stroustrup', 'Pearson Education India', 'CS-IT', '1020', '25', 25, 0),
(5, 'corejava.jpg', 'Core Java: An Integrated Approach', 'Core Java: An Integrated Approach, New: Includes All Versions upto Java 8', 'Dr. R. Nageswara Rao', 'Dreamtech Press', 'CS-IT', '705', '50', 50, 0),
(6, 'webtech.jpg', 'Web Technologies: Black Book', 'This is the one-time reference book, written from the programmers point of view, containing hundreds of examples and covering nearly every aspect of various Web technologies, such as PHP, HTML, XML, AJAX, ASP.NET, Servlets, and JSP.', 'Kogent Learning Solutions Inc.', 'Dreamtech Press', 'CS-IT', '835', '50', 50, 0),
(7, 'corepython.png', 'Core Python Programming', 'This book covers all concepts in simple and easy to understand English. It helps to build logic, which becomes a stepping stone for programming.', 'Dr. R. Nageswara Rao', 'Dreamtech Press', 'CS-IT', '715', '50', 50, 0),
(8, 'coa.jpg', 'Computer Organization & Architecture', 'Computer Organization and Architecture, 11th Edition is about the structure and function of computers.', 'William Stallings', 'Pearson Education India', 'CS-IT', '790', '50', 50, 0),
(9, 'dsa.png', 'Data Structures and Algorithms Made Easy', 'Data Structures and Algorithms Made Easy - 5th Edition', 'Narasimha Karumanchi', 'Careermonk Publications', 'CS-IT', '580', '50', 50, 0),
(10, 'cci.jpg', 'Cracking the Coding Interview', 'Cracking the Coding Interview, 6th Edition is here to help you through this process, teaching you what you need to know and enabling you to perform at your very best.', 'Gayle Laakmann McDowell', 'CareerCup', 'CS-IT', '975', '25', 25, 0);
-- --------------------------------------------------------

--
-- Table structure for table `issuebook`
--

CREATE TABLE `issuebook` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `issuename` varchar(25) NOT NULL,
  `issuebook` varchar(50) NOT NULL,
  `issuetype` varchar(25) NOT NULL,
  `issuedays` int(11) NOT NULL,
  `issuedate` varchar(25) NOT NULL,
  `issuereturn` varchar(25) NOT NULL,
  `fine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issuebook`
--

INSERT INTO `issuebook` (`id`, `userid`, `issuename`, `issuebook`, `issuetype`, `issuedays`, `issuedate`, `issuereturn`, `fine`) VALUES


-- --------------------------------------------------------

--
-- Table structure for table `requestbook`
--

CREATE TABLE `requestbook` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `bookid` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `usertype` varchar(25) NOT NULL,
  `bookname` varchar(50) NOT NULL,
  `issuedays` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

CREATE TABLE `userdata` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `pass` varchar(25) NOT NULL,
  `type` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userdata`
--

INSERT INTO `userdata` (`id`, `name`, `email`, `pass`, `type`) VALUES
(1, 'Tarique Sir', 'tasir@gmail.com', '123', 'teacher'),
(2, 'Arbind Sir', 'arbindsir@gmail.com', '123', 'teacher'),
(3, 'Akshay Kumar', 'akshay@gmail.com', '123', 'student'),
(4, 'Aniket Singh', 'aniket@gmail.com', '123', 'student'),
(5, 'Sikindar Kumar', 'sikindar@gmail.com', '123', 'student'),
(6, 'Shubham Kumar', 'shubham@gmail.com', '123', 'student'),
(7, 'Kunal Ranjan', 'kunal@gmail.com', '123', 'student'),
(8, 'Amrit Raj', 'amrit@gmail.com', '123', 'student'),
(9, 'Aman Kumar', 'aman@gmail.com', '123', 'student'),
(10, 'Saurabh Kumar', 'saurabh@gmail.com', '123', 'student'),
(11, 'Sonali Kumari', 'sonali@gmail.com', '123', 'student');
--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issuebook`
--
ALTER TABLE `issuebook`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pk_fk` (`userid`);

--
-- Indexes for table `requestbook`
--
ALTER TABLE `requestbook`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pk_fk_book` (`bookid`),
  ADD KEY `pk_fk_users` (`userid`);

--
-- Indexes for table `userdata`
--
ALTER TABLE `userdata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `issuebook`
--
ALTER TABLE `issuebook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `requestbook`
--
ALTER TABLE `requestbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `userdata`
--
ALTER TABLE `userdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `issuebook`
--
ALTER TABLE `issuebook`
  ADD CONSTRAINT `pk_fk` FOREIGN KEY (`userid`) REFERENCES `userdata` (`id`);

--
-- Constraints for table `requestbook`
--

ALTER TABLE `requestbook`
  ADD CONSTRAINT `pk_fk_users` FOREIGN KEY (`userid`) REFERENCES `userdata` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;