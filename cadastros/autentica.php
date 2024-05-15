<?php

include("conexao.php");

session_start();

$email = $_POST['email'];
$senha = $_POST['senha'];

	$string = $senha;
    $algoritmo = "AES-256-CBC";
	$chave = "chave_privada";
    $iv = "wNYtCnelXfOa6uiJ";
    $mensagem = openssl_encrypt($string, $algoritmo, $chave, OPENSSL_RAW_DATA, $iv);
    $senha = utf8_decode($mensagem);


$result = mysqli_query($conexao, "select * from usuario where email = '$email' and senha = '$senha'");

if(mysqli_num_rows ($result) > 0){

	$_SESSION['email'] = $email;
	$_SESSION['senha'] = $senha;

	header('location: home_cadanimal_edita/home.php');

}else{

	unset($_SESSION['email']);
	unset($_SESSION['senha']);

	header('location: login.php');
	

}

?>