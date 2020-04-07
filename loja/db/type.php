<?php

	function get_livros_tipo($conn, $tipo){

		$tipo = 'produto_' . $tipo;

		// todos os livros
		$types_sql = "
            SELECT *, (SELECT COUNT(p.`id_produto`) FROM produtos p WHERE p.`id_livro` = l.`id_livro`) AS total
            FROM livros l
            JOIN produtos prod ON prod.`id_livro` = l.`id_livro`
            JOIN $tipo ON $tipo.id_produto = prod.id_produto
            GROUP BY l.id_tipo
		";

		$tipos = get($conn, $types_sql);
		// var_dump($livros);
		return $tipos;
	}

?>