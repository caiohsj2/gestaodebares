<?php

include "../config/conexao.php";

header('Content-type: text/html; charset=UTF-8');


if(isset($_GET['adiciona'])){
	if($_GET['adiciona'] == "produto"){
		$qtd = $_GET['qtd']+1;

		$mesaId = $_GET['id_mesa'];

		$idAdd = $_GET['id'];

		$idGarcon = $_GET['idGarcon'];

		$up = mysqli_query($db,"UPDATE tbl_carrinho SET qtd = '$qtd' WHERE id='$idAdd'");

		if($up == 1){

		print "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=vermesa.php?id_mesa=$mesaId'>";	

		}
	}
}else {

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

$observacao = $_POST['observacao'];

$cadastra = mysqli_query($db,"INSERT INTO tbl_carrinho (

						cod, nome, preco, qtd,comanda,data,id_mesa,situacao,idGarcon,status,destino,entregue,time,feito,observacao

						) VALUES (

						'$cod', '$nome', '$preco', '$qtd', '$comanda', '$data','$mesa','1','$idGarcon','0','$destino','0','$time','0','$observacao'

						)");

	

	if($cadastra){

		print"<script type=\"text/javascript\">alert(\" 1 - $nome -  foi adicionado a mesa $mesa !\");</script>";

		echo'<script>javascript:window.history.go(-1)</script>';	

	}

}	



?>