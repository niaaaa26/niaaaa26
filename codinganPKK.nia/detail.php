<?php
include("koneksi.php");
$query = mysqli_query($koneksi, "select * from tambah_produk where id=1");

$data = mysqli_fetch_array($query);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <img src="foto/<?= $data['foto'] ?>">
    <h1><?= $data["id"] ?></h1>
    <h1><?= $data["nama"] ?></h1>
    <h1><?= $data["harga"] ?></h1>
    <h1><?= $data["foto"] ?></h1>

    <form action="proseskeranjang.php"method="post">
        <input type="hidden" nama="produk_id"value="<?=$id?>">
        <button type="submit">keranjang</button>
</form>
</body>
</html>
