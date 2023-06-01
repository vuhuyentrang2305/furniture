


<!--recommended product-->
<div class="products">
<h3 class="text-center" style="padding-top: 50px;">Sản phẩm yêu thích</h3>
        <div class="row" style="margin-top: 50px;">
        <?php
        foreach ($arr['recommend'] as $item) {
            ?>
            <div class="col-md-3 py-4 py-md-0">
                <div class="card">
                <a href="?redirect=product&id=<?= $item['id'] ?>"><img src="images/<?= $item['image'] ?>" height="200px"> </a>
                    <div class="card-body">
                        <h5 class="card-titel text-center"> <a href="?redirect=product&id=<?= $item['id'] ?>"></a><?= $item['name'] ?></h5>
                        <!-- <p class="text-center">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged</p>
         -->
                        <div id="btn2" class="text-center"><button><a href="?redirect=product&id=<?= $item['id'] ?>">Xem chi tiết</a></button></div>
                    </div>
                </div>
            </div>
        <?php } ?>
        <!--end recommended product-->
    </div>
</div>

<!-- New Product -->
<div class="products">
    <h3 class="text-center" style="margin-top: 50px; ">Sản phẩm mới</h3>
    <div class="row" style="margin-top: 100px;">
        <?php
        foreach ($arr['new'] as $item) {
            ?>
            <div class="col-lg-3 col-md-4 col-sm-12">
                <div class="card" id="tpc">
                <a href="?redirect=product&id=<?= $item['id'] ?>"></a><img src="images/<?= $item['image'] ?>" alt="" class="card image-top"></a>
                    <div class="card-img-overlay">
                        <h4 class="card-titel"><a href="?redirect=product&id=<?= $item['id'] ?>"> <?= $item['name'] ?></a>
                           
                        </h4>
                        <div id="btn2"><button><a href="?redirect=product&id=<?= $item['id'] ?>">Xem chi tiết</a></button>
                        </div>
                    </div>
                </div>
            </div>
        <?php } ?>
    </div>
</div>
<!-- End New Product -->

<!-- <div class="CSSgal"> -->

  <!-- Don't wrap targets in parent -->
  <!-- <s id="s1"></s> 
  <s id="s2"></s>
  <s id="s3"></s>
  <s id="s4"></s>

  <div class="slider">
    <div class="card">
   
	</div>
  </div> -->
  <!-- <div class="prevNext">
    <div><a href="#s4"></a><a href="#s2"></a></div>
    <div><a href="#s1"></a><a href="#s3"></a></div>
    <div><a href="#s2"></a><a href="#s4"></a></div>
    <div><a href="#s3"></a><a href="#s1"></a></div>
  </div> -->
  <!-- <div class="bullets">
    <a href="#s1">1</a>
    <a href="#s2">2</a>
    <a href="#s3">3</a>
    <a href="#s4">4</a>
  </div>

</div> -->

<!--	Feature Product	-->
<div class="products">
    <h3 class="text-center" style="margin-top: 50px; ">Sản phẩm nổi bật</h3>
    <div class="product-list row">
        <?php
        foreach ($arr['featured'] as $item) {
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
<!--	End Feature Product	-->
