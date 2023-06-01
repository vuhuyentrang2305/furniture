<?php
switch ($action) {
    case '': // Gọi giao diện giỏ hàng
        require_once('Model/Client/Cart/cart_model.php');
        require_once('Views/Client/cart.php');
        break;
    case 'add': // Gọi phương thức thêm giỏ hàng
        require_once('Model/Client/Cart/cart_model.php');
        header('Location:index.php?redirect=cart');
        break;
    case 'update_cart': // Gọi phương thức cập nhật
        require_once('Model/Client/Cart/cart_model.php');
        header('Location:index.php?redirect=cart');
        break;
    case 'del': // Xóa sản phẩm trong giỏ hàng
        require_once('Model/Client/Cart/cart_model.php');
        header('Location:index.php?redirect=cart');
        break;
    case 'checkaccess': // Thanh toán mua hàng
        require_once('Model/Client/Cart/cart_model.php');
        header('Location:index.php');
        break;
    case 'success': // Thanh toán mua hàng
        require_once('Model/Client/Success/success_model.php');
        header('Location:index.php?redirect=success');
        break;
}
?>