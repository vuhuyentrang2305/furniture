<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="shortcut icon" href="images/logo.jpg">
    <title>COZYHUT</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/styleadmin.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
    <style>
        img {
            width: 50px;
            height: auto;
        }
    </style>

</head>
<div class="row">
<div class="side-menu col-2 ">
        <div class="brand-name">
            <h1><a href="index.php">CoZyHut</a></h1>
        </div>
        <ul>
        <li>
            <a href="?controller=admin">Dashboard</a></li>
            <li><a href="?controller=admin&redirect=user">Thành viên</a></li>
            <li><a href="?controller=admin&redirect=product">Sản phẩm</a></li>
            <li><a href="#">Đơn hàng</a></li>
            <li><a href="?controller=admin&redirect=category">Danh mục</a></li>
            <li><a href="?controller=login&action=logout">Logout</a></li>
            
        </ul>
    </div>

    <div class="container col-10 ">
        <table class="table text-center">
            <h1 text-align="center">Danh sách sản phẩm</h1>
            <thead>
                <tr>
                    <th scope="col">Số thứ tự</th>
                    <th scope="col">Tên sản phẩm</th>
                    <th scope="col">Giá tiền</th>
                    <th scope="col">Số lượng</th>
                    <th scope="col">Kích thước</th>
                    <th scope="col">Vật liệu</th>
                    <th scope="col">Trạng thái</th>
                    <th scope="col">Sản phẩm giới thiệu</th>
                    <th scope="col">Ảnh sản phẩm</th>
                    <th scope="col">Danh mục</th>
                    <th scope="col" colspan="2">Hành động</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $stt = 1;
                foreach ($record['product'] as $item) {
                    ?>
                    <tr>
                        <th scope="row">
                            <?= $stt; ?>
                        </th>
                        <td>
                            <?= $item['name']; ?>
                        </td>
                        <td>
                            <?= number_format($item['price']); ?>đ
                        </td>
                        <td>
                            <?= $item['quantity']; ?>
                        </td>
                        <td>
                            <?= $item['size']; ?>
                        </td>
                        <td>
                            <?= $item['material']; ?>
                        </td>

                        <?php
                        if ($item['featured'] == 1) {
                            echo '<td class="text-danger">Nổi bật</td>';
                        } else {
                            echo '<td>Không nổi bật</td>';
                        }
                        ?>
                        <?php
                        if ($item['recommend'] == 1) {
                            echo '<td class="text-danger">Được giới thiệu</td>';
                        } else {
                            echo '<td>Không Được giới thiệu</td>';
                        }
                        ?>
                        <td><img src="images/<?= $item['image']; ?>"></td>
                        <td>
                            <?= $item['cat_name']; ?>
                        </td>
                        <td><a href="?controller=<?= $controller ?>&redirect=<?= $redirect ?>&action=edit&id=<?= $item['id']; ?>"
                                class="btn btn-info">Sửa</a></td>
                        <td><a onClick="confirm('Bạn có chắc chắn xóa sản phẩm không?')"
                                href="?controller=<?= $controller ?>&redirect=<?= $redirect ?>&action=destroy&id=<?= $item['id']; ?>"
                                class="btn btn-danger">Xóa</a></td>
                    </tr>
                    <?php $stt++;
                } ?>

            </tbody>

        </table>
        <a href="?controller=<?= $controller ?>&redirect=<?= $redirect ?>&action=create" class="btn btn-success mb-3">+
            Thêm sản phẩm</a>
    </div>
</div>
</body>

</html>