<?php
require('catgheplayout/header.php');
?>
<?php
$congviec=$_GET['cong_viec'];
$diadiem=$_GET['Tinh_thanh'];
$thoigian=$_GET['Thoi_gian'];
$luong=$_Get['luong'];
require("btlon/chuyenchu.php");
$congviec_khongdau=unicode_convert($congviec);
$diadiem_khongdau=unicode_convert($diadiem);
$thoigian_khongdau=unicode_convert($thoigian);
$luong_khongdau=unicode_convert($luong);
//ket noi du lieu
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "job";
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
//truy van và xu ly
$result=mysql_query("select congviec,diadiem,thoigian,luong from job
                        where congviec like '$congviec' 
                        or diadiem like'$diadiem'
                        or thoigian like '$thoigian'
                        or luong like '$luong' ")
if(mysqli_num_rows($result)==0){
    echo"<p>Không tìm thấy kết quả tìm kiếm nào";
}                        
else{
    $number=mysqli_num_rows($result);
    echo"Tìm thấy $number kết quả tìm kiếm";
    while ($data=mysqli_fetch_assoc($result)){
        echo"<table>";
            echo"<tr>";
                echo"<td>";
                echo"<a=href'#'>";
                    echo"<p>$data[congviec]</p>";
                echo"</a>";
                echo"</td>";
            echo"</tr>";
            echo"<tr>";
                echo"<td>";
                echo"<a=href'#'>";
                    echo"<p>$data[diadiem]</p>";
                echo"</a>";
                echo"</td>";
            echo"</tr>";
            echo"<tr>";
                echo"<td>";
                echo"<a=href'#'>";
                    echo"<p>$data[thoigian]</p>";
                echo"</a>";
                echo"</td>";
            echo"</tr>";
            echo"<tr>";
                echo"<td>";
                echo"<a=href'#'>";
                    echo"<p>$data[luong]</p>";
                echo"</a>";
                echo"</td>";
            echo"</tr>";
    }
}
<p>Kết quả tìm kiếm</p>
<div class='results'>
</div>
}
?>
<?php
require('catgheplayout/buttom.php');
?>