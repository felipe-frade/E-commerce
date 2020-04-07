<?php

	session_start();

	$dados = $_SESSION;
	$texto = "";

	if($dados["usuario"]["nome"] < 1){

		$texto = "Usuario (" . $dados["usuario"]["nome"] . ")" . "\r\n";
		$texto .= "Pediu na data (" . date("d-m-y") . ")" . "\r\n";
		$texto .= "Do horário (" . date("s-i-h") . ")" . "\r\n";
		

		foreach ($dados["produtos"] as $id) {
			if ($id != 0) {
				$texto .= "Produto: " . $id . "\r\n";
			}
		}

		$handle = fopen("../pedidos/pedido-" . $dados["usuario"]["nome"] . "-" . date("s-i-h-d-m-y") . ".txt" , "w+");
		fwrite($handle, $texto);
		fclose($handle);
		header("Location: ../../index.php");
	}else{
		$_SESSION["status"] = "Alguma coisa deu errado!";
		header("Location: ../../login.php");
	}
	die;

?>