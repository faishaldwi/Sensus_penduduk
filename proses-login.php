<?php 
include_once 'library/activerecord.php';
session_start(); //memulai sesi
if (ISSET($_POST['simpan'])) 
{
	$email=$_POST['email'];
	$password=md5($_POST['password']);

	$table = "users"; //table yang digunakan
	$field = "*"; //field yang ditampilkan
	$where = "email='$email' and password='$password'"; //kondisi yang diinginkan

	$activerecord = new activerecord;
	$proses = $activerecord->getWhere($table,$field,$where); //nama table, nama field, where nya
	if ($data = $proses->fetch_object()) 
	{
		$_SESSION['id_pengguna']=$data->id;
		header("location: index.php");
	}
	else
	{
		echo "<script> alert('email atau password salah') ;document.location='login.php'; </script>";
	}

}





 ?>