-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 07, 2023 lúc 08:02 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `du_an_1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bien_the`
--

CREATE TABLE `bien_the` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `bien_the`
--

INSERT INTO `bien_the` (`id`, `name`, `product_id`) VALUES
(17, '12gb', 0),
(18, '128gb', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binh_luan`
--

CREATE TABLE `binh_luan` (
  `id` int(11) NOT NULL,
  `noi_dung` text NOT NULL,
  `date` date NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `binh_luan`
--

INSERT INTO `binh_luan` (`id`, `noi_dung`, `date`, `product_id`, `user_id`) VALUES
(9, 'test', '2007-12-23', 8, 52),
(10, 'hung', '2007-12-23', 10, 52),
(11, 'hung', '2007-12-23', 8, 52);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danh_muc`
--

CREATE TABLE `danh_muc` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danh_muc`
--

INSERT INTO `danh_muc` (`id`, `name`) VALUES
(23, 'laptop'),
(24, 'Iphone1'),
(25, 'Iphone'),
(27, 'Samsung'),
(28, '128gb');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `san_pham`
--

CREATE TABLE `san_pham` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `price_new` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `san_pham`
--

INSERT INTO `san_pham` (`id`, `description`, `image`, `name`, `price`, `price_new`, `quantity`, `category_id`) VALUES
(6, '\r\n    ', 'product1.png', 'Iphone15', 15000000, 18000000, 21, 25),
(7, '\r\n    ', 'product2.png', 'Iphone15 pro max', 28000000, 31000000, 14, 24),
(8, '    ', 'product3.png', 'Iphone15 thường', 31000000, 32000000, 23, 23),
(9, '\r\n    ', 'samsung.jpg', 'Sam', 9000000, 0, 23, 27),
(10, '\r\n    ', 'samsung.jpg', 'Sam sung j2', 11900000, 15000000, 33, 27),
(11, '\r\n    SamSung đời mới nhất', 'samsung.jpg', 'samsung V34', 130000000, 160000000, 21, 27);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shopping_cart_item`
--

CREATE TABLE `shopping_cart_item` (
  `id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `shopping_cart_item`
--

INSERT INTO `shopping_cart_item` (`id`, `quantity`, `product_id`, `price`, `order_id`) VALUES
(128, 1, 8, 29000000, 96),
(129, 1, 6, 15000000, 97),
(130, 1, 7, 28000000, 97),
(131, 1, 8, 31000000, 98),
(132, 1, 7, 28000000, 99),
(133, 1, 8, 31000000, 99),
(134, 1, 8, 31000000, 100),
(135, 1, 8, 31000000, 101),
(136, 2, 8, 31000000, 102),
(137, 1, 8, 31000000, 103),
(138, 1, 8, 31000000, 104),
(139, 1, 6, 15000000, 105),
(140, 1, 7, 28000000, 105),
(141, 1, 8, 31000000, 105),
(142, 2, 9, 9000000, 106),
(143, 2, 10, 11900000, 106),
(144, 2, 8, 31000000, 107),
(145, 1, 9, 9000000, 107),
(146, 2, 8, 31000000, 108),
(147, 2, 9, 9000000, 108),
(148, 1, 7, 28000000, 109),
(149, 2, 8, 31000000, 109),
(150, 2, 9, 9000000, 109),
(151, 3, 9, 9000000, 110),
(152, 1, 8, 31000000, 111),
(153, 3, 9, 9000000, 111),
(154, 1, 8, 31000000, 112),
(155, 4, 9, 9000000, 112),
(156, 1, 9, 9000000, 113),
(159, 1, 6, 15000000, 116),
(160, 2, 10, 11900000, 116),
(166, 1, 10, 11900000, 120);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_order`
--

CREATE TABLE `shop_order` (
  `id` int(11) NOT NULL,
  `date_order` date NOT NULL,
  `total_price` int(11) NOT NULL,
  `desc_order` text NOT NULL,
  `address` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `trang_thai` int(11) NOT NULL DEFAULT 1,
  `update_order` date NOT NULL,
  `hinh_thuc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_order`
--

INSERT INTO `shop_order` (`id`, `date_order`, `total_price`, `desc_order`, `address`, `user_id`, `name`, `phone`, `trang_thai`, `update_order`, `hinh_thuc`) VALUES
(96, '0000-00-00', 29000000, '                    giao nhanh', 'hà nội', 51, 'Trần Huy Hưng', '0398623059', 3, '2023-12-02', ''),
(97, '0000-00-00', 43000000, '                    ', 'hà nội', 0, 'Hưng', '0398623059', 3, '2023-12-01', ''),
(98, '2023-12-04', 31000000, '                    ', 'hà nội', 0, 'Trần Huy Hưng', '0398623059', 3, '2023-12-07', ''),
(99, '2023-12-01', 59000000, '                    ', 'hà nội', 51, 'Trần Huy Hưng', '0398623059', 3, '2023-12-01', ''),
(100, '2023-12-02', 31000000, '                    ', 'hà nội', 51, 'bepnhabee', '0398623059', 3, '2023-12-09', ''),
(101, '2023-12-02', 31000000, '                    ', 'hà nội', 51, 'bepnhabee', '0398623059', 3, '2023-12-01', ''),
(102, '2023-12-02', 62000000, '                    ', 'hà nội', 51, 'Trần Huy Hưng', '0398623059', 3, '2023-12-05', ''),
(103, '2023-12-03', 31000000, '                    ', 'hà nội', 51, 'bepnhabee', '0398623059', 3, '0000-00-00', ''),
(104, '2023-12-04', 31000000, '                    ', 'hà nội', 51, 'Trần Huy Hưng', '0398623059', 3, '2023-12-02', ''),
(105, '2023-12-04', 74000000, '                    ', 'hà nội', 51, 'Trần Huy Hưng', '0398623059', 4, '0000-00-00', ''),
(106, '2023-12-07', 41800000, '                    ', 'hà nội', 0, 'Trần Huy Hưng', '0398623059', 3, '0000-00-00', ''),
(107, '2023-12-07', 71000000, '                    ', 'hà nội', 51, 'Trần Huy Hưng', '0398623059', 3, '2023-12-01', ''),
(108, '2023-12-07', 80000000, '                    ', 'hà nội', 51, 'bepnhabee', '0398623059', 3, '2023-12-02', ''),
(109, '2023-12-07', 108000000, '                    ', 'hà nội', 51, 'iphone', '0398623059', 3, '2023-12-08', ''),
(110, '2023-12-07', 27000000, '                    ', 'hà nội', 51, 'bepnhabee', '0398623059', 3, '2023-12-07', ''),
(111, '2023-12-07', 58000000, '                    ', 'hà nội', 51, 'Trần Huy Hưng', '0398623059', 3, '2023-12-07', ''),
(112, '2023-12-07', 67000000, '                    ', 'hà nội', 51, 'Trần Huy Hưng', '0398623059', 3, '2023-12-07', ''),
(113, '2023-12-07', 9000000, '                    ', 'hà nội', 0, 'bepnhabee', '0398623059', 3, '2023-12-07', ''),
(116, '2023-12-07', 38800000, '                    ', 'hà nội', 0, 'Trần Huy Hưng', '0398623059', 3, '2023-12-08', 'Khi nhận hàng'),
(120, '2023-12-07', 11900000, '', '', 51, '', '', 1, '0000-00-00', 'ATM Momo');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thong_ke`
--

CREATE TABLE `thong_ke` (
  `id` int(11) NOT NULL,
  `ngay_dat` date NOT NULL,
  `don_hang` int(11) NOT NULL,
  `doanh_thu` float NOT NULL,
  `so_luong_ban` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `thong_ke`
--

INSERT INTO `thong_ke` (`id`, `ngay_dat`, `don_hang`, `doanh_thu`, `so_luong_ban`) VALUES
(2, '2023-11-30', 6, 75000000, 9),
(18, '2023-12-01', 2, 90000000, 3),
(19, '2023-11-29', 7, 82000000, 8),
(29, '2023-12-02', 3, 103000000, 4),
(45, '2023-12-04', 6, 184000000, 6),
(54, '2023-12-07', 2, 192000000, 14),
(55, '2023-12-08', 1, 146800000, 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(10) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `address`, `email`, `phone`, `username`, `password`, `role`) VALUES
(51, 'hung', 'ha noi', 'admin@fpt.edu.vn', '0398623059', 'admin', '123', 'admin'),
(52, '', '', 'hunglsb@gmail.com', '', 'user', '123', 'user'),
(53, '', '', 'nhitttph36421@iuem.com', '', 'tuyetnhi', '123', 'user'),
(54, '', '', 'hunglsb2004@gmail.com', '', 'hưng', 'uRL4J$eQKGtc3mm', 'user');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bien_the`
--
ALTER TABLE `bien_the`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `binh_luan_ibfk_1` (`user_id`),
  ADD KEY `binh_luan_ibfk_2` (`product_id`);

--
-- Chỉ mục cho bảng `danh_muc`
--
ALTER TABLE `danh_muc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `shopping_cart_item`
--
ALTER TABLE `shopping_cart_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shopping_cart_item_ibfk_1` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `shop_order`
--
ALTER TABLE `shop_order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thong_ke`
--
ALTER TABLE `thong_ke`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bien_the`
--
ALTER TABLE `bien_the`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `danh_muc`
--
ALTER TABLE `danh_muc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `shopping_cart_item`
--
ALTER TABLE `shopping_cart_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT cho bảng `shop_order`
--
ALTER TABLE `shop_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT cho bảng `thong_ke`
--
ALTER TABLE `thong_ke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  ADD CONSTRAINT `binh_luan_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD CONSTRAINT `san_pham_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `danh_muc` (`id`);

--
-- Các ràng buộc cho bảng `shopping_cart_item`
--
ALTER TABLE `shopping_cart_item`
  ADD CONSTRAINT `shopping_cart_item_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `shop_order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `shopping_cart_item_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `san_pham` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
