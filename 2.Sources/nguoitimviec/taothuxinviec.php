<?php
   $loi=array();
    $tieude=$tinnhan=NULL;
    $loi["tieude"]=$loi["tinnhan"]=$loi["kq"]=NULL;
    if(isset($_POST["ok"]))
    {
        if (empty($_POST["txttd"])) 
        {
            $loi["tieude"]="* Xin vui lòng nhập tiêu đề </br>";
        }
        else{
            $tieude=$_POST["txttd"];
        }
        if (empty($_POST["txttn"])) 
        {
            $loi["tinnhan"]="* Xin vui lòng nhập tin nhắn </br>";
        }
        else{
            $tinnhan=$_POST["txttn"];
        }
        if($tieude && $tinnhan)
        {
          $conn =  mysqli_connect("localhost","root","","vieclam");
                if(!$conn){
                    die('Ket noi that bai'.mysqli_connect_error());
                }
                mysqli_set_charset($conn,"utf8"); 
                $sql=("insert into thu(tieude,tinnhan) values ('$tieude','$tinnhan')"); 
                if (mysqli_query($conn, $sql))
                        //Thông báo nếu thành công
                        $loi["kq"]='Tạo  thành công';
                    else
                        //Hiện thông báo khi không thành công
                        $loi["kq"]= 'Không thành công. Lỗi' . mysqli_error($conn);
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
    <link rel="stylesheet" href="nguoixinviec.css" type="text/css">
    <script src="timviec/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="btlon.js"></script>
</head>
<body>
    <div id="top">
        <a href="btlon.php"><img src="../catgheplayout/tệp ảnh/logo.jpg" alt="logo"  height="200px" width="800px"></a>
    </div>
    <div id= "wrapper">
        <ul >            
            <li><a href="nguoixinviec.php">Trang quản lý</a></li>
            <li><a href="/nguoi-tim-viec/ho-so">Hồ sơ xin việc của tôi </a>
            </li>
            <li><a href="/nguoi-tim-viec/thu-xin-viec">Thư xin việc của tôi</a>
            </li>
            <li><a href="../btlon.php">Đăng xuất</a></li>

        </ul>
    </div>
    <div class="contain"  style="height: 525px;">
        <fieldset style="width:975px;margin:40px auto 10px; ">
            <legend> Thư Xin Việc</legend>
            <p  class="pull-right" style="text-align: right;"> <br>
        Những mục có dấu sao<strong class="text-danger">*</strong>  là bắt buộc.    </p>
        <form action="taothuxinviec.php" method="POST">
            <table cellpadding="15px" style="width: 100%">
                <tr>
                    <td><strong class="text-danger">*</strong>Tiêu đề:</td>
                    <td><input type="text" size="79" name="txttd"></td>
                </tr>
                <tr>
                    <td><strong class="text-danger">*</strong>Tin nhắn:</td>
                    <td><textarea cols="80" rows="20" name="txttn"></textarea></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Chấp nhận" name="ok" size="50"></td>
                </tr>
            </table>
        </form>
        </fieldset>
    </div>
     <div style="color:red;margin: auto;width: 200px;">
                <?php
                    echo $loi["kq"];
                    echo $loi["tieude"];
                    echo $loi["tinnhan"];
                ?>
            </div> 
   <br>
    <?php
require('../catgheplayout/buttom.php');
?>
</body>
</html>