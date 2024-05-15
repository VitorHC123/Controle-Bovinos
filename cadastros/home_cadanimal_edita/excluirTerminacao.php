
	<?php
		include("../conexao.php");

		$cod = $_GET['cod_term'];

		$resultado = mysqli_query ($conexao, "delete from term where cod_term = $cod");

		
			$redirecionar = "listaTerminacao.php";
			header("Location: $redirecionar", 1000);
			
		
		
	?>
