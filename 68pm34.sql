-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 18, 2026 lúc 06:14 PM
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
-- Cơ sở dữ liệu: `68pm34`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_lops`
--

CREATE TABLE `tbl_lops` (
  `id` int(11) NOT NULL,
  `malop` varchar(20) NOT NULL,
  `tenlop` varchar(100) NOT NULL,
  `ghichu` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_lops`
--

INSERT INTO `tbl_lops` (`id`, `malop`, `tenlop`, `ghichu`) VALUES
(1, 'CNTT1', 'Công nghệ thông tin 1', 'Khóa 2022'),
(2, 'CNTT2', 'Công nghệ thông tin 2', 'Khóa 2022'),
(3, 'CNTT3', 'Công nghệ thông tin 3', 'Khóa 2023'),
(4, 'KTPM1', 'Kỹ thuật phần mềm 1', 'Khóa 2023'),
(5, 'ATTT1', 'An toàn thông tin 1', 'Khóa 2024');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sinhviens`
--

CREATE TABLE `tbl_sinhviens` (
  `id` int(11) NOT NULL,
  `hoten` varchar(100) NOT NULL,
  `gioitinh` varchar(10) NOT NULL,
  `mssv` varchar(20) NOT NULL,
  `malop` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_sinhviens`
--

INSERT INTO `tbl_sinhviens` (`id`, `hoten`, `gioitinh`, `mssv`, `malop`) VALUES
(4, 'Phạm Thị Hiếu', 'Nữ', 'SV004', 'CNTT1'),
(5, 'Hoàng Văn Em', 'Nam', 'SV005', 'CNTT2'),
(6, 'Đỗ Thị Giang', 'Nữ', 'SV006', 'CNTT2'),
(7, 'Vũ Văn Hải', 'Nam', 'SV007', 'CNTT2'),
(8, 'Ngô Thị Lan', 'Nữ', 'SV008', 'CNTT2'),
(9, 'Bùi Văn Minh', 'Nam', 'SV009', 'CNTT3'),
(10, 'Phan Thị Nga', 'Nữ', 'SV010', 'CNTT3'),
(11, 'Trịnh Văn Phúc', 'Nam', 'SV011', 'CNTT3'),
(12, 'Lý Thị Quỳnh', 'Nữ', 'SV012', 'CNTT3'),
(13, 'Đặng Văn Sơn', 'Nam', 'SV013', 'KTPM1'),
(14, 'Mai Thị Trang', 'Nữ', 'SV014', 'KTPM1'),
(15, 'Nguyễn Văn Tuấn', 'Nam', 'SV015', 'KTPM1'),
(16, 'Trần Thị Uyên', 'Nữ', 'SV016', 'KTPM1'),
(17, 'Lê Văn Việt', 'Nam', 'SV017', 'ATTT1'),
(18, 'Phạm Thị Xuân', 'Nữ', 'SV018', 'ATTT1'),
(19, 'Hoàng Văn Yên', 'Nam', 'SV019', 'ATTT1'),
(20, 'Đỗ Thị Ánh', 'Nữ', 'SV020', 'ATTT1'),
(31, 'Trần Hoàng Minh', 'Nam', '0196966', 'CNTT1'),
(32, 'Nguyễn Thu Trang', 'Nữ', '0000003', 'ATTT1'),
(33, 'Nguyễn Minh Phượng', 'Nữ', '0000004', 'CNTT3');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_lops`
--
ALTER TABLE `tbl_lops`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `malop` (`malop`);

--
-- Chỉ mục cho bảng `tbl_sinhviens`
--
ALTER TABLE `tbl_sinhviens`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_lops`
--
ALTER TABLE `tbl_lops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_sinhviens`
--
ALTER TABLE `tbl_sinhviens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
