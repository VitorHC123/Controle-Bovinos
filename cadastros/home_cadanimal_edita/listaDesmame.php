<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!--<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">-->
	<link rel="stylesheet" type="text/css" href="styleLista.css">
	<title>CB | Lista de Desmames</title>



</head>
<body>
<?php
	
	include("../conexao.php");

	$resultado = mysqli_query($conexao, "select * from desmame");

?>


<script type="text/javascript">
    

function confirmacao(id) {
     var resposta = confirm("Deseja remover esse registro?");
     
     if (resposta == true) {
          window.location.href = "excluirdesmame.php?cod_desmame="+id;
     }else if (resposta == false){
      window.location.href = "listaDesmame.php";
     }
}
</script>
     	
     	<nav>
	<ul>
		<li><a href="home.php">Home</a></li>
		<li><a href="#">Cadastros</a>
			<ul>
				<li><a href="cadastroAnimal.php">Cadastro de Animal</a></li>
				<li><a href="cadastroGestacao.php">Cadastro de Gestação</a></li>
				<li><a href="cadastroParto.php">Cadastro de Parto</a></li>
				<li><a href="cadastroDesmame.php">Cadastro de Desmame</a></li>
				<li><a href="cadastroCresc.php">Cadastro de Crescimento</a>
				<li><a href="cadastroTerm.php">Cadastro de Terminação</a></li>
				</li>
			</ul>
		</li>
			<li><a href="#">Listas</a>
			<ul>
				<li><a href="listaAnimal.php">Lista de Animal</a></li>
				<li><a href="listaGestacao.php">Lista de Gestação</a></li>
				<li><a href="listaParto.php">Lista de Parto</a></li>
				<li><a href="listaDesmame.php">Lista de Desmame</a></li>
				<li><a href="listaCrescimento.php">Lista de Crescimento</a>
				<li><a href="listaTerminacao.php">Lista de Terminação</a></li>
				</li>
			</ul>
		</li>
		<li><a href="#">Vacinas e Medicamentos</a>
			<ul>
				<li><a href="cadastroVac.php">Lotes de Vacinas</a></li>
				<li><a href="cadastroMed.php">Lotes de Medicamentos</a></li>
			</ul>
		</li>
		<li><a href="#">Listas</a>
			<ul>
				<li><a href="listaVac.php">Lista de Vacinas</a></li>
				<li><a href="listaMedicamentos.php">Lista de Medicamentos</a></li>
				</li>
			</ul>
		</li>
		<li><a href="logout.php" style="color: red;">Sair</a></li>
	</ul>
</nav>  


	
	<br><br>
<nav class="accordion arrows">
	<header class="box">
      <label for="acc-close" class="box-title">Lista de Desmames</label>
    </header>

    <?php  
  				
  				for($i=0; $i<mysqli_num_rows($resultado); $i++){
  					
  					$mostra = mysqli_fetch_array($resultado);

  					$cod_desmame = $mostra['cod_desmame'];

  					$dtDes = $mostra['data_desmame'];

  					$peso = $mostra['peso_medio'];

  					$brinco = $mostra['brinco_bezerro'];

           
                    $id = "cb".($i+1);

  			?>



  	<nav class="accordion arrows">
    <input type="radio" name="accordion" id="<?php echo $id; ?>"/> 
    <section class="box">
      <label class="box-title" for="<?php echo $id; ?>" ><font>Desmame | Brinco: <?php echo("$brinco");?></font></label>
      <label class="box-close" for="acc-close"></label>
      <div class="box-content">

      	<font>Data do Desmame: <?php echo("$dtDes");?></font>
      	<br>

      	<font>Peso: <?php echo("$peso");?></font>
      	<br>

      	

      	<br>	<br>


      	<!-- <a href="home.php?">
     <input type="submit" value="Excluir" style="background-color: rgba(255, 20, 30, 0.8); color: white; box-shadow: 0 0 0 0; border: 0 none; outline: 0; height: 30px; width: 60px; border-radius: 6px; cursor: pointer; margin-right:2px; position: relative; ">
 </a>

 	<a href="home.php">
    <input type="submit" value="Editar" style="background-color: rgba(30, 100, 200, 0.8); color: white; box-shadow: 0 0 0 0; border: 0 none; outline: 0; height: 30px; width: 60px; border-radius: 6px; cursor: pointer; margin-left:2px; ">
</a>  -->	
				<a class="btn btn-primary" href="editadesmame.php?cod_desmame=<?php echo("$cod_desmame"); ?>"  style="background-color: rgba(30, 100, 200, 0.8); color: white; border-radius: 2px; cursor: pointer; padding: 6px; text-decoration: none; border-radius: 3px; margin-left: 6px; justify-content: center;"role="button">Editar</a>

		
				<a class="btn btn-primary" href="#" style="background-color: rgba(255, 20, 30, 0.8); color: white; border-radius: 2px; cursor: pointer; padding: 6px; text-decoration: none;  border-radius: 3px; margin-left: 6px;  justify-content: center;"role="button" onclick="confirmacao(<?php echo("$cod_desmame"); ?>)">Excluir</a> <br>

        
				
 
      </div>
    </section>
    

    <input type="radio" name="accordion" id="acc-close" />

      </nav> 

		<?php
			
  				}

  				?>

</body>
</html>