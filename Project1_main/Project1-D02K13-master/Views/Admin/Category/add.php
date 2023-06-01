<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <form method="post" action="?controller=<?= $controller ?>&redirect=<?= $redirect ?>&action=store">
        <?php if(isset($errorr)) {echo $errorr;} ?>
        <h1 text-align="center">Thêm mới danh mục</h1>
        <div class="mb-3">
            <label for="name" class="form-label">Tên danh mục</label>
            <input type="text" id="name" name="name" class="form-control" placeholder="Nhập tên danh mục" required>
        </div>
        <button type="submit" name="submit" class="btn btn-primary">Thêm mới</button>
        <button type="reset" name="reset" class="btn btn-warning">Nhập lại</button>
    </form>
</div>
</body>
</html>