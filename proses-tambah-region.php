<?php 
session_start();

include_once 'library/activerecord.php';
$name= $_POST['region_name'];
$tanggal = date("Y-m-d h:i:s");

$table = "regions";
$value = "'', '$name', '$tanggal'";

$activerecord = new activerecord;
$proses = $activerecord->getInsert($table,$value); //nama table, nama field, where nya
if ($proses) {
	echo "<script> alert('Tambah Region Berhasil') </script>";
	header("location: index.php");
}
else{
	echo "<script> alert('Tambah Region Gagal') </script>";
	header("location: tambah-region.php");

}

 ?>