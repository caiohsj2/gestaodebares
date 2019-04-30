<?php include "../config/conexao.php";
session_start();
ob_start(); 
//se nao existir volta para a pagina do form de login
if(!isset($_SESSION['garcon_session']) and !isset($_SESSION['senha_session'])){
	header("Location:index.php");
	exit;		
}
$login = $_SESSION['garcon_session'];
$g = mysqli_query($db,"SELECT * FROM garcon WHERE login='$login'");
$mostra = $g->fetch_assoc();

if(isset($_GET['retira'])){
	if($_GET['retira'] == "produto"){
		$numer = $_GET['numero'];
		$mesaId = $_GET['id_mesa'];
		$idDelete = $_GET['id'];
		$del = mysql_query("DELETE FROM tbl_carrinho WHERE id='$idDelete'");
	}
}


?>


<!doctype html>
<html class="no-js ui-mobile-rendering" lang="pt">
<head>
      <title>Sistemas OFF Mobile</title>
      <meta name="description" content="">

      <meta name="viewport" content="width=device-width, initial-scale=1">

      <link rel="stylesheet" href="css/jquery.mobile-1.3.1.min.css" />
      <link rel="stylesheet" href="../css/css.css"/>
      <script src="js/require.js" data-main="js/mobile"></script>

</script>  
<meta charset="utf-8">
</head>
<body>

<div id="categories" data-role="page" data-title="Categories">
  
      <div data-role="header">
            <h1>MESA: <?php echo $_GET['id_mesa']; ?></h1>
      </div><!-- /header -->
             <ul data-role="listview" data-inset="true" data-theme="b"> 
            <li><a href="mesas.php">VOLTAR PARA MESAS</a></li>
            <li><a href="javascript:window.history.go(-1)">PRODUTOS</a></li>
            </ul>
      <div data-role="content">
      <hr/>
      <div id="mesas2">
<table width="100%">
    <tr style="font-size:16px;">
	  <td width="56%" style="font-size:16px;"><strong>Produtos</strong></td>
	  <td width="12%" align="center"style="font-size:16px;"><strong>QDT</strong></td>
	  <td width="14%" align="center"style="font-size:16px;"><strong>R$</strong></td>
	  <td align="right" style="font-size:16px;"><strong>VALOR</strong></td>
	  </tr>
      
	<?php
	$mesaId = $_GET['id_mesa'];	
	$mesa = $_GET['id_mesa'];
	$carrinho = mysqli_query($db,"SELECT *, SUM(qtd) AS qt,SUM(preco) AS pr FROM tbl_carrinho WHERE id_mesa = '$mesa' AND situacao ='1' GROUP BY cod") or die($db->error());
	$carrinho2 = $carrinho->fetch_all(MYSQLI_ASSOC);
	$contar = count($carrinho2);
	
	if($contar == 0){
		echo "";
	}else{
		$itens = 0;
		$total = 0;
		$totalProduto = 0;
		foreach($carrinho2 as $res){		
		
			$id           	= $res['id'];
			$cod     	  	= $res['cod'];
			$nome  			= $res['nome'];
			$preco       	= $res['pr'];
			$unitario		= $res['preco'];	
			$qtd		 	= $res['qt'];
			$comanda		= $res['comanda'];
			$data			= $res['data'];
			$id_mesa		= $res['id_mesa'];
			$itens			+=$qtd;
			$totalProduto   = $unitario*$qtd;
			$total          += $totalProduto;
	?>
	<tr class="fontcomanda">
    <td align="left" class="btn">
      <a href="cozinha.php?id_mesa=<?php echo $id_mesa ?>&nome=<?php echo $nome; ?>"  title="Imprimir" onclick="Cozinha(this.href,'nomeJanela','350','600','yes');return false" class="fontcomanda"><?php echo $nome; ?></a></td>
    
    <td align="center" ><?php echo $qtd; ?> </td>
    <td align="center" ><?php echo $unitario ?></td>
    <td width="12%" align="right"><?php echo number_format($totalProduto, 2); ?></td>
    </tr>
	
     <?php 
		}
	}	
	?>  
     <tr class="fontcomanda">
       <td colspan="4" align="right" class="btn"><hr/></td>
     </tr>
     <tr class="fontcomanda">
	  <td colspan="3" align="right" class="btn"><strong>Total de itens:</strong></td>
	  <td align="right"><?php echo $itens ?></td>
    </tr>
     <tr class="fontcomanda">
       <td colspan="3" align="right" class="btn"><strong>Garçom: </strong></td>
       <td align="right">
         <?php 
					
			$g = mysqli_query($db,"SELECT * FROM config") or die(mysql_error());
			$w = $g->fetch_assoc();
			$ativo = $w['ativo'];
			$percentual = $w['pgarcon'];
			if($ativo == 1){
			$porcento_garcon = $percentual;
			}else{
			$porcento_garcon = 0;
			}
				
				$pgarcon = $total * $porcento_garcon / 100;
				
				$somatotal = $total + $pgarcon;
			
			?> <?php echo number_format($pgarcon, 2, '.', '.'); ?>
       </td>
     </tr>
     <tr class="fontcomanda">
       <td colspan="3" align="right" class="btn"><strong>Total em itens: </strong></td>
       <td align="right">R$<?php echo number_format($total, 2, '.', '.'); ?></td>
     </tr>
     <tr class="fontcomanda">
       <td colspan="3" align="right" class="btn"><strong>Valor Total: </strong></td>
       <td align="right">R$<?php echo number_format($somatotal, 2, '.', '.'); ?></td>
     </tr>
    </table>
</div>
<!-- Underscore Template that is used to display all of the Category Models -->
<script id="categoryItems" type="text/template">

      _.each( collection.toJSON(), function( category, id ) { 

            <li class="ui-li ui-li-static ui-btn-up-c ui-corner-top">
                  <%= category.type %>
            </li>

       });

</script>

</body>
</html>