<?php
    $loi=array();
    $congty=$anh=$nd=$congviec=$luong=$thoigian=$diadiem=$han=NULL;
    $loi["txtct"]= $loi["txtcv"]= $loi["txtnd"]= $loi["kq"]=$loi["txth"]=$loi["txtdc"]=$loi["txtlg"]=$loi["txttg"]=NULL;
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

            if(empty($_POST["txtdc"]))
            {
                $loi["txtdc"]="*Xin vui lòng nhập tên địa chỉ </br>";
            }
            else { $diadiem=$_POST["txtdc"];}

            if(empty($_POST["txttg"]))
            {
                $loi["txttg"]="*Xin vui lòng nhập thời gian làm việc </br>";
            }
            else { $thoigian=$_POST["txttg"];}

            if(empty($_POST["txtlg"]))
            {
                $loi["txtlg"]="*Xin vui thêm lương cho công việc </br>";
            }
            else { $luong=$_POST["txtlg"];}

            if(empty($_POST["txth"]))
            {
                $loi["txth"]="*Xin vui lòng nhập hạn nộp hồ sơ </br>";
            }
            else {
                $date = $_POST["txth"]; 
                $han = date("Y-m-d", $date); 
                }
           
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
                $sql=("insert into congviec(tenct,congviec,mota,luong,tg,diadiem,hannop) values('$congty','$congviec','$nd','$luong','$thoigian','$diadiem','$han')");
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
            <table cellspacing="15px">
                <tr>
                    <td>Công ty</td>
                    <td><input type="text" size="70" name="txtct"></td>                
                </tr>
                <tr>
                    <td>Công việc</td>
                    <td><input type="text" size="70" name="txtcv"></td>                
                </tr>
                <tr>
                    <td>Địa điểm:</td>
                    <td><input type="text" size="70" name="txtdc"></td>
                </tr>
                <tr>
                    <td>Thời gian:</td>
                    <td><input type="text"  name="txttg"></td>
                </tr>
                <tr>
                    <td>Lương:</td>
                    <td><input type="text"  name="txtlg"></td>
                </tr>
                <tr>
                    <td>Hạn nộp hồ sơ:</td>
                    <td><input type="text"  name="txth"></td>
                </tr>
                <tr>
                    <td>Nội dung:</td>
                    <td><textarea cols="60" rows="10" name="txtnd"></textarea></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Thêm" name="ok" size="50"></td>
                </tr>
            </table>
        </form>
        <div style="color:red">
            <?php
                echo $loi["txtct"]; 
                echo $loi["txtcv"];
                echo $loi["txtnd"];
                echo $loi["txttg"];
                echo $loi["txtlg"];
                echo $loi["txtdc"];
                echo $loi["txth"];
                echo $loi["kq"] ;       
            ?>
        </div>
        </fieldset>
    </div>
    
</body>
</html>