<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Tìm kiếm việc làm</title>
    <link rel="stylesheet" href="btlon.css" type="text/css">
    <script src="timviec/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="btlon.js"></script>
</head>
<body>
    <div id="top">
        <img src="catgheplayout/tệp ảnh/logo.jpg" alt="logo"  height="200px" width="800px">
    </div>
    <div id="menu">
        <ul>
            <li style="border-left:none"><a href="btlon.php">Trang chủ</a></li>
            <li><a href="tuyendung.php">Tuyển dụng</a></li>
            <li><a href="congty.php">Công ty</a></li>
            <li><a href="dangky.php">Đăng ký</a></li>
            <li><a href="dangnhap.php">Đăng nhập</a></li>
        </ul>
    </div>
    <div id='seach'>
        <h3>Tìm kiếm nhanh</h3>
    <ul>
        <li style="margin-right : 100px" >
            <select name="cong_viec" >
                <option value="job"> Công việc</option>
                <option value="1">Kinh doanh</option>                                                      
                <option value="2">Bán hàng</option>
                <option value="3">Lao động phổ thông</option>
                <option value="4">Chăm sóc khách hàng</option>
                <option value="5">Tài chính/Kế toán/Kiểm toán</option>
                <option value="6">Hành chính/Thư ký/Trợ lý</option>
                <option value="7">Sinh viên/Mới tốt nghiệp/Thực tập</option>
                <option value="8">Cơ khí/Kĩ thuật ứng dụng</option>
                <option value="9">Điện/Điện tử/Điện lạnh</option>
                <option value="10">Báo chí/Biên tập viên</option>
                <option value="11">Bảo vệ/Vệ sĩ/An ninh</option>
                <option value="12">Bất động sản</option>
                <option value="13">Biên dịch/Phiên dịch</option>
                <option value="14">Bưu chính viễn thông</option>
                <option value="15">Công nghệ thông tin</option>
                <option value="16">Dầu khí/Địa chất</option>
                <option value="17">Dệt may</option>
                <option value="18">Du lịch/Nhà hàng/Khách sạn</option>
                <option value="19">Dược/Hóa chất/Sinh hóa</option>
                <option value="20">Giải trí/Vui chơi</option>
                <option value="21">Giáo dục/Đào tạo/Thư viện</option>
                <option value="22">Giao thông/Vận tải/Thủy lợi/Cầu đường</option>
                <option value="23">Giày da/Thuộc da</option>
                <option value="24">Khác</option>
                <option value="25">Kho vận/Vật tư/Thu mua</option>
                <option value="26">Khu chế xuất/Khu công nghiệp</option>
                <option value="27">Kiến trúc/Nội thất</option>
                <option value="28">Làm đẹp/Thể lực/Spa</option>
                <option value="29">Luật/Pháp lý</option>
                <option value="30">Môi trường/Xử lý chất thải</option>
                <option value="31">Mỹ phẩm/Thời trang/Trang sức</option>
                <option value="32">Ngân hàng/Chứng khoán/Đầu tư</option>
                <option value="33">Nghệ thuật/Điện ảnh</option>
                <option value="34">Ngoại ngữ</option>
                <option value="35">Nhân sự</option>
                <option value="36">Nông/Lâm/Ngư nghiệp</option>
                <option value="37">PG/PB/Lễ tân</option>
                <option value="38">Phát triển thị trường</option>
                <option value="39">Phục vụ/Tạp vụ/Giúp việc</option>
                <option value="40">Quan hệ đối ngoại</option>
                <option value="41">Quản lý điều hành</option>
                <option value="42">Quảng cáo/Marketing/PR</option>
                <option value="43">Sản xuất/Vận hành sản xuất</option>
                <option value="44">Tài xế/Lái xe/Giao nhận</option>
                <option value="45">Thẩm định/Giám định/Quản lý chất lượng</option>
                <option value="46">Thể dục/Thể thao</option>
                <option value="47">Thiết kế/Mỹ thuật</option>
                <option value="48">Thời vụ/Bán thời gian</option>
                <option value="49">Thực phẩm/DV ăn uống</option>
                <option value="50">Trang thiết bị công nghiệp</option>
                <option value="51">Trang thiết bị gia dụng</option>
                <option value="52">Trang thiết bị văn phòng</option>
                <option value="53">Tư vấn bảo hiểm</option>
                <option value="54">Xây dựng</option>
                <option value="55">Xuất-Nhập khẩu/Ngoại thương</option>
                <option value="56">Y tế</option>
                    </select>
        </li>
        <li style="margin-right:  100px" >
            <select name="Tinh_thanh" >
            <option value="">Chọn tỉnh thành</option>
            <option value="1">Hồ Chí Minh</option>
            <option value="2">Hà Nội</option>
            <option value="3">An Giang</option>
            <option value="4">Bạc Liêu</option>
            <option value="5">Bà Rịa-Vũng Tàu</option>
            <option value="6">Bắc Cạn</option>
            <option value="7">Bắc Giang</option>
            <option value="8">Bắc Ninh</option>
            <option value="9">Bến Tre</option>
            <option value="10">Bình Dương</option>
            <option value="11">Bình Định</option>
            <option value="12">Bình Phước</option>
            <option value="13">Bình Thuận</option>
            <option value="14">Cao Bằng</option>
            <option value="15">Cà Mau</option>
            <option value="16">Cần Thơ</option>
            <option value="17">Đà Nẵng</option>
            <option value="18">Đắk Lắk</option>
            <option value="19">Đắk Nông</option>
            <option value="20">Điện Biên</option>
            <option value="21">Đồng Nai</option>
            <option value="22">Đồng Tháp</option>
            <option value="23">Gia Lai</option>
            <option value="24">Hà Giang</option>
            <option value="25">Hà Nam</option>
            <option value="27">Hà Tĩnh</option>
            <option value="28">Hải Dương</option>
            <option value="29">Hải Phòng</option>
            <option value="30">Hậu Giang</option>
            <option value="31">Hòa Bình</option>
            <option value="32">Hưng Yên</option>
            <option value="33">Khánh Hòa</option>
            <option value="34">Kiên Giang</option>
            <option value="35">Kon Tum</option>
            <option value="36">Lai Châu</option>
            <option value="37">Lạng Sơn</option>
            <option value="38">Lào Cai</option>
            <option value="39">Lâm Đồng</option>
            <option value="40">Long An</option>
            <option value="41">Nam Định</option>
            <option value="42">Nghệ An</option>
            <option value="43">Ninh Bình</option>
            <option value="44">Ninh Thuận</option>
            <option value="45">Phú Thọ</option>
            <option value="46">Phú Yên</option>
            <option value="47">Quảng Bình</option>
            <option value="48">Quảng Nam</option>
            <option value="49">Quảng Ngãi</option>
            <option value="50">Quảng Ninh</option>
            <option value="51">Quảng Trị</option>
            <option value="52">Sóc Trăng</option>
            <option value="53">Sơn La</option>
            <option value="54">Tây Ninh</option>
            <option value="55">Thái Bình</option>
            <option value="56">Thái Nguyên</option>
            <option value="57">Thanh Hóa</option>
            <option value="58">Thừa Thiên-Huế</option>
            <option value="59">Tiền Giang</option>
            <option value="60">Trà Vinh</option>
            <option value="61">Tuyên Quang</option>
            <option value="62">Vĩnh Long</option>
            <option value="63">Vĩnh Phúc</option>
            <option value="64">Yên Bái</option>
            <option value="65">Toàn quốc</option>
            <option value="66">Nước ngoài</option>
            </select>
        </li>
        <li style="margin-right:  100px">
            <select name="Thoi_gian" >
                <option value="time"> Chọn thời gian</option>
                <option value="part_time"> Part time</option>
                <option value="full_time"> Full time</option>
            </select>
        </li>
        <li style="margin-right:  100px">
            <select name="luong">
                <option> Từ 5tr-7tr </option>
                <option> Từ 5tr-10tr </option>
                <option> Từ 10tr-15tr </option>
                <option> Từ 15tr-20tr </option>
                <option> Trên 20tr </option>
            </select>
        </li>
    </ul>
    <button>Tìm Kiếm</button>
    </div>
    <div id="wrapper">
                <div id=main>
                    <ul>
                        <li class="mySlides">
                <table style="width: 100%">
                    <tr>
                        <th colspan="8">VIỆC LÀM TUYỂN GẤP</th>
                    </tr>
                    <tr>
                        <td> <img src="catgheplayout/tệp ảnh/anh1.jpg" height="60px" width="110px"></td>
                        <td><a href="#"><h4>Quản Lý Nhà Hàng</h4></a></td>
                        <td> Công ty TNHH Latimo</td>
                        <td style="color: red"> 20 triệu - 25 triệu</td>
                    </tr>
                    <tr>
                        <td> <img src="catgheplayout/tệp ảnh/logo.jpg" height="60px" width="110px"></td>
                        <td><a href="#"><h4>Tài Xế Lái Xe 7 Chỗ</h4></a></td>
                        <td> Công ty Khánh Linh</td>
                        <td style="color: red"> 7 triệu - 10 triệu</td>
                    </tr>
                    <tr>
                        <td> <img src="catgheplayout/tệp ảnh/anh2.png" height="60px" width="110px"></td>
                        <td><a href="#"><h4>Kế Toán Tổng Hợp</h4></a></td>
                        <td> Công ty TNHH WHICOREA</td>
                        <td style="color: red"> 7 triệu - 10 triệu</td>
                    </tr>
                    <tr>
                        <td> <img src="catgheplayout/tệp ảnh/anh3.jpg" height="60px" width="110px"></td>
                        <td><a href="#"><h4>Hành Chính Nhân Sự</h4></a></td>
                        <td> CN Công ty TNHH LARIA</td>
                        <td style="color: red"> Thương Lượng</td>
                    </tr>
                    <tr>
                        <td> <img src="catgheplayout/tệp ảnh/anh4.jpg" height="60px" width="110px"></td>
                        <td><a href="#"><h4>Nhân Viên Kinh Doanh</h4></a></td>
                        <td> Công ty TNHH MEETC</td>
                        <td style="color: red"> 7 triệu - 10 triệu</td>
                    </tr>
                    <tr>
                        <td> <img src="catgheplayout/tệp ảnh/anh6.jpg" height="60px" width="110px"></td>
                        <td><a href="#"><h4>Nhân Viên Telesales</h4></a></td>
                        <td> Công ty Cổ phần Tư vấn và Truyền thông Niềm Tin</td>
                        <td style="color: red"> 7 triệu - 10 triệu</td>
                    </tr>
                    <tr>
                        <td> <img src="catgheplayout/tệp ảnh/anh7.jpg" height="60px" width="110px"></td>
                        <td><a href="#"><h4>Nhân Viên Văn Phòng Tư Vấn Truyền Thông</h4></a></td>
                        <td> CÔNG TY CP CÔNG NGHỆ TAKI VIỆT NAM</td>
                        <td style="color: red"> 7 triệu - 15 triệu</td>
                    </tr>
                    <tr>
                        <td> <img src="catgheplayout/tệp ảnh/anh5.jpg" height="60px" width="110px"></td>
                        <td><a href="#"><h4>Lập Trình Viên Java</h4></a></td>
                        <td> Tổ Hợp Công Nghệ Giáo Dục TOPICA</td>
                        <td style="color: red"> Tới 30 triệu</td>
                    </tr>
                     <tr>
                        <td> <img src="catgheplayout/tệp ảnh/anh8.jpg" height="60px" width="110px"></td>
                        <td><a href="#"><h4>Trợ Lý Giám Đốc</h4></a></td>
                        <td>Công Ty Cổ phần Thời trang Kowil Việt Nam S</td>
                        <td style="color: red"> 9-15 triệu</td>
                    </tr>
                    <tr>
                        <td> <img src="catgheplayout/tệp ảnh/anh9.jpg" height="60px" width="110px"></td>
                        <td><a href="#"><h4>NHÂN VIÊN KINH DOANH BẤT ĐỘNG SẢN</h4></a></td>
                        <td>Công Ty Cổ phần Thương mại và Dịch vụ Bất động sản Richland </td>
                        <td style="color: red"> 10-15 triệu</td>
                    </tr>
                </table>
            </li>
            <li class="mySlides">
                <table style="width: 100%">
                    <tr>
                        <th colspan="8">VIỆC LÀM TUYỂN GẤP</th>
                    </tr>
                    <tr>
                        <td> <img src="catgheplayout/tệp ảnh/anh11.jpg" height="60px" width="110px"></td>
                        <td><a href="#"><h4>CHUYÊN VIÊN TƯ VẤN KHÁCH HÀNG</h4></a></td>
                        <td> Công ty TNHH Truyền Thông và Quảng Cáo Siêu Kinh Doanh</td>
                        <td style="color: red">8-15 triệu </td>
                    </tr>
                    <tr>
                        <td> <img src="catgheplayout/tệp ảnh/anh12.jpg" height="60px" width="110px"></td>
                        <td><a href="#"><h4>Chuyển Viên DIGITAL MARKETING</h4></a></td>
                        <td> Di Động Mango</td>
                        <td style="color: red">8-20 triệu </td>
                    </tr>
                    <tr>
                        <td> <img src="catgheplayout/tệp ảnh/3.jpg" height="60px" width="110px"></td>
                        <td><a href="#"><h4>Đại Diện Kinh Doanh</h4></a></td>
                        <td> Công ty TNHH OH VACATION</td>
                        <td style="color: red"> 15 triệu - 30 triệu</td>
                    </tr>
                    <tr>
                        <td> <img src="catgheplayout/tệp ảnh/13.jpg" height="60px" width="110px"></td>
                        <td><a href="#"><h4>NHÂN VIÊN TƯ VẤN DỊCH VỤ VISA VÀ DU LỊCH CHÂU ÂU</h4></a></td>
                        <td> Công ty CP Tư vấn và Dịch vụ du lịch Eurovie Việt Nam</td>
                        <td style="color: red"> Tới 8 triệu</td>
                    </tr>
                    <tr>
                        <td> <img src="catgheplayout/tệp ảnh/banhang.jpg" height="60px" width="110px"></td>
                        <td><a href="#"><h4>Nhân Viên Bán Hàng</h4></a></td>
                        <td> Dalat Hasfarm</td>
                        <td style="color: red"> Trên 5 triệu</td>
                    </tr>
                    <tr>
                        <td> <img src="catgheplayout/tệp ảnh/1.jpg" height="60px" width="110px"></td>
                        <td><a href="#"><h4>Nhân Viên Tư Vấn Giáo Dục</h4></a></td>
                        <td> Apax Leader</td>
                        <td style="color: red"> Trên 8 triệu</td>
                    </tr>
                    <tr>
                        <td> <img src="catgheplayout/tệp ảnh/2.jpg" height="60px" width="110px"></td>
                        <td><a href="#"><h4>Nhân Viên Kinh Doanh</h4></a></td>
                        <td> Công ty CP Viễn thông FPT</td>
                        <td style="color: red"> Trên 10 triệu</td>
                    </tr>
                    <tr>
                        <td> <img src="catgheplayout/tệp ảnh/3.jpg" height="60px" width="110px"></td>
                        <td><a href="#"><h4>Nhân Viên Đặt Lịch Hẹn Qua Điện Thoại</h4></a></td>
                        <td>  Công ty TNHH OH VACATION</td>
                        <td style="color: red"> 6-10 triệu</td>
                    </tr>
                     <tr>
                        <td> <img src="catgheplayout/tệp ảnh/anh12.jpg" height="60px" width="110px"></td>
                        <td><a href="#"><h4>Content Writer</h4></a></td>
                        <td>Di Động Mango</td>
                        <td style="color: red"> 6-9 triệu</td>
                    </tr>
                    <tr>
                        <td> <img src="catgheplayout/tệp ảnh/anh10.jpg" height="60px" width="110px"></td>
                        <td><a href="#"><h4>Trưởng Nhóm Kinh Doanh</h4></a></td>
                        <td>Công Ty Cổ phần Đầu tư Kĩ thuật Việt </td>
                        <td style="color: red"> Trên 15 triệu</td>
                    </tr>
                </table>
            </li>
            <li class="mySlides">
                <table style="width: 100%">
                    <tr>
                        <th colspan="8">VIỆC LÀM TUYỂN GẤP</th>
                    </tr>
                    <tr>
                        <td> <img src="catgheplayout/tệp ảnh/4.jpg" height="60px" width="110px"></td>
                        <td><a href="#"><h4>Nhân Viên Bán Hàng</h4></a></td>
                        <td> KINGMILKJSC</td>
                        <td style="color: red"> Trên 3 triệu</td>
                    </tr>
                    <tr>
                        <td> <img src="catgheplayout/tệp ảnh/anh6.jpg" height="60px" width="110px"></td>
                        <td><a href="#"><h4>Nhân Viên Văn Phòng Tư Vấn Truyền Thông</h4></a></td>
                        <td> Công ty Cổ phần Tư vấn và Truyền thông Niềm Tin</td>
                        <td style="color: red"> 7 triệu - 10 triệu</td>
                    </tr>
                    <tr>
                        <td> <img src="catgheplayout/tệp ảnh/anh2.png" height="60px" width="110px"></td>
                        <td><a href="#"><h4>Kế Toán Tổng Hợp</h4></a></td>
                        <td> Công ty TNHH WHICOREA</td>
                        <td style="color: red"> 7 triệu - 10 triệu</td>
                    </tr>
                    <tr>
                        <td> <img src="catgheplayout/tệp ảnh/anh3.jpg" height="60px" width="110px"></td>
                        <td><a href="#"><h4>Hành Chính Nhân Sự</h4></a></td>
                        <td> CN Công ty TNHH LARIA</td>
                        <td style="color: red"> Thương Lượng</td>
                    </tr>
                    <tr>
                        <td> <img src="catgheplayout/tệp ảnh/anh4.jpg" height="60px" width="110px"></td>
                        <td><a href="#"><h4>Nhân Viên Kinh Doanh</h4></a></td>
                        <td> Công ty TNHH MEETC</td>
                        <td style="color: red"> 7 triệu - 10 triệu</td>
                    </tr>
                    <tr>
                        <td> <img src="catgheplayout/tệp ảnh/anh6.jpg" height="60px" width="110px"></td>
                        <td><a href="#"><h4>Nhân Viên Telesales</h4></a></td>
                        <td> Công ty Cổ phần Tư vấn và Truyền thông Niềm Tin</td>
                        <td style="color: red"> 7 triệu - 10 triệu</td>
                    </tr>
                    <tr>
                        <td> <img src="catgheplayout/tệp ảnh/anh7.jpg" height="60px" width="110px"></td>
                        <td><a href="#"><h4>Nhân Viên Văn Phòng Tư Vấn Truyền Thông</h4></a></td>
                        <td> CÔNG TY CP CÔNG NGHỆ TAKI VIỆT NAM</td>
                        <td style="color: red"> 7 triệu - 15 triệu</td>
                    </tr>
                    <tr>
                        <td> <img src="catgheplayout/tệp ảnh/anh5.jpg" height="60px" width="110px"></td>
                        <td><a href="#"><h4>Lập Trình Viên Java</h4></a></td>
                        <td> Tổ Hợp Công Nghệ Giáo Dục TOPICA</td>
                        <td style="color: red"> Tới 30 triệu</td>
                    </tr>
                     <tr>
                        <td> <img src="catgheplayout/tệp ảnh/anh8.jpg" height="60px" width="110px"></td>
                        <td><a href="#"><h4>Trợ Lý Giám Đốc</h4></a></td>
                        <td>Công Ty Cổ phần Thời trang Kowil Việt Nam S</td>
                        <td style="color: red"> 9-15 triệu</td>
                    </tr>
                    <tr>
                        <td> <img src="catgheplayout/tệp ảnh/anh9.jpg" height="60px" width="110px"></td>
                        <td><a href="#"><h4>NHÂN VIÊN KINH DOANH BẤT ĐỘNG SẢN</h4></a></td>
                        <td>Công Ty Cổ phần Thương mại và Dịch vụ Bất động sản Richland </td>
                        <td style="color: red"> 10-15 triệu</td>
                    </tr>
                </table>
            </li>
            <li class="mySlides">
                <table style="width: 100%">
                    <tr>
                        <th colspan="8">VIỆC LÀM TUYỂN GẤP</th>
                    </tr>
                    <tr>
                        <td> <img src="catgheplayout/tệp ảnh/anh1.jpg" height="60px" width="110px"></td>
                        <td><a href="#"><h4>Quản Lý Nhà Hàng</h4></a></td>
                        <td> Công ty TNHH Latimo</td>
                        <td style="color: red"> 20 triệu - 25 triệu</td>
                    </tr>
                    <tr>
                        <td> <img src="catgheplayout/tệp ảnh/logo.jpg" height="60px" width="110px"></td>
                        <td><a href="#"><h4>Tài Xế Lái Xe 7 Chỗ</h4></a></td>
                        <td> Công ty Khánh Linh</td>
                        <td style="color: red"> 7 triệu - 10 triệu</td>
                    </tr>
                    <tr>
                        <td> <img src="catgheplayout/tệp ảnh/anh2.png" height="60px" width="110px"></td>
                        <td><a href="#"><h4>Kế Toán Tổng Hợp</h4></a></td>
                        <td> Công ty TNHH WHICOREA</td>
                        <td style="color: red"> 7 triệu - 10 triệu</td>
                    </tr>
                </table>
            </li>
        </ul>
            </div>
                <div style="text-align:center">
        <span class="dot" onclick="currentSlide(0)"></span> 
        <span class="dot" onclick="currentSlide(1)"></span> 
        <span class="dot" onclick="currentSlide(2)"></span> 
        <span class="dot" onclick="currentSlide(3)"></span> 
        </div>
        <script>
        //khai báo biến slideIndex đại diện cho slide hiện tại
        var slideIndex;
        // KHai bào hàm hiển thị slide
        function showSlides() {
            var i;
            var slides = document.getElementsByClassName("mySlides");
            var dots = document.getElementsByClassName("dot");
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";  
            }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }
        
            slides[slideIndex].style.display = "block";  
            dots[slideIndex].className += " active";
            //chuyển đến slide tiếp theo
            slideIndex++;
            //nếu đang ở slide cuối cùng thì chuyển về slide đầu
            if (slideIndex > slides.length - 1) {
                slideIndex = 0
            }    
            //tự động chuyển đổi slide sau 5s
            setTimeout(showSlides, 4000);
        }
        //mặc định hiển thị slide đầu tiên 
        showSlides(slideIndex = 0);
        
        
        function currentSlide(n) {
            showSlides(slideIndex = n);
        }
        </script>
            <div id=below>
                <table style="width: 100%"></table>
            </div>
    </div>
        
    <div id="advertise"></div>
    <div id="buttom">
        <table style="width:100%">
           <tr>
               <th colspan="2">VIỆC LÀM THEO NGÀNH NGHỀ</th>
               <th colspan="2">VIỆC LÀM THEO KHU VỰC</th> 
           </tr>
           <tr>
               <td ><a href=#>Việc làm Bán hàng</a></td>
               <td ><a href=#>Việc làm IT phần mềm</a></td>
               <td ><a href=#>Việc làm tại TP.HCM</a></td>
               <td ><a href=#>Việc làm tại Đà Nẵng</a></td>
           </tr>
           <tr>
               <td><a href=#>Việc làm Hành chính-Văn phòng</a></td>
               <td><a href=#>Việc làm Kiến trúc-TK nội thất</a></td>
               <td><a href=#>Việc làm tại Hà Nội</a></td>
               <td><a href=#>Việc làm tại Đồng Nai</a></td>
           </tr>
           <tr>
                <td><a href=#>Việc làm Kế toán-Kiểm toán</a></td>
                <td><a href=#>Việc làm bán thời gian</a></td>
                <td><a href=#>Việc làm tại Bắc Ninh</a></td>
                <td><a href=#>Việc làm tại Hải Dương</a></td>
           </tr>
           <tr>
               <td><a href=#>Việc làm Marketing-PR</a></td>
               <td><a href=#>Việc làm Thực tập</a></td>
               <td><a href=#>Việc làm tại Bình Dương</a></td>
               <td><a href=#>Việc làm tại Hải Phòng</a></td>
           </tr>
           <tr>
               <td><a href=#>Việc làm Nhân viên kinh doanh</a></td>
               <td><a href=#>Việc làm Xây dựng</a></td>
               <td><a href=#>Việc làm tại Cần Thơ</a></td>
               <td><a href=#>Việc làm tại Long An</a></td>
           </tr>
           <tr>
               <td><a href=# style="color: blue">Xem tất cả ngành nghề &#8594</a></td>
               <td><a href=# style="color: blue">Xem tất cả khu vực &#8594</a></td>
           </tr>
        </table>
    </div>
</body>
</html>
