-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2020 at 03:43 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `linhphahoai`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_pass`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', '123456', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `area_id` int(10) UNSIGNED NOT NULL,
  `area_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `num_floor` int(11) NOT NULL,
  `num_room` int(11) NOT NULL,
  `num_st` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `baocao`
--

CREATE TABLE `baocao` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phong` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hoten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noidung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinhanh` blob NOT NULL,
  `chuthich` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngay` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `baocao`
--

INSERT INTO `baocao` (`id`, `phong`, `hoten`, `noidung`, `hinhanh`, `chuthich`, `ngay`) VALUES
(1, 'a102', 'Huỳnh Thị Yến Linh', 'Vòi sen đã bị hỏng. Mong ban quản lý sửa chữa sớm', 0x766f692d73656e34322e6a7067, NULL, '2020-12-29');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `bill_id` int(10) UNSIGNED NOT NULL,
  `room_id` int(10) UNSIGNED DEFAULT NULL,
  `month` date NOT NULL,
  `money_electric` int(11) NOT NULL,
  `money_water` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bill_detail`
--

CREATE TABLE `bill_detail` (
  `detail_id` int(10) UNSIGNED NOT NULL,
  `bill_id` int(10) UNSIGNED DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firts_electric` int(11) NOT NULL,
  `end_electric` int(11) NOT NULL,
  `num_electric` int(11) NOT NULL,
  `firts_water` int(11) NOT NULL,
  `end_water` int(11) NOT NULL,
  `num_water` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flood`
--

CREATE TABLE `flood` (
  `flood_id` int(10) UNSIGNED NOT NULL,
  `area_id` int(10) UNSIGNED NOT NULL,
  `flood_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `num_room_flood` int(11) NOT NULL,
  `num_st_flood` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(102, '2020_12_27_113330_create_baocao_table', 2),
(176, '2019_12_04_192241_create_area_table', 3),
(177, '2019_12_04_192247_create_flood_table', 3),
(178, '2019_12_04_192253_create_room_table', 3),
(179, '2019_12_04_192259_create_student_table', 3),
(180, '2019_12_04_192307_create_noti_table', 3),
(181, '2019_12_04_192312_create_price_table', 3),
(182, '2019_12_04_192318_create_report_table', 3),
(183, '2019_12_04_192325_create_bill_table', 3),
(184, '2019_12_04_192331_create_bill_detail_table', 3),
(185, '2019_12_04_192337_create_admin_table', 3),
(186, '2020_12_27_130045_create_baocao_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `noti`
--

CREATE TABLE `noti` (
  `noti_id` int(10) UNSIGNED NOT NULL,
  `noti_date` date NOT NULL,
  `noti_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `noti_img` blob NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `noti`
--

INSERT INTO `noti` (`noti_id`, `noti_date`, `noti_content`, `noti_img`, `title`) VALUES
(1, '2020-12-20', '\"Tia nắng hững hờ giữa trời đông bão tố\r\nTa làm sạch con đường thân quen thời sinh viên\"\r\nSau một thời gian dài kể từ dịch covid19 đến những cơn mưa giông bão của những ngày mùa đông cận kề sang năm mới.\r\nSáng ngày 18/10/2020, Đoàn Thanh niên Nhà trường phối hợp cùng Tổ Quản lý KTX đã tổ chức ra quân dọn vệ sinh trong và ngoài khuôn viên Ký Túc Xá Khu V với sự tham gia hơn 100 đoàn viên thanh niên, sinh viên nội trú KTX tham gia.\r\nCác bạn đoàn viên, sinh viên đã làm sạch cỏ ở phía trước KTX Khu V, 2 bên hàng rào, quét dọn, thu gom rác thải xung quanh nhà 1 và nhà 2, lau chùi cầu thang, vệ sinh, lau dọn phòng tự học, quét mạng nhện trần hành lang.\r\nCác bạn sinh viên tham gia đầy đủ, ra quân với tinh thần hăng hái, nhiệt huyết, góp phần làm cho KTX xanh - sạch - đẹp hơn.', 0x6c616f2d6368752d6e6861742d78616e68343839382e6a7067, 'Chủ Nhật Xanh');

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `price_id` int(10) UNSIGNED NOT NULL,
  `price_electric` int(11) NOT NULL,
  `price_water` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `report_id` int(10) UNSIGNED NOT NULL,
  `room_id` int(10) UNSIGNED DEFAULT NULL,
  `st_id` int(10) UNSIGNED DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `report_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(10) UNSIGNED NOT NULL,
  `flood_id` int(10) UNSIGNED DEFAULT NULL,
  `room_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `captain_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `captain_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `num_member` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `flood_id`, `room_name`, `captain_name`, `captain_phone`, `num_member`, `created_at`, `updated_at`) VALUES
(1, NULL, 'a101', 'Lương', '1234567', 10, NULL, NULL),
(2, NULL, 'a102', 'Linh', '1111111', 10, NULL, NULL),
(3, NULL, 'a103', 'Hòa', '129849', 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `st_id` int(10) UNSIGNED NOT NULL,
  `msv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `st_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `st_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `st_class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `st_school` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `st_birthday` date NOT NULL,
  `st_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_id` int(10) UNSIGNED NOT NULL,
  `st_bike` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `st_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`st_id`, `msv`, `st_pass`, `st_name`, `st_class`, `st_school`, `st_birthday`, `st_phone`, `room_id`, `st_bike`, `st_address`, `created_at`, `updated_at`) VALUES
(1, '19IT176', '123456', 'Lê Thị Phương Lương', '19IT3', 'Khoa học máy tính', '2000-12-18', '123565', 1, NULL, 'Quảng Ngãi', '2020-12-28 21:56:59', '2020-12-28 21:56:59'),
(2, '19IT171', '123456', 'Huỳnh Thị Yến Linh', '19IT3', 'Khoa học máy tính', '2001-10-08', '123563', 2, NULL, 'Quảng Ngãi', '2020-12-28 21:58:51', '2020-12-28 21:58:51'),
(3, '19IT156', '123456', 'Trần Thị Hạnh Hòa', '19IT3', 'Khoa học máy tính', '2001-03-04', '1287522', 1, NULL, 'Đà Nẵng', '2020-12-28 21:59:20', '2020-12-28 21:59:20'),
(4, '19IT176', '123456', 'Lê Thị Phương Lương', '19IT3', 'Khoa học máy tính', '2000-12-18', '0989055432', 2, NULL, 'Quảng Ngãi', '2020-12-28 23:30:44', '2020-12-28 23:30:44'),
(5, '19IT156', '123456', 'Trần Thị Hạnh Hòa', '19IT3', 'Khoa học máy tính', '2001-03-04', '0932578344', 2, NULL, 'Đà Nẵng', '2020-12-28 23:31:47', '2020-12-28 23:31:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`area_id`);

--
-- Indexes for table `baocao`
--
ALTER TABLE `baocao`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_id`),
  ADD KEY `bill_room_id_foreign` (`room_id`);

--
-- Indexes for table `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`detail_id`),
  ADD KEY `bill_detail_bill_id_foreign` (`bill_id`);

--
-- Indexes for table `flood`
--
ALTER TABLE `flood`
  ADD PRIMARY KEY (`flood_id`),
  ADD KEY `flood_area_id_foreign` (`area_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `noti`
--
ALTER TABLE `noti`
  ADD PRIMARY KEY (`noti_id`);

--
-- Indexes for table `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`price_id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`report_id`),
  ADD KEY `report_room_id_foreign` (`room_id`),
  ADD KEY `report_st_id_foreign` (`st_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`),
  ADD KEY `room_flood_id_foreign` (`flood_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`st_id`),
  ADD KEY `student_room_id_foreign` (`room_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `area_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `baocao`
--
ALTER TABLE `baocao`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `bill_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bill_detail`
--
ALTER TABLE `bill_detail`
  MODIFY `detail_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flood`
--
ALTER TABLE `flood`
  MODIFY `flood_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT for table `noti`
--
ALTER TABLE `noti`
  MODIFY `noti_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `price`
--
ALTER TABLE `price`
  MODIFY `price_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `report_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `st_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`) ON DELETE CASCADE;

--
-- Constraints for table `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD CONSTRAINT `bill_detail_bill_id_foreign` FOREIGN KEY (`bill_id`) REFERENCES `bill` (`bill_id`) ON DELETE CASCADE;

--
-- Constraints for table `flood`
--
ALTER TABLE `flood`
  ADD CONSTRAINT `flood_area_id_foreign` FOREIGN KEY (`area_id`) REFERENCES `area` (`area_id`) ON DELETE CASCADE;

--
-- Constraints for table `report`
--
ALTER TABLE `report`
  ADD CONSTRAINT `report_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `report_st_id_foreign` FOREIGN KEY (`st_id`) REFERENCES `student` (`st_id`) ON DELETE CASCADE;

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_flood_id_foreign` FOREIGN KEY (`flood_id`) REFERENCES `flood` (`flood_id`) ON DELETE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
