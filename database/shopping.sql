-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-05-2022 a las 11:48:15
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `shopping`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '81dc9bdb52d04dc20036dbd8313ed055', '2022-05-23 15:21:18', '24-05-2022 03:03:12 AM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(3, 'Celulares', 'Teléfonos inteligentes', '2022-05-23 22:17:37', '23-05-2022 07:17:06 PM'),
(4, 'Electrónicos', 'Productos electrónicos', '2022-05-23 18:19:32', '24-05-2022 02:15:42 AM'),
(5, 'Pantallas', 'Pantallas de televisión', '2022-05-23 18:19:54', '23-05-2022 08:57:42 PM'),
(6, 'Componentes PC', 'Computación', '2022-05-23 18:18:52', '23-05-2022 09:00:13 PM'),
(11, 'Computadoras', 'Computadora portátil o  escritorio', '2022-05-24 00:18:34', '23-05-2022 09:19:32 PM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(7, 4, '2', 1, '2022-05-23 23:16:01', 'Internet Banking', 'Delivered'),
(8, 4, '11', 1, '2022-05-23 23:16:01', 'Internet Banking', 'Delivered'),
(9, 1, '4', 1, '2022-05-23 23:27:36', 'Debit / Credit card', NULL),
(10, 1, '17', 1, '2022-05-23 23:27:36', 'Debit / Credit card', NULL),
(11, 5, '1', 1, '2022-05-23 23:36:56', 'Debit / Credit card', 'Delivered'),
(12, 5, '2', 2, '2022-05-23 23:36:56', 'Debit / Credit card', 'Delivered'),
(13, 5, '3', 1, '2022-05-23 23:36:56', 'Debit / Credit card', 'Delivered'),
(14, 5, '21', 1, '2022-05-24 00:32:58', 'Debit / Credit card', 'Delivered'),
(15, 4, '22', 1, '2022-05-24 07:58:12', 'COD', NULL),
(16, 5, '1', 1, '2022-05-24 07:59:35', 'Debit / Credit card', NULL),
(17, 5, '5', 1, '2022-05-24 07:59:35', 'Debit / Credit card', 'Delivered');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'Order has been Shipped.', '2017-03-10 19:36:45'),
(2, 1, 'Delivered', 'Order Has been delivered', '2017-03-10 19:37:31'),
(3, 3, 'Delivered', 'Product delivered successfully', '2017-03-10 19:43:04'),
(4, 4, 'in Process', 'Product ready for Shipping', '2017-03-10 19:50:36'),
(5, 7, 'Delivered', 'a', '2022-05-23 23:30:13'),
(6, 8, 'Delivered', 'ds', '2022-05-23 23:30:41'),
(7, 11, 'Delivered', 'a', '2022-05-24 00:05:51'),
(8, 12, 'Delivered', 'jkhj', '2022-05-24 00:15:36'),
(9, 13, 'Delivered', 'zxcz', '2022-05-24 00:15:47'),
(10, 14, 'in Process', 'ahi te va', '2022-05-24 00:33:36'),
(11, 14, 'Delivered', 'ya men ya tas pobre', '2022-05-24 00:34:07'),
(12, 17, 'in Process', 'aHI TE VA TU CEL', '2022-05-24 08:53:22'),
(13, 17, 'Delivered', 'lISTO', '2022-05-24 08:54:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2017-02-26 20:43:57'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:52:46'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:59:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 5, 27, 'Samsung 32\" HD Ready LED TV  (32T6175MHD, 2 x HDMI, 2 x USB)', 'Samsung', 4599, 0, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">General</div><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sales Package</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">1 TV Unit, Remote Controller, Battery (For Remote Controller), Quick Installation Guide and User Manual: All in One, Wall Mount Support</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Name</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">32T6175MHD</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Size</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">81 cm (32)</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Screen Type</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">LED</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">HD Technology &amp; Resolutiontest</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">HD Ready, 1366 x 768</li></ul></li></ul>', 'micromax1.jpeg', 'micromax main image.jpg', 'micromax main image.jpg', 1200, 'In Stock', '2022-05-23 15:54:35', ''),
(2, 3, 17, 'Apple iPhone 6 (Silver, 16 GB)', 'Apple INC', 2399, 3499, '<div class=\"_2PF8IO\" style=\"box-sizing: border-box; margin: 0px 0px 0px 110px; padding: 0px; flex: 1 1 0%; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px;\"><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">1 GB RAM | 16 GB ROM |</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">4.7 inch Retina HD Display</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">8MP Primary Camera | 1.2MP Front</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Li-Ion Battery</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">A8 Chip with 64-bit Architecture and M8 Motion Co-processor Processor</li></ul></div>', 'apple-iphone-6-1.jpeg', 'apple-iphone-6-2.jpeg', 'apple-iphone-6-3.jpeg', 0, 'In Stock', '2022-05-23 15:59:00', ''),
(3, 3, 18, 'Redmi Note 4 (Gold, 32 GB)  (With 3 GB RAM)', 'Redmi', 2999, 0, '<br><div><ol><li>3 GB RAM | 32 GB ROM | Expandable Upto 128 GB<br></li><li>5.5 inch Full HD Display<br></li><li>13MP Primary Camera | 5MP Front<br></li><li>4100 mAh Li-Polymer Battery<br></li><li>Qualcomm Snapdragon 625 64-bit Processor<br></li></ol></div>', 'mi-redmi-note-4-1.jpeg', 'mi-redmi-note-4-2.jpeg', 'mi-redmi-note-4-3.jpeg', 0, 'In Stock', '2022-05-24 03:03:15', ''),
(4, 3, 18, 'Lenovo K6 Power (Silver, 32 GB) ', 'Lenovo', 6199, 0, '<ul><li>3 GB RAM | 32 GB ROM | Expandable Upto 128 GB<br></li><li>5 inch Full HD Display<br></li><li>13MP Primary Camera | 8MP Front<br></li><li>4000 mAh Li-Polymer Battery<br></li><li>Qualcomm Snapdragon 430 Processor<br></li></ul>', 'lenovo-k6-power-k33a42-1.jpeg', 'lenovo-k6-power-k33a42-2.jpeg', 'lenovo-k6-power-k33a42-3.jpeg', 45, 'In Stock', '2022-05-24 03:04:43', ''),
(5, 3, 18, 'Lenovo Vibe K5 Note (Gold, 32 GB)  ', 'Lenovo', 3499, 0, '<ul><li>3 GB RAM | 32 GB ROM | Expandable Upto 128 GB<br></li><li>5.5 inch Full HD Display<br></li><li>13MP Primary Camera | 8MP Front<br></li><li>3500 mAh Li-Ion Polymer Battery<br></li><li>Helio P10 64-bit Processor<br></li></ul>', 'lenovo-k5-note-pa330010in-1.jpeg', 'lenovo-k5-note-pa330116in-2.jpeg', 'lenovo-k5-note-pa330116in-3.jpeg', 0, 'In Stock', '2022-05-24 03:06:17', ''),
(7, 3, 18, 'SAMSUNG Galaxy On5', 'SAMSUNG', 6199, 0, '<ul><li>1.5 GB RAM | 8 GB ROM | Expandable Upto 128 GB<br></li><li>5 inch HD Display<br></li><li>8MP Primary Camera | 5MP Front<br></li><li>2600 mAh Li-Ion Battery<br></li><li>Exynos 3475 Processor<br></li></ul>', 'samsung-galaxy-on7-sm-1.jpeg', 'samsung-galaxy-on5-sm-2.jpeg', 'samsung-galaxy-on5-sm-3.jpeg', 20, 'In Stock', '2022-05-24 03:10:17', ''),
(8, 3, 18, 'OPPO A57', 'OPPO', 5755, 0, '<ul><li>3 GB RAM | 32 GB ROM | Expandable Upto 256 GB<br></li><li>5.2 inch HD Display<br></li><li>13MP Primary Camera | 16MP Front<br></li><li>2900 mAh Battery<br></li><li>Qualcomm MSM8940 64-bit Processor<br></li></ul>', 'oppo-a57-na-original-1.jpeg', 'oppo-a57-na-original-2.jpeg', 'oppo-a57-na-original-3.jpeg', 0, 'In Stock', '2022-05-24 03:11:54', ''),
(11, 11, 14, 'Acer ES 15 Pentium Quad Core', 'Acer', 8999, 0, '<ul><li>Intel Pentium Quad Core Processor ( )<br></li><li>4 GB DDR3 RAM<br></li><li>Linux/Ubuntu Operating System<br></li><li>1 TB HDD<br></li><li>15.6 inch Display<br></li></ul>', 'acer-aspire-notebook-original-1.jpeg', 'acer-aspire-notebook-original-2.jpeg', 'acer-aspire-notebook-original-3.jpeg', 0, 'In Stock', '2022-05-24 03:26:17', ''),
(12, 11, 16, 'Acer Canvas Laptab II (WIFI) Atom 4th Gen', 'Acer', 11599, 0, '<ul><li>Intel Atom Processor ( 4th Gen )<br></li><li>2 GB DDR3 RAM<br></li><li>32 bit Windows 10 Operating System<br></li><li>11.6 inch Touchscreen Display<br></li></ul>', 'micromax-lt777w-2-in-1-laptop-original-1.jpeg', 'micromax-lt777w-2-in-1-laptop-original-2.jpeg', 'micromax-lt777w-2-in-1-laptop-original-3.jpeg', 0, 'In Stock', '2022-05-24 03:28:17', ''),
(13, 11, 14, 'HP Core i5 5th Gen', 'HP', 9999, 0, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">HP Core i5 5th Gen - (4 GB/1 TB HDD/Windows 10 Home/2 GB Graphics) N8M28PA 15-ac123tx Notebook</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(15.6 inch, Turbo SIlver, 2.19 kg)</span><br><div><ul><li>Intel Core i5 Processor ( 5th Gen )<br></li><li>4 GB DDR3 RAM<br></li><li>64 bit Windows 10 Operating System<br></li><li>1 TB HDD<br></li><li>15.6 inch Display<br></li></ul></div>', 'hp-notebook-original-1.jpeg', 'hp-notebook-original-2.jpeg', 'hp-notebook-original-3.jpeg', 0, 'In Stock', '2022-05-24 03:30:24', ''),
(14, 11, 14, 'Lenovo Ideapad 110 APU Quad Core A6 6th Gen', 'Lenovo', 11678, 0, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">Lenovo Ideapad 110 APU Quad Core A6 6th Gen - (4 GB/500 GB HDD/Windows 10 Home) 80TJ00D2IH IP110 15ACL Notebook</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(15.6 inch, Black, 2.2 kg)</span><br><div><ul><li>AMD APU Quad Core A6 Processor ( 6th Gen )<br></li><li>4 GB DDR3 RAM<br></li><li>64 bit Windows 10 Operating System<br></li><li>500 GB HDD<br></li><li>15.6 inch Display<br></li></ul></div>', 'lenovo-ideapad-notebook-original-1.jpeg', 'lenovo-ideapad-notebook-original-2.jpeg', 'lenovo-ideapad-notebook-3.jpeg', 0, 'In Stock', '2022-05-24 03:32:15', ''),
(21, 11, 15, 'MSI 161561 i7 RTX 3060', 'MSI', 14299, 18599, 'MSI 161561 i7 RTX 3060,&nbsp;MSIMSIMSIMSIMSIMSIMSIMSI hola<br>', 'lapmsi.jpg', 'lapmsi2.jpg', 'lapmsi3.jpg', 100, 'In Stock', '2022-05-24 00:30:57', NULL),
(22, 6, 24, 'Asus ROG Strix B550-F', 'Asus', 3899, 4199, 'Asus ROG Strix B550-F<br><div>AMD Ryzen 3000, 4000, 5000</div>', 'AsusTarjMadreROGStrixB550F.jpg', 'AsusTarjMadreROGStrixB550F.jpg', '', 100, 'In Stock', '2022-05-24 07:57:28', NULL),
(23, 11, 16, 'Macbook Air 13\" Chip M1', 'Apple', 7599, 8599, 'Macbook Air 13\" Chip M1<br>La nueva tecnología ARM de Apple', 'AppleMacBookAir.jpg', 'AppleMacBookAir.jpg', '', 100, 'In Stock', '2022-05-24 08:08:35', NULL),
(24, 6, 25, 'Corsair Vengeance DDR4 16GB (2X8GB) 3800Mhz', 'Corsair', 2199, 2450, 'Corsair Vengeance DDR4 16GB (2X8GB) 3800Mhz<br>', 'CorsairVengeanceRGBrs16gbDDR4.jpg', 'CorsairVengeanceRGBrs16gbDDR4.jpg', '', 100, 'In Stock', '2022-05-24 08:13:29', NULL),
(25, 11, 28, 'Dell Optiplex 7040 i7 12GB RAM 256GB SSD', 'Dell', 7898, 8989, 'Dell Optiplex 7040 i7 12GB RAM 256GB SSD<br>', 'DellOptiplex7040.jpg', 'DellOptiplex7040.jpg', '', 25, 'In Stock', '2022-05-24 08:17:49', NULL),
(26, 6, 26, 'Gigabyte RX 6500XT 8GB GDDR6', 'Gigabyte', 8699, 8999, 'Gigabyte RX 6500XT 8GB GDDR6<br><div>AMD Radeon Para videojuegos</div>', 'GIGABYTERadeonRX6500XT.jpg', 'GIGABYTERadeonRX6500XT.jpg', '', 100, 'In Stock', '2022-05-24 08:19:30', NULL),
(27, 5, 22, 'Hisense 43\" 4K AndroidTV', 'Hisense', 8949, 9949, 'Hisense 43\" 4K AndroidTV<br>', 'Hisense43in4KUHDAndroidTV.jpg', 'Hisense43in4KUHDAndroidTV.jpg', '', 185, 'In Stock', '2022-05-24 08:43:22', NULL),
(28, 11, 28, 'HP All In One 200G4 22\"', 'HP', 6933, 9366, 'HP All In One 200G4 22\"<br>', 'HPAllInOne200G422in.jpg', 'HPAllInOne200G422in.jpg', '', 0, 'In Stock', '2022-05-24 08:45:06', NULL),
(29, 11, 16, 'Huawei MateBook D15', 'Huawei', 11499, 13499, 'Huawei MateBook D15 8GB RAM 512GB SSD<br>', 'HUAWEIMateBookD15.jpg', 'HUAWEIMateBookD15.jpg', '', 20, 'In Stock', '2022-05-24 08:46:39', NULL),
(30, 11, 28, 'Huawei MateStation S', 'Huawei', 8999, 10999, 'Huawei MateStation S 1TB<br>', 'HuaweiMateStationSCPU.jpg', 'HuaweiMateStationSCPU.jpg', '', 0, 'Out of Stock', '2022-05-24 08:48:17', NULL),
(31, 4, 21, 'HyperX AlloyCore RGB', 'HyperX', 999, 1299, 'HyperX AlloyCore RGB<br><div>Mem-channical</div>', 'HyperXAlloyCoreRGB.jpg', 'HyperXAlloyCoreRGB.jpg', '', 10, 'In Stock', '2022-05-24 08:50:02', NULL),
(32, 3, 17, 'iPhone 12 Pro Max Gold', 'Apple', 38299, 40199, 'iPhone 12 Pro Max Gold<br><div>128GB / 6GB</div>', 'IPhone12ProMax.jpg', 'IPhone12ProMax.jpg', '', 100, 'In Stock', '2022-05-24 08:51:36', NULL),
(33, 3, 17, 'iPhone 13 Pro Gray', 'Apple', 26499, 29499, 'iPhone 13 Pro Gray<br><div>128GB/ 6GB</div>', 'IPhone13ProColorGrafito.jpg', 'IPhone13ProColorGrafito.jpg', '', 100, 'In Stock', '2022-05-24 09:01:18', NULL),
(34, 4, 19, 'Kamysen Audifonos Gamer InEar', 'Kamysen', 599, 699, 'Kamysen Audifonos Gamer InEar<br><div>Hi-Res</div>', 'KAMYSENAudifonosGamingInEar.jpg', 'KAMYSENAudifonosGamingInEar.jpg', '', 25, 'In Stock', '2022-05-24 09:02:55', NULL),
(35, 4, 20, 'Logitech G300', 'Logitech', 299, 340, 'Logitech G300<br><div>1200dpi</div>', 'LogiTechG300.jpg', 'LogiTechG300.jpg', '', 10, 'In Stock', '2022-05-24 09:04:23', NULL),
(36, 4, 19, 'Logitech G332 Audifonos Gamer', 'Logitech', 899, 1199, 'Logitech G332 Audifonos Gamer<br><div>Rojos</div>', 'LogitechG332AudifonosGaming.jpg', 'LogitechG332AudifonosGaming.jpg', '', 10, 'In Stock', '2022-05-24 09:09:26', NULL),
(37, 4, 20, 'Logitech G502 Hero', 'Logitech', 1299, 1499, 'Logitech G502 Hero<br><div>16,000dpi</div>', 'LogiTechG502Hero.jpg', 'LogiTechG502Hero.jpg', '', 10, 'In Stock', '2022-05-24 09:13:23', NULL),
(38, 6, 26, 'MSI Ventus GTX 1650', 'MSI', 6590, 6840, 'MSI Ventus GTX 1650 4GB GDDR6<br>', 'MSIGeForceGTX1650.jpg', 'MSIGeForceGTX1650.jpg', '', 100, 'In Stock', '2022-05-24 09:16:11', NULL),
(39, 4, 19, 'Cougar VM410 Diadema Gamer', 'Cougar', 1199, 1699, 'Cougar VM410 Diadema Gamer<br><div>7.1</div>', 'pic01.png', 'pic01.png', '', 100, 'In Stock', '2022-05-24 09:27:19', NULL),
(40, 4, 21, 'Munfrost Light Moon White', 'Munfrost', 1139, 1299, '<h2>Teclado Gamer Mecánico Munfrost Light Moon White / Switch Gateron \r\nRed / Formato 60% / Alámbrico USB Desmontable / Iluminación ARGB / \r\nDistribución Español / MFKLMA1W</h2>', 'pic02.jpg', 'pic02.jpg', '', 20, 'In Stock', '2022-05-24 09:29:40', NULL),
(41, 11, 16, 'MSI i5-10210U 8GB RAM DDR4 128GB SSD', 'MSI', 13999, 15615, '<h2>MSI / i5-10210U / Intel UHD Graphics / 8GB RAM DDR4 / 128GB SSD M.2 / 14\" FHD / Windows 10 Pro/ MODERN 14 B10MW-640</h2>', 'pic03.png', 'pic03.png', '', 100, 'In Stock', '2022-05-24 09:31:08', NULL),
(42, 6, 25, 'Kingston Fury Beast 3200Mhz 8GB', 'Kingston', 699, 799, 'Kingston Fury Beast 3200Mhz 8GB<br><div>1.35V</div>', 'RAMKingstonFuryBeastDDR4.jpg', 'RAMKingstonFuryBeastDDR4.jpg', '', 25, 'In Stock', '2022-05-24 09:33:10', NULL),
(43, 4, 21, 'Razer Cynosa Chroma RGB', 'Razer', 1399, 1699, 'Razer Cynosa Chroma RGB<br><div>Mechannical</div>', 'RazerCynosaChroma.jpg', 'RazerCynosaChroma.jpg', '', 185, 'In Stock', '2022-05-24 09:34:35', NULL),
(44, 6, 24, 'Gigabyte B450 Aorus PRO', 'Gigabyte', 1999, 2299, 'Gigabyte B450 Aorus PRO<br><div>Ryzen 1000,2000</div>', 'TarjMadGIGABYTEB450AorusPRO.jpg', 'TarjMadGIGABYTEB450AorusPRO.jpg', '', 100, 'In Stock', '2022-05-24 09:36:17', NULL),
(45, 5, 22, 'TCL 40\" FHD SmartTV', 'TCL', 5880, 7466, 'TCL 40\" FHD SmartTV<br>', 'TCL40inFHDSmastTVLED.jpg', 'TCL40inFHDSmastTVLED.jpg', '', 10, 'In Stock', '2022-05-24 09:38:40', NULL),
(46, 3, 18, 'Xiaomi Poco M3 Pro 5G', 'Xiaomi', 7899, 8599, 'Xiaomi Poco M3 Pro 5G<br><div>256GB/ 8GB</div>', 'XiaomiPocoM3Pro5G.jpg', 'XiaomiPocoM3Pro5G.jpg', '', 36, 'In Stock', '2022-05-24 09:39:55', NULL),
(47, 3, 18, 'Xiaomi Redmi 9A', 'Xiaomi', 3899, 4199, 'Xiaomi Redmi 9A 4/64<br>', 'XiaomiRedmi9A4Ram.jpg', 'XiaomiRedmi9A4Ram.jpg', '', 100, 'In Stock', '2022-05-24 09:41:37', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(14, 11, 'Laptop', '2022-05-24 00:23:06', '24-05-2022 01:17:05 PM'),
(15, 11, 'Gaming', '2022-05-24 00:23:10', NULL),
(16, 11, 'Ultrabook', '2022-05-24 02:34:00', '24-05-2022 01:17:16 PM'),
(17, 3, 'Apple', '2022-05-24 02:34:39', NULL),
(18, 3, 'Android', '2022-05-24 02:35:01', NULL),
(19, 4, 'Audífonos', '2022-05-24 02:35:40', NULL),
(20, 4, 'Mouse', '2022-05-24 02:40:33', NULL),
(21, 4, 'Teclado', '2022-05-24 02:40:49', NULL),
(22, 5, 'Smart TV', '2022-05-24 02:41:23', NULL),
(23, 6, 'CPU', '2022-05-24 02:41:39', NULL),
(24, 6, 'Tarjeta madre', '2022-05-24 02:41:56', NULL),
(25, 6, 'RAM', '2022-05-24 02:42:10', NULL),
(26, 6, 'Tarjeta gráfica', '2022-05-24 02:42:22', NULL),
(27, 5, 'Pantalla TV', '2022-05-24 02:43:01', NULL),
(28, 11, 'Escritorio', '2022-05-24 08:15:58', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(24, 'rubenzagu@gmail.com', 0x3a3a3100000000000000000000000000, '2022-05-23 23:13:08', '23-05-2022 06:19:02 PM', 1),
(25, 'rubenzagu@gmail.com', 0x3a3a3100000000000000000000000000, '2022-05-23 23:19:10', NULL, 0),
(26, 'rubenzagu@gmail.com', 0x3a3a3100000000000000000000000000, '2022-05-23 23:19:18', '23-05-2022 06:33:03 PM', 1),
(27, 'rezg17@hotmail.com', 0x3a3a3100000000000000000000000000, '2022-05-23 23:34:07', NULL, 1),
(28, 'rezg17@hotmail.com', 0x3a3a3100000000000000000000000000, '2022-05-24 02:57:37', NULL, 1),
(29, 'rezg17@hotmail.com', 0x3a3a3100000000000000000000000000, '2022-05-24 07:26:15', '24-05-2022 02:27:07 AM', 1),
(30, 'rubenzagu@gmail.com', 0x3a3a3100000000000000000000000000, '2022-05-24 07:27:17', '24-05-2022 02:31:57 AM', 1),
(31, 'rubenzagu@gmail.com', 0x3a3a3100000000000000000000000000, '2022-05-24 07:53:40', '24-05-2022 02:58:44 AM', 1),
(32, 'rezg17@hotmail.com', 0x3a3a3100000000000000000000000000, '2022-05-24 07:58:51', NULL, 1),
(33, 'rezg17@hotmail.com', 0x3a3a3100000000000000000000000000, '2022-05-24 08:54:44', NULL, 0),
(34, 'rezg17@hotmail.com', 0x3a3a3100000000000000000000000000, '2022-05-24 08:54:53', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(4, 'Ruben', 'rubenzagu@gmail.com', 4441863277, '81dc9bdb52d04dc20036dbd8313ed055', '2da Privada Rumania', 'SLP', 'SLP', 78380, '2da Privada Rumania', 'SLP', 'SLP', 78380, '2022-05-23 23:12:47', NULL),
(5, 'RubenZG', 'rezg17@hotmail.com', 4441863277, '57f842286171094855e51fc3a541c1e2', '2da Privada Rumania', 'SLP', 'SLP', 78380, '2da Privada Rumania', 'SLP', 'SLP', 78380, '2022-05-23 23:33:44', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 18:53:17');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
