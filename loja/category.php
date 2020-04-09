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
							<?php if ($categories[0] != NULL): ?>
								<h2><?php echo $categories[0][0]['titulo']?></h2>
							<?php else: ?>
								<h2>Quer comprar algo?</h2>
							<?php endif; ?>
						</header>
						<section class="wrapper style5">
							<article class="all-produtos">
								<?php
									// se tem algum produto com aquela categoria
									if ($categories[0] != NULL):
									
										foreach ($categories as $category):
											foreach ($category as $livro):
								?>

								<div class="produto">
									<a class="no-link" href="index.php?page=generic&single=<?php echo $livro['id_livro']?>">
										<div class="imagem-produto"><img src="images/produtos/livro<?php echo $livro['id_livro']?>.jpg"></div>
										<div class="texto">
											<h2><?php echo $livro["nome"]?></h2>
											<span><?php echo $livro["descricao"]?></span>
											<span>Preço: R$<?php echo number_format($livro["preco"], 2, ',', ' ');?></span>
											<span>Total: <?php echo $livro["total"]?></span>
										</div>
									</a>
								</div>

								<?php 
									endforeach; endforeach;
									// se não tem algum produto com aquela categoria
									else:
								?>

								<!-- depois passar corretamente -->
								<h2 style="text-align: center; width: 100%">Category empty!</h2>

								<?php endif;?>
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