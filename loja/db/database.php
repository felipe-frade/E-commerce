<?php

	$username = 'root';
	$password = '';

	try {
	  	$conn = new PDO('mysql:host=localhost; dbname=loja', $username, $password);
    	$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	} catch(PDOException $e) {
	    echo 'ERROR: ' . $e->getMessage();
	}

	function get($conn, $sql){
		$sql= $conn->prepare($sql);
		$sql->execute();

		while($temp = $sql->fetch()) {
			foreach ($temp as $key => $value) {
				$row[$key] = utf8_encode($value);
			}
			$array[] = $row;
		}
		return @$array;
	}

	include "tipos.php";

?>