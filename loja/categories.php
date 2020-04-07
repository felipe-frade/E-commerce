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
	</head>
	<body class="is-preload">

		<!-- Page Wrapper -->
			<div id="page-wrapper">

				<!-- Header -->
					<?php include "header.php";?>

				<!-- Main -->
				<article id="main">
					<header>
						<h2>Categories</h2>
						<p>All books categories</p>
					</header>

				<!-- Two -->
					<section id="two" class="wrapper alt style2 all-categories">
						<?php
							// se tem algum produto com aquela categoria
							if ($array_tipos[0] != NULL):
							
								foreach ($array_tipos as $a_tipo):
						?>
							<section class="spotlight">
								<div class="image">
									<img src="images/categorias/categoria<?php echo $a_tipo['id_tipo'] ?>.jpg" alt="" />
								</div>
								<div class="content">
									<a class="no-link" href="index.php?page=category&cat=<?php echo $a_tipo['id_tipo']?>">
										<h2><?php echo $a_tipo['nome_tipo']?></h2>
										<p><?php echo $a_tipo['descricao']?></p>
									</a>
								</div>
							</section>
						<?php endforeach; 
							else:
						?>
							<!-- depois passar corretamente -->
							<h2 style="text-align: center; width: 100%">Type empty!</h2>
						<?php endif;?>
					</section>

				<!-- CTA -->
					<section id="cta" class="wrapper style4">
						<div class="inner">
							<header>
								<h2>Arcue ut vel commodo</h2>
								<p>Aliquam ut ex ut augue consectetur interdum endrerit imperdiet amet eleifend fringilla.</p>
							</header>
							<ul class="actions stacked">
								<li><a href="#" class="button fit primary">Activate</a></li>
								<li><a href="#" class="button fit">Learn More</a></li>
							</ul>
						</div>
					</section>

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