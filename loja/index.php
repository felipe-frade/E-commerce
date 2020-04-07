<?php	
	
	$desc[0] = ["head" => "It", "desc" => "Livro de terror de stephen king.", "preco" => "Preco: 99,00 R$"];
	$desc[1] = ["head" => "Eu, robo", "desc" => "Livro de terror de stephen king.", "preco" => "Preco: 99,00 R$"];
	$desc[2] = ["head" => "morangos mofados", "desc" => "Livro de terror de stephen king.", "preco" => "Preco: 99,00 R$"];
	$desc[3] = ["head" => "1984", "desc" => "Livro de terror de stephen king.", "preco" => "Preco: 99,00 R$"];
	$desc[4] = ["head" => "revolucao dos bichos", "desc" => "Livro de terror de stephen king.", "preco" => "Preco: 99,00 R$"];
	$count = 0;

	$page     = @$_GET['page'];
	session_start();

	// tabelas
	include 'db/database.php';
	include 'config.php';
	switch ($page) {
		case 'products':
			include 'db/products.php';

			$livros  = get_livros($conn);
		break;

		case 'type':
			include 'db/type.php';

			$tipo = @$_GET['type'];
			$livros = get_livros_tipo($conn, $tipo);
		break;
		
		case 'category':
			include 'db/category.php';

			$category = @$_GET['cat'];
			$categories = get_tipos($conn, $category);
		break;

		case 'cart':
			include 'db/single.php';
		break;

		case 'generic':
			include 'db/single.php';

			$single = @$_GET['single'];
			$singles = get_produto($conn, $single);
			$comentarios = get_comentarios($conn, $single);
		break;
	}

	

	if(($page != null)&&($page != '')){
		if(file_exists($page.'.php')){
			include $page.'.php';
		}else {
			include 'erro404.php';
		}
	}else{
		include 'home.php';
	}



?>