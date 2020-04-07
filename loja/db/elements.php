<?php

	// function get_livros($conn){
	// 	// todos os livros
	// 	$elements_sql = "
 //            SELECT *, (SELECT COUNT(p.`id_produto`) FROM produtos p WHERE p.`id_livro` = l.`id_livro`) AS total
 //            FROM livros l
 //            JOIN produtos prod ON prod.`id_livro` = l.`id_livro`
 //            JOIN produto_usado pu ON pu.id_produto = prod.id_produto
	// 	";

	// 	$elements = get($conn, $elements_sql);
	// 	// var_dump($livros);
	// 	return $elements;
	// }

?>