<?php 
session_start();
include "library/activerecord.php";
$id = $_GET['id'];
$table = "regions";
$where = "id='$id'";

$activerecord = new activerecord;
$proses = $activerecord->getDelete($table, $where);

if ($proses) {
	echo "<script> alert('Hapus Region Berhasil') </script>";
	header("location: daftar-region.php");
}
else{
	echo "<script> alert('Hapus Region Gagal') </script>";
	header("location: daftar-region.php");

}

 ?>