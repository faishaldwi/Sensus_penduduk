<?php 
session_start();

include_once 'library/activerecord.php';
$name= $_POST['region_name'];
$tanggal = date("Y-m-d h:i:s");
$id = $_POST['id'];

$table = "regions";
$field = "name = '$name'";
$where = "id = '$id'";
$activerecord = new activerecord;
$proses = $activerecord->getUpdate($table,$field,$where); //nama table, nama field, where nya
if ($proses) {
	echo "<script> alert('Edit Region Berhasil') </script>";
	header("location: daftar-region.php");
}
else{
	echo "<script> alert('Tambah Region Gagal') </script>";
	header("location: edit-region.php");

}

 ?>