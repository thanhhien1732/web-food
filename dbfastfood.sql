-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3307
-- Thời gian đã tạo: Th5 23, 2024 lúc 04:07 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dbfastfood`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `admin_name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phonenumber` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id_admin`, `admin_name`, `email`, `phonenumber`, `password`) VALUES
(8, 'admin123', 'admin134@gmail.com', '09090543221', 'begone1234'),
(9, 'admin123', 'admin222@gmail.com', '09090543221', 'begone1332154'),
(10, 'hien1732', 'thanhhien@gmail.com', '0335434504', 'hien1732');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `ten_danhmuc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id_danhmuc`, `ten_danhmuc`) VALUES
(11, 'Gà rán'),
(12, 'Burger'),
(13, 'Pizza'),
(15, 'Mì Ý');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `monan`
--

CREATE TABLE `monan` (
  `idmonan` int(11) NOT NULL,
  `tenmonan` varchar(100) NOT NULL,
  `gia` int(11) NOT NULL,
  `mota` varchar(255) NOT NULL,
  `imgURL` varchar(255) NOT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `monan`
--

INSERT INTO `monan` (`idmonan`, `tenmonan`, `gia`, `mota`, `imgURL`, `id_danhmuc`) VALUES
(30, '2 Đùi Gà Rán', 70000, '2 Đùi Gà Rán', 'garan2.png', 11),
(31, 'Đùi Gà Rán', 35000, 'Đùi Gà Rán', 'garan.png', 11),
(32, 'Combo Gà Rán', 200000, 'Combo Gà Rán', 'comboGaran.png', 11),
(33, 'Cánh Gà Rán', 32000, 'Cánh Gà Rán', 'canhGa.png', 11),
(34, 'Burger Gà', 54000, 'Burger Gà', 'burgerG.png', 12),
(35, 'Burger Tôm', 45000, 'Burger Tôm', 'burgerT.png', 12),
(40, 'Pizza Rau Củ', 45000, 'Pizza Rau Củ', 'pizza2.png', 13),
(41, 'Pizza Phô Mai', 49999, 'Pizza Phô Mai', 'pizzaPM.png', 13),
(42, 'Mỳ ý sốt bò', 55000, 'Mỳ ý sốt bò', 'mì ý1.png', 15),
(43, 'Pizza Thập Cẩm', 54998, 'Pizza Thập Cẩm', 'pizzaTC.png', 13),
(46, 'Burger Cá', 53000, 'Burger Cá', 'burgerC.png', 12),
(47, 'Burger Bò', 50000, 'Burger Bò', 'burgerB.png', 12),
(48, 'Pizza Pepperoni', 60000, 'Pizza Pepperoni', 'pizzaP.png', 13),
(49, 'Mì ý sốt cà chua', 50000, 'Mì ý sốt cà chua', 'mì ý 2.png', 15),
(50, 'Mì ý đặc biệt', 60000, 'Mì ý đặc biệt', 'mỳ ý ĐB.png', 15),
(51, 'Mì ý thập cẩm', 65000, 'Mì Ý Thập Cẩm', 'mỳ ý TC.png', 15);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Chỉ mục cho bảng `monan`
--
ALTER TABLE `monan`
  ADD PRIMARY KEY (`idmonan`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `monan`
--
ALTER TABLE `monan`
  MODIFY `idmonan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
