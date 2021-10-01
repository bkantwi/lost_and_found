-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2021 at 06:06 AM
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
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `nid` int(11) NOT NULL,
  `news_heading` varchar(500) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `news_status` int(11) NOT NULL DEFAULT 1,
  `news_date` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `news_image` text NOT NULL,
  `news_description` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`nid`, `news_heading`, `cat_id`, `news_status`, `news_date`, `phone`, `news_image`, `news_description`, `time`) VALUES
(7, 'Things Fall Apart', 3, 1, '09-16-2021', '', '2795-2021-09-30.jpg', '<p>Missing</p>\r\n', '2021-10-01 04:00:34'),
(12, 's', 3, 1, '09-01-2021', '32', '1049-2021-10-01.jpg', '<p>sdsf</p>\r\n', '2021-10-01 04:00:34'),
(13, 'dsfj', 3, 1, '10-02-2021', '3424352', '6223-2021-10-01.jpg', '<p>fsgsfgd</p>\r\n', '2021-10-01 04:00:34'),
(14, 'Some', 3, 1, '10-09-2021', '3243', '3992-2021-10-01.jpg', '<p>Somenew</p>\r\n', '2021-10-01 04:00:34'),
(15, 'jdsjnfjh', 3, 1, '10-02-2021', '23454567', '3387-2021-10-01.png', '<p>wrewtre</p>\r\n', '2021-10-01 04:00:34'),
(16, 'shdkfsn', 3, 1, '10-15-2021', '234354', '4036-2021-10-01.jpg', '<p>sfgdhgfh</p>\r\n', '2021-10-01 04:00:34'),
(17, 'sdfjrl', 3, 1, '10-13-2021', '324567', '0831-2021-10-01.jpg', '<p>rtrytgdf</p>\r\n', '2021-10-01 04:00:34'),
(18, 'sfgkn', 3, 1, '10-02-2021', '3456576', '8403-2021-10-01.jpg', '<p>fdgdsfa</p>\r\n', '2021-10-01 04:00:34'),
(19, 'fgdjk', 3, 1, '10-08-2021', '3435', '9950-2021-10-01.jpg', '<p>fhgdfsdgfhg</p>\r\n', '2021-10-01 04:00:34'),
(20, 'fgdfsda', 3, 1, '10-08-2021', '435678', '9023-2021-10-01.jpg', '<p>jhfgdfs</p>\r\n', '2021-10-01 04:00:34'),
(21, 'dsgdhgn', 3, 1, '10-20-2021', '2435465', '0100-2021-10-01.jpg', '<p>ghjhsre4</p>\r\n', '2021-10-01 04:02:07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news_category`
--

CREATE TABLE `tbl_news_category` (
  `cid` int(11) NOT NULL,
  `category_name` varchar(20) NOT NULL,
  `category_image` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_news_category`
--

INSERT INTO `tbl_news_category` (`cid`, `category_name`, `category_image`, `status`) VALUES
(3, 'Missing But Found', '3034-2020-08-24.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `id` int(11) NOT NULL,
  `app_name` varchar(255) NOT NULL,
  `app_logo` varchar(255) NOT NULL,
  `app_email` varchar(255) NOT NULL,
  `app_website` varchar(255) NOT NULL,
  `app_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `ID` int(11) NOT NULL,
  `Username` varchar(15) NOT NULL,
  `Password` text NOT NULL,
  `Email` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`ID`, `Username`, `Password`, `Email`) VALUES
(1, 'admin', '763110526e3093e4b6cfcbc7fc569adee8d51923b03410899733384f28b9f752', 'admin@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`nid`);

--
-- Indexes for table `tbl_news_category`
--
ALTER TABLE `tbl_news_category`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_news_category`
--
ALTER TABLE `tbl_news_category`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
