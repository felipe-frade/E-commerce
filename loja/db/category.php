<?php

	function get_tipos($conn, $tipos = 'l.`id_tipo`'){
		// livros - todos os tipo
		$tipos_sql = "
			SELECT l.*, (SELECT COUNT(p.`id_produto`) FROM produtos p WHERE p.`id_livro` = l.`id_livro`) AS 
			total, tipos_livros.`descricao` AS titulo 
			FROM `livros` l JOIN tipos_livros 
			ON tipos_livros.`id_tipo` = l.`id_tipo` AND tipos_livros.`id_tipo` = $tipos
			ORDER BY tipos_livros.`id_tipo`
		";

		$livros[] = get($conn, $tipos_sql);
		return $livros;
	}

?>