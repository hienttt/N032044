<?php
$loi=array();
$user=$pass=$mail=$level=NULL;
$loi["username"]=$loi["level"]=NULL;
$loi["password"]=NULL;
$loi["email"]=$loi["register"]=NULL;

if(isset($_POST['ok']))
{
    if(empty($_POST['txtn']))
    {
        $loi["username"]="* Xin vui lòng nhập lại username</br>";
    }
    else{
        $user=$_POST['txtn'];
    }
    if(empty($_POST['txtp']))
    {
        $loi["password"]="* Xin vui lòng nhập lại mật khẩu</br>";
    }
    else
    {
        $pass=md5($_POST['txtp']);
    }
    if(empty($_POST['txtmail']))
    {
        $loi["email"]="* Xin vui lòng nhập lại mail</br>";
    }
    else
    {
        $mail=$_POST['txtmail'];
    }
    if(empty($_POST['access']))
    {
        $loi["level"]="* Xin vui lòng chọn tư cách đăng nhập</br>";
    }
    else
    {
        $level=$_POST['access'];
    }
     if($user && $pass &&  $mail && $level)
    {
        $conn =  mysqli_connect("localhost","root","","login");
        if(!$conn){
            die('Ket noi that bai'.mysqli_connect_error());
        }
        mysqli_set_charset($conn,"utf8");
        $sqli_checkuser = "SELECT * FROM users WHERE name='$user' AND email='$mail'";
        $resultcheck = mysqli_query($conn,$sqli_checkuser);
        $check=mysqli_fetch_row($resultcheck);
        if($check)
            {
            $loi["register"]="Tài khoản đã tồn tại vui lòng đăng ký lại</br>";
            }

        else
        {
            $sql = "INSERT INTO users (name , pass,email,level) VALUES ('$user','$pass','$mail','$level')";
         if (mysqli_query($conn, $sql))
                //Thông báo nếu thành công
                $loi["register"]='Đăng ký thành công';
            else
                //Hiện thông báo khi không thành công
                $loi["register"]= 'Không thành công. Lỗi' . mysqli_error($conn);
            //ngắt kết nối
            mysqli_close($conn);
        }
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Tìm kiếm việc làm</title>
    <link rel="stylesheet" href="btlon.css" type="text/css">
    <script type="text/javascript" src="btlon.js"></script>
    <script src="btlon/jquery-3.3.1.min.js"></script>
    <script>
    $(document).ready(function())</script>
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
<fieldset style="width:500px;margin:50px auto 0px;height:200px">
    <form action="dangky.php" method="POST">
        <table cellspacing="15px">
            <tr>
                <td > Họ và tên: </td>
                <td> <input type="text" name="txtn"></td>
            </tr>
            <tr>
                <td> Mật khẩu:</td>
                <td><input type="password" name="txtp"></td>
            </tr>
            <tr>
            <td>Email:</td>
            <td><input type="text" name="txtmail"></td>
            </tr>
            <tr>
            <td>Đăng ký với tư cách</td>
            <td>
            <input type="radio" name="access" value="1">Người xin việc 
            <input type="radio" name="access" value="2">Nhà tuyển dụng
            </td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" name="ok" value="Đăng ký"></td>
            </tr>
        </table>
    </form>
 </fieldset>  
 <div style="width:300px;margin:10px auto;height:150px;text-align:center;corlor:red">
<?php
    echo $loi["username"];
    echo $loi["password"];
    echo $loi["email"];
    echo $loi["register"];
?>
 </div> 
    <?php
require('catgheplayout/buttom.php');
?>