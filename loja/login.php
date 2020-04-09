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
	<body class="landing is-preload">

		<!-- Page Wrapper -->
			<div id="page-wrapper">

				<!-- Header -->
					<?php 
						include "header.php";
					?>

				<!-- Banner -->
					<section id="banner">
						<div class="inner">
							<h2>Faça login</h2>
							<form method="get" action="assets/php/envia.php">
								Nome:
								<input class="input-login" type="text" name="usuario">
								Senha:
								<input class="input-login" type="password" name="senha">
								<input style="margin: 20px 0px 0px auto;" type="submit" name="acao" value="Entrar">
								<input style="margin: 20px auto 0px 30px" type="submit" name="acao" value="Sair">
							</form>
							<?php 
								if (isset($_SESSION['status'])&&$_SESSION['status'] != '') {
									echo $_SESSION['status'];
								}
							?>
						<div>
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