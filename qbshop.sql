-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 30, 2021 lúc 08:25 AM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qbshop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `bill_id` bigint(20) NOT NULL,
  `user_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total` double DEFAULT NULL,
  `address` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `number` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bill`
--

INSERT INTO `bill` (`bill_id`, `user_id`, `total`, `address`, `date`, `number`) VALUES
(1621617380960, 'lan@gmail.com', 4715000, 'nhà lân', '2021-05-21 17:16:20', 0),
(1621617415750, 'quynh@gmail.com', 720000, 'nhà quỳnh', '2021-05-21 17:16:55', 0),
(1621507786949, 'bao@gmail.com', 4390000, 'nhà bảo nha', '2021-05-20 10:49:46', 0),
(1621617735177, 'bao@gmail.com', 720000, 'nhà bạn bảo', '2021-05-21 17:22:15', 0),
(1621921336063, 'jack@gmail.com', 1400000, 'Nhà của quỳnh', '2021-05-25 05:42:16', 0),
(1621923512731, 'bao@gmail.com', 3410000, 'nhà mía', '2021-05-25 06:18:32', 9178),
(1621923675260, 'bao@gmail.com', 3410000, 'Lô E1, Phân khu đào tạo E1, Khu Công Nghệ cao TP.HCM, Phường Hiệp Phú, Quận 9, TP.HCM', '2021-05-25 06:21:15', 125435625);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_detail`
--

CREATE TABLE `bill_detail` (
  `bill_detail_id` bigint(20) NOT NULL,
  `bill_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bill_detail`
--

INSERT INTO `bill_detail` (`bill_detail_id`, `bill_id`, `product_id`, `price`, `quantity`) VALUES
(23, 1621617380960, 14, 25000, 1),
(22, 1621617380960, 11, 260000, 1),
(21, 1621617380960, 9, 340000, 3),
(20, 1621617380960, 7, 3410000, 1),
(19, 1621507786949, 11, 260000, 1),
(18, 1621507786949, 8, 720000, 1),
(17, 1621507786949, 7, 3410000, 1),
(24, 1621617415750, 6, 720000, 1),
(25, 1621617735177, 6, 720000, 1),
(26, 1621921336063, 17, 720000, 1),
(27, 1621921336063, 9, 340000, 2),
(28, 1621922800282, 7, 3410000, 1),
(29, 1621923512731, 7, 3410000, 1),
(30, 1621923675260, 7, 3410000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Áo'),
(2, 'Túi'),
(3, 'Kính'),
(4, 'Quần'),
(5, 'Thắt lưng'),
(9, 'Giày'),
(11, 'Ví'),
(12, 'Đồng hồ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gender`
--

CREATE TABLE `gender` (
  `gender_id` bigint(20) NOT NULL,
  `gender_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `gender`
--

INSERT INTO `gender` (`gender_id`, `gender_name`) VALUES
(1, 'Nam'),
(2, 'Nữ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `gender_id` bigint(20) DEFAULT NULL,
  `product_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_image` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_price` double DEFAULT NULL,
  `product_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `category_id`, `gender_id`, `product_name`, `product_image`, `product_price`, `product_description`) VALUES
(6, 9, 1, 'Giày Thẻ Thao', 'img\\giaythethao.png', 720000, 'Chất liệu: Da tổng hợp\r\nĐặc tính:\r\n- Thiết kế giày thể thao có đế cao su mềm với khả năng chống trơn trượt vượt trội, mang lại sự êm ái, nhẹ nhàng khi di chuyển cũng như vận động.\r\n- Đế cao 4cm nâng dáng giúp tôn dáng người và rất dễ phối đồ.'),
(7, 1, 1, 'Áo sơ mi Caro', 'img\\aosomicaro.png', 3410000, 'Chất liệu: Brushed twill 60% Polyester, 40% Cotton.\r\nForm: Regular\r\nĐặc tính:\r\n- ƯU ĐIỂM 3 KHÔNG: không nhăn - không co rút - không phai màu. Vải tương đối dễ ủi, đặc biệt rất thông thoáng và phù hợp với khí hậu nhiệt đới của Việt Nam.\r\n- Họa tiết caro thể hiện sự năng động nhưng làm mất đi tính thanh lịch và hiện đại.\r\n- Form suông regular vừa vặn với cơ thể, không ôm sát hay gò bó giúp bạn vận động dễ dàng và thoải mái.'),
(9, 4, 1, 'Quần Tây NAZAFU Xanh', 'img\\quantay.png', 340000, 'Chất liệu: 73% polyester, 26% rayon, 1% spandex.\r\nForm: Slimfit\r\nĐặc tính:\r\n- Chất vải mềm mại, độ bền cao, hút ẩm và thấm hút mồ hôi tốt.\r\n- Họa tiết kẻ caro Glen plaid rất \"đa dụng\", thanh nhã. \r\nHướng dẫn sử dụng:\r\n- Giặt ở nhiệt độ bình thường, với đồ có màu tương tự.\r\n- Không được dùng hóa chất tẩy.\r\n- Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường.'),
(10, 1, 1, 'Áo Polo trơn Basic Hồng', 'img\\aopoto1.png', 240000, 'chưa update'),
(11, 1, 1, 'Áo Khoác Kaki Màu Bò', 'img\\aokaki.png', 260000, 'Chất liệu: 100% cotton.\r\nForm: Regular\r\nĐặc tính:  Áo khoác kaki làm từ chất liệu cotton 100% được dệt rất tỉ mỉ và chắc chắn. Áo sở hữu đặc tính ít nhăn và bền màu, không xù lông, tạo phong thái năng động, phóng khoáng cho người mặc.\r\n*Sản phẩm thuộc BST Free Life: Sản phẩm có hai lớp cao cấp kèm 4 túi đa năng rất trẻ trung, tiện ích, mix&match thoải mái và linh hoạt trong thiết kế form suông.\r\n*Mở bán ngày: 22.12.20\r\n\r\nHướng dẫn sử dụng:\r\n- Giặt ở nhiệt độ bình thường, với đồ có màu tương tự.\r\n- Không được dùng hóa chất tẩy.\r\n- Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường.'),
(15, 1, 2, 'Áo Len Bẻ Cổ', 'img/vaynudo.png', 299000, 'Chất liệu: vải len cao cấp mềm mại, không nhăn, hay xù lông, bền màu. \r\nKiểu dáng: áo len thiết kế, cổ bẻ,cộc tay, tông màu trơn. \r\nPhù hợp : đi làm, đi sự kiện, hay đi dạo phố, tạo vẻ trẻ trung, hiện đại cho người mặc. \r\nSản phẩm thuộc dòng sản phẩm : NEM NEW\r\nSản phẩm kết hợp: chân váy hồng  -  quần váy trắng  - quần Jeans '),
(16, 9, 2, 'Giày Sandal Quai Mảnh', 'img/giaynua1.png', 654000, 'Loại sản phẩm\r\nGiày Cao Gót\r\nKiểu gót\r\nGót đặc biệt\r\nĐộ cao gót\r\n9 cm\r\nLoại mũi\r\nHở mũi (mũi vuông)\r\nChất liệu\r\nChất liệu đặc biệt\r\nHoa văn, chi tiết\r\nPhối màu, phối metallic\r\nPhù hợp sử dụng\r\nĐi làm, đi tiệc, đi chơi'),
(17, 3, 2, 'Kính Gọng NhựaTròn', 'img/kinh1.jpg', 720000, '  Loại sản phẩm\r\nMắt Kính\r\nChất liệu gọng kính\r\nPlastic & Kim loại\r\nCông nghệ tròng kính\r\nCông nghệ Polarized chóng chói\r\nKiểu kính\r\nKính gọng vuông / Kính gọng hình thang\r\nKiểu khuôn mặt phù hợp\r\nMặt trái xoan, mặt tròn, mặt trái tim'),
(18, 2, 2, 'Túi Xách Tay Phối Tweed', 'img/tuinua1.jpg', 415000, 'Loại sản phẩm\r\nTúi Xách Tay\r\nKích thước (dài x rộng x cao)\r\n21.2 x 11.4 x 16.5 cm\r\nChất liệu\r\nDa nhân tạo\r\nChất liệu dây đeo\r\nDây da\r\nKiểu khóa\r\nKhóa kéo\r\nHoa văn, chi tiết\r\nPhối màu, phối vải tweed\r\nChiều dài dây đeo\r\n110 cm\r\nSố ngăn\r\n1 ngăn lớn, 2 ngăn nhỏ\r\nKích cỡ\r\nNhỏ\r\nPhù hợp sử dụng\r\nĐi chơi, đi tiệc'),
(19, 2, 2, 'Túi Xách Phối Da Nubuck', 'img/tuinu2.jpg', 1200000, 'oại sản phẩm\r\nTúi Xách Tay\r\nKích thước (dài x rộng x cao)\r\n26.3 x 12.4 x 25.3 cm\r\nChất liệu\r\nDa nhân tạo & Microfiber\r\nChất liệu dây đeo\r\nDây da\r\nKiểu khóa\r\nKhóa nam châm & Khóa kéo\r\nHoa văn, chi tiết\r\nMột màu, trang trí khóa kim loại\r\nChiều dài dây đeo\r\n100 cm\r\nSố ngăn\r\n1 ngăn lớn, 3 ngăn nhỏ\r\nKích cỡ\r\nTrung bình\r\nPhù hợp sử dụng\r\nĐi làm, đi chơi'),
(20, 2, 2, 'Túi Xách The Pearl Shell', 'img/tuinu3.jpg', 825000, 'Loại sản phẩm\r\nTúi Xách Tay\r\nKích thước (dài x rộng x cao)\r\n21.5 x 3.9 x 14 cm\r\nChất liệu\r\nDa nhân tạo\r\nChất liệu dây đeo\r\nDa kết hợp kim loại\r\nKiểu khóa\r\nKhóa nam châm\r\nHoa văn, chi tiết\r\nMột màu, phối quai mắt xích\r\nChiều dài dây đeo\r\n100 cm\r\nSố ngăn\r\n2 ngăn lớn, 1 ngăn nhỏ\r\nKích cỡ\r\nNhỏ\r\nPhù hợp sử dụng\r\nĐi làm, đi chơi'),
(21, 11, 2, 'Ví Cầm Tay Da Vân Nổi', 'img/vinu1.jpg', 550000, 'Loại sản phẩm\r\nVí Cầm Tay\r\nChất liệu\r\nDa nhân tạo\r\nHoa văn, chi tiết\r\nMột màu, trang trí kim loại\r\nKích thước (dài x rộng x cao)\r\n19 x 3.2 x 9.8 cm\r\nKiểu khóa\r\nNút bấm\r\nSố ngăn\r\n2 ngăn lớn, 3 ngăn nhỏ, 10 ngăn đựng thẻ\r\nKích cỡ\r\nTrung bình\r\nKiểu ví\r\nVí dài\r\nPhù hợp sử dụng\r\nĐi làm, đi chơi'),
(22, 11, 2, 'Ví Cầm Tay Da Vân Nổi', 'img/vinu2.jpg', 825000, 'Loại sản phẩm\r\nVí Cầm Tay\r\nChất liệu\r\nDa nhân tạo\r\nHoa văn, chi tiết\r\nMột màu, trang trí kim loại\r\nKích thước (dài x rộng x cao)\r\n12.1 x 2.4 x 9.2 cm\r\nKiểu khóa\r\nNút bấm\r\nSố ngăn\r\n1 ngăn lớn, 6 ngăn đựng thẻ\r\nKích cỡ\r\nNhỏ\r\nKiểu ví\r\nVí ngắn\r\nPhù hợp sử dụng\r\nĐi làm, đi chơi'),
(23, 9, 2, 'Giày Kitten Heel', 'img/giaynu1.jpg', 545000, 'Loại sản phẩm\r\nGiày Bít\r\nKiểu gót\r\nGót nhọn\r\nĐộ cao gót\r\n4.5 cm\r\nLoại mũi\r\nBít mũi nhọn\r\nChất liệu\r\nDa nhân tạo\r\nHoa văn, chi tiết\r\nMột màu\r\nPhù hợp sử dụng\r\nĐi làm, đi tiệc, đi chơi'),
(25, 5, 2, 'Thắt Lưng Chốt Cài Hiện Đại', 'img/thatlungnu2.jpg', 275000, 'Loại sản phẩm\r\nThắt Lưng\r\nChất liệu\r\nDa tổng hợp\r\nBản dây\r\n1.4 cm\r\nChiều dài\r\n70 cm (S); 80 cm(M); 90 cm (L)'),
(44, 2, 2, 'Túi xách chéo xinh xắn', 'img/tuinu4.png', 465000, 'chất liệu: da\r\nmàu sắc: nâu sáng'),
(47, 4, 1, ' quần tây NAZAFU Xám', ' upload/quan-tay-nazafu-qt003-mau-xam-15700-slide-products-5fafa931377ba.png', 475000, ' Chất liệu: 73% polyester, 26% rayon, 1% spandex.\r\nForm: Slimfit\r\nĐặc tính:\r\n- Chất vải mềm mại, độ bền cao, hút ẩm và thấm hút mồ hôi tốt.\r\n- Họa tiết kẻ caro Glen plaid rất \"đa dụng\", thanh nhã. \r\nHướng dẫn sử dụng:\r\n- Giặt ở nhiệt độ bình thường, với đồ có màu tương tự.\r\n- Không được dùng hóa chất tẩy.\r\n- Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường.'),
(48, 4, 1, ' Quần tây phối dây sọc', ' upload/quan-tay-nazafu-qt006-mau-xanh-den-15964-slide-products-6018c51acb96a.png', 385000, '   Chất liệu: 69% polyester, 29% rayon, 2% spandex\r\nForm: Slimfit\r\nĐặc tính:\r\n- Quần slimfit tôn dáng thon gọn trong thiết kế trơn căn bản, thêm điểm nhấn túi phối dây sọc.\r\n- Chất liệu thấm hút tốt, độ bền cao tạo cảm giác thoải mái cho người mặc.\r\nHướng dẫn sử dụng:\r\n- Giặt ở nhiệt độ bình thường, với đồ có màu tương tự.\r\n- Không được dùng hóa chất tẩy.\r\n- Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường.\r\n'),
(49, 2, 1, ' Túi đeo chéo phối dây sọc', ' upload/tui-deo-cheo-nau-tx002-16029-slide-products-6094ad381184d.png', 285000, 'chất liệu: da\r\nmàu sắc: đen'),
(50, 2, 1, ' Túi đeo chéo da bò', ' upload/-16013-slide-products-60939f1915191.png', 375, ' chất liệu: làm từ da\r\nmàu sắc: nâu'),
(51, 2, 1, ' Túi đeo chéo trơn nâu', ' upload/tui-deo-cheo-bo-tx003-16031-slide-products-6094b05f2607d.png', 285000, ' chất liệu: da\r\nmàu sắc: xám'),
(52, 4, 2, ' Quần yếm Jean ống suông', ' upload/mausac_xanh_quan_yem_jean_ong_suong_day_manh__5__a032ab551ebe4d91959d5d326b6b70f7_master.png', 395000, ' Kích thước: S/M\r\n\r\n\r\nEo: 80/94 cm\r\n\r\n\r\nDài: 120/120 cm ( dây điều chỉnh )\r\n\r\n\r\nMông: 98/106 cm'),
(53, 1, 2, ' Áo khoác Blazer 2 túi', ' upload/mausac_be_ao_khoac_blazer_2_tui_nut_den__4__eb15f407c02d44c28e0eb9cac5ef9136_master.png', 485000, ' Kích thước: Freesize\r\n\r\n\r\nNgực: 112cm\r\n\r\n\r\nDài: 67cm\r\n\r\n\r\nVai: 40 cm'),
(54, 3, 1, ' Mắt kính đen', ' upload/mat-kinh-xanh-reu-mk251-10055-slide-products-5b84e91a3c880.jpg', 345000, ' Mắt Kính Đen kiểu dáng thời trang, sang trọng, gọng nhẹ không gây áp lực cho mũi và tai, rất thoải mái khi đeo. Thích hợp cả nam và nữ khi đi chơi, dạo phố, du lịch hay chụp ảnh.\r\n'),
(55, 3, 1, ' mắt kính đỏ', ' upload/mat-kinh-den-mk260-10058-slide-products-5b84ed318939b.jpg', 345000, ' Mắt Kính Đỏ kiểu dáng thời trang, sang trọng, gọng nhẹ không gây áp lực cho mũi và tai, rất thoải mái khi đeo. Thích hợp cả nam và nữ khi đi chơi, dạo phố, du lịch hay chụp ảnh.\r\n'),
(56, 5, 2, ' Thắt lưng da beo', ' upload/mausac_da_beo_th_t_l_ng_da_beo_kho__vu_ng__2__master.jpg', 150000, ' Size: 3.5cm x 101cm\r\n\r\nChất liệu: Da PU'),
(57, 5, 2, ' Thắt lưng da lộn', ' upload/mausac_den_mausac_be_th_t_l_ng_da_l_n_kho__tr_i_tim_b_c__2__master.jpg', 160000, '  Size: 3.5cm x 101cm\r\n\r\nChất liệu: Da PU'),
(58, 5, 1, ' Thắt lưng khóa tự động', ' upload/that-lung-khoa-tu-dong-tl046-mau-den-16003-slide-products-603c5cfbeb2eb.png', 275000, ' Chiều dài (cm): 125\r\nĐầu khóa tự động làm từ hợp kim bền bỉ, không bị gỉ sét, hoen ố giúp đầu khóa dây luôn trong trạng thái bóng mới.\r\nThắt lưng 4MEN với kiểu dáng đơn giản, mẫu dây bản lớn tạo điểm nhấn tinh tế.\r\n- Bề mặt da không bị rạn nứt, gãy đứt trong suốt thời gian sử dụng.\r\n- Kiểu dáng khóa trượt giúp dễ dàng điều chỉnh, cố định chiều dài thắt lưng phù hợp với vóc dáng cơ thể.\r\n- Thiết kế được gia công tỉ mỉ và tinh xảo giúp gia tăng tuổi thọ dài lâu khi sử dụng.'),
(59, 5, 1, ' Thắt lưng khóa tự động 2', ' upload/that-lung-khoa-tu-dong-tl045-mau-den-16002-slide-products-603c5cb6a6ce5.png', 465000, ' Chiều dài (cm): 125\r\nĐầu khóa tự động làm từ hợp kim bền bỉ, không bị gỉ sét, hoen ố giúp đầu khóa dây luôn trong trạng thái bóng mới.\r\nThắt lưng 4MEN với kiểu dáng đơn giản, mẫu dây bản lớn tạo điểm nhấn tinh tế.\r\n- Bề mặt da không bị rạn nứt, gãy đứt trong suốt thời gian sử dụng.\r\n- Kiểu dáng khóa trượt giúp dễ dàng điều chỉnh, cố định chiều dài thắt lưng phù hợp với vóc dáng cơ thể.\r\n- Thiết kế được gia công tỉ mỉ và tinh xảo giúp gia tăng tuổi thọ dài lâu khi sử dụng.'),
(60, 9, 1, ' Giày tăng chiều cao', ' upload/giay-tang-chieu-cao-g004-mau-den-15912-slide-products-609a11f2d22f6.png', 745000, ' Chất liệu: Da bò\r\n- Đế cao su 100% nguyên khối với độ bám sát cao'),
(61, 11, 1, ' Ví da dáng ngang', ' upload/vi-da-dang-ngang-bv012-15863-slide-products-5feb01286b744.png', 255000, ' Chất liệu: 100% da bò\r\nKích thước: 12x9.5 cm.\r\n▪️ Chất da bền bỉ, khó sờn rách'),
(65, 12, 1, ' Đồng hồ da SRWATCH', ' upload/a.jpg', 1600000, ' hương Hiệu\r\n 	\r\nCasio\r\nSố Hiệu Sản Phẩm\r\n 	MTP-V004L-1B2UDF\r\nXuất Xứ\r\n 	\r\nNhật Bản\r\nGiới Tính\r\n 	\r\nNam'),
(66, 12, 2, ' Đồng hồ FREELOOK', ' upload/dong-ho-freelook-fl1101011_1588562902.jpg', 1400000, ' Nhãn hiệu:	Freelook\r\nNguồn gốc:	Pháp\r\nKiểu máy:	Quartz (Pin)\r\nKích cỡ:	35mm\r\nChất liệu vỏ:	Thép không gỉ 316L\r\nChất liệu dây:	Dây da');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `statum`
--

CREATE TABLE `statum` (
  `isAdmin` int(10) NOT NULL,
  `Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `statum`
--

INSERT INTO `statum` (`isAdmin`, `Name`) VALUES
(0, 'Nhân viên'),
(1, 'Khác hàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `user_fullname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_pass` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `isAdmin` int(10) NOT NULL DEFAULT 0,
  `number` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`user_fullname`, `user_email`, `user_pass`, `isAdmin`, `number`) VALUES
('Lê Hồ Quốc Bảo', 'bao@gmail.com', '123', 1, 123),
('Phan Mạnh Quỳnh', 'quynh@gmail.com', '123456', 0, 0),
('jacky', 'jack@gmail.com', '123', 0, 0),
('Lân Bóng', 'lan@gmail.com', 'lanbong123', 1, 1234);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_id`);

--
-- Chỉ mục cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`bill_detail_id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`gender_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `gender_id` (`gender_id`);

--
-- Chỉ mục cho bảng `statum`
--
ALTER TABLE `statum`
  ADD PRIMARY KEY (`isAdmin`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  MODIFY `bill_detail_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `gender`
--
ALTER TABLE `gender`
  MODIFY `gender_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`gender_id`) REFERENCES `gender` (`gender_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
