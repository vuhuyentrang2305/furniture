<?php
function index(){
include_once('Config/connect.php');
$sqlAllOrder = "SELECT COUNT(*) AS count_order FROM order1";
$queryAllOrder = mysqli_query($connect, $sqlAllOrder);

foreach ($queryAllOrder as $each){
    $count_order = $each['count_order'];
}

$arr = array();
$arr['count_order'] = $count_order;
return $arr;

}
switch($action){
    case'': $arr = index(); break;
}
?>