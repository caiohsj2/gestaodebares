<?php 

include "config/conexao.php";

$cod = $_GET['cod'];



$del = mysqli_query($db,"DELETE FROM tbl_produtos WHERE cod='$cod'") or die(mysql_error());

if($del){

	print "

	<META HTTP-EQUIV=REFRESH CONTENT='0; URL=inicio.php?btn=alterapreco'>

	<script type=\"text/javascript\">

	alert(\"Deletado com sucesso.\");

	</script>";	



}



?>