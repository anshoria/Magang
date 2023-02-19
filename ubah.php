<?php 
require 'functions.php';

$id = $_GET["id"];
$karyawan = query("SELECT * FROM karyawan WHERE id = $id");
$kry = $karyawan[0];

if( isset($_POST["ubah"]) ) {
	if( ubah($_POST) > 0 ) {
		echo "<script>
				alert('data berhasil diinputkan!');
				document.location.href = 'karyawan.php';
			  </script>";
	} else {
		echo "<script>
				alert('data gagal diubah!');
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
<h2>Edit Karyawan</h2>
</br>
    <input type="hidden" name="id" value="<?php echo $kry["id"]; ?>">
    <div class="mb-3">
        <label for="nama" class="form-label">Nama</label>
        <input value="<?php echo $kry["nama"]; ?>" type="text" class="form-control" id="nama" placeholder="Masukkan Nama Karyawan" name="nama" required autocomplete="off">
    </div>
    <div class="mb-3">
        <label for="NIP" class="form-label">NIP</label>
        <input value="<?php echo $kry["NIP"]; ?>" type="text" class="form-control" id="NIP" placeholder="Masukkan Nama Karyawan" name="NIP" required>
    </div>
    <div class="mb-3">
        <label for="NIK" class="form-label">NIK</label>
        <input value="<?php echo $kry["NIK"]; ?>" type="text" class="form-control" id="NIK" placeholder="Masukkan Nama Karyawan" name="NIK" required>
    </div>
    <div class="input-group">
        <select value="<?php echo $kry["unit"]; ?>" class="form-select" id="inputGroupSelect04" aria-label="Example select with button addon" name="unit">
            <option selected>SUBBAG UMUM</option>
            <option value="Seksi Pencairan Dana">Seksi Pencairan Dana</option>
            <option value="Seksi Bank">Seksi Bank</option>
            <option value="Seksi Manajemen SATKER dan Kepatuhan Internal">Seksi Manajemen SATKER dan Kepatuhan Internal</option>
            <option value="Seksi Verifikasi dan Akuntansi">Seksi Verifikasi dan Akuntasnsi</option>
        </select>
    </div>
    <div class=" mb-3">
        <label for="email" class="form-label">Email</label>
        <input value="<?php echo $kry["email"]; ?>" type="text" class="form-control" id="email" placeholder="Masukkan Penerbit Karyawan" name="email" required></input>
    </div>
    <div class="mb-3">
        <label for="nohp" class="form-label">Nomor HP</label>
        <input value="<?php echo $kry["nohp"]; ?>" type="text" class="form-control" id="nohp" placeholder="Masukkan Harga Karyawan" name="nohp" required></input>
    </div>

    <div class="input-group">
        <select value="<?php echo $kry["status"]; ?>" class="form-select" id="inputGroupSelect04" aria-label="Example select with button addon" name="status">
            <option selected>Aktif</option>
            <option value="Tidak Aktif">Tidak Aktif</option>
        </select>
    </div>
    </br>
    <button type="submit" name="ubah" class="btn btn-success">Simpan</button>
    <a type="button" class="btn btn-primary" href="Karyawan.php">Tutup</a>

    </div>

</form>



</body>
</html>