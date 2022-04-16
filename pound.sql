-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2021 at 05:57 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '123');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `category_id`) VALUES
(11, 'Levi\'s', 2),
(12, 'Denim', 2),
(13, 'Aarong', 2),
(14, 'Radhuni', 3),
(15, 'Praan', 3),
(16, 'Samsung', 20),
(17, 'Xiaomi', 20),
(18, 'LG', 20),
(19, 'MAC', 21),
(22, 'HUDA Beauty', 21);

-- --------------------------------------------------------

--
-- Table structure for table `categorys`
--

CREATE TABLE `categorys` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parents` tinyint(1) NOT NULL,
  `parentsof` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categorys`
--

INSERT INTO `categorys` (`id`, `name`, `parents`, `parentsof`) VALUES
(2, 'Fabrics', 1, 0),
(3, 'Groceries', 1, 0),
(7, 'cat child', 0, 0),
(8, 'f', 0, 0),
(10, '25', 0, 0),
(17, 'Men\'s Fashion', 0, 2),
(18, 'Women\'s Fashion', 0, 2),
(19, 'Kid\'s Corner', 0, 2),
(20, 'Electronics', 1, 0),
(21, 'Health & Beauty', 1, 0),
(28, 'sdfgd', 0, 27),
(30, 'Laundry & Household', 0, 3),
(31, 'TV', 0, 20),
(32, 'Refrigerator', 0, 20),
(33, 'Accessories', 0, 20),
(34, 'Hair Care', 0, 21),
(35, 'Beauty Tools', 0, 21),
(36, 'Makeup', 0, 21),
(37, 'Rice', 0, 3),
(38, 'Meat', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `img`, `product_id`) VALUES
(44, '63312300_pic1.png', 57),
(45, '92193221_pic9.png', 58),
(46, 'a7c43ee678.jpg', 59),
(47, '3cd2dee390.jpg', 63),
(52, '3d67c92415.jpg', 64),
(53, 'b9847c49da.jpg', 65),
(54, '62344364_pic6.png', 66),
(58, '95875445_[width_700]59_2021-06-15_08_58_59 (1).jpg', 59),
(59, '30909943_[width_700]53_2021-06-15_07_34_57 (3).jpg', 59),
(61, '64742314_dfgdfg.jpg', 57),
(65, '50896646_11145912_541331166023141_8608463679589080948_n.jpg', 57),
(66, '37476551_31779131_10225061145723dfghsdfgsdf08_7366214026147135488_n.jpg', 57),
(67, '49864441_31779131_1022506114572308_7366214026147135488_n.jpg', 57),
(68, '4490d74ed6.jpg', 67),
(70, '91223864_34.jpg', 68),
(71, '70930230_pant.jpg', 69),
(72, '85751973_ian-dooley-wzRKn-AjKf4-unsplash.jpg', 70);

-- --------------------------------------------------------

--
-- Table structure for table `office`
--

CREATE TABLE `office` (
  `id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `fax` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `office`
--

INSERT INTO `office` (`id`, `address`, `mobile`, `telephone`, `fax`, `email`) VALUES
(10, 'Kazi Nazrul Islam Avenue, Karwan Bazar, Dhaka-1215', '012 345 6789', '0212364', '112233', 'dokan @outlook.com'),
(11, 'Rupnagar Residential Area, Mirpur, Dhaka', '012 345 6789', '0212364', '112233', 'dokan @outlook.com');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  `payer_id` varchar(255) NOT NULL,
  `payer_email` varchar(255) NOT NULL,
  `amount` float(10,2) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `products_ids` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `payment_id`, `payer_id`, `payer_email`, `amount`, `currency`, `payment_status`, `fname`, `lname`, `mail`, `phone`, `zip`, `address`, `user_id`, `products_ids`) VALUES
(1, 'PAYID-MDF2IEI8UF79734AK999122P', 'QWFPLXGLGJZYQ', 'sb-gmw156513490@personal.example.com', 20.00, 'USD', 'approved', '', '', '', '', '', '', 0, ''),
(2, 'PAYID-MDGPSOA7YF84625GM214984L', 'QWFPLXGLGJZYQ', 'sb-gmw156513490@personal.example.com', 20.00, 'USD', 'approved', '', '', '', '', '', '', 0, ''),
(3, 'PAYID-MDGPTXQ5BW064522N3593829', 'QWFPLXGLGJZYQ', 'sb-gmw156513490@personal.example.com', 20.00, 'USD', 'approved', '', '', '', '', '', '', 0, ''),
(4, 'PAYID-MDGPU4Q1YY08386N5757472V', 'QWFPLXGLGJZYQ', 'sb-gmw156513490@personal.example.com', 20.00, 'USD', 'approved', '', '', '', '', '', '', 0, ''),
(5, 'PAYID-MDGQMDQ41R408384Y669602V', 'QWFPLXGLGJZYQ', 'sb-gmw156513490@personal.example.com', 59.00, 'USD', 'approved', '', '', '', '', '', '', 0, ''),
(6, 'PAYID-MDGQNCA3UH76717T57084628', 'QWFPLXGLGJZYQ', 'sb-gmw156513490@personal.example.com', 59.00, 'USD', 'approved', '', '', '', '', '', '', 0, ''),
(7, '', '', '', 0.00, '', 'pending', 'fg', 'df', 'dfg@GGF.G', 'DS', 'SD', 'SD', 0, '57'),
(8, '', '', '', 0.00, '', 'pending', 'fg', 'df', 'dfg@GGF.G', 'DS', 'SD', 'SD', 0, '57'),
(9, '', '', '', 0.00, '', 'pending', 'wed t', 'sd', 'sd@ff.h', 'd', 'df', 'df', 0, '59'),
(10, 'PAYID-MDGQ22I9D653700RP054921P', 'QWFPLXGLGJZYQ', 'sb-gmw156513490@personal.example.com', 25.00, 'USD', 'approved', '', '', '', '', '', '', 0, ''),
(11, '', '', '', 0.00, '', 'pending', 'wed t', 'sd', 'sd@ff.h', 'd', 'df', 'df', 0, '59'),
(12, 'PAYID-MDGRBFQ5SJ64653NP285435V', 'QWFPLXGLGJZYQ', 'sb-gmw156513490@personal.example.com', 25.00, 'USD', 'approved', '', '', '', '', '', '', 0, ''),
(13, '', '', '', 0.00, '', 'pending', 'fg', 'fgs', 'sdfg@gg.f', 'sdfg', 'sdf', 'serawawedd', 0, '59'),
(14, 'PAYID-MDGRDCI964676052B9076148', 'QWFPLXGLGJZYQ', 'sb-gmw156513490@personal.example.com', 25.00, 'USD', 'approved', '', '', '', '', '', '', 0, ''),
(15, '', '', '', 0.00, '', 'pending', 'fg', 'fgs', 'sdfg@gg.f', 'sdfg', 'sdf', 'serawawedd', 0, '59'),
(16, 'PAYID-MDGRDYY1D8660663T267873H', 'QWFPLXGLGJZYQ', 'sb-gmw156513490@personal.example.com', 25.00, 'USD', 'approved', '', '', '', '', '', '', 0, ''),
(17, '', '', '', 0.00, '', 'pending', 'test ', 'test', 'test@test', '1848561', '22', 'sfsd dsfg  ', 0, '59'),
(18, 'PAYID-MDGRHOY9VJ81334C5717291Y', 'QWFPLXGLGJZYQ', 'sb-gmw156513490@personal.example.com', 25.00, 'USD', 'approved', 'test2', 'test2', 'test2@test2.j', 'test2', 'test2', 'test2', 0, '59'),
(19, 'PAYID-MDGRKQA87S98221HW1441000', 'QWFPLXGLGJZYQ', 'sb-gmw156513490@personal.example.com', 25.00, 'USD', 'approved', 'sdf', 'sd', 'sd@wse', 'sd', 'df', 'ds', 0, '59'),
(20, 'PAYID-MDGROCI65E29192JY918493R', 'QWFPLXGLGJZYQ', 'sb-gmw156513490@personal.example.com', 25.00, 'USD', 'approved', 'df', 'dsf', 'sdf@df', 'df', 'xc', 'f', 0, '59'),
(21, 'PAYID-MDGROOQ3TA88207J0301794W', 'QWFPLXGLGJZYQ', 'sb-gmw156513490@personal.example.com', 25.00, 'USD', 'approved', 'df', 'dsf', 'sdf@df', 'df', 'xc', 'f', 0, '59'),
(22, 'PAYID-MDGRO7Y5HV713744J6584909', 'QWFPLXGLGJZYQ', 'sb-gmw156513490@personal.example.com', 25.00, 'USD', 'approved', 'df', 'dsf', 'sdf@df', 'df', 'xc', 'f', 0, '59'),
(23, 'PAYID-MDGRUJY9MW044475L379405A', 'QWFPLXGLGJZYQ', 'sb-gmw156513490@personal.example.com', 59.00, 'USD', 'approved', 'dfgh', 'sfg', 'dfg@ff', 'dfg', 'dfg', 'dfg', 0, '57'),
(24, '', '', '', 0.00, '', 'pending', 'dsfg', 'sdfg', 'adminfdsd@admin.com', 'sf', 'sdf', 'sdf', 5, '57'),
(25, '', '', '', 0.00, '', 'approved', 'dsfg', 'sdfg', 'adminfdsd@admin.com', 'sf', 'sdf', 'sdf', 5, '57'),
(26, 'PAYID-MFD3NSQ8KH17076WW7488049', 'QWFPLXGLGJZYQ', 'sb-gmw156513490@personal.example.com', 1.00, 'USD', 'approved', 'dsfg', 'sdfg', 'adminfdsd@admin.com', 'sf', 'sdf', 'sdf', 5, '57'),
(27, 'PAYID-MFD3P3I4JS090558R1740147', 'QWFPLXGLGJZYQ', 'sb-gmw156513490@personal.example.com', 1.00, 'USD', 'approved', 'dsfg', 'sdfg', 'adminfdsd@admin.com', 'sf', 'sdf', 'sdf', 5, '57'),
(28, 'PAYID-MFD3QLY1C005876N9555411E', 'QWFPLXGLGJZYQ', 'sb-gmw156513490@personal.example.com', 1.00, 'USD', 'approved', 'dsfg', 'sdfg', 'adminfdsd@admin.com', 'sf', 'sdf', 'sdf', 5, '57'),
(29, 'PAYID-MFD3Q7A2BW15832NL631054X', 'QWFPLXGLGJZYQ', 'sb-gmw156513490@personal.example.com', 46.00, 'USD', 'approved', 'dsfg', 'sdfg', 'adminfdsd@admin.com', 'sf', 'sdf', 'sdf', 5, '57,65'),
(30, '', '', '', 0.00, '', 'pending', 'fg', 'fgh', 'adminfgdsd@admin.com', 'fgh', 'fgh', 'fghfg', 8, '57'),
(31, '', '', '', 0.00, '', 'pending', 'dfsd', 'sdfa', 'admin@gg.com', 'asd', 'dsf', 'df', 6, '69'),
(32, '', '', '', 0.00, '', 'pending', 'dfsd', 'sdfa', 'admin@gg.com', 'asd', 'dsf', 'df', 6, '69');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` int(255) NOT NULL,
  `short_info` varchar(255) NOT NULL,
  `product_details` varchar(255) NOT NULL,
  `more_info` varchar(255) NOT NULL,
  `category` int(11) NOT NULL,
  `brand` int(11) NOT NULL,
  `top_f` tinyint(1) NOT NULL,
  `boottom_f` tinyint(1) NOT NULL,
  `add_to_home` tinyint(1) NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `price`, `short_info`, `product_details`, `more_info`, `category`, `brand`, `top_f`, `boottom_f`, `add_to_home`, `url`) VALUES
(57, 'jfgiu8df', 1, '<p>fdgh</p>', '<p>dfg</p>', '<p>fg</p>', 12, 7, 0, 0, 1, 'fgh_52189436'),
(58, 'ryuert', 4185, '<p>gh</p>', '<p>fgh</p>', '<p>fgh</p>', 15, 7, 0, 0, 1, 'ryuert_14764812'),
(59, 'dfgh', 25, '<p>dfgh</p>', '<p>dfgh</p>', '<p>dfgh</p>', 11, 7, 0, 0, 1, 'dfgh_75401862'),
(63, 'sfgh', 100, '<p>sfg</p>', '<p>sdfg</p>', '<p>sdfg</p>', 12, 7, 0, 0, 1, 'sfgh_65214812'),
(64, 'fhz dfg ', 745, '<p>fdf&nbsp;</p>', '<p>&nbsp;f df&nbsp;</p>', '0', 15, 7, 0, 0, 1, 'fhz_dfg__30106637'),
(65, 'cvb', 45, '<p>cvb</p>', '<p>cvb</p>', '<p>cvb</p>', 11, 7, 0, 0, 1, 'cvb_92093881'),
(67, 'uj', 0, '<p>ghj</p>', '<p>ghj</p>', '<p>ghj</p>', 12, 10, 1, 0, 0, 'uj_23103122'),
(68, 'dsfg', 0, '<p>sdfg</p>', '<p>sdfg</p>', '<p>sdfg</p>', 17, 7, 0, 1, 0, 'dsfg_96582100'),
(69, 'Jeans ', 30, '0', '0', '0', 17, 12, 0, 0, 0, 'Jeans__52495576'),
(70, 'T-shirt', 20, '0', '0', '0', 17, 11, 0, 0, 0, 'T-shirt_14900518');

-- --------------------------------------------------------

--
-- Table structure for table `site_info`
--

CREATE TABLE `site_info` (
  `id` int(11) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `details` varchar(255) NOT NULL,
  `fb` varchar(255) NOT NULL,
  `tw` varchar(255) NOT NULL,
  `ig` varchar(255) NOT NULL,
  `featurImg1` varchar(255) NOT NULL,
  `featurImg2` varchar(255) NOT NULL,
  `main_phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site_info`
--

INSERT INTO `site_info` (`id`, `logo`, `title`, `details`, `fb`, `tw`, `ig`, `featurImg1`, `featurImg2`, `main_phone`) VALUES
(1, '565434274a.png', 'Dokan', '266941663', 'gh', 'dghh', 'fgh', '789348427a.png', '76d2f76fee.jpg', '266941663');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `img`) VALUES
(28, 'b6c645f09f.jpg'),
(29, '1c5c4ffa1c.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `email`, `phone`, `zip`, `address`, `password`) VALUES
(5, 'dsfg', 'sdfg', 'adminfdsd@admin.com', 'sf', 'sdf', 'sdf', '123456'),
(6, 'dfsd', 'sdfa', 'admin@gg.com', 'asd', 'dsf', 'df', '124'),
(7, 'dfsd', 'sdfa', 'admin1@gg.com', 'asd', 'dsf', 'df', '123456'),
(8, 'fg', 'fgh', 'adminfgdsd@admin.com', 'fgh', 'fgh', 'fghfg', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorys`
--
ALTER TABLE `categorys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `office`
--
ALTER TABLE `office`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_info`
--
ALTER TABLE `site_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `categorys`
--
ALTER TABLE `categorys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `office`
--
ALTER TABLE `office`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `site_info`
--
ALTER TABLE `site_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
