<!DOCTYPE HTML>
<!--
	Spectral by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Spectral by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<link rel="stylesheet" href="assets/css/noscript.css" />
		<script>
			parent.location.hash = "hello";
		</script>
	</head>
	<body class="is-preload">

		<!-- Page Wrapper -->
			<div id="page-wrapper">

				<!-- Header -->
					<?php include "header.php";?>

				<!-- Main -->
					<article id="main">
						<header>
							<h2>Quer comprar algo?</h2>
						</header>
						<section class="wrapper style5">
							<article class="all-produtos">
								<?php
									foreach ($livros as $livro):
										if($livro['id_livro'] != ''):
								?>
								<div class="produto">
									<a class="no-link" href="index.php?page=generic&single=<?php echo $livro['id_livro']?>">
										<div class="imagem-produto"><img src="images/produtos/livro<?php echo $livro['id_livro']?>.jpg"></div>
										<div class="texto">
											<h2><?php echo $livro["nome"]?></h2>
											<span><?php echo $livro["descricao"]?></span>
											<span>Preço: <?php echo $livro["preco"]?></span>
											<span>Total: <?php echo $livro["total"]?></span>
										</div>
									</a>
								</div>
								<?php endif; endforeach;?>
							</article>
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