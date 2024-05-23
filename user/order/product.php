<?php
    $sql_product = "SELECT * FROM `monan`, `danhmuc` WHERE monan.id_danhmuc = danhmuc.id_danhmuc 
    AND monan.idmonan = '$_GET[id]' LIMIT 1";
    $query_product = mysqli_query($conn, $sql_product);
    while($row_product = mysqli_fetch_array($query_product)){
?>

<div class="wrapper_product">
    <form method="POST" action="order/add_cart.php?idmonan=<?php echo $row_product['idmonan'] ?>">
        <div class="chitiet_product">
            <img src="../admincp/product/images/<?php echo $row_product['imgURL'] ?>">
            <div class="noidung_product">
            <h1><?php echo $row_product['tenmonan'] ?></h1>
            <p class="mota_product"><?php echo $row_product['mota'] ?></p>
            <p class="gia_product"><?php echo number_format($row_product['gia'],0,',','.') ?> <u>đ</u></p>
            <p><input class="themgiohang" name="themgiohang" type="submit" value="Thêm vào giỏ hàng"></p>
            </div>
        </div>
    </form>
</div>
<?php
}
?>