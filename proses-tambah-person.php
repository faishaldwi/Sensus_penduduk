<?php 
session_start();

include_once 'library/activerecord.php';
$person_name= $_POST['person_name'];
$nama_daerah= $_POST['nama_daerah'];
$alamat= $_POST['alamat'];
$income= $_POST['income'];
$tanggal = date("Y-m-d h:i:s");

$table = "person";
$value = "'', '$person_name', '$nama_daerah', '$alamat', '$income', '$tanggal'";

$activerecord = new activerecord;
$proses = $activerecord->getInsert($table,$value); //nama table, nama field, where nya
if ($proses) {
	echo "<script> alert('Tambah Person Berhasil') </script>";
	header("location: daftar-person.php");
}
else{
	echo "<script> alert('Tambah Person Gagal') </script>";
	header("location: tambah-person.php");

}

 ?>