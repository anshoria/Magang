<?php
require 'functions.php';

$id = $_GET['id'];
$karyawan = query("SELECT * FROM karyawan WHERE id = $id");
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <title>Data Karyawan</title>
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand">Data Karyawan</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
    </nav>
    <?php foreach ($karyawan as $row) : ?>

        <div class="container mt-5">
            <p><a href="karyawan.php">Karyawan</a> / Detail Karyawan / <?php echo $row["nama"] ?></p>
            <div class="card">
                <div class="card-header">
                    <p class="fw-bold">Informasi Karyawan</p>
                </div>
                <div class="card-body fw-bold">
                    <p>Nama Karyawan : <?php echo $row["nama"]; ?></p>
                    <p>NIP : <?php echo $row["NIP"]; ?></p>
                    <p>NIK : <?php echo  $row["NIK"]; ?></p>
                    <p>Unit : <?php echo  $row["unit"]; ?></p>
                    <p>Email : <?php echo  $row["email"]; ?></p>
                    <p>Status : <?php echo  $row["status"]; ?></p>
                    <p>--->Nomor HP : <?php echo  $row["nohp"]; ?></p>
                    <a href="karyawan.php?id=<?php echo $row['id']; ?>" class="btn btn-primary btn-sm text-white">Kembali</a>
                </div>
            </div>
        </div>


    <?php endforeach; ?>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
</body>

</html>