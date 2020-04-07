<?php

	function get_livros($conn){
		// todos os livros
		$livros_sql = "
			SELECT *, (SELECT COUNT(p.`id_produto`) FROM produtos p WHERE p.`id_livro` = l.`id_livro`) AS total
			 FROM livros l LEFT JOIN produtos
			 ON produtos.`id_livro` = l.`id_livro`
			 GROUP BY l.`id_livro`
			 ORDER BY l.`nome`
		";

		$livros = get($conn, $livros_sql);
		// var_dump($livros);
		return $livros;
	}

?>