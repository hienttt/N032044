<?php
if($_SESSION["level"]==2){
    echo"Trang quản trị của admin,<a href='admin.php'>(Đăng xuất)</a>";
}
else{
    header("location:btlon.php");
    exit();
}
?>