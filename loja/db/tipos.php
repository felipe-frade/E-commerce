<?php

	$tipos = $conn->prepare('SELECT * FROM tipos_livros');
	$tipos->execute();

	while($tipo = $tipos->fetch()) {
		foreach($tipo as $nome => $campo){
			$temp[$nome] = utf8_encode($campo);
		}
		$array_tipos[] = $temp;
	}
	
?>