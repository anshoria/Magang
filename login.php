<?php
require 'functions.php';
$conn = koneksi();

if ( isset($_POST["login"])) {

    $NIP = $_POST["NIP"];
    $password = $_POST["password"];

    
    
    $sql = "SELECT * FROM karyawan WHERE NIP = 'NIP' && password='$password' && status='Aktif'";
    $result = mysqli_query($conn, $sql);

    if( mysqli_num_rows($result) === 1 ) {
        
        $row = mysqli_fetch_assoc($result);
        if ($row['password'] === $password) {
            header("Location:./index.html");
            exit;
          }

    }

}


?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login</title>
</head>
<body>
    <h1>halaman login</h1>
    <form action="" method="post">
    <ul>
        <li>
            <label for="">username :</label>
            <input type="text" name="username">
        </li>
        <li>
            <label for="">password :</label>
            <input type="password" name="password">
        </li>
        <li>
            <button type="submit" name="login">login</button>
        </li>
    </ul>
    </form>
    
    
</body>
</html>