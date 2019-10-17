-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 17, 2019 at 07:59 PM
-- Server version: 10.1.41-MariaDB-0+deb9u1
-- PHP Version: 7.0.33-0+deb9u5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin_currents`
--

-- --------------------------------------------------------

--
-- Table structure for table `current_info`
--

CREATE TABLE IF NOT EXISTS `current_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `short` varchar(8) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `short` (`short`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `current_info`
--

INSERT INTO `current_info` (`id`, `name`, `short`, `created_at`) VALUES
(1, 'United Arab Emirates Dirham', 'AED', '2019-10-17 19:57:57'),
(2, 'Afghan Afghani', 'AFN', '2019-10-17 19:57:57'),
(3, 'Albanian Lek', 'ALL', '2019-10-17 19:57:57'),
(4, 'Armenian Dram', 'AMD', '2019-10-17 19:57:57'),
(5, 'Netherlands Antillean Guilder', 'ANG', '2019-10-17 19:57:57'),
(6, 'Angolan Kwanza', 'AOA', '2019-10-17 19:57:57'),
(7, 'Argentine Peso', 'ARS', '2019-10-17 19:57:57'),
(8, 'Australian Dollar', 'AUD', '2019-10-17 19:57:57'),
(9, 'Aruban Florin', 'AWG', '2019-10-17 19:57:57'),
(10, 'Azerbaijani Manat', 'AZN', '2019-10-17 19:57:57'),
(11, 'Bosnia-Herzegovina Convertible Mark', 'BAM', '2019-10-17 19:57:57'),
(12, 'Barbadian Dollar', 'BBD', '2019-10-17 19:57:57'),
(13, 'Bangladeshi Taka', 'BDT', '2019-10-17 19:57:57'),
(14, 'Bulgarian Lev', 'BGN', '2019-10-17 19:57:57'),
(15, 'Bahraini Dinar', 'BHD', '2019-10-17 19:57:57'),
(16, 'Burundian Franc', 'BIF', '2019-10-17 19:57:57'),
(17, 'Bermudan Dollar', 'BMD', '2019-10-17 19:57:57'),
(18, 'Brunei Dollar', 'BND', '2019-10-17 19:57:57'),
(19, 'Bolivian Boliviano', 'BOB', '2019-10-17 19:57:57'),
(20, 'Brazilian Real', 'BRL', '2019-10-17 19:57:57'),
(21, 'Bahamian Dollar', 'BSD', '2019-10-17 19:57:57'),
(22, 'Bitcoin', 'BTC', '2019-10-17 19:57:57'),
(23, 'Bhutanese Ngultrum', 'BTN', '2019-10-17 19:57:57'),
(24, 'Botswanan Pula', 'BWP', '2019-10-17 19:57:57'),
(25, 'Belarusian Ruble', 'BYR', '2019-10-17 19:57:57'),
(26, 'New Belarusian Ruble', 'BYN', '2019-10-17 19:57:57'),
(27, 'Belize Dollar', 'BZD', '2019-10-17 19:57:57'),
(28, 'Canadian Dollar', 'CAD', '2019-10-17 19:57:57'),
(29, 'Congolese Franc', 'CDF', '2019-10-17 19:57:57'),
(30, 'Swiss Franc', 'CHF', '2019-10-17 19:57:57'),
(31, 'Chilean Unit of Account (UF)', 'CLF', '2019-10-17 19:57:57'),
(32, 'Chilean Peso', 'CLP', '2019-10-17 19:57:57'),
(33, 'Chinese Yuan', 'CNY', '2019-10-17 19:57:57'),
(34, 'Colombian Peso', 'COP', '2019-10-17 19:57:57'),
(35, 'Costa Rican Colón', 'CRC', '2019-10-17 19:57:57'),
(36, 'Cuban Convertible Peso', 'CUC', '2019-10-17 19:57:57'),
(37, 'Cuban Peso', 'CUP', '2019-10-17 19:57:57'),
(38, 'Cape Verdean Escudo', 'CVE', '2019-10-17 19:57:57'),
(39, 'Czech Republic Koruna', 'CZK', '2019-10-17 19:57:57'),
(40, 'Djiboutian Franc', 'DJF', '2019-10-17 19:57:57'),
(41, 'Danish Krone', 'DKK', '2019-10-17 19:57:57'),
(42, 'Dominican Peso', 'DOP', '2019-10-17 19:57:57'),
(43, 'Algerian Dinar', 'DZD', '2019-10-17 19:57:57'),
(44, 'Egyptian Pound', 'EGP', '2019-10-17 19:57:57'),
(45, 'Eritrean Nakfa', 'ERN', '2019-10-17 19:57:57'),
(46, 'Ethiopian Birr', 'ETB', '2019-10-17 19:57:57'),
(47, 'Euro', 'EUR', '2019-10-17 19:57:57'),
(48, 'Fijian Dollar', 'FJD', '2019-10-17 19:57:57'),
(49, 'Falkland Islands Pound', 'FKP', '2019-10-17 19:57:57'),
(50, 'British Pound Sterling', 'GBP', '2019-10-17 19:57:57'),
(51, 'Georgian Lari', 'GEL', '2019-10-17 19:57:57'),
(52, 'Guernsey Pound', 'GGP', '2019-10-17 19:57:57'),
(53, 'Ghanaian Cedi', 'GHS', '2019-10-17 19:57:57'),
(54, 'Gibraltar Pound', 'GIP', '2019-10-17 19:57:57'),
(55, 'Gambian Dalasi', 'GMD', '2019-10-17 19:57:57'),
(56, 'Guinean Franc', 'GNF', '2019-10-17 19:57:57'),
(57, 'Guatemalan Quetzal', 'GTQ', '2019-10-17 19:57:57'),
(58, 'Guyanaese Dollar', 'GYD', '2019-10-17 19:57:57'),
(59, 'Hong Kong Dollar', 'HKD', '2019-10-17 19:57:57'),
(60, 'Honduran Lempira', 'HNL', '2019-10-17 19:57:57'),
(61, 'Croatian Kuna', 'HRK', '2019-10-17 19:57:57'),
(62, 'Haitian Gourde', 'HTG', '2019-10-17 19:57:57'),
(63, 'Hungarian Forint', 'HUF', '2019-10-17 19:57:57'),
(64, 'Indonesian Rupiah', 'IDR', '2019-10-17 19:57:57'),
(65, 'Israeli New Sheqel', 'ILS', '2019-10-17 19:57:57'),
(66, 'Manx pound', 'IMP', '2019-10-17 19:57:57'),
(67, 'Indian Rupee', 'INR', '2019-10-17 19:57:57'),
(68, 'Iraqi Dinar', 'IQD', '2019-10-17 19:57:57'),
(69, 'Iranian Rial', 'IRR', '2019-10-17 19:57:57'),
(70, 'Icelandic Króna', 'ISK', '2019-10-17 19:57:57'),
(71, 'Jersey Pound', 'JEP', '2019-10-17 19:57:57'),
(72, 'Jamaican Dollar', 'JMD', '2019-10-17 19:57:57'),
(73, 'Jordanian Dinar', 'JOD', '2019-10-17 19:57:57'),
(74, 'Japanese Yen', 'JPY', '2019-10-17 19:57:57'),
(75, 'Kenyan Shilling', 'KES', '2019-10-17 19:57:57'),
(76, 'Kyrgystani Som', 'KGS', '2019-10-17 19:57:57'),
(77, 'Cambodian Riel', 'KHR', '2019-10-17 19:57:57'),
(78, 'Comorian Franc', 'KMF', '2019-10-17 19:57:57'),
(79, 'North Korean Won', 'KPW', '2019-10-17 19:57:57'),
(80, 'South Korean Won', 'KRW', '2019-10-17 19:57:57'),
(81, 'Kuwaiti Dinar', 'KWD', '2019-10-17 19:57:57'),
(82, 'Cayman Islands Dollar', 'KYD', '2019-10-17 19:57:57'),
(83, 'Kazakhstani Tenge', 'KZT', '2019-10-17 19:57:57'),
(84, 'Laotian Kip', 'LAK', '2019-10-17 19:57:57'),
(85, 'Lebanese Pound', 'LBP', '2019-10-17 19:57:57'),
(86, 'Sri Lankan Rupee', 'LKR', '2019-10-17 19:57:57'),
(87, 'Liberian Dollar', 'LRD', '2019-10-17 19:57:57'),
(88, 'Lesotho Loti', 'LSL', '2019-10-17 19:57:57'),
(89, 'Lithuanian Litas', 'LTL', '2019-10-17 19:57:57'),
(90, 'Latvian Lats', 'LVL', '2019-10-17 19:57:57'),
(91, 'Libyan Dinar', 'LYD', '2019-10-17 19:57:57'),
(92, 'Moroccan Dirham', 'MAD', '2019-10-17 19:57:57'),
(93, 'Moldovan Leu', 'MDL', '2019-10-17 19:57:57'),
(94, 'Malagasy Ariary', 'MGA', '2019-10-17 19:57:57'),
(95, 'Macedonian Denar', 'MKD', '2019-10-17 19:57:57'),
(96, 'Myanma Kyat', 'MMK', '2019-10-17 19:57:57'),
(97, 'Mongolian Tugrik', 'MNT', '2019-10-17 19:57:57'),
(98, 'Macanese Pataca', 'MOP', '2019-10-17 19:57:57'),
(99, 'Mauritanian Ouguiya', 'MRO', '2019-10-17 19:57:57'),
(100, 'Mauritian Rupee', 'MUR', '2019-10-17 19:57:57'),
(101, 'Maldivian Rufiyaa', 'MVR', '2019-10-17 19:57:57'),
(102, 'Malawian Kwacha', 'MWK', '2019-10-17 19:57:57'),
(103, 'Mexican Peso', 'MXN', '2019-10-17 19:57:57'),
(104, 'Malaysian Ringgit', 'MYR', '2019-10-17 19:57:57'),
(105, 'Mozambican Metical', 'MZN', '2019-10-17 19:57:57'),
(106, 'Namibian Dollar', 'NAD', '2019-10-17 19:57:57'),
(107, 'Nigerian Naira', 'NGN', '2019-10-17 19:57:57'),
(108, 'Nicaraguan Córdoba', 'NIO', '2019-10-17 19:57:57'),
(109, 'Norwegian Krone', 'NOK', '2019-10-17 19:57:57'),
(110, 'Nepalese Rupee', 'NPR', '2019-10-17 19:57:57'),
(111, 'New Zealand Dollar', 'NZD', '2019-10-17 19:57:57'),
(112, 'Omani Rial', 'OMR', '2019-10-17 19:57:57'),
(113, 'Panamanian Balboa', 'PAB', '2019-10-17 19:57:57'),
(114, 'Peruvian Nuevo Sol', 'PEN', '2019-10-17 19:57:57'),
(115, 'Papua New Guinean Kina', 'PGK', '2019-10-17 19:57:57'),
(116, 'Philippine Peso', 'PHP', '2019-10-17 19:57:57'),
(117, 'Pakistani Rupee', 'PKR', '2019-10-17 19:57:57'),
(118, 'Polish Zloty', 'PLN', '2019-10-17 19:57:57'),
(119, 'Paraguayan Guarani', 'PYG', '2019-10-17 19:57:57'),
(120, 'Qatari Rial', 'QAR', '2019-10-17 19:57:57'),
(121, 'Romanian Leu', 'RON', '2019-10-17 19:57:57'),
(122, 'Serbian Dinar', 'RSD', '2019-10-17 19:57:57'),
(123, 'Russian Ruble', 'RUB', '2019-10-17 19:57:57'),
(124, 'Rwandan Franc', 'RWF', '2019-10-17 19:57:57'),
(125, 'Saudi Riyal', 'SAR', '2019-10-17 19:57:57'),
(126, 'Solomon Islands Dollar', 'SBD', '2019-10-17 19:57:57'),
(127, 'Seychellois Rupee', 'SCR', '2019-10-17 19:57:57'),
(128, 'Sudanese Pound', 'SDG', '2019-10-17 19:57:57'),
(129, 'Swedish Krona', 'SEK', '2019-10-17 19:57:57'),
(130, 'Singapore Dollar', 'SGD', '2019-10-17 19:57:57'),
(131, 'Saint Helena Pound', 'SHP', '2019-10-17 19:57:57'),
(132, 'Sierra Leonean Leone', 'SLL', '2019-10-17 19:57:57'),
(133, 'Somali Shilling', 'SOS', '2019-10-17 19:57:57'),
(134, 'Surinamese Dollar', 'SRD', '2019-10-17 19:57:57'),
(135, 'São Tomé and Príncipe Dobra', 'STD', '2019-10-17 19:57:57'),
(136, 'Salvadoran Colón', 'SVC', '2019-10-17 19:57:57'),
(137, 'Syrian Pound', 'SYP', '2019-10-17 19:57:57'),
(138, 'Swazi Lilangeni', 'SZL', '2019-10-17 19:57:57'),
(139, 'Thai Baht', 'THB', '2019-10-17 19:57:57'),
(140, 'Tajikistani Somoni', 'TJS', '2019-10-17 19:57:57'),
(141, 'Turkmenistani Manat', 'TMT', '2019-10-17 19:57:57'),
(142, 'Tunisian Dinar', 'TND', '2019-10-17 19:57:57'),
(143, 'Tongan Paʻanga', 'TOP', '2019-10-17 19:57:57'),
(144, 'Turkish Lira', 'TRY', '2019-10-17 19:57:57'),
(145, 'Trinidad and Tobago Dollar', 'TTD', '2019-10-17 19:57:57'),
(146, 'New Taiwan Dollar', 'TWD', '2019-10-17 19:57:57'),
(147, 'Tanzanian Shilling', 'TZS', '2019-10-17 19:57:57'),
(148, 'Ukrainian Hryvnia', 'UAH', '2019-10-17 19:57:57'),
(149, 'Ugandan Shilling', 'UGX', '2019-10-17 19:57:57'),
(150, 'United States Dollar', 'USD', '2019-10-17 19:57:57'),
(151, 'Uruguayan Peso', 'UYU', '2019-10-17 19:57:57'),
(152, 'Uzbekistan Som', 'UZS', '2019-10-17 19:57:57'),
(153, 'Venezuelan Bolívar Fuerte', 'VEF', '2019-10-17 19:57:57'),
(154, 'Vietnamese Dong', 'VND', '2019-10-17 19:57:57'),
(155, 'Vanuatu Vatu', 'VUV', '2019-10-17 19:57:57'),
(156, 'Samoan Tala', 'WST', '2019-10-17 19:57:57'),
(157, 'CFA Franc BEAC', 'XAF', '2019-10-17 19:57:57'),
(158, 'Silver (troy ounce)', 'XAG', '2019-10-17 19:57:57'),
(159, 'Gold (troy ounce)', 'XAU', '2019-10-17 19:57:57'),
(160, 'East Caribbean Dollar', 'XCD', '2019-10-17 19:57:57'),
(161, 'Special Drawing Rights', 'XDR', '2019-10-17 19:57:57'),
(162, 'CFA Franc BCEAO', 'XOF', '2019-10-17 19:57:57'),
(163, 'CFP Franc', 'XPF', '2019-10-17 19:57:57'),
(164, 'Yemeni Rial', 'YER', '2019-10-17 19:57:57'),
(165, 'South African Rand', 'ZAR', '2019-10-17 19:57:57'),
(166, 'Zambian Kwacha (pre-2013)', 'ZMK', '2019-10-17 19:57:57'),
(167, 'Zambian Kwacha', 'ZMW', '2019-10-17 19:57:57'),
(168, 'Zimbabwean Dollar', 'ZWL', '2019-10-17 19:57:57');

-- --------------------------------------------------------

--
-- Table structure for table `totals`
--

CREATE TABLE IF NOT EXISTS `totals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `t_timestamp` timestamp NULL DEFAULT NULL,
  `t_base` varchar(8) NOT NULL,
  `t_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `totals_records`
--

CREATE TABLE IF NOT EXISTS `totals_records` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `total_id` int(11) NOT NULL,
  `name` varchar(8) NOT NULL,
  `value` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `total_id` (`total_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;