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
    <form action="timkiem.php" method="POST" >
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
                <option value="1"> Part time</option>
                <option value="2"> Full time</option>
            </select>
        </li>
        <li style="margin-right:  100px">
            <select name="luong">
                <option value="1"> Từ 5tr-7tr </option>
                <option value="2"> Từ 7tr-10tr </option>
                <option value="3"> Từ 10tr-15tr </option>
                <option value="4"> Từ 15tr-20tr </option>
                <option value="5"> Trên 20tr </option>
                <option value="6"> Thỏa thuận </option>
            </select>
        </li>
    </ul>
    <input type="submit" name="ok" value="Tìm Kiếm">
    </form >
    <div id="wrapper">
    <table>
               
    <?php
   
    $congviec=$diadiem=$thoigian=$luong=NULL;
    if(isset($_POST['ok']))
    {
        if(isset($_POST['cong_viec'])) { $congviec= $_POST['cong_viec']; }
        if(isset($_POST['Tinh_thanh'])) {$Tinh_thanh= $_POST['Tinh_thanh']; }
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
    <?php
require('catgheplayout/buttom.php');
?>