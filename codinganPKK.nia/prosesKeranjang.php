<?php

// ambil id produk
$produk_id = $_POST['produk_id'];

$id_user = $_SESSION['id'];

include "koneksi.php";

$query = mysqli_query($koneksi, "insert into cart values (null, $id_user,now()");

$id_cart = mysqli_insert_id(koneksi);

$query2 = mysqli_query($koneksi, "insert into cart_item ( null, $id_cart, $idproduk, now()");

?>