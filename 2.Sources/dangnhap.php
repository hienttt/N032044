<?php
session_start();
require('catgheplayout/header.php');
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
<fieldset style="width:300px;margin:50px auto 0px;height:100px">
    <form action="dangnhap.php" method="POST">
        <table>
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
<div style="width:300px;margin:10px auto;height:150px;text-align:center;corlor:#F00">
<?php
    
    echo $loi["password"];
    echo $loi["email"];
    echo $loi["login"];
?>
 </div> 
 <?php
require('catgheplayout/buttom.php');
?>
