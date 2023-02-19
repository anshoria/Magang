<?php 
require 'functions.php';

if( isset($_GET["id"]) ) {
	// cek keberhasilan query
	if( hapus($_GET["id"]) > 0 ) {
		header ("Location:./karyawan.php");
	} else {
		echo "<script>
				alert('data gagal dihapus!');
				document.location.href = 'karyawan.php';
			  </script>";
	}
}
?>