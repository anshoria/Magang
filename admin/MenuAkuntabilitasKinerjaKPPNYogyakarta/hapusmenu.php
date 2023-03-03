<?php
session_start();
if (!isset($_SESSION['role']) == 'admin') {
    header("location: ../../Login/login.php");
    exit;
}
if ( !isset($_SESSION['NIP']) && !isset($_SESSION['id'])) {
    header("location: ../../Login/login.php");
    exit;
} 
require '../Pegawai/functions.php';

if( isset($_GET["id"]) ) {
	// cek keberhasilan query
	if( hapusmenu3($_GET["id"]) > 0 ) {
		header ("Location:./cardadmin.php");
	} else {
		echo "<script>
				alert('data gagal dihapus!');
				document.location.href = 'cardadmin.php';
			  </script>";
	}
}
?>
