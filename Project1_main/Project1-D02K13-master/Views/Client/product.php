<!--	List Product	-->
<?php
foreach ($arr['product'] as $item) {
    ?>
    <!-- main content -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
    <link rel="stylesheet" type="text/css"
        href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
    <link rel="stylesheet" type="text/css"
        href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css">
    <div class="pd-wrap">
        <div class="container">
            <div class="heading-section">
                <h2>Sản phẩm chi tiết</h2>
            </div>
            <div class="row">
                <div class="col-md-8">
                    <div class="bg-image hover-overlay hover-zoom ripple rounded" data-mdb-ripple-color="light">
                        <img src="images/<?= $item['image'] ?>">
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="product-dtl">
                        <div class="product-info">
                            <div class="product-name">
                                
                                    <?= $item['name'] ?>
                                
                            </div>
                            <div class="product-price-discount">
                                <strong> Giá:
                                </strong>
                                <?= number_format($item['price']); ?>đ
                            </div>

                            <div class="product-price-discount"><strong> Kích thước:
                                   
                                </strong>
                                <?= $item['size'] ?></div>

                            <div class="product-price-discount"><span><strong>Vật liệu:</strong>
                                    <?= $item['material'] ?>
                                </span></div>
                            <div class="product-price-discount"><span><strong>Tình trạng:</strong>
                                    <?php
                                    if ($item['quantity'] == 0) {
                                        echo '<span class="text-danger">Hết hàng</span>';
                                    } else {
                                        echo '<span id="status">Còn hàng</span>';
                                    }
                                    ?>
                                </span></div>
                        </div>
                        <button id="add-cart" class="btn_check" type="submit" name="sbm" weight="50px">
                            <a href="index.php?redirect=cart&action=add&id=<?= $item['id'] ?>">Add to cart</a>
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <div class="product-info-tabs">
            <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" id="description-tab" data-toggle="tab" href="#description" role="tab"
                        aria-controls="description" aria-selected="true">Mô tả sản phẩm</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="review-tab" data-toggle="tab" href="#review" role="tab" aria-controls="review"
                        aria-selected="false">Bảo hành</a>
                </li>
            </ul>
            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active" id="description" role="tabpanel" aria-labelledby="description-tab">
                    <?= $item['description'] ?>
                </div>
                <div class="tab-pane fade" id="review" role="tabpanel" aria-labelledby="review-tab">
                    <div class="review-heading">Bảo hành</div>
                    <p class="mb-20">COZYHUT cung cấp dịch vụ giao hàng tận nơi, lắp ráp và sắp xếp vị trí theo đúng ý muốn
                        của quý khách:</p>
                    <p class="mb-20">- MIỄN PHÍ giao hàng trong các Quận nội thành Tp.Hồ Chí Minh và Hà Nội, áp dụng cho các
                        đơn hàng trị giá trên 10 triệu.</p>
                    <p class="mb-20">- Đối với khu vực các tỉnh lân cận: Tính phí hợp lý theo dựa trên quãng đường vận
                        chuyển</p>
                </div>

            </div>
        </div>
    </div>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="	sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
    <!-- product_details -->
    <!--	Comment	-->
    <div id="comment" class="row">
        <!-- <div class="col-lg-12 col-md-12 col-sm-12">
            <h3>Bình luận sản phẩm</h3>
            <form method="post">
                <div class="form-group">
                    <label>Tên:</label>
                    <input name="comm_name" required type="text" class="form-control">
                </div>
                <div class="form-group">
                    <label>Email:</label>
                    <input name="comm_mail" required type="email" class="form-control" id="pwd">
                </div>
                <div class="form-group">
                    <label>Nội dung:</label>
                    <textarea name="comm_details" required rows="8" class="form-control"></textarea>
                </div>
                <button type="submit" name="sbm" class="btn btn-primary">Gửi</button>
            </form>
        </div>
    </div> -->

    </div>
<?php } ?>