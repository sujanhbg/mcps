-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 20, 2017 at 02:15 PM
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
-- Database: `pos23`
--

-- --------------------------------------------------------

--
-- Table structure for table `ospos_app_config`
--

CREATE TABLE `ospos_app_config` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_app_config`
--

INSERT INTO `ospos_app_config` (`key`, `value`) VALUES
('address', 'Mirpur-14, Dhaka'),
('barcode_content', 'number'),
('barcode_first_row', 'company_name'),
('barcode_font', 'SansationLight.ttf'),
('barcode_font_size', '8'),
('barcode_generate_if_empty', 'barcode_generate_if_empty'),
('barcode_height', '50'),
('barcode_num_in_row', '2'),
('barcode_page_cellspacing', '20'),
('barcode_page_width', '100'),
('barcode_quality', '100'),
('barcode_second_row', 'item_code'),
('barcode_third_row', 'unit_price'),
('barcode_type', 'Code39'),
('barcode_width', '250'),
('company', 'Metro Complex'),
('company_logo', ''),
('currency_side', '0'),
('currency_symbol', '৳'),
('custom10_name', ''),
('custom1_name', ''),
('custom2_name', ''),
('custom3_name', ''),
('custom4_name', ''),
('custom5_name', ''),
('custom6_name', ''),
('custom7_name', ''),
('custom8_name', ''),
('custom9_name', ''),
('dateformat', 'd/m/Y'),
('decimal_point', '.'),
('default_sales_discount', '0'),
('default_tax_1_name', 'VAT'),
('default_tax_1_rate', '2.5'),
('default_tax_2_name', 'Sales Tax 2'),
('default_tax_2_rate', ''),
('default_tax_rate', '8'),
('email', 'sujan@kalni.net'),
('fax', ''),
('invoice_default_comments', 'Thanks for shopping in Metro Complex'),
('invoice_email_message', 'Dear $CU, In attachment the receipt for sale $INV'),
('language', 'en'),
('lines_per_page', '25'),
('phone', '01717769284'),
('print_bottom_margin', '0'),
('print_footer', '0'),
('print_header', '0'),
('print_left_margin', '0'),
('print_right_margin', '0'),
('print_silently', 'print_silently'),
('print_top_margin', '0'),
('receipt_show_taxes', '0'),
('receiving_calculate_average_price', 'receiving_calculate_average_price'),
('recv_invoice_format', '$CO'),
('return_policy', 'Thanks for purchasing '),
('sales_invoice_format', '$CO'),
('show_total_discount', 'show_total_discount'),
('tax_included', '0'),
('thousands_separator', ','),
('timeformat', 'H:i:s'),
('timezone', 'Asia/Dhaka'),
('use_invoice_template', 'use_invoice_template'),
('website', '');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_audit`
--

CREATE TABLE `ospos_audit` (
  `ID` int(22) NOT NULL,
  `user_id` varchar(11) NOT NULL,
  `domain` varchar(450) NOT NULL,
  `page` varchar(450) NOT NULL,
  `postdata` text NOT NULL,
  `getdata` varchar(255) NOT NULL,
  `ipp` varchar(22) NOT NULL,
  `datetimea` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ospos_audit`
--

INSERT INTO `ospos_audit` (`ID`, `user_id`, `domain`, `page`, `postdata`, `getdata`, `ipp`, `datetimea`) VALUES
(0, '', 'localhost', '/', 'false', 'false', '::1', '2017-07-20 18:06:14'),
(0, '', 'localhost', '/', 'false', 'false', '::1', '2017-07-20 18:06:16'),
(0, '', 'localhost', '/', 'false', 'false', '::1', '2017-07-20 18:06:17'),
(0, '', 'localhost', '/index.php/login', '{\"username\":\"admin\",\"password\":\"pointofsale\",\"loginButton\":\"Go\"}', 'false', '::1', '2017-07-20 18:06:23'),
(0, '', '192.168.0.1', '/pos/index.php/login', 'false', 'false', '192.168.0.2', '2017-07-20 18:06:25'),
(0, '1', 'localhost', '/index.php/home', 'false', 'false', '::1', '2017-07-20 18:06:39'),
(0, '1', 'localhost', '/index.php/employees', 'false', 'false', '::1', '2017-07-20 18:06:42'),
(0, '1', 'localhost', '/index.php/items', 'false', 'false', '::1', '2017-07-20 18:06:47'),
(0, '1', 'localhost', '/index.php/receivings', 'false', 'false', '::1', '2017-07-20 18:06:50'),
(0, '1', 'localhost', '/index.php/reports', 'false', 'false', '::1', '2017-07-20 18:06:51'),
(0, '1', 'localhost', '/index.php/reports/detailed_receivings', 'false', 'false', '::1', '2017-07-20 18:06:54'),
(0, '1', 'localhost', '/index.php/config', 'false', 'false', '::1', '2017-07-20 18:06:57'),
(0, '1', 'localhost', '/index.php/employees', 'false', 'false', '::1', '2017-07-20 18:07:01'),
(0, '1', 'localhost', '/index.php/employees/view/-1/width:750/random:1500552425221', 'false', 'false', '::1', '2017-07-20 18:07:05'),
(0, '', '192.168.0.1', '/pos/index.php/login', 'false', 'false', '192.168.0.2', '2017-07-20 18:07:19'),
(0, '1', 'localhost', '/index.php/employees/save', '{\"first_name\":\"Hossain\",\"last_name\":\"Pushidar\",\"gender\":\"1\",\"email\":\"\",\"phone_number\":\"\",\"address_1\":\"\",\"address_2\":\"\",\"city\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"\",\"comments\":\"\",\"username\":\"pushidar\",\"password\":\"98731280\",\"repeat_password\":\"98731280\",\"grants\":[\"customers\",\"items\",\"items_stock\",\"suppliers\",\"reports\",\"reports_employees\",\"reports_inventory\",\"reports_items\",\"reports_payments\",\"reports_receivings\",\"reports_sales\",\"reports_suppliers\",\"reports_taxes\",\"receivings\",\"receivings_stock\",\"sales\",\"sales_stock\"],\"submit\":\"Submit\"}', 'false', '::1', '2017-07-20 18:09:20'),
(0, '1', 'localhost', '/index.php/employees/search', '{\"search\":\"\",\"limit_from\":\"\"}', 'false', '::1', '2017-07-20 18:09:20'),
(0, '1', 'localhost', '/index.php/employees/view/-1/width:750/random:1500552572283', 'false', 'false', '::1', '2017-07-20 18:09:32'),
(0, '4', '192.168.0.1', '/pos/index.php/home', 'false', 'false', '192.168.0.3', '2017-07-20 18:10:02'),
(0, '4', '192.168.0.1', '/pos/index.php/sales', 'false', 'false', '192.168.0.3', '2017-07-20 18:10:10'),
(0, '4', '192.168.0.1', '/pos/index.php/receivings', 'false', 'false', '192.168.0.3', '2017-07-20 18:10:13'),
(0, '4', '192.168.0.1', '/pos/index.php/reports', 'false', 'false', '192.168.0.3', '2017-07-20 18:10:18'),
(0, '4', '192.168.0.1', '/pos/index.php/suppliers', 'false', 'false', '192.168.0.3', '2017-07-20 18:10:20'),
(0, '4', '192.168.0.1', '/pos/index.php/items', 'false', 'false', '192.168.0.3', '2017-07-20 18:10:21'),
(0, '4', '192.168.0.1', '/pos/index.php/customers', 'false', 'false', '192.168.0.3', '2017-07-20 18:10:22'),
(0, '4', '192.168.0.1', '/pos/index.php/sales', 'false', 'false', '192.168.0.3', '2017-07-20 18:10:24'),
(0, '1', 'localhost', '/index.php/employees/save', '{\"first_name\":\"Shamim\",\"last_name\":\"Rana\",\"gender\":\"1\",\"email\":\"\",\"phone_number\":\"\",\"address_1\":\"\",\"address_2\":\"\",\"city\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"\",\"comments\":\"\",\"username\":\"shamim\",\"password\":\"01938221436\",\"repeat_password\":\"01938221436\",\"grants\":[\"customers\",\"items\",\"items_stock\",\"suppliers\",\"reports\",\"reports_employees\",\"reports_inventory\",\"reports_items\",\"reports_payments\",\"reports_receivings\",\"reports_sales\",\"reports_suppliers\",\"reports_taxes\",\"receivings\",\"receivings_stock\",\"sales\",\"sales_stock\"],\"submit\":\"Submit\"}', 'false', '::1', '2017-07-20 18:10:56'),
(0, '1', 'localhost', '/index.php/employees/search', '{\"search\":\"\",\"limit_from\":\"\"}', 'false', '::1', '2017-07-20 18:10:56'),
(0, '1', 'localhost', '/index.php/employees/view/-1/width:750/random:1500552665458', 'false', 'false', '::1', '2017-07-20 18:11:05'),
(0, '', '192.168.0.1', '/pos/index.php/login', 'false', 'false', '192.168.0.3', '2017-07-20 18:11:14'),
(0, '4', '192.168.0.1', '/pos/index.php/home', 'false', 'false', '192.168.0.3', '2017-07-20 18:11:25'),
(0, '4', '192.168.0.1', '/pos/index.php/sales', 'false', 'false', '192.168.0.3', '2017-07-20 18:11:29'),
(0, '', '192.168.0.1', '/pos/', 'false', 'false', '192.168.0.2', '2017-07-20 18:12:14'),
(0, '1', 'localhost', '/index.php/employees/save', '{\"first_name\":\"MD\",\"last_name\":\"Olyullah\",\"gender\":\"1\",\"email\":\"\",\"phone_number\":\"\",\"address_1\":\"\",\"address_2\":\"\",\"city\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"\",\"comments\":\"\",\"username\":\"olyullah\",\"password\":\"01733299319\",\"repeat_password\":\"01733299319\",\"grants\":[\"customers\",\"items\",\"items_stock\",\"suppliers\",\"reports\",\"reports_employees\",\"reports_inventory\",\"reports_items\",\"reports_payments\",\"reports_receivings\",\"reports_sales\",\"reports_suppliers\",\"reports_taxes\",\"receivings\",\"receivings_stock\",\"sales\",\"sales_stock\"],\"submit\":\"Submit\"}', 'false', '::1', '2017-07-20 18:12:26'),
(0, '1', 'localhost', '/index.php/employees/search', '{\"search\":\"\",\"limit_from\":\"\"}', 'false', '::1', '2017-07-20 18:12:26'),
(0, '1', 'localhost', '/index.php/employees/view/-1/width:750/random:1500552766057', 'false', 'false', '::1', '2017-07-20 18:12:46'),
(0, '', '192.168.0.1', '/pos/index.php/login', 'false', 'false', '192.168.0.3', '2017-07-20 18:13:15'),
(0, '1', 'localhost', '/index.php/employees/save', '{\"first_name\":\"BADAL\",\"last_name\":\"RAY\",\"gender\":\"1\",\"email\":\"\",\"phone_number\":\"\",\"address_1\":\"\",\"address_2\":\"\",\"city\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"\",\"comments\":\"\",\"username\":\"badal\",\"password\":\"badalray027\",\"repeat_password\":\"badalray027\",\"grants\":[\"customers\",\"items\",\"items_stock\",\"item_kits\",\"suppliers\",\"reports\",\"reports_employees\",\"reports_inventory\",\"reports_items\",\"reports_payments\",\"reports_receivings\",\"reports_sales\",\"reports_suppliers\",\"reports_taxes\",\"receivings\",\"receivings_stock\",\"sales\",\"sales_stock\"],\"submit\":\"Submit\"}', 'false', '::1', '2017-07-20 18:14:14'),
(0, '1', 'localhost', '/index.php/employees/search', '{\"search\":\"\",\"limit_from\":\"\"}', 'false', '::1', '2017-07-20 18:14:14'),
(0, '1', 'localhost', '/index.php/employees', 'false', 'false', '::1', '2017-07-20 18:14:45');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_customers`
--

CREATE TABLE `ospos_customers` (
  `person_id` int(10) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `taxable` int(1) NOT NULL DEFAULT '1',
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_customers`
--

INSERT INTO `ospos_customers` (`person_id`, `company_name`, `account_number`, `taxable`, `deleted`) VALUES
(3, NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_employees`
--

CREATE TABLE `ospos_employees` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `person_id` int(10) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_employees`
--

INSERT INTO `ospos_employees` (`username`, `password`, `person_id`, `deleted`) VALUES
('admin', 'b2ec5ec01fedebb1db340d9ab4811f78', 1, 0),
('badal', '781a8ab91eb94c648dd0796812c61619', 7, 0),
('olyullah', '533637d9ecc3b0568a15825ea9bccdcc', 6, 0),
('pushidar', '30dd6de98c52b140378373591db27e9c', 4, 0),
('shamim', '7e26aa1ed7fdc3b5bda99c93170ab967', 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_giftcards`
--

CREATE TABLE `ospos_giftcards` (
  `record_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `giftcard_id` int(11) NOT NULL,
  `giftcard_number` int(10) NOT NULL,
  `value` decimal(15,2) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `person_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_grants`
--

CREATE TABLE `ospos_grants` (
  `permission_id` varchar(255) NOT NULL,
  `person_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_grants`
--

INSERT INTO `ospos_grants` (`permission_id`, `person_id`) VALUES
('config', 1),
('customers', 1),
('customers', 4),
('customers', 5),
('customers', 6),
('customers', 7),
('employees', 1),
('giftcards', 1),
('items', 1),
('items', 4),
('items', 5),
('items', 6),
('items', 7),
('items_stock', 1),
('items_stock', 4),
('items_stock', 5),
('items_stock', 6),
('items_stock', 7),
('item_kits', 1),
('item_kits', 7),
('receivings', 1),
('receivings', 4),
('receivings', 5),
('receivings', 6),
('receivings', 7),
('receivings_stock', 1),
('receivings_stock', 4),
('receivings_stock', 5),
('receivings_stock', 6),
('receivings_stock', 7),
('reports', 1),
('reports', 4),
('reports', 5),
('reports', 6),
('reports', 7),
('reports_categories', 1),
('reports_customers', 1),
('reports_discounts', 1),
('reports_employees', 1),
('reports_employees', 4),
('reports_employees', 5),
('reports_employees', 6),
('reports_employees', 7),
('reports_inventory', 1),
('reports_inventory', 4),
('reports_inventory', 5),
('reports_inventory', 6),
('reports_inventory', 7),
('reports_items', 1),
('reports_items', 4),
('reports_items', 5),
('reports_items', 6),
('reports_items', 7),
('reports_payments', 1),
('reports_payments', 4),
('reports_payments', 5),
('reports_payments', 6),
('reports_payments', 7),
('reports_receivings', 1),
('reports_receivings', 4),
('reports_receivings', 5),
('reports_receivings', 6),
('reports_receivings', 7),
('reports_sales', 1),
('reports_sales', 4),
('reports_sales', 5),
('reports_sales', 6),
('reports_sales', 7),
('reports_suppliers', 1),
('reports_suppliers', 4),
('reports_suppliers', 5),
('reports_suppliers', 6),
('reports_suppliers', 7),
('reports_taxes', 1),
('reports_taxes', 4),
('reports_taxes', 5),
('reports_taxes', 6),
('reports_taxes', 7),
('sales', 1),
('sales', 4),
('sales', 5),
('sales', 6),
('sales', 7),
('sales_stock', 1),
('sales_stock', 4),
('sales_stock', 5),
('sales_stock', 6),
('sales_stock', 7),
('suppliers', 1),
('suppliers', 4),
('suppliers', 5),
('suppliers', 6),
('suppliers', 7);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_inventory`
--

CREATE TABLE `ospos_inventory` (
  `trans_id` int(11) NOT NULL,
  `trans_items` int(11) NOT NULL DEFAULT '0',
  `trans_user` int(11) NOT NULL DEFAULT '0',
  `trans_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `trans_comment` text NOT NULL,
  `trans_location` int(11) NOT NULL,
  `trans_inventory` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_items`
--

CREATE TABLE `ospos_items` (
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `item_number` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `cost_price` decimal(15,2) NOT NULL,
  `unit_price` decimal(15,2) NOT NULL,
  `reorder_level` decimal(15,2) NOT NULL DEFAULT '0.00',
  `receiving_quantity` int(11) NOT NULL DEFAULT '1',
  `item_id` int(10) NOT NULL,
  `pic_id` int(10) DEFAULT NULL,
  `allow_alt_description` tinyint(1) NOT NULL,
  `is_serialized` tinyint(1) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `custom1` varchar(25) NOT NULL,
  `custom2` varchar(25) NOT NULL,
  `custom3` varchar(25) NOT NULL,
  `custom4` varchar(25) NOT NULL,
  `custom5` varchar(25) NOT NULL,
  `custom6` varchar(25) NOT NULL,
  `custom7` varchar(25) NOT NULL,
  `custom8` varchar(25) NOT NULL,
  `custom9` varchar(25) NOT NULL,
  `custom10` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_items_taxes`
--

CREATE TABLE `ospos_items_taxes` (
  `item_id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `percent` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_item_kits`
--

CREATE TABLE `ospos_item_kits` (
  `item_kit_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_item_kit_items`
--

CREATE TABLE `ospos_item_kit_items` (
  `item_kit_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_item_quantities`
--

CREATE TABLE `ospos_item_quantities` (
  `item_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_modules`
--

CREATE TABLE `ospos_modules` (
  `name_lang_key` varchar(255) NOT NULL,
  `desc_lang_key` varchar(255) NOT NULL,
  `sort` int(10) NOT NULL,
  `module_id` varchar(255) NOT NULL,
  `accesskey` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_modules`
--

INSERT INTO `ospos_modules` (`name_lang_key`, `desc_lang_key`, `sort`, `module_id`, `accesskey`) VALUES
('module_config', 'module_config_desc', 100, 'config', NULL),
('module_customers', 'module_customers_desc', 10, 'customers', 'c'),
('module_employees', 'module_employees_desc', 80, 'employees', 'e'),
('module_giftcards', 'module_giftcards_desc', 90, 'giftcards', NULL),
('module_items', 'module_items_desc', 20, 'items', 'q'),
('module_item_kits', 'module_item_kits_desc', 30, 'item_kits', NULL),
('module_receivings', 'module_receivings_desc', 60, 'receivings', 'r'),
('module_reports', 'module_reports_desc', 50, 'reports', 'w'),
('module_sales', 'module_sales_desc', 70, 'sales', 's'),
('module_suppliers', 'module_suppliers_desc', 40, 'suppliers', 'v');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_people`
--

CREATE TABLE `ospos_people` (
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` int(1) DEFAULT NULL,
  `phone_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `comments` text NOT NULL,
  `person_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_people`
--

INSERT INTO `ospos_people` (`first_name`, `last_name`, `gender`, `phone_number`, `email`, `address_1`, `address_2`, `city`, `state`, `zip`, `country`, `comments`, `person_id`) VALUES
('Sujan', 'C.Barty', 1, '01717769284', 'sujan@kalni.net', 'M-25/1, 1 No Building', 'Mirpur-14,', 'Dhaka', 'Dhaka Division', '1206', 'Bangladesh', 'PHP & Python Programmer', 1),
('Kalam', 'Miah', 1, '', '', '', '', '', '', '', '', '', 2),
('Sujan', 'C.Barty', 0, '', '', '', '', '', '', '', '', '', 3),
('Hossain', 'Pushidar', 1, '', '', '', '', '', '', '', '', '', 4),
('Shamim', 'Rana', 1, '', '', '', '', '', '', '', '', '', 5),
('MD', 'Olyullah', 1, '', '', '', '', '', '', '', '', '', 6),
('BADAL', 'RAY', 1, '', '', '', '', '', '', '', '', '', 7);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_permissions`
--

CREATE TABLE `ospos_permissions` (
  `permission_id` varchar(255) NOT NULL,
  `module_id` varchar(255) NOT NULL,
  `location_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_permissions`
--

INSERT INTO `ospos_permissions` (`permission_id`, `module_id`, `location_id`) VALUES
('config', 'config', NULL),
('customers', 'customers', NULL),
('employees', 'employees', NULL),
('giftcards', 'giftcards', NULL),
('items', 'items', NULL),
('items_stock', 'items', 1),
('item_kits', 'item_kits', NULL),
('receivings', 'receivings', NULL),
('receivings_stock', 'receivings', 1),
('reports', 'reports', NULL),
('reports_categories', 'reports', NULL),
('reports_customers', 'reports', NULL),
('reports_discounts', 'reports', NULL),
('reports_employees', 'reports', NULL),
('reports_inventory', 'reports', NULL),
('reports_items', 'reports', NULL),
('reports_payments', 'reports', NULL),
('reports_receivings', 'reports', NULL),
('reports_sales', 'reports', NULL),
('reports_suppliers', 'reports', NULL),
('reports_taxes', 'reports', NULL),
('sales', 'sales', NULL),
('sales_stock', 'sales', 1),
('suppliers', 'suppliers', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_receivings`
--

CREATE TABLE `ospos_receivings` (
  `receiving_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `supplier_id` int(10) DEFAULT NULL,
  `employee_id` int(10) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `receiving_id` int(10) NOT NULL,
  `payment_type` varchar(20) DEFAULT NULL,
  `invoice_number` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_receivings_items`
--

CREATE TABLE `ospos_receivings_items` (
  `receiving_id` int(10) NOT NULL DEFAULT '0',
  `item_id` int(10) NOT NULL DEFAULT '0',
  `description` varchar(30) DEFAULT NULL,
  `serialnumber` varchar(30) DEFAULT NULL,
  `line` int(3) NOT NULL,
  `quantity_purchased` decimal(15,2) NOT NULL DEFAULT '0.00',
  `item_cost_price` decimal(15,2) NOT NULL,
  `item_unit_price` decimal(15,2) NOT NULL,
  `discount_percent` decimal(15,2) NOT NULL DEFAULT '0.00',
  `item_location` int(11) NOT NULL,
  `receiving_quantity` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales`
--

CREATE TABLE `ospos_sales` (
  `sale_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `customer_id` int(10) DEFAULT NULL,
  `employee_id` int(10) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `invoice_number` varchar(32) DEFAULT NULL,
  `sale_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_items`
--

CREATE TABLE `ospos_sales_items` (
  `sale_id` int(10) NOT NULL DEFAULT '0',
  `item_id` int(10) NOT NULL DEFAULT '0',
  `description` varchar(30) DEFAULT NULL,
  `serialnumber` varchar(30) DEFAULT NULL,
  `line` int(3) NOT NULL DEFAULT '0',
  `quantity_purchased` decimal(15,2) NOT NULL DEFAULT '0.00',
  `item_cost_price` decimal(15,2) NOT NULL,
  `item_unit_price` decimal(15,2) NOT NULL,
  `discount_percent` decimal(15,2) NOT NULL DEFAULT '0.00',
  `item_location` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_items_taxes`
--

CREATE TABLE `ospos_sales_items_taxes` (
  `sale_id` int(10) NOT NULL,
  `item_id` int(10) NOT NULL,
  `line` int(3) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `percent` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_payments`
--

CREATE TABLE `ospos_sales_payments` (
  `sale_id` int(10) NOT NULL,
  `payment_type` varchar(40) NOT NULL,
  `payment_amount` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_suspended`
--

CREATE TABLE `ospos_sales_suspended` (
  `sale_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `customer_id` int(10) DEFAULT NULL,
  `employee_id` int(10) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `invoice_number` varchar(32) DEFAULT NULL,
  `sale_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_suspended_items`
--

CREATE TABLE `ospos_sales_suspended_items` (
  `sale_id` int(10) NOT NULL DEFAULT '0',
  `item_id` int(10) NOT NULL DEFAULT '0',
  `description` varchar(30) DEFAULT NULL,
  `serialnumber` varchar(30) DEFAULT NULL,
  `line` int(3) NOT NULL DEFAULT '0',
  `quantity_purchased` decimal(15,2) NOT NULL DEFAULT '0.00',
  `item_cost_price` decimal(15,2) NOT NULL,
  `item_unit_price` decimal(15,2) NOT NULL,
  `discount_percent` decimal(15,2) NOT NULL DEFAULT '0.00',
  `item_location` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_suspended_items_taxes`
--

CREATE TABLE `ospos_sales_suspended_items_taxes` (
  `sale_id` int(10) NOT NULL,
  `item_id` int(10) NOT NULL,
  `line` int(3) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `percent` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sales_suspended_payments`
--

CREATE TABLE `ospos_sales_suspended_payments` (
  `sale_id` int(10) NOT NULL,
  `payment_type` varchar(40) NOT NULL,
  `payment_amount` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospos_sessions`
--

CREATE TABLE `ospos_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_sessions`
--

INSERT INTO `ospos_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('145bbd4e1e8cf1ef3d3f4633850a78c5', '192.168.0.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 1500552734, ''),
('22ec38e3a77ceab0b38e891e841ee655', '192.168.0.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36 Edge', 1500552439, ''),
('477b7798f0ace483c6530a2dc19b3e19', '192.168.0.3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 1500552795, ''),
('91c9589a178e24b29ad928ca0aade896', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 1500552885, 'a:7:{s:9:\"user_data\";s:0:\"\";s:9:\"person_id\";s:1:\"1\";s:13:\"item_location\";s:1:\"1\";s:8:\"cartRecv\";a:0:{}s:9:\"recv_mode\";s:7:\"receive\";s:8:\"supplier\";i:-1;s:19:\"recv_invoice_number\";s:1:\"0\";}'),
('ad046b1851a14d4ab3a00d562d4cb95c', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 1500320940, 'a:13:{s:9:\"person_id\";s:1:\"1\";s:13:\"item_location\";s:1:\"1\";s:4:\"cart\";a:0:{}s:9:\"sale_mode\";s:4:\"sale\";s:13:\"sale_location\";s:1:\"1\";s:8:\"customer\";i:-1;s:8:\"payments\";a:0:{}s:20:\"sales_invoice_number\";s:1:\"0\";s:8:\"cartRecv\";a:0:{}s:9:\"recv_mode\";s:7:\"receive\";s:8:\"supplier\";i:-1;s:19:\"recv_invoice_number\";s:1:\"0\";s:17:\"recv_stock_source\";s:1:\"1\";}'),
('ae2416baf69d7f1d03edcd5becd567b8', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 1500098541, 'a:13:{s:9:\"user_data\";s:0:\"\";s:9:\"person_id\";s:1:\"1\";s:13:\"item_location\";s:1:\"1\";s:8:\"cartRecv\";a:0:{}s:9:\"recv_mode\";s:7:\"receive\";s:8:\"supplier\";i:-1;s:19:\"recv_invoice_number\";s:1:\"0\";s:4:\"cart\";a:0:{}s:9:\"sale_mode\";s:4:\"sale\";s:13:\"sale_location\";s:1:\"1\";s:8:\"customer\";i:-1;s:8:\"payments\";a:0:{}s:20:\"sales_invoice_number\";s:1:\"0\";}'),
('c6173ffd78853479f1b73ec5ae21d98f', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 1500317223, 'a:15:{s:9:\"user_data\";s:0:\"\";s:9:\"person_id\";s:1:\"1\";s:13:\"item_location\";s:1:\"1\";s:13:\"sale_location\";s:1:\"1\";s:9:\"recv_mode\";s:7:\"receive\";s:17:\"recv_stock_source\";s:1:\"1\";s:22:\"sales_print_after_sale\";s:4:\"true\";s:8:\"cartRecv\";a:0:{}s:8:\"supplier\";i:-1;s:19:\"recv_invoice_number\";s:1:\"0\";s:4:\"cart\";a:1:{i:1;a:17:{s:7:\"item_id\";s:1:\"2\";s:13:\"item_location\";s:1:\"1\";s:10:\"stock_name\";s:5:\"stock\";s:4:\"line\";i:1;s:4:\"name\";s:24:\"RmFpciBhbmQgTGF2bHkgOTBn\";s:11:\"item_number\";s:6:\"123456\";s:11:\"description\";s:0:\"\";s:12:\"serialnumber\";s:0:\"\";s:21:\"allow_alt_description\";s:1:\"0\";s:13:\"is_serialized\";s:1:\"0\";s:8:\"quantity\";i:1;s:8:\"discount\";s:1:\"0\";s:8:\"in_stock\";i:0;s:5:\"price\";s:5:\"88.00\";s:5:\"total\";s:5:\"88.00\";s:10:\"cost_price\";s:5:\"79.10\";s:16:\"discounted_total\";s:8:\"88.00000\";}}s:9:\"sale_mode\";s:4:\"sale\";s:8:\"customer\";i:-1;s:8:\"payments\";a:0:{}s:20:\"sales_invoice_number\";s:1:\"0\";}');

-- --------------------------------------------------------

--
-- Table structure for table `ospos_stock_locations`
--

CREATE TABLE `ospos_stock_locations` (
  `location_id` int(11) NOT NULL,
  `location_name` varchar(255) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_stock_locations`
--

INSERT INTO `ospos_stock_locations` (`location_id`, `location_name`, `deleted`) VALUES
(1, 'stock', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ospos_suppliers`
--

CREATE TABLE `ospos_suppliers` (
  `person_id` int(10) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `agency_name` varchar(255) NOT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospos_suppliers`
--

INSERT INTO `ospos_suppliers` (`person_id`, `company_name`, `agency_name`, `account_number`, `deleted`) VALUES
(2, 'Uniliver Bangladesh', '', NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ospos_app_config`
--
ALTER TABLE `ospos_app_config`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `ospos_customers`
--
ALTER TABLE `ospos_customers`
  ADD UNIQUE KEY `account_number` (`account_number`),
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `ospos_employees`
--
ALTER TABLE `ospos_employees`
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `ospos_giftcards`
--
ALTER TABLE `ospos_giftcards`
  ADD PRIMARY KEY (`giftcard_id`),
  ADD UNIQUE KEY `giftcard_number` (`giftcard_number`),
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `ospos_grants`
--
ALTER TABLE `ospos_grants`
  ADD PRIMARY KEY (`permission_id`,`person_id`),
  ADD KEY `ospos_grants_ibfk_2` (`person_id`);

--
-- Indexes for table `ospos_inventory`
--
ALTER TABLE `ospos_inventory`
  ADD PRIMARY KEY (`trans_id`),
  ADD KEY `trans_items` (`trans_items`),
  ADD KEY `trans_user` (`trans_user`),
  ADD KEY `trans_location` (`trans_location`);

--
-- Indexes for table `ospos_items`
--
ALTER TABLE `ospos_items`
  ADD PRIMARY KEY (`item_id`),
  ADD UNIQUE KEY `item_number` (`item_number`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `ospos_items_taxes`
--
ALTER TABLE `ospos_items_taxes`
  ADD PRIMARY KEY (`item_id`,`name`,`percent`);

--
-- Indexes for table `ospos_item_kits`
--
ALTER TABLE `ospos_item_kits`
  ADD PRIMARY KEY (`item_kit_id`);

--
-- Indexes for table `ospos_item_kit_items`
--
ALTER TABLE `ospos_item_kit_items`
  ADD PRIMARY KEY (`item_kit_id`,`item_id`,`quantity`),
  ADD KEY `ospos_item_kit_items_ibfk_2` (`item_id`);

--
-- Indexes for table `ospos_item_quantities`
--
ALTER TABLE `ospos_item_quantities`
  ADD PRIMARY KEY (`item_id`,`location_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `ospos_modules`
--
ALTER TABLE `ospos_modules`
  ADD PRIMARY KEY (`module_id`),
  ADD UNIQUE KEY `desc_lang_key` (`desc_lang_key`),
  ADD UNIQUE KEY `name_lang_key` (`name_lang_key`);

--
-- Indexes for table `ospos_people`
--
ALTER TABLE `ospos_people`
  ADD PRIMARY KEY (`person_id`);

--
-- Indexes for table `ospos_permissions`
--
ALTER TABLE `ospos_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `module_id` (`module_id`),
  ADD KEY `ospos_permissions_ibfk_2` (`location_id`);

--
-- Indexes for table `ospos_receivings`
--
ALTER TABLE `ospos_receivings`
  ADD PRIMARY KEY (`receiving_id`),
  ADD UNIQUE KEY `invoice_number` (`invoice_number`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `ospos_receivings_items`
--
ALTER TABLE `ospos_receivings_items`
  ADD PRIMARY KEY (`receiving_id`,`item_id`,`line`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `ospos_sales`
--
ALTER TABLE `ospos_sales`
  ADD PRIMARY KEY (`sale_id`),
  ADD UNIQUE KEY `invoice_number` (`invoice_number`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `sale_time` (`sale_time`);

--
-- Indexes for table `ospos_sales_items`
--
ALTER TABLE `ospos_sales_items`
  ADD PRIMARY KEY (`sale_id`,`item_id`,`line`),
  ADD KEY `sale_id` (`sale_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `item_location` (`item_location`);

--
-- Indexes for table `ospos_sales_items_taxes`
--
ALTER TABLE `ospos_sales_items_taxes`
  ADD PRIMARY KEY (`sale_id`,`item_id`,`line`,`name`,`percent`),
  ADD KEY `sale_id` (`sale_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `ospos_sales_payments`
--
ALTER TABLE `ospos_sales_payments`
  ADD PRIMARY KEY (`sale_id`,`payment_type`),
  ADD KEY `sale_id` (`sale_id`);

--
-- Indexes for table `ospos_sales_suspended`
--
ALTER TABLE `ospos_sales_suspended`
  ADD PRIMARY KEY (`sale_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `ospos_sales_suspended_items`
--
ALTER TABLE `ospos_sales_suspended_items`
  ADD PRIMARY KEY (`sale_id`,`item_id`,`line`),
  ADD KEY `sale_id` (`sale_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `ospos_sales_suspended_items_ibfk_3` (`item_location`);

--
-- Indexes for table `ospos_sales_suspended_items_taxes`
--
ALTER TABLE `ospos_sales_suspended_items_taxes`
  ADD PRIMARY KEY (`sale_id`,`item_id`,`line`,`name`,`percent`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `ospos_sales_suspended_payments`
--
ALTER TABLE `ospos_sales_suspended_payments`
  ADD PRIMARY KEY (`sale_id`,`payment_type`);

--
-- Indexes for table `ospos_sessions`
--
ALTER TABLE `ospos_sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `ospos_stock_locations`
--
ALTER TABLE `ospos_stock_locations`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `ospos_suppliers`
--
ALTER TABLE `ospos_suppliers`
  ADD UNIQUE KEY `account_number` (`account_number`),
  ADD KEY `person_id` (`person_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ospos_giftcards`
--
ALTER TABLE `ospos_giftcards`
  MODIFY `giftcard_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ospos_inventory`
--
ALTER TABLE `ospos_inventory`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ospos_items`
--
ALTER TABLE `ospos_items`
  MODIFY `item_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ospos_item_kits`
--
ALTER TABLE `ospos_item_kits`
  MODIFY `item_kit_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ospos_people`
--
ALTER TABLE `ospos_people`
  MODIFY `person_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `ospos_receivings`
--
ALTER TABLE `ospos_receivings`
  MODIFY `receiving_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ospos_sales`
--
ALTER TABLE `ospos_sales`
  MODIFY `sale_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ospos_sales_suspended`
--
ALTER TABLE `ospos_sales_suspended`
  MODIFY `sale_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ospos_stock_locations`
--
ALTER TABLE `ospos_stock_locations`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `ospos_customers`
--
ALTER TABLE `ospos_customers`
  ADD CONSTRAINT `ospos_customers_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `ospos_people` (`person_id`);

--
-- Constraints for table `ospos_employees`
--
ALTER TABLE `ospos_employees`
  ADD CONSTRAINT `ospos_employees_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `ospos_people` (`person_id`);

--
-- Constraints for table `ospos_giftcards`
--
ALTER TABLE `ospos_giftcards`
  ADD CONSTRAINT `ospos_giftcards_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `ospos_people` (`person_id`);

--
-- Constraints for table `ospos_grants`
--
ALTER TABLE `ospos_grants`
  ADD CONSTRAINT `ospos_grants_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `ospos_permissions` (`permission_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ospos_grants_ibfk_2` FOREIGN KEY (`person_id`) REFERENCES `ospos_employees` (`person_id`) ON DELETE CASCADE;

--
-- Constraints for table `ospos_inventory`
--
ALTER TABLE `ospos_inventory`
  ADD CONSTRAINT `ospos_inventory_ibfk_1` FOREIGN KEY (`trans_items`) REFERENCES `ospos_items` (`item_id`),
  ADD CONSTRAINT `ospos_inventory_ibfk_2` FOREIGN KEY (`trans_user`) REFERENCES `ospos_employees` (`person_id`),
  ADD CONSTRAINT `ospos_inventory_ibfk_3` FOREIGN KEY (`trans_location`) REFERENCES `ospos_stock_locations` (`location_id`);

--
-- Constraints for table `ospos_items`
--
ALTER TABLE `ospos_items`
  ADD CONSTRAINT `ospos_items_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `ospos_suppliers` (`person_id`);

--
-- Constraints for table `ospos_items_taxes`
--
ALTER TABLE `ospos_items_taxes`
  ADD CONSTRAINT `ospos_items_taxes_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`) ON DELETE CASCADE;

--
-- Constraints for table `ospos_item_kit_items`
--
ALTER TABLE `ospos_item_kit_items`
  ADD CONSTRAINT `ospos_item_kit_items_ibfk_1` FOREIGN KEY (`item_kit_id`) REFERENCES `ospos_item_kits` (`item_kit_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ospos_item_kit_items_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`) ON DELETE CASCADE;

--
-- Constraints for table `ospos_item_quantities`
--
ALTER TABLE `ospos_item_quantities`
  ADD CONSTRAINT `ospos_item_quantities_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`),
  ADD CONSTRAINT `ospos_item_quantities_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `ospos_stock_locations` (`location_id`);

--
-- Constraints for table `ospos_permissions`
--
ALTER TABLE `ospos_permissions`
  ADD CONSTRAINT `ospos_permissions_ibfk_1` FOREIGN KEY (`module_id`) REFERENCES `ospos_modules` (`module_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ospos_permissions_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `ospos_stock_locations` (`location_id`) ON DELETE CASCADE;

--
-- Constraints for table `ospos_receivings`
--
ALTER TABLE `ospos_receivings`
  ADD CONSTRAINT `ospos_receivings_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `ospos_employees` (`person_id`),
  ADD CONSTRAINT `ospos_receivings_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `ospos_suppliers` (`person_id`);

--
-- Constraints for table `ospos_receivings_items`
--
ALTER TABLE `ospos_receivings_items`
  ADD CONSTRAINT `ospos_receivings_items_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`),
  ADD CONSTRAINT `ospos_receivings_items_ibfk_2` FOREIGN KEY (`receiving_id`) REFERENCES `ospos_receivings` (`receiving_id`);

--
-- Constraints for table `ospos_sales`
--
ALTER TABLE `ospos_sales`
  ADD CONSTRAINT `ospos_sales_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `ospos_employees` (`person_id`),
  ADD CONSTRAINT `ospos_sales_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `ospos_customers` (`person_id`);

--
-- Constraints for table `ospos_sales_items`
--
ALTER TABLE `ospos_sales_items`
  ADD CONSTRAINT `ospos_sales_items_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`),
  ADD CONSTRAINT `ospos_sales_items_ibfk_2` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales` (`sale_id`),
  ADD CONSTRAINT `ospos_sales_items_ibfk_3` FOREIGN KEY (`item_location`) REFERENCES `ospos_stock_locations` (`location_id`);

--
-- Constraints for table `ospos_sales_items_taxes`
--
ALTER TABLE `ospos_sales_items_taxes`
  ADD CONSTRAINT `ospos_sales_items_taxes_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales_items` (`sale_id`),
  ADD CONSTRAINT `ospos_sales_items_taxes_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`);

--
-- Constraints for table `ospos_sales_payments`
--
ALTER TABLE `ospos_sales_payments`
  ADD CONSTRAINT `ospos_sales_payments_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales` (`sale_id`);

--
-- Constraints for table `ospos_sales_suspended`
--
ALTER TABLE `ospos_sales_suspended`
  ADD CONSTRAINT `ospos_sales_suspended_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `ospos_employees` (`person_id`),
  ADD CONSTRAINT `ospos_sales_suspended_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `ospos_customers` (`person_id`);

--
-- Constraints for table `ospos_sales_suspended_items`
--
ALTER TABLE `ospos_sales_suspended_items`
  ADD CONSTRAINT `ospos_sales_suspended_items_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`),
  ADD CONSTRAINT `ospos_sales_suspended_items_ibfk_2` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales_suspended` (`sale_id`),
  ADD CONSTRAINT `ospos_sales_suspended_items_ibfk_3` FOREIGN KEY (`item_location`) REFERENCES `ospos_stock_locations` (`location_id`);

--
-- Constraints for table `ospos_sales_suspended_items_taxes`
--
ALTER TABLE `ospos_sales_suspended_items_taxes`
  ADD CONSTRAINT `ospos_sales_suspended_items_taxes_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales_suspended_items` (`sale_id`),
  ADD CONSTRAINT `ospos_sales_suspended_items_taxes_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `ospos_items` (`item_id`);

--
-- Constraints for table `ospos_sales_suspended_payments`
--
ALTER TABLE `ospos_sales_suspended_payments`
  ADD CONSTRAINT `ospos_sales_suspended_payments_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `ospos_sales_suspended` (`sale_id`);

--
-- Constraints for table `ospos_suppliers`
--
ALTER TABLE `ospos_suppliers`
  ADD CONSTRAINT `ospos_suppliers_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `ospos_people` (`person_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
