<?php 

	require("../conexao.php");
	

   
   
    
	$brinco = $_POST['brinco'];
	$brincoM = $_POST['brincoM'];
	$data = $_POST['data'];
	$origem = $_POST['origem'];
	$peso = $_POST['peso'];
	$sexo = $_POST['sexo'];

	$tipo = $_POST['tipo'];
	$raca = $_POST['raca'];

	 
                 $resultado = mysqli_query($conexao, "insert into animal (brinco, codMae, cod_raca, cod_tipo, data_nasc, origem, peso, sexo)
                            values ('$brinco', '$brincoM', '$raca','$tipo', '$data', '$origem', '$peso', '$sexo')");
                
            if(mysqli_affected_rows($conexao) > 0){
  				$redirecionar = "listaAnimal.php";
  				header("Location: $redirecionar", 3000);

  			}else{
  				echo ("Falha na inclusão!!");
  			}
  			
  			
  			mysqli_close($conexao);

	
	/*if($imagem != NULL) {
	$nomeFinal = time().'.jpg';
	if (move_uploaded_file($imagem['tmp_name'], $nomeFinal)) {
		$tamanhoImg = filesize($nomeFinal);

		$mysqlImg = addslashes(fread(fopen($nomeFinal, "r"), $tamanhoImg));
		

		$resultado = mysqli_query($conexao,"insert into animal (brinco, codMae, cod_raca, cod_tipo, data_nasc, img, origem, peso, sexo)
                            values ('$brinco', '$brincoM', '$raca','$tipo', '$data', '$mysqlImg', '$origem', '$peso', '$sexo')")or
		die("O sistema não foi capaz de executar a query"); 	

		unlink($nomeFinal);

		header("location:cadastroAnimal.php");
	}
}
else {
	echo"Você não realizou o upload de forma satisfatória.";
}*/
		 
		
?>