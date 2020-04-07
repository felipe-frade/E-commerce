<?php

	session_start();

	$usuario = @$_GET['usuario'];
	$senha = @$_GET['senha'];
	$acao = @$_GET['acao'];

	if(isset($acao) && $acao == 'Sair'){
		header('Location: http://www.google.com.br');
		exit;
	}else {
		if(isset($usuario) && isset($senha) && $usuario != '' && $senha != ''){

			if($usuario == 'felipe' && $senha == '123'){
				$_SESSION['usuario']['nome'] = $usuario;
				$_SESSION['usuario']['senha'] = $senha;
				$_SESSION['produtos']['0'] = 0;
				header('Location: ../../index.php');
			}else {
				$_SESSION['status'] = 'Usuario negado!';
				header('Location: ../../index.php?page=login');
			}

			exit;
		}else {
			$_SESSION['status'] = 'Forneça informações de usuario!';
			header('Location: ../../index.php?page=login');
		}
	}
?>