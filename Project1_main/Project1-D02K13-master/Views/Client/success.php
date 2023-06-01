<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="shortcut icon" href="images/logo.jpg">
  <title>COZYHUT</title>
  <link rel="stylesheet" href="css/home.css">
  <link rel="stylesheet" href="css/success.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
  <!-- icons -->
</head>

<body>

  <!--navbar top-->
  <div class="container">
    <div class="navbar-top">
      <div class="social-link">
        <a><img src="images/facebook.png" alt="" width="30px"></a>
        <a><img src="images/insta.png" alt="" width="30px"></a>
        <a><img src="images/google-plus.png" alt="" width="30px"></a>
      </div>
      <div class="logo">
        <h3>COZYHUT</h3>
      </div>
      <div class="icons">
        <a href="?redirect=cart"><img src="images/shopping-cart.png" alt="" width="20px"></a><span class="mt-3">
          <?php
          if (isset($_SESSION["cart"])) {
            $totals = 0;
            foreach ($arr['product'] as $prd_id => $qtt) {
              $totals++;
            }
            echo $totals;
          } else {
            echo 0;
          }
          ?>
        </span>
      </div>
    </div>
  </div>
  <!--nabar top-->
  <!-- main content -->
  <div class="main-content">
    <nav class="navbar navbar-expand-md" id="navbar-color">
      <div class="container">
        <!-- Brand -->
        <a class="navbar-brand" href="index.php ">CoZyHut</a>

        <!-- Toggler/collapsibe Button -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
          <span><i><img src="../../images/menu.png" alt="" width="30px"></i></span>
        </button>

        <!-- Menu -->
        <div class="collapse navbar-collapse" id="collapsibleNavbar">
          <ul class="navbar-nav">
            <?php
            foreach ($arr['category'] as $item) {
            ?>
              <li class="nav-item">
                <a class="nav-link" href="?redirect=cate&action=cat&id_cat=<?= $item['id_cat']; ?>">
                  <?= $item['cat_name']; ?>
                </a>
              </li>
            <?php } ?>

          </ul>
        </div>
        <!--End Menu -->
      </div>
    </nav>
  </div>

  <!-- End main content -->


  <!--	Body	-->
  <!--	Order Success	-->
  <div class="row">
    <div id="main" class="col-lg-8 col-md-12 col-sm-12">

      <div id="order-success">
        <div class="row">
          <div id="order-success-img" class="col-lg-3 col-md-3 col-sm-12"></div>
          <div id="order-success-txt" class="col-lg-9 col-md-9 col-sm-12">
            <h3>bạn đã đặt hàng thành công !</h3>
            <p>Vui lòng kiểm tra email để xem lại thông tin đơn hàng của mình.</p>
          </div>
        </div>
      </div>


    </div>
  </div>
  <!--	End Order Success	-->
  <!-- footer -->
  <footer id="footer">
    <h1 class="text-center">Furniture</h1>
    <p class="text-center">Lorem ipsum dolor sit amet consectetur adipisicing elit. Qui, ab</p>
    <div class="icons text-center">
      <i class="bx bx1-twitter"></i>
      <i class="bx bx1-facebook"></i>
      <i class="bx bx1-google"></i>
      <i class="bx bx1-skype"></i>
      <i class="bx bx1-instagram"></i>

    </div>
    <div class="copyright text-center">
      &copy; Copyright <strong><span>Furniture</span></strong>. All Rights Reserved
    </div>
    <div class="credite text-center">
      Designed By <a href="#">SA</a>
    </div>

  </footer>
  <!-- footer -->
</body>

</html>