<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Sistemas OFF - Pedidos a serem preparados</title>

<link href="css/css.css" rel="stylesheet" type="text/css">

<script type="text/javascript">

 function confirmariten(query){

 if (confirm ("Este item ainda não foi preparado?")){   

 window.location="pedidosdiversos.php" + query;  

 return true;

 }

 else  

 window.location="pedidosdiversos.php";

 return false;

 }

 

 function confirmar(query){

 if (confirm ("Este item já está preparado?")){   

 window.location="pedidosdiversos.php" + query;  

 return true;

 }

 else  

 window.location="pedidosdiversos.php";

 return false;

 }

</script>

</head>



<body>

<div id="geral">

<h1>&nbsp;&nbsp;&nbsp;Diversos - Pedidos a serem despachados| <a href="sair.php">Sair</a></h1> 

<div>

<script type="text/javascript">

function confirmardel(query){

if (confirm ("Deseja marcar item como entregue?")){   

 window.location="" + query;  

 return true;

 }

 else  

 window.location="?btn=garcon";

 return false;

 }

 

 function confirmariten(query){

 if (confirm ("Deseja exluir este pedido?")){   

 window.location="inicio.php" + query;  

 return true;

 }

 else  

 window.location="inicio.php?btn=garcon";

 return false;

 }

</script>

<div id="mesas">

<?php 

include "config/conexao.php";

echo "<meta HTTP-EQUIV='refresh' CONTENT='5;URL=?btn=garcon'>";

  if(isset($_GET['acao']) && $_GET['acao'] == "mudar"){

  	$id = $_GET['id'];

  	$entregue = $_GET['entregue'];

  	$sql = mysqli_query($db,"UPDATE	tbl_carrinho SET status = '1', entregue='$entregue' WHERE id='$id'") or die($db->error);

  }

 if(isset($_GET['retira']) && $_GET['retira'] == "produto"){

	$idDelete = $_GET['id'];

	$del = mysqli_query($db,"DELETE FROM tbl_carrinho WHERE id='$idDelete'");

	if($del){

	print "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=inicio.php?btn=garcon'>";	

	}

}

?>

	

    <table width="90%" border="0" align="center" cellpadding="5" cellspacing="0" style="margin-top:10px;">

  <tr>

    <td width="37%" align="left" bgcolor="#3399FF"><strong>Produto</strong></td>

    <td width="11%" align="center" bgcolor="#3399FF"><strong>Hora</strong></td>

    <td width="13%" align="center" bgcolor="#3399FF"><strong>Mesa</strong></td>

    <td width="12%" align="left" bgcolor="#3399FF"><strong>Garçom</strong></td>

    <td width="7%" align="center" bgcolor="#3399FF"><strong>Ações</strong></td>
    
      <td width="20%" align="center" bgcolor="#3399FF"><strong>OBS</strong></td>

  </tr>

  <?php 

  $sql = mysqli_query($db,"SELECT * FROM tbl_carrinho INNER JOIN garcon ON tbl_carrinho.idGarcon = garcon.idGarcon WHERE status='0' ORDER BY id DESC") or die($db->error);

  $i = 0;
  while($ver = $sql->fetch_assoc()){

	$background = (++$i%2) ? '#FFFFF' : '#F2F2F2';

	$feito = $ver['feito'];

	$destino = $ver['destino'];

  ?>

  <tr>

    <td bgcolor="<?php echo $background ?>"><?php echo $ver['nome']; ?></td>

    <td align="center" bgcolor="<?php echo $background ?>"><?php echo $ver['time']; ?></td>

    <td align="center" bgcolor="<?php echo $background ?>"><?php echo $ver['id_mesa'] ?></td>

    <td bgcolor="<?php echo $background ?>"><?php echo $ver['nomeGarcon'] ?></td>

    <td align="right" bgcolor="<?php echo $background ?>">

    <?php if($feito == 1 and $destino == 1){?>

      <img src="imagens/pronto.png" width="45" height="18" border="0" />

      <?php }elseif($feito == 0 and $destino == 1){?>

      <img src="imagens/AFAZER.png" width="45" height="18" border="0"/>

<?php } ?>

    

    

<!--<a href="javascript:confirmariten('?btn=garcon&retira=produto&id=<?php echo $ver['id'] ?>entregue=1')"><img src="imagens/excluir.png" width="20" height="20" border="0" /></a> -->

    

    <a href="javascript:confirmardel('?btn=garcon&acao=mudar&id=<?php echo $ver['id']; ?>&entregue=1')">

    <img src="imagens/ok.png" width="20" height="20" border="0"/></a></td>
    
      <td align="center" bgcolor="<?php echo $background ?>" style="color: red;text-transform: uppercase;"><?php echo $ver['observacao']; ?></td>

  </tr>

  <?php } ?>

  <?php 

  $sql2 = mysqli_query($db,"SELECT * FROM entrega INNER JOIN garcon ON entrega.idGarcon = garcon.idGarcon WHERE status='0' ORDER BY id DESC") or die($db->error);

  while($ver2 = $sql2->fetch_assoc()){

  $background = (++$i%2) ? '#FFFFF' : '#F2F2F2';

  $feito = $ver2['feito'];

  $destino = $ver2['destino'];

  ?>

  <tr>

    <td bgcolor="<?php echo $background ?>"><?php echo $ver2['nome']; ?></td>

    <td align="center" bgcolor="<?php echo $background ?>"><?php echo $ver2['time']; ?></td>

    <td align="center" bgcolor="<?php echo $background ?>"><?php echo "PED-".$ver2['id_mesa'] ?></td>

    <td bgcolor="<?php echo $background ?>"><?php echo $ver2['nomeGarcon'] ?></td>

    <td align="right" bgcolor="<?php echo $background ?>">

    <?php if($feito == 1 and $destino == 1){?>

      <img src="imagens/pronto.png" width="45" height="18" border="0" />

      <?php }elseif($feito == 0 and $destino == 1){?>

      <img src="imagens/AFAZER.png" width="45" height="18" border="0"/>

<?php } ?>

    

    

<!--<a href="javascript:confirmariten('?btn=garcon&retira=produto&id=<?php echo $ver2['id'] ?>entregue=1')"><img src="imagens/excluir.png" width="20" height="20" border="0" /></a> -->

    

    <a href="javascript:confirmardel('?btn=garcon&acao=mudar&id=<?php echo $ver2['id']; ?>&entregue=1')">

    <img src="imagens/ok.png" width="20" height="20" border="0"/></a></td>
    
      <td align="center" bgcolor="<?php echo $background ?>" style="color: red;text-transform: uppercase;"><?php echo $ver2['observacao']; ?></td>

  </tr>

  <?php } ?>

  </table>

</div>

</body>

</html>