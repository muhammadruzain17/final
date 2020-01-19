<?php
	
	include "connect.php";
	$id = $_POST['id'];
	$nama = $_POST['namaPegawai'];
	$posisi = $_POST['posisiPegawai'];
	$gaji = $_POST['gajiPegawai'];
	
	$connect->query("UPDATE tb_pegawai SET nama= '".$nama."',
		posisi= '".$posisi."', gaji= '".$gaji."' WHERE id=".$id);
?>