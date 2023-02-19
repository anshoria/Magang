<?php
require 'functions.php';

if( isset($_POST["tambah"]) ) {
	// cek keberhasilan query
	if( tambah($_POST) > 0 ) {
		header ("Location:./karyawan.php");
	} else {
		echo "<script>
				alert('data gagal diinputkan!');
				document.location.href = 'karyawan.php';
			  </script>";
	}
}
?>
<!DOCTYPE html>
<html>

<head>
    <title>Form Tambah Data Karyawan</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.24/css/dataTables.bootstrap5.min.css">
</head>
<body>


 
</br>

<form action="" method="post">
<div class="container">
<h2>Tambah Karyawan</h2>
</br>
    <div class="mb-3">
        <label for="nama" class="form-label">Nama</label>
        <input type="text" class="form-control" id="nama" placeholder="Masukkan Nama Karyawan" name="nama" required>
    </div>
    <div class="mb-3">
        <label for="NIP" class="form-label">NIP</label>
        <input type="text" class="form-control" id="NIP" placeholder="Masukkan NIP Karyawan" name="NIP" required>
    </div>
    <div class="mb-3">
        <label for="NIK" class="form-label">NIK</label>
        <input type="text" class="form-control" id="NIK" placeholder="Masukkan NIK Karyawan" name="NIK" required>
    </div>
    <label for="unit" class="form-label">Unit</label>
    <div class="input-group">
        
        <select class="form-select" id="inputGroupSelect04" aria-label="Example select with button addon" name="unit" id="unit">
            <option selected>SUBBAG UMUM</option>
            <option value="Seksi Pencairan Dana">Seksi Pencairan Dana</option>
            <option value="Seksi Bank">Seksi Bank</option>
            <option value="Seksi Manajemen SATKER dan Kepatuhan Internal">Seksi Manajemen SATKER dan Kepatuhan Internal</option>
            <option value="Seksi Verifikasi dan Akuntansi">Seksi Verifikasi dan Akuntasnsi</option>
        </select>
    </div>
    <div class=" mb-3 mt-3">
        <label for="email" class="form-label">Email</label>
        <input type="text" class="form-control" id="email" placeholder="Masukkan Email Karyawan" name="email" required></input>
    </div>
    <div class="mb-3">
        <label for="nohp" class="form-label">Nomor HP</label>
        <input type="text" class="form-control" id="nohp" placeholder="Masukkan Nomor HP Karyawan" name="nohp" required></input>
    </div>
    <label for="status" class="form-label">Status</label>
    <div class="input-group">
        <select class="form-select" id="inputGroupSelect04" aria-label="Example select with button addon" name="status" id="status">
            <option selected>Aktif</option>
            <option value="Tidak Aktif">Tidak Aktif</option>
        </select>
    </div>
    </br>
    <button type="submit" name="tambah" class="btn btn-success">Tambah Data</button>
    <a type="button" class="btn btn-primary" href="Karyawan.php">Tutup</a>

    </div>

</form>

    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.24/js/dataTables.bootstrap5.min.js"></script>

</body>

</html>