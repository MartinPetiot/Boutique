-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 05, 2021 at 09:54 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(1, 't-shirt', 'Objet qu\'on met sur la partie supérieur de notre corps pour avoir chaud.'),
(2, 'pantalon', 'Objet qu\'on met sur la partie inférieure de notre corps pour ne pas avoir froid. '),
(3, 'chaussures', 'Objets dans lequels on rentre nos pieds pour éviter d\'avoir mal à ces derniers lorsque l\'on doit marcher.');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `address` varchar(90) NOT NULL,
  `zip` varchar(10) NOT NULL,
  `city` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `address`, `zip`, `city`) VALUES
(1, 'Chuck', 'Norris', '98 rue Roussy', '45000', 'Orléans'),
(2, 'Charlize', 'Theron', '56 rue Banaudon', '69006', 'Lyon'),
(3, 'Ryan', 'Gosling', '59 avenue du Marechal Juin', '68300', 'Saint-Louis');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `number`, `date`, `customer_id`) VALUES
(1, 1, '2020-12-11 14:49:07', 1),
(2, 2, '2020-12-06 14:50:47', 1),
(3, 3, '2020-12-08 14:51:31', 2),
(4, 4, '2020-12-07 14:52:50', 2),
(5, 5, '2020-12-11 14:53:06', 2);

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`order_id`, `product_id`, `quantity`) VALUES
(1, 1, 1),
(1, 3, 2),
(2, 12, 1),
(2, 9, 2),
(3, 2, 1),
(3, 12, 1),
(4, 3, 2),
(4, 11, 1),
(5, 1, 1),
(5, 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` text,
  `price` decimal(8,2) NOT NULL,
  `picture` varchar(45) NOT NULL,
  `weight` int(6) NOT NULL,
  `quantity` int(6) NOT NULL,
  `available` tinyint(4) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `picture`, `weight`, `quantity`, `available`, `category_id`) VALUES
(1, 't-shirt bleu homme', NULL, '100.00', 'tshirt_blue_man.png', 1000, 10, 1, 1),
(2, 't-shirt bleu femme', NULL, '100.00', 'tshirt_blue_woman.png', 1000, 10, 1, 1),
(3, 't-shirt noir homme', NULL, '10.00', 'tshirt_black_man.png', 500, 1, 1, 1),
(4, 't-shirt noir femme', NULL, '10.00', 'tshirt_black_woman.png', 500, 1, 1, 1),
(5, 't-shirt gris homme', NULL, '10.00', 'tshirt_grey_man.png', 500, 1, 0, 1),
(6, 't-shirt gris femme', NULL, '10.00', 'tshirt_grey_woman.png', 500, 1, 0, 1),
(7, 'jean homme', NULL, '13.00', 'jeans_man.png', 500, 0, 1, 2),
(8, 'jean femme', NULL, '13.00', 'jeans_woman.png', 500, 0, 1, 2),
(9, 'pantalon cuir homme', NULL, '50.00', 'pants_leather_man.png', 1200, 2, 1, 2),
(10, 'pantalon cuir femme', NULL, '50.00', 'pants_leather_woman.png', 1200, 2, 1, 2),
(11, 'bottes 41', NULL, '500.00', 'boots_41.png', 1200, 5, 1, 3),
(12, 'bottes 42', NULL, '500.00', 'boots_42.png', 1200, 5, 1, 3),
(13, 'bottes 43', NULL, '500.00', 'boots_43.png', 1200, 5, 1, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_orders_customers1_idx` (`customer_id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD KEY `fk_Products_has_Orders_Orders1_idx` (`order_id`),
  ADD KEY `fk_Products_has_Orders_Products1_idx` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Products_category1_idx` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_orders_customers1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `fk_Products_has_Orders_Orders1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Products_has_Orders_Products1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_Products_category1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
