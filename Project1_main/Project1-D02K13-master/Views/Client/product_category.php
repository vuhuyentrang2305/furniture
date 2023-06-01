
<div class="products">
<h3 class="text-center" style="margin-top: 50px; ">Danh mục sản phẩm</h3>
<!-- <h3 class="text-center" style="margin-top: 50px; "><a href="?redirect=category&id_cat=<?= $item['id_cat'] ?>"><?=  $item['cat_name'] ?></a>  </h3> -->
    <div class="product-list row">
        <?php
        foreach ($arr['product'] as $item) {
            ?>
            <div class="col-lg-3 col-md-4 col-sm-12 mx-product">
                <div class="product-item card text-center">
                    <a href="?redirect=product&id=<?= $item['id'] ?>"><img src="images/<?= $item['image'] ?>"></a>
                    <h4><a href="?redirect=product&id=<?= $item['id'] ?>"><?= $item['name'] ?></a></h4>
                    <p>Giá Bán: <span>
                            <?= number_format($item['price']); ?>đ
                        </span></p>
                </div>
            </div>
        <?php } ?>
    </div>
</div>