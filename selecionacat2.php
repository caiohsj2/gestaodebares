

<script type="text/javascript">



function MM_jumpMenu(targ,selObj,restore){ //v3.0

  eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");

  if (restore) selObj.selectedIndex=0;

}

</script>

<form action="" method="post" enctype="multipart/form-data" style="margin-left:12px; margin-top:-7px;">

Selecione a categoría: 

  <select name="jumpMenu" id="jumpMenu" onChange="MM_jumpMenu('parent',this,0)">

  <option value=""> =Selecione=</option>

  <?php 

  include "config/conexao.php";

  $idGarcon =$_GET['idGarcon'];

  	$salto = mysqli_query($db,"SELECT * FROM categoria ORDER BY nome ASC");

	while($aaa = $salto->fetch_assoc()){

  ?>

  

    <option value="inicio2.php?btn=vendapedido&id_mesa=<?php echo $numero ?>&id_categoria=<?php echo $aaa['id_categoria']; ?>&idGarcon=<?php echo $idGarcon ?>"><?php echo $aaa['nome'] ?></option>

    

    <?php } ?>

  </select>

</form>