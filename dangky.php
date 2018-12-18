<?php
require('catgheplayout/header.php');
$loi=array();
$user=$pass=$mail=NULL;
$loi["username"]=NULL;
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
     if($user && $pass &&  $mail)
    {
        $conn =  mysqli_connect("localhost","root","","login");
        if(!$conn){
            die('Ket noi that bai'.mysqli_connect_error());
        }
        $sqli_checkuser = "SELECT * FROM users WHERE name='$user' AND email='$mail'";
        $resultcheck = mysqli_query($conn,$sqli_checkuser);
        $check=mysqli_fetch_row($resultcheck);
        if($check)
            {
            $loi["register"]="Tài khoản đã tồn tại vui lòng đăng ký lại</br>";
            }

        else
        {
            $sql = "INSERT INTO users (name , pass,email,level) VALUES ('$user','$pass','$mail','1')";
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
<fieldset style="width:300px;margin:50px auto 0px;height:100px">
    <form action="dangky.php" method="POST">
        <table>
            <tr>
                <td> Họ và tên: </td>
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
                <td></td>
                <td><input type="submit" name="ok" value="Đăng ký"></td>
            </tr>
        </table>
    </form>
 </fieldset>  
 <div style="width:300px;margin:10px auto;height:150px;text-align:center;corlor:#F00">
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
