	<?php
		include("../conexao.php");

		$cod_desmame = $_GET['cod_desmame'];

		$resultado = mysqli_query ($conexao, "delete from desmame where cod_desmame = $cod_desmame");

		
			$redirecionar = "listaDesmame.php";
			header("Location: $redirecionar", 1000);
			
		
		
	?>
