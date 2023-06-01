<?php
function index() {
    include_once('Config/connect.php');
    $sql = "SELECT * FROM category";
    $record = mysqli_query($connect, $sql);
    include_once('Config/close_connect.php');
    return $record;
}
function store() {
    include_once('Config/connect.php');
    $cat_name = $_POST['cat_name'];
    $sql = "INSERT INTO category (cat_name)
            VALUES ('$cat_name')";
    $record = mysqli_query($connect, $sql);
    include_once('Config/close_connect.php');
    return $record;
}
function edit() {
    $id_cat = $_GET['id_cat'];
    include_once('Config/connect.php');
    $sql = "SELECT * FROM category WHERE id_cat = $id_cat";
    $record = mysqli_query($connect, $sql);
    include_once('Config/close_connect.php');
    return $record;
}
function update() {
    include_once('Config/connect.php');
    $id_cat = $_POST['id_cat'];
    $cat_name = $_POST['cat_name'];
    $sql = "UPDATE category SET name = '$cat_name'
            WHERE id_cat = $id_cat";
    mysqli_query($connect, $sql);
    include_once('Config/close_connect.php');
}
function delete() {
    $id_cat = $_GET['id_cat'];
    include_once('Config/connect.php');
    mysqli_query($connect, "DELETE FROM category WHERE id_cat = '$id_cat'");
    include_once('Config/close_connect.php');
}
switch($action) {
    case '': $record = index(); break;
    case 'store': store(); break;
    case 'edit': $record = edit(); break;
    case 'update': update(); break;
    case 'delete': delete(); break;
}

?>  