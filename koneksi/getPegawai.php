<?php

	include "connect.php";
	$hasil = $connect->query("select * from tb_pegawai");
	
	$result = array();
	while($dapatData = $hasil->fetch_assoc()){
		$result[] = $dapatData;
	}
	
	echo json_encode($result);
?>