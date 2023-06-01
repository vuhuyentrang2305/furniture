<?php
// Lấy giá trị Controller nào đang làm việc với Client
$controller = $_GET['controller'] ?? '';
// Điều hướng trong admin
$redirect = $_GET['redirect'] ?? '';
// Điều khiển Controller làm gì
$action = $_GET['action'] ?? '';
// Gọi chức năng cho Admin
switch ($controller) {
    case 'admin':
        if (isset($_SESSION['user']) && isset($_SESSION['pass'])) {
            if (isset($_GET['redirect'])) {
                switch ($redirect) {

                    case 'user':
                        if (isset($_SESSION['user']) && isset($_SESSION['pass'])) {
                            require_once('Controller/Admin/User/user_controller.php');
                        } else {
                            header('location: ?controller=login&action=login');
                        }
                        ;
                        break;
                    case 'product':
                        if (isset($_SESSION['user']) && isset($_SESSION['pass'])) {
                            require_once('Controller/Admin/Product/product_controller.php');
                        } else {
                            header('location: ?controller=login&action=login');
                        }
                        ;
                        break;
                    case 'category':
                        if (isset($_SESSION['user']) && isset($_SESSION['pass'])) {
                            require_once('Controller/Admin/Category/category_controller.php');
                        } else {
                            header('location: ?controller=login&action=login');
                        }
                        ;
                        break;
                    case 'order':
                        if (isset($_SESSION['username']) && isset($_SESSION['password'])) {
                            require_once('Controller/Admin/Order/order_controller.php');
                        } else {
                            header('location: ?controller=login&action=login');
                        }
                        ;
                        break;
                    case 'dashboard':
                        if (isset($_SESSION['username']) && isset($_SESSION['password'])) {
                            require_once('Controller/Admin/Dashboard/dashboard_controller.php');
                        } else {
                            header('location: ?controller=login&action=login');
                        }
                        ;
                        break;

                }
            } else {
                // require_once('Views/Admin/index.php');
                require_once('Controller/Admin/Dashboard/dashboard_controller.php');
            }


        } else {
            header('location: ?controller=login&action=login');
        }
        ;
        break;
}
?>