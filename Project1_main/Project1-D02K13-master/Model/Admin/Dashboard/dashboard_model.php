<?php
function index(){
include_once('Config/connect.php');
$sqlAllProduct = "SELECT COUNT(*) AS count_product FROM product";
$queryAllProduct = mysqli_query($connect, $sqlAllProduct);


$sqlAllCategory = "SELECT COUNT(*) AS count_category FROM category";
$queryAllCategory = mysqli_query($connect, $sqlAllCategory);

$sqlAllUser = "SELECT COUNT(*) AS count_user FROM user";
$queryAllUser = mysqli_query($connect, $sqlAllUser);

$sqlAllOrder = "SELECT COUNT(*) AS count_order FROM order";
$queryAllOrder = mysqli_query($connect, $sqlAllOrder);

include_once('Config/close_connect.php');
foreach ($queryAllProduct as $each){
    $count_product = $each['count_product'];
}

foreach ($queryAllCategory as $each){
    $count_category = $each['count_category'];
}

foreach ($queryAllUser as $each){
    $count_user = $each['count_user'];
}

// foreach ($queryAllOrder as $each){
//     $count_order = $each['count_order'];
// }

$arr = array();
$arr['count_product'] = $count_product;
$arr['count_category'] = $count_category;
$arr['count_user'] = $count_user;
// $arr['count_order'] = $count_order;
return $arr;

}
switch($action){
    case'': $arr = index(); break;
}
?>