<?php  
$conn = mysqli_connect("localhost", "root", "", "magang") or die("koneksi gagal");

if (isset($_POST['NIP']) && isset($_POST['password'])) {

  function test_input($data) {
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
  }

  $nip = test_input($_POST['NIP']);
  $password = test_input($_POST['password']);
  $role = test_input($_POST['role']);

  if (empty($nip)) {
    header("Location:./login2.php?error=NIP diperlukan");
  }else if (empty($password)) {
    header("Location:./login2.php?error=Password diperlukan");
  }else {


        
        $sql = "SELECT * FROM karyawan WHERE NIP='$NIP' AND password='$password' AND status='Aktif'";
        $result = mysqli_query($conn, $sql);

        if (mysqli_num_rows($result) === 1) {
          // the user name must be unique
          $row = mysqli_fetch_assoc($result);
          if ($row['password'] === $password) {
            $_SESSION['nama'] = $row['nama'];
            $_SESSION['id'] = $row['id'];
            $_SESSION['NIP'] = $row['NIP'];

            header("Location:./index.html");

          }else {
            header("Location:./login2.php?error=NIP atau Password anda salah");
          }
        }else {
          header("Location:./login2.php?error=NIP atau Password salah atau Akun anda tidak Aktif");
        }

  }
  
}else {
  header("Location:./login2.php");
}