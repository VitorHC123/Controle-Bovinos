<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"/>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<script src="js/bootstrap.min.js"></script>
	<title>CB | Desenvolvedor</title>

<?php

	 include("../conexao.php");

    session_start();
    if((!isset ($_SESSION['email']) == true) and (!isset ($_SESSION['senha']) == true)){
      header ("location:../login.php");
    }
    

      
       


?>
</head>

<style type="text/css">

  html, body {
    min-height: 100%;
}
body {
    padding: 0;
    margin: 0;
}
	
	.container {
    display: flex;
    justify-content: center;
    align-items: center;
    text-align: center;

}

.content {

    background-color: #F0FFF0;
    border-radius: 35px;
    width: 1150px;
    height: 80%;
    justify-content: space-between;
    align-items: center;
    position: relative;
    box-shadow: 10px 8px 8px 8px #3d7a6c;
}


  
        
footer {
    position: absolute;
    bottom: 0;
    background-color: #3d7a6c;
    color: #FFF;
    width: 100%;
    height: 100px;    
    text-align: center;
    line-height: 100px;
}



</style>

<body style="background-color: #F0FFF0;">
		<nav class="navbar navbar-light" style="background-color: #58af9b;">
			<a href="home.php"><img src="../../img/logo2.png" style=" height: 40px; width: 50px;"></a>
		 	<a class="navbar-brand" style="margin-right: 1350px; font-weight: bold;"> Sistema de Controle de Bovinos - Desenvolvedores </a>
		</nav>
		<br>

    <br><br>

    <h1 style="font-weight: bold; text-align: center; ">
      CB | Desenvolvedores
    </h1>
    <br>

		 <div class="container">
            
              <img src="../../img/desenv.jpg" style=" width: 800px; height: 550px; border-radius: 35px;box-shadow: 6px 4px 4px 4px  #808080;">

            
          </div>
          <footer> Vitor Hugo Correia | Maria Clara da Silva Fonseca | João Vitor de Oliveira Santos </footer>

		
</body>
</html>