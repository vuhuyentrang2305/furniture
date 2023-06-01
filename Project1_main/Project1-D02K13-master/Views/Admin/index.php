<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/styleadmin.css">
    <link rel="shortcut icon" href="images/logo.jpg">
    <title>COZYHUT</title>
</head>

<body>

    <div class="row">
        <div class="side-menu col-3 ">
            <div class="brand-name">
                <h1><a href="index.php">CoZyHut</a></h1>
            </div>
            <ul>
                <li><a href="?controller=admin">Dashboard</a></li>
                <li><a href="?controller=admin&redirect=user">Thành viên</a></li>
                <li><a href="?controller=admin&redirect=product">Sản phẩm</a></li>
                <li><a href="#">Đơn hàng</a></li>
                <li><a href="?controller=admin&redirect=category">Danh mục</a></li>
                <li><a href="?controller=login&action=logout">Logout</a></li>

            </ul>
        </div>

        <div class="container col-9">
            <div class="header">
                <div class="nav">
                    <div class="search">
                        <input type="text" placeholder="Search...">
                        <button type="submit"><img src="images/search.png" alt=""></button>
                    </div>
                    <div class="user">
                        <a href="#" class="btn"> Add new</a>
                        <img src="images/notification.png" alt="">
                        <div class="img-case">
                            <img src="images/user.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
            <div class="content">
                <div class="cards">
                    <div class="card">
                        <div class="box">
                            <h1>
                                <?= $arr['count_user'] ?>
                            </h1>
                            <h3>Người dùng</h3>
                        </div>
                        <div class="icon-case">
                            <img src="#" alt="">
                        </div>
                    </div>
                    <div class="card">
                        <div class="box">
                            <h1>2k</h1>
                            <h3>Đơn hàng</h3>
                        </div>
                        <div class="icon-case">
                            <img src="#" alt="">
                        </div>
                    </div>
                    <div class="card">
                        <div class="box">
                            <h1>
                                <?= $arr['count_product'] ?>
                            </h1>
                            <h3>Sản phẩm</h3>
                        </div>
                        <div class="icon-case">
                            <img src="#" alt="">
                        </div>
                    </div>
                    <div class="card">
                        <div class="box">
                            <h1>
                                <?= $arr['count_category'] ?>
                            </h1>
                            <h3>Danh mục</h3>
                        </div>
                        <div class="icon-case">
                            <img src="#" alt="">
                        </div>
                    </div>
                </div>
                <div class="content-2 text-center">
                    <div class="recent-payment">
                        <div class="title">
                            <h2>Customer Information</h2>
                            <a href="#" class="btn">View All</a>
                        </div>
                        <table>
                            <tr>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Address</th>
                            </tr>
                            <tr>
                                <td>Long</td>
                                <td>Long@gmail.com</td>
                                <td>Long bien</td>
                                <td><a href="#" class="btn">View</a></td>
                            </tr>
                            <tr>
                                <td>Son</td>
                                <td>Son@gmail.com</td>
                                <td>Long bien</td>
                                <td><a href="#" class="btn">View</a></td>
                            </tr>
                            <tr>
                                <td>Ky</td>
                                <td>Ky@gmail.com</td>
                                <td>Minh Khai</td>
                                <td><a href="#" class="btn">View</a></td>
                            </tr>
                            <tr>
                                <td>Quan</td>
                                <td>Quan@gmail.com</td>
                                <td>Long bien</td>
                                <td><a href="#" class="btn">View</a></td>
                            </tr>
                        </table>
                    </div>
                    <div class="new-student">
                        <div class="title">
                            <h2>Recent Payment</h2>
                            <a href="#" class="btn">View All</a>
                        </div>
                        <table>
                            <tr>
                                <th>User image</th>
                                <th>User Name</th>
                                <th>Profit</th>
                            </tr>
                            <tr>
                                <td><img src="images/user1.jpg" alt=""></td>
                                <td>Long</td>
                                <td><img src="images/info.png" alt=""></td>
                            </tr>
                            <tr>
                                <td><img src="images/user1.jpg" alt=""></td>
                                <td>Son</td>
                                <td><img src="images/info.png" alt=""></td>
                            </tr>
                            <tr>
                                <td><img src="images/user1.jpg" alt=""></td>
                                <td>Ky</td>
                                <td><img src="images/info.png" alt=""></td>
                            </tr>
                            <tr>
                                <td><img src="images/user1.jpg" alt=""></td>
                                <td>Quan</td>
                                <td><img src="images/info.png" alt=""></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>