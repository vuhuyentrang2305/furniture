<?php
function index()
{
    include_once('Config/connect.php');
    $query_prd = mysqli_query($connect, "SELECT * FROM product INNER JOIN category ON category.id_cat = product.cat_id");
    $query_cate = mysqli_query($connect, "SELECT * FROM category");
    include_once('Config/close_connect.php');
    $arr = array();
    $arr['category'] = $query_cate;
    $arr['product']  = $query_prd;
    return $arr;
}
function create() {
    include_once('Config/connect.php');
    $sql = "SELECT * FROM category ORDER BY id_cat ASC";
    $record = mysqli_query($connect, $sql);
    include_once('Config/close_connect.php');
    return $record; //Gán mảng cho hàm create()
}
function store()
{
    include_once('Config/connect.php');
    $name = $_POST['name'];
    $price = $_POST['price'];
    $quantity = $_POST['quantity'];
    $cat_id = $_POST['cat_id'];
    $description = $_POST['description'];
    $material = $_POST['material'];
    $size = $_POST['size'];
    if (isset($_POST['featured'])) {
        $featured = 1;
    } else {
        $featured = 0;
    }
    if (isset($_POST['recommend'])) {
        $recommend = 1;
    } else {
        $recommend = 0;
    }
    $image = $_FILES['image']['name'];
    $file_tmp = $_FILES['image']['tmp_name'];
    $sql = "INSERT INTO product ( name, price, quantity, cat_id, description,material, size, featured, recommend ,image)
            VALUES (' $name', $price, $quantity,$cat_id, '$description','$material','$size', $featured, $recommend, '$image')";
    mysqli_query($connect, $sql);
    move_uploaded_file($file_tmp, 'images/' . $image);
    include_once('Config/close_connect.php');
}
function edit()
{
    $id = $_GET['id'];
    include_once('Config/connect.php');
    $query_prd = mysqli_query($connect, "SELECT * FROM product WHERE id = '$id'");
    $query_cate = mysqli_query($connect, "SELECT * FROM category");
    $arr = array();
    $arr['category'] = $query_cate;
    $arr['product'] = $query_prd;
    include_once('Config/close_connect.php');
    return $arr;
}
function update()
{
    include_once('Config/connect.php');
    $id = $_POST['id'];
    $cat_id = $_POST['cat_id'];
    $name = $_POST['name'];
    $price = $_POST['price'];
    $quantity = $_POST['quantity'];
    $description = $_POST['description'];
    $material = $_POST['material'];
    $size = $_POST['size'];
    if (isset($_POST['featured'])) {
        $featured = 1;
    } else {
        $featured = 0;
    }
    if (isset($_POST['recommend'])) {
        $recommend = 1;
    } else {
        $recommend = 0;
    }
    $arr = mysqli_fetch_array(mysqli_query($connect, "SELECT image FROM product WHERE id = '$id'"));
    if ($_FILES['image']['name'] == '') {
        $image = $arr['image'];
    } else {
        $image = $_FILES['image']['name'];
        $file_tmp = $_FILES['image']['tmp_name'];
        move_uploaded_file($file_tmp, 'images/' . $image);
    }
    $sql = "UPDATE product SET 
                cat_id = '$cat_id',
                name = '$name', 
                price = $price, 
                quantity = $quantity, 
                description = '$description', 
                material = '$material',
                size = '$size',
                featured = $featured, 
                recommend = $recommend,
                image = '$image'
            WHERE id = '$id'";
    mysqli_query($connect, $sql);
    include_once('Config/close_connect.php');
}
function destroy()
{
    $id = $_GET['id'];
    include_once('Config/connect.php');
    mysqli_query($connect, "DELETE FROM product WHERE id = '$id'");
    include_once('Config/close_connect.php');
}
switch ($action) {
    case '':
        $record = index();
        break;
    case 'create' : 
        $record = create();
        break; //Truyền mảng sang view add
    case 'store':
        store();
        break;
    case 'edit':
        $record = edit();
        break;
    case 'update':
        update();
        break;
    case 'destroy':
        destroy();
        break;
}
?>