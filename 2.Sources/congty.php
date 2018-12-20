<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Tìm kiếm việc làm</title>
    <link rel="stylesheet" href="btlon.css" type="text/css">
    <script type="text/javascript" src="btlon.js"></script>
    <script src="btlon/jquery-3.3.1.min.js"></script>
    <script>
    $(document).ready(function())</script>
</head>
<body>
    <div id="top">
        <img src="anhbt/logo.jpg" alt="logo"  height="200px" width="800px">
    </div>
    <div id="menu">
        <ul>
            <li style="border-left:none"><a href="btlon.php">Trang chủ</a></li>
            <li><a href="tuyendung.php">Tuyển dụng</a></li>
            <li><a href="congty.php">Công ty</a></li>
            <li><a href="dangky.php">Đăng ký</a></li>
            <li><a href="dangnhap.php">Đăng nhập</a></li>
        </ul>
    </div>
<div id="wrapper" >
    <div id="main" style="height:300px">
    <ul>
        <li class="mySlides">S1</li>
        <li  class="mySlides">S2</li>
        <li class="mySlides">S3</li>
    </ul>
    </div>
</div>
<div style="text-align:center">
  <span class="dot" onclick="currentSlide(0)"></span> 
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
</div>
<script>
   //khai báo biến slideIndex đại diện cho slide hiện tại
  var slideIndex;
  // KHai bào hàm hiển thị slide
  function showSlides() {
      var i;
      var slides = document.getElementsByClassName("mySlides");
      var dots = document.getElementsByClassName("dot");
      for (i = 0; i < slides.length; i++) {
         slides[i].style.display = "none";  
      }
      for (i = 0; i < dots.length; i++) {
          dots[i].className = dots[i].className.replace(" active", "");
      }
 
      slides[slideIndex].style.display = "block";  
      dots[slideIndex].className += " active";
      //chuyển đến slide tiếp theo
      slideIndex++;
      //nếu đang ở slide cuối cùng thì chuyển về slide đầu
      if (slideIndex > slides.length - 1) {
        slideIndex = 0
      }    
      /*tự động chuyển đổi slide sau 5s
      setTimeout(showSlides, 5000);*/
  }
  //mặc định hiển thị slide đầu tiên 
  showSlides(slideIndex = 0);
 
 
  function currentSlide(n) {
    showSlides(slideIndex = n);
  }
</script>


<?php
require('catgheplayout/buttom.php');
?>