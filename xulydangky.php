<?php
//kết nối kiểm tra

if($_POST["txtname"]==NULL)
{
    echo"Xin vuii lòng nhập lại username";
}
else{
    $username=$_POST["txtname"];
}
if($_POST["txtpass"]==NULL)
{
    echo"Xin vuii lòng nhập lại mật khẩu";
}
else
{
    $password=md5($_POST["txtpass"]);
}
if($_POST["txte"]==NULL)
{
    echo"Xin vuii lòng nhập lại mail";
}
else
{
    $email=$_POST["txte"];
}


if($ten && $mk && $mail)
{
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "login";
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
$sqli_checkuser = "SELECT * FROM users WHERE name='$ten' AND email='$mail'";
$resultcheck = mysqli_query($conn,$sqli_checkuser);
$check=mysqli_fetch_row($resultcheck);
if($check)
    {
    echo"Tài khoản đã tồn tại vui lòng đăng ký lại</br> <a href='dangky.php'>Đăng ký</a>";
    }

else{
    $sql = "INSERT INTO users (name , pass,email) VALUES ('$ten','$mk','$mail')";
if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
}
    }
$conn->close();
?>
