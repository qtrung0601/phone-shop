-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 30, 2023 lúc 01:30 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shop_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(9, 7, 14, 'Máy ảnh Canon EOS R5C (Body Only)', 14, 3, 'canon-eos-r5-c-500x500.jpg'),
(10, 7, 13, 'iPhone 12 64GB  ', 26, 1, 'None_32e767de-b206-4f60-a4ca-b22f51f29d8c.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(1, 7, 'trung', 'quangtrung4346@gmail.com', '0967308711', 'hello'),
(2, 7, 'hoa', 'quangtrung4347@gmail.com', '0998888887', 'what hell');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(3, 13, 'trung', '5555555', 'quangtrung4348@gmail.com', 'paypal', 'flat no. 256 minhkhai hanoi maharashtra vietname - 646111', ', Máy ảnh Canon EOS R5C (Body Only) ( 4 ), samsung ( 3 )', 122, '30-May-2023', 'pending'),
(4, 13, 'trung', '5555', 'quangtrung4348@gmail.com', 'paytm', 'flat no. 256 minhkhai hanoi maharashtra vietname - 15155', ', samsung ( 1 ), Máy ảnh Canon EOS R5C (Body Only) ( 1 )', 36, '30-May-2023', 'pending'),
(5, 13, 'trung', '5353', 'quangtrung4348@gmail.com', 'credit card', 'flat no. 256 hoatham ghghghgh ghghgh vietnam - 1111', ', iPhone 12 64GB   ( 1 )', 26, '30-May-2023', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(20) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `details`, `price`, `image`) VALUES
(10, 'samsung', 'phone', 'Điện thoại di động Samsung Galaxy A70 4G 4GB/128GB - Chính hãng', 22, 'th.jpg'),
(11, 'Samsung Galaxy A51', 'phone', ' 7.9mm thickness\r\nAndroid 10, up to Android 13, One UI 5\r\n64GB/128GB/256GB storage, microSDXC', 24, 'samsung-galaxy-a51-sm-a515.jpg'),
(12, 'iPhone 14 Pro Max 128GB Màu Tím', 'phone', 'Màn hình:OLED6.7&#34;Super Retina XDR\r\nCamera sau:Chính 48 MP & Phụ 12 MP, 12 MP\r\nCamera trước:12 MP,Chip:Apple A16 Bionic\r\nRAM:6 GB,Dung lượng lưu trữ:128 GB\r\n', 30, 'iphone-14-pro-max-128gb-mau-tim-ione-vn.png'),
(13, 'iPhone 12 64GB  ', 'phone', 'Màn hình:OLED6.1&#34;Super Retina XDR,Hệ điều hành:iOS 15\r\nCamera sau:2 camera 12 MP,Camera trước:12 MP\r\nChip:Apple A14 Bionic,RAM:4 GB,Dung lượng lưu trữ:64 GB', 26, 'None_32e767de-b206-4f60-a4ca-b22f51f29d8c.jpg'),
(14, 'Máy ảnh Canon EOS R5C (Body Only)', 'camera', 'ISO100 - 51.200 (có thể mở rộng từ 50 - 102.400)\r\nTốc Độ Màn Trập\r\nMàn trập cơ học: 1/8000 đến 30 giây\r\nMàn trập điện tử 1/8000 đến 0,5 giây\r\n', 14, 'canon-eos-r5-c-500x500.jpg'),
(15, 'Máy ảnh Panasonic Lumix DC-S5 + Lens 20-60mm f/3.5 - 5.6', 'camera', 'Cảm biến CMOS full-frame 24.2MP\r\nEVF OLED 2.36 triệu điểm, độ phóng đại 0,74x\r\nV-Log, HDR và ​​Dual Native ISO\r\nVideo UHD 4K60, 10-bit', 35, 'lumix-s5-500x500.png'),
(16, 'Máy ảnh Nikon Z5 +Lens 24-200mm f/4-6.3', 'camera', 'Bộ xử lý hình ảnh EXPEED 6\r\nCảm biến CMOS 24.3MP\r\nKính ngắm điện tử OLED 3,6 triệu điểm ảnh\r\nQuay video UHD 4K và Full HD', 40, 'nikon-z5-with-lens-24-200-1-500x500.jpg'),
(17, 'Chuột Không dây Bluetooth Silent Rapoo M500', 'mouse', 'ương thích:\r\n\r\nmacOS (MacBook, iMac)Windows\r\nĐộ phân giải:1600 DPI\r\nCách kết nối:Đầu thu USB ReceiverBluetooth\r\nĐộ dài dây / Khoảng cách kết nối:10 m', 12, 'chuot-bluetooth-silent-rapoo-m500-xanh-duong-1-1-org.jpg'),
(18, 'Chuột Có dây DareU EM908 ', 'mouse', 'Tương thích:macOS (MacBook, iMac)Windows\r\nĐộ phân giải:6400 DPI\r\nCách kết nối:Dây cắm USB\r\nĐộ dài dây / Khoảng cách kết nối:Dây dài 186 cm', 10, 'chuot-co-day-dareu-em908-3-1.jpg'),
(19, 'Laptop Asus Vivobook X415EA i3 1115G4/8GB/256GB/Win11', 'laptop', 'Cấu hình Laptop Asus Vivobook X415EA i3 1115G4/8GB/256GB/Win11 (EK2034W)\r\nCPU:i31115G43GHz\r\nRAM:8 GBDDR4 2 khe (1 khe 8 GB onboard + 1 khe trống)3200 MHz', 32, 'vi-vn-asus-vivobook-x415ea-i3-ek2034w--(2).jpg'),
(20, 'Laptop Lenovo Ideapad Gaming 3 15IHU6 i5 ', 'laptop', 'Cấu hình Laptop Lenovo Ideapad Gaming 3 15IHU6 i5 11320H/8GB/512GB/4GB GTX1650/120Hz/Win11\r\nRAM:8 GBDDR4 2 khe (1 khe 8 GB + 1 khe rời)3200 MHz\r\nỔ cứng:512 GB SSD NVMe PCIe (Có thể tháo ra, lắp thanh khác tối đa 1 TB (2280) / 512 GB (2242))Hỗ trợ khe cắm HDD SATA 2.5 inch mở rộng (nâng cấp tối đa 1 TB)', 35, 'lenovo-ideapad-gaming-3-15ihu6-i5-82k101f3vn638155252901510186.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`, `image`) VALUES
(6, 'admin', 'admin0601@gmail.com', '398bb4d9a15db2d8bf52b9ca9c8538ee', 'admin', 'avatar-hinh-anh-cute-de-thuong-600x600.jpg'),
(7, 'trung', 'quangtrung4346@gmail.com', '5a6e20f3ced3596e1d9e8704ec6afa5a', 'user', 'anh-cute-ngo-nghinh_093403180.jpg'),
(11, 'meow', 'quangtrung4347@gmail.com', '2b45c629e577731c4df84fc34f936a89', 'admin', 'anh-vit-boi-roi-cute_093403368.jpg'),
(13, 'use a', 'use@gmail.com', '398bb4d9a15db2d8bf52b9ca9c8538ee', 'user', 'anh-vit-boi-roi-cute_093403368.jpg'),
(14, 'admin01', 'admin01@gmail.com', '398bb4d9a15db2d8bf52b9ca9c8538ee', 'admin', 'avatar-hinh-anh-cute-de-thuong-600x600.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
