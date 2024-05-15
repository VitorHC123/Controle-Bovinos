<?php
		include("../conexao.php");

		$cod = $_GET['cod_lote'];

		$resultado = mysqli_query ($conexao, "delete from lote_vacina where idlote_vacina = $cod");

		
			$redirecionar = "listaVac.php";
			header("Location: $redirecionar", 1000);
			
		
		
	?>
