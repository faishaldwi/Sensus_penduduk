<?php 
session_start();

include_once 'library/activerecord.php';
$person_name= $_POST['person_name'];
$nama_daerah= $_POST['nama_daerah'];
$alamat= $_POST['alamat'];
$income= $_POST['income'];
$tanggal = date("Y-m-d h:i:s");
$id = $_POST['id'];

$table = "person";
$field = "name = '$person_name', region_id = '$nama_daerah', address='$alamat', income = '$income', created_at = '$tanggal'";
$where = "id = '$id'";
$activerecord = new activerecord;
$proses = $activerecord->getUpdate($table,$field,$where); //nama table, nama field, where nya
if ($proses) {
	echo "<script> alert('Edit Person Berhasil') </script>";
	header("location: daftar-person.php");
}
else{
	echo "<script> alert('Tambah Person Gagal') </script>";
	header("location: edit-person.php");

}

 ?>