<?php
function cate(){
    $id_cat =  $_GET['id_cat'];
    include_once('Config/connect.php');

    $cate = mysqli_query($connect, "SELECT * FROM category ORDER BY id_cat ASC");
    $sql = "SELECT product.*, category.* 
    FROM product
        INNER JOIN category ON product.cat_id = category.id_cat
        WHERE category.id_cat = '$id_cat'
        ORDER BY product.id ASC ";
    $query = mysqli_query($connect, $sql);
    include_once('Config/close_connect.php');
    $arr = array();
    $arr['category'] = $cate;
    $arr['product'] = $query;
    $arr['id_cat'] = $id_cat;
    return $arr;
}
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


switch($redirect) {
    case 'product': $arr = index(); break;
    case 'cate': $arr = cate(); break;
}

?>