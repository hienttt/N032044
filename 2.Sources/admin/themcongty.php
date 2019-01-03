<?php
    $loi=array();
    $congty=$anh=$nd=NULL;
    $loi["txtct"]=$loi[ "anh"]= $loi["txtnd"]=$loi["kq"]=NULL;
        if(isset($_POST["ok"]))
        {
            if(empty($_POST["txtct"]))
            {
                $loi["txtct"]="*Xin vui lòng nhập tên công ty</br>";
            }
            else { $congty=$_POST["txtct"];}

            if($_FILES["anh"]["error"]>0)
            {
                $loi["anh"]="*Xin vui lòng thêm ảnh của công ty </br>";
            }
            else 
            { 
                if($_FILES["anh"]["type"] != "image/jpeg" && $_FILES["anh"]["type"] != "image/png")
                {
                    $loi["anh"]="* Phải chọn file hình ảnh dạng *.jpg hoặc *.png";
                }
                else{$anh=$_FILES["anh"]["name"];}
            }
           
            if(empty($_POST["txtnd"]))
            {
                $loi["txtnd"]="*Xin vui lòng nhập mô tả về công ty</br>";
            }
            else { $nd=$_POST["txtnd"];}
            if($congty && $anh  && $nd)
            {
                $conn =  mysqli_connect("localhost","root","","vieclam");
                if(!$conn){
                    die('Ket noi that bai'.mysqli_connect_error());
                }
                mysqli_set_charset($conn,"utf8");
                $sql=("insert into congty(tenct,motact,anhct) values('$congty','$nd','$anh')");
                if (mysqli_query($conn, $sql))
                //Thông báo nếu thành công
                $loi["kq"]='Thêm  thành công';
            else
                //Hiện thông báo khi không thành công
                $loi["kq"]= 'Không thành công. Lỗi' . mysqli_error($conn);
            //ngắt kết nối
            mysqli_close($conn);
            }
            move_uploaded_file($_FILES["anh"]["tmp_name"],"../data/".$_FILES["anh"]["name"] );
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
        <form action="themcongty.php" method="POST" encType="multipart/form-data" >
            <table cellspacing="15px">
                <tr>
                    <td>Công ty</td>
                    <td><input type="text" size="70" name="txtct"/></td>                
                </tr>
                
                <tr>
                    <td>Mô tả:</td>
                    <td><textarea cols="60" rows="10" name="txtnd"></textarea></td>
                </tr>

                <tr>
                    <td>Hình ảnh:</td>
                    <td><input type="file" name="anh"/></td>
                </tr>

                <tr>
                    <td></td>
                    <td><input type="submit" value="Thêm" name="ok" size="50"/></td>
                </tr>
            </table>
        </form>
        <div style="color:red">
            <?php
                echo $loi["txtct"]; 
                echo $loi["anh"];
                echo $loi["txtnd"];
                echo $loi["kq"] ;       
            ?>
        </div>
        </fieldset>
    </div>
    
</body>
</html>