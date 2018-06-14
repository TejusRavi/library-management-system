-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2017 at 02:03 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `Get_books` ()  BEGIN
select * from add_books;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `add_books`
--

CREATE TABLE `add_books` (
  `id` int(5) NOT NULL,
  `books_name` varchar(50) NOT NULL,
  `books_image` varchar(500) NOT NULL,
  `books_author_name` varchar(50) NOT NULL,
  `books_publication_name` varchar(50) NOT NULL,
  `books_purchase_date` varchar(50) NOT NULL,
  `books_price` varchar(50) NOT NULL,
  `books_qty` varchar(50) NOT NULL,
  `available_qty` varchar(50) NOT NULL,
  `librarian_username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_books`
--

INSERT INTO `add_books` (`id`, `books_name`, `books_image`, `books_author_name`, `books_publication_name`, `books_purchase_date`, `books_price`, `books_qty`, `available_qty`, `librarian_username`) VALUES
(1, 'java', 'books_image/988bdb79c8d48e59914637085df62c48java7th.jpg', 'Herbert Schildt', 'Tata McGraw Hill', '01-11-2017', '750', '50', '50', 'abc'),
(2, 'control systems', 'books_image/54964fc1c841c3b04b6deb7fb1eef916control systems2ndEdition.jpg', 'Nagoor kani', 'RBA Publications', '21-09-2017', '360', '50', '50', 'admin'),
(3, 'mastering cloud computing', 'books_image/e71ae403b505580ea36a08308abb51edcloud computing.jpg', 'rajkumar bhuyya', 'mk publication', '22-08-2017', '530', '30', '29', 'admin'),
(5, 'digital electronics', 'books_image/cdc12f95dce5b2feefdd7cb32a070c0ddigi elect godsey.jpg', 'godsy', 'technical publications', '12-12-2015', '500', '35', '35', 'admin'),
(11, 'maths-4', 'books_image/d9a32ba219c09f1ea8a3905d132e7fd6ksc m4.jpg', 'ksc', 'shubas', '12-4-2016', '300', '33', '33', 'admin');

--
-- Triggers `add_books`
--
DELIMITER $$
CREATE TRIGGER `oollddss` AFTER INSERT ON `add_books` FOR EACH ROW BEGIN
INSERT INTO old_books VALUES(NEW.id,NEW.books_name,NEW.books_image,NEW.books_author_name,NEW.books_publication_name,NEW.books_purchase_date,NEW.books_price);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(5) NOT NULL,
  `enrollment_no` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `sem` varchar(10) NOT NULL,
  `comment` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `enrollment_no`, `name`, `sem`, `comment`) VALUES
(2, '1mj15is038', 'tejus', '5', 'qwertyuiopsdfghjk\r\n                                    '),
(3, '1mj15is039', 'varsha', '5', 'no java books available\r\n                                    '),
(4, '1mj15is022', 'sdfg', '5', 'sdefrtghyj\r\n                                    '),
(5, '1mj15is052', 'sandy', '5', 'wedrftgyhuji\r\n                                    '),
(6, '1mj15ch003', 'kupla', '5', 'qwertyuiopsdfghjklsdfghjkldfghj\r\n                                    '),
(7, '1mj15is008', 'aaliya', '5', 'qwertyuiop\r\n                                    '),
(8, '1mj15is030', 'sneha', '5', 'qwertyuiop\r\n                                    ');

-- --------------------------------------------------------

--
-- Table structure for table `issue_books`
--

CREATE TABLE `issue_books` (
  `id` int(5) NOT NULL,
  `student_enrollment` varchar(50) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `student_sem` varchar(50) NOT NULL,
  `student_contact` varchar(50) NOT NULL,
  `student_email` varchar(50) NOT NULL,
  `books_name` varchar(50) NOT NULL,
  `books_issue_date` varchar(50) NOT NULL,
  `books_return_date` varchar(50) NOT NULL,
  `student_username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue_books`
--

INSERT INTO `issue_books` (`id`, `student_enrollment`, `student_name`, `student_sem`, `student_contact`, `student_email`, `books_name`, `books_issue_date`, `books_return_date`, `student_username`) VALUES
(19, '1mj15is038', 'tejus ravi', '5', '9901766818', 'tejusgowda2197@gmail.com', 'java', '13/11/2017', '13/11/2017', ' teju'),
(20, '1mj15is038', 'tejus ravi', '5', '9901766818', 'tejusgowda2197@gmail.com', 'java', '13/11/2017', '17/11/2017', ' teju'),
(21, '1mj15is052', 'sandeep KM', '5', '9739301133', 'sandeepkote999@gmail.com', 'control systems', '15/11/2017', '15/11/2017', ' Sandy'),
(22, '1mj15ch003', 'anirudh  poojary', '5', '7760365658', 'anirudhbpoojary@gmail.com', 'control systems', '16/11/2017', '16/11/2017', ' kupla'),
(24, '1mj15is008', 'arbin taj', '5', '78952147', 'aliya@gmail.com', 'java', '17/11/2017', '17/11/2017', ' aaliya'),
(25, '1mj15is038', 'tejus ravi', '5', '9901766818', 'tejusgowda2197@gmail.com', 'java', '17/11/2017', '17/11/2017', ' teju'),
(26, '1mj15is030', 'sneha as', '5', '1234567890', 'sneha@gmail.com', 'maths-4', '25/11/2017', '25/11/2017', ' sneha'),
(27, '1mj15ml007', 'nikhil thomas', '5', '9686352148', 'nikhilthomas207@gmail.com', 'mastering cloud computing', '25/11/2017', '', ' NIKKI');

-- --------------------------------------------------------

--
-- Table structure for table `librarian_registration`
--

CREATE TABLE `librarian_registration` (
  `id` int(5) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `librarian_registration`
--

INSERT INTO `librarian_registration` (`id`, `firstname`, `lastname`, `username`, `password`, `email`, `contact`) VALUES
(1, 'abc', 'def', 'abc', 'def', 'abc@gmail.com', '1234512345'),
(2, 'admin', 'gowda', 'admin', 'admin', 'admin@mvjce.edu', '9901766818');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(5) NOT NULL,
  `susername` varchar(50) NOT NULL,
  `dusername` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `msg` varchar(500) NOT NULL,
  `read1` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `susername`, `dusername`, `title`, `msg`, `read1`) VALUES
(1, 'admin', 'teju', 'dsfgh', 'sdfgrthyju\r\n                                    ', 'y'),
(2, 'admin', 'Sandy', 'qwertyui', 'wertyuiop\r\n                                    ', 'y'),
(3, 'admin', 'kupla', 'date out ', 'return books on 21\r\n                                    ', 'y'),
(4, 'admin', 'aaliya', 'qwedrftghyjk', 'sdfrgthyj\r\n                                    ', 'y'),
(5, 'admin', 'sneha', 'qwertyuio', 'werfgthjmk,sdcfvbgn\r\n                                    ', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `old_books`
--

CREATE TABLE `old_books` (
  `id` int(5) NOT NULL,
  `books_name` varchar(50) NOT NULL,
  `books_image` varchar(500) NOT NULL,
  `books_author_name` varchar(50) NOT NULL,
  `books_publication_name` varchar(50) NOT NULL,
  `books_purchase_date` varchar(50) NOT NULL,
  `books_price` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `old_books`
--

INSERT INTO `old_books` (`id`, `books_name`, `books_image`, `books_author_name`, `books_publication_name`, `books_purchase_date`, `books_price`) VALUES
(1, 'java', 'books_image/988bdb79c8d48e59914637085df62c48java7th.jpg', 'Herbert Schildt', 'Tata McGraw Hill', '01-11-2017', '750'),
(2, 'control systems', 'books_image/54964fc1c841c3b04b6deb7fb1eef916control systems2ndEdition.jpg', 'Nagoor kani', 'RBA Publications', '21-09-2017', '360'),
(3, 'mastering cloud computing', 'books_image/e71ae403b505580ea36a08308abb51edcloud computing.jpg', 'rajkumar bhuyya', 'mk publication', '22-08-2017', '530'),
(5, 'digital electronics', 'books_image/cdc12f95dce5b2feefdd7cb32a070c0ddigi elect godsey.jpg', 'godsy', 'technical publications', '12-12-2015', '500'),
(11, 'maths-4', 'books_image/d9a32ba219c09f1ea8a3905d132e7fd6ksc m4.jpg', 'ksc', 'shubas', '12-4-2016', '300');

-- --------------------------------------------------------

--
-- Table structure for table `student_registration`
--

CREATE TABLE `student_registration` (
  `id` int(5) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `sem` varchar(50) NOT NULL,
  `enrollment` varchar(50) NOT NULL,
  `status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_registration`
--

INSERT INTO `student_registration` (`id`, `firstname`, `lastname`, `username`, `password`, `email`, `contact`, `sem`, `enrollment`, `status`) VALUES
(1, 'tejus', 'ravi', 'teju', '1234', 'tejusgowda2197@gmail.com', '9901766818', '5', '1mj15is038', 'yes'),
(5, 'sampreet', 'kumar', 'sampu', '121212', 'sampreet360@gmail.com', '1234567890', '5', '1mj15is026', 'yes'),
(6, 'nikhil', 'thomas', 'NIKKI', 'nik@1997', 'nikhilthomas207@gmail.com', '9686352148', '5', '1mj15ml007', 'yes'),
(7, 'varun', 'vishwanath', 'varun', '121212', 'varun@gmail.com', '12345612345', '5', '1mj15is040', 'yes'),
(8, 'pannaga', 'krishna ', 'krish', '9480', 'pannagakrishnaks@gmail.com', '8660191266', '5', '1mj15ec080', 'yes'),
(9, 'swarna ', 'reddy', 'giddu', '0391', 'swarna@gmail.com', '100', '5', '1mj15is036', 'yes'),
(10, 'ajay', 'kumar', 'ajay', '1234', 'ajay@gamil.com', '5911561', '5', '1mj15is003', 'yes'),
(11, 'karthik ', 'aj', 'karthik', '1111', 'karthik@gmail.com', '9977889977', '5', '1mj15is016', 'yes'),
(12, 'varsha', 'm r', 'pouts', '12345', 'varsha.m.r@gmail.com', '123123445', '5', '1mj15is039', 'yes'),
(13, 'bhavana', 'srihari', 'bavs', '1212', 'bav@gmail.com', '12321321', '5', '1mj15is015', 'yes'),
(14, 'sumir', 'ramesh', 'sumir', 'sumir55', 'sumirramesh3@gmail.com', '9741075760', '5', '1mj15ml016', 'yes'),
(15, 'chandhan', 'kamal', 'chandhu', 'chan', 'chandhu@gmail.com', '1234567890', '5', '1mj15is009', 'yes'),
(17, 'dheeraj', 'board', 'dheeraj', '112211', 'dhe@gmail.com', '123456789', '5', '1mj15is013', 'yes'),
(18, 'abc', 's', 'abc', '1234', 'lathass@gmail.com', '12345678', '5', '1mj14is045', 'yes'),
(19, 'sandeep', 'KM', 'Sandy', 'Sandylms', 'sandeepkote999@gmail.com', '9739301133', '5', '1mj15is052', 'yes'),
(20, 'anirudh ', 'poojary', 'kupla', 'kupla@123', 'anirudhbpoojary@gmail.com', '7760365658', '5', '1mj15ch003', 'yes'),
(21, 'arbin', 'taj', 'aaliya', 'aaloo', 'aliya@gmail.com', '78952147', '5', '1mj15is008', 'yes'),
(22, 'sneha', 'as', 'sneha', '121212', 'sneha@gmail.com', '1234567890', '5', '1mj15is030', 'yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_books`
--
ALTER TABLE `add_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issue_books`
--
ALTER TABLE `issue_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `librarian_registration`
--
ALTER TABLE `librarian_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `old_books`
--
ALTER TABLE `old_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_registration`
--
ALTER TABLE `student_registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_books`
--
ALTER TABLE `add_books`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `issue_books`
--
ALTER TABLE `issue_books`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `librarian_registration`
--
ALTER TABLE `librarian_registration`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `old_books`
--
ALTER TABLE `old_books`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `student_registration`
--
ALTER TABLE `student_registration`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
