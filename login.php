<?php 



session_start(); 

ob_start();

include "config/conexao.php";

$login = $_POST['login']; 

$senha = $_POST['senha'];



$sql = mysqli_query($db,"SELECT * FROM garcon WHERE login='$login' AND senha='$senha'") or die(error); 

$conf = $sql->fetch_assoc();
	
	// var_dump($conf);
	// echo count($conf);
	// exit;

$nv = $conf['nv'];



if($sql and $nv == 0){

	$_SESSION['login_session'] = $login;

	$_SESSION['senha_session'] = $senha;

	header("Location:inicio.php?btn=inicio");

	}

elseif($sql and $nv == 2){

	$_SESSION['cozinha_session'] = $login;

	$_SESSION['senha_senha'] = $senha;

	header("Location:pedidoscozinha.php");

	}
	
elseif($sql and $nv == 3){

	$_SESSION['diversos_session'] = $login;

	$_SESSION['senha_senha'] = $senha;

	header("Location:pedidosdiversos.php");

	}

elseif($nv == 1){

	unset($_SESSION['login_session']);

	unset($_SESSION['senha_session']);

	header("location:logar.php?logar=errar");



}else{

	unset($_SESSION['login_session']);

	unset($_SESSION['senha_session']);

	header("location:logar.php?login_errado=erro&logar=errar");



}



?>