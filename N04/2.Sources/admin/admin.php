<?php
session_start();
if($_SESSION["level"]==2){
echo "Trang quản trị dành cho admin,<a href='../btlon.php'>(Đăng xuất)</a>";}
else{
    header("location:../btlon.php");
    exit();
}
?>