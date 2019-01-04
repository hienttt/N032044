<?php
   $loi=array();
    $hoten=$gioitinh=$ngaysinh=$hocvan=$diachi=$email=$kinhnghiem=$ngonngu=$sodienthoai=$thongtinkhac=NULL;
    $loi["hoten"]=$loi["gioitinh"]=$loi["ngaysinh"]=$loi["hocvan"]=$loi["ngonngu"]=NULL;
    $loi["diachi"]=$loi["email"]=$loi["sodienthoai"]=$loi["kq"]=NULL;
    if(isset($_POST["ok"]))
    {
    
        if(empty($_POST["txtht"]))
        {
            $loi["hoten"]="* Xin vui lòng nhập họ và tên</br>";
        }
        else
        {
            $hoten=$_POST["txtht"];
        }

        if(empty($_POST["gt"]))
        {
            $loi["gioitinh"]="* Xin vui lòng nhập lại giới tính</br>";
        }
        else
        {
            $gioitinh=$_POST["gt"];
        }
        
        if(empty($_POST["txtns"]))
        {
            $loi["ngaysinh"]="* Xin vui lòng nhập ngày sinh</br>";
        }
        else
        {
            $ngaysinh=$_POST["txtns"];
        }

        if(empty($_POST["txthv"]))
        {
            $loi["hocvan"]="* Xin vui lòng nhập học vấn</br>";
        }
        else
        {
            $hocvan=$_POST["txthv"];
        }
        
        
        if(empty($_POST["txtdc"]))
        {
            $loi["diachi"]="* Xin vui lòng nhập địa chỉ</br>";
        }
        else
        {
            $diachi=$_POST["txtdc"];
        }

        if(empty($_POST["txtmail"]))
        {
            $loi["email"]="* Xin vui lòng nhập email</br>";
        }
        else
        {
            $email=$_POST["txtmail"];
        }

        if(empty($_POST["txtnn"]))
        {
            $loi["ngonngu"]="* Xin vui lòng nhập ngôn ngữ</br>";
        }
        else
        {
            $ngonngu=$_POST["txtnn"];
        }

        if(empty($_POST["txtsdt"]))
        {
            $loi["sodienthoai"]="* Xin vui lòng nhập số điện thoại</br>";
        }
        else
        {
            $sodienthoai=$_POST["txtsdt"];
        }
         
        if(!empty($_POST["txttt"]))
        
        {
            $thongtinkhac=$_POST["txtsdt"];
        }

        if( $hoten && $gioitinh  && $email )
        {
                $conn =  mysqli_connect("localhost","root","","vieclam");
                if(!$conn){
                    die('Ket noi that bai'.mysqli_connect_error());
                }
                mysqli_set_charset($conn,"utf8");
                $sql=("insert into cv(hoten,diachi,sodienthoai,email,gioitinh,ngaysinh,hocvan,kinhnghiem,ngonngu,thongtinkhac) values ('$hoten','$diachi','$sodienthoai','$email','$gioitinh','$ngaysinh','$hocvan','$kinhnghiem','$ngonngu','$thongtinkhac')");
                if (mysqli_query($conn, $sql))
                        //Thông báo nếu thành công
                        $loi["kq"]='Tạo  thành công';
                    else
                        //Hiện thông báo khi không thành công
                        $loi["kq"]= 'Không thành công. Lỗi' . mysqli_error($conn);
                    //ngắt kết nối
                    //mysqli_close($conn);
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
    <script>
    $(document).ready(function())</script>
</head>
<body>
    <div id="top">
        <a href="btlon.php"><img src="../catgheplayout/tệp ảnh/logo.jpg" alt="logo"  height="200px" width="800px"></a>
    </div>
    <div id= "wrapper">
        <ul >            
          <li><a href="btlon1.php">Trang chủ</a></li>
            <li><a href="hosoxinviec.php">Hồ sơ xin việc của tôi </a>
            </li>
            <li><a href="thuxinviec.php">Thư xin việc của tôi</a>
            </li>
            <li><a href="../btlon.php ">Đăng xuất</a></li>
        </ul>
    </div>
    <div class="contain">
    <fieldset style="width: :1000px;margin:40px auto 10px;height: 786px;">
        <legend> Hồ sơ xin việc</legend>
        <p  class="pull-right" style="text-align: right;"> <br>
        Những mục có dấu sao<strong class="text-danger">*</strong>  là bắt buộc.    </p>
        <form action="hoso.php" method="POST" >
            <table cellspacing="15px" style="width: 100%">
                <tr>
                <td>   <h4>Thông tin cá nhân</h4> </td>
                <td></td>
                </tr>
                <tr>
                    <td><strong class="text-danger">*</strong>Họ tên:</td>
                    <td><input type="text" size="70" name="txtht"></td>                
                </tr>
                <tr>
                    <td><strong class="text-danger">*</strong>Giới tính</td>
                    <td>
                    <input type="radio" name="gt" value="Nam">Nam 
                    <input type="radio" name="gt" value="Nữ">Nữ
                    </td>                
                </tr>
                <tr>
                    <td><strong class="text-danger">*</strong>Ngày sinh:</td>
                    <td><input type="date"  name="txtns"></td>
                </tr>
                <tr>
                    <td><strong class="text-danger">*</strong>Học vấn:</td>
                    <td><textarea cols="60" rows="5" name="txthv"></textarea></td>
                </tr>
                <tr>
                    <td>Kinh nghiệm:</td>
                    <td><textarea cols="60" rows="5" name="txtkn"></textarea></td>
                </tr>
                <tr>
                    <td><strong class="text-danger">*</strong>Ngôn ngữ:</td>
                    <td><input type="text" size="70" name="txtnn"></td>
                </tr>
                <tr>
                    <td>Thông tin khác:</td>
                    <td><input type="text" size="70" name="txttt"></td>
                </tr>
                <tr>
                <td> <h4>Thông tin liên hệ</h4></td>
                <td></td>
                </tr>
                <tr>
                    <td><strong class="text-danger">*</strong>Địa chỉ:</td>
                    <td><input type="text" size="70" name="txtdc"></td>    
                </tr>
                <tr>
                    <td><strong class="text-danger">*</strong>Số điện thoai:</td>
                    <td><input type="text" name="txtsdt"></td>
                </tr>
                <tr>
                    <td><strong class="text-danger">*</strong>Email:</td>
                    <td><input type="email" size="70" name="txtmail"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Thêm" name="ok" size="50"></td>
                </tr>
            </table>
        </form>
</fieldset>
    </div>
    <div style="color:red;margin: auto;width: 250px;">
                <?php
                    echo $loi["kq"];
                    echo $loi["hoten"];
                    echo $loi["email"];
                    echo $loi["gioitinh"];
                    echo $loi["ngaysinh"];
                    echo $loi["hocvan"];
                    echo $loi["diachi"];
                    echo $loi["ngonngu"];
                    echo $loi["sodienthoai"];
                ?>
            </div> 
    <br>
    <?php
require('../catgheplayout/buttom.php');
?>
</body>
</html>
