-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2025 at 01:26 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aws`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` varchar(20) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `product_id` varchar(10) NOT NULL,
  `cart_quantity` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `user_id`, `product_id`, `cart_quantity`) VALUES
('haiya', 'haiya', 'P001', 1),
('haiya', 'haiya', 'P008', 3);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` varchar(100) DEFAULT NULL,
  `category_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`) VALUES
('Graduation Cap', 'Graduation Cap'),
('Graduation Hood', 'Graduation Hood'),
('Graduation Set', 'Graduation Set'),
('Other', 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `history_id` varchar(20) DEFAULT NULL,
  `payment_id` varchar(50) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `history_product_id` varchar(10) DEFAULT NULL,
  `history_product_quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `history_id`, `payment_id`, `user_id`, `history_product_id`, `history_product_quantity`) VALUES
(20, 'HIST001', NULL, '12', 'P005', 1),
(23, 'HIST002', NULL, '12', 'P005', 1),
(26, 'HIST003', NULL, '12', 'P008', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` varchar(30) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `user_id`, `amount`, `payment_date`) VALUES
('PAY20250504130922', '12', 217.37, '2025-05-04 19:09:22'),
('PAY20250504130955', '12', 944.30, '2025-05-04 19:09:55'),
('PAY20250504131200', '12', 13.49, '2025-05-04 19:12:00'),
('PAY20250504131247', '12', 16.99, '2025-05-04 19:12:47'),
('PAY20250504131310', '12', 21.99, '2025-05-04 19:13:10'),
('PAY20250504131703', '12', 12.99, '2025-05-04 19:17:03'),
('PAY20250504131724', '12', 12.99, '2025-05-04 19:17:24'),
('PAY20250504131803', '12', 21.99, '2025-05-04 19:18:03'),
('PAY20250504131915', '12', 78.98, '2025-05-04 19:19:15'),
('PAY20250504131938', '12', 39.99, '2025-05-04 19:19:38');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` varchar(10) NOT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `product_price` decimal(10,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category_id` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_price`, `description`, `quantity`, `image`, `category_id`) VALUES
('P001', 'Classic Black Graduation Cap', 12.99, 'Traditional black graduation cap with tassel.', 98, 'P001.png', 'graduation cap'),
('P002', 'Blue Graduation Cap', 13.49, 'Navy blue graduation cap with matching tassel.', 1, 'P002.png', 'graduation cap'),
('P003', 'Custom Embroidered Cap', 16.99, 'Black cap with embroidered \"Class of 2025\".', -37, 'P003.png', 'graduation cap'),
('P004', 'Graduation Hood - Bachelor', 19.99, 'Bachelor-level graduation hood, black with trim.', 50, 'P004.png', 'graduation hood'),
('P005', 'Graduation Hood - Master', 21.99, 'Master\'s hood with satin lining.', 43, 'P005.png', 'graduation hood'),
('P006', 'Graduation Hood - PhD', 24.99, 'PhD hood with velvet panels.', 40, 'P006.png', 'graduation hood'),
('P007', 'Standard Graduation Set', 34.99, 'Black gown, cap, and tassel set.', 100, 'P007.png', 'graduation set'),
('P008', 'Premium Graduation Set - Navy', 39.99, 'High-quality navy graduation set.', 83, 'P008.png', 'graduation set'),
('P009', 'White Graduation Set - Female', 38.99, 'White gown set designed for female graduates.', 89, 'P009.png', 'graduation set'),
('P010', 'Graduation Teddy Bear - Black Gown', 14.99, 'Teddy bear in black graduation gown.', 90, 'P010.png', 'other'),
('P011', 'Graduation Flower Bouquet - Red Roses', 24.99, 'Red rose bouquet wrapped in gold.', 70, 'P011.png', 'other'),
('P012', 'Graduation Cap Keychain', 5.99, 'Keychain shaped like a graduation cap.', 150, 'P012.png', 'other'),
('P013', 'Mini Graduation Bear - Blue Gown', 13.49, 'Mini bear in blue graduation outfit.', 95, 'P013.png', 'other'),
('P014', 'Custom Photo Frame - Graduation Theme', 18.99, 'Photo frame with graduation design.', 60, 'P014.png', 'other'),
('P015', 'Graduation Cap - White', 13.99, 'White graduation cap with matching tassel.', 70, 'P015.png', 'graduation cap'),
('P016', 'Gold Trim Graduation Hood', 22.49, 'Graduation hood with elegant gold trim.', 35, 'P016.png', 'graduation hood'),
('P017', 'Graduation Set with Embroidered Gown', 44.99, 'Set with custom embroidered gown.', 70, 'P017.png', 'graduation set'),
('P018', 'Graduation Bear with Cap & Diploma', 15.49, 'Teddy bear holding diploma and wearing cap.', 85, 'P018.png', 'other'),
('P019', 'Graduation Flower Bouquet - Mixed Colors', 25.99, 'Colorful mixed flower bouquet.', 65, 'P019.png', 'other'),
('P020', 'Deluxe Graduation Set - Custom Color', 49.99, 'Custom color and logo graduation set.', 60, 'P020.png', 'graduation set'),
('P021', 'Cap with Tassel - Royal Blue', 14.49, 'Royal blue cap with elegant tassel.', 75, 'P021.png', 'graduation cap'),
('P022', 'Hood - Engineering Faculty Colors', 21.99, 'Engineering hood with faculty colors.', 30, 'P022.png', 'graduation hood'),
('P023', 'Graduation Cap - Velvet Finish', 17.99, 'Luxurious velvet graduation cap with tassel.', 55, 'P023.png', 'graduation cap'),
('P024', 'Mini Flower Bouquet with Bear', 22.49, 'Small bouquet and bear combo.', 75, 'P024.png', 'other'),
('P025', 'Graduation Set - Eco Friendly Material', 42.99, 'Set made from recycled materials.', 80, 'P025.png', 'graduation set'),
('P026', 'Graduation Gown Only - Black', 29.99, 'Plain black gown without cap/tassel.', 75, 'P026.png', 'graduation set'),
('P027', 'Hood - Custom Faculty Color', 23.49, 'Customizable graduation hood.', 25, 'P027.png', 'graduation hood'),
('P028', 'Graduation Stuffed Owl', 16.99, 'Stuffed owl with graduation cap and diploma.', 55, 'P028.png', 'other'),
('P029', 'Graduation Cap - Pink Edition', 14.99, 'Stylish pink graduation cap with tassel.', 65, 'P029.png', 'graduation cap'),
('P030', 'Graduation Flower Corsage', 9.99, 'Elegant wearable flower corsage.', 100, 'P030.png', 'other'),
('P031', 'Mini Diploma Scroll Keychain', 5.99, 'Mini rolled diploma with ribbon keychain.', 150, 'P031.png', 'other'),
('P032', 'Graduation Year Keychain - Class of 2025', 6.99, 'Metal keychain engraved \"Class of 2025\".', 140, 'P032.png', 'other'),
('P033', 'Graduation Cap & Tassel Charm Keychain', 7.99, 'Charm keychain with mini cap and tassel.', 160, 'P033.png', 'other');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` enum('Male','Female','Other') DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `shipping_address` text DEFAULT NULL,
  `role` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `password`, `gender`, `phone`, `shipping_address`, `role`) VALUES
('admin', '1', 'Male', '0198765432', 'Admin HQ', 1),
('user', '1', 'Male', '0123456789', '77, Lorong Lembah Permai 3, 11200 Tanjung Bungah, Pulau Pinang', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`,`product_id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `history_product_id` (`history_product_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `history_ibfk_1` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`payment_id`),
  ADD CONSTRAINT `history_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `history_ibfk_3` FOREIGN KEY (`history_product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
