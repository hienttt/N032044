<?php
//kết nối kiểm tra
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "login";
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
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


$sql = "INSERT INTO users (name , pass,email)
VALUES ('$username','$password','$email')";
if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>