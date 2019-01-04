-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 04, 2019 lúc 04:52 AM
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
-- Cơ sở dữ liệu: `vieclam`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `congty`
--

CREATE TABLE `congty` (
  `id_ct` int(10) NOT NULL,
  `tenct` text CHARACTER SET utf8 NOT NULL,
  `diachi` text CHARACTER SET utf8 NOT NULL,
  `gmail` text CHARACTER SET utf8 NOT NULL,
  `anh_dc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `motact` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `congty`
--

INSERT INTO `congty` (`id_ct`, `tenct`, `diachi`, `gmail`, `anh_dc`, `motact`) VALUES
(1, 'Công ty TNHH Latino', 'P102 C8 Phường Giảng Võ, Quận Ba Đình, Thành phố Hà Nội  ', 'Latino@gmail.com', 'ct_1.PNG', 'Loại hình hoạt động: Công ty TNHH Hai Thành Viên trở lên</br>\r\nMã số thuế: 0101129112</br>\r\nĐại diện pháp luật: Tô Tuyết Mai</br>\r\nGiấy phép số: 0102002670</br>\r\nNgày cấp giấy phép: 25/05/2001</br>\r\nNgày hoạt động: 25/05/2001 (Đã hoạt động 18 năm)</br>\r\n\r\nChuyên cung cấp các mặt hàng vải, hàng may sẵn, giày dép,  buôn đồ dùng khác cho gia đình.</br>\r\nSản xuất sản phẩm khác từ gỗ; sản xuất sản phẩm từ tre, nứa, rơm, rạ và vật liệu tết bện.</br>\r\n\r\n'),
(2, 'Công ty Khánh Linh', 'Địa chỉ: Số 329 Hoàng Quốc Việt, Phường Nghĩa Tân, Quận Cầu Giấy, Hà Nội', ' khanhlinhco@khanhlinhco.com', 'ct_1.PNG', 'Công ty CP thiết bị CN Khánh Linh là nhà chuyên nhập khẩu và phân phối các chủng loại đá mài, đá cắt và dụng cụ, máy móc, vật tư phục vụ cho nghành cơ khí xây dựng và cơ khí chế tạo chính xác...\r\n\r\n ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `congviec`
--

CREATE TABLE `congviec` (
  `id_cv` int(11) NOT NULL,
  `id_td` int(11) NOT NULL,
  `id_ct` int(10) NOT NULL,
  `congviec` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diadiem` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hannop` date NOT NULL,
  `mota` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `quyenloi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenct` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tg` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trangthai` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `yeucau` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `anh_cv` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `congviec`
--

INSERT INTO `congviec` (`id_cv`, `id_td`, `id_ct`, `congviec`, `diadiem`, `hannop`, `mota`, `quyenloi`, `tenct`, `tg`, `trangthai`, `yeucau`, `anh_cv`) VALUES
(1, 1, 1, 'Quản Lý Nhà Hàng', 'Địa chỉ: Số 329 Hoàng Quốc Việt, Phường Nghĩa Tân, Quận Cầu Giấy, Hà Nội', '2019-01-09', '•	Mang đến trải nghiệm tốt cho khách hàng.<br/>\r\n\r\n•	Xây dựng và duy trì mối quan hệ tốt với khách hàng<br/>\r\n\r\n•	Giải đáp thắc mắc của khách hàng về sản phẩm/ dịch vụ/ chương trình khuyến mãi. Đảm bảo thông tin được cung cấp chính xác, rõ ràng tới khách hàng.<br/>\r\n\r\n•	Xử lý khiếu nại của khách hàng.<br/>\r\n\r\n•	Tiếp nhận và phối hợp với các Phòng/Bộ phận lien quan để giải quyết các phản hồi và khiếu nại của khách hàng thông qua email, điện thoại và truyền thông mạng xã hội.<br/>\r\n\r\n•	Hỗ trợ tư vấn cho khách hàng các giải pháp phù hợp.<br/>\r\n\r\n•	Thực hiện các yêu cầu công viêc khác được giao bởi Quản lý.<br/>\r\n\r\n•	Tuần được nghỉ 2 ngày<br/>\r\n\r\n•	Mỗi ca 8 tiếng<br/>', '\r\n12 Ngày phép/năm + 6 ngày nghỉ ốm\r\nBảo hiểm FPT Care: Bảo hiểm chăm sóc sức khỏe toàn diện có thể đi khám, chữa bệnh ờ hầu hết các Bệnh viện lớn mà không phải chờ đợi và được hưởng dịch vụ tốt nhất.<br/>\r\nĐược công ty hỗ trợ chi phí khám sức khỏe tổng quát định kỳ hàng năm.<br/>\r\nĐược công ty đóng đầy đủ các loại bảo hiểm theo quy định Nhà nước.\r\nĐược đi nghỉ mát hàng năm và tham gia các hoạt động team building ít nhất 01 lần/quý.<br/>\r\nĐược tặng quà sinh nhật, lễ, tết.\r\nĐược tham gia các hoạt động Công đoàn, phong trào văn hóa FPT. (Các câu lạc bộ thể thao, khiêu vũ, yoga,…)<br/>\r\nMặc định được thưởng tháng 13, ngoài ra bạn sẽ được thưởng theo kết quả làm việc cuối năm (Trung bình từ 1-3 tháng lương, nếu là Nhân viên xuất sắc có thể được thưởng đến 06 tháng lương và được công ty tài trợ 01 chuyến du lịch nước ngoài).<br/>\r\nĐược tham gia các lớp đào tạo kỹ năng chuyên môn và kỹ năng mềm theo chính sách đào tạo của Tập Đoàn FPT.<br/>\r\nThời gian làm việc của Sen Đỏ là 8h-17h30 từ thứ 2 đến thứ 6, nghỉ Lễ, Tết theo quy định của Luật lao động.<br/>\r\nĐược điều chỉnh lương/cấp bậc 01 lần/năm tùy theo kết quả công việc và năng lực.', ' Công ty TNHH Latino', 'Toàn thời gian', 'tin tuyển dụng', '•	Tốt nghiệp Trung Cấp trở lên.<br/>\r\n\r\n•	Tiếng Anh giao tiếp tốt là một lợi thế.<br/>\r\n\r\n•	Thành thạo tin học văn phòng.\r\n<br/>\r\n•	Thái độ trung thực, tích cực, năng động, nhiệt tình, kiên nhẫn và biết lắng nghe.<br/>\r\n\r\n•	Giọng nói rõ ràng, dễ nghe, không nói giọng địa phương.<br/>\r\n\r\n•	Có kỹ năng chăm sóc khách hàng, kỹ năng bán hàng, kỹ năng xử lý tình huống tốt.<br/>\r\n\r\n•	Ưu tiên: Hiểu biết về thương mại điện tử và có ít nhất 1 năm kinh nghiệm dịch vụ khách hàng<br/>', 'anh1.jpg'),
(2, 2, 2, 'Tài Xế Lái Xe 7 Chỗ', 'Địa chỉ: Số 329 Hoàng Quốc Việt, Phường Nghĩa Tân, Quận Cầu Giấy, Hà Nội', '2019-01-15', '- Lái xe đưa đón cán bộ nhân viên cho công ty, công việc làm hành chính, nghỉ chiều thứ 7, chủ nhật, nghỉ ngày lễ tết theo quy định, có làm ngoài giờ và đi công tác.<br/>\r\n- Đảm bảo thời gian, địa điểm đưa đón đúng theo yêu cầu.<br/>\r\n- Thực hiện đúng các quy định về an toàn giao thông, đảm bảo an toàn cho người, xe và hàng hóa trên đường công tác.<br/>\r\n- Nhận xe ở khu vực Bệnh viện Nam Thăng Long, Tân Xuân, Xuân Đỉnh, Bắc Từ Liêm, Hà Nội<br/>\r\n- Lái xe từ Hà Nội đến Phú Thọ hoặc Hà Nội - Hỉa Phòng và quanh khu vực Hà Nội.', '- Lương cứng 7tr-> 8tr + phụ cấp + thưởng<br/>\r\n- Hưởng đầy đủ các chế độ theo quy định.<br/>\r\n- Chế độ phúc lợi: BHXH, BHYT,...', 'Công ty Khánh Linh', 'Full Time', 'tin tuyển dụng', '- Kinh nghiệm lái xe ít nhất 2->3 năm<br/>\r\n- Có bằng lái xe B2/ C<br/>\r\n- Nam dưới 30 tuổi<br/>\r\n- Tính cách thật thà, cẩn thận<br/>\r\n- Có mong muốn làm việc lâu dài, có chí tiến thủ.<br/>\r\n- Ưu tiên ứng viên quanh khu vực Cầu giấy, Xuân Thủy<br/>', 'logo.jpg'),
(3, 3, 1, 'Kế Toán Tổng Hợp', ' Số 617 đường Nguyễn Văn Cừ - Phường Gia Thuỵ - Quận Long Biên - Hà Nội', '2019-01-18', '- Kiểm tra, soát xét các chứng từ kế toán đúng quy định;<br/>\r\n- Hạch toán các nghiệp vụ kinh tế phát sinh, lập hồ sơ khai thuế, nộp thuế và lập báo cáo tài chính theo đúng quy định hiện hành;<br/>\r\n- Thực hiện các nhiệm vụ khác theo sự phân công của Kế toán trưởng.<br/>\r\n* Đào tạo công việc ở trụ sở chính của công ty: Số 617 đường Nguyễn Văn Cừ - Phường Gia Thuỵ - Quận Long Biên - Hà Nội<br/>\r\n* Nơi làm việc: Khu CN Thạch Thất, Quốc Oai<br/>', '- Lương thử việc 5tr; sau khi làm cứng lương sẽ dao động từ 7-10tr; mức lương tương xứng với năng lực ứng viên<br/>\r\n- Được đào tạo thêm 2 tuần đầu tiên, 2 tuần này có hỗ trợ lương<br/>\r\n- Chế độ bảo hiểm, nghỉ phép và lễ theo luật lao động;<br/>\r\n- Làm việc từ thứ 2 đến thứ 7;<br/>\r\n- Ăn cơm tại công ty;<br/>\r\n- Hàng năm công ty tổ chức du lịch, có tặng quà trung thu và tết.<br/>\r\n- Thưởng tháng 13.<br/>', 'Công ty TNHH WHICOREA', 'Toàn thời gian', 'tin tuyển dụng', '- Nữ, tuổi từ 23-30 tuổi.<br/>\r\n- Tốt nghiệp CĐ chuyên ngành kế toán – tài chính;<br/>\r\n- Thành thạo nghiệp vụ, có ít nhất 06 tháng kinh nghiệm liên quan;<br/>\r\n- Sử dụng thành thạo tin học văn phòng, phần mềm kế toán;<br/>\r\n- Siêng năng, trung thực, hòa đồng, nhiệt tình trong công việc.<br/>', 'anh2.png'),
(4, 4, 1, 'Nhân Viên Chăm sóc khách hàng B2C', 'Số 55, đường Trương Công Giai, Cầu Giấy, Hà Nội;', '2019-01-16', 'Trực tiếp hỗ trợ, kiểm soát chất lượng giao vận của các đối tác – cửa hàng/doanh nghiệp và các sàn thương mại điện tử (TMĐT) lớn như Lazada, Sendo, Shopee,…\r\n\r\n– Phối hợp với bộ phận Vận hành xử lý các sự vụ hằng ngày liên quan đến giao hàng cho các đối tác;<br/>\r\n– Theo dõi, kiểm soát, đánh giá chất lượng dịch vụ giao hàng cho các đối tác;<br/>\r\n– Tổng hợp báo cáo, phối hợp với bộ phận Vận hành đưa ra phương án cải thiện dịch vụ giao hàng cho các đối tác;<br/>\r\n– Thời gian làm việc: 08h00 – 18h, Thứ 2 – thứ 7 hàng tuần;<br/>\r\n* Nhận hình thức thực tập sinh có lương chuyên ca sáng: 07h30 – 12h hoặc chiều: 13h – 17h30;', '– Môi trường làm việc​ năng động, t​húc đẩy khả năng mỗi cá nhân;<br/>\r\n– ​Được tiếp xúc với ​nhiều thử thách​ và có nhiều cơ hội phát triển;<br/>\r\n– ​Đ​ược làm việc, hợp tác với các ​đối tác lớn​, chuyên nghiệp;<br/>\r\n– ​Được đảm bảo c​hế độ Phúc lợi theo Quy định của Pháp luật hiện hành và của Công ty;<br/>\r\n– Thu nhập: 5 – 8 Triệu/tháng theo năng lực và KPI.<br/>\r\n– Có đánh giá thưởng theo năng lực làm việc​;<br/>\r\n– Tăng lương dựa trên đánh giá năng lực​ định kỳ;', 'Công ty TNHH MEETC', 'Part-time', 'tin tuyển dụng', '– ​N​ữ​, độ tuổi từ  1993-1996. Tốt nghiệp ​ĐH các chuyên ngành Bưu chính, Kinh tế, Thương mại, QTKD, Vận tải,…;<br/>\r\n– Kỹ năng lắng nghe, giao tiếp tốt và ứng biến linh hoạt;<br/>\r\n– Tỉ mỉ, cẩn thận, có trách nhiệm, luôn bám sát và giải quyết vấn đề đến cùng;<br/>\r\n– Có khả năng khái quát, đánh giá tổng quan;<br/>\r\n– Học hỏi nhanh, linh hoạt, Khả năng giải quyết sự vụ của khách hàng tốt;<br/>\r\n– Tính cách: Thân thiện, hòa đồng, nhiệt tình;<br/>\r\n– Ưu tiên ứng viên mới tốt nghiệp;', 'B2C.jpg'),
(5, 5, 1, 'Nhân Viên Telesales', 'Tầng 12A, Hapulico Center Building, Ngã ba đường Ngụy Như Kon Tum và Vũ Trọng Phụng, Phường Thanh Xuân Trung, Quận Thanh Xuân, Hà Nội', '2019-01-08', '- Công ty cung cấp sẵn nguồn data khách hàng đang có nhu cầu. Bạn gọi điện liên hệ tìm hiểu thông tin và tư vấn, thuyết phục Khách hàng sử dụng dịch vụ đăng tuyển dụng hiệu quả mà công ty cung cấp.<br/>\r\n- Chăm sóc khách hàng sử dụng dịch vụ, hỗ trợ giải đáp những thắc mắc của khách hàng qua email, điện thoại.', '- Công ty cung cấp sẵn nguồn data khách hàng đang có nhu cầu. Bạn gọi điện liên hệ tìm hiểu thông tin và tư vấn, thuyết phục Khách hàng sử dụng dịch vụ đăng tuyển dụng hiệu quả mà công ty cung cấp.<br/>\r\n- Chăm sóc khách hàng sử dụng dịch vụ, hỗ trợ giải đáp những thắc mắc của khách hàng qua email, điện thoại.', ' Công ty Cổ phần Tư vấn và Truyền thông Niềm Tin', 'Part-time', 'tin tuyển dụng', '- Biết lắng nghe, chịu được áp lực cao trong công việc.<br/>\r\n- Chăm chỉ, có tinh thần cầu tiến, yêu thích kinh doanh, thích kiềm tiền<br/>\r\n- Bắt buộc: Có máy tính xách tay.<br/>\r\n- Ưu tiên ứng viên nộp hồ sơ sớm.', 'anh6.jpg'),
(6, 7, 1, 'Nhân Viên Văn Phòng Tư Vấn Truyền Thông', '18/157 Phao Dai Lang street, Dong Da dist, Hanoi, Vietnam', '2019-01-27', 'Làm việc tại văn phòng công ty<br/> \r\nThời gian làm việc theo giờ hành chính từ T2 đến T6 hàng tuần nghỉ  T7 - CN<br/>\r\nTrao đổi , Tư vấn  với khách hàng về các sản phẩm dịch vụ marketing online truyền thông của công ty như: thiết kế Website, SEO, ..Phần mềm Hoting,.. Domain, Quảng cáo Google, FaceBook...<br/>\r\nTham gia xây dựng, triển khai, phát triển dịch vụ phục vụ khách hàng<br/>\r\n Hỗ Trợ  khách hàng tiềm năng (là các nhãn hàng, cá nhân, công ty,…) có nhu cầu về dịch vụ quảng cáo truyền thông trên hệ thống mạng xã hội.', '- Thu Nhập trung bình: Từ  7  triệu - 10 triệu (Lương cứng + 25% đến 35% Hoa Hồng + Thưởng( tuần, tháng, quý,…)<br/>\r\n- Môi trường làm việc chuyên nghiệp, thân thiện .<br/>\r\n-Bảo hiểm theo luật, nghỉ mát hàng năm, chế độ sinh nhật nhân viên, sinh hoạt văn hóa đoàn thể các ngày lễ trong năm;<br/>\r\n- Đào tạo các kiến thức thương mại điện tử, internet, truyền thông, maketing trong suốt quá trình làm việc (định kỳ, tuần, tháng)<br/>\r\n- Có cơ hội để phát huy tối đa năng lực bản thân, trở thành nhân viên chính thức, thăng tiến lên các vị trí cấp cao (Team Leader, phó phòng, trưởng phòng,…) và hưởng các chế độ đặc biệt khác<br/>\r\n\r\n', 'CÔNG TY CP CÔNG NGHỆ TAKI VIỆT NAM', 'Toàn thời gian', 'tin tuyển dụng', '1. Là sinh viên tốt nghiệp các trường đại học, cao đẳng,.... KHÔNG YÊU CẦU KINH NGHIỆM (trong lĩnh vực maketing online). Khi vào làm việc sẽ được đào tạo traning các mảng dịch vụ của công ty.<br/>\r\n\r\n2. Khả năng giao tiếp tốt, nhanh nhẹn, ƯU TIÊN những bạn muốn tìm hiểu và học hỏi lĩnh vực Marketing Online\r\n<br/>\r\n3. Trung thực, nhiệt tình và trách nhiệm cao trong công việc<br/>\r\n\r\n4. Có laptop cá nhân ( Năm sinh: 199x)<br/>\r\n\r\n5. Ưu tiên ứng viên đã có kinh nghiệm một số công việc: nhân viên bán hàng, chăm sóc khách hàng, nhân viên tư vấn, kinh doanh, sale,...\r\n\r\n', 'anh5.jpg'),
(7, 8, 1, 'Trợ Lý Giám Đốc', '202 Hoàng Ngân, Trung Hòa, Cầu Giấy, Hà Nội', '2019-01-16', '- Hỗ trợ các công việc hành chính;<br/>\r\n- Dịch tài liệu và phiên dịch khi có yêu cầu;<br/>\r\n- Quản lý và lưu trữ tài liệu hồ sơ, chuẩn bị cuộc họp cho Tổng giám đốc;<br/>\r\n- Tổng hợp báo cáo, ghi chép các biên bản cuộc họp;<br/>\r\n- Thực hiện các biên bản cuộc họp theo yêu cầu của Tổng giám đốc;<br/>\r\n- Hỗ trợ các công việc tuyển dụng, nhân sự, chấm công, …<br/>', '- Môi trường làm việc năng động và ổn định<br/>\r\n- Được hưởng các chế độ đãi ngộ theo qui định của pháp luật và qui chế của công ty.<br/>\r\n- Được hưởng các chế độ BHXH, BHYT, BHTN… sau thời gian thử việc<br/>', 'Công Ty Cổ phần Thời trang Kowil Việt Nam S', 'Toàn thời gian', 'tin tuyển dụng', '- Nữ, tuổi từ 22 – 27<br/>\r\n- Tốt nghiệp Đại học trở lên các khối ngành Kinh tế, Tài chính, Kế toán, Hành chính Văn Phòng, Nhân sự,… và các ngành khác có liên quan.<br/>\r\n- Thông thạo tin học văn phòng (Word, Excel)<br/>\r\n- Năng động, ham học hỏi, tỉ mỉ trong công việc.<br/>\r\n- Có khả năng làm việc với số liệu, quy trình, quy định tốt.<br/>\r\n- Có khả năng quản lý thứ tự công việc tốt, quản lý thời gian cho từng hạng mục hiệu quả.<br/>\r\n- Khả năng xử lý vấn đề tốt.', 'anh8.jpg'),
(8, 9, 1, 'NHÂN VIÊN KINH DOANH BẤT ĐỘNG SẢN', 'Tầng 4 Số 17 Ngõ 575 Kim Mã- Ngọc Khánh - Ba Đình - Hà Nội', '2019-01-08', 'Tư vấn cho khách hàng có nhu cầu mua nhà đất thổ cư: nhà mặt phố, ngõ, phân lô...<br/>\r\n- Khai thác, tìm kiếm khách hàng và mở rộng thị trường bênh lĩnh vực BĐS<br/>\r\n- Tham gia trực tiếp tìm kiếm, tư vấn, hỗ trợ, chăm sóc khách hàng về thông tin sản phẩm bất động sản của công ty', 'Thu nhập 15 – 25 triệu/ tháng hoặc cao hơn tùy năng lực.<br/>\r\nHoa hồng cao nhất thị trường hiện nay và đương nhiên mức hoa hồng của các bạn luôn ở mức 41% – 82 %/ hợp đồng giao dịch thành công.<br/>\r\nĐược đào tạo hoàn toàn MIỄN PHÍ cho đến khi biết nghề; Được hỗ trợ danh sách khách hàng, xăng xe, chi phí đăng tin….<br/>\r\nKho hàng hàng nghìn căn rải khắp địa bàn Hà Nội<br/>\r\nCó cơ hội thăng tiến lên Đầu chủ, Trưởng phòng, lãnh đạo Cty<br/>\r\nĐược tham gia các hoạt động thể thao, du lịch, tâm linh.', 'Công Ty Cổ phần Thương mại và Dịch vụ Bất động sản Richland', 'Fulltime', 'tin tuyển dụng', '+ Nam/Nữ từ 18 tuổi trở lên<br/>\r\n+ Không yêu cầu bằng cấp, kinh nghiệm.<br/>\r\n+ Yêu thích kinh doanh, mong muốn có có sự đột phá trong thu nhập<br/>\r\n+ Có phương tiện đi lại, laptop, điện thoại.<br/>\r\n+ Nghiêm túc học hỏi, thái độ cầu tiến, năng động, tự tin...', 'anh9.jpg'),
(9, 10, 1, 'CHUYÊN VIÊN TƯ VẤN KHÁCH HÀNG', '54A Nguyễn Chí Thanh - Hà Nội', '2019-01-05', 'Phát triển mạng lưới khách hàng, xác định và tìm kiếm đối tượng khách hàng mục tiêu có nhu cầu sử dụng sản phẩm, dịch vụ thuộc đối tượng khách hàng cá nhân.<br/>\r\n\r\nTư vấn, cung cấp thông tin về sản phẩm, dịch vụ nhằm duy trì, thuyết phục khách hàng hiện đang quản lý và khách hàng tiềm năng.<br/>\r\n\r\nThực hiện các công việc liên quan tới hoạt động thẻ ATM.<br/>\r\n\r\nCác trách nhiệm khác theo sự phân công, điều động của lãnh đạo đơn vị.<br/>', '- Môi trường làm việc chuyên nghiệp và năng động<br/>\r\n\r\n- Lương cùng các chế độ đãi ngộ hấp dẫn', 'Công ty TNHH Truyền Thông và Quảng Cáo Siêu Kinh Doanh', 'Toàn thời gian', 'tin tuyển dụng', 'Ưu tiên có kỹ năng kiểm đếm, phân biệt tiền giả, thật.<br/>\r\n\r\nTốt nghiệp đại học trở lên chuyên ngành: Ngân hàng, Tài chính, Kinh tế, Quản trị Kinh doanh, Kế toán....<br/>\r\n\r\nƯu tiên có kinh nghiệm tại ngân hàng ở vị trí tương đương', 'anh11.jpg'),
(10, 11, 1, 'Chuyển Viên DIGITAL MARKETING', 'Tầng 6, Tòa nhà Sannam, Số 78 Duy Tân, P.Dịch Vọng Hậu, Q.Cầu Giấy, TP.Hà Nội', '2019-01-21', '- QUẢNG CÁO FACEBOOK<br/>\r\n- Phân tích insight/sở thích/hành vi khách hàng trên công cụ Facebook Ads <br/>\r\n- Lập kế hoạch và triển khai quảng cáo,tối ưu quảng cáo trên Facebook, Instagram; <br/>\r\n- Theo dõi và đo lường tỉ lệ chuyển đổi; <br/>\r\n- Báo cáo kết quả theo tuần/tháng/quý/năm.\r\nQUẢN TRỊ FANPAGE/GROUP<br/>\r\n- Lập kế hoạch phát triển tương tác tự nhiên trên Fanpage/Group <br/>\r\n- Theo dõi chỉ số và lập báo cáo kết quả theo tuần/tháng/quý/năm.<br/>\r\n\r\nQUẢNG CÁO GOOGLE ADWORDS<br/>\r\n- Phân tích insight/sở thích/hành vi tìm kiếm của khách hàng trên Google. <br/>\r\n- Tạo mẫu quảng cáo Google Adwords và tối ưu quảng cáo. <br/>\r\n- Theo dõi và đo lường tỉ lệ chuyển đổi; <br/>\r\n- Báo cáo kết quả theo tuần/tháng/quý/năm.', '1, Lương cứng + thưởng KPI - thoả thuận theo năng lực<br/>\r\n2, Được thưởng tháng lương 13 theo quy định và chính sách Công ty.<br/>\r\n3, Tham gia các khóa đào tạo nội bộ và bên ngoài để nâng cao nghiệp vụ chuyên môn và các kỹ năng trong công việc.<br/>\r\n4, Được hưởng đầy đủ các chính sách BHXH, BHYT,BHTN các phúc lợi khác theo Luật lao động hiện hành.<br/>\r\n5, Nghỉ mát 1 năm/lần theo chế độ phúc lợi Công ty<br/>\r\n6, Thời gian làm việc: Thứ 2 – Thứ 7, từ 8h - 17h00, nghỉ trưa 1h00p, nghỉ CN\r\n\r\n', 'Di Động Mango', 'Toàn thời gian', 'tin tuyển dụng', '- Tốt nghiệp cao đẳng, đại học; ưu tiên tốt nghiệp chuyên ngành Marketing, CNTT hoặc chuyên ngành liên quan; \r\n- Tối thiểu 02 năm kinh nghiệm làm Facebook Ads; Google Adwords, các hoạt động quảng cáo quảng cáo trên mạng xã hội (Facebook, Zalo, LinkedIn.v.v).<br/>\r\n- Thành thạo các công cụ Ads Manager, Power Editor, Audience Insights, Pixels,… của Facebook Ads; <br/>\r\n- Thành thạo công cụ Page Manager, Google Analytics; <br/>\r\n- Hoạt động trong các Group về Facebook Ads, Marketing online;<br/> \r\n- Có kiến thức marketing căn bản;<br/> \r\n- Thành thạo tin học văn phòng (Word, Excel) và am hiểu internet, mạng xã hội;<br/>\r\n\r\n- Khả năng viết mẫu quảng cáo tốt.', 'anh12.jpg'),
(11, 6, 1, 'Nhân Viên Telesales', '202 Hoàng Ngân, Trung Hòa, Cầu Giấy, Hà Nội', '2019-01-20', 'Gọi điện và chăm sóc Khách hàng theo số điện thoại Khách hàng để lại trên hệ thống Marketing Online đã quan tâm đến sản phẩm, dịch vụ tại Thẩm mỹ OHIO.<br/>\r\nThiết lập cuộc hẹn mời Khách hàng đến tư vấn, sử dụng, sản phẩm, dịch vụ của Thẩm mỹ OHIO.<br/>\r\nChat box tư vấn Khách hàng qua các kênh Zalo, Profile, Sms, Messenger… các thắc mắc liên quan về sản phẩm, dịch vụ Thẩm mỹ, mỹ phẩm của Công ty.<br/>\r\nCập nhật báo cáo chăm sóc Khách hàng hàng ngày lên hệ thống CRM của Công ty, thực hiện quy trình Telesale theo kịch bản bán hàng của Công ty.<br/>\r\nThực hiện các công việc khác theo sự phân công của TP Marketing', 'Lương cứng: Từ 7 – 10 triệu + % Hoa hồng + Thưởng KPI, thu nhập hàng tháng lên tới 10 -15 triệu<br/>\r\nĐược hưởng tháng lương thứ 13, thưởng cá nhân xuất sắc hàng năm<br/>\r\nThưởng thành tích định kỳ và đột xuất cho cá nhân hoặc tập thể.<br/>\r\nThưởng nhân các ngày lễ, tết và các sự kiện đặc biệt của công ty.<br/>\r\nChế độ tăng lương, thưởng theo quy định của Công ty.<br/>\r\nChế độ đãi ngộ tốt, hưởng đầy đủ các chính sách theo luật lao động: Sinh nhật, du lịch, nghỉ lễ, tết, BHXH, BHYT,…<br/>\r\nPhụ cấp ăn trưa, nghỉ chủ nhật hàng tuần.\r\nMôi trường làm việc chuyên nghiệp, năng động, sáng tạo, đồng nghiệp vui vẻ nhiệt tình.<br/>\r\nKhám sức khỏe tổng quát định kỳ tại những trung tâm y tế chất lượng, uy tín', ' Công ty Cổ phần Tư vấn và Truyền thông Niềm Tin', 'Part-time', 'tin tuyển dụng', 'Có 1 năm kinh nghiệm làm Telesale, bán hàng, chăm sóc Khách hàng<br/>\r\nƯu tiên những ứng viên đã có kinh nghiệm làm việc tại Viettel, FPT, Hoa sao, Minh phúc, các trung tâm call center, bảo hiểm nhân thọ, các ứng viên đã làm Spa, Thẩm mỹ viện…<br/>\r\nYêu thích lĩnh vực làm đẹp, kiên trì<br/>\r\nSẵn sàng cống hiến hết mình để có thu nhập cao, ổn định', 'anh6.jpg'),
(12, 12, 1, 'Đại Diện Kinh Doanh', 'Tầng G, 1&2, Horison Tower, số 40 Cát Linh, Đống Đa, Hà Nội', '2019-01-21', 'Ứng viên được lựa chọn sẽ mở ra cơ hội lớn để có một thu nhập cao và các quyền lợi hấp dẫn khác. Ngoài ra, ứng viên sẽ được làm việc trong một môi trường quốc tế năng động là bước đệm cho sự phát triển nghề nghiệp và bản thân.<br/>\r\nNhiệm vụ:<br/>\r\n- Xây dựng và duy trì hệ thống khách hàng của riêng cá nhân và theo nhóm<br/>\r\n- Thực hiện các buổi thuyết trình, giới thiệu sản phẩm, mô hình nghỉ dưỡng tại ALMA<br/>\r\n- Thực hiện và quản lý các giao dịch bán hàng<br/>\r\n- Cung cấp dịch vụ tư vấn, chăm sóc Khách hàng<br/>\r\n- Kết hợp với các bộ phận Truyền thông, Marketing thực hiện các kế hoạch quảng bá, giới thiệu Dịch vụ.', 'Quyền lợi:<br/>\r\nThu nhập và chế độ thưởng hấp dẫn, cơ hội du lịch trong nước và quốc tế<br/>\r\nTập trung vào thành công và sự phát triển của từng cá nhân với 1 tháng đào tạo về hệ thống sản phẩm và kỹ năng khi được tuyển dụng và trong suốt quá trình làm việc<br/>\r\nCơ hội được làm việc trong môi trường quốc tế và tạo dựng một sự nghiệp thành công.', 'Công ty TNHH OH VACATIO', 'Toàn thời gian', 'tin tuyển dụng', 'Yêu cầu công việc:<br/>\r\n- Toàn thời gian<br/>\r\n- Ngoại hình ưa nhìn là bắt buộc<br/>\r\n- Có kinh nghiệm trong các lĩnh vực du lịch, dịch vụ, bán hàng trực tiếp là một lợi thế<br/>\r\n- Kỹ năng giao tiếp tốt là bắt buộc<br/>\r\n- Tự tin, tham vọng và mong muốn được thử thách bản thân trong một lĩnh vực mới<br/>\r\n- Thái độ tích cực & khả năng làm việc dưới áp lực cao, Hướng tới mục tiêu<br/>\r\n- Tính cách hòa đồng, nhiệt tình và vui vẻ<br/>\r\n- Tuổi: Từ 22 đến 30<br/>\r\n- Có kinh nghiệm bán hàng, kinh doanh từ 2 năm trở lên<br/>\r\n- Mới ra trường: Ứng viên mới ra trường với tiềm năng tốt có thể được cân nhắc', '3.jpg'),
(13, 13, 1, 'NHÂN VIÊN TƯ VẤN DỊCH VỤ VISA VÀ DU LỊCH CHÂU ÂU', '11/84 Ngọc Khánh, Ba Đình, Hà Nội', '2019-01-09', '- Nhận cuộc gọi từ khách hàng và giải đáp thông tin tư vấn về visa và du lịch châu Âu.<br/>\r\n\r\n- Tư vấn khách hàng sử dụng dịch vụ<br/>\r\n\r\n- Chăm sóc khách hàng thường xuyên <br/>\r\n\r\n- Cập nhật thông tin về chính sách visa và du lịch châu Âu.', '- Làm việc trong môi trường năng động, có nhiều cơ hội thăng tiến.<br/>\r\n- Cung cấp trang thiết bị đầy đủ để phục vụ công việc.<br/>\r\n- Được đóng BHXH, BHYT, BHTN.<br/>\r\n- Được hưởng các chính sách phúc lợi theo quy định của công ty.<br/>\r\n- Được đào tạo, nâng cao nghiệp vụ thường xuyên.', ' Công ty CP Tư vấn và Dịch vụ du lịch Eurovie Việt Nam', 'Toàn thời gian', 'tin tuyển dụng', '- Tốt nghiệp từ Cao đẳng trở lên.<br/>\r\n\r\n- Có kĩ năng giao tiếp, tư vấn, chăm sóc khách hàng.<br/>\r\n\r\n- Tiếng Anh đọc hiểu tài liệu.<br/>', '13.jpg'),
(14, 14, 1, 'Nhân Viên Bán Hàng', '348 Giải Phóng, Hà Nội', '2019-01-15', '- Giới thiệu, tư vấn cho khách hàng các mặt hàng thuộc nhánh hàng phụ trách, hướng dẫn sử dụng sản phẩm, xúc tiến bán hàng và thực hiện các công tác dịch vụ sau bán hàng.<br/>\r\n- Tuân thủ nghiêm ngặt quy trình liên quan đến quá trình bán hàng, hàng tồn tại kho, quầy nhằm đảm bảo doanh số bán hàng theo chỉ tiêu.<br/>\r\n- Tham gia trưng bày hàng hóa, quầy kệ sạch sẽ, gọn gàng, ngăn nắp theo thiết kế chuẩn của Công ty.<br/>\r\n- Hướng dẫn, cung cấp thông tin cần thiết và hỗ trợ khách hàng tham gia các chương trình khuyến mãi, ưu đãi của Siêu thị và trên hệ thống VHC.<br/>\r\n- Liên tục phối hợp với các bộ phận vận hành tại sàn (thu ngân, dịch vụ khách hàng…) và các bộ phận gián tiếp (lắp đặt, giao hàng, kho,…) để hỗ trợ tối đa cho khách hàng trong quá trình bán hàng và chăm sóc sau bán hàng.<br/>\r\n- Quản lý hàng hóa trưng bày thuộc khu vực phụ trách (số lượng, chất lượng, quy cách) theo quy định của Công ty, hỗ trợ gói hàng để giao trong trường hợp đóng hàng tại quầy.', '-Thu nhập từ 5 triệu trở lên, chưa kể thưởng các loại.<br/>\r\n- Có cơ hội học tập, phát triển và thăng tiến.<br/>\r\n- Được làm việc trong một môi trường hiện đại, năng động, bình đẳng và chuyên nghiệp<br/>\r\n- Được hưởng các chế độ BHYT, BHXH, BHTN theo quy định của nhà nước và các chế độ phúc lợi khác như thưởng lễ, tết, sinh nhật, lương tháng 13, 14, đào tạo với các chuyên gia hàng đầu, tham quan nghỉ mát trong và ngoài nước theo chính sách của Công ty.', 'Dalat Hasfarm', 'Part-time', 'tin tuyển dụng', '- Nam/nữ, tốt nghiệp từ PTTH trở lên. Tuổi từ 18 đến 40, có sức khỏe tốt.<br/>\r\n- Ngoại hình cân đối, ưa nhìn, giao tiếp tốt, giọng nói dễ nghe, không bị ngọng hay lắp.<br/>\r\n- Ưu tiên ứng viên tốt nghiệp các trường đào tạo nghề bán hàng, có kinh nghiệm bán hàng điện máy.<br/>\r\n- Nhanh nhẹn, tự tin, năng động.\r\nHồ sơ yêu cầu:<br/>\r\n•	Thông tin cá nhân ghi rõ vị trí xin ứng tuyển, quá trình học tập, công tác, kinh nghiệm và năng lực bản thân.<br/>\r\n•	Bản phô tô các văn bằng, chứng chỉ liên quan.', 'banhang.jpg'),
(15, 15, 1, 'Nhân Viên Tư Vấn Giáo Dục', 'Tầng 2, Số 166, Phố Trần Vỹ, Phường Mai Dịch, Quận Cầu Giấy, Hà Nội', '2019-01-23', '- Tư vấn chương trình giáo dục cho các nhà trường Tiểu học, THCS ở địa phương do công ty cung cấp DATA.<br/>\r\n- Quản lý, chăm sóc khách hàng trực tiếp và qua điện thoại.<br/>\r\n- Phát triển, duy trì mối quan hệ với khách hàng mới và khách hàng hiện tại;<br/>\r\n- Nhận và chuyển thông tin phản hồi của khách hàng cho các bộ phận có liên quan kịp thời, chính xác.<br/>\r\n- Thực hiện công tác được cấp trên giao phó.<br/>\r\n- Làm Việc trong giờ hành chính.<br/>\r\n- Ưu tiên các bạn không vướng bận gia đình, có thể đi công tác.', '- Thưởng thêm theo doanh số<br/>\r\n- Chế độ tăng lương từ 10%- 40% hàng năm, tùy theo hiệu quả công việc.<br/>\r\n- Có cơ hội làm việc trong môi trường chuyên nghiệp, được tạo mọi điều kiện để phát huy tối đa khả năng, cơ hội thăng tiến và phát triển bản thân.<br/>\r\n- Được tham gia vào các hoạt động, khoá đào tạo, phát triển kỹ năng giao tiếp và các kỹ năng mềm của công ty.<br/>\r\n- Được hưởng đầy đủ các chế độ phúc lợi của công ty, chế độ bảo hiểm xã hội, v..v theo quy định của luật Lao động, luật BHXH.', 'Công ty CP Viễn thông FPT', 'Toàn thời gian', 'tin tuyển dụng', '-Tốt nghiệp Cao Đẳng<br/>\r\n- Từ 26-36 tuổi.<br/>\r\n- Có kinh nghiệm 4 năm trở lên, ít nhất 2 năm vị trí TN hoặc quản lý kinh doanh, sale, tư vấn, chăm sóc khách hàng.<br/>\r\n- Có năng lực lãnh đạo, đào tạo, quản lý kinh doanh.<br/>\r\n- Giỏi Kỹ năng đàm phán, chốt hợp đồng.<br/>\r\n- Ưu tiên những ứng viên đã có kinh nghiệm làm việc tại các công ty / tổ chức giáo dục lớn.<br/>\r\n- Có khả năng xử lý tình huống, giải quyết vấn đề, giao tiếp và thuyết trình hiệu quả.<br/>\r\n- Ưu tiên các bạn không vướng bận gia đình, có thể đi công tác xa.', '2.jpg'),
(16, 16, 1, 'Nhân Viên Đặt Lịch Hẹn Qua Điện Thoại', 'Tầng G, 1&2, Horison Tower, số 40 Cát Linh, Đống Đa, Hà Nội', '2019-01-10', '         \r\n- Gọi điện thoại tới danh sách khách hàng do công ty cung cấp<br/>                                        \r\n                   \r\n- Giới thiệu về khu nghỉ dưỡng Cocobay<br/>\r\n                    \r\n- Mời khách hàng đến tham gia sự kiện để nhận quà và Voucher nghỉ dưỡng tại Cocobay.<br/>\r\n                      \r\n- Hỗ trợ điện thoại và máy tính làm việc tại Công ty     <br/>           \r\n - Thời gian làm việc:<br/>\r\n                      \r\n+ Fulltime: Từ Thứ 3 đến Chủ Nhật (8:30-17:30)<br/>\r\n                    \r\n+ Partime buổi tối: 17:30 - 21:30   <br/>      \r\n - Địa điểm làm việc: 614 Lạc Long Quân, Quận Tây Hồ, Hà Nội (đối diện tòa án nhân dân quận Tây Hồ)<br/>\r\n\r\n', ' - Fulltime: Lương ứng 5tr6 + Thưởng, thu nhập 6-10M/ tháng  <br/>         - Part time buổi tối: Lương 20k/h, thưởng 300k/ 1 show up (Tuyển cả sinh viên) - Hưởng bảo hiểm (Bảo hiểm xã hội, bảo hiểm y tế, bảo hiểm thất nghiệp) chế độ đầy đủ theo quy định của luật lao động và bảo hiểm Empire Care <br/>                                  – Bảo hiểm sức khoẻ 24/7 <br/>                             - Hỗ trợ điện thoại và máy tính làm việc   <br/>       - Được hướng dẫn nghiệp vụ, đào tạo nghề miễn phí.<br/>                  - Được làm việc trong môi trưởng trẻ, năng động. <br/>             - Có cơ hội làm việc một trong những tập đoàn hàng đầu tại Việt Nam trong lĩnh vực nghỉ dưỡng, tập đoàn Empire, Chủ đầu tư dự án Cocobay Đà Nẵng. ', 'Công ty TNHH Oh Vacation', 'Toàn thời gian', 'tin tuyển dụng', ' - Giọng nói chuẩn, không nói giọng địa phương, không nói ngọng.<br/>                                             - Có mong muốn làm việc lâu dài với với môi trường năng động, nhiều trai xinh gái đẹp<br/>                          - Có mong muốn đào tạo trong một môi trường chuyên nghiệp, kỹ năng giao tiếp và thuyết phục. <br/>              - Không phân biệt nam, nữ.  <br/>                            - Có kinh nghiệm tư vấn qua điện thoại là một lợi thế\r\n', '3.jpg'),
(17, 17, 1, 'Content Writer', '333 Nguyễn Khang, Hà Nội', '2019-01-15', '- Phụ trách các vấn đề liên quan đến truyền thông, quảng bá thương hiệu, truyền thông nội bộ. Thực hiện các công việc theo đúng kế hoạch.<br/>\r\n- Phối hợp cùng đội ngũ kinh doanh và kỹ thuật thực hiện đúng yêu cầu về nội dung.<br/>\r\n- Sáng tạo nội dung, biên tập cho các chiến dịch marketing (slogan, tagline, catalogue, content marketing, ads copywriting), dự án Social Media, PR content.<br/>\r\n- Quản lý nội dung Facebook, Website cho thương hiệu, Email Marketing. <br/>\r\n- Chủ động tìm hiểu, nghiên cứu, thu thập thông tin về các xu hướng thị trường trong lĩnh vực của các dự án/chiến dịch đang triển khai nhằm tìm kiếm các hướng xây dựng nội dung mới mẻ, các khía cạnh truyền thông phù hợp<br/>\r\n- Các công việc có liên quan theo yêu cầu cấp trên.', ' - Fulltime: Lương ứng 5tr6 + Thưởng, thu nhập 6-10M/ tháng  <br/>         - Part time buổi tối: Lương 20k/h, thưởng 300k/ 1 show up (Tuyển cả sinh viên) - Hưởng bảo hiểm (Bảo hiểm xã hội, bảo hiểm y tế, bảo hiểm thất nghiệp) chế độ đầy đủ theo quy định của luật lao động và bảo hiểm Empire Care <br/>                                  – Bảo hiểm sức khoẻ 24/7 <br/>                             - Hỗ trợ điện thoại và máy tính làm việc   <br/>       - Được hướng dẫn nghiệp vụ, đào tạo nghề miễn phí.<br/>                  - Được làm việc trong môi trưởng trẻ, năng động. <br/>             - Có cơ hội làm việc một trong những tập đoàn hàng đầu tại Việt Nam trong lĩnh vực nghỉ dưỡng, tập đoàn Empire, Chủ đầu tư dự án Cocobay Đà Nẵng. ', 'Di Động Mango', 'Toàn thời gian', 'Tin tuyển dụng', '- Tiếng Anh tốt (đặc biệt kĩ năng đọc/viết)<br/>\r\n- Đã có ít nhất 1 năm kinh nghiệm làm copywriter ở các lĩnh vực sau: báo & tạp chí / quảng cáo sản phẩm & dịch vụ / PR sự kiện / Nội dung các hội thảo & workshop<br/>\r\n- Biết sử dụng thành thạo tin học văn phòng, đặc biệt là Power Point<br/>\r\n- Biết sử dụng các công cụ chỉnh sửa hình ảnh (Adobe Illustrator và Photoshop) là lợi thế.', 'anh12.jpg'),
(18, 18, 1, 'Trưởng Nhóm Kinh Doanh', '22 ngõ 33/12 Lê Thanh Nghị, Hai Bà Trưng, Hà Nội', '2019-01-15', '- Quản lý và giám sát toàn bộ hoạt động của các Chuyên viên tư vấn bảo hiểm trong nhóm<br/>\r\n- Phân chia công việc, lên kế hoạch, mục tiêu làm việc đội nhóm một cách chuyên nghiệp<br/>\r\n- Thúc đẩy và huấn luyện đội ngũ nhân viên ngân hàng và Chuyên viên tư vấn bảo hiểm.<br/>\r\n- Xây dựng mối quan hệ tốt với đối tác ngân hàng Vietinbank.<br/>\r\n- Tiếp nhận và giải quyết sự việc liên quan đến chính sách kinh doanh của Công ty', '- LƯƠNG: cố định + hoa hồng (KHÔNG GIỚI HẠN) + các khoản thưởng tháng/quý/năm<br/>\r\n- Có cơ hội được thăng tiến lên các vị trí cấp cao (Giám đốc kinh doanh Vùng, Giám đốc kinh doanh Miền)<br/>\r\n- Được tham gia các khóa đào tạo, huấn luyện chuyên sâu về nghiệp vụ ngân hàng, bảo hiểm & các khóa kỹ năng mềm nâng cao.<br/>\r\n- Nhiều chương trình thi đua khen thưởng tới các nước: Anh, Pháp, Mỹ, Nhật, Singapore, Dubai,…', 'Công Ty Cổ phần Đầu tư Kĩ thuật Việt', 'Toàn thời gian', 'tin tuyển dụng', '- Tốt nghiệp từ cao đẳng trở lên<br/>\r\n- Có tối thiểu 3 năm kinh nghiệm về quản lý kinh doanh trong ngành bảo hiểm nhân thọ.<br/>\r\n- Có kỹ năng quản lý và xây dựng kế hoạch kinh doanh<br/>\r\n- Có kỹ năng đào tạo, huấn luyện và xây dựng đội nhóm<br/>\r\n- Có kỹ năng giao tiếp và đàm phán tốt', 'anh10.jpg'),
(19, 19, 1, 'Nhân Viên Bán Hàng', '348 Giải Phóng, Hà Nội', '2019-01-22', '- Giới thiệu, tư vấn cho khách hàng các mặt hàng thuộc nhánh hàng phụ trách, hướng dẫn sử dụng sản phẩm, xúc tiến bán hàng và thực hiện các công tác dịch vụ sau bán hàng.<br/>\r\n- Tuân thủ nghiêm ngặt quy trình liên quan đến quá trình bán hàng, hàng tồn tại kho, quầy nhằm đảm bảo doanh số bán hàng theo chỉ tiêu.<br/>\r\n- Tham gia trưng bày hàng hóa, quầy kệ sạch sẽ, gọn gàng, ngăn nắp theo thiết kế chuẩn của Công ty.<br/>\r\n- Hướng dẫn, cung cấp thông tin cần thiết và hỗ trợ khách hàng tham gia các chương trình khuyến mãi, ưu đãi của Siêu thị và trên hệ thống VHC.<br/>\r\n- Liên tục phối hợp với các bộ phận vận hành tại sàn (thu ngân, dịch vụ khách hàng…) và các bộ phận gián tiếp (lắp đặt, giao hàng, kho,…) để hỗ trợ tối đa cho khách hàng trong quá trình bán hàng và chăm sóc sau bán hàng.<br/>\r\n- Quản lý hàng hóa trưng bày thuộc khu vực phụ trách (số lượng, chất lượng, quy cách) theo quy định của Công ty, hỗ trợ gói hàng để giao trong trường hợp đóng hàng tại quầy.', '-Thu nhập từ 5 triệu trở lên, chưa kể thưởng các loại.<br/>\r\n- Có cơ hội học tập, phát triển và thăng tiến.<br/>\r\n- Được làm việc trong một môi trường hiện đại, năng động, bình đẳng và chuyên nghiệp<br/>\r\n- Được hưởng các chế độ BHYT, BHXH, BHTN theo quy định của nhà nước và các chế độ phúc lợi khác như thưởng lễ, tết, sinh nhật, lương tháng 13, 14, đào tạo với các chuyên gia hàng đầu, tham quan nghỉ mát trong và ngoài nước theo chính sách của Công ty.', 'KINGMILKJSC', 'Part-time', 'tin tuyển dụng', '- Nam/nữ, tốt nghiệp từ PTTH trở lên. Tuổi từ 18 đến 40, có sức khỏe tốt.<br/>\r\n- Ngoại hình cân đối, ưa nhìn, giao tiếp tốt, giọng nói dễ nghe, không bị ngọng hay lắp.<br/>\r\n- Ưu tiên ứng viên tốt nghiệp các trường đào tạo nghề bán hàng, có kinh nghiệm bán hàng điện máy.<br/>\r\n- Nhanh nhẹn, tự tin, năng động.\r\nHồ sơ yêu cầu:<br/>\r\n•	Thông tin cá nhân ghi rõ vị trí xin ứng tuyển, quá trình học tập, công tác, kinh nghiệm và năng lực bản thân.<br/>\r\n•	Bản phô tô các văn bằng, chứng chỉ liên quan.', '4.jpg'),
(20, 20, 1, 'Nhân Viên Văn Phòng Tư Vấn Truyền Thông', '202 Hoàng Ngân, Trung Hòa, Cầu Giấy, Hà Nội', '2019-01-15', 'Làm việc tại văn phòng công ty<br/> \r\nThời gian làm việc theo giờ hành chính từ T2 đến T6 hàng tuần nghỉ  T7 - CN<br/>\r\nTrao đổi , Tư vấn  với khách hàng về các sản phẩm dịch vụ marketing online truyền thông của công ty như: thiết kế Website, SEO, ..Phần mềm Hoting,.. Domain, Quảng cáo Google, FaceBook...<br/>\r\nTham gia xây dựng, triển khai, phát triển dịch vụ phục vụ khách hàng<br/>\r\n Hỗ Trợ  khách hàng tiềm năng (là các nhãn hàng, cá nhân, công ty,…) có nhu cầu về dịch vụ quảng cáo truyền thông trên hệ thống mạng xã hội.', '- Thu Nhập trung bình: Từ  7  triệu - 10 triệu (Lương cứng + 25% đến 35% Hoa Hồng + Thưởng( tuần, tháng, quý,…)<br/>\r\n- Môi trường làm việc chuyên nghiệp, thân thiện .<br/>\r\n-Bảo hiểm theo luật, nghỉ mát hàng năm, chế độ sinh nhật nhân viên, sinh hoạt văn hóa đoàn thể các ngày lễ trong năm;<br/>\r\n- Đào tạo các kiến thức thương mại điện tử, internet, truyền thông, maketing trong suốt quá trình làm việc (định kỳ, tuần, tháng)<br/>\r\n- Có cơ hội để phát huy tối đa năng lực bản thân, trở thành nhân viên chính thức, thăng tiến lên các vị trí cấp cao (Team Leader, phó phòng, trưởng phòng,…) và hưởng các chế độ đặc biệt khác<br/>\r\n\r\n', 'Công ty Cổ phần Tư vấn và Truyền thông Niềm Tin', 'Toàn thời gian', 'tin tuyển dụng', '- Nữ, tuổi từ 22 – 27<br/>\r\n- Tốt nghiệp Đại học trở lên các khối ngành Kinh tế, Tài chính, Kế toán, Hành chính Văn Phòng, Nhân sự,… và các ngành khác có liên quan.<br/>\r\n- Thông thạo tin học văn phòng (Word, Excel)<br/>\r\n- Năng động, ham học hỏi, tỉ mỉ trong công việc.<br/>\r\n- Có khả năng làm việc với số liệu, quy trình, quy định tốt.<br/>\r\n- Có khả năng quản lý thứ tự công việc tốt, quản lý thời gian cho từng hạng mục hiệu quả.<br/>\r\n- Khả năng xử lý vấn đề tốt.', 'anh6.jpg'),
(21, 21, 1, 'Kế Toán Tổng Hợp', 'Số 55, đường Trương Công Giai, Cầu Giấy, Hà Nội;\r\n', '2019-01-30', 'Trực tiếp hỗ trợ, kiểm soát chất lượng giao vận của các đối tác – cửa hàng/doanh nghiệp và các sàn thương mại điện tử (TMĐT) lớn như Lazada, Sendo, Shopee,…\r\n\r\n– Phối hợp với bộ phận Vận hành xử lý các sự vụ hằng ngày liên quan đến giao hàng cho các đối tác;<br/>\r\n– Theo dõi, kiểm soát, đánh giá chất lượng dịch vụ giao hàng cho các đối tác;<br/>\r\n– Tổng hợp báo cáo, phối hợp với bộ phận Vận hành đưa ra phương án cải thiện dịch vụ giao hàng cho các đối tác;<br/>\r\n– Thời gian làm việc: 08h00 – 18h, Thứ 2 – thứ 7 hàng tuần;<br/>\r\n* Nhận hình thức thực tập sinh có lương chuyên ca sáng: 07h30 – 12h hoặc chiều: 13h – 17h30;', '– Môi trường làm việc​ năng động, t​húc đẩy khả năng mỗi cá nhân;<br/>\r\n– ​Được tiếp xúc với ​nhiều thử thách​ và có nhiều cơ hội phát triển;<br/>\r\n– ​Đ​ược làm việc, hợp tác với các ​đối tác lớn​, chuyên nghiệp;<br/>\r\n– ​Được đảm bảo c​hế độ Phúc lợi theo Quy định của Pháp luật hiện hành và của Công ty;<br/>\r\n– Thu nhập: 5 – 8 Triệu/tháng theo năng lực và KPI.<br/>\r\n– Có đánh giá thưởng theo năng lực làm việc​;<br/>\r\n– Tăng lương dựa trên đánh giá năng lực​ định kỳ;', 'Công ty TNHH WHICOREA', 'Part-time\r\n', 'tin tuyển dụng', '– ​N​ữ​, độ tuổi từ  1993-1996. Tốt nghiệp ​ĐH các chuyên ngành Bưu chính, Kinh tế, Thương mại, QTKD, Vận tải,…;<br/>\r\n– Kỹ năng lắng nghe, giao tiếp tốt và ứng biến linh hoạt;<br/>\r\n– Tỉ mỉ, cẩn thận, có trách nhiệm, luôn bám sát và giải quyết vấn đề đến cùng;<br/>\r\n– Có khả năng khái quát, đánh giá tổng quan;<br/>\r\n– Học hỏi nhanh, linh hoạt, Khả năng giải quyết sự vụ của khách hàng tốt;<br/>\r\n– Tính cách: Thân thiện, hòa đồng, nhiệt tình;<br/>\r\n– Ưu tiên ứng viên mới tốt nghiệp;', 'anh2.png'),
(22, 22, 1, 'Hành Chính Nhân Sự', ' Số 617 đường Nguyễn Văn Cừ - Phường Gia Thuỵ - Quận Long Biên - Hà Nội', '2019-01-17', '- Kiểm tra, soát xét các chứng từ kế toán đúng quy định;<br/>\r\n- Hạch toán các nghiệp vụ kinh tế phát sinh, lập hồ sơ khai thuế, nộp thuế và lập báo cáo tài chính theo đúng quy định hiện hành;<br/>\r\n- Thực hiện các nhiệm vụ khác theo sự phân công của Kế toán trưởng.<br/>\r\n* Đào tạo công việc ở trụ sở chính của công ty: Số 617 đường Nguyễn Văn Cừ - Phường Gia Thuỵ - Quận Long Biên - Hà Nội<br/>\r\n* Nơi làm việc: Khu CN Thạch Thất, Quốc Oai<br/>', '- Lương thử việc 5tr; sau khi làm cứng lương sẽ dao động từ 7-10tr; mức lương tương xứng với năng lực ứng viên<br/>\r\n- Được đào tạo thêm 2 tuần đầu tiên, 2 tuần này có hỗ trợ lương<br/>\r\n- Chế độ bảo hiểm, nghỉ phép và lễ theo luật lao động;<br/>\r\n- Làm việc từ thứ 2 đến thứ 7;<br/>\r\n- Ăn cơm tại công ty;<br/>\r\n- Hàng năm công ty tổ chức du lịch, có tặng quà trung thu và tết.<br/>\r\n- Thưởng tháng 13.<br/>', 'CN Công ty TNHH LARIA', 'Toàn thời gian', 'tin tuyển dụng', '– ​N​ữ​, độ tuổi từ  1993-1996. Tốt nghiệp ​ĐH các chuyên ngành Bưu chính, Kinh tế, Thương mại, QTKD, Vận tải,…;<br/>\r\n– Kỹ năng lắng nghe, giao tiếp tốt và ứng biến linh hoạt;<br/>\r\n– Tỉ mỉ, cẩn thận, có trách nhiệm, luôn bám sát và giải quyết vấn đề đến cùng;<br/>\r\n– Có khả năng khái quát, đánh giá tổng quan;<br/>\r\n– Học hỏi nhanh, linh hoạt, Khả năng giải quyết sự vụ của khách hàng tốt;<br/>\r\n– Tính cách: Thân thiện, hòa đồng, nhiệt tình;<br/>\r\n– Ưu tiên ứng viên mới tốt nghiệp;', 'anh3.jpg'),
(23, 23, 1, 'Nhân Viên Kinh Doanh', 'Tầng 4 Số 17 Ngõ 575 Kim Mã- Ngọc Khánh - Ba Đình - Hà Nội', '2019-01-09', 'Tư vấn cho khách hàng có nhu cầu mua nhà đất thổ cư: nhà mặt phố, ngõ, phân lô...<br/>\r\n- Khai thác, tìm kiếm khách hàng và mở rộng thị trường bênh lĩnh vực BĐS<br/>\r\n- Tham gia trực tiếp tìm kiếm, tư vấn, hỗ trợ, chăm sóc khách hàng về thông tin sản phẩm bất động sản của công ty', 'Thu nhập 15 – 25 triệu/ tháng hoặc cao hơn tùy năng lực.<br/>\r\nHoa hồng cao nhất thị trường hiện nay và đương nhiên mức hoa hồng của các bạn luôn ở mức 41% – 82 %/ hợp đồng giao dịch thành công.<br/>\r\nĐược đào tạo hoàn toàn MIỄN PHÍ cho đến khi biết nghề; Được hỗ trợ danh sách khách hàng, xăng xe, chi phí đăng tin….<br/>\r\nKho hàng hàng nghìn căn rải khắp địa bàn Hà Nội<br/>\r\nCó cơ hội thăng tiến lên Đầu chủ, Trưởng phòng, lãnh đạo Cty<br/>\r\nĐược tham gia các hoạt động thể thao, du lịch, tâm linh.', 'Công ty TNHH MEETC', 'Toàn thời gian', 'tin tuyển dụng', '+ Nam/Nữ từ 18 tuổi trở lên<br/>\r\n+ Không yêu cầu bằng cấp, kinh nghiệm.<br/>\r\n+ Yêu thích kinh doanh, mong muốn có có sự đột phá trong thu nhập<br/>\r\n+ Có phương tiện đi lại, laptop, điện thoại.<br/>\r\n+ Nghiêm túc học hỏi, thái độ cầu tiến, năng động, tự tin...', 'anh4.jpg'),
(24, 24, 1, 'Nhân Viên Telesales', 'Tầng 12A, Hapulico Center Building, Ngã ba đường Ngụy Như Kon Tum và Vũ Trọng Phụng, Phường Thanh Xuân Trung, Quận Thanh Xuân, Hà Nội', '2019-01-15', '- Công ty cung cấp sẵn nguồn data khách hàng đang có nhu cầu. Bạn gọi điện liên hệ tìm hiểu thông tin và tư vấn, thuyết phục Khách hàng sử dụng dịch vụ đăng tuyển dụng hiệu quả mà công ty cung cấp.<br/>\r\n- Chăm sóc khách hàng sử dụng dịch vụ, hỗ trợ giải đáp những thắc mắc của khách hàng qua email, điện thoại.', '- Công ty cung cấp sẵn nguồn data khách hàng đang có nhu cầu. Bạn gọi điện liên hệ tìm hiểu thông tin và tư vấn, thuyết phục Khách hàng sử dụng dịch vụ đăng tuyển dụng hiệu quả mà công ty cung cấp.<br/>\r\n- Chăm sóc khách hàng sử dụng dịch vụ, hỗ trợ giải đáp những thắc mắc của khách hàng qua email, điện thoại.', 'Công ty Cổ phần Tư vấn và Truyền thông Niềm Tin', 'Part-time', 'tin tuyển dụng', '- Biết lắng nghe, chịu được áp lực cao trong công việc.<br/>\r\n- Chăm chỉ, có tinh thần cầu tiến, yêu thích kinh doanh, thích kiềm tiền<br/>\r\n- Bắt buộc: Có máy tính xách tay.<br/>\r\n- Ưu tiên ứng viên nộp hồ sơ sớm.', 'anh6.jpg'),
(25, 25, 1, 'Nhân Viên Văn Phòng Tư Vấn Truyền Thông', '18/157 Phao Dai Lang street, Dong Da dist, Hanoi, Vietnam', '2019-01-27', 'Làm việc tại văn phòng công ty<br/> \r\nThời gian làm việc theo giờ hành chính từ T2 đến T6 hàng tuần nghỉ  T7 - CN<br/>\r\nTrao đổi , Tư vấn  với khách hàng về các sản phẩm dịch vụ marketing online truyền thông của công ty như: thiết kế Website, SEO, ..Phần mềm Hoting,.. Domain, Quảng cáo Google, FaceBook...<br/>\r\nTham gia xây dựng, triển khai, phát triển dịch vụ phục vụ khách hàng<br/>\r\n Hỗ Trợ  khách hàng tiềm năng (là các nhãn hàng, cá nhân, công ty,…) có nhu cầu về dịch vụ quảng cáo truyền thông trên hệ thống mạng xã hội.', '- Thu Nhập trung bình: Từ  7  triệu - 10 triệu (Lương cứng + 25% đến 35% Hoa Hồng + Thưởng( tuần, tháng, quý,…)<br/>\r\n- Môi trường làm việc chuyên nghiệp, thân thiện .<br/>\r\n-Bảo hiểm theo luật, nghỉ mát hàng năm, chế độ sinh nhật nhân viên, sinh hoạt văn hóa đoàn thể các ngày lễ trong năm;<br/>\r\n- Đào tạo các kiến thức thương mại điện tử, internet, truyền thông, maketing trong suốt quá trình làm việc (định kỳ, tuần, tháng)<br/>\r\n- Có cơ hội để phát huy tối đa năng lực bản thân, trở thành nhân viên chính thức, thăng tiến lên các vị trí cấp cao (Team Leader, phó phòng, trưởng phòng,…) và hưởng các chế độ đặc biệt khác<br/>\r\n\r\n', ' CÔNG TY CP CÔNG NGHỆ TAKI VIỆT NAM', 'Toàn thời gian', 'tin tuyển dụng', '1. Là sinh viên tốt nghiệp các trường đại học, cao đẳng,.... KHÔNG YÊU CẦU KINH NGHIỆM (trong lĩnh vực maketing online). Khi vào làm việc sẽ được đào tạo traning các mảng dịch vụ của công ty.<br/>\r\n\r\n2. Khả năng giao tiếp tốt, nhanh nhẹn, ƯU TIÊN những bạn muốn tìm hiểu và học hỏi lĩnh vực Marketing Online\r\n<br/>\r\n3. Trung thực, nhiệt tình và trách nhiệm cao trong công việc<br/>\r\n\r\n4. Có laptop cá nhân ( Năm sinh: 199x)<br/>\r\n\r\n5. Ưu tiên ứng viên đã có kinh nghiệm một số công việc: nhân viên bán hàng, chăm sóc khách hàng, nhân viên tư vấn, kinh doanh, sale,...\r\n\r\n', 'anh7.jpg'),
(26, 26, 1, 'Lập Trình Viên Java', 'Tầng 9, Tòa Viwaseen Số 46 Tố Hữu, Nhân Chính, Thanh Xuân, Hà Nội', '2019-01-23', 'Tham gia phân tích yêu cầu, thiết kế và xây dựng hệ thống <br/>\r\nPhát triển ứng dụng có độ trễ thấp, tính khả dụng cao, khả năng mở rộng và bảo mật tốt<br/>\r\nNghiên cứu và áp dụng các công nghệ mới, Cải tiến và nâng cao chất lượng dự án.', '• Mức lương, thưởng cạnh tranh, phù hợp với năng lực.;<br/>\r\n• Môi trường làm việc năng động, chuyên nghiệp, trẻ trung và vui vẻ;<br/>\r\n• Được tiếp cận với những công nghệ mới;<br/>\r\n• Được đào tạo quy trình làm việc chuyên nghiệp về phát triển sản phẩm;', 'Tổ Hợp Công Nghệ Giáo Dục TOPICA', 'Toàn thời gian', 'tin tuyển dụng', '- Vị trí Lập trình viên Angular JS<br/>\r\n+ Có kinh nghiệm với Angular JS tối thiểu 1 năm, có kinh nghiệm HTML5 / CSS3 và JavaScript ES6 ver, Javascript Modular và OOP trong JavaScript <br/>\r\n+ Có kinh nghiệm với RxJS (hoặc Vue.JS) và kỹ năng Typecript<br/>\r\n+ Làm việc tốt với TeamCity, Scrum<br/>\r\n\r\n- Vị trí Lập trình viên NodeJS<br/>\r\n+ Có kinh nghiệm với NodeJS tối thiểu 1 năm<br/>\r\n+ Hiểu biết sâu về Javascript Frameworks<br/>\r\n+ Tự chủ động chọn lựa công nghệ sử dụng ở front-end, có thể là Angular, React, hoặc một framework tùy chọn', 'anh5.jpg'),
(27, 27, 1, 'Trợ Lý Giám Đốc', '202 Hoàng Ngân, Trung Hòa, Cầu Giấy, Hà Nội', '2019-01-15', '- Hỗ trợ các công việc hành chính;<br/>\r\n- Dịch tài liệu và phiên dịch khi có yêu cầu;<br/>\r\n- Quản lý và lưu trữ tài liệu hồ sơ, chuẩn bị cuộc họp cho Tổng giám đốc;<br/>\r\n- Tổng hợp báo cáo, ghi chép các biên bản cuộc họp;<br/>\r\n- Thực hiện các biên bản cuộc họp theo yêu cầu của Tổng giám đốc;<br/>\r\n- Hỗ trợ các công việc tuyển dụng, nhân sự, chấm công, …<br/>', '- Môi trường làm việc năng động và ổn định<br/>\r\n- Được hưởng các chế độ đãi ngộ theo qui định của pháp luật và qui chế của công ty.<br/>\r\n- Được hưởng các chế độ BHXH, BHYT, BHTN… sau thời gian thử việc<br/>', 'Công Ty Cổ phần Thời trang Kowil Việt Nam S', 'Toàn thời gian', 'tin tuyển dụng', '- Nữ, tuổi từ 22 – 27<br/>\r\n- Tốt nghiệp Đại học trở lên các khối ngành Kinh tế, Tài chính, Kế toán, Hành chính Văn Phòng, Nhân sự,… và các ngành khác có liên quan.<br/>\r\n- Thông thạo tin học văn phòng (Word, Excel)<br/>\r\n- Năng động, ham học hỏi, tỉ mỉ trong công việc.<br/>\r\n- Có khả năng làm việc với số liệu, quy trình, quy định tốt.<br/>\r\n- Có khả năng quản lý thứ tự công việc tốt, quản lý thời gian cho từng hạng mục hiệu quả.<br/>\r\n- Khả năng xử lý vấn đề tốt.', 'anh8.jpg'),
(28, 28, 1, 'NHÂN VIÊN KINH DOANH BẤT ĐỘNG SẢN', 'Tầng 4 Số 17 Ngõ 575 Kim Mã- Ngọc Khánh - Ba Đình - Hà Nội', '2019-01-16', 'Tư vấn cho khách hàng có nhu cầu mua nhà đất thổ cư: nhà mặt phố, ngõ, phân lô...<br/>\r\n- Khai thác, tìm kiếm khách hàng và mở rộng thị trường bênh lĩnh vực BĐS<br/>\r\n- Tham gia trực tiếp tìm kiếm, tư vấn, hỗ trợ, chăm sóc khách hàng về thông tin sản phẩm bất động sản của công ty', 'Thu nhập 15 – 25 triệu/ tháng hoặc cao hơn tùy năng lực.<br/>\r\nHoa hồng cao nhất thị trường hiện nay và đương nhiên mức hoa hồng của các bạn luôn ở mức 41% – 82 %/ hợp đồng giao dịch thành công.<br/>\r\nĐược đào tạo hoàn toàn MIỄN PHÍ cho đến khi biết nghề; Được hỗ trợ danh sách khách hàng, xăng xe, chi phí đăng tin….<br/>\r\nKho hàng hàng nghìn căn rải khắp địa bàn Hà Nội<br/>\r\nCó cơ hội thăng tiến lên Đầu chủ, Trưởng phòng, lãnh đạo Cty<br/>\r\nĐược tham gia các hoạt động thể thao, du lịch, tâm linh.', 'Công Ty Cổ phần Thương mại và Dịch vụ Bất động sản Richland', 'Toàn thời gian', 'tin tuyển dụng', '+ Nam/Nữ từ 18 tuổi trở lên<br/>\r\n+ Không yêu cầu bằng cấp, kinh nghiệm.<br/>\r\n+ Yêu thích kinh doanh, mong muốn có có sự đột phá trong thu nhập<br/>\r\n+ Có phương tiện đi lại, laptop, điện thoại.<br/>\r\n+ Nghiêm túc học hỏi, thái độ cầu tiến, năng động, tự tin...', 'anh9.jpg'),
(29, 29, 1, 'Nhân viên công nghệ thông tin', 'Tầng 2, Số 166, Phố Trần Vỹ, Phường Mai Dịch, Quận Cầu Giấy, Hà Nội', '2019-01-31', 'Mô Tả Công Việc:\r\n -Tham gia trực tiếp vào giai đoạn phát triển dự án, nắm bắt và phân tích các yêu cầu hệ thống hiện tại của dự án.<br/>\r\n -Hoàn thành các task được giao theo sự chỉ đạo của team lead hoặc trưởng bộ phận.<br/>\r\nYêu Cầu Công Việc:<br/>\r\n -Tốt nghiệp Đại học chuyên ngành Công nghệ thông tin.\r\n -Có tối thiểu 1 năm lập trình với ngôn ngữ Java.\r\n -Có kiến thức tốt về OOP và MVC.\r\n -Thành thạo Programming: J2EE, Java, JavaScript, Jquery, HTML.\r\n -Hiểu biết Framework: Struts, Spring, Hibernate… là một lợi thế.\r\n -Thành thạo Database: Oracle SQL hoặc MS SQL.\r\n -Thành thạo các công cụ hỗ trợ lập trình: Eclipse hoặc NetBeans, SVN, CVS…\r\n -Tư duy logic tốt.\r\n -Kỹ năng làm việc theo nhóm tốt.\r\n -Khả năng đoc hiểu tài liệu tiếng Anh chuyên ngành tốt.', '- Môi trường làm việc chuyên nghiệp và năng động<br/>\r\n\r\n- Lương cùng các chế độ đãi ngộ hấp dẫn\r\n\r\n', 'Công Ty Viễn Thông FPT', 'Full time', 'việc làm lương cao', '- Nam/nữ, tốt nghiệp từ PTTH trở lên. Tuổi từ 18 đến 40, có sức khỏe tốt.<br/>\r\n- Ngoại hình cân đối, ưa nhìn, giao tiếp tốt, giọng nói dễ nghe, không bị ngọng hay lắp.<br/>\r\n- Ưu tiên ứng viên tốt nghiệp các trường đào tạo nghề bán hàng, có kinh nghiệm bán hàng điện máy.<br/>\r\n- Nhanh nhẹn, tự tin, năng động.\r\nHồ sơ yêu cầu:<br/>\r\n•	Thông tin cá nhân ghi rõ vị trí xin ứng tuyển, quá trình học tập, công tác, kinh nghiệm và năng lực bản thân.<br/>\r\n•	Bản phô tô các văn bằng, chứng chỉ liên quan.', 'fpt.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cv`
--

CREATE TABLE `cv` (
  `id_hs` int(10) NOT NULL,
  `hoten` text CHARACTER SET utf8 NOT NULL,
  `diachi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hocvan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kinhnghiem` text COLLATE utf8mb4_unicode_ci,
  `ngaysinh` date NOT NULL,
  `ngonngu` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sodienthoai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thongtinkhac` text COLLATE utf8mb4_unicode_ci,
  `gioitinh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cv`
--

INSERT INTO `cv` (`id_hs`, `hoten`, `diachi`, `email`, `hocvan`, `kinhnghiem`, `ngaysinh`, `ngonngu`, `sodienthoai`, `thongtinkhac`, `gioitinh`) VALUES
(1, 'Nguyễn Văn A', '1 Hàng Bài, Hà Nội', 'NguyenA123@gmail.com', 'Đại học', '', '1989-03-20', 'Tiếng Việt, Tiếng Anh', '0123456789', '', 'Nam');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thu`
--

CREATE TABLE `thu` (
  `IDT` int(11) NOT NULL,
  `tinnhan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tieude` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintuyendung`
--

CREATE TABLE `tintuyendung` (
  `id_td` int(11) NOT NULL,
  `luong_td` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tencty` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenviec` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anh_td` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trangthai_td` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tintuyendung`
--

INSERT INTO `tintuyendung` (`id_td`, `luong_td`, `tencty`, `tenviec`, `anh_td`, `trangthai_td`) VALUES
(1, '20 triệu - 25 triệu', ' Công ty TNHH Latimo', 'Quản Lý Nhà Hàng', 'anh1.jpg', 'tin tuyển dụng'),
(2, '7 triệu - 10 triệu', 'Công ty Khánh Linh', 'Tài Xế Lái Xe 7 Chỗ', 'logo.jpg', 'tin tuyển dụng'),
(3, '7 triệu - 10 triệu', 'Công ty TNHH WHICOREA', 'Kế Toán Tổng Hợp', 'anh2.png', 'tin tuyển dụng'),
(4, '7 triệu - 10 triệu', 'Công ty TNHH MEETC', 'Nhân Viên Chăm Sóc Khách Hàng B2C', 'B2C.jpg', 'tin tuyển dụng'),
(5, ' 7 triệu - 10 triệu', 'Công ty TNHH MEETC', 'Nhân Viên Kinh Doanh', 'anh4.jpg', 'tin tuyển dụng'),
(6, '7 triệu - 10 triệu', ' Công ty Cổ phần Tư vấn và Truyền thông Niềm Tin', 'Nhân Viên Telesales', 'anh6.jpg', 'tin tuyển dụng'),
(7, 'Tới 30 triệu', 'CÔNG TY CP CÔNG NGHỆ TAKI VIỆT NAM', 'Nhân Viên Văn Phòng Tư Vấn Truyền Thông', 'anh5.jpg', 'tin tuyển dụng'),
(8, ' 9-15 triệu', 'Công Ty Cổ phần Thời trang Kowil Việt Nam S', 'Trợ Lý Giám Đốc', 'anh8.jpg', 'tin tuyển dụng'),
(9, '10-15 triệu', 'Công Ty Cổ phần Thương mại và Dịch vụ Bất động sản Richland', 'NHÂN VIÊN KINH DOANH BẤT ĐỘNG SẢN', 'anh9.jpg', 'tin tuyển dụng'),
(10, '8-15 triệu', 'Công ty TNHH Truyền Thông và Quảng Cáo Siêu Kinh Doanh', 'CHUYÊN VIÊN TƯ VẤN KHÁCH HÀNG', 'anh11.jpg', 'tin tuyển dụng'),
(11, '8-20 triệu', 'Di Động Mango', 'Chuyển Viên DIGITAL MARKETING', 'anh12.jpg', 'tin tuyển dụng'),
(12, '15 triệu - 30 triệu', 'Công ty TNHH OH VACATIO', 'Đại Diện Kinh Doanh', '3.jpg', 'tin tuyển dụng'),
(13, 'Tới 8 triệu', ' Công ty CP Tư vấn và Dịch vụ du lịch Eurovie Việt Nam', 'NHÂN VIÊN TƯ VẤN DỊCH VỤ VISA VÀ DU LỊCH CHÂU ÂU', '13.jpg', 'tin tuyển dụng'),
(14, 'Trên 5 triệu', 'Dalat Hasfarm', 'Nhân Viên Bán Hàng', 'banhang.jpg', 'tin tuyển dụng'),
(15, 'Trên 10 triệu', 'Công ty CP Viễn thông FPT', 'Nhân Viên Tư Vấn Giáo Dục', '2.jpg', 'tin tuyển dụng'),
(16, ' 6-10 triệu', 'Công ty TNHH OH VACATION', 'Nhân Viên Đặt Lịch Hẹn Qua Điện Thoại', '3.jpg', 'tin tuyển dụng'),
(17, '6-9 triệu', 'Di Động Mango', 'Content Writer', 'anh12.jpg', 'tin tuyển dụng'),
(18, 'Trên 15 triệu', 'Công Ty Cổ phần Đầu tư Kĩ thuật Việt', 'Trưởng Nhóm Kinh Doanh', 'anh10.jpg', 'tin tuyển dụng'),
(19, 'Trên 3 triệu', 'KINGMILKJSC', 'Nhân Viên Bán Hàng', '4.jpg', 'tin tuyển dụng'),
(20, '7 triệu - 10 triệu', 'Công ty Cổ phần Tư vấn và Truyền thông Niềm Tin', 'Nhân Viên Văn Phòng Tư Vấn Truyền Thông', 'anh6.jpg', 'tin tuyển dụng'),
(21, '7 triệu - 10 triệu', 'Công ty TNHH WHICOREA', 'Kế Toán Tổng Hợp', 'anh2.png', 'tin tuyển dụng'),
(22, 'Thương Lượng', 'CN Công ty TNHH LARIA', 'Hành Chính Nhân Sự', 'anh3.jpg', 'tin tuyển dụng'),
(23, '7 triệu - 10 triệu', 'Công ty TNHH MEETC', 'Nhân Viên Kinh Doanh', 'anh4.jpg', 'tin tuyển dụng'),
(24, '7 triệu - 10 triệu', 'Công ty Cổ phần Tư vấn và Truyền thông Niềm Tin', 'Nhân Viên Telesales', 'anh6.jpg', 'tin tuyển dụng'),
(25, '7 triệu - 15 triệu', ' CÔNG TY CP CÔNG NGHỆ TAKI VIỆT NAM', 'Nhân Viên Văn Phòng Tư Vấn Truyền Thông', 'anh7.jpg', 'tin tuyển dụng'),
(26, 'Tới 30 triệu', 'Tổ Hợp Công Nghệ Giáo Dục TOPICA', 'Lập Trình Viên Java', 'anh5.jpg', 'tin tuyển dụng'),
(27, '9-15 triệu', 'Công Ty Cổ phần Thời trang Kowil Việt Nam S', 'Trợ Lý Giám Đốc', 'anh8.jpg', 'tin tuyển dụng'),
(28, '10-15 triệu', 'Công Ty Cổ phần Thương mại và Dịch vụ Bất động sản Richland', 'NHÂN VIÊN KINH DOANH BẤT ĐỘNG SẢN', 'anh9.jpg', 'tin tuyển dụng'),
(29, 'Trên 20 triệu', 'Công Ty Viễn Thông FPT', 'Nhân viên công nghệ thông tin', 'fpt.png', 'việc làm lương cao'),
(30, '10-15 triệu', 'Công ty TNHH Thương mại Dược mỹ phẩm Hoàng Lâm', 'Nhân Viên Kinh Doanh', 'anh2.png', 'việc làm lương cao'),
(31, '7-10 triệu', 'CÔNG TY CỔ PHẦN VIP ENGLISH', 'Chuyên viên tư vấn tuyển sinh qua điện thoại', 'Vip English.jpg', 'việc làm lương cao'),
(32, '10-15 triệu', 'Công ty TNHH Oh Vacation', 'Nhân viên tư vấn mô hình nghỉ dưỡng', '3.jpg', 'việc làm lương cao'),
(33, 'Trên 20 triệu', 'Công ty Cổ phần TOPCV Việt Nam', 'PHP Developer', 'topcv.jpg', 'việc làm lương cao'),
(34, '8-10 triệu', 'Apax Leader', 'Tutor English', 'apax leader.jpg', 'việc làm lương cao'),
(35, '10-15tr', 'Công Ty Cổ Phần Bệnh Viện Hữu Nghị Quốc Tế Hà Nội', 'Nhân Viên Chăm Sóc Khách Hàng - Telesales', 'Hana.png', 'việc làm part-time'),
(36, '7-10tr', 'MACINSTA', 'CONTENT MARKETING', 'macinsta.jpg', 'việc làm part-time'),
(37, '5-7tr', 'CÔNG TY CỔ PHẦN FUNGROUP', 'GIÁO VIÊN DẠY TRỰC TUYẾN TẠI NHÀ', 'fungroup.jpg', 'việc làm part-time'),
(38, '2-5 tr', 'Công ty cổ phần ADINO', 'NHÂN VIÊN BÁN HÀNG', 'adino.jpg', 'việc làm part-time'),
(39, '3-5tr', 'Công ty TNHH Công nghệ EUP', 'NHÂN VIÊN BÁN SÁCH', 'eup.jpg', 'việc làm part-time'),
(40, '5-7tr', 'Công ty Cổ phần Tư vấn và Truyền thông Niềm Tin', 'NHÂN VIÊN BIÊN THIẾT KẾ', 'anh6.jpg', 'việc làm part-time'),
(41, '6-10tr', 'Công ty TNHH Oh Vacation', 'NHÂN VIÊN ĐẶT LỊCH HẸN QUA ĐIỆN THOẠI', '3.jpg', 'tin tức'),
(42, '5-7tr', 'Công ty Cổ phần Giao hàng Tiết kiệm', 'NHÂN VIÊN CHĂM SÓC KHÁCH HÀNG B2C', 'B2C.jpg', 'tin tức'),
(43, '7-9tr', 'TRƯỜNG DOANH NHÂN HBR', 'CHUYÊN VIÊN NỘI DUNG MARKETING', 'truong-doanh-nhan.jpg', 'tin tức'),
(44, '7-15tr', 'CÔNG TY CP CÔNG NGHỆ MÁY CHỦ MẠNG', 'NHÂN VIÊN KINH DOANH', 'cong-ty-cp-cong-nghe-may-chu-mang.jpg', 'tin tức'),
(45, 'Trên 5 triệu', 'DALAT HASFARM', 'NHÂN VIÊN BÁN HÀNG TẠI HÀ NỘI', 'dalat hasfarm.jpg', 'tin tức');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`ID`, `email`, `level`, `name`, `pass`) VALUES
(1, 'NguyenA123@gmail.com', 1, 'Nguyễn Văn A', 'c4ca4238a0b923820dcc509a6f75849b'),
(2, 'NguyenB123@gmail.com', 2, 'Nguyễn Văn B', 'c4ca4238a0b923820dcc509a6f75849b'),
(3, 'NguyenC123@gmail.com', 3, 'Nguyễn Văn C', 'c4ca4238a0b923820dcc509a6f75849b');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `congty`
--
ALTER TABLE `congty`
  ADD PRIMARY KEY (`id_ct`);

--
-- Chỉ mục cho bảng `congviec`
--
ALTER TABLE `congviec`
  ADD PRIMARY KEY (`id_cv`),
  ADD KEY `id_ct` (`id_ct`),
  ADD KEY `id_td` (`id_td`);

--
-- Chỉ mục cho bảng `cv`
--
ALTER TABLE `cv`
  ADD PRIMARY KEY (`id_hs`);

--
-- Chỉ mục cho bảng `thu`
--
ALTER TABLE `thu`
  ADD PRIMARY KEY (`IDT`);

--
-- Chỉ mục cho bảng `tintuyendung`
--
ALTER TABLE `tintuyendung`
  ADD PRIMARY KEY (`id_td`);

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
  MODIFY `id_ct` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `congviec`
--
ALTER TABLE `congviec`
  MODIFY `id_cv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `cv`
--
ALTER TABLE `cv`
  MODIFY `id_hs` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `thu`
--
ALTER TABLE `thu`
  MODIFY `IDT` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tintuyendung`
--
ALTER TABLE `tintuyendung`
  MODIFY `id_td` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `congviec`
--
ALTER TABLE `congviec`
  ADD CONSTRAINT `congviec_ibfk_1` FOREIGN KEY (`id_ct`) REFERENCES `congty` (`id_ct`),
  ADD CONSTRAINT `congviec_ibfk_2` FOREIGN KEY (`id_td`) REFERENCES `tintuyendung` (`id_td`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

