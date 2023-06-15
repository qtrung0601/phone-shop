<?php

@include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if(!isset($user_id)){
   header('location:login.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>about</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php include 'header.php'; ?>

<section class="about">

   <div class="row">

      <div class="box">
         <img src="images/hotsale-s20-fe-1200x382.jpg" alt="">
         <h3>why choose us?</h3>
         <p>Chúng tôi đem lại cho khách hàng những  ưu đãi và trải nghiệm tốt nhất cho khách hàng và người dùng.</p>
         <a href="contact.php" class="btn">contact us</a>
      </div>

      <div class="box">
        
         <h3>what we provide?</h3>
         <p>Chúng tôi cam kết về chất lượng sản phẩm, bảo hành và nhưng dịch vụ ưu đãi dành cho khách.Chính nhưng ưu đãi và dịch vụ tận tình chúng tôi được nhiều khách hàng và nhà phân phối tin tường. .</p>
         <a href="shop.php" class="btn">our shop</a>
      </div>

   </div>

</section>

<section class="reviews">

   <h1 class="title">clients reivews</h1>

   <div class="box-container">

      <div class="box">
         <img src="images/pic-1.png" alt="">
         <p>Sản phẩm chất lượng, dịch vụ ưu đãi tốt, nhân viên tư vấn nhiêt tình.Chúng tôi vô cùng hài lòng và sẽ quay lại lần tới để tiếp tục ủng hộ </p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>john deo</h3>
      </div>

      <div class="box">
         <img src="images/pic-2.png" alt="">
         <p>Sản phẩm chất lượng, dịch vụ ưu đãi tốt, nhân viên tư vấn nhiêt tình.Chúng tôi vô cùng hài lòng và sẽ quay lại lần tới để tiếp tục ủng hộ</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>john deo</h3>
      </div>

      <div class="box">
         <img src="images/pic-3.png" alt="">
         <p>Sản phẩm chất lượng, dịch vụ ưu đãi tốt, nhân viên tư vấn nhiêt tình.Chúng tôi vô cùng hài lòng và sẽ quay lại lần tới để tiếp tục ủng hộ</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>john deo</h3>
      </div>

      <div class="box">
         <img src="images/pic-4.png" alt="">
         <p>Sản phẩm chất lượng, dịch vụ ưu đãi tốt, nhân viên tư vấn nhiêt tình.Chúng tôi vô cùng hài lòng và sẽ quay lại lần tới để tiếp tục ủng hộ</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>john deo</h3>
      </div>

      <div class="box">
         <img src="images/pic-5.png" alt="">
         <p>Sản phẩm chất lượng, dịch vụ ưu đãi tốt, nhân viên tư vấn nhiêt tình.Chúng tôi vô cùng hài lòng và sẽ quay lại lần tới để tiếp tục ủng hộ</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>john deo</h3>
      </div>

      <div class="box">
         <img src="images/pic-6.png" alt="">
         <p>Sản phẩm chất lượng, dịch vụ ưu đãi tốt, nhân viên tư vấn nhiêt tình.Chúng tôi vô cùng hài lòng và sẽ quay lại lần tới để tiếp tục ủng hộ</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>john deo</h3>
      </div>

   </div>

</section>









<?php include 'footer.php'; ?>

<script src="js/script.js"></script>

</body>
</html>