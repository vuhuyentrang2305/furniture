<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thêm sản phẩm</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
    <script src="ckeditor/ckeditor.js"></script>
    <style>
        img {
            width: 200px;
            height: auto;
        }
    </style>
</head>
<body>
    <h1 text-align="center">Sửa sản phẩm</h1>
    <div class="container">
        <?php
        foreach($record['product'] as $item) {
        ?>
        <form method="post" enctype="multipart/form-data" action="?controller=<?= $controller ?>&redirect=<?= $redirect ?>&action=update" >
            <input type="hidden" name="id" value="<?= $item['id'] ?>">
            <div>
                <label for="name" class="form-label">Tên sản phẩm</label>
                <input type="text" class="form-control" id="name" name="name" value="<?= $item['name'] ?>">
            </div>
            <div>
                <label for="price" class="form-label">Giá sản phẩm</label>
                <input type="text" class="form-control" id="price" name="price" value="<?= $item['price'] ?>">
            </div>
            <div>
                <label for="size" class="form-label">Kích thước sản phẩm</label>
                <input type="text" class="form-control" id="size" name="size" value="<?= $item['size'] ?>">
            </div>
            <div>
                <label for=" material" class="form-label">Vật liệu</label>
                <input type="text" class="form-control" id=" material" name=" material" value="<?= $item['material'] ?>">
            </div>
            <div>
                <label for="quantity" class="form-label">Số lượng</label>
                <input type="text" class="form-control" id="quantity" name="quantity" value="<?= $item['quantity'] ?>">
            </div>
            <div>
                <label for="image" class="form-label">Ảnh sản phẩm</label>
                <input type="file" class="form-control" id="image" name="image">
                <img src="images/<?= $item['image'] ?>">
            </div>
            <div>
                <label for="category" class="form-label">Danh mục</label>
                <select name="cat_id" id="cat_id" class="form-control">
                    <?php
                        foreach($record['category'] as $item_cat) {
                    ?>
                    <option <?php if($item_cat['id_cat']==$item['cat_id']){ echo 'selected';}?> value="<?= $item_cat['id_cat'] ?>"><?= $item_cat['cat_name'] ?> </option>
                    <?php } ?>
                </select>
            </div>
        
            <div>
                <label for="featured" class="form-label">Sản phẩm nổi bật</label>
                <input type="checkbox" id="featured" name="featured" <?php if($item['featured'] == 1) { echo 'checked';}else {echo '';} ?>>
            </div>
            <div>
                <label for="recommend" class="form-label">Sản phẩm được giới thiệu</label>
                <input type="checkbox" id="recommend" name="recommend" <?php if($item['recommend'] == 1) { echo 'checked';}else {echo '';} ?>>
            </div>
            <div>Mô tả sản phẩm</div>
            <div class="form-floating mb-3">
                <textarea class="form-control" placeholder="Leave a comment here" id="description" name="description"><?= $item['description'] ?></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Sửa</button>
            <a href="?controller=admin&redirect=product" class="btn btn-warning">Quay lại</a>
        </form>
        <?php } ?>
    </div>
</body>
<script>CKEDITOR.replace('description')</script>
</html>