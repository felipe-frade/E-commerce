<?php

	function get_produto($conn, $single){
		// todos os livros
		$livros_sql = "
			SELECT *, (SELECT COUNT(p.`id_produto`) FROM produtos p WHERE p.`id_livro` = l.`id_livro`) AS total
			 FROM livros l JOIN produtos
			 ON produtos.`id_livro` = l.`id_livro` AND l.`id_livro` IN ($single)
			 GROUP BY l.`id_livro`
			 ORDER BY l.`nome`
		";

		$livros = get($conn, $livros_sql);
		// var_dump($livros);
		return $livros;
	}

	function get_comentarios($conn, $single){
		// todos os livros
		$comentarios_sql = "
			SELECT * FROM `comentarios`
			JOIN usuarios ON
			usuarios.`id_usuario` = comentarios.`id_usuario`
			WHERE comentarios.`id_produto` IN ($single)
		";

		$comentarios = get($conn, $comentarios_sql);
		// var_dump($livros);
		return $comentarios;
	}

?>