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
    <form action="timkiem.php" method="POST">
        <ul>
        <li style="margin-right : 100px" >
            <select name="cong_viec" >
                <option value=""> Công việc</option>
                <option value="Kinh doanh">Kinh doanh</option>                                                      
                <option value="Bán hàng">Bán hàng</option>
                <option value="Lao động phổ thông">Lao động phổ thông</option>
                <option value="Chăm sóc khách hàng">Chăm sóc khách hàng</option>
                <option value="Kế toán">Tài chính/Kế toán/Kiểm toán</option>
                <option value="Thư ký">Hành chính/Thư ký/Trợ lý</option>
                <option value="Thực tập">Sinh viên/Mới tốt nghiệp/Thực tập</option>
                <option value="Cơ khí">Cơ khí/Kĩ thuật ứng dụng</option>
                <option value="Điện lạnh">Điện/Điện tử/Điện lạnh</option>
                <option value="Biên tập viên">Báo chí/Biên tập viên</option>
                <option value="An ninh">Bảo vệ/Vệ sĩ/An ninh</option>
                <option value="Bất động sản">Bất động sản</option>
                <option value="Phiên dịch">Biên dịch/Phiên dịch</option>
                <option value="Bưu chính viễn thông">Bưu chính viễn thông</option>
                <option value="Công nghệ thông tin">Công nghệ thông tin</option>
                <option value="Dầu khí">Dầu khí/Địa chất</option>
                <option value="Dệt may">Dệt may</option>
                <option value="Du lịch">Du lịch/Nhà hàng/Khách sạn</option>
                <option value="Sinh hóa">Dược/Hóa chất/Sinh hóa</option>
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
            <option value="Hồ Chí Minh">Hồ Chí Minh</option>
            <option value="Hà Nội">Hà Nội</option>
            <option value="An Giang">An Giang</option>
            <option value="Bạc Liêu">Bạc Liêu</option>
            <option value="Bà Rịa-Vũng Tàu">Bà Rịa-Vũng Tàu</option>
            <option value="Bắc Cạn">Bắc Cạn</option>
            <option value="Bắc Giang">Bắc Giang</option>
            <option value="Bắc Ninh">Bắc Ninh</option>
            <option value="Bến Tre">Bến Tre</option>
            <option value="Bình Dương">Bình Dương</option>
            <option value="Bình Định">Bình Định</option>
            <option value="Bình Phước">Bình Phước</option>
            <option value="Bình Thuận">Bình Thuận</option>
            <option value="Cao Bằng">Cao Bằng</option>
            <option value="Cà Mau">Cà Mau</option>
            <option value="Cần Thơ">Cần Thơ</option>
            <option value="Đà Nẵng">Đà Nẵng</option>
            <option value="Đắk Lắk">Đắk Lắk</option>
            <option value="Đắk Nôn">Đắk Nông</option>
            <option value="Điện Biên">Điện Biên</option>
            <option value="Đồng Nai">Đồng Nai</option>
            <option value="Đồng Tháp">Đồng Tháp</option>
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
                <option value=""> Chọn thời gian</option>
                <option value="Part time"> Part time</option>
                <option value="Full time"> Full time</option>
            </select>
        </li>
        <li style="margin-right:  100px">
            <select name="luong">
                <option value="">Chọn lương</option>
                <option value="Từ 5tr-7tr"> Từ 5tr-7tr </option>
                <option value="Từ 7tr-10tr"> Từ 7tr-10tr </option>
                <option value="Từ 10tr-15tr"> Từ 10tr-15tr </option>
                <option value="Từ 15tr-20tr"> Từ 15tr-20tr </option>
                <option value="Trên 20tr"> Trên 20tr </option>
                <option value="Thỏa thuận"> Thỏa thuận </option>
            </select>
        </li>
    </ul>
    <input type="submit" name="ok" value="Tìm Kiếm">
    </form >
    </div>
    <div id="wrapper">
        
        <table>
               
    <?php
   
    $congviec=$diadiem=$thoigian=$luong=NULL;
    if(isset($_POST['ok']))
    {
        if(isset($_POST['cong_viec'])) { $congviec= $_POST['cong_viec']; }
        if(isset($_POST['Tinh_thanh'])) {$diadiem= $_POST['Tinh_thanh']; }
        if(isset($_POST['Thoi_gian'])) { $thoigian= $_POST['Thoi_gian']; }
        if(isset($_POST['luong'])) { $luong= $_POST['luong']; }
         if($congviec || $diadiem ||  $thoigian || $luong)
        {
            $conn =  mysqli_connect("localhost","root","","login");
            if(!$conn){
                die('Ket noi that bai'.mysqli_connect_error());
            }
            mysqli_set_charset($conn,"utf8");
            $sqli = "SELECT tenct,tencv,tendd,thoigian,luong from congty where 'tencv' like'%$congviec%' or 'tendd' like'%$diadiem%' or 'thoigian' or '%$thoigian%' or 'luong' like'%$luong%' ";
            $result = mysqli_query($conn,$sqli);
            $check=mysqli_num_rows($result);
            if($check==0)
                {
                    echo "Không có kết quả phù hợp";
                }
                else{
                    echo "Có $check kết quả";
                    while($data=mysqli_fetch_assoc($result)){
                        
                        echo "<tr>";
                            echo "<td>$data[tenct]</td>";
                            echo "<td>$data[tencv]</td>";
                            echo "<td>$data[tendd]</td>";
                            echo "<td>$data[thoigian]</td>";
                            echo "<td>$data[luong]</td>";
                        echo"</tr>";   
                    
                        }
                }
                //ngắt kết nối
                mysqli_close($conn);
            }
        }
    ?>
    </table>
    </div>
    <?php
require('catgheplayout/buttom.php');
?>