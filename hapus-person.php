<?php 
session_start();
include "library/activerecord.php";
$id = $_GET['id'];
$table = "person";
$where = "id='$id'";

$activerecord = new activerecord;
$proses = $activerecord->getDelete($table, $where);

if ($proses) {
	echo "<script> alert('Hapus PErson Berhasil') </script>";
	header("location: daftar-person.php");
}
else{
	echo "<script> alert('Hapus Person Gagal') </script>";
	header("location: daftar-person.php");

}

 ?>