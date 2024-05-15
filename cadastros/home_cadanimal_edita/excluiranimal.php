
	<?php
		include("../conexao.php");

		$cod_animal = $_GET['cod_animal'];


		$resultado = mysqli_query ($conexao, "delete from animal where cod_animal = $cod_animal");

		
			$redirecionar = "listaAnimal.php";
			header("Location: $redirecionar", 1000);
			
		
		
	?>
