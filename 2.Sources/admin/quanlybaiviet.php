<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Trang quản lý</title>
    <link rel="stylesheet" type="text/css" href="admin.css">
</head>
<body>
    <div id="top">
        <h3> Chào mừng admin <a href="../btlon.php">Đăng xuất</a></h3>
    </div>
    <div id="menu">
        <ul>
        <li><a href="quanlybaiviet.php" > Quản lý bài viết</a></li>
        <li><a href="quanlytaikhoan.php"> Quản lý tài khoản</a></li>
        <li><a href="quanlycongty.php"> Quản lý công ty</a></li>
        </ul>
    </div>
    <div id="wrapper">
    <table>
            <tr > 
                <td>STT</td>
                <td>Công ty</td>
                <td>Công việc</td>
                <td>Nội dung bài viết</td>
                <td>Xóa</td>
                <td>Sửa</td>
                <td>Xem chi tiết</td>
            </tr>
            <?php
                $conn =  mysqli_connect("localhost","root","","login");
                if(!$conn){
                    die('Ket noi that bai'.mysqli_connect_error());
                }
                mysqli_set_charset($conn,"utf8");
                $stt=1;
                $sql=("select tenct,congviec,mota from congviec");
                $result=mysqli_query($conn,$sql);
                while($data=mysqli_fetch_assoc($result)){
                echo "<tr>";
                    echo "<td>$stt</td>";
                    echo "<td>$data[tenct]</td>";
                    echo "<td>$data[congviec]</td>";
                    echo "<td>$data[mota]</td>";
                    }
                    echo "<td><a href='#' style='color:red'>Xóa</a></td>";
                    echo "<td><a href='#' style='color:blue'>Sửa</a></td>";
                    echo "<td><a href='#' style='color:violet'>Xem chi tiết</a></td>";
                echo"</tr>";   
                $stt++; 
                
            ?>
             <tr>
                <td colspan="7"><a href="thembaiviet.php">Thêm bài viết</a> </td>
            </tr>
            <tr>
                <td colspan="7"><a href="duyetbaiviet.php">Duyệt bài viết</a> </td>
            </tr>
        </table>
    </div>
</body>
</html>  