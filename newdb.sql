-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 25, 2023 lúc 06:16 AM
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
-- Cơ sở dữ liệu: `newdb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id_cat` int(11) NOT NULL,
  `cat_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id_cat`, `cat_name`) VALUES
(1, 'Ghế Sofa'),
(2, 'Bàn ghế ăn'),
(3, 'Giường'),
(4, 'Tủ quần áo'),
(5, 'Kệ tivi'),
(6, 'Phụ kiện trang trí');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `detail_order`
--

CREATE TABLE `detail_order` (
  `id_order` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `id_prd_detail` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order1`
--

CREATE TABLE `order1` (
  `ship_id` int(11) NOT NULL,
  `id_cus` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `datebuy` datetime NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `image` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `featured` int(1) NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `recommend` int(1) NOT NULL,
  `material` varchar(255) NOT NULL,
  `size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `cat_id`, `name`, `price`, `image`, `quantity`, `featured`, `description`, `recommend`, `material`, `size`) VALUES
(6, 3, ' Giường ngủ đơn giản bằng gỗ sồi', 13000000, 'avar-giuong-ngu-don-gian-bang-go-soi-ghs-9269-1.jpg', 10, 1, '<h3>ĐẶC ĐIỂM NỔI BẬT</h3>\r\n\r\n<p>Thiết kế đơn giản &ndash; th&ocirc;ng minh cho cuộc sống dễ d&agrave;ng!</p>\r\n\r\n<p><strong>Thiết kế th&ocirc;ng minh</strong></p>\r\n\r\n<p>Tab đầu giường được thiết kế th&ecirc;m kệ lưu trữ đồ v&ocirc; c&ugrave;ng tiện lợi gi&uacute;p bạn th&ecirc;m kh&ocirc;ng gian trưng b&agrave;y v&agrave; lưu trữ đồ d&ugrave;ng nhỏ gọn trong ph&ograve;ng. Sản phẩm&nbsp;<a href=\"https://gotrangtri.vn/danh-muc/giuong/\">giường ngủ</a>&nbsp;đơn giản kh&ocirc;ng chỉ n&acirc;ng nui trọn vẹn từng giấc ngủ bạn m&agrave; c&ograve;n gi&uacute;p cho cuộc sống th&ecirc;m tiện nghi hơn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"giuong-ngu-don-gian-bang-go-soi-ghs-9269\" src=\"https://gotrangtri.vn/wp-content/uploads/2022/09/giuong-ngu-don-gian-bang-go-soi-ghs-9269-6.jpg\" style=\"height:757px; width:880px\" /></p>\r\n\r\n<p><em>Tab đầu giường được thiết kế th&ecirc;m kệ lưu trữ đồ v&ocirc; c&ugrave;ng tiện lợi gi&uacute;p bạn th&ecirc;m kh&ocirc;ng gian trưng b&agrave;y v&agrave; lưu trữ đồ.</em></p>\r\n\r\n<p><img alt=\"giuong-ngu-don-gian-bang-go-soi-ghs-9269\" src=\"https://gotrangtri.vn/wp-content/uploads/2022/09/giuong-ngu-don-gian-bang-go-soi-ghs-9269-3.jpg\" style=\"height:458px; width:880px\" /></p>\r\n\r\n<p><img alt=\"giuong-ngu-don-gian-bang-go-soi-ghs-9269\" src=\"https://gotrangtri.vn/wp-content/uploads/2022/09/giuong-ngu-don-gian-bang-go-soi-ghs-9269-5.jpg\" style=\"height:882px; width:880px\" /></p>\r\n\r\n<p><strong>G&oacute;c cạnh bo tr&ograve;n &ndash; giảm chấn thương</strong></p>\r\n\r\n<p>Chiếc giường ngủ đơn giản được thiết kế theo lối phong c&aacute;ch hiện đại, vừa cung cấp kh&ocirc;ng gian nghỉ ngơi l&yacute; tưởng vừa tạo điểm nhấn cho ph&ograve;ng ngủ.&nbsp;Sản phẩm được trau chuốt tỉ mỉ từng chi tiết, đảm bảo t&iacute;nh thẩm mỹ. C&aacute;c g&oacute;c m&eacute;p giường đều được bo tr&ograve;n, đảm bảo kh&ocirc;ng g&acirc;y tổn thương cho người d&ugrave;ng khi c&oacute; va chạm.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"giuong-ngu-don-gian-bang-go-soi-ghs-9269 (2)\" src=\"https://gotrangtri.vn/wp-content/uploads/2022/09/giuong-ngu-don-gian-bang-go-soi-ghs-9269-2.jpg\" style=\"height:1200px; width:880px\" /></p>\r\n\r\n<h2><strong>CHẤT LƯỢNG VƯỢT TRỘI</strong></h2>\r\n\r\n<p><strong>Gỗ sồi tự nhi&ecirc;n</strong></p>\r\n\r\n<p>Sản phẩm giường ngủ đơn giản được l&agrave;m từ gỗ sồi tự nhi&ecirc;n, tẩm sấy kỹ lưỡng trước khi đưa v&agrave;o sản xuất th&agrave;nh phẩm n&ecirc;n khắc phục được c&aacute;c t&igrave;nh trạng cong v&ecirc;nh hay mối một trong qu&aacute; tr&igrave;nh sử dụng. Thời gian sử dụng sản phẩm l&acirc;u d&agrave;i, tr&ecirc;n 10 năm.</p>\r\n\r\n<p><img alt=\"giuong-ngu-don-gian-bang-go-soi-ghs-9269 (2)\" src=\"https://gotrangtri.vn/wp-content/uploads/2022/09/giuong-ngu-don-gian-bang-go-soi-ghs-9269-9.jpg\" style=\"height:1307px; width:880px\" /></p>\r\n\r\n<p><img alt=\"giuong-ngu-don-gian-bang-go-soi-ghs-9269\" src=\"https://gotrangtri.vn/wp-content/uploads/2022/09/giuong-ngu-don-gian-bang-go-soi-ghs-9269-6.jpg\" style=\"height:757px; width:880px\" /></p>\r\n', 1, 'Gỗ sồi kết hợp verneer sồi', '2210x1920x1060mm'),
(7, 1, ' Ghế sofa văng gia đình phong cách Bắc Âu', 8000000, 'ghe-sofa-vang-gia-dinh-phong-cach-bac-au-ghs-8390-AVA.jpg', 10, 0, '<h3>ĐẶC ĐIỂM SẢN PHẨM</h3>\r\n\r\n<p>Thiết kế hiện đại &ndash; Kiểu d&aacute;ng sang trọng &ndash; Dễ d&agrave;ng phối kết hợp n&ocirc;i thất</p>\r\n\r\n<p><img alt=\"ghe-sofa-vang-gia-dinh-phong-cach-bac-au-ghs-8390-4\" src=\"https://gotrangtri.vn/wp-content/uploads/2022/08/ghe-sofa-vang-gia-dinh-phong-cach-bac-au-ghs-8390-4-764x1024.jpg\" style=\"height:1024px; width:764px\" /></p>\r\n\r\n<p><em>Ghế sofa văng gia đ&igrave;nh được đ&aacute;nh gi&aacute; cao về kỹ thuật sản xuất</em></p>\r\n\r\n<p>G&oacute;c ngả v&agrave;ng &ndash; C&ocirc;ng th&aacute;i học&nbsp;</p>\r\n\r\n<p>Tựa lưng của ghế sofa văng gia đ&igrave;nh được thiết kế chuẩn với &ldquo;g&oacute;c ngả v&agrave;ng&rdquo; hỗ trợ đường cong từ vai, cổ, lưng cho đến h&ocirc;ng gi&uacute;p cho người ngồi lu&ocirc;n c&oacute; tư thế thoải m&aacute;i nhất, đảm bảo tốt cho sức khỏe.</p>\r\n\r\n<p>Chức năng lưu trữ đồ tiện lợi&nbsp;</p>\r\n\r\n<p>Thiết kế đa năng với phần t&uacute;i để đồ ở b&ecirc;n tay ghế sofa văng gia đ&igrave;nh gi&uacute;p cho người d&ugrave;ng thoải m&aacute;i cất trữ những m&oacute;n đồ cần thiết. Đặc biệt l&agrave; phần t&uacute;i n&agrave;y được thiết kế h&agrave;i h&ograve;a mix&amp;match với chiếc ghế về kiểu d&aacute;ng n&ecirc;n bạn ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m về t&iacute;nh thẩm mỹ m&agrave; n&oacute; mang lại nha!</p>\r\n\r\n<p><img alt=\"ghe-sofa-vang-gia-dinh-phong-cach-bac-au-ghs-8390-5 copy\" src=\"https://gotrangtri.vn/wp-content/uploads/2022/08/ghe-sofa-vang-gia-dinh-phong-cach-bac-au-ghs-8390-5-copy.jpg\" style=\"height:869px; width:880px\" /></p>\r\n\r\n<p><em>Ghế sofa văng được thiết kế đa năng mang lại sự tiện dụng cho kh&aacute;ch h&agrave;ng</em></p>\r\n\r\n<p><img alt=\"ghe-sofa-vang-gia-dinh-phong-cach-bac-au-ghs-8390-6\" src=\"https://gotrangtri.vn/wp-content/uploads/2022/08/ghe-sofa-vang-gia-dinh-phong-cach-bac-au-ghs-8390-6.jpg\" style=\"height:1137px; width:880px\" /></p>\r\n\r\n<p><em>Đệm m&uacute;t K43 nhập khẩu cao cấp</em></p>\r\n\r\n<p><strong>Đ&agrave;n hồi cao &ndash; Trải nghiệm cấp SPA</strong></p>\r\n\r\n<p>Ghế sofa văng gia đ&igrave;nh được sử dụng đệm m&uacute;t K43 n&ecirc;n to&agrave;n bộ hệ thống tựa v&agrave; mặt ngồi đều rất &ecirc;m &aacute;i, mềm mại, hỗ trợ đ&agrave;n hồi, kh&ocirc;ng bị xẹp v&agrave; giảm được &aacute;p lực s&acirc;u</p>\r\n\r\n<h3><strong>CHẤT LƯỢNG CAO</strong></h3>\r\n\r\n<p>Sản phẩm c&oacute; chất lượng vượt trội, cam kết mang đến cho bạn kh&ocirc;ng gian sống thoải m&aacute;i nhất!&nbsp;</p>\r\n\r\n<p><img alt=\"ghe-sofa-vang-gia-dinh-phong-cach-bac-au-ghs-8390-7\" src=\"https://gotrangtri.vn/wp-content/uploads/2022/08/ghe-sofa-vang-gia-dinh-phong-cach-bac-au-ghs-8390-7.jpg\" style=\"height:722px; width:880px\" /></p>\r\n\r\n<p><em>Ghế sofa văng gia đ&igrave;nh phối m&agrave;u h&agrave;i h&ograve;a c&oacute; t&iacute;nh thẩm mỹ cao</em></p>\r\n\r\n<p>Ghế sofa văng gia đ&igrave;nh của Gotrangtri.vn được sản xuất từ c&aacute;c chất liệu cao cấp, chọn lọc kỹ lưỡng n&ecirc;n đảm bảo được chất lượng th&agrave;nh phẩm đến tay kh&aacute;ch h&agrave;ng. Sản phẩm c&oacute; tuổi thọ sử dụng l&acirc;u d&agrave;i, bền đẹp theo thời gian.&nbsp;</p>\r\n\r\n<p><img alt=\"ghe-sofa-vang-gia-dinh-phong-cach-bac-au-ghs-8390-8\" src=\"https://gotrangtri.vn/wp-content/uploads/2022/08/ghe-sofa-vang-gia-dinh-phong-cach-bac-au-ghs-8390-8.jpg\" style=\"height:874px; width:880px\" /></p>\r\n\r\n<p><em>Ch&acirc;n ghế sofa văng gia đ&igrave;nh được cố định chắc chắn, chịu lực tốt</em></p>\r\n\r\n<p>Ch&acirc;n ghế l&agrave;m bằng gỗ tự nhi&ecirc;n chắc chắn, chịu được lực tốt. Hơn thế nữa, ch&acirc;n ghế c&oacute; v&acirc;n gỗ tự nhi&ecirc;n n&ecirc;n c&oacute; thể kết hợp h&agrave;i h&ograve;a với bất kỳ m&agrave;u sắc vải nỉ.</p>\r\n', 0, 'Khung gỗ tự nhiên, lò xo lưới, mút mềm K43 và vải nỉ bọc cao cấp', '170x62x56cm'),
(8, 3, ' Giường gỗ sồi tự nhiên phong cách Bắc Âu ', 12950000, 'avar-giuong-go-soi-tu-nhien-phong-cach-bac-au-ghs-9219.jpg', 1234, 0, '<h3>ĐẶC ĐIỂM NỔI BẬT</h3>\r\n\r\n<p>Chất liệu tự nhi&ecirc;n cho bạn kh&ocirc;ng gian sống an l&agrave;nh v&agrave; đầy t&iacute;nh thẩm mỹ</p>\r\n\r\n<p>Tựa lưng nghi&ecirc;ng g&oacute;c 95 độ</p>\r\n\r\n<p>Giường gỗ sồi tự nhi&ecirc;n thiết kế với tự lưng c&oacute; độ nghi&ecirc;ng ti&ecirc;u chuẩn một g&oacute;c 90 độ tạo cảm gi&aacute;c thoải m&aacute;i cho bạn khi ngồi. Giờ đ&acirc;y bạn c&oacute; thể ngồi hthư giản, đọc s&aacute;ch h&agrave;ng giờ m&agrave; kh&ocirc;ng lo bị đau mỏi lưng, vai g&aacute;y.&nbsp;&nbsp;</p>\r\n\r\n<p><img alt=\"giuong-go-soi-tu-nhien-phong-cach-bac-au-ghs-9219\" src=\"https://gotrangtri.vn/wp-content/uploads/2022/08/O1CN01hUzKk71wcjQ8F3r88_321036329-1.jpg\" style=\"height:810px; width:750px\" /></p>\r\n\r\n<p><img alt=\"giuong-go-soi-tu-nhien-phong-cach-bac-au-ghs-9219\" src=\"https://gotrangtri.vn/wp-content/uploads/2022/08/O1CN01dRfZGN1wcjQIf7Dzl_321036329.jpg\" style=\"height:787px; width:880px\" /></p>\r\n\r\n<p><img alt=\"giuong-go-soi-tu-nhien-phong-cach-bac-au-ghs-9219\" src=\"https://gotrangtri.vn/wp-content/uploads/2022/08/O1CN01ZOXAdk1wcjQGvo01o_321036329.jpg\" style=\"height:972px; width:750px\" /></p>\r\n\r\n<p>Kệ đầu giường v&ocirc; c&ugrave;ng tiện lợi&nbsp;</p>\r\n\r\n<p>Sản phẩm được thiết kế t&iacute;ch hợp th&ecirc;m kệ đầu giường v&ocirc; c&ugrave;ng tiện lợi gi&uacute;p giữ đồ d&ugrave;ng cho căn ph&ograve;ng ngf th&ecirc;m gọn g&agrave;ng hơn.&nbsp;</p>\r\n\r\n<p><img alt=\"giuong-go-soi-tu-nhien-phong-cach-bac-au-ghs-9219\" src=\"https://gotrangtri.vn/wp-content/uploads/2022/08/O1CN01LlVu4p1wcjQF1PzFO_321036329-1.jpg\" style=\"height:966px; width:880px\" /></p>\r\n\r\n<p><strong>Kh&ocirc;ng gian lưu trữ tiện nghi&nbsp;</strong></p>\r\n\r\n<p>Giường gỗ sồi tự nhi&ecirc;n được thiết kế k&egrave;m theo ngăn lưu trữ ẩn b&ecirc;n dưới giường như một chiếc&nbsp;<a href=\"https://gotrangtri.vn/danh-muc/tu-go/tu-ao/\">tủ quần &aacute;o</a>. Thiết kế đặc biệt n&agrave;y gi&uacute;p bạn tận th&ecirc;m kh&ocirc;ng gian để lưu trữ, cất giữ đồ đạc v&agrave; gi&uacute;p tiết kiệm diện t&iacute;ch cho căn ph&ograve;ng.&nbsp;</p>\r\n\r\n<h3><strong>CHẤT LƯỢNG VƯỢT TRỘI</strong></h3>\r\n\r\n<p>Sản phẩm c&oacute; chất lượng vượt trội, cam kết mang đến cho bạn kh&ocirc;ng gian sống thoải m&aacute;i nhất!&nbsp;</p>\r\n\r\n<p><img alt=\"giuong-go-soi-tu-nhien-phong-cach-bac-au-ghs-9219\" src=\"https://gotrangtri.vn/wp-content/uploads/2022/08/O1CN01IeHjZa1wcjQIf7tYk_321036329.jpg\" style=\"height:888px; width:880px\" /></p>\r\n\r\n<p><strong>Gỗ sồi tự nhi&ecirc;n&nbsp;</strong></p>\r\n\r\n<p>Sản phẩm được l&agrave;m từ gỗ sồi tự nhi&ecirc;n, đ&atilde; được tẩm sấy kỹ lưỡng qua quy tr&igrave;nh xử l&yacute; chuy&ecirc;n nghiệp n&ecirc;n khắc phục được c&aacute;c t&igrave;nh trạng cong v&ecirc;nh hay mối mọt trong qu&aacute; tr&igrave;nh sử dụng. Do đ&oacute; mẫu giường gỗ sồi tự nhi&ecirc;n c&oacute; kết cấu chắc chắn, chịu được lực lớn, bền đẹp theo thời gian.</p>\r\n', 1, 'Gỗ sồi tự nhiên kết hợp venner sồi', '2,13×1,8×0,9m'),
(9, 3, ' Giường ngủ hiện đại bằng gỗ tự nhiên ', 12650000, 'Giuong-ngu-hien-dai-bang-go-tu-nhien-GHS-9089-ava.png', 1234, 1, '<h2>Th&ocirc;ng tin chi tiết về giường ngủ hiện đại bằng gỗ tự nhi&ecirc;n GHS-9089</h2>\r\n\r\n<p><strong>M&atilde; sản phẩm</strong>: GHS-9089</p>\r\n\r\n<p><strong>Hướng dẫn sử dụng</strong>: giường ngủ gỗ chất lượng cao, phong c&aacute;ch hiện đại cho ph&ograve;ng ngủ</p>\r\n\r\n<p><strong>Chất liệu</strong>: gỗ sồi tự nhi&ecirc;n kết hợp venner sồi</p>\r\n\r\n<p><strong>K&iacute;ch thước (D x R x C)</strong>: k&iacute;ch thước sản phẩm</p>\r\n\r\n<p>Mẫu A: 2230 x 1630 x 760mm c&oacute; gi&aacute; b&aacute;n l&agrave; 12.650.000vnđ</p>\r\n\r\n<p><strong>M&agrave;u sắc</strong>: như sản phẩm mẫu</p>\r\n\r\n<p><strong>Bảo h&agrave;nh</strong>: 12 th&aacute;ng</p>\r\n\r\n<p><strong>Thời gian giao h&agrave;ng</strong>: từ 7-10 ng&agrave;y sau khi đặt h&agrave;ng</p>\r\n\r\n<p><img alt=\"Giuong-ngu-hien-dai-bang-go-tu-nhien-GHS-9089\" src=\"https://gotrangtri.vn/wp-content/uploads/2020/09/Giuong-ngu-hien-dai-bang-go-tu-nhien-GHS-9089-17.jpg\" style=\"height:385px; width:880px\" /></p>\r\n\r\n<h3>Ưu điểm nổi bật của giường ngủ hiện đại bằng gỗ tự nhi&ecirc;n GHS-9089</h3>\r\n\r\n<ul>\r\n	<li>Giường ngủ gỗ thiết kế ấn tượng mang phong c&aacute;ch hiện đại</li>\r\n	<li>Kh&aacute;ch h&agrave;ng c&oacute; thể t&ugrave;y &yacute; thay đổi k&iacute;ch thước sản phẩm tại cửa h&agrave;ng</li>\r\n	<li>Chất lượng sản phẩm vượt trội, đ&aacute;p ứng mọi nhu cầu sử dụng</li>\r\n	<li>Gi&aacute; th&agrave;nh phải chăng, ch&iacute;nh s&aacute;ch giao h&agrave;ng, lắp đặt tận nh&agrave;</li>\r\n</ul>\r\n\r\n<p><img alt=\"Giuong-ngu-hien-dai-bang-go-tu-nhien-GHS-9089\" src=\"https://gotrangtri.vn/wp-content/uploads/2020/09/Giuong-ngu-hien-dai-bang-go-tu-nhien-GHS-9089-5.jpg\" style=\"height:801px; width:880px\" /></p>\r\n\r\n<p><em>Giường ngủ gỗ thiết kế ấn tượng mang phong c&aacute;ch hiện đại.</em></p>\r\n\r\n<p>Giường ngủ hiện đại, thiết kế ấn tượng</p>\r\n\r\n<p>Giường ngru d&aacute;ng thấp được nhiều gia đ&igrave;nh lựa chọn cho trẻ nhỏ hay người lớn tuổi v&igrave; t&iacute;nh an to&agrave;n cao trong qu&aacute; tr&igrave;nh sử dụng. Hơn nữa, thiết kế d&aacute;ng thấp của mẫu giường ngủ cũng tạo được cảm gi&aacute;c kh&ocirc;ng gian ph&ograve;ng ngủ tho&aacute;ng hơn so với kiểu giường ch&acirc;n cao truyền thống.</p>\r\n\r\n<p><img alt=\"Giuong-ngu-hien-dai-bang-go-tu-nhien-GHS-9089\" src=\"https://gotrangtri.vn/wp-content/uploads/2020/09/Giuong-ngu-hien-dai-bang-go-tu-nhien-GHS-9089-12.jpg\" style=\"height:808px; width:880px\" /></p>\r\n\r\n<p><img alt=\"Giuong-ngu-hien-dai-bang-go-tu-nhien-GHS-9089\" src=\"https://gotrangtri.vn/wp-content/uploads/2020/09/Giuong-ngu-hien-dai-bang-go-tu-nhien-GHS-9089-8.jpg\" style=\"height:746px; width:880px\" /></p>\r\n\r\n<p><img alt=\"Giuong-ngu-hien-dai-bang-go-tu-nhien-GHS-9089\" src=\"https://gotrangtri.vn/wp-content/uploads/2020/09/Giuong-ngu-hien-dai-bang-go-tu-nhien-GHS-9089-7.jpg\" style=\"height:780px; width:880px\" /></p>\r\n', 1, 'gỗ sồi tự nhiên kết hợp venner sồi', '2230 x 1630 x 760mm'),
(10, 4, ' Tủ quần áo tiện lợi, sang trọng GHS-51911', 11800000, 'avar-tu-quan-ao-tien-loi-sang-trong-ghs-51911.jpg', 10, 1, '<h3>CHI TIẾT SẢN PHẨM</h3>\r\n\r\n<p>Thiết kế đa năng &ndash; hiện đại</p>\r\n\r\n<p><img alt=\"tu-quan-ao-tien-loi-sang-trong-ghs-51911 (1)\" src=\"https://gotrangtri.vn/wp-content/uploads/2023/03/tu-quan-ao-tien-loi-sang-trong-ghs-51911-1.jpg\" style=\"height:795px; width:880px\" /></p>\r\n\r\n<p>Tủ quần &aacute;o gỗ MDF cao cấp mang đến kh&ocirc;ng gian lưu trữ rộng r&atilde;i, &ocirc; ngăn sắp xếp khoa học gi&uacute;p cho người d&ugrave;ng thoải m&aacute;i cất trữ đồ đạc, quần &aacute;o gọn g&agrave;ng. Bạn ho&agrave;n to&agrave;n c&oacute; thể y&ecirc;n t&acirc;m về độ chắc chắn v&agrave; chịu lực tốt của sản phẩm. Chất liệu an to&agrave;n cho người d&ugrave;ng cũng như mang đến kh&ocirc;ng gian rộng r&atilde;i cho căn ph&ograve;ng của bạn.</p>\r\n\r\n<p><img alt=\"tu-quan-ao-canh-kinh-thiet-ke-sang-trong-ghs-51859 (20)\" src=\"https://gotrangtri.vn/wp-content/uploads/2023/02/tu-quan-ao-canh-kinh-thiet-ke-sang-trong-ghs-51859-20.jpg\" style=\"height:851px; width:880px\" /></p>\r\n\r\n<p><img alt=\"tu-quan-ao-tien-loi-sang-trong-ghs-51911 (9)\" src=\"https://gotrangtri.vn/wp-content/uploads/2023/03/tu-quan-ao-tien-loi-sang-trong-ghs-51911-9.jpg\" style=\"height:778px; width:880px\" /></p>\r\n\r\n<p><img alt=\"tu-quan-ao-tien-loi-sang-trong-ghs-51911 (8)\" src=\"https://gotrangtri.vn/wp-content/uploads/2023/03/tu-quan-ao-tien-loi-sang-trong-ghs-51911-8.jpg\" style=\"height:762px; width:880px\" /></p>\r\n\r\n<p><img alt=\"tu-quan-ao-tien-loi-sang-trong-ghs-51911 (6)\" src=\"https://gotrangtri.vn/wp-content/uploads/2023/03/tu-quan-ao-tien-loi-sang-trong-ghs-51911-6.jpg\" style=\"height:752px; width:880px\" /></p>\r\n\r\n<p><img alt=\"tu-quan-ao-tien-loi-sang-trong-ghs-51911 (3)\" src=\"https://gotrangtri.vn/wp-content/uploads/2023/03/tu-quan-ao-tien-loi-sang-trong-ghs-51911-3.jpg\" style=\"height:778px; width:880px\" /></p>\r\n\r\n<p>Ch&acirc;n tủ được n&acirc;ng cao hơn so với mặt đất vừa tạo độ chịu lực, tăng khả năng ma s&aacute;t v&agrave; tr&aacute;nh trường hợp quần &aacute;o bị h&uacute;t ẩm l&agrave;m giảm chất lượng.&nbsp;</p>\r\n\r\n<h2><strong>CHẤT LƯỢNG VƯỢT TRỘI&nbsp;</strong></h2>\r\n\r\n<p>Tủ quần &aacute;o chắc chắn &ndash; Chịu lực tốt &ndash; Bền đẹp theo thời gian</p>\r\n\r\n<p><strong>Sản xuất bằng m&aacute;y m&oacute;c c&ocirc;ng nghệ cao</strong></p>\r\n\r\n<p>Được sản xuất bằng m&aacute;y m&oacute;c c&ocirc;ng nghệ cao cấp n&ecirc;n sản phẩm c&oacute; độ ch&iacute;nh x&aacute;c cao về th&ocirc;ng số kỹ thuật, c&aacute;nh&nbsp; khớp kh&ocirc;ng bị cong v&ecirc;nh trong qu&aacute; tr&igrave;nh sử dụng.&nbsp;</p>\r\n\r\n<p><img alt=\"tu-quan-ao-tien-loi-sang-trong-ghs-51911 (7)\" src=\"https://gotrangtri.vn/wp-content/uploads/2023/03/tu-quan-ao-tien-loi-sang-trong-ghs-51911-7.jpg\" style=\"height:767px; width:880px\" /></p>\r\n\r\n<p><img alt=\"tu-quan-ao-tien-loi-sang-trong-ghs-51911 (11)\" src=\"https://gotrangtri.vn/wp-content/uploads/2023/03/tu-quan-ao-tien-loi-sang-trong-ghs-51911-11.jpg\" style=\"height:809px; width:880px\" /></p>\r\n\r\n<h2><strong>NGUY&Ecirc;N VẬT LIỆU CAO CẤP</strong></h2>\r\n\r\n<p>Nguy&ecirc;n vật liệu được lựa chọn kỹ lưỡng</p>\r\n\r\n<p><img alt=\"tu-quan-ao-tien-loi-sang-trong-ghs-51911 (4)\" src=\"https://gotrangtri.vn/wp-content/uploads/2023/03/tu-quan-ao-tien-loi-sang-trong-ghs-51911-4.jpg\" style=\"height:866px; width:880px\" /></p>\r\n\r\n<p><img alt=\"tu-quan-ao-tien-loi-sang-trong-ghs-51911 (5)\" src=\"https://gotrangtri.vn/wp-content/uploads/2023/03/tu-quan-ao-tien-loi-sang-trong-ghs-51911-5.jpg\" style=\"height:264px; width:880px\" /></p>\r\n', 1, 'Gỗ MDF cốt lõi xanh chống ẩm phủ melamine', '80x55x200cm'),
(11, 5, ' Kệ tivi đơn giản lưu trữ đa năng GHS-3565', 5300000, 'avar-ke-tivi-don-gian-luu-tru-da-nang-ghs-3565-2.jpg', 10, 0, '<h3>CHI TIẾT SẢN PHẨM</h3>\r\n\r\n<p>Thiết kế th&ocirc;ng minh- kiểu d&aacute;ng hiện đại</p>\r\n\r\n<p><img alt=\"ke-tivi-don-gian-luu-tru-da-nang-ghs-3565 (11)\" src=\"https://gotrangtri.vn/wp-content/uploads/2022/09/ke-tivi-don-gian-luu-tru-da-nang-ghs-3565-11.jpg\" style=\"height:1153px; width:880px\" /></p>\r\n\r\n<p><strong>Thiết kế hiện đại</strong></p>\r\n\r\n<p>Kệ tivi đơn giản thiết kế với kh&ocirc;ng gian lưu trữ khoa học gi&uacute;p bạn tận dụng tối đa kh&ocirc;ng gian để sắp xếp v&agrave; trưng b&agrave;y đồ. B&ecirc;n cạnh ngăn tủ mở cho bạn b&agrave;y tr&iacute; đồ d&ugrave;ng trang tr&iacute; cho kh&ocirc;ng gian th&ecirc;m t&iacute;nh thẩm mỹ, sản phẩm c&ograve;n thiết kế kết hợp ngăn tủ đ&oacute;ng v&agrave; ngăn k&eacute;o lưu trữ v&ocirc; c&ugrave;ng tiện lợi cho bạn cất giữ v&agrave; bảo quản đồ.&nbsp;</p>\r\n\r\n<p><img alt=\"ke-tivi-don-gian-luu-tru-da-nang-ghs-3565 (12)\" src=\"https://gotrangtri.vn/wp-content/uploads/2022/09/ke-tivi-don-gian-luu-tru-da-nang-ghs-3565-12.jpg\" style=\"height:1391px; width:880px\" /></p>\r\n\r\n<p><em>Kệ tivi đơn giản thiết kế với kh&ocirc;ng gian lưu trữ lớn gi&uacute;p bạn tận dụng tối đa kh&ocirc;ng gian để sắp xếp v&agrave; trưng b&agrave;y đồ.</em></p>\r\n\r\n<p><img alt=\"ke-tivi-don-gian-luu-tru-da-nang-ghs-3565 (8)\" src=\"https://gotrangtri.vn/wp-content/uploads/2022/09/ke-tivi-don-gian-luu-tru-da-nang-ghs-3565-8.jpg\" style=\"height:1243px; width:880px\" /></p>\r\n\r\n<p><em>Ngăn k&eacute;o cho bạn th&ecirc;m kh&ocirc;ng gian cất giữ v&agrave; bảo quản đồ.</em></p>\r\n\r\n<p><img alt=\"ke-tivi-don-gian-luu-tru-da-nang-ghs-3565 (111)\" src=\"https://gotrangtri.vn/wp-content/uploads/2022/09/ke-tivi-don-gian-luu-tru-da-nang-ghs-3565-111.jpg\" style=\"height:1243px; width:880px\" /></p>\r\n\r\n<p><em>Thiết kế ch&acirc;n gỗ cao dễ d&agrave;ng vệ sinh v&agrave; lau ch&igrave;u.</em></p>\r\n\r\n<h2><strong>CHẤT LƯỢNG VƯỢT TRỘI&nbsp;</strong></h2>\r\n\r\n<p>Sản phẩm với chất lượng cao cam kết đem lại sự h&agrave;i l&ograve;ng cao cho kh&aacute;ch h&agrave;ng</p>\r\n\r\n<p><img alt=\"ban-tra-go-mdf-thiet-ke-don-gian-ghs-41642 (13)\" src=\"https://gotrangtri.vn/wp-content/uploads/2022/09/tu-quan-ao-han-quoc-cho-be-ghs-51851-11.jpg\" style=\"height:1040px; width:880px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Vật liệu cao cấp &ndash; kết cấu chắc chắn</strong></p>\r\n\r\n<p>C&aacute;c chi tiết kệ tivi đơn giản được lựa chọn từ vật liệu tốt nhất, đảm bảo kết cấu chắc chắn v&agrave; độ bền cao cho sản phẩm với mong muốn đem đến cho kh&aacute;ch h&agrave;ng trải nghi&ecirc;m tốt nhất. Bề mặt sản phẩm c&ograve;n được phủ lớp melamine chống nươc v&agrave; trầy xước bảo vệ sản phẩm cho bạn v&ocirc; tư sử dụng, lau ch&ugrave;i. Do đ&oacute; bạn ho&agrave;n to&agrave;n c&oacute; thể an t&acirc;m khi mua h&agrave;ng tại gotrangtri.vn.</p>\r\n\r\n<p><img alt=\"ke-tivi-don-gian-luu-tru-da-nang-ghs-3565 (5)\" src=\"https://gotrangtri.vn/wp-content/uploads/2022/09/ke-tivi-don-gian-luu-tru-da-nang-ghs-3565-5-1.jpg\" style=\"height:1145px; width:880px\" /></p>\r\n\r\n<p><img alt=\"ke-tivi-don-gian-luu-tru-da-nang-ghs-3565 (5)\" src=\"https://gotrangtri.vn/wp-content/uploads/2022/09/ke-tivi-don-gian-luu-tru-da-nang-ghs-3565-1.jpg\" style=\"height:1145px; width:880px\" /></p>\r\n\r\n<h2><strong>M&Agrave;U SẮC ĐA DẠNG</strong></h2>\r\n\r\n<p>Sản phẩm kệ tivi đơn giản thiết kế với đa dạng m&agrave;u sắc cho kh&aacute;ch h&agrave;ng thoải m&aacute;i lựa chọn nhằm tăng t&iacute;nh thẩm mỹ cho kh&ocirc;ng gian</p>\r\n\r\n<p><img alt=\"ke-tivi-don-gian-luu-tru-da-nang-ghs-3565 (2)\" src=\"https://gotrangtri.vn/wp-content/uploads/2022/09/ke-tivi-don-gian-luu-tru-da-nang-ghs-3565-2.jpg\" style=\"height:829px; width:880px\" /></p>\r\n', 0, 'Gỗ MDF lõi xanh phủ melamine vân gỗ kết hợp màu', '160~218x30x40cm'),
(12, 2, ' Bộ bàn ghế ăn Bắc Âu bằng gỗ sồi tự nhiên ', 165550000, 'avar-bo-ban-ghe-an-bac-au-bang-go-soi-tu-nhien-ghs-41615-18.jpg', 10, 1, '<h3>ƯU ĐIỂM NỔI BẬT</h3>\r\n\r\n<p>Thiết kế đơn giản, thẩm mỹ &ndash; chất lượng vượt trội.</p>\r\n\r\n<p><img alt=\"\" src=\"https://gotrangtri.vn/wp-content/uploads/2022/08/bo-ban-ghe-an-bac-au-bang-go-soi-tu-nhien-ghs-41615-5.jpg\" style=\"height:1294px; width:880px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://gotrangtri.vn/wp-content/uploads/2022/08/bo-ban-ghe-an-bac-au-bang-go-soi-tu-nhien-ghs-41615-6-1.jpg\" style=\"height:1099px; width:880px\" /></p>\r\n\r\n<p><em>Thiết kế hiện đại, trang nh&atilde; v&agrave; gần giũ với thi&ecirc;n nhi&ecirc;n tạo n&ecirc;n kh&ocirc;ng gian sống mới lạ v&agrave; đầy t&iacute;nh thẩm mỹ.</em></p>\r\n\r\n<p><strong>Kiểu d&aacute;ng hiện đại</strong></p>\r\n\r\n<p>Bộ b&agrave;n ghế ăn Bắc &Acirc;u lấy cảm hứng từ thi&ecirc;n nhi&ecirc;n v&ugrave;ng đất Bắc &Acirc;u với thiết kế chủ đạo l&agrave; t&iacute;nh đơn giản, thẩm mỹ v&agrave; c&ocirc;ng năng nhằm đem đến cho bạn kh&ocirc;ng gian sống ho&agrave;n hảo nhất. Sự kết hợp h&agrave;o h&ograve;a giữa vẻ đẹp tự nhi&ecirc;n v&agrave; vẻ đẹp hiện đại l&agrave;m n&ecirc;n thiết kế mới lạ đầy ấn tượng.&nbsp;</p>\r\n\r\n<p><img alt=\"bo-ban-ghe-an-bac-au-bang-go-soi-tu-nhien-ghs-41615 (18)\" src=\"https://gotrangtri.vn/wp-content/uploads/2022/08/bo-ban-ghe-an-bac-au-bang-go-soi-tu-nhien-ghs-41615-18.jpg\" style=\"height:1011px; width:880px\" /></p>\r\n\r\n<p><img alt=\"bo-ban-ghe-an-bac-au-bang-go-soi-tu-nhien-ghs-41615 (14)\" src=\"https://gotrangtri.vn/wp-content/uploads/2022/08/bo-ban-ghe-an-bac-au-bang-go-soi-tu-nhien-ghs-41615-14.jpg\" style=\"height:1010px; width:880px\" /></p>\r\n\r\n<p><strong>Chiều cao khoa học</strong></p>\r\n\r\n<p>Bộ b&agrave;n ghế với chiều cao ti&ecirc;u chuẩn, thiết kế gầm b&agrave;n cao v&agrave; tho&aacute;ng vừa gi&uacute;p t&ocirc;n vẻ đẹp kh&ocirc;ng gian vừa đem đến cho bạn trải nghiệm thoải m&aacute;i nhất khi sử dụng. Kh&ocirc;ng chỉ l&agrave; nơi để cả gia đ&igrave;nh bạn qu&acirc;y quần b&ecirc;n m&acirc;m cơ, b&agrave;n ghế ăn gỗ tự nhi&ecirc;n c&ograve;n gi&uacute;p bạn lưu giữ những khoảnh khắc hạnh ph&uacute;c, thư th&aacute;i v&agrave; b&igrave;nh y&ecirc;n nhất b&ecirc;n người th&acirc;n y&ecirc;u.&nbsp;</p>\r\n\r\n<p><img alt=\"bo-ban-ghe-an-bac-au-bang-go-soi-tu-nhien-ghs-41615 (23)\" src=\"https://gotrangtri.vn/wp-content/uploads/2022/08/bo-ban-ghe-an-bac-au-bang-go-soi-tu-nhien-ghs-41615-23.jpg\" style=\"height:1161px; width:880px\" /></p>\r\n\r\n<p><em>Chiều cao ti&ecirc;u chuẩn 75cm đem đến cho bạn cảm gi&aacute;c thoải m&aacute;i nhất khi ngồi.</em></p>\r\n\r\n<p><img alt=\"bo-ban-ghe-an-bac-au-bang-go-soi-tu-nhien-ghs-41615 (28)\" src=\"https://gotrangtri.vn/wp-content/uploads/2022/08/bo-ban-ghe-an-bac-au-bang-go-soi-tu-nhien-ghs-41615-28.jpg\" style=\"height:768px; width:750px\" /></p>\r\n\r\n<p><img alt=\"bo-ban-ghe-an-bac-au-bang-go-soi-tu-nhien-ghs-41615 (8)\" src=\"https://gotrangtri.vn/wp-content/uploads/2022/08/bo-ban-ghe-an-bac-au-bang-go-soi-tu-nhien-ghs-41615-8.jpg\" style=\"height:900px; width:880px\" /></p>\r\n\r\n<h2><strong>CHẤT LƯỢNG VƯỢT TRỘI&nbsp;</strong></h2>\r\n\r\n<p>Sản phẩm bộ b&agrave;n ghế ăn Bắc &Acirc;u nhiều ưu điểm vượt trội trong thiết kế cam kết đem lại cho kh&aacute;ch h&agrave;ng sự h&agrave;i l&ograve;ng cao.&nbsp;</p>\r\n\r\n<p><img alt=\"bo-ban-ghe-an-bac-au-bang-go-soi-tu-nhien-ghs-41615 (228)\" src=\"https://gotrangtri.vn/wp-content/uploads/2022/08/bo-ban-ghe-an-bac-au-bang-go-soi-tu-nhien-ghs-41615-228.jpg\" style=\"height:1172px; width:880px\" /></p>\r\n\r\n<p>Gỗ sồi tự nhi&ecirc;n</p>\r\n\r\n<p>Bộ b&agrave;n ghế ăn Bắc &Acirc;u l&agrave;m từ chất liệu gỗ sồi tự nhi&ecirc;n được sử l&yacute; qua c&ocirc;ng nghệ hiện đại chống cong v&ecirc;nh nhằm tăng độ bền v&agrave; kết cấu chắc chắn cho sản phẩm. Do đ&oacute; sản phẩm c&oacute; độ bền m&agrave;u cao cho bạn an t&acirc;m sử dụng l&acirc;u d&agrave;i.&nbsp;&nbsp;</p>\r\n\r\n<p><img alt=\"bo-ban-ghe-an-bac-au-bang-go-soi-tu-nhien-ghs-41615 (233)\" src=\"https://gotrangtri.vn/wp-content/uploads/2022/08/bo-ban-ghe-an-bac-au-bang-go-soi-tu-nhien-ghs-41615-233.jpg\" style=\"height:422px; width:880px\" /></p>\r\n\r\n<h2><strong>M&Agrave;U SẮC ĐA DẠNG</strong></h2>\r\n\r\n<p>Sản phẩm thiết kế với đa dạng m&agrave;u sắc cho kh&aacute;ch h&agrave;ng thoải m&aacute;i lựa chọn nhằm đ&aacute;p ứng tốt nhất nhu cầu của bạn.&nbsp;</p>\r\n\r\n<p><img alt=\"bo-ban-ghe-an-bac-au-bang-go-soi-tu-nhien-ghs-41615 (128)\" src=\"https://gotrangtri.vn/wp-content/uploads/2022/08/bo-ban-ghe-an-bac-au-bang-go-soi-tu-nhien-ghs-41615-128.jpg\" style=\"height:987px; width:880px\" /></p>\r\n\r\n<p>B&ecirc;n cạnh sản phẩm bộ b&agrave;n ghế ăn Bắc &Acirc;u với m&agrave;u sắc như h&igrave;nh, gotrangtri.vn c&ograve;n nhiều sản phẩm kh&aacute;c cho bạn thoải m&aacute;i lựa chọn nhằm tăng t&iacute;nh thẩm mỹ cho kh&ocirc;ng gian sống.&nbsp;</p>\r\n\r\n<h2><strong>PH&Ugrave; HỢP VỚI XU HƯỚNG</strong></h2>\r\n\r\n<p>Bộ b&agrave;n ghế ăn Bắc &Acirc;u với thiết kế hiện đại, gi&uacute;p bạn n&acirc;ng tầm kh&ocirc;ng gian sống một c&aacute;ch dễ d&agrave;ng.&nbsp;</p>\r\n\r\n<p><img alt=\"bo-ban-ghe-an-bac-au-bang-go-soi-tu-nhien-ghs-41615 (15)\" src=\"https://gotrangtri.vn/wp-content/uploads/2022/08/bo-ban-ghe-an-bac-au-bang-go-soi-tu-nhien-ghs-41615-15.jpg\" style=\"height:941px; width:880px\" /></p>\r\n', 0, 'Gỗ sồi tự nhiên kết hợp venneer sồi', 'Bàn: 1,6×0,8×0,75m Ghế: 0,53×0,51×0,74m'),
(13, 6, ' Thảm lông ngắn Thổ Nhĩ Kỳ hiện đại GHX-305', 3900000, 'tham-long-ngan-tho-nhi-ky-hien-dai-ghx-305-ava.jpg', 10, 1, '<h2><strong>H&igrave;nh ảnh sản phẩm</strong></h2>\r\n\r\n<p><img alt=\"tham-long-ngan-tho-nhi-ky-hien-dai-ghx-305 (7)\" src=\"https://gotrangtri.vn/wp-content/uploads/2021/10/tham-long-ngan-tho-nhi-ky-hien-dai-ghx-305-7.jpg\" style=\"height:586px; width:880px\" /></p>\r\n\r\n<p><em>Thảm l&ocirc;ng ngắn Thổ Nhĩ Kỳ được thiết kế theo phong c&aacute;ch hiện đại, kiểu d&aacute;ng sang trọng n&ecirc;n dễ d&agrave;ng kết hợp với những m&oacute;n đồ nội thất v&agrave; phụ kiện</em></p>\r\n\r\n<p><br />\r\n<img alt=\"tham-long-ngan-tho-nhi-ky-hien-dai-ghx-305 (7)\" src=\"https://gotrangtri.vn/wp-content/uploads/2021/10/tham-long-ngan-tho-nhi-ky-hien-dai-ghx-305-4.jpg\" style=\"height:586px; width:880px\" /></p>\r\n\r\n<p><em>Thảm l&ocirc;ng ngắn mềm mại mang lại sự thoải m&aacute;i cho người d&ugrave;ng mỗi khi đặt ch&acirc;n l&ecirc;n</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"tham-long-ngan-tho-nhi-ky-hien-dai-ghx-305 (7)\" src=\"https://gotrangtri.vn/wp-content/uploads/2021/10/tham-long-ngan-tho-nhi-ky-hien-dai-ghx-305-3.jpg\" style=\"height:586px; width:880px\" /></p>\r\n', 0, 'Polyester', '1m2 x 1m8 có giá bán: 3.900.000đ'),
(14, 1, ' Ghế sofa phong cách Scandinavian GHS-8391', 8850000, 'ghe-sofa-phong-cach-scandinavian-ghs-8391-ava.jpg', 1234, 1, '<h3>ĐẶC ĐIỂM SẢN PHẨM</h3>\r\n\r\n<p>Tối giản &ndash; thẩm mỹ &ndash; c&ocirc;ng năng</p>\r\n\r\n<p><img alt=\"ghe-sofa-phong-cach-scandinavian-ghs-8391\" src=\"https://gotrangtri.vn/wp-content/uploads/2022/08/O1CN0129v84lOooCTKH7F_3369588129.jpg\" style=\"height:845px; width:880px\" /></p>\r\n\r\n<p>C&oacute; thể thấy mẫu sofa phong c&aacute;ch Scandinavian được thiết kế với những đường n&eacute;t đơn giản, loại bỏ những yếu tố rườn r&agrave; trong phong c&aacute;ch cổ điển tạo n&ecirc;n vẻ đẹp h&agrave;i h&ograve;a v&agrave; thanh lịch. C&aacute;c chi tiết được thể hiện v&ocirc; c&ugrave;ng tự nhi&ecirc;n, nh&atilde; nhặn như đem cả thi&ecirc;n nhi&ecirc;n v&agrave;o trong căn nh&agrave; bạn.&nbsp;</p>\r\n\r\n<p>Đường n&eacute;t thanh lịch</p>\r\n\r\n<p>Tay vịn ghế được thiết kế với đường bo tr&ograve;n vẻ đẹp mềm mại, thanh nh&atilde; kh&ocirc;ng bị kh&ocirc; cứng, g&ograve; b&oacute;.&nbsp;</p>\r\n\r\n<p><img alt=\"ghe-sofa-phong-cach-scandinavian-ghs-8391\" src=\"https://gotrangtri.vn/wp-content/uploads/2022/08/O1CN0129v84lVMqoyaxUm_3369588129-1.jpg\" style=\"height:752px; width:750px\" /></p>\r\n\r\n<h3><strong>CHẤT LƯỢNG VƯỢT TRỘI&nbsp;</strong></h3>\r\n\r\n<p><img alt=\"ghe-sofa-phong-cach-scandinavian-ghs-8391\" src=\"https://gotrangtri.vn/wp-content/uploads/2022/08/O1CN0129v84lVN7TCLhLM_3369588129-2.jpg\" style=\"height:1220px; width:880px\" /></p>\r\n\r\n<p><img alt=\"ghe-sofa-phong-cach-scandinavian-ghs-8391\" src=\"https://gotrangtri.vn/wp-content/uploads/2022/08/O1CN0129v84lGiNIDjxvE_3369588129.jpg\" style=\"height:706px; width:880px\" /></p>\r\n\r\n<p><strong>Đ&agrave;n hồi cao&nbsp;</strong></p>\r\n\r\n<p>Ghế sofa phong c&aacute;ch Scandinacian sử dụng đệm m&uacute;t K43 n&ecirc;n to&agrave;n bộ hệ thống tựa v&agrave; mặt ngồi đều rất &ecirc;m &aacute;i, mềm mại, hỗ trợ đ&agrave;n hồi, kh&ocirc;ng bị xẹp v&agrave; giảm được &aacute;p lực s&acirc;u.</p>\r\n\r\n<p>Trải nghiệm tuyệt vời</p>\r\n\r\n<p>Ghế sofa sofa phong c&aacute;ch Scandinavian được bọc nỉ cao cấp đem đến cho bạn cảm gi&aacute;c mềm mại v&agrave; thư th&aacute;i khi ngồi. M&agrave;u sắc h&agrave;i h&ograve;a, tự nhi&ecirc;n tạo cảm gi&aacute;c tươi mới, nang niu ph&uacute;t gi&acirc;y thoải m&aacute;i sau một ng&agrave;y l&agrave;m việc mệt mỏi.</p>\r\n\r\n<p><img alt=\"ghe-sofa-phong-cach-scandinavian-ghs-8391\" src=\"https://gotrangtri.vn/wp-content/uploads/2022/08/O1CN0129v84kKd4IwW6Xv_3369588129.jpg\" style=\"height:617px; width:880px\" /></p>\r\n', 0, 'Khung gỗ tự nhiên, lò xo lưới, mút mềm K43 và vải nỉ bọc cao cấp', '210x85x70cm'),
(15, 1, ' Bộ bàn ăn tròn phong cách hiện đại GHS-41149', 14500000, 'Bo-ban-an-tron-phong-cach-hien-dai-GHS-41149-ava.png', 10, 1, '<h2>Th&ocirc;ng tin chi tiết về bộ b&agrave;n ăn tr&ograve;n phong c&aacute;ch hiện đại GHS-41149</h2>\r\n\r\n<p><strong>M&atilde; sản phẩm</strong>: GHS-41149</p>\r\n\r\n<p><strong>Hướng dẫn sử dụng</strong>: d&ugrave;ng l&agrave;m b&agrave;n ăn gia đ&igrave;nh 4 ghế</p>\r\n\r\n<p><strong>Chất liệu</strong>: gỗ sồi tự nhi&ecirc;n kết hợp venner sồi</p>\r\n\r\n<p><strong>K&iacute;ch thước (D x R x C)</strong>: k&iacute;ch thước sản phẩm</p>\r\n\r\n<p>B&agrave;n ăn: 1000 x 1000 x 740mm</p>\r\n\r\n<p>Ghế tựa: 400 x 400 x 750mm</p>\r\n\r\n<p><strong>M&agrave;u sắc</strong>: như sản phẩm mẫu hoặc kh&aacute;ch h&agrave;ng t&ugrave;y &yacute; lựa chọn m&agrave;u sơn&nbsp;</p>\r\n\r\n<p><strong>Bảo h&agrave;nh</strong>: 12 th&aacute;ng</p>\r\n\r\n<p><strong>Thời gian giao h&agrave;ng</strong>: từ 7-10 ng&agrave;y sau khi đặt h&agrave;ng</p>\r\n\r\n<p><img alt=\"Bo-ban-an-tron-phong-cach-hien-dai-GHS-41149\" src=\"https://gotrangtri.vn/wp-content/uploads/2020/11/Bo-ban-an-tron-phong-cach-hien-dai-GHS-41149-5.jpg\" style=\"height:612px; width:880px\" />&nbsp;<img alt=\"Bo-ban-an-tron-phong-cach-hien-dai-GHS-41149\" src=\"https://gotrangtri.vn/wp-content/uploads/2020/11/Bo-ban-an-tron-phong-cach-hien-dai-GHS-41149-2.jpg\" style=\"height:501px; width:880px\" /></p>\r\n\r\n<h3>Ưu điểm nổi bật của bộ b&agrave;n ăn tr&ograve;n phong c&aacute;ch hiện đại GHS-41149</h3>\r\n\r\n<ul>\r\n	<li>Bộ b&agrave;n ăn tr&ograve;n phong c&aacute;ch hiện đại, kiểu d&aacute;ng nhỏ gọn</li>\r\n	<li>Kh&aacute;ch h&agrave;ng c&oacute; thể t&ugrave;y &yacute; thay đổi k&iacute;ch thước sản phẩm tại cửa h&agrave;ng</li>\r\n	<li>Chất lượng sản phẩm vượt trội, đ&aacute;p ứng mọi nhu cầu sử dụng</li>\r\n	<li>Gi&aacute; th&agrave;nh phải chăng, ch&iacute;nh s&aacute;ch giao h&agrave;ng, lắp đặt tận nh&agrave;</li>\r\n</ul>\r\n\r\n<p><img alt=\"Bo-ban-an-tron-phong-cach-hien-dai-GHS-41149\" src=\"https://gotrangtri.vn/wp-content/uploads/2020/11/Bo-ban-an-tron-phong-cach-hien-dai-GHS-41149-11.jpg\" style=\"height:625px; width:880px\" /></p>\r\n\r\n<p><em>Bộ b&agrave;n ăn tr&ograve;n rất th&iacute;ch hợp với những gia đ&igrave;nh c&oacute; diện t&iacute;ch hạn chế.</em></p>\r\n\r\n<p>Kiểu d&aacute;ng nhỏ gọn v&agrave; phong c&aacute;ch hiện đại đầy ấn tượng</p>\r\n\r\n<p>Kiểu b&agrave;n ăn tr&ograve;n lu&ocirc;n được đ&aacute;nh gi&aacute; cao bởi t&iacute;nh tiện dụng v&agrave; an to&agrave;n với người d&ugrave;ng. Đặc biệt với những gia đ&igrave;nh c&oacute; trẻ nhỏ th&igrave; lựa chọn b&agrave;n ăn tr&ograve;n sẽ đảm bảo kh&ocirc;ng thể l&agrave;m tổn thương đến b&eacute; trong qu&aacute; tr&igrave;nh sử dụng. Bộ b&agrave;n ăn tr&ograve;n gồm 1 b&agrave;n ăn v&agrave; 4 ghế tựa đi k&egrave;m.</p>\r\n\r\n<p>L&agrave; địa chỉ ph&acirc;n phối v&agrave; cung cấp đồ nội thất gỗ uy t&iacute;n trong cả nước, Go Home l&agrave; nơi m&agrave; bạn kh&ocirc;ng chỉ t&igrave;m thấy được bộ b&agrave;n ăn ưng &yacute; m&agrave; c&ograve;n c&oacute; thể tham khảo th&ecirc;m nhiều mẫu&nbsp;<a href=\"https://gotrangtri.vn/danh-muc/tu-go/tu-bep/\">tủ bếp</a>,&nbsp;<a href=\"https://gotrangtri.vn/danh-muc/tu-go/tu-ruou/\">tủ rượu</a>,&nbsp;<a href=\"https://gotrangtri.vn/danh-muc/tu-go/tu-giay/\">tủ gi&agrave;y</a>&nbsp;d&eacute;p cho gia đ&igrave;nh.</p>\r\n\r\n<p><img alt=\"Bo-ban-an-tron-phong-cach-hien-dai-GHS-41149\" src=\"https://gotrangtri.vn/wp-content/uploads/2020/11/Bo-ban-an-tron-phong-cach-hien-dai-GHS-41149-15.jpg\" style=\"height:926px; width:880px\" /></p>\r\n\r\n<p><img alt=\"Bo-ban-an-tron-phong-cach-hien-dai-GHS-41149\" src=\"https://gotrangtri.vn/wp-content/uploads/2020/11/Bo-ban-an-tron-phong-cach-hien-dai-GHS-41149-8.jpg\" style=\"height:590px; width:880px\" /></p>\r\n\r\n<p><img alt=\"Bo-ban-an-tron-phong-cach-hien-dai-GHS-41149\" src=\"https://gotrangtri.vn/wp-content/uploads/2020/11/Bo-ban-an-tron-phong-cach-hien-dai-GHS-41149-13.jpg\" style=\"height:561px; width:880px\" /></p>\r\n\r\n<p><img alt=\"Bo-ban-an-tron-phong-cach-hien-dai-GHS-41149\" src=\"https://gotrangtri.vn/wp-content/uploads/2020/11/Bo-ban-an-tron-phong-cach-hien-dai-GHS-41149-6.jpg\" style=\"height:608px; width:880px\" /></p>\r\n\r\n<p><em>B&agrave;n ăn tr&ograve;n kiểu d&aacute;ng đơn giản nhưng tiện dụng với người d&ugrave;ng.</em></p>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng t&ugrave;y &yacute; lựa chọn k&iacute;ch thước, m&agrave;u sắc cho sản phẩm</p>\r\n\r\n<p>Kh&aacute;c với d&ograve;ng sản phẩm được sản xuất h&agrave;ng loạt, mỗi mẫu b&agrave;n ăn được bạn đặt mua tại Go Home, kh&aacute;ch h&agrave;ng đều c&oacute; thể y&ecirc;u cầu điều chỉnh lại k&iacute;ch thước theo nhu cầu của gia đ&igrave;nh. Đội ngũ kỹ thuật v&agrave; chuy&ecirc;n vi&ecirc;n tư vấn đầy kinh nghiệm tại Go Home lu&ocirc;n sẵn l&ograve;ng gi&uacute;p bạn c&oacute; được k&iacute;ch thước vừa vặn nhất, m&agrave;u sắc đồng điệu nhất với những m&oacute;n nội thất kh&aacute;c trong gia đ&igrave;nh.</p>\r\n\r\n<p><img alt=\"Bo-ban-an-tron-phong-cach-hien-dai-GHS-41149\" src=\"https://gotrangtri.vn/wp-content/uploads/2020/11/Bo-ban-an-tron-phong-cach-hien-dai-GHS-41149-3.jpg\" style=\"height:957px; width:880px\" /></p>\r\n\r\n<p><img alt=\"Bo-ban-an-tron-phong-cach-hien-dai-GHS-41149\" src=\"https://gotrangtri.vn/wp-content/uploads/2020/11/Bo-ban-an-tron-phong-cach-hien-dai-GHS-41149-12.jpg\" style=\"height:557px; width:880px\" /></p>\r\n\r\n<p><em>Kh&aacute;ch h&agrave;ng c&oacute; thể y&ecirc;u cầu chỉnh sửa k&iacute;ch thước cho bộ b&agrave;n ăn tr&ograve;n của gia đ&igrave;nh.</em></p>\r\n\r\n<p>Chất lượng đầy ấn tượng của bộ b&agrave;n ăn tr&ograve;n phong c&aacute;ch hiện đại GHS-41149</p>\r\n\r\n<p>C&ograve;n g&igrave; tuyệt vời hơn khi bạn được sở hữu sản phẩm nội thất vừa c&oacute; thiết kế đẹp, c&oacute; chất lượng vượt trội m&agrave; mức gi&aacute; b&aacute;n lại rất phải chăng. Tất cả điều đ&oacute; bạn đều c&oacute; thể t&igrave;m thấy được tại Go Home. H&agrave;ng loạt những mẫu b&agrave;n ăn chất lượng, tuổi thọ sử dụng l&acirc;u d&agrave;i đang đợi bạn chọn mua tại tất cả c&aacute;c cửa h&agrave;ng ph&acirc;n phối. Đặc biệt, nhờ quy tr&igrave;nh xử l&yacute; gỗ chuy&ecirc;n nghiệp, sản phẩm khắc phục ho&agrave;n to&agrave;n t&igrave;nh trạng cong v&ecirc;nh, mối mọt c&oacute; thể xảy ra trong qu&aacute; tr&igrave;nh sử dụng.</p>\r\n\r\n<p><img alt=\"Bo-ban-an-tron-phong-cach-hien-dai-GHS-41149\" src=\"https://gotrangtri.vn/wp-content/uploads/2020/11/Bo-ban-an-tron-phong-cach-hien-dai-GHS-41149-1.jpg\" style=\"height:842px; width:880px\" /></p>\r\n\r\n<p><em>Bộ b&agrave;n ăn tr&ograve;n khắc phục ho&agrave;n to&agrave;n t&igrave;nh trạng cong v&ecirc;nh, mối mọt c&oacute; thể xảy ra trong qu&aacute; tr&igrave;nh sử dụng.</em></p>\r\n', 0, ' gỗ sồi tự nhiên kết hợp venner sồi', '1000 x 1000 x 740mm'),
(16, 3, ' Giường ngủ gỗ MDF kiểu dáng hiện đại GHS-9255', 8800000, 'giuong-ngu-go-mdf-kieu-dang-hien-dai-ghs-9255-ava.jpg', 10, 1, '<h3>ĐẶC ĐIỂM NỔI BẬT</h3>\r\n\r\n<p>Thiết kế đơn giản &ndash; th&ocirc;ng minh cho cuộc sống dễ d&agrave;ng!</p>\r\n\r\n<p><img alt=\"giuong-ngu-go-mdf-kieu-dang-hien-dai-ghs-9255-ava\" src=\"https://gotrangtri.vn/wp-content/uploads/2022/09/giuong-ngu-go-mdf-kieu-dang-hien-dai-ghs-9255-3.jpg\" style=\"height:834px; width:880px\" /></p>\r\n\r\n<p>Thiết kế kiểu d&aacute;ng mới</p>\r\n\r\n<p>Giường ngủ gỗ MDF được thiết kế theo phong c&aacute;ch hiện đại, c&aacute;c chi tiết được tối giản chi tiết tạo tổng thể sang trọng. Sản phẩm được kh&ocirc;ng d&ugrave;ng ch&acirc;n m&agrave; thiết kế s&aacute;t s&agrave;n tạo độ ma s&aacute;t cao. C&aacute;c g&oacute;c m&eacute;p ở giường v&agrave; tựa lưng được bo tr&ograve;n đảm bảo t&iacute;nh thẩm mỹ cao.&nbsp;</p>\r\n\r\n<p><img alt=\"giuong-ngu-go-mdf-kieu-dang-hien-dai-ghs-9255-ava\" src=\"https://gotrangtri.vn/wp-content/uploads/2022/09/giuong-ngu-go-mdf-kieu-dang-hien-dai-ghs-9255-9.jpg\" style=\"height:830px; width:880px\" /></p>\r\n\r\n<p><img alt=\"giuong-ngu-go-mdf-kieu-dang-hien-dai-ghs-9255-ava\" src=\"https://gotrangtri.vn/wp-content/uploads/2022/09/giuong-ngu-go-mdf-kieu-dang-hien-dai-ghs-9255-7.jpg\" style=\"height:866px; width:880px\" /></p>\r\n\r\n<p>Tựa đầu giường cao</p>\r\n\r\n<p>Với thiết kế phần tựa đầu giường cao, c&oacute; độ nghi&ecirc;ng nhẹ, giường ngủ gỗ MDF n&agrave;y gi&uacute;p n&acirc;ng đỡ phần lưng khi bạn ngồi tr&ecirc;n giường sử dụng điện thoai hay đọc s&aacute;ch.&nbsp;</p>\r\n\r\n<p><strong>&Ocirc; ngăn chứa tiện lợi</strong></p>\r\n\r\n<p>B&ecirc;n trong giường được chia nhỏ th&agrave;nh c&aacute;c &ocirc; ngăn để bạn c&oacute; thể cất trữ những m&oacute;n đồ như chăn mền, quần &aacute;o,&hellip;đảm bảo sự gọn g&agrave;ng ngăn nắp cho căn ph&ograve;ng v&agrave; tiết kiệm diện t&iacute;ch sử dụng. C&aacute;c ngăn k&eacute;o được thiết kế v&aacute;t &acirc;m dễ đ&oacute;ng mở khi sử dụng v&agrave; hạn chế những chi tiết tay nắm phức tạp.</p>\r\n\r\n<p><img alt=\"giuong-ngu-go-mdf-kieu-dang-hien-dai-ghs-9255-ava\" src=\"https://gotrangtri.vn/wp-content/uploads/2022/09/giuong-ngu-go-mdf-kieu-dang-hien-dai-ghs-9255-6.jpg\" style=\"height:840px; width:880px\" /></p>\r\n\r\n<p><img alt=\"giuong-ngu-go-mdf-kieu-dang-hien-dai-ghs-9255-ava\" src=\"https://gotrangtri.vn/wp-content/uploads/2022/09/giuong-ngu-go-mdf-kieu-dang-hien-dai-ghs-9255-8.jpg\" style=\"height:1119px; width:880px\" /></p>\r\n\r\n<h2><strong>CHẤT LƯỢNG VƯỢT TRỘI&nbsp;</strong></h2>\r\n\r\n<p>Sản phẩm giường ngủ phong c&aacute;ch tối giản với chất lượng cao cam kết đem lại sự h&agrave;i l&ograve;ng cao cho kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p><strong>Gỗ MDF l&otilde;i xanh cao cấp&nbsp;</strong></p>\r\n\r\n<p>Giường ngủ được l&agrave;m từ chất liệu gỗ MDF l&otilde;i xanh c&aacute;o cấp được &eacute;p ở nhiệt độ cao tr&aacute;nh cong v&ecirc;nh, mối mọt, chống ẩm mốc. Do đ&oacute; sản phẩm c&oacute; độ bền cao trước điều kiện kh&iacute; hậu n&oacute;ng ẩm nước ta.</p>\r\n\r\n<p>Bề mặt được phủ melamine c&oacute; khả năng bảo vệ l&otilde;i gỗ tốt, chống thấm nước, chống trầy xước tốt, bền đẹp theo thời gian.&nbsp;</p>\r\n\r\n<p><img alt=\"giuong-ngu-go-mdf-kieu-dang-hien-dai-ghs-9255-ava\" src=\"https://gotrangtri.vn/wp-content/uploads/2022/09/giuong-ngu-go-mdf-kieu-dang-hien-dai-ghs-9255-5.jpg\" style=\"height:1126px; width:880px\" /></p>\r\n\r\n<p><img alt=\"giuong-ngu-go-mdf-kieu-dang-hien-dai-ghs-9255-ava\" src=\"https://gotrangtri.vn/wp-content/uploads/2022/09/giuong-ngu-go-mdf-kieu-dang-hien-dai-ghs-9255-2.jpg\" style=\"height:905px; width:880px\" /></p>\r\n', 0, 'Gỗ công nghiệp MDF lõi xanh chống ẩm phủ melamine vân gỗ', '2000x1800x980mm');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_detail`
--

CREATE TABLE `product_detail` (
  `id_prd_detail` int(11) NOT NULL,
  `id_prd` int(11) NOT NULL,
  `size` text NOT NULL,
  `material` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `featured` int(1) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_as` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `fullname`, `role_as`) VALUES
(1, 'trang', '123', 'vu huyen trang', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_cat`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `detail_order`
--
ALTER TABLE `detail_order`
  ADD KEY `id_order` (`id_order`),
  ADD KEY `id_prd_detail` (`id_prd_detail`);

--
-- Chỉ mục cho bảng `order1`
--
ALTER TABLE `order1`
  ADD PRIMARY KEY (`ship_id`),
  ADD KEY `id_cus` (`id_cus`),
  ADD KEY `id_user` (`id_user`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Chỉ mục cho bảng `product_detail`
--
ALTER TABLE `product_detail`
  ADD PRIMARY KEY (`id_prd_detail`),
  ADD KEY `id_prd` (`id_prd`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id_cat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order1`
--
ALTER TABLE `order1`
  MODIFY `ship_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `product_detail`
--
ALTER TABLE `product_detail`
  MODIFY `id_prd_detail` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `detail_order`
--
ALTER TABLE `detail_order`
  ADD CONSTRAINT `detail_order_ibfk_1` FOREIGN KEY (`id_order`) REFERENCES `order1` (`ship_id`),
  ADD CONSTRAINT `detail_order_ibfk_2` FOREIGN KEY (`id_prd_detail`) REFERENCES `product_detail` (`id_prd_detail`);

--
-- Các ràng buộc cho bảng `order1`
--
ALTER TABLE `order1`
  ADD CONSTRAINT `order1_ibfk_1` FOREIGN KEY (`id_cus`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `order1_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `category` (`id_cat`);

--
-- Các ràng buộc cho bảng `product_detail`
--
ALTER TABLE `product_detail`
  ADD CONSTRAINT `product_detail_ibfk_1` FOREIGN KEY (`id_prd`) REFERENCES `product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
