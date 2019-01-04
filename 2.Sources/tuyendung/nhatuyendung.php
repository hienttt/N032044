<?php
                $conn =  mysqli_connect("localhost","root","","vieclam");
                if(!$conn){
                    die('Ket noi that bai'.mysqli_connect_error());
                }
                mysqli_set_charset($conn,"utf8");
                $stt=1;
                $sql=("select * from congty");
                $result=mysqli_query($conn,$sql);
                $data=mysqli_fetch_assoc($result);
                $id=$data['id_ct'];
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Trang quản lý</title>
    <link rel="stylesheet" type="text/css" href="../admin/admin.css">
</head>
<body>
     <div id="top">
        <h3>Chào mừng bạn  <a href="../btlon.php">Đăng xuất</a></h3>
    </div>
    <div id="menu">
            <ul>
                <li><a href="tuyendung.php?id=$data[id_ct]" >Đăng bài tuyển dụng</a></li>
                <li><a href="thongtin.php?id=$data[id_ct]">Thông tin công ty</a></li>
                <li><a href="xemcv.php">Xem hồ sơ đã đăng ký</a></li>
            </ul>
    </div>
</body>
</html>
