<?php
    $loi=array();
    $congty=$anh=$nd=$congviec=NULL;
    $loi["txtct"]= $loi["txtcv"]= $loi["txtnd"]= $loi["kq"]=NULL;
        if(isset($_POST["ok"]))
        {
            if(empty($_POST["txtct"]))
            {
                $loi["txtct"]="*Xin vui lòng nhập tên công ty</br>";
            }
            else { $congty=$_POST["txtct"];}

            if(empty($_POST["txtcv"]))
            {
                $loi["txtcv"]="*Xin vui lòng nhập tên công việc </br>";
            }
            else { $congviec=$_POST["txtcv"];}

           
            if(empty($_POST["txtnd"]))
            {
                $loi["txtnd"]="*Xin vui lòng nhập mô tả về công việc</br>";
            }
            else { $nd=$_POST["txtnd"];}
            if($congty && $congviec  && $nd)
            {
                $conn =  mysqli_connect("localhost","root","","login");
                if(!$conn){
                    die('Ket noi that bai'.mysqli_connect_error());
                }
                mysqli_set_charset($conn,"utf8");
                $sql=("insert into congviec(tenct,congviec,mota) values('$congty','$congviec','$nd')");
                if (mysqli_query($conn, $sql))
                //Thông báo nếu thành công
                $loi["kq"]='Thêm  thành công';
            else
                //Hiện thông báo khi không thành công
                $loi["kq"]= 'Không thành công. Lỗi' . mysqli_error($conn);
            //ngắt kết nối
            mysqli_close($conn);
            }
        }
    ?>
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
    <div id="contain">
        <fieldset style="wight:600px;height:450px;margin:40px auto 10px;">
        <legend> Thêm bài viết</legend>
        <form action="thembaiviet.php" method="POST" >
            <table>
                <tr>
                    <td>Công ty</td>
                    <td><input type="text" size="70" name="txtct"></td>                
                </tr>
                <tr>
                    <td>Công việc</td>
                    <td><input type="text" size="70" name="txtcv"></td>                
                </tr>
                
                <tr>
                    <td>Nội dung bài viết</td>
                    <td><textarea cols="55" rows="10" name="txtnd"></textarea></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Thêm" name="ok"></td>
                </tr>
            </table>
        </form>
        <div style="color:red">
            <?php
                echo $loi["txtct"]; 
                echo $loi["txtcv"];
                echo $loi["txtnd"];
                echo $loi["kq"] ;       
            ?>
        </div>
        </fieldset>
    </div>
    
</body>
</html>