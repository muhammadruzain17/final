<?php

	$connect = new mysqli("localhost", "root", "", "db_pegawai");
	if(!$connect)
	{
		echo "koneksi gagal";
		exit();
	}
?>