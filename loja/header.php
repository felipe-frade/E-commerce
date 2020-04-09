<header id="header" class="alt">
	<h1><a href="index.php">Spectral</a></h1>
	<nav id="nav">
		<ul>
			<li class="special">
				<a href="#menu" class="menuToggle"><span>Menu</span></a>
				<div id="menu">
					<ul>
						<li><a href="index.php?page=home">Principal</a></li>
						<li id="abre-sub-menu">
							<a href="index.php?page=products">Produtos</a>
							<ul class="sub-menu">
								<li><a href="index.php?page=type&type=novo">E-commercce</a></li>
								<li><a href="index.php?page=type&type=usado">Usados</a></li>
								<li><a href="index.php?page=type&type=online">E-books</a></li>
							</ul>
						</li>

						<?php if($array_tipos): if(sizeof($array_tipos)>0): ?>

							<li id="abre-sub-menu">
								<a href="index.php?page=categories">Categorias</a>
								<ul class="sub-menu">

									<?php foreach ($array_tipos as $tipo): ?>
										<li>
											<a href="index.php?page=category&cat=<?php echo $tipo['id_tipo']?>"><?php echo $tipo['nome_tipo']?>
											</a>
										</li>
									<?php endforeach; ?>

								</ul>
							</li>

						<?php endif;endif; ?>

						<li><a href="index.php?page=cart">Carrinho</a></li>
						<li><a href="index.php?page=elements">Descrições</a></li>
						<li><a href="index.php?page=about">Sobre nós</a></li>
						<li><a href="index.php?page=shop">Meus pedidos</a></li>
						<li><a href="index.php?page=login">Login</a></li>
					</ul>
				</div>
			</li>
		</ul>
	</nav>
</header>