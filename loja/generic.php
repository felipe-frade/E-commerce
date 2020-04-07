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
							<div class="inner custom-item">
								<?php 
									if($singles != null):
								?>
								<div class="inner-content">

									<h2>Produto</h2>
									<div class="produto-content">
										<h3><?php echo $singles[0]['nome']?></h3>
										<p><?php echo $singles[0]['descricao']?></p>
										<p>Autor: <?php echo $singles[0]['autor']?></p>
										<p>Preço: R$<?php echo number_format($singles[0]["preco"], 2, ',', ' ');?></p>
										<p>Total: <?php echo $singles[0]['total']?></p>
										<a href="index.php?page=cart&acao=add&id_produto=<?php echo $singles[0]['id_produto']?>">
											<button>Adicionar ao carrinho</button>
										</a>
									</div>

									<hr />

									<h2>Comentários</h2>
									<div class="comentarios-content">
										<?php 
										if($comentarios != null):
											foreach ($comentarios as $comentario):
										?>
											<h3><?php echo $comentario['nome']?></h3>
											<p><?php echo $comentario['comentario']?></p>
											<p>Autor: 
												<?php 
													for ($i=0; $i < (int)$comentario['classe']; $i++) { 
														echo '<img src="images/geral/star-solid.svg">';
													}
												?>
											</p>
										<?php 
											endforeach;
											else:
										?>
											<h2 style="text-align: center; width: 100%">Nenhum comentário ainda!</h2>
										<?php endif;?>
									</div>

								</div>

								<div class="inner-image">
									<img src="images/produtos/livro<?php echo $single?>.jpg">
								</div>
								<?php 
									else:
								?>
								<h2 style="text-align: center; width: 100%">Product empty!</h2>
								<?php
									endif;
								?>
							</div>
						</section>
						<section>
							<div class="inner-content">
							
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