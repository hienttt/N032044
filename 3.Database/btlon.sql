-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 26, 2018 lúc 11:01 AM
-- Phiên bản máy phục vụ: 10.1.36-MariaDB
-- Phiên bản PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `btlon`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `congty`
--

CREATE TABLE `congty` (
  `IDCT` int(11) NOT NULL,
  `tenct` varchar(100) NOT NULL,
  `motact` longtext,
  `anhct` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `congviec`
--

CREATE TABLE `congviec` (
  `ID` int(10) UNSIGNED NOT NULL,
  `tenct` varchar(100) NOT NULL,
  `congviec` varchar(100) NOT NULL,
  `mota` longtext NOT NULL,
  `luong` varchar(50) NOT NULL,
  `tg` varchar(50) NOT NULL,
  `diadiem` varchar(100) NOT NULL,
  `hannop` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `congviec`
--

INSERT INTO `congviec` (`ID`, `tenct`, `congviec`, `mota`, `luong`, `tg`, `diadiem`, `hannop`) VALUES
(1, 'Công Ty Viễn Thông FPT', 'Nhân viên công nghệ thông tin', 'Mô Tả Công Việc:\r\n -Tham gia trực tiếp vào giai đoạn phát triển dự án, nắm bắt và phân tích các yêu cầu hệ thống hiện tại của dự án.\r\n -Hoàn thành các task được giao theo sự chỉ đạo của team lead hoặc trưởng bộ phận.\r\nYêu Cầu Công Việc:\r\n -Tốt nghiệp Đại học chuyên ngành Công nghệ thông tin.\r\n -Có tối thiểu 1 năm lập trình với ngôn ngữ Java.\r\n -Có kiến thức tốt về OOP và MVC.\r\n -Thành thạo Programming: J2EE, Java, JavaScript, Jquery, HTML.\r\n -Hiểu biết Framework: Struts, Spring, Hibernate… là một lợi thế.\r\n -Thành thạo Database: Oracle SQL hoặc MS SQL.\r\n -Thành thạo các công cụ hỗ trợ lập trình: Eclipse hoặc NetBeans, SVN, CVS…\r\n -Tư duy logic tốt.\r\n -Kỹ năng làm việc theo nhóm tốt.\r\n -Khả năng đoc hiểu tài liệu tiếng Anh chuyên ngành tốt.', 'trên 20tr', 'Full time', 'Tầng 2, Số 166, Phố Trần Vỹ, Phường Mai Dịch, Quận Cầu Giấy, Hà Nội', '2019-01-22'),
(2, 'Công ty TNHH Thương mại Dược mỹ phẩm Hoàng Lâm', 'Nhân Viên Kinh Doanh', 'Mô tả công việc\r\n- Tư vấn bán hàng, chăm sóc các khách hàng là chủ spa, thẩm mỹ viện và các cửa hàng mỹ phẩm trên địa bàn thành phố hà nội và các tỉnh thành khác trên cả nước.\r\nYêu cầu công việc\r\n✔️ Tốt nghiệp trung cấp trở lên, thành thạo tin học văn phòng và ngoại ngữ là một lợi thế.\r\n✔️ Chịu khó, năng động và chịu được áp lực công việc.\r\n✔️ Ưu tiên các bạn có khả năng giao tiếp tốt, có giọng nói lưu loát\r\n✔️ Có kinh nghiệm bán hàng truyền thống, thuyết phục khách hàng.\r\n✔️ Có laptop để làm việc đối với nhân viên thị trường. \r\nQuyền lợi\r\n -Mức lương: Lương cứng từ 4-6tr + % doanh số + Thưởng vượt doanh số (tháng + quý + năm)\r\n -Được làm việc trong môi trường làm việc chuyên nghiệp và năng động\r\n -Được hưởng đầy đủ quyền lợi theo chế độ Nhà nước hiện hành và phúc lợi của Công ty nếu gắn bó lâu dài. \r\n -Chấp nhận sinh viên mới ra trường', 'Từ 7tr-10tr', 'Full time', 'Tầng 3, Tòa Đơn Nguyên 1, T2, Thăng Long Victory, Khu Đô Thị Nam An Khánh, Hoài Đức, Hà Nội', '2019-01-15'),
(3, 'Công Ty Cổ Phần Bệnh Viện Hữu Nghị Quốc Tế Hà Nội', 'Nhân Viên Chăm Sóc Khách Hàng - Telesales', 'Mô tả công việc\r\nLàm việc tại Số 19, ngõ 1, khu dân cư Tân Mỹ, Mỹ Đình, Hà Nội\r\nNghe và gọi tư vấn sản phẩm  mỹ phẩm phù hợp cho khách hàng.\r\nCung cấp các thông tin bổ ích cho làn da của khách hàng phù hợp với từng bộ sản phẩm \r\nTiếp nhận mọi phản hồi của khách hàng về sản phẩm, giải quyết các khiếu nại \r\nPhổ biến các chương trình khuyến mãi tới khách hàng\r\nLập kế hoạch tìm kiếm khách hàng và mở rộng quy mô khách hàng\r\nTiếp nhận các cuộc gọi tư vấn mỹ phẩm về cách thức mua, thanh toán...\r\nYêu cầu công việc\r\n• Ngoại hình ưa nhìn, nhanh nhẹn, giao tiếp tốt và khả năng Phục vụ khách hàng tốt\r\n• Chịu được áp lực công việc tốt, nhỏ nhẹ dễ mến\r\n• Thân thiện, nhiệt tình.\r\n• Thành thạo tin học văn phòng\r\n• Trao đổi cụ thể khi phỏng vấn\r\nQuyền lợi được hưởng\r\n- Thu nhập: lương từ 7-10tr và các phụ cấp khác\r\n- Thưởng cuối năm theo năng lực hoàn thành công việc (doanh số)\r\n-  Được làm việc trong môi trường chuyên nghiệp, có khả năng thăng tiến trong sự nghiệp.Được đào tạo kỹ năng mềm phục vụ cho công việc\r\n', 'Từ 7tr-10tr', 'Part time', ' Số 19, Ngõ 1, Khu Dân Cư Tân Mỹ, Mỹ Đình, Nam Từ Liêm, Hà Nội', '2019-01-10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cv`
--

CREATE TABLE `cv` (
  `ID` int(11) NOT NULL,
  `hoten` varchar(50) NOT NULL,
  `diachi` varchar(50) DEFAULT NULL,
  `sodienthoai` char(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `gioitinh` char(10) DEFAULT NULL,
  `ngaysinh` date NOT NULL,
  `hocvan` varchar(500) NOT NULL,
  `kinhnghiem` varchar(500) NOT NULL,
  `ngonngu` varchar(100) NOT NULL,
  `thongtinkhac` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `pass` char(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `level` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`ID`, `name`, `pass`, `email`, `level`) VALUES
(2, 'hoa', 'e10adc3949ba59abbe56e057f20f883e', 'hoa@gmail.com', 1),
(3, 'thao', 'e10adc3949ba59abbe56e057f20f883e', 'thao@gmail.com', 1),
(4, 'hien', 'e10adc3949ba59abbe56e057f20f883e', 'hien@gmail.com', 3),
(5, 'phuong', 'e10adc3949ba59abbe56e057f20f883e', 'phuong@gmail.com', 3),
(6, 'huyen', 'e10adc3949ba59abbe56e057f20f883e', 'huyen@gmail.com', 2),
(7, 'my', 'e10adc3949ba59abbe56e057f20f883e', 'my@gmail.com', 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `congty`
--
ALTER TABLE `congty`
  ADD PRIMARY KEY (`IDCT`);

--
-- Chỉ mục cho bảng `congviec`
--
ALTER TABLE `congviec`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `cv`
--
ALTER TABLE `cv`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `congty`
--
ALTER TABLE `congty`
  MODIFY `IDCT` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `congviec`
--
ALTER TABLE `congviec`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `cv`
--
ALTER TABLE `cv`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
