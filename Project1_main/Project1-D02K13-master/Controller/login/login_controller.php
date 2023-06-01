<?php
$action = '';
if (isset($_GET['action'])) {
    $action = $_GET['action'];
}
switch ($action) {
    case 'login':
        include_once('Views/login-logout/login.php');
        break;
    case 'checklogin':
        require_once('Model/Login/login_model.php');
        if (isset($check)) {
            if ($_SESSION['role_as'] == 1) {
                header('Location: index.php?controller=admin');
            } else {
                header('location: index.php');
            }
        } else {
            include_once('Views/login-logout/login.php');
        };
        break;
    case 'logout':
        session_destroy();
        header('location: index.php?controller=admin');;
        break;
}
