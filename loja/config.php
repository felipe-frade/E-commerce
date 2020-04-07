<?php

	// session_destroy();

	$dados = $_SESSION;

	if(empty($dados['usuario'])){
		header('Location: login.php');
		exit;
	}else{

		if($page == 'cart'){

			if(!empty($_GET['acao'])){
				$acao = @$_GET['acao'];
				$produto = @$_GET['id_produto'];

				switch ($acao) {
					case 'add':
						$dados['produtos'][$produto] = $produto;
					break;

					case 'remove':
						unset($dados['produtos'][$produto]);
					break;
				}
			}

			$cart_sql = implode(',', $dados['produtos']);

			$livros_sql = "SELECT *, (SELECT COUNT(p.`id_produto`) FROM produtos p WHERE p.`id_livro` = l.`id_livro`) AS total
				 FROM livros l JOIN produtos
				 ON produtos.`id_livro` = l.`id_livro` AND produtos.`id_produto` IN ($cart_sql)
				 GROUP BY l.`id_livro`
				 ORDER BY l.`nome`";

			$livros = get($conn, $livros_sql);

			$_SESSION['produtos'] = $dados['produtos'];
		}
	}
?>