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
    
<?php
session_start();
$loi=array();
$pass=$mail=NULL;
$loi["password"]=NULL;
$loi["email"]=$loi["login"]=NULL;

if(isset($_POST['ok']))
{
    if(empty($_POST['txtmail']))
    {
        $loi["email"]="* Xin vui lòng nhập lại mail</br>";
    }
    else
    {
        $mail=$_POST['txtmail'];}
    if(empty($_POST['txtpass']))
        {
            $loi["password"]="* Xin vui lòng nhập lại mật khẩu</br>";
        }
        else
        {
            $pass=md5($_POST['txtpass']);
        }   
        if( $pass &&  $mail)
        {
            $conn =  mysqli_connect("localhost","root","","login");
            if(!$conn){
                die('Ket noi that bai'.mysqli_connect_error());
            } 
            mysqli_set_charset($conn,"utf8");
            $sqli = "SELECT * FROM users WHERE pass='$pass' AND email='$mail'";
            $result = mysqli_query($conn,$sqli);
            $check=mysqli_num_rows($result);
        if($check==1)
            {
                $data=mysqli_fetch_assoc($result);
                $_SESSION["level"]=$data["level"];
                if($_SESSION["level"]==3){
                    header("location:admin/admin.php");
                    exit();
                }
                else{
                    if($_SESSION["level"]==2){
                    header("location:nhatuyendung.php");
                     exit();}
                    else{
                        header("location:nguoixinviec.php");
                        exit();
                    }
                    }
            }
            else{
                $loi["login"]="Sai email hoặc mật khẩu";
            }
            mysqli_close($conn);
        }
}
?>
<fieldset style="width:300px;margin:50px auto 0px;height:150px">
    <form action="dangnhap.php" method="POST">
        <table cellspacing="15px">
            <tr>
                <td> Email: </td>
                <td> <input type="text" name="txtmail"></td>
            </tr>
            <tr>
                <td> Mật khẩu:</td>
                <td><input type="password" name="txtpass"></td>
            </tr>
            <tr>
                <td><input type="submit" name="ok" value="login"></td>
                <td> <a href="dangky.php">Đăng ký tài khoản</a></td>
            </tr>
        </table>
        
    </form>
</fieldset>
<div style="width:300px;margin:10px auto;height:150px;text-align:center;corlor:red">
<?php
    
    echo $loi["password"];
    echo $loi["email"];
    echo $loi["login"];
?>
 </div> 
 <?php
require('catgheplayout/buttom.php');
?>