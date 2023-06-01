<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thêm sản phẩm</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
    <script src="ckeditor/ckeditor.js"></script>
</head>

<body>
    <h1 text-align="center">Thêm sản phẩm</h1>
    <div class="container">
        <form method="post" enctype="multipart/form-data"
            action="?controller=<?= $controller ?>&redirect=<?= $redirect ?>&action=store">
            <div>
                <label for="name" class="form-label">Tên sản phẩm</label>
                <input type="text" class="form-control" id="name" name="name">
            </div>
            <div>
                <label for="price" class="form-label">Giá sản phẩm</label>
                <input type="text" class="form-control" id="price" name="price">
            </div>
            <div>
                <label for="size" class="form-label">Kích thước sản phẩm</label>
                <input type="text" class="form-control" id="size" name="size">
            </div>
            <div>
                <label for=" material" class="form-label">Vật liệu</label>
                <input type="text" class="form-control" id=" material" name=" material">
            </div>
            <div>
                <label for="quantity" class="form-label">Số lượng</label>
                <input type="text" class="form-control" id="quantity" name="quantity">
            </div>
            <div>
                <label for="image" class="form-label">Ảnh sản phẩm</label>
                <input type="file" class="form-control" id="image" name="image">
            </div>
            <div class="mb_3">
                <label for="cat_id" class="form-label"> Danh mục </label>
                <select name="cat_id" id="cat_id" class="form-label">
                    <?php
                    foreach ($record as $item) {    
                        ?>
                        <option value=" <?php echo $item['id_cat']; ?>">
                    <?php echo $item['cat_name']; ?>
                    </option>
                    <?php
                    } ?>
                </select>
            </div>
            <div>
                <label for="featured" class="form-label">Sản phẩm nổi bật</label>
                <input type="checkbox" id="featured" name="featured">
            </div>
            <div>
                <label for="recommend" class="form-label">Sản phẩm được giới thiệu</label>
                <input type="checkbox" id="recommend" name="recommend">
            </div>
            <div>Mô tả sản phẩm</div>
            <div class="form-floating mb-3">
                <textarea class="form-control" placeholder="Leave a comment here" id="description"
                    name="description"></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Thêm vào</button>
            <button type="reset" class="btn btn-warning">Nhập lại</button>
        </form>
    </div>
</body>
<script>CKEDITOR.replace('description')</script>

</html>