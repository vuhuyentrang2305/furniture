<?php
function checklogin() {
    include_once('Config/connect.php');
    $user = $_POST['user'];
    $pass = $_POST['pass'];
    $sql = "SELECT * FROM user WHERE username = '$user' AND password = '$pass'";
    $query = mysqli_query($connect, $sql);
    $item = mysqli_query($connect, $sql);
    $count = mysqli_num_rows(mysqli_query($connect, $sql));
    if($count == 0) {
        //login sai
        foreach($item as $pass){
            $_SESSION['pass'] = $pass['pass'];
        }
        return 0;
    }else {
        //login đúng
        $_SESSION['user'] = $user;
        $_SESSION['pass'] = $pass;
        foreach($query as $role){
            $_SESSION['role_as'] = $role['role_as'];
        }
        return 1;
    }
    include_once('Config/close_connect.php');
    }
switch($action) {
    case 'checklogin' : $check = checklogin(); break;
}
?>