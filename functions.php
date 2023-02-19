<?php 

// koneksi ke database
function koneksi() {
	$conn = mysqli_connect("localhost", "root", "", "magang") or die("koneksi gagal");

	return $conn;
}


function query($query) {
	$conn = koneksi();
	
	$result = mysqli_query($conn, $query);
	$rows = array();
	while( $row = mysqli_fetch_assoc($result) ) {
		$rows[] = $row;
	}

	return $rows;

}

function tambah($data) {
	$conn = koneksi();

	// menangkap data dari form
	$nama = htmlspecialchars($data["nama"]);
	$NIP = htmlspecialchars($data["NIP"]);
	$NIK = htmlspecialchars($data["NIK"]);
	$unit = htmlspecialchars($data["unit"]);
	$email = htmlspecialchars($data["email"]);
	$nohp = htmlspecialchars($data["nohp"]);
	$status = htmlspecialchars($data["status"]);

	// insert data ke database
	$query = "INSERT INTO karyawan
				VALUES
			('', '$nama', '$NIP', '$NIK', '$unit', '$email', '$nohp', '$status')";
	mysqli_query($conn, $query);

	return mysqli_affected_rows($conn);
}

function hapus($id) {
	$conn = koneksi();
	
	mysqli_query($conn, "DELETE FROM karyawan WHERE id = $id");

	return mysqli_affected_rows($conn);
}

function ubah($data) {
	$conn = koneksi();
	
	$id = ($data["id"]);	
	$nama = htmlspecialchars($data["nama"]);
	$NIP = htmlspecialchars($data["NIP"]);
	$NIK = htmlspecialchars($data["NIK"]);
	$unit = htmlspecialchars($data["unit"]);
	$email = htmlspecialchars($data["email"]);
	$nohp = htmlspecialchars($data["nohp"]);
	$status = htmlspecialchars($data["status"]);

	$query = "UPDATE karyawan SET 	
				nama = '$nama',
				NIP = '$NIP',
				NIK = '$NIK',
				unit = '$unit',
				email = '$email',
				nohp = '$nohp',
				status = '$status'
			  WHERE id = $id";

	mysqli_query($conn, $query);

	return mysqli_affected_rows($conn);
}

?>