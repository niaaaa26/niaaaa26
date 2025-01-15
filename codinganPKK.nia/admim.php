<?php
 session_start();
if(isset($_SESSION['role'])){
header("Location: login.php");
}

 //jika dia bukan admin, maka dia tidak boleh masuk
 if($_SESSION ['role'] = "admin"){
    echo "405 anda tidak berhak untuk masuk ke halaman ini";
    die();
 }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>ini halaman admin</h1>

    <?php

    echo "id user : " .$_SESSION['id'] . "<br> />";
    echo "username : " .$_SESSION['username'] . "<br> />";
    echo "password : " .$_SESSION['password'] . "<br> />";
    echo "role : " .$_SESSION['role'] . "<br> />";
    ?>
</body>
</html>