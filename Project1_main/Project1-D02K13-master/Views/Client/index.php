<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="images/logo.jpg">
    <title>COZYHUT</title>
    <link rel="stylesheet" href="css/home.css">
    <link rel="stylesheet" href="css/recommend.css">
    <link rel="stylesheet" href="css/cart.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <!-- icons -->
</head>

<body>

    <!--navbar top-->
    <div class="container">
        <div class="navbar-top">
            <div class="social-link">
                <a><img src="images/facebook.png" alt="" width="30px"></a>
                <a><img src="images/google-plus.png" alt="" width="30px"></a>
            </div>
            <div class="logo">
                <h3>COZYHUT</h3>
            </div>
            <div class="icons">
                <a href="?redirect=cart"><img src="images/shopping-cart.png" alt="" width="20px"></a>
                <span class="mt-3">
                    <?php
                    if (isset($_SESSION["cart"])) {
                        $totals = 0;
                        foreach ($arr['product'] as $quantity => $amount) {
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
                                <a class="nav-link" href="?redirect=cate&id_cat=<?= $item['id_cat']; ?>">
                                    <?= $item['cat_name']; ?>
                                </a>
                            </li>
                        <?php } ?>

                    </ul>
                </div>
                <div class="collapse navbar-collapse" id="navbarNavDropdown">
                    <ul class="navbar-nav">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="?controller=login&&action=login"
                                id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"
                                aria-expanded="false">
                                Login
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                <a class="dropdown-item" href="?controller=login&&action=login">Login</a>
                                <a class="dropdown-item" href="#">Registration</a>
                            </div>
                        </li>
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
    <div id="body">
        <div class="container">
            <div class="row">
                <div id="main" class="col-lg-12 col-md-12 col-sm-12">
                    <!--	Slider	-->
                    <!--	End Slider	-->
                    <!-- Master page layout -->
                    <?php
                    if (isset($_GET['redirect'])) {
                        $redirect = $_GET['redirect'];
                        switch ($redirect) {
                            case 'product':
                                include_once('Views/Client/product.php');
                                break;
                            case 'cart':
                                include_once('Views/Client/cart.php');
                                break;
                            case 'cate':
                                include_once('Views/Client/product_category.php');
                                break;
                            case 'success':
                                include_once('Views/Client/success.php');
                                break;
                        }
                    } else {
                        include_once('Views/Client/dashboard.php');

                    }
                    ?>
                    <!-- End Master page layout -->
                </div>
            </div>
        </div>
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

</html>