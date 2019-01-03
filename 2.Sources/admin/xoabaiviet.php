<?php
$id=$_GET["id"];
$conn =  mysqli_connect("localhost","root","","vieclam");
        if(!$conn){
            die('Ket noi that bai'.mysqli_connect_error());
        }
        mysqli_set_charset($conn,"utf8");
           $sql="delete from congviec where ID='$id' ";
            $result=mysqli_query($conn,$sql);
            mysqli_close($conn);
          header("location:quanlybaiviet.php");
          exit();  
?>