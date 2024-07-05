-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 05, 2024 at 02:16 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gudang`
--

-- --------------------------------------------------------

--
-- Table structure for table `p_bahan`
--

CREATE TABLE `p_bahan` (
  `id_bahan` int(11) NOT NULL,
  `nm_bahan` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `p_bahan`
--

INSERT INTO `p_bahan` (`id_bahan`, `nm_bahan`) VALUES
(4, 'Kulit'),
(5, 'Kain/Textile'),
(6, 'Suede'),
(7, 'Karet'),
(8, 'Kanvas'),
(9, 'Mesh'),
(10, 'Nylon'),
(11, 'Denim'),
(12, 'Vinyl/PVC'),
(14, 'Kapas'),
(15, 'Busa'),
(16, 'EVA (Ethylene Vinyl Acetate)'),
(17, 'Logam');

-- --------------------------------------------------------

--
-- Table structure for table `p_category`
--

CREATE TABLE `p_category` (
  `id_category` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `p_category`
--

INSERT INTO `p_category` (`id_category`, `name`, `created`, `updated`) VALUES
(15, 'Sneakers', '2024-06-23 19:33:42', NULL),
(16, 'Formal', '2024-06-23 19:33:42', NULL),
(17, 'Boots', '2024-06-23 19:33:42', NULL),
(18, 'Sandal', '2024-06-23 19:33:42', NULL),
(19, 'Running Shoes', '2024-06-23 19:33:42', NULL),
(20, 'High Heels', '2024-06-23 19:33:42', NULL),
(21, 'Espadrilles', '2024-06-23 19:33:42', NULL),
(22, 'Loafers', '2024-06-23 19:33:42', NULL),
(23, 'admin', '2024-07-01 19:58:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `p_color`
--

CREATE TABLE `p_color` (
  `id_color` int(11) NOT NULL,
  `color` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `p_color`
--

INSERT INTO `p_color` (`id_color`, `color`) VALUES
(16, 'Hitam'),
(17, 'Cokelat'),
(18, 'Putih'),
(19, 'Biru'),
(20, 'Merah'),
(21, 'Hijau'),
(22, 'Abu-abu'),
(23, 'Krem'),
(24, 'Oranye'),
(25, 'Kuning'),
(26, 'Pink'),
(27, 'Ungu'),
(28, 'Biru Muda'),
(29, 'Abu-abu Muda'),
(30, 'Marun'),
(31, 'Biru Tua'),
(32, 'Olive'),
(33, 'Salmon'),
(34, 'Biru Navy'),
(35, 'Khaki');

-- --------------------------------------------------------

--
-- Table structure for table `p_item`
--

CREATE TABLE `p_item` (
  `id_item` int(11) NOT NULL,
  `barcode` varchar(128) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `color` int(11) DEFAULT NULL,
  `bahan` int(11) DEFAULT NULL,
  `size` varchar(10) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `stock` int(11) DEFAULT 0,
  `created` datetime DEFAULT current_timestamp(),
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `p_item`
--

INSERT INTO `p_item` (`id_item`, `barcode`, `name`, `category`, `color`, `bahan`, `size`, `price`, `stock`, `created`, `updated`) VALUES
(31, 'A1', 'Reebok Classic Leather', 15, 18, 4, '42', 300000, 98, '2024-06-24 19:52:11', NULL),
(32, 'A2', 'Reebok Nano X', 19, 16, 5, '43', 300000, 0, '2024-06-24 19:52:12', NULL),
(33, 'A3', 'Reebok Floatride Energy', 19, 19, 9, '40', 300000, 0, '2024-06-24 19:52:12', NULL),
(34, 'B1', 'Eiger X-Tyranno Ws', 21, 17, 5, '39', 300000, 27, '2024-06-24 19:52:12', NULL),
(35, 'B2', 'Eiger Florence', 15, 18, 6, '38', 300000, 0, '2024-06-24 19:52:12', NULL),
(36, 'B3', 'Eiger Cheline', 19, 23, 6, '37', 300000, 0, '2024-06-24 19:52:12', NULL),
(37, 'C1', 'Adidas Samba JJJJound', 15, 17, 6, '44', 300000, 79, '2024-06-24 19:52:12', NULL),
(38, 'C2', 'Adidas Country SLG', 19, 18, 10, '43', 300000, 50, '2024-06-24 19:52:12', NULL),
(39, 'C3', 'Adidas SL 72 RS', 15, 21, 5, '42', 300000, 0, '2024-06-24 19:52:12', NULL),
(40, 'D1', 'Nike Cortez', 19, 18, 5, '43', 300000, 0, '2024-06-24 19:52:12', NULL),
(41, 'D2', 'Nike Structure 25', 19, 22, 9, '40', 300000, 0, '2024-06-24 19:52:12', NULL),
(42, 'D3', 'Nike InfinityRN 4', 19, 26, 9, '38', 300000, 0, '2024-06-24 19:52:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `address` varchar(128) NOT NULL,
  `description` varchar(128) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `name`, `phone`, `address`, `description`, `created`, `updated`) VALUES
(8, 'Sepatu Indo', '6281234567890', 'Jl. Diponegoro No. 1, Jakarta', 'Sneakers, Formal Shoes, Sandals', '2024-06-23 19:37:16', NULL),
(9, 'Jaya Footwear', '6285678901234', 'Jl. Asia Afrika No. 5, Bandung', 'Casual Shoes, Boots, Slip-ons', '2024-06-23 19:37:16', NULL),
(10, 'Sentra Sepatu', '6287654321098', 'Jl. Veteran No. 10, Surabaya', 'Sports Shoes, Running Shoes, Sandals', '2024-06-23 19:37:16', NULL),
(11, 'Sinar Jaya', '6289012345678', 'Jl. Pahlawan No. 3, Semarang', 'Formal Shoes, Loafers, Sandals', '2024-06-23 19:37:16', NULL),
(12, 'Utama Shoes', '6281234567891', 'Jl. Gatot Subroto No. 2, Medan', 'Sneakers, Boots, Flip Flops', '2024-06-23 19:37:16', NULL),
(13, 'Sejahtera Sepatu', '6285678901235', 'Jl. Merdeka No. 8, Yogyakarta', 'Casual Shoes, Slip-ons, Sandals', '2024-06-23 19:37:16', NULL),
(14, 'Maju Bersama', '6287654321099', 'Jl. Sudirman No. 7, Makassar', 'Sports Shoes, Running Shoes, Sandals', '2024-06-23 19:37:16', NULL),
(15, 'Abadi Jaya', '6289012345679', 'Jl. A. Yani No. 4, Palembang', 'Formal Shoes, Loafers, Sandals', '2024-06-23 19:37:16', NULL),
(16, 'admin', '(+62) 895 4212', 'percetakan negara', 'adf', '2024-07-01 19:56:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_stock`
--

CREATE TABLE `t_stock` (
  `id_stock` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `type` enum('in','out') NOT NULL,
  `detail` varchar(128) NOT NULL,
  `supplier` int(11) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `date` date NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_stock`
--

INSERT INTO `t_stock` (`id_stock`, `item`, `type`, `detail`, `supplier`, `qty`, `date`, `created`) VALUES
(1, 31, 'in', 'reebok classic leather', 8, 100, '2024-06-24', '2024-06-24 19:53:49'),
(2, 38, 'in', 'Adidas Country SLG', 10, 50, '2024-06-24', '2024-06-24 19:54:18'),
(3, 34, 'in', 'Eiger X-Tyranno Ws', 14, 30, '2024-06-24', '2024-06-24 19:54:33'),
(4, 37, 'in', 'Adidas Samba JJJJound', 12, 80, '2024-06-24', '2024-06-24 19:56:46'),
(5, 31, 'out', 'pembelian lukman', NULL, 2, '2024-06-24', '2024-06-24 19:57:41'),
(6, 34, 'out', 'pembelian zikri', NULL, 3, '2024-06-24', '2024-06-24 19:57:54'),
(7, 37, 'out', 'pembelian ilyan', NULL, 1, '2024-06-24', '2024-06-24 19:58:07');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `address` varchar(128) NOT NULL,
  `level` int(11) NOT NULL COMMENT '1:admin,2:kasir'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama`, `address`, `level`) VALUES
(1, 'admin', 'passwordsulit1', 'Admin', 'Lawean', 1),
(3, 'kasir', 'passwordsulit2', 'Kasir', 'Lawean', 2),
(4, 'ilyan', 'ilyan', 'ilyan', 'jakarta', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `p_bahan`
--
ALTER TABLE `p_bahan`
  ADD PRIMARY KEY (`id_bahan`);

--
-- Indexes for table `p_category`
--
ALTER TABLE `p_category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `p_color`
--
ALTER TABLE `p_color`
  ADD PRIMARY KEY (`id_color`);

--
-- Indexes for table `p_item`
--
ALTER TABLE `p_item`
  ADD PRIMARY KEY (`id_item`),
  ADD UNIQUE KEY `barcode` (`barcode`),
  ADD KEY `category` (`category`),
  ADD KEY `color` (`color`),
  ADD KEY `bahan` (`bahan`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `t_stock`
--
ALTER TABLE `t_stock`
  ADD PRIMARY KEY (`id_stock`),
  ADD KEY `supplier` (`supplier`),
  ADD KEY `item` (`item`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `p_bahan`
--
ALTER TABLE `p_bahan`
  MODIFY `id_bahan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `p_category`
--
ALTER TABLE `p_category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `p_color`
--
ALTER TABLE `p_color`
  MODIFY `id_color` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `p_item`
--
ALTER TABLE `p_item`
  MODIFY `id_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `t_stock`
--
ALTER TABLE `t_stock`
  MODIFY `id_stock` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `p_item`
--
ALTER TABLE `p_item`
  ADD CONSTRAINT `FK_p_item_p_bahan` FOREIGN KEY (`bahan`) REFERENCES `p_bahan` (`id_bahan`),
  ADD CONSTRAINT `FK_p_item_p_color` FOREIGN KEY (`color`) REFERENCES `p_color` (`id_color`),
  ADD CONSTRAINT `p_item_ibfk_1` FOREIGN KEY (`category`) REFERENCES `p_category` (`id_category`);

--
-- Constraints for table `t_stock`
--
ALTER TABLE `t_stock`
  ADD CONSTRAINT `t_stock_ibfk_1` FOREIGN KEY (`supplier`) REFERENCES `supplier` (`id_supplier`),
  ADD CONSTRAINT `t_stock_ibfk_2` FOREIGN KEY (`item`) REFERENCES `p_item` (`id_item`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
