<?php
function index() {
    $id = $_GET['id'];
    include_once('Config/connect.php');
    $cate = mysqli_query($connect, "SELECT * FROM category ORDER BY id_cat ASC");
    $sql = "SELECT * FROM product WHERE id = '$id'";
    $query = mysqli_query($connect, $sql);
    include_once('Config/close_connect.php');
    $arr = array();
    $arr['category'] = $cate;
    $arr['product'] = $query;
    return $arr;
}

switch($action) {
    case '': $arr = index(); break;

}

?>