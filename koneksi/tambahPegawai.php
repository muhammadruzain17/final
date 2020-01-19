<?php
	
	include "connect.php";
	$nama = $_POST['nama'];
	$posisi = $_POST['posisi'];
	$gaji = $_POST['gaji'];
	
	$connect->query("INSERT INTO tb_pegawai (nama, posisi, gaji)
		VALUE ('".$nama."','".$posisi."','".$gaji."')");
?>