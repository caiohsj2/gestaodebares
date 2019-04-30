<?php

include "../config/conexao.php";

header('Content-type: text/html; charset=UTF-8');

$mesa = $_GET['mesa'];



$conf = mysqli_query($db,"SELECT * FROM mesa WHERE numero = '$mesa'") or die(mysql_error());

$conferegarcon = $conf->fetch_assoc();



$idGarcon = $conferegarcon['idGarcon'];



$cod	= $_GET['cod'];

$nome 	= $_GET['nome'];

$preco	= $_GET['preco'];

$qtd	= $_GET['qtd'];

$comanda	= 0;

$data 	= date('Y-m-d H:i:s');

$destino = $_GET['destino'];

$time = date("H:i");



$cadastra = mysqli_query($db,"INSERT INTO tbl_carrinho (

						cod, nome, preco, qtd,comanda,data,id_mesa,situacao,idGarcon,status,destino,entregue,time,feito,observacao

						) VALUES (

						'$cod', '$nome', '$preco', '$qtd', '$comanda', '$data','$mesa','1','$idGarcon','0','$destino','$time','0'

						)");

var_dump($db->error);

	

	if($cadastra == 1){

		print"<script type=\"text/javascript\">alert(\" 1 - $nome -  foi adicionado a mesa $mesa !\");</script>";

		echo'<script>javascript:window.history.go(-1)</script>';	

	}

	



?>