<?php
include "koneksi.php";

$nama_produk = $_POST["nama_produk"];
$deskripsi_produk = $_POST["deskripsi_produk"];
$harga = $_POST["harga"];

//tipe data array
$nama_foto = $_FILES["foto"]["name"];
$lokasi_tap = $_FILES["foto"]["tap_name"];

$query = mysqli_query($koneksi, "insert into tambah_produk values (nama_produk, deskripsi_produk, harga, foto) ")

?>