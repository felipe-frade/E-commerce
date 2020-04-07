<!DOCTYPE HTML>
<!--
	Spectral by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Spectral by HTML5 UP</title>
		<meta charset="iso-8859-1" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<link rel="stylesheet" href="assets/css/noscript.css" />
	</head>
	<body class="is-preload">

		<!-- Page Wrapper -->
			<div id="page-wrapper">

				<!-- Header -->
					<?php include "header.php";?>

				<!-- Main -->
					<article id="main">
						<header>
							<h2>About Us</h2>
							<p>Aliquam ut ex ut interdum donec amet imperdiet eleifend</p>
						</header>
						<section class="wrapper style5">
							<div class="inner custom-item cart-items">
								<?php

								if (!isset($livros) ) {
									echo '<h2>Nenhum produto registrado!</h2>';
								}else{

									foreach ($livros as $livro) :

								?>
								<div class="cart-item">
									<div class="inner-content">
										<div class="produto-content">
											<h3><?php echo $livro['nome']?></h3>
											<p><?php echo $livro['descricao']?></p>
											<p>Autor: <?php echo $livro['autor']?></p>
											<p>Preço: R$<?php echo number_format($livro["preco"], 2, ',', ' ');?></p>
											<p>Total: <?php echo $livro['total']?></p>
											<a href="index.php?page=cart&acao=remove&id_produto=<?php echo $livro['id_produto']?>">
												<button>Remover do carrinho</button>
											</a>
										</div>
									</div>
									<div class="inner-image">
										<img src="images/produtos/livro<?php echo $livro['id_livro']?>.jpg">
									</div>
								</div>
								<?php endforeach; ?>
								<div class="inner-content fomulario" style="margin: auto">
									<form action="assets/php/compra.php" method="post">
										<input type="submit" name="realizar" value="Comprar">
									</form>
								</div>
								<?php } ?>
							</div>
						</section>
					</article>

				<!-- Footer -->
					<?php include "footer.php"?>

			</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>