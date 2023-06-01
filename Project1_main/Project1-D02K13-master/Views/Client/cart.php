<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="shortcut icon" href="images/logo.jpg">
    <title>COZYHUT</title>
  <link rel="stylesheet" href="css/home.css">
  <link rel="stylesheet" href="css/product_details.css">
  <link rel="stylesheet" href="css/cart.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
    integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
    integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
    integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
    crossorigin="anonymous"></script>
  <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
  <script>
    function buyNow() {
      document.getElementById('buy-now').submit();
    }
  </script>
  <!-- icons -->
</head>

<body>

  <!--navbar top-->
  <div class="container">
    <div class="navbar-top">
      <div class="social-link">
        <a><img src="images/facebook.png" alt="" width="30px"></a>
        <a><img src="/images/insta.png" alt="" width="30px"></a>
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
          <span><i><img src="images/menu.png" alt="" width="30px"></i></span>
        </button>

        <!-- Menu -->
        <div class="collapse navbar-collapse" id="collapsibleNavbar">
          <ul class="navbar-nav">
          <?php
                        foreach ($arr['category'] as $item) {
                            ?>
                            <li class="nav-item">
                                <a class="nav-link" href="?redirect=cate&id_cat=<?= $item['cat_name'] ?>">
                                    <?= $item['cat_name'] ?>
                                </a>
                            </li>
                        <?php } ?>

          </ul>
        </div>
        <!--End Menu -->
      </div>
    </nav>
    <!-- Banner -->
    <div class="content">
      <h1>Make your home
        <br>Modern Design.
      </h1>
      <p>Your home should be a story of who you are, and be a collection of what you love.</p>
      <div id="btn1"><button>Shop Now</button></div>
    </div>
    <!-- End Banner -->
  </div>

  <!-- End main content -->


  <!--	Body	-->
  <!-- shopping cart -->

  <div id="shopping">
    <h3 class="text-center" style="padding-top: 30px;">SHOPPING CART</h3>

    <section class="h-100 gradient-custom">

      <form method="post" action="?redirect=<?= $redirect ?>&action=update_cart">
        <?php
        if (isset($_SESSION['cart'])) {
          ?>
          <div class="container py-5">
            <div class="row d-flex justify-content-center my-4">
              <div class="col-lg-12">
                <?php // Tính tổng tiền sản phẩm trong giỏ hành
                  $total_price_all = 0;
                  foreach ($arr['product'] as $productID => $item) {
                    $total_price = $item['amount'] * $item["price"];
                    $total_price_all += $total_price;
                    ?>
                  <div id="card">
                    <div class="card mb-8">
                      <div class="card-body">
                        <!-- Single item -->
                        <div class="row">
                          <div class="col-lg-7 col-md-12 mb-4 mb-lg-0">
                            <!-- Image -->
                            <div id="img_cart" class="bg-image hover-overlay hover-zoom ripple rounded"
                              data-mdb-ripple-color="light">
                              <img src="images/<?= $item['image'] ?>">
                            </div>
                            <!-- Image -->
                          </div>

                          <div class="col-lg-2 col-md-12 mb-8 mb-lg-0">
                            <!-- Data -->
                            <p><strong>
                                <?= $item['name'] ?>
                              </strong></p>
                            <p><strong>
                            Price: 
                                <?= number_format($item['price']); ?>đ
                              </strong></p>

                            <!-- Data -->
                          </div>

                          <div class="col-lg-2 col-md-12 mb-8 mb-lg-0">
                            <!-- Quantity -->
                            <div class="d-flex mb-4" style="max-width: 300px">
                              <div class="form-outline">
                                <label class="form-label" for="form1"><strong>Số lượng:</strong></label>
                                <input type="number" id="quantity" name="qtt[<?= $productID ?>]"
                                  class="form-control form-blue quantity" value="<?= $item['amount'] ?>" min="1"
                                  max="<?= $item['quantity'] ?>">

                              </div>
                            </div>

                            <!-- End Quantity -->
                          </div>

                          <div class="col-lg-1 col-md-12 mb-8 mb-lg-0">
                            <!-- Delete -->
                            <div class="d-flex mb-4" style="max-width: 300px">
                              <div class="form-outline">
                                <label class="form-label" for="form1"><strong>Xoá </strong></label>
                                <div class="icons">
                                  <a href="?redirect=cart&action=del&id=<?= $productID ?>"><img src="images/bin.png" alt=""
                                      width="20px"></a>
                                </div>
                              </div>
                            </div>
          
                          </div>
                        </div>
                      <?php } ?>
                      <!--end Single item -->

                    </div>
                  </div>
                  <!-- Thông tin hoá đơn -->
                  <div class="card mb-4">
                    <div class="row col-md-12 mb-4">
                      <div class="cart-thumb col-lg-7 col-md-7 col-sm-12">
                        <button id="update-cart" class="btn_check" type="submit" name="sbm">Cập nhật giỏ hàng</button>
                      </div>
                      <div class="cart-total col-lg-2 col-md-2 col-sm-12"><b>Tổng cộng:</b></div>
                      <div class="cart-price col-lg-3 col-md-3 col-sm-12"><b>
                          <?= number_format($total_price_all); ?>đ
                        </b></div>
                    </div>
                   <!-- end-Thông tin hoá đơn -->
                  </div>
                  <!-- Thông tin khách hàng -->
                  <div class="card mb-4">
                    <div class="card-header py-3">
                      <h5 class="mb-0">Thông tin khách hàng:</h5>
                    </div>
                    <div class="card-body">
                      <form id="buy-now" method="post" action="?redirect=cart&action=checkaccess">
                        <div class="row">
                          <div id="customer-name" class="col-lg-12 col-md-12 col-sm-12">
                            <input placeholder="Họ và tên (bắt buộc)" type="text" name="fullname" class="form-control"
                              required>
                          </div>
                          <div id="customer-phone" class="col-lg-5 col-md-12 col-sm-12">
                            <input placeholder="Số điện thoại (bắt buộc)" type="text" name="phone" class="form-control"
                              required>
                          </div>
                          <div id="customer-mail" class="col-lg-7 col-md-12 col-sm-12">
                            <input placeholder="Email (bắt buộc)" type="text" name="email" class="form-control" required>
                          </div>
                          <div id="customer-add" class="col-lg-12 col-md-12 col-sm-12">
                            <input placeholder="Địa chỉ nhà riêng hoặc cơ quan (bắt buộc)" type="text" name="address"
                              class="form-control" required>
                          </div>
                        </div>
                      </form>
                      <div class="card-body">
                        <button type="button" class="btn_check">
                          <a href="?redirect=success&id=<?= $productID ?>" onClick="buyNow()">
                            <b>Thanh Toán </b>
                          </a>

                        </button>
                      </div>
                    </div>
                  </div>
                  <!-- end-Thông tin khách hàng -->
                </div>
                <?php
        } else {
          echo '<div class="alert alert-danger mt-3">Giỏ hàng của bạn hiện không có sản phẩm nào !</div>';
        } ?>
            </div>
          </div>
      </form>
    </section>
    <!-- end shopping cart -->
  </div>

  <!--	End Body	-->
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

</html>F