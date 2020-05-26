-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2019 at 07:44 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `club`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `activity_add` (IN `activity_Id` INT(11), IN `activity_name` VARCHAR(255), IN `activity_description` TEXT, IN `activity_image` VARCHAR(255), IN `startDate` DATE, IN `endDate` DATE)  INSERT INTO activity (activity_Id, activity_name, activity_description, activity_image, startDate, endDate) VALUES (activity_Id, activity_name, activity_description, activity_image, startDate, endDate)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `activity_delete` (IN `activity_Id` INT(11), IN `activity_name` VARCHAR(255), IN `activity_description` TEXT, IN `activity_image` VARCHAR(255), IN `startDate` DATE, IN `endDate` DATE)  INSERT INTO activity (activity_Id, activity_name, activity_description, activity_image, startDate, endDate) VALUES (activity_Id, activity_name, activity_description, activity_image, startDate, endDate)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `activity_update` (IN `activity_Id` INT(11), IN `activity_name` VARCHAR(255), IN `activity_description` TEXT, IN `activity_image` VARCHAR(255), IN `startDate` DATE, IN `endDate` DATE)  INSERT INTO activity (activity_Id, activity_name, activity_description, activity_image, startDate, endDate) VALUES (activity_Id, activity_name, activity_description, activity_image, startDate, endDate)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertactivity` (`thisActivity` SMALLINT)  BEGIN
	SELECT 
		activity.activity_Id, 
		activity.activity_name, 
		activity.activity_description,
        activity.image,
        activity.startDate,
		member.user_Id
	FROM 
		activity INNER JOIN member ON
		activity.user_Id = member.user_Id
	WHERE 
		activity.activity_Id = thisActivity;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `member_delete` (IN `user_Id` INT(11), IN `username` VARCHAR(255), IN `password` VARCHAR(255), IN `role` INT(11), IN `fname` VARCHAR(255), IN `lname` VARCHAR(255))  INSERT INTO member (user_Id, username, password, role, fname, lname) VALUES (user_Id, username, password, role, fname, lname)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `member_insert` (IN `user_Id` INT(11), IN `username` VARCHAR(255), IN `password` VARCHAR(255), IN `role` INT(11), IN `fname` VARCHAR(255), IN `lname` VARCHAR(255))  INSERT INTO member (user_Id, username, password, role, fname, lname) VALUES (user_Id, username, password, role, fname, lname)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `member_update` (IN `user_Id` INT(11), IN `username` VARCHAR(255), IN `password` VARCHAR(255), IN `role` INT(11), IN `fname` VARCHAR(255), IN `lname` VARCHAR(255))  INSERT INTO member (user_Id, username, password, role, fname, lname) VALUES (user_Id, username, password, role, fname, lname)$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `activity_Id` int(11) NOT NULL,
  `activity_name` varchar(255) DEFAULT NULL,
  `user_Id` int(11) NOT NULL,
  `activity_description` text,
  `activity_image` varchar(255) DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`activity_Id`, `activity_name`, `user_Id`, `activity_description`, `activity_image`, `startDate`, `endDate`) VALUES
(1, 'Pencarian 3', 3, '                                                                                                                                          Pencarian Atlet\r\npada 20/09/2019\r\nbertempat di kompleks sukan \r\nmasa: 2 - 4 petang                                                                                                                                    ', '1.jpg', '2019-09-20', '2019-09-23'),
(5, 'Leadership', 3, '                                              <p>Leadership Camp<br></p>\r\npada 5/6/2019                                            ', '2.jpg', '2019-05-06', '2019-05-07'),
(7, 'Survey', 3, '                                                                                            <p>Survey<br></p>\r\nSila scan bar code di gambar tertera untuk menjawab survey kami. Kerjasama anda mat dialu-alukan.                                                                                        ', '3.jpg', '2019-05-03', '2019-05-04'),
(9, 'Electrorace fkekk', 3, '                                              <p>Electrorace</p>\r\nTarikh: 25/10/2019\r\nMasa: 8 - 11 pagi\r\nTempat : Laman Utama FKEKK\r\nYuran : RM 5.00                                            ', '5.jpg', '2019-10-25', '2019-10-26'),
(10, 'Electra Sublimation Tee', 3, 'Jualan T-Shirt Fkekk \r\nPreorder: Available size xs - 5xl order \r\n         before 1/10/2019\r\nHarga: RM 35\r\n', '6.jpg', '2019-10-01', '2019-10-03'),
(13, 'Sukan Antara Fakulti', 3, '<p>Sukan antara Fakulti</p>\r\nClub Kami mencari atlet dikalangan pelajar fkekk bagi bersama-sama menjayakan sukan antara fakulti. Jika berminat sila contact no yg tenter di poster.', '8.jpg', '2019-10-24', '2019-10-26'),
(14, 'Fkekk Fest', 3, '<p>Fkekk Fest</p>\r\nMasa: 24- 27 sept 2019\r\nTempat : Parking Kereta FKEKK\r\n\r\nTerdapat banyak acara dan gerai2 jualan yang ada. Jadi jom ramai-ramai memeriahkan acara ini.', '9.jpg', '2019-09-27', '2019-09-28'),
(15, 'Cornor Sale', 3, '<p>Cornor Sale</p>\r\nKadar sewa: 1/Hari RM 20\r\n            2/Hari RM 35\r\nTempat: Laman Utama FKEKK\r\nTarikh: 10/11/2019 - 11/11/2019\r\nMasa: 9- 4 petang', '10.jpg', '2019-11-11', '2019-11-13');

-- --------------------------------------------------------

--
-- Table structure for table `advisor`
--

CREATE TABLE `advisor` (
  `userid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advisor`
--

INSERT INTO `advisor` (`userid`, `username`, `password`, `avatar`) VALUES
(1, 'nurul ', '123', 'user1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `id` int(10) NOT NULL,
  `pname` varchar(2000) NOT NULL,
  `activity_Id` int(11) NOT NULL,
  `user_Id` int(11) NOT NULL,
  `pprice` float NOT NULL,
  `date` date NOT NULL,
  `year` int(10) NOT NULL,
  `month` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`id`, `pname`, `activity_Id`, `user_Id`, `pprice`, `date`, `year`, `month`) VALUES
(1, 'Mineral water and food package', 1, 1, 100, '2019-03-08', 2019, 'March'),
(2, 'club T-shirt', 5, 1, 300, '2019-04-10', 2019, 'April'),
(3, 'Booking tents', 7, 1, 150, '2019-06-10', 2019, 'Jun'),
(4, 'food and drink for AJK', 0, 1, 100, '2019-01-10', 2019, 'Jan'),
(5, 'goodies and certificate paper', 9, 1, 50, '2019-02-10', 2019, 'Feb'),
(6, 'drink', 10, 1, 33, '2019-05-09', 2019, 'May'),
(7, 'certificate paper and consolation prize', 0, 1, 100, '2019-04-07', 2019, 'April'),
(12, 'Drink and Food', 9, 1, 300, '2018-05-24', 2018, 'May'),
(10, 'Certificate Paper ', 5, 1, 34, '2018-02-04', 2018, 'Feb'),
(15, 'Food', 9, 1, 200, '2017-11-03', 2017, 'Nov'),
(16, 'T-shirt', 9, 1, 200, '2017-12-14', 2017, 'Dis'),
(17, 'Certificate Paper', 0, 1, 25, '2018-07-02', 2018, 'July'),
(18, 'Certificate Paper', 0, 1, 25, '2018-07-02', 2018, 'July'),
(35, 'Certificate Paper', 0, 1, 50, '2019-05-27', 0, ''),
(39, 'Certificate Paper', 5, 1, 12, '2019-07-16', 0, ''),
(40, 'Certificate Paper', 5, 1, 900, '2019-07-16', 0, ''),
(45, 'RT', 0, 1, 50, '2019-07-19', 0, ''),
(46, 'Food', 0, 1, 50, '2019-07-03', 0, ''),
(48, 'Food', 0, 1, 50, '2019-07-05', 0, ''),
(49, 'Certificate Paper', 0, 1, 50, '2019-07-04', 0, ''),
(50, 'Certificate Paper', 25, 1, 50, '2019-07-02', 0, ''),
(51, 'ter', 15, 2, 80, '2019-07-12', 0, ''),
(52, 'anah', 9, 2, 100, '2019-07-11', 0, ''),
(53, 'anah', 7, 2, 100, '2019-07-11', 0, ''),
(54, 'anah', 5, 2, 100, '2019-07-11', 0, ''),
(55, 'anah', 1, 2, 100, '2019-07-11', 0, ''),
(56, 'anah', 1, 2, 100, '2019-07-11', 0, ''),
(57, 'anah', 1, 2, 100, '2019-07-11', 0, ''),
(58, 'anah', 1, 2, 5000, '2019-07-11', 0, ''),
(59, 'Certificate Paper 4', 15, 2, 50, '2019-08-03', 0, '');

--
-- Triggers `expense`
--
DELIMITER $$
CREATE TRIGGER `expense_value` BEFORE INSERT ON `expense` FOR EACH ROW BEGIN
IF NEW.pprice > 1000 THEN 
SET NEW.pprice = 0; 
END IF;
end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `total_expense_insert` AFTER INSERT ON `expense` FOR EACH ROW UPDATE total SET
total_Income = ((
    SELECT SUM(tvalue)
    FROM income
    WHERE income.activity_Id = total.activity_Id)-
    (
    SELECT SUM(pprice)
    FROM expense
    WHERE expense.activity_Id = total.activity_Id))
WHERE total.activity_Id = new.activity_Id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `md5image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uploaded_on` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `common_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `scientific_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `md5image`, `file_name`, `uploaded_on`, `status`, `common_name`, `scientific_name`) VALUES
(68, 'dd4df7ce71ffec6226384cb2f38e1511', 'leafC.jpg', '2019-05-02 04:40:28', '1', '<br>Pencarian Atlet 2019</br>', '20/09/2019 - 21/09/2019'),
(69, '5036aadfdf0a14d8fee42a66de230f5c', '1.jpg', '2019-05-16 00:14:16', '1', '<br><b>Pencarian Atlet </b>', '<br><b>20 Sept  - 21 Sept 2019'),
(70, 'b00e6250959712d5e4e5a51cfeac75ad', '2.jpg', '2019-05-16 00:14:24', '1', '<br><b>Leadership Camp EcCESS', '<br><b>23 Feb - 24 Feb 2019'),
(71, '7e36a0d40303905a33858915677f48bf', '3.jpg', '2019-05-16 00:14:32', '1', '<br><b>Survey', '<br><b>13 April 2019 '),
(72, 'f1ebfe06550e39a9c988e035013906c6', '4.jpg', '2019-05-16 00:15:08', '1', '<br><b>Komplot Electra', '<br><b>7 Sept 2019'),
(73, 'ea24d29594dd99e54ed573af27579b6f', '5.jpg', '2019-05-16 00:15:14', '1', '<br><b>Electrorace', '<br><b>10 Oct - 11 Oct 2019'),
(74, '2acd364a278675d94294610eb3b251db', '6.jpg', '2019-05-16 00:15:20', '1', '<br><b>Electra Sublimation', '<br><b>21 Sept 2019'),
(75, 'b8fa1be3c938edb8daafd6cbb177218b', '7.jpg', '2019-05-16 00:15:26', '1', '<br><b>C++ ', '<br><b>5 May  - 6 May 2019'),
(76, '0b68ebcbce88241000d7c41aec6ae4cf', '8.jpg', '2019-05-16 00:15:31', '1', '<br><b>Team Manager', '<br><b>20 April 2019'),
(77, '31d80f9646f6244eedafb0b9c6032771', '9.jpg', '2019-05-16 00:15:37', '1', '<br><b>FKEKK FEST 2019', '<br><b>15 Apr - 17 Apr 2019'),
(78, '388e69a6670eedfbd057bb28e6db5e75', '10.jpg', '2019-05-16 00:15:46', '1', '<br><b>Corner Sale', '<br><b>9 Sept 2019');

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE `income` (
  `id` int(10) NOT NULL,
  `income` varchar(2000) NOT NULL,
  `activity_Id` int(11) NOT NULL,
  `user_Id` int(11) NOT NULL,
  `tvalue` float NOT NULL,
  `date` date NOT NULL,
  `year` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `income`
--

INSERT INTO `income` (`id`, `income`, `activity_Id`, `user_Id`, `tvalue`, `date`, `year`) VALUES
(1, 'Sponsor', 1, 1, 6000, '2018-03-10', 2018),
(2, 'Pocket Money', 5, 1, 1000, '2018-06-10', 2018),
(3, 'Sponsor', 7, 1, 1000, '2019-02-10', 2019),
(4, 'sponsor', 8, 1, 900, '2019-03-07', 2019),
(5, 'activtity', 9, 1, 300, '2019-04-07', 2019),
(6, 'activty', 10, 1, 33, '2019-05-07', 2019),
(16, 'club money', 12, 1, 200, '2019-06-08', 2019),
(25, 'club activity', 7, 1, 45, '2019-09-15', 2019),
(24, 'sponsor', 5, 1, 40, '2019-10-03', 2019),
(26, 'Club Activity', 14, 1, 400, '2017-09-03', 2017),
(27, 'Sponsor', 14, 1, 700, '2017-10-10', 2017),
(28, 'Pocket Money', 14, 1, 200, '2017-10-02', 2017),
(29, 'Sponsor', 9, 1, 5000, '2017-11-15', 2017),
(30, 'Sponsor', 9, 1, 200, '2017-12-15', 2017),
(31, 'Pocket Money', 12, 1, 150, '2018-08-04', 2018),
(32, 'Sponsor', 5, 1, 30, '2019-05-04', 2019),
(33, 'Sponsor', 8, 1, 30, '2019-05-27', 2019),
(35, 'sponsor', 1, 1, 100, '2019-09-08', 2019),
(36, 'club Money', 1, 1, 100, '2018-08-15', 2018),
(37, 'Registration Money', 1, 1, 100, '2017-09-08', 2017),
(38, 'Registration Money', 1, 1, 100, '2019-09-08', 2019),
(39, 'Registration Money', 1, 1, 1, '2017-09-08', 2017),
(40, 'sponsor', 5, 1, 90, '2017-09-08', 2017),
(42, 'Registration Money', 1, 1, 90, '2017-07-21', 2017),
(45, 'Club member Money', 5, 1, 30, '2018-07-05', 2018),
(46, 'Sponsor', 25, 1, 30, '2019-07-05', 2019),
(47, 'Sponsor', 25, 1, 30, '2019-07-05', 2019),
(48, 'money club', 25, 1, 30, '2019-07-12', 2019),
(49, 'money club', 25, 1, 67, '2017-07-12', 2017),
(50, 'Sponsor', 1, 1, 500, '2018-03-10', 2018),
(51, 'Pocket Money', 5, 1, 1000, '2018-06-10', 2018),
(52, 'Sponsor', 7, 1, 1000, '2019-02-10', 2019),
(53, 'sponsor', 8, 1, 900, '2019-03-07', 2019),
(54, 'activtity', 9, 1, 300, '2019-04-07', 2019),
(55, 'activty', 10, 1, 33, '2019-05-07', 2019),
(56, 'club money', 12, 1, 200, '2019-06-08', 2019),
(57, 'club activity', 7, 1, 45, '2019-09-15', 2019),
(58, 'sponsor', 5, 1, 40, '2019-10-03', 2019),
(59, 'Club Activity', 14, 1, 400, '2017-09-03', 2017),
(60, 'Sponsor', 14, 1, 700, '2017-10-10', 2017),
(61, 'Pocket Money', 14, 1, 200, '2017-10-02', 2017),
(62, 'Sponsor', 9, 1, 1000, '2017-11-15', 2017),
(63, 'Sponsor', 9, 1, 200, '2017-12-15', 2017),
(64, 'Pocket Money', 12, 1, 150, '2018-08-04', 2018),
(65, 'Sponsor', 5, 1, 30, '2017-05-04', 2017),
(66, 'Sponsor', 8, 1, 30, '2017-05-27', 2017),
(67, 'Registration Money', 1, 1, 100, '2017-09-08', 2017),
(68, 'Registration Money', 1, 1, 100, '2017-09-08', 2017),
(69, 'Registration Money', 1, 1, 100, '2019-09-08', 2019),
(70, 'Registration Money', 1, 1, 100, '2018-09-08', 2018),
(71, 'Sponsor', 1, 1, 1, '2017-09-08', 2017),
(72, 'Sponsor', 5, 1, 90, '2017-09-08', 2019),
(73, 'Sponsor', 1, 1, 90, '2017-07-21', 2017),
(74, 'Sponsor', 25, 12, 32, '2017-07-05', 2017),
(75, 'tt', 1, 1, 30, '2019-03-08', 2019),
(76, 'rr', 1, 1, 700, '2018-06-10', 2019),
(77, 'Sponsor', 25, 12, 32, '2019-07-05', 2019),
(78, 'Sponsor', 25, 12, 32, '2019-07-05', 2019),
(79, 'Sponsor', 25, 12, 32, '2018-07-05', 2018),
(80, 'Sponsor', 25, 12, 382, '2018-07-05', 2018),
(81, 'Sponsor', 25, 12, 888, '2018-07-05', 2018),
(82, 'Fund Money', 25, 12, 888, '2019-07-05', 2019),
(83, 'Sponsor', 1, 1, 50, '2018-03-10', 2018),
(84, 'Fund Money', 25, 1, 30, '2019-07-02', 2019),
(85, 'Fund Money', 1, 1, 90, '2019-07-21', 2019),
(86, 'Fund Money', 1, 1, 900, '2019-07-21', 2019),
(87, 'Fund Money', 1, 1, 90, '2017-07-21', 2017),
(88, 'Fund Money', 1, 1, 9, '2019-07-21', 2019),
(89, 'Fund Money', 25, 12, 888, '2017-07-05', 2017),
(15, 'Fund Money', 1, 1, 32, '2017-09-03', 2017),
(90, 'Fund Money', 25, 12, 888, '2019-07-05', 2019),
(91, 'buku buku', 1, 1, 45, '2017-09-03', 2019),
(92, 'Fund Money', 25, 12, 888, '2019-07-05', 2019),
(93, 'rerere', 1, 1, 33, '2019-05-15', 2019),
(94, 'buku', 25, 1, 30, '2019-07-02', 2019),
(95, 'buku', 25, 1, 30, '2019-07-02', 2019),
(96, 'yu', 2, 1, 89, '2018-03-10', 2019),
(97, 'yu', 2, 1, 89, '2018-03-10', 2019),
(98, 'yu', 2, 1, 89, '2018-03-10', 2019),
(99, 'ooo', 25, 1, 45, '2018-03-08', 2019),
(101, 'baru', 0, 1, 30, '2019-07-31', 2019),
(102, 'baru', 7, 1, 30, '2019-07-31', 2019),
(103, 'baru', 9, 1, 30, '2019-07-31', 2019),
(104, 'baru', 10, 1, 30, '2019-07-31', 2019),
(105, 'baru', 13, 1, 30, '2019-07-31', 2019),
(106, 'baru', 14, 1, 30, '2019-07-31', 2019),
(107, 'baru', 15, 1, 30, '2019-07-31', 2019),
(108, 'club registration', 15, 1, 1, '2019-07-05', 2017),
(109, 'club registration', 15, 1, 1, '2019-07-05', 2017),
(110, 'club registration', 14, 1, 1, '2019-07-05', 2017),
(111, 'club registration', 10, 1, 1, '2019-07-31', 2017),
(112, 'club registration', 10, 1, 1, '2019-07-31', 2017),
(113, 'club registration', 15, 1, 30, '2019-08-05', 2017),
(114, 'club registration', 15, 1, 30, '2019-08-05', 2017),
(115, 'money club', 1, 1, 1, '2019-08-04', 2017),
(116, 'money club', 1, 1, 1, '2019-08-04', 2019),
(117, 'money club', 1, 1, 1, '2019-08-04', 2019),
(118, 'money club', 1, 1, 1, '2019-08-04', 2019);

--
-- Triggers `income`
--
DELIMITER $$
CREATE TRIGGER `total_Income_insert` AFTER INSERT ON `income` FOR EACH ROW UPDATE total SET
total_Income = ((
    SELECT SUM(tvalue)
    FROM income
    WHERE income.activity_Id = total.activity_Id)-
    (
    SELECT SUM(pprice)
    FROM expense
    WHERE expense.activity_Id = total.activity_Id))
WHERE total.activity_Id = new.activity_Id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `list_member`
--

CREATE TABLE `list_member` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `list_member`
--

INSERT INTO `list_member` (`id`, `name`, `description`, `image`, `created`, `modified`) VALUES
(12345678, 'BENDAHARI CLUB ExcESS', '<ul style=\"margin:0px;padding:15px;\">\r\n				<li>NURUL ATIQAH BT RAIHAN</li>\r\n				<li>31//01/1996</li>\r\n				', 'user2.jpg', '2019-05-03 09:09:00', '2019-05-03 09:13:04'),
(12345680, 'SETIAUSAHA CLUB ExcESS', '<ul style=\"margin:0px;padding:15px;\">\r\n				<li>SARAH ALBADAD </li>\r\n				<li>1/03/1995</li>\r\n				', 'user1.jpg', '0000-00-00 00:00:00', '2019-01-18 22:13:04'),
(12345679, 'PRESIDEN CLUB ExcESS', '<ul style=\"margin:0px;padding:15px;\">\r\n				<li>MUHAMMAD ASYRAF BIN SAFFAR </li>\r\n				<li>11/09/1994</li>\r\n				', 'user3.jpg', '0000-00-00 00:00:00', '2019-01-18 22:13:04'),
(12345681, 'EXCO MULTIMEDIA CLUB ExcESS', '<ul style=\"margin:0px;padding:15px;\">\r\n				<li>AIMY NATASHA BT FUAD </li>\r\n				<li>24/03/1996</li>\r\n				', 'user4.jpg', '0000-00-00 00:00:00', '2019-01-18 22:13:04'),
(12345682, 'EXCO PROGRAM CLUB ExcESS', '<ul style=\"margin:0px;padd\r\n ing:15px;\">\r\n				<li>CHEN YONG QUAN </li>\r\n				<li>3/11/1997</li>\r\n				', 'user5.jpg', '0000-00-00 00:00:00', '2019-01-18 22:13:04');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `user_Id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact` int(1) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`user_Id`, `username`, `password`, `role`, `fname`, `lname`, `address`, `contact`, `email`) VALUES
(1, 'admin', 'admin', 1, 'nico', 'brigula', 'alangilan', 2147483647, 'nicobrigula4@gmail.com'),
(2, 'brigula', 'brigula', 3, 'Catherine', 'Cabalhin', 'Purokkk', 2147483647, 'catherinecabalhin55@gmail.com'),
(3, 'cathy', 'Cathy', 2, 'nico', 'brigula', 'alangilan', 2147483647, 'nicobrigula4@gmail.com'),
(5, 'fatanah', 'a1n2a3h4', 3, 'NUR FATANAH BINTI', 'DIN', 'BATU 19 1/2 JALAN DELI AWAL,', 136403665, 'nurfatanahbtmddin@gmail.com'),
(29, 'anah', 'anahnah', 2, 'NUR FATANAH BINTI', 'DIN', 'BATU 19 1/2 JALAN DELI AWAL,, KAMPUNG AYER LIMAU,', 12, 'nurfatanahbtmddin@gmail.com'),
(30, 'mimi', 'mimi', 2, 'mimi', 'mimi', 'BATU 19 1/2 JALAN DELI AWAL,, KAMPUNG AYER LIMAU,', 12, 'nurfatanahbtmddin@gmail.com'),
(31, 'Admin', 'Admin', 3, 'NUR FATANAH BINTI', 'DIN', 'BATU 19 1/2 JALAN DELI AWAL,, KAMPUNG AYER LIMAU,', 3333, 'nurfatanahbtmddin@gmail.com'),
(34, 'nurul', '123', 2, 'nurul', 'nurul', 'ddd 56', 345, 'nurfatanahbtmddin@gmail.com'),
(75, 'Admin', 'Admin', 2, 'aina', 'DIN', 'BATU 19 1/2 JALAN DELI AWAL,, KAMPUNG AYER LIMAU,', 77, 'nurfatanahbtmddin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `ratingId` int(11) NOT NULL,
  `itemId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `ratingNumber` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comments` text COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 = Block, 0 = Unblock'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`ratingId`, `itemId`, `userId`, `ratingNumber`, `title`, `comments`, `created`, `modified`, `status`) VALUES
(0, 12345678, 1, 5, 'bbb', 'nnn', '2019-05-05 12:22:48', '2019-05-05 12:22:48', 1),
(14, 12345678, 1, 2, 'its awesome', 'It\'s awesome!!!', '2018-08-19 09:13:01', '2018-08-19 09:13:01', 1),
(15, 12345679, 1, 5, 'Nice product', 'Really quality product!', '2018-08-19 09:13:37', '2018-08-19 09:13:37', 1),
(16, 12345680, 1, 1, 'best buy', 'its\'s best but item.', '2018-08-19 09:14:19', '2018-08-19 09:14:19', 1),
(17, 12345681, 1, 1, 'super awesome ', 'i think its supper products', '2018-08-19 09:18:00', '2018-08-19 09:18:00', 1),
(22, 12345682, 1, 1, 'adada', 'daDad', '2018-01-20 17:00:58', '2018-01-20 17:00:58', 1),
(23, 12345678, 1, 5, 'Nice product', 'this is nice!', '2019-01-20 17:01:37', '2019-01-20 17:01:37', 1),
(24, 12345679, 1, 1, 'really nice', 'Good!', '2019-01-20 21:06:48', '2019-01-20 21:06:48', 1),
(25, 12345680, 1, 5, 'jj', 'jjj', '2019-05-05 10:32:58', '2019-05-05 10:32:58', 1),
(38, 12345681, 1, 5, 'hardworking', 'teruskan usaha anda', '2019-05-05 11:09:14', '2019-05-05 11:09:14', 1),
(39, 12345682, 1, 1, 'kurang aktif', 'teruskan bergaul dengan rakan2 dan dapatkan ilmu sebanyak mungkin', '2019-05-05 11:10:34', '2019-05-05 11:10:34', 1),
(40, 12345678, 1, 5, 'DDD', 'HH', '2019-05-05 11:17:42', '2019-05-05 11:17:42', 1),
(0, 12345678, 1, 5, 'Best Peformance', 'Teruskan usaha anda', '2019-08-04 08:09:30', '2019-08-04 08:09:30', 1),
(0, 12345678, 1, 4, 'Best Peformance', 'kk', '2019-08-04 08:25:51', '2019-08-04 08:25:51', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_message`
--

CREATE TABLE `tbl_message` (
  `message_Id` int(11) NOT NULL,
  `sender_name` varchar(255) DEFAULT NULL,
  `sender_email` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_message`
--

INSERT INTO `tbl_message` (`message_Id`, `sender_name`, `sender_email`, `subject`, `message`) VALUES
(1, 'nico', 'nicobrigula4@gmail.com', 'food', 'namit'),
(2, 'Catherine', 'catherinecabalhin55@gmail.com', 'Menu', 'Delicious foods and Good Preparations of the Catering. Good job!'),
(3, 'NUR FATANAH BINTI MD DIN', 'nurfatanahbtmddin@gmail.com', 'bitd', 'chaiyok'),
(5, 'NUR FATANAH BINTI MD DIN', 'nurfatanahbtmddin@gmail.com', 'bitd', 'SSS');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_register`
--

CREATE TABLE `tbl_register` (
  `reg_Id` int(11) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact` int(1) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_register`
--

INSERT INTO `tbl_register` (`reg_Id`, `fname`, `lname`, `address`, `contact`, `email`) VALUES
(1, 'nico', 'brigula', 'alangilan', 2147483647, 'nicobrigula4@gmail.com'),
(2, 'Catherine', 'Cabalhin', 'Purok Paghida-et Brgy. Tangub Bacolod City', 2147483647, 'catherinecabalhin55@gmail.com'),
(3, 'nico', 'brigula', 'alangilan', 2147483647, 'nicobrigula4@gmail.com'),
(4, 'NUR FATANAH BINTI', 'DIN', 'BATU 19 1/2 JALAN DELI AWAL,', 136403665, 'nurfatanahbtmddin@gmail.com'),
(5, 'NUR FATANAH BINTI', 'DIN', 'BATU 19 1/2 JALAN DELI AWAL,', 136403665, 'nurfatanahbtmddin@gmail.com'),
(6, '', '', '', 0, ''),
(7, 'NUR FATANAH BINTI', 'DIN', 'BATU 19 1/2 JALAN DELI AWAL,, KAMPUNG AYER LIMAU,', 0, 'nurfatanahbtmddin@gmail.com'),
(8, 'NUR FATANAH BINTI', 'DIN', 'BATU 19 1/2 JALAN DELI AWAL,, KAMPUNG AYER LIMAU,', 0, 'nurfatanahbtmddin@gmail.com'),
(9, '', '', '', 0, ''),
(10, 'a', 'b', 'baaaaaa', 12, 'b@gmail.com'),
(11, 'NUR FATANAH BINTI', 'DIN', 'BATU 19 1/2 JALAN DELI AWAL,, KAMPUNG AYER LIMAU,', 0, 'nurfatanahbtmddin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_site_desc`
--

CREATE TABLE `tbl_site_desc` (
  `site_Id` int(11) NOT NULL,
  `site_title` varchar(255) DEFAULT NULL,
  `site_contact` int(11) DEFAULT NULL,
  `site_email` varchar(255) DEFAULT NULL,
  `site_desc` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_site_desc`
--

INSERT INTO `tbl_site_desc` (`site_Id`, `site_title`, `site_contact`, `site_email`, `site_desc`) VALUES
(1, 'FKEKK', 7011722, 'eccessclub@gmail.com', '                    <p style=\"text-align: justify;\"><span style=\"font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Faculty of Electronic and Computer Engineering (FKEKK) started its operation since the formation of Kolej Universiti Teknikal Kebangsaan Malaysia (KUTKM) in&nbsp;2001.&nbsp;FKEKK support teaching and learning in electronics, computer and telecommunication engineering field.&nbsp;</span><span id=\"more-27\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 14px; vertical-align: baseline; text-size-adjust: 100%; font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\"></span><span style=\"font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">It is located at main campus of Universiti Teknikal Malaysia Melaka (UTeM) in Durian Tunggal. FKEKK currently offers various undergraduate and postgraduate&nbsp;programmes&nbsp;including Diploma, Bachelor, Master and Doctorate degrees. FKEKKâ€™s&nbsp;first office is located at Taman Tasik Utama, Ayer Keroh, Melaka. At this point of time, the lectures and tutorials were all conducted at the shop houses and laboratories setup at Phase B. Among the course offerred at the faculty includes BENE, BENC and BENT..</span><br></p>                                                                                                                                                                                                                                                ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_Id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `reg_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_Id`, `username`, `password`, `role`, `reg_Id`) VALUES
(1, 'admin', 'admin', 1, NULL),
(2, 'brigula', 'brigula', 2, 1),
(3, 'Cathy', 'Cathy', 2, 2),
(5, 'fatanah', 'a1n2a3h4', 2, 4),
(6, 'fatanah', 'a1n2a3h4', 2, 6),
(7, 'admin', '123abc', 2, 4),
(8, 'nurfatanahbtmddin@gmail.com', 'a1n2a3h4', 2, 4),
(9, 'nurfatanahbtmddin@gmail.com', 'a1n2a3h4', 2, 6),
(10, 'nurul', 'nurul', 2, 10),
(11, 'admin', '123', 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `total`
--

CREATE TABLE `total` (
  `id` int(11) NOT NULL,
  `activity_Id` int(11) NOT NULL,
  `total_Income` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `total`
--

INSERT INTO `total` (`id`, `activity_Id`, `total_Income`) VALUES
(2, 1, 556146),
(3, 5, 180854),
(4, 7, 1870),
(6, 9, 6240),
(7, 10, 65),
(9, 14, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`activity_Id`);

--
-- Indexes for table `advisor`
--
ALTER TABLE `advisor`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_activity_Id` (`activity_Id`),
  ADD KEY `fk_user_Id` (`user_Id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income`
--
ALTER TABLE `income`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_activity_Id` (`activity_Id`),
  ADD KEY `fk_user_Id` (`user_Id`);

--
-- Indexes for table `list_member`
--
ALTER TABLE `list_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`user_Id`);

--
-- Indexes for table `tbl_message`
--
ALTER TABLE `tbl_message`
  ADD PRIMARY KEY (`message_Id`);

--
-- Indexes for table `tbl_register`
--
ALTER TABLE `tbl_register`
  ADD PRIMARY KEY (`reg_Id`);

--
-- Indexes for table `tbl_site_desc`
--
ALTER TABLE `tbl_site_desc`
  ADD PRIMARY KEY (`site_Id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_Id`);

--
-- Indexes for table `total`
--
ALTER TABLE `total`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `activity_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;
--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `user_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `tbl_message`
--
ALTER TABLE `tbl_message`
  MODIFY `message_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_register`
--
ALTER TABLE `tbl_register`
  MODIFY `reg_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tbl_site_desc`
--
ALTER TABLE `tbl_site_desc`
  MODIFY `site_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `total`
--
ALTER TABLE `total`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
