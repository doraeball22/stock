-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2017 at 11:13 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stock`
--

-- --------------------------------------------------------

--
-- Table structure for table `po_detail`
--

CREATE TABLE `po_detail` (
  `TotalPay` float NOT NULL,
  `Status` varchar(1) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `PO_ID` char(5) NOT NULL,
  `Product_ID` int(5) NOT NULL,
  `created_date` date NOT NULL,
  `updated_date` date NOT NULL,
  `PO_OutDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `po_detail`
--

INSERT INTO `po_detail` (`TotalPay`, `Status`, `Quantity`, `PO_ID`, `Product_ID`, `created_date`, `updated_date`, `PO_OutDate`) VALUES
(438, '', 2, '1', 3, '0000-00-00', '0000-00-00', '0000-00-00'),
(44, '', 1, '1', 5, '0000-00-00', '0000-00-00', '0000-00-00'),
(376, '', 4, '10', 2, '0000-00-00', '0000-00-00', '0000-00-00'),
(435, '', 3, '10', 4, '0000-00-00', '0000-00-00', '0000-00-00'),
(435, '', 3, '11', 4, '0000-00-00', '0000-00-00', '0000-00-00'),
(94, '', 1, '14', 2, '0000-00-00', '0000-00-00', '0000-00-00'),
(290, '', 2, '14', 4, '0000-00-00', '0000-00-00', '0000-00-00'),
(282, '', 3, '15', 2, '0000-00-00', '0000-00-00', '0000-00-00'),
(290, '', 2, '15', 4, '0000-00-00', '0000-00-00', '0000-00-00'),
(658, '', 8, '16', 2, '0000-00-00', '0000-00-00', '0000-00-00'),
(435, '', 3, '16', 4, '0000-00-00', '0000-00-00', '0000-00-00'),
(234, '', 3, '2', 6, '0000-00-00', '0000-00-00', '0000-00-00'),
(159, '', 1, '2', 7, '0000-00-00', '0000-00-00', '0000-00-00'),
(608, '', 4, '2', 8, '0000-00-00', '0000-00-00', '0000-00-00'),
(376, '', 4, '3', 2, '0000-00-00', '0000-00-00', '0000-00-00'),
(290, '', 2, '3', 4, '0000-00-00', '0000-00-00', '0000-00-00'),
(290, '', 2, '4', 1, '0000-00-00', '0000-00-00', '0000-00-00'),
(219, '', 1, '4', 3, '0000-00-00', '0000-00-00', '0000-00-00'),
(438, '', 2, '5', 3, '0000-00-00', '0000-00-00', '0000-00-00'),
(44, '', 1, '5', 5, '0000-00-00', '0000-00-00', '0000-00-00'),
(145, '', 1, '6', 4, '0000-00-00', '0000-00-00', '0000-00-00'),
(188, '', 2, '7', 2, '0000-00-00', '0000-00-00', '0000-00-00'),
(435, '', 3, '7', 4, '0000-00-00', '0000-00-00', '0000-00-00'),
(145, '', 1, '8', 1, '0000-00-00', '0000-00-00', '0000-00-00'),
(438, '', 2, '8', 3, '0000-00-00', '0000-00-00', '0000-00-00'),
(657, '', 3, '9', 3, '0000-00-00', '0000-00-00', '0000-00-00'),
(44, '', 1, '9', 5, '0000-00-00', '0000-00-00', '0000-00-00'),
(376, '', 4, '<br /', 2, '0000-00-00', '0000-00-00', '0000-00-00'),
(435, '', 3, '<br /', 4, '0000-00-00', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Product_ID` int(5) NOT NULL,
  `Product_Name` varchar(50) NOT NULL,
  `Product_Brand` varchar(100) NOT NULL,
  `Price` float NOT NULL,
  `Unit` varchar(30) NOT NULL,
  `Numstock` int(11) NOT NULL,
  `SafetyStock` int(11) NOT NULL,
  `ExpDate` date NOT NULL,
  `Status` varchar(1) NOT NULL,
  `Wholesalers_ID` int(5) NOT NULL,
  `ProductType_ID` char(5) NOT NULL,
  `created_date` date NOT NULL,
  `updated_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Product_ID`, `Product_Name`, `Product_Brand`, `Price`, `Unit`, `Numstock`, `SafetyStock`, `ExpDate`, `Status`, `Wholesalers_ID`, `ProductType_ID`, `created_date`, `updated_date`) VALUES
(1, 'พนมรุ้ง ข้าวขาวหอมมะลิ 100% ขนาด 5 กิโลกรัม', '', 145, 'ถุง', 1, 5, '2017-03-16', '', 2, '1', '0000-00-00', '0000-00-00'),
(2, 'เฮโร่ แยม รสสตรอเบอร์รี่ ขนาด 340 กรัม', '', 94, 'ขวด', 92, 10, '2017-03-16', '', 1, '1', '0000-00-00', '0000-00-00'),
(3, 'พีนัตบัตเตอร์แอนด์โค ผลิตภัณฑ์สำหรับทาขนมปัง ไมท์ต', '', 219, 'กระปุก', 43, 10, '2017-03-16', '', 2, '1', '0000-00-00', '0000-00-00'),
(4, 'มรกต น้ำมันปาล์ม 0.25 ลิตร แพ็ค 12', '', 145, '1 แพ็ค/12 ขวด', 55, 10, '2017-03-16', '', 1, '1', '0000-00-00', '0000-00-00'),
(5, 'ไฮยีน น้ำยาปรับผ้านุ่ม 650 มล. สีแดง แพ็ค 3', '', 44, '1 แพ็ค/3 ถุง', 43, 10, '2017-03-15', '', 2, '6', '0000-00-00', '0000-00-00'),
(6, 'ยูเอฟซี เงาะในน้ำเชื่อม ขนาด 565 กรัม', '', 78, 'กระป๋อง', 2, 8, '2017-04-26', '', 3, '1', '0000-00-00', '0000-00-00'),
(7, 'บะหมี่กึ่งสำเร็จรูป นองชิม รสเผ็ด (155 ก.)', '', 159, 'ถุง', 43, 6, '2017-04-26', '', 3, '1', '0000-00-00', '0000-00-00'),
(8, 'ดินสอดำ มิตซูบิชิ PK50 A', '', 152, 'กล่อง', 2, 5, '1970-01-01', '', 3, '8', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `ProductType_ID` char(5) NOT NULL,
  `ProductType_Name` varchar(100) NOT NULL,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`ProductType_ID`, `ProductType_Name`, `created_date`, `updated_date`) VALUES
('1', 'อาหาร', '0000-00-00', '0000-00-00'),
('2', 'เครื่องดื่ม', '0000-00-00', '0000-00-00'),
('3', 'ขนมขบเคี้ยวและลูกอม', '0000-00-00', '0000-00-00'),
('4', 'สุขภาพและความงาม', '0000-00-00', '0000-00-00'),
('5', 'แม่และเด็ก', '0000-00-00', '0000-00-00'),
('6', 'ของใช้ครัวเรือน', '0000-00-00', '0000-00-00'),
('7', 'เครื่องใช้ไฟฟ้า', '0000-00-00', '0000-00-00'),
('8', 'อุปกรณ์เครื่องเขียน', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `purchaseorder`
--

CREATE TABLE `purchaseorder` (
  `PO_ID` char(5) NOT NULL,
  `Status` varchar(1) NOT NULL,
  `created_date` date NOT NULL,
  `updated_date` date NOT NULL,
  `UserID` int(5) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `PO_OutDate` date NOT NULL,
  `receiveDate` date NOT NULL,
  `Wholesalers_ID` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `purchaseorder`
--

INSERT INTO `purchaseorder` (`PO_ID`, `Status`, `created_date`, `updated_date`, `UserID`, `Name`, `PO_OutDate`, `receiveDate`, `Wholesalers_ID`) VALUES
('1', '1', '0000-00-00', '0000-00-00', 43, 'ผู้จัดการเก๋', '2017-03-27', '2017-04-27', 2),
('10', '1', '0000-00-00', '0000-00-00', 43, 'ผู้จัดการเก๋', '2017-04-27', '2017-04-27', 1),
('11', '1', '0000-00-00', '0000-00-00', 43, 'ผู้จัดการเก๋', '2017-04-27', '2017-04-27', 1),
('14', '1', '0000-00-00', '0000-00-00', 43, 'ผู้จัดการเก๋', '2017-04-27', '2017-04-27', 1),
('15', '1', '0000-00-00', '0000-00-00', 43, 'ผู้จัดการเก๋', '2017-04-27', '2017-04-27', 1),
('16', '1', '0000-00-00', '0000-00-00', 43, 'ผู้จัดการเก๋', '2017-04-27', '2017-04-27', 1),
('2', '2', '0000-00-00', '0000-00-00', 43, 'ผู้จัดการเก๋', '2017-03-27', '0000-00-00', 3),
('3', '1', '0000-00-00', '0000-00-00', 43, 'ผู้จัดการเก๋', '2017-04-25', '2017-04-27', 1),
('4', '0', '0000-00-00', '0000-00-00', 43, 'ผู้จัดการเก๋', '2017-03-29', '0000-00-00', 2),
('5', '0', '0000-00-00', '0000-00-00', 43, 'ผู้จัดการเก๋', '2017-04-22', '0000-00-00', 2),
('6', '1', '0000-00-00', '0000-00-00', 43, 'ผู้จัดการเก๋', '2017-04-26', '2017-04-27', 1),
('7', '0', '0000-00-00', '0000-00-00', 43, 'ผู้จัดการเก๋', '2017-03-27', '0000-00-00', 1),
('8', '1', '0000-00-00', '0000-00-00', 43, 'ผู้จัดการเก๋', '2017-04-23', '0000-00-00', 2),
('9', '0', '0000-00-00', '0000-00-00', 43, 'ผู้จัดการเก๋', '2017-04-24', '0000-00-00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `requisition`
--

CREATE TABLE `requisition` (
  `Requisition_ID` int(5) NOT NULL,
  `Requisition_Date` date NOT NULL,
  `Status` varchar(10) NOT NULL,
  `UserID` int(5) NOT NULL,
  `DeliveryDate` date DEFAULT NULL,
  `Name` varchar(30) NOT NULL,
  `created_date` date NOT NULL,
  `updated_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `requisition`
--

INSERT INTO `requisition` (`Requisition_ID`, `Requisition_Date`, `Status`, `UserID`, `DeliveryDate`, `Name`, `created_date`, `updated_date`) VALUES
(1, '2017-02-27', '1', 42, '2017-04-27', 'พนักงานปุ๋ม', '0000-00-00', '0000-00-00'),
(2, '2017-03-27', '2', 42, '0000-00-00', 'พนักงานปุ๋ม', '0000-00-00', '0000-00-00'),
(3, '2017-04-23', '1', 42, '2017-04-23', 'พนักงานปุ๋ม', '0000-00-00', '0000-00-00'),
(4, '2017-04-24', '1', 42, '2017-04-24', 'พนักงานปุ๋ม', '0000-00-00', '0000-00-00'),
(5, '2017-04-25', '1', 42, '2017-04-25', 'พนักงานปุ๋ม', '0000-00-00', '0000-00-00'),
(6, '2017-04-26', '1', 42, '2017-04-26', 'พนักงานปุ๋ม', '0000-00-00', '0000-00-00'),
(7, '2017-04-26', '1', 42, '2017-04-27', 'พนักงานปุ๋ม', '0000-00-00', '0000-00-00'),
(8, '2017-04-27', '1', 42, '2017-04-27', 'พนักงานปุ๋ม', '0000-00-00', '0000-00-00'),
(12, '2017-04-27', '1', 42, '2017-04-27', 'พนักงานปุ๋ม', '0000-00-00', '0000-00-00'),
(13, '2017-04-27', '1', 42, '2017-04-27', 'พนักงานปุ๋ม', '0000-00-00', '0000-00-00'),
(14, '2017-04-27', '0', 42, '0000-00-00', 'พนักงานปุ๋ม', '0000-00-00', '0000-00-00'),
(15, '2017-04-27', '0', 42, '0000-00-00', 'พนักงานปุ๋ม', '0000-00-00', '0000-00-00'),
(16, '2017-05-09', '0', 42, '0000-00-00', 'พนักงานปุ๋ม', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `requisition_detail`
--

CREATE TABLE `requisition_detail` (
  `Number_Req` int(11) NOT NULL,
  `TotalPay` float NOT NULL,
  `Product_ID` char(5) NOT NULL,
  `created_date` date NOT NULL,
  `updated_date` date NOT NULL,
  `Requisition_ID` int(5) NOT NULL,
  `Requisition_Date` date NOT NULL,
  `status` varchar(10) CHARACTER SET utf8 NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `requisition_detail`
--

INSERT INTO `requisition_detail` (`Number_Req`, `TotalPay`, `Product_ID`, `created_date`, `updated_date`, `Requisition_ID`, `Requisition_Date`, `status`) VALUES
(3, 657, '3', '0000-00-00', '0000-00-00', 2, '0000-00-00', '0'),
(2, 88, '5', '0000-00-00', '0000-00-00', 2, '0000-00-00', '0'),
(1, 152, '8', '0000-00-00', '0000-00-00', 2, '0000-00-00', '0'),
(3, 282, '2', '0000-00-00', '0000-00-00', 1, '0000-00-00', '0'),
(2, 290, '4', '0000-00-00', '0000-00-00', 1, '0000-00-00', '0'),
(2, 318, '7', '0000-00-00', '0000-00-00', 1, '0000-00-00', '0'),
(3, 435, '1', '0000-00-00', '0000-00-00', 4, '0000-00-00', '0'),
(43, 4042, '2', '0000-00-00', '0000-00-00', 4, '0000-00-00', '0'),
(2, 290, '4', '0000-00-00', '0000-00-00', 4, '0000-00-00', '0'),
(2, 290, '4', '0000-00-00', '0000-00-00', 5, '0000-00-00', '0'),
(1, 78, '6', '0000-00-00', '0000-00-00', 5, '0000-00-00', '0'),
(3, 282, '2', '0000-00-00', '0000-00-00', 6, '0000-00-00', '0'),
(1, 44, '5', '0000-00-00', '0000-00-00', 6, '0000-00-00', '0'),
(1, 145, '1', '0000-00-00', '0000-00-00', 7, '0000-00-00', '0'),
(2, 188, '2', '0000-00-00', '0000-00-00', 7, '0000-00-00', '0'),
(3, 657, '3', '0000-00-00', '0000-00-00', 7, '0000-00-00', '0'),
(4, 580, '4', '0000-00-00', '0000-00-00', 7, '0000-00-00', '0'),
(5, 220, '5', '0000-00-00', '0000-00-00', 7, '0000-00-00', '0'),
(7, 546, '6', '0000-00-00', '0000-00-00', 7, '0000-00-00', '0'),
(5, 795, '7', '0000-00-00', '0000-00-00', 7, '0000-00-00', '0'),
(8, 1216, '8', '0000-00-00', '0000-00-00', 7, '0000-00-00', '0'),
(4, 376, '2', '0000-00-00', '0000-00-00', 8, '0000-00-00', '0'),
(3, 657, '3', '0000-00-00', '0000-00-00', 8, '0000-00-00', '0'),
(3, 657, '3', '0000-00-00', '0000-00-00', 12, '0000-00-00', '0'),
(2, 318, '7', '0000-00-00', '0000-00-00', 12, '0000-00-00', '0'),
(3, 435, '1', '0000-00-00', '0000-00-00', 13, '0000-00-00', '0'),
(5, 470, '2', '0000-00-00', '0000-00-00', 13, '0000-00-00', '0'),
(5, 1095, '3', '0000-00-00', '0000-00-00', 13, '0000-00-00', '0'),
(4, 376, '2', '0000-00-00', '0000-00-00', 14, '0000-00-00', '0'),
(6, 870, '4', '0000-00-00', '0000-00-00', 14, '0000-00-00', '0'),
(7, 1015, '4', '0000-00-00', '0000-00-00', 15, '0000-00-00', '0'),
(4, 312, '6', '0000-00-00', '0000-00-00', 15, '0000-00-00', '0'),
(3, 435, '1', '0000-00-00', '0000-00-00', 16, '0000-00-00', '0'),
(2, 438, '3', '0000-00-00', '0000-00-00', 16, '0000-00-00', '0');

-- --------------------------------------------------------

--
-- Table structure for table `returnoder`
--

CREATE TABLE `returnoder` (
  `ReturnOder_ID` int(5) NOT NULL,
  `ReturnDate` date NOT NULL,
  `UserID` int(5) NOT NULL,
  `created_date` date NOT NULL,
  `updated_date` date NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `Position` varchar(10) NOT NULL,
  `Wholesalers_ID` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `returnoder`
--

INSERT INTO `returnoder` (`ReturnOder_ID`, `ReturnDate`, `UserID`, `created_date`, `updated_date`, `Name`, `Status`, `Position`, `Wholesalers_ID`) VALUES
(5, '2017-03-27', 42, '0000-00-00', '0000-00-00', 'พนักงานปุ๋ม', '1', 'พนักงาน', NULL),
(6, '2017-03-25', 43, '0000-00-00', '0000-00-00', 'ผู้จัดการเก๋', '2', 'ผู้จัดการ', 1),
(7, '2017-03-22', 43, '0000-00-00', '0000-00-00', 'ผู้จัดการเก๋', '0', 'ผู้จัดการ', 1),
(8, '2017-04-23', 43, '0000-00-00', '0000-00-00', 'ผู้จัดการเก๋', '0', 'ผู้จัดการ', 1),
(9, '2017-04-24', 43, '0000-00-00', '0000-00-00', 'ผู้จัดการเก๋', '0', 'ผู้จัดการ', 2),
(10, '2017-04-25', 43, '0000-00-00', '0000-00-00', 'ผู้จัดการเก๋', '0', 'ผู้จัดการ', 1),
(11, '2017-04-26', 43, '0000-00-00', '0000-00-00', 'ผู้จัดการเก๋', '0', 'ผู้จัดการ', 2),
(12, '2017-04-27', 43, '0000-00-00', '0000-00-00', 'ผู้จัดการเก๋', '0', 'ผู้จัดการ', 1),
(13, '2017-04-27', 43, '0000-00-00', '0000-00-00', 'ผู้จัดการเก๋', '0', 'ผู้จัดการ', 2),
(14, '2017-04-27', 43, '0000-00-00', '0000-00-00', 'ผู้จัดการเก๋', '0', 'ผู้จัดการ', 1),
(15, '2017-04-27', 42, '0000-00-00', '0000-00-00', 'พนักงานปุ๋ม', '0', 'พนักงาน', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `returnorder_detail`
--

CREATE TABLE `returnorder_detail` (
  `NumberReturn` int(11) NOT NULL,
  `ReturnType` float NOT NULL,
  `ReturnOder_ID` char(5) NOT NULL,
  `ReturnDate` date NOT NULL,
  `Product_ID` int(5) NOT NULL,
  `created_date` date NOT NULL,
  `updated_date` date NOT NULL,
  `TotalPay` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `returnorder_detail`
--

INSERT INTO `returnorder_detail` (`NumberReturn`, `ReturnType`, `ReturnOder_ID`, `ReturnDate`, `Product_ID`, `created_date`, `updated_date`, `TotalPay`) VALUES
(2, 0, '10', '0000-00-00', 2, '0000-00-00', '0000-00-00', 188),
(3, 0, '10', '0000-00-00', 4, '0000-00-00', '0000-00-00', 435),
(3, 0, '11', '0000-00-00', 3, '0000-00-00', '0000-00-00', 657),
(2, 0, '12', '0000-00-00', 2, '0000-00-00', '0000-00-00', 188),
(3, 0, '12', '0000-00-00', 4, '0000-00-00', '0000-00-00', 435),
(1, 0, '13', '0000-00-00', 1, '0000-00-00', '0000-00-00', 145),
(1, 0, '13', '0000-00-00', 3, '0000-00-00', '0000-00-00', 219),
(4, 0, '14', '0000-00-00', 2, '0000-00-00', '0000-00-00', 376),
(5, 0, '15', '0000-00-00', 2, '0000-00-00', '0000-00-00', 470),
(3, 0, '5', '0000-00-00', 4, '0000-00-00', '0000-00-00', 435),
(1, 0, '5', '0000-00-00', 6, '0000-00-00', '0000-00-00', 78),
(3, 0, '51', '0000-00-00', 2, '0000-00-00', '0000-00-00', 282),
(5, 0, '51', '0000-00-00', 4, '0000-00-00', '0000-00-00', 725),
(1, 0, '52', '0000-00-00', 1, '0000-00-00', '0000-00-00', 145),
(2, 0, '52', '0000-00-00', 3, '0000-00-00', '0000-00-00', 438),
(2, 0, '52', '0000-00-00', 5, '0000-00-00', '0000-00-00', 88),
(3, 0, '53', '0000-00-00', 2, '0000-00-00', '0000-00-00', 282),
(2, 0, '53', '0000-00-00', 3, '0000-00-00', '0000-00-00', 438),
(1, 0, '53', '0000-00-00', 4, '0000-00-00', '0000-00-00', 145),
(3, 0, '6', '0000-00-00', 2, '0000-00-00', '0000-00-00', 282),
(2, 0, '6', '0000-00-00', 4, '0000-00-00', '0000-00-00', 290),
(2, 0, '7', '0000-00-00', 2, '0000-00-00', '0000-00-00', 188),
(2, 0, '8', '0000-00-00', 2, '0000-00-00', '0000-00-00', 188),
(1, 0, '8', '0000-00-00', 4, '0000-00-00', '0000-00-00', 145),
(3, 0, '9', '0000-00-00', 5, '0000-00-00', '0000-00-00', 132),
(3, 0, '<br /', '0000-00-00', 6, '0000-00-00', '0000-00-00', 234),
(2, 0, '<br /', '0000-00-00', 7, '0000-00-00', '0000-00-00', 318);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserID` int(5) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Telephone` char(10) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` text NOT NULL,
  `Position` varchar(10) NOT NULL,
  `Image` varchar(50) NOT NULL,
  `created_date` date NOT NULL,
  `updated_date` date NOT NULL,
  `surname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `Name`, `Address`, `Telephone`, `Username`, `Password`, `Position`, `Image`, `created_date`, `updated_date`, `surname`) VALUES
(34, 'พลอย', 'มช', '098342719', 'พลอย', 'ๅๅๅๅๅๅ', 'พนักงาน', 'IMG_0014.JPG', '0000-00-00', '0000-00-00', ''),
(42, 'พนักงานปุ๋ม', '333/3 ถนนวิภาวดีรังสิต แขวงจอมพล เขตจตุจักร กรุงเทพมหานคร 10900', '0899990693', 'employee', '111111', 'พนักงาน', '1622849_588849551185187_246877033_n.jpg', '0000-00-00', '0000-00-00', ''),
(43, 'ผู้จัดการเก๋', ' เลขที่ 1 หมู่ 6 ถนนมาลัยแมน ตำบลกำแพงแสน อำเภอกำแพงแสน กรุงเทพ 73140', '0848106886', 'manager', '111111', 'ผู้จัดการ', 'IMG_0002.JPG', '0000-00-00', '0000-00-00', ''),
(335, 'ผู้จัดการส้ม', 'มช', '0908450-29', 'mm', 'mmmmmm', 'ผู้จัดการ', 'privacy_icon_large.png', '0000-00-00', '0000-00-00', ''),
(336, 'ปุ้ม', 'บ้านวัดหลวง', '346-525-46', 'pum', 'pppppp', 'พนักงาน', 'bootstrap-logo.png', '0000-00-00', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `wholesalers`
--

CREATE TABLE `wholesalers` (
  `Wholesalers_ID` int(5) NOT NULL,
  `Wholesalers_Name` varchar(50) NOT NULL,
  `Branch` varchar(20) NOT NULL,
  `Telephone` char(10) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `created_date` date NOT NULL,
  `updated_date` date NOT NULL,
  `Address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `wholesalers`
--

INSERT INTO `wholesalers` (`Wholesalers_ID`, `Wholesalers_Name`, `Branch`, `Telephone`, `Email`, `created_date`, `updated_date`, `Address`) VALUES
(1, 'บริษัท พีมาร์ท ซุปเปอร์สโตร์ จำกัด', '', '02-903 185', 'info@pmart.co.th', '0000-00-00', '0000-00-00', '61/462 หมู่ที่ 6 ตำบลเสาธงหิน อำเภอบางใหญ่ จังหวัดนนทบุรี 11140'),
(2, 'บริษัท สยามฟูด เซอร์วิส จำกัด (สำนักงานใหญ่)', '', '0-2620-60', 'cs@siamfoodservices.', '0000-00-00', '0000-00-00', 'เลขที่ 2439 ถนนรถไฟเก่าสายปากน้ำ ตำบลพระโขนง อำเภอคลองเตย กรุงเทพฯ 10110'),
(3, 'ร้านช.มาร์ท ค้าส่ง', '', '081-0584-6', 'hd_khonkaen@hotmail.', '0000-00-00', '0000-00-00', '377 ม.3 ต.พระลับ อ.เมือง จ.ขอนแก่น 40000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `po_detail`
--
ALTER TABLE `po_detail`
  ADD PRIMARY KEY (`PO_ID`,`Product_ID`),
  ADD KEY `PO_ID` (`PO_ID`,`Product_ID`),
  ADD KEY `Product_ID` (`Product_ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Product_ID`),
  ADD KEY `Wholesalers_ID` (`Wholesalers_ID`,`ProductType_ID`),
  ADD KEY `product_ibfk_2` (`ProductType_ID`),
  ADD KEY `Wholesalers_ID_2` (`Wholesalers_ID`,`ProductType_ID`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`ProductType_ID`);

--
-- Indexes for table `purchaseorder`
--
ALTER TABLE `purchaseorder`
  ADD PRIMARY KEY (`PO_ID`),
  ADD KEY `Wholesalers_ID` (`Wholesalers_ID`),
  ADD KEY `Wholesalers_ID_2` (`Wholesalers_ID`);

--
-- Indexes for table `requisition`
--
ALTER TABLE `requisition`
  ADD PRIMARY KEY (`Requisition_ID`,`Requisition_Date`);

--
-- Indexes for table `requisition_detail`
--
ALTER TABLE `requisition_detail`
  ADD KEY `Requisition_ID` (`Requisition_ID`,`Requisition_Date`),
  ADD KEY `Requisition_ID_2` (`Requisition_ID`),
  ADD KEY `Requisition_Date` (`Requisition_Date`);

--
-- Indexes for table `returnoder`
--
ALTER TABLE `returnoder`
  ADD PRIMARY KEY (`ReturnOder_ID`,`ReturnDate`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `Position` (`Position`),
  ADD KEY `Wholesalers_ID` (`Wholesalers_ID`);

--
-- Indexes for table `returnorder_detail`
--
ALTER TABLE `returnorder_detail`
  ADD PRIMARY KEY (`ReturnOder_ID`,`ReturnDate`,`Product_ID`),
  ADD KEY `ReturnOder_ID` (`ReturnOder_ID`,`Product_ID`),
  ADD KEY `Product_ID` (`Product_ID`),
  ADD KEY `ReturnOder_ID_2` (`ReturnOder_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `wholesalers`
--
ALTER TABLE `wholesalers`
  ADD PRIMARY KEY (`Wholesalers_ID`),
  ADD KEY `Wholesalers_ID` (`Wholesalers_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `Product_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `requisition`
--
ALTER TABLE `requisition`
  MODIFY `Requisition_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `returnoder`
--
ALTER TABLE `returnoder`
  MODIFY `ReturnOder_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=337;
--
-- AUTO_INCREMENT for table `wholesalers`
--
ALTER TABLE `wholesalers`
  MODIFY `Wholesalers_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `po_detail`
--
ALTER TABLE `po_detail`
  ADD CONSTRAINT `po_detail_ibfk_2` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`Product_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`ProductType_ID`) REFERENCES `product_type` (`ProductType_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_3` FOREIGN KEY (`Wholesalers_ID`) REFERENCES `wholesalers` (`Wholesalers_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `purchaseorder`
--
ALTER TABLE `purchaseorder`
  ADD CONSTRAINT `purchaseorder_ibfk_1` FOREIGN KEY (`Wholesalers_ID`) REFERENCES `wholesalers` (`Wholesalers_ID`);

--
-- Constraints for table `requisition_detail`
--
ALTER TABLE `requisition_detail`
  ADD CONSTRAINT `requisition_detail_ibfk_1` FOREIGN KEY (`Requisition_ID`) REFERENCES `requisition` (`Requisition_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `returnoder`
--
ALTER TABLE `returnoder`
  ADD CONSTRAINT `returnoder_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`),
  ADD CONSTRAINT `returnoder_ibfk_2` FOREIGN KEY (`Wholesalers_ID`) REFERENCES `wholesalers` (`Wholesalers_ID`);

--
-- Constraints for table `returnorder_detail`
--
ALTER TABLE `returnorder_detail`
  ADD CONSTRAINT `returnorder_detail_ibfk_2` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`Product_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
