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
        </ul>
    </div>
    <div id="wrapper">
        <table>
            <tr > 
                <th>STT</th>
                <th>Người dùng</th>
                <th>Email</th>
                <th>Quyền truy cập</th>
                <th>Xóa</th>
            </tr>
            <?php
                $conn =  mysqli_connect("localhost","root","","login");
                if(!$conn){
                    die('Ket noi that bai'.mysqli_connect_error());
                }
                $stt=1;
                $sql=("select name,email,level from users");
                $result=mysqli_query($conn,$sql);
                while($data=mysqli_fetch_assoc($result)){
                echo "<tr>";
                    echo "<td>$stt</td>";
                    echo "<td>$data[name]</td>";
                    echo "<td>$data[email]</td>";
                    if($data['level']==1)
                    {
                        echo"<td>Người tìm việc</td>";
                    }
                    else{
                        if($data['level']==2)
                            {
                                echo"<td>Nhà tuyển dụng</td>";
                            }
                            else{
                                echo "<td> Admin</td>";
                            }
                    }
                    echo "<td><a href='#' style='color:red'>Xóa</a></td>";
                echo"</tr>";   
                $stt++; 
                }
            ?>
        </table>
    </div>
</body>
</html>