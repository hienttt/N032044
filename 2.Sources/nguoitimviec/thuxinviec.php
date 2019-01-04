 <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Tìm kiếm việc làm</title>
    <link rel="stylesheet" href="nguoixinviec.css" type="text/css">
    <script src="timviec/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="btlon.js"></script>
    <script>
    $(document).ready(function())</script>
</head>
<body>
    <div id="top">
        <a href="../btlon.php"><img src="../catgheplayout/tệp ảnh/logo.jpg" alt="logo"  height="200px" width="800px"></a>
    </div>
    <div id= "wrapper">
        <ul >            
            <li><a href="btlon1.php">Trang chủ</a></li>
            <li><a href="hosoxinviec.php">Hồ sơ xin việc của tôi </a>
            </li>
            <li><a href="thuxinviec.php">Thư xin việc của tôi</a>
            </li>
            <li><a href="../btlon.php">Đăng xuất</a></li>

        </ul>
    </div>
    <div style="width: 1000px;height: 200px;margin: auto;">
        <div style="height: 30px;background-color: rgb(100,100,100);color: white;">
            <h3 > Thư xin việc của tôi</h3>
        </div>
        
            <div style="height: 50px;">
                <button  class="text-right" type="button" >
                    <a style="text-decoration: none;color: black;" href="taothuxinviec.php">Tạo thư xin việc mới</a>
                </button> 
        </div>
        <div  style="height: 50px";>      
            <button  class="text-right" type="button" >
                <a style="text-decoration: none;color: black; "href="Xemthu.php">Xem thư xin việc của tôi</a>
            </button>
        </div>
    </div>
    <?php
require('../catgheplayout/buttom.php');
?>