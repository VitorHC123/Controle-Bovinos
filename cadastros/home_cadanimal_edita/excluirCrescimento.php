
	<?php
		include("../conexao.php");

		$cod_cresc = $_GET['cod_cresc'];


		$resultado = mysqli_query ($conexao, "delete from cresc where cod_cresc = $cod_cresc");

		
			$redirecionar = "listaCrescimento.php";
			header("Location: $redirecionar", 1000);
			
		
		
	?>
