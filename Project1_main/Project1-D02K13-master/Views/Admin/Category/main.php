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
    <div class="side-menu col-2">
        <!-- <title>Danh sách sản phẩm</title> -->
        <div class="brand-name">
            <h1><a href="index.php">CoZyHut</a></h1>
        </div>
        <ul>
            <li><a href="?controller=admin">Dashboard</a></li>
            <li><a href="?controller=admin&redirect=user">Thành viên</a></li>
            <li><a href="?controller=admin&redirect=product">Sản phẩm</a></li>
            <li><a href="#">Đơn hàng</a></li>
            <li><a href="?controller=admin&redirect=category">Danh mục</a></li>
            <li><a href="?controller=login&action=logout">Logout</a></li>

        </ul>
    </div>

    <div class="container col-10 ">
        <table class="table text-center">
            <h1 text-align="center">Danh sách danh mục</h1>
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Tên danh mục</th>
                    <th scope="col">Tác vụ</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $stt = 1;
                foreach ($record as $item) {
                    ?>
                    <tr>
                        <th scope="row">
                            <?= $stt ?>
                        </th>
                        <td>
                        <?= $item['cat_name'] ?>
                        </td>
                        <td>
                            <a href="?controller=<?= $controller ?>&redirect=<?= $redirect ?>&action=edit&id_cat=<?= $item['id_cat'] ?>"
                                class="btn btn-info mr-2">Sửa</a>
                        <td><a onClick="confirm('Bạn có chắc chắn xóa không?')"
                                href="?controller=<?= $controller ?>&redirect=<?= $redirect ?>&action=delete&id_cat=<?= $item['id_cat']; ?>"
                                class="btn btn-danger">Xóa</a></td>
                        </td>
                    </tr>
                    <?php $stt++;
                } ?>
            </tbody>
        </table>
        <div><a class="btn btn-success m-5"
                href="?controller=<?= $controller ?>&redirect=<?= $redirect ?>&action=create">+ Thêm danh mục</a></div>
    </div>
</div>
</body>

</html>