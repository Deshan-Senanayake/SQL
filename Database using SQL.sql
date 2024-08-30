-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2023 at 02:28 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookheaven_online`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank_transferpay`
--

CREATE TABLE `bank_transferpay` (
  `payment_id` char(5) NOT NULL,
  `payment_date` date DEFAULT NULL,
  `payment_time` time DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `bank_name` varchar(20) NOT NULL,
  `branch` varchar(20) DEFAULT NULL,
  `account_number` varchar(10) NOT NULL,
  `account_name` varchar(30) NOT NULL,
  `transfaction_type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bank_transferpay`
--

INSERT INTO `bank_transferpay` (`payment_id`, `payment_date`, `payment_time`, `amount`, `bank_name`, `branch`, `account_number`, `account_name`, `transfaction_type`) VALUES
('12345', '2023-09-29', '10:20:30', 60.00, 'Gordon PLC', 'West End', '3232323432', 'bookheaven', 'fund transfer'),
('20121', '2023-09-30', '09:15:45', 50.00, 'Robort PLC', 'Pandora', '4564544324', 'bookheaven', 'fund transfer'),
('23456', '2023-10-09', '11:12:11', 100.00, 'Zporsche PLC', 'Gracefield', '5454243546', 'bookheaven', 'fund transfer'),
('24241', '2023-10-14', '12:12:12', 40.00, 'Galnet PLC', 'Regent', '7676866546', 'bookheaven', 'fund transfer'),
('24467', '2023-10-19', '10:30:31', 80.00, 'LAevolution PLC', 'Halfway Bush', '4748578482', 'bookheaven', 'fund transfer');

-- --------------------------------------------------------

--
-- Table structure for table `book_item`
--

CREATE TABLE `book_item` (
  `item_code` char(5) NOT NULL,
  `order_id` char(5) NOT NULL,
  `supplier_id_1` char(5) DEFAULT NULL,
  `supplier_id_2` char(5) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock_level` int(10) DEFAULT NULL,
  `reorder_level` int(10) DEFAULT NULL,
  `isbn` varchar(20) DEFAULT NULL,
  `title` varchar(40) DEFAULT NULL,
  `genre` varchar(20) DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL,
  `author` varchar(40) DEFAULT NULL,
  `publisher` varchar(30) DEFAULT NULL,
  `published_year` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_item`
--

INSERT INTO `book_item` (`item_code`, `order_id`, `supplier_id_1`, `supplier_id_2`, `price`, `stock_level`, `reorder_level`, `isbn`, `title`, `genre`, `category`, `author`, `publisher`, `published_year`) VALUES
('A1324', 'a1b12', 'is132', 'cs263', 40.00, 30, 10, '0-9598-7930-7', 'song of ice and fire', 'novel series', 'epic fantasy', 'GRRR martin', 'Harper Voyager', '1996'),
('B2345', 'a2b21', 'is356', 'cs323', 50.00, 40, 15, '0-1861-0005-1', 'wheel of time', 'novel series', 'epic fantasy', 'Robert Jordan', 'Tor books', '1990'),
('U0456', 'b4c21', 'is267', 'cs453', 70.00, 60, 30, '0-6548-7336-4', 'Fundamentals of Database Systems', 'book', 'education', 'Ramez\r\nElmasri', 'Pearson', '2015'),
('X5689', 'a3b23', 'is622', 'cs454', 90.00, 100, 20, '0-2965-2364-X', 'Entity Alignment', 'book', 'education', 'Xiang Zhao', 'Springer', '2023'),
('Y7980', 'a4c32', 'is762', 'cs242', 30.00, 50, 25, '0-5859-8893-5', 'the first teacher', 'novel', 'fiction', 'chingis aithmathew', 'SK and brothers', '1962');

-- --------------------------------------------------------

--
-- Table structure for table `company_sup`
--

CREATE TABLE `company_sup` (
  `supplier_id` char(5) NOT NULL,
  `supplier_addres` varchar(20) DEFAULT NULL,
  `company_name` varchar(20) DEFAULT NULL,
  `company_email` varchar(30) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `postal_code` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company_sup`
--

INSERT INTO `company_sup` (`supplier_id`, `supplier_addres`, `company_name`, `company_email`, `city`, `postal_code`) VALUES
('cs242', '45 Hidden leaf Rd', 'Safe Deleivery', 'safedeleivery@gmail.com', 'Grandview Heights', '5355'),
('cs263', '110 Grand line Rd', 'Fast Deleivery', 'fastdeleivery@gmail.com', 'Ashburton', '2200'),
('cs323', '130 Marineford lane', 'Home Deleivery', 'homedeleivery@gmail.com', 'Rodney', '0872'),
('cs453', '30 Dragon lane', 'To Your Hand', 'toyourhand@gmail.com', 'Skyrim', '7107'),
('cs454', '49 China town', 'Country Deleivery', 'countrydeleivery@gmail.com', 'Morningside', '4570');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` char(4) NOT NULL,
  `customer_email` varchar(30) NOT NULL,
  `deleivery_addres` varchar(30) NOT NULL,
  `first_name` varchar(10) NOT NULL,
  `last_name` varchar(10) NOT NULL,
  `contact_number` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_email`, `deleivery_addres`, `first_name`, `last_name`, `contact_number`) VALUES
('A123', 'john@gmail.com', '69 Prince Albert Road', 'John', 'Martin', '+64 026 9455-137'),
('B456', 'albert@gmail.com', '61 Paa Road', 'Albert', 'Putin', '+64 026 7335-595'),
('C231', 'ensoferari@gmail.com', '35 Devon Street', 'Enso', 'Ferari', '+64 029 1807-533'),
('D356', 'henryford@gmail.com', '68 Laila Place', 'Henry', 'Ford', '+64 028 2922-862'),
('E231', 'bayashi@gmail.com', '52 chickenhead Street', 'Bayashi', 'Fushiguro', '+64 021 2759-541');

-- --------------------------------------------------------

--
-- Table structure for table `individual_supplier_sup`
--

CREATE TABLE `individual_supplier_sup` (
  `supplier_id` char(5) NOT NULL,
  `supplier_addres` varchar(20) DEFAULT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `ind_sup_email` varchar(30) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `postal_code` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `individual_supplier_sup`
--

INSERT INTO `individual_supplier_sup` (`supplier_id`, `supplier_addres`, `contact_number`, `ind_sup_email`, `city`, `postal_code`) VALUES
('is132', '100 lotus lane', '+61-455-570-410', 'astonmartin@gmail.com', 'Pinehill', '2015'),
('is267', '86 slaveisland lane', '+61-455-541-009', 'gtomitsubishi@gmail.com', 'Enderley', '6166'),
('is356', '34 banana rd', '+61-455-584-022', 'coupesedan@gmail.com', 'Fairview', '3518'),
('is622', '32 pamila street', '+61-455-523-595', 'neesaangtr@gmail.com', 'Grenada North', '4870'),
('is762', '69d nightcity rd', '+61-455-503-183', 'hamadatoyota@gmail.com', 'Beachville', '4895');

-- --------------------------------------------------------

--
-- Table structure for table `online_payment_pay`
--

CREATE TABLE `online_payment_pay` (
  `payment_id` char(5) NOT NULL,
  `payment_date` date DEFAULT NULL,
  `payment_time` time DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `debit_card_type` varchar(10) DEFAULT NULL,
  `transaction_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `online_payment_pay`
--

INSERT INTO `online_payment_pay` (`payment_id`, `payment_date`, `payment_time`, `amount`, `debit_card_type`, `transaction_id`) VALUES
('16781', '2023-10-13', '12:30:32', 30.00, 'master', '7523435898'),
('26762', '2023-09-26', '10:30:30', 70.00, 'visa', '5345624554'),
('28928', '2023-10-10', '11:25:11', 110.00, 'visa', '6767343135'),
('42616', '2023-09-27', '10:15:45', 60.00, 'master', '5435341232'),
('45564', '2023-10-20', '11:40:31', 40.00, 'visa', '2132587434');

-- --------------------------------------------------------

--
-- Table structure for table `order_table`
--

CREATE TABLE `order_table` (
  `order_id` char(5) NOT NULL,
  `customer_id` char(4) NOT NULL,
  `payment_id_1` char(5) DEFAULT NULL,
  `payment_id_2` char(5) NOT NULL,
  `order_number` varchar(10) NOT NULL,
  `order_date` date DEFAULT NULL,
  `order_time` time DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `delivery_address` varchar(30) DEFAULT NULL,
  `payment_details` varchar(40) DEFAULT NULL,
  `quantity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_table`
--

INSERT INTO `order_table` (`order_id`, `customer_id`, `payment_id_1`, `payment_id_2`, `order_number`, `order_date`, `order_time`, `delivery_date`, `delivery_address`, `payment_details`, `quantity`) VALUES
('a1b12', 'A123', '42616', '20121', '0000000001', '2023-09-25', '10:02:45', '2023-12-14', '69 Prince Albert Road', 'payment done by bank transfer', 2),
('a2b21', 'B456', '26762', '12345', '0000000123', '2023-09-22', '10:10:50', '2023-12-10', '61 Paa Road', 'payment done by online payment', 1),
('a3b23', 'C231', '28928', '23456', '0000000200', '2023-10-05', '10:20:30', '2023-12-19', '35 Devon Street', 'payment done by bank transfer', 2),
('a4c32', 'D356', '16781', '24241', '0000000234', '2023-10-09', '09:10:20', '2023-12-24', '68 Laila Place', 'payment done by online payment', 3),
('b4c21', 'E231', '45564', '24467', '0000000500', '2023-10-17', '09:20:30', '2023-12-30', '52 chickenhead Street', 'payment done by bank transfer', 1);

-- --------------------------------------------------------

--
-- Table structure for table `stationery_item`
--

CREATE TABLE `stationery_item` (
  `item_code` char(5) NOT NULL,
  `order_id` char(5) NOT NULL,
  `supplier_id_1` char(5) DEFAULT NULL,
  `supplier_id_2` char(5) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock_level` int(10) NOT NULL,
  `reorder_level` int(10) DEFAULT NULL,
  `stationary_code` varchar(5) DEFAULT NULL,
  `stationary_type` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stationery_item`
--

INSERT INTO `stationery_item` (`item_code`, `order_id`, `supplier_id_1`, `supplier_id_2`, `price`, `stock_level`, `reorder_level`, `stationary_code`, `stationary_type`) VALUES
('a7388', 'a1b12', 'is132', 'cs263', 20.00, 100, 10, 's3432', 'business stationary'),
('b7278', 'a2b21', 'is356', 'cs323', 15.00, 200, 10, 's3424', 'desktop instruments'),
('c3992', 'a3b23', 'is622', 'cs454', 10.00, 300, 5, 's4337', 'mailing stationary'),
('d8292', 'a4c32', 'is762', 'cs242', 20.00, 200, 10, 's5478', 'drawing stationary'),
('e3289', 'b4c21', 'is267', 'cs453', 15.00, 100, 10, 's4654', 'ink and toners');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank_transferpay`
--
ALTER TABLE `bank_transferpay`
  ADD PRIMARY KEY (`payment_id`),
  ADD UNIQUE KEY `payment_id` (`payment_id`);

--
-- Indexes for table `book_item`
--
ALTER TABLE `book_item`
  ADD PRIMARY KEY (`item_code`),
  ADD UNIQUE KEY `item_code` (`item_code`),
  ADD UNIQUE KEY `order_id` (`order_id`),
  ADD UNIQUE KEY `supplier_id_2` (`supplier_id_2`),
  ADD UNIQUE KEY `supplier_id_1` (`supplier_id_1`);

--
-- Indexes for table `company_sup`
--
ALTER TABLE `company_sup`
  ADD PRIMARY KEY (`supplier_id`),
  ADD UNIQUE KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `customer_id` (`customer_id`),
  ADD UNIQUE KEY `customer_email` (`customer_email`),
  ADD UNIQUE KEY `deleivery_addres` (`deleivery_addres`);

--
-- Indexes for table `individual_supplier_sup`
--
ALTER TABLE `individual_supplier_sup`
  ADD PRIMARY KEY (`supplier_id`),
  ADD UNIQUE KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `online_payment_pay`
--
ALTER TABLE `online_payment_pay`
  ADD PRIMARY KEY (`payment_id`),
  ADD UNIQUE KEY `payment_id` (`payment_id`);

--
-- Indexes for table `order_table`
--
ALTER TABLE `order_table`
  ADD PRIMARY KEY (`order_id`),
  ADD UNIQUE KEY `order_id` (`order_id`),
  ADD UNIQUE KEY `customer_id` (`customer_id`),
  ADD UNIQUE KEY `payment_id_2` (`payment_id_2`),
  ADD UNIQUE KEY `payment_id_1` (`payment_id_1`);

--
-- Indexes for table `stationery_item`
--
ALTER TABLE `stationery_item`
  ADD PRIMARY KEY (`item_code`),
  ADD UNIQUE KEY `item_code` (`item_code`),
  ADD UNIQUE KEY `order_id` (`order_id`),
  ADD UNIQUE KEY `supplier_id_2` (`supplier_id_2`),
  ADD UNIQUE KEY `supplier_id_1` (`supplier_id_1`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book_item`
--
ALTER TABLE `book_item`
  ADD CONSTRAINT `book_item_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order_table` (`order_id`),
  ADD CONSTRAINT `book_item_ibfk_2` FOREIGN KEY (`supplier_id_1`) REFERENCES `individual_supplier_sup` (`supplier_id`),
  ADD CONSTRAINT `book_item_ibfk_3` FOREIGN KEY (`supplier_id_2`) REFERENCES `company_sup` (`supplier_id`);

--
-- Constraints for table `order_table`
--
ALTER TABLE `order_table`
  ADD CONSTRAINT `order_table_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `order_table_ibfk_2` FOREIGN KEY (`payment_id_1`) REFERENCES `online_payment_pay` (`payment_id`),
  ADD CONSTRAINT `order_table_ibfk_3` FOREIGN KEY (`payment_id_2`) REFERENCES `bank_transferpay` (`payment_id`);

--
-- Constraints for table `stationery_item`
--
ALTER TABLE `stationery_item`
  ADD CONSTRAINT `stationery_item_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order_table` (`order_id`),
  ADD CONSTRAINT `stationery_item_ibfk_2` FOREIGN KEY (`supplier_id_1`) REFERENCES `individual_supplier_sup` (`supplier_id`),
  ADD CONSTRAINT `stationery_item_ibfk_3` FOREIGN KEY (`supplier_id_2`) REFERENCES `company_sup` (`supplier_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
