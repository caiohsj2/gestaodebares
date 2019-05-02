<script type="text/javascript">

            function imprimir(){

                var pagina = document.getElementById("buscacomanda").innerHTML;

                var novaJanela = window.open('','_blank',		'status=no,toolbar=no,scrollbars=yes,titlebar=no,menubar=no,resizable=yes,width=640,height=480,directories=no,location=no');

                novaJanela.document.write("<head>");

				novaJanela.document.write("<meta http-equiv='content-type' content='text/html; charset=iso-8859-1' />");

				novaJanela.document.write("<style tyle='text/css' media='print'>button{display: none;}</style>");

				novaJanela.document.write("<style tyle='text/css' media='all'>a{color: #0000FF;}</style>");

				novaJanela.document.write("</head>");

                novaJanela.document.write("<button type='button' onclick='javascript:window.print();'>Imprimir Página</button>");

				novaJanela.document.write("<h3></h3>");

				novaJanela.document.write(pagina);



            }

////////////////////// MASCARA DE IMPUTS /////////////////////////

	jQuery(function($){

   $("#hora1").mask("99:99");

   $("#hora2").mask("99:99");

});

//////////////////// VALIDANDO OS CAMPOS //////////////////////////

function validar() {

var datai = form.datai.value;

var dataf = form.dataf.value;

var idGarcon = form.idGarcon.value;

var hora1 = form.hora1.value;

var hora2 = form.hora2.value;

 

if (datai == "") {

alert('Escolha a data inicial');

form.datai.focus();

return false;

}



if (dataf == "") {

alert('Escolha a data final');

form.dataf.focus();

return false;

}



if (idGarcon == "") {

alert('Selecione o garçom');

form.idGarcon.focus();

return false;

}

if (hora1 == "") {

alert('Selecione a hora inicial');

form.hora1.focus();

return false;

}

if (hora2 == "") {

alert('Selecione a hora final');

form.hora2.focus();

return false;

}



} ////////////// FIM DA FUNCTION /////////////////////

</script>

<h1> Relatório de vendas por garçom</h1>

<div class="naomostra">

<form action="?btn=relatoriogarcon&busca=data" method="post" enctype="multipart/form-data" id="form">



	Data Iní­cio: 

	<input name="datai" type="text" size="8" id="datai">

    Data Final: <input name="dataf" type="text" size="8" id="dataf">

    Garçom: 

    <select name="idGarcon">

      <option value="">Selecione</option>

    <?php 

	$gar = mysqli_query($db,"SELECT * FROM garcon WHERE idGarcon !='1' ORDER BY nomeGarcon ASC");

	foreach($gar->fetch_all(MYSQLI_ASSOC) as $mostra){?>

    <option value="<?php echo $mostra['idGarcon'] ?>"><?php echo $mostra['nomeGarcon'] ?></option>

    <?php } ?>

    </select>

    Entre:<input name="hora1" type="text" size="3" maxlength="5" id="hora1"/>Hrs e <input name="hora2" type="text" size="3" maxlength="5" id="hora2"/>

  <input name="buscar" type="submit" value="Buscar" id="buscar" onclick="return validar()">

</form>

<br/>

<div id="buscacomanda">

<?php 

$confere = mysqli_query($db,"SELECT * FROM config");

$ver =  $confere->fetch_assoc();



$ativo = $ver['ativo'];



if($ativo == '0'){

	

	echo 'O percentural de garçom está desativado.';

}else{



?>

	<table width="95%" align="center" cellpadding="3" cellspacing="0" style="margin-top:5px; border:1px solid #f2f2f2; font-size:13px;">	

	<tr style="border:1px solid #f2f2f2;">

    <td width="15%" align="center" bgcolor="#66CCFF"  style="border:1px solid #CCC;"><strong>Data</strong></td>

    <td align="center" bgcolor="#66CCFF" style="border:1px solid #CCC;"><strong>Nome</strong><strong></strong></td>

    <td width="19%" align="center" bgcolor="#66CCFF" style="border:1px solid #CCC;"><strong>Vendas</strong></td>

    <td width="19%" align="center" bgcolor="#66CCFF" style="border:1px solid #CCC;"><strong>Comissão</strong></td>

  </tr>

	

	

	<?php if(isset($_GET['busca']) && $_GET['busca'] == "data"){

			$datai = date('Y/m/d', strtotime($_POST['datai']));

			$dataf = date('Y/m/d', strtotime($_POST['dataf']));

			$hora1 = $_POST['hora1'];

			$hora2 = $_POST['hora2'];

			$garcon = $_POST['idGarcon'];

			

	$query = mysqli_query($db,"SELECT data, nome, preco, SUM(preco) AS pr, SUM(qtd) AS qtd, date_format(data, '%d/%m/%Y') AS data FROM tbl_carrinho WHERE idGarcon='$garcon' AND data BETWEEN '$datai' AND '$dataf' AND time BETWEEN '$hora1' AND '$hora2' GROUP BY data") or die($db->error);

	

	$sel = mysqli_query($db,"SELECT * FROM tbl_carrinho")or die($db->error);

		$total = 0;
		$ganho = 0;
		foreach($query->fetch_all(MYSQLI_ASSOC) as $resultado){

			//$ids = $resultado['idGarcon'];

			$oo = mysqli_query($db,"SELECT * FROM garcon WHERE idGarcon='$garcon'")or die($db->error);

					$todos = $oo->fetch_assoc();

			 		$nome_garcon = $todos['nomeGarcon'];

					$data = $resultado['data'];

					$nome = $resultado['nome'];

					$qtd = $resultado['qtd'];

					$preco_unitario = $resultado['preco'];

					$precototal = $resultado['pr'];	

					$total_produto = $qtd * $preco_unitario;

					$total += $total_produto; 

			

			

			$comi = mysqli_query($db,"SELECT * FROM config");

			$valor = $comi->fetch_assoc();

				$venda = $valor['pgarcon'];

				$ganho += $total_produto * $venda / 100;

			

			?>

  <tr style="border:1px solid #f2f2f2;">

    <td align="center" style="border:1px solid #f2f2f2;"><?php echo $data ?></td>

    <td align="left" style="border:1px solid #f2f2f2;"><?php echo $nome_garcon ?></td>

    <td align="center" style="border:1px solid #f2f2f2;"><?php echo number_format($total_produto, 2, ',', '.');?></td>

    <td align="right" style="border:1px solid #f2f2f2;"><?php echo number_format($total_produto * $venda / 100, 2, ',', '.');?></td>

  </tr>

    

    

    <?php }  ?>

     <tr>

    <td colspan="2" align="center">&nbsp;</td>

    <td align="center" style="border:1px solid #f2f2f2;"><strong>Total do perí­odo</strong></td>

    <td align="right" style="border:1px solid #f2f2f2;"><strong>

	<?php echo number_format($ganho, 2, ',', '.');?></strong></td>

  </tr>

 <?php } ?>

</table>

</div>

<div style="text-align:center; margin-top:5px;"><button type="button" onclick="javascript:imprimir();">Imprimir relatório</button></div> 

<?php } ?>



</div>         

</div>