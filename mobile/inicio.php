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



	$idmesa = $_GET['id_mesa'];

	$idGarcon = $_GET['idGarcon'];

	$id_garcon = $mostra['idGarcon'];


if(isset($_GET['abre'])){
  if($_GET['abre'] == "abrir"){

    $idMESA = $_GET['id_mesa'];

    $id_garcon = $mostra['idGarcon'];

    $altera = mysqli_query($db,"UPDATE mesa SET idGarcon = '$id_garcon', situacao = '1' WHERE id_mesa = '$idMESA' ") or die($db->error());

  }
}

//$str = $QUERY_STRING;



?>

<!doctype html>

<html class="no-js ui-mobile-rendering" lang="pt">

<head>

      <title>Pizzaria Online</title>

      <meta name="description" content="">



      <meta name="viewport" content="width=device-width, initial-scale=1">



      <link rel="stylesheet" href="css/jquery.mobile-1.3.1.min.css" />

      <link rel="stylesheet" href="../css/css.css"/>

      <script src="js/require.js" data-main="js/mobile"></script>







     

       

 <script>  

function confirmar(query){

if (confirm ("Deseja abrir a mesa de número <?php echo $idmesa ?>?")){   

 window.location="inicio.php" + query;  

 return true;

 }

 else  

 window.location="mesas.php";

 return false;

 }

</script> 

<meta charset="utf-8">

</head>

<body>



<div id="categories" data-role="page" data-title="Categories">

  

      <div data-role="header">

            <h1>MESA: <?php echo $idmesa ?> </h1>

      </div><!-- /header -->

  		<?php 

		$idmesa = $_GET['id_mesa'];

		$idGarcon = $_GET['idGarcon'];

			if($idGarcon == ""){

			?>	

<a href="javascript:confirmar('?abre=abrir&id_mesa=<?php echo $idmesa ?>&idGarcon=<?php echo $mostra['idGarcon']; ?>')"><div id="abreMesa">ABRIR MESA</div></a>	

			<?php

            }else{

			

			?>

          



          <ul data-role="listview" data-theme="b">

            



           

            <li><a href="mesas.php">VOLTAR PARA MESAS<img src="1.png"/></a></li>

           



            <li><a href="vermesa.php?id_mesa=<?php echo $idmesa?>">VER ITENS PEDIDOS <br>DA MESA<img src="2.png"/></a></li>

            </ul>

      <div data-role="content">

      

            <h2>Selecione a Categoria</h2>

    

      

   





            <ul data-role="listview" data-inset="true" data-theme="a"> 

	





  <?php 

        $sql = mysqli_query($db,"SELECT * FROM categoria ORDER BY nome ASC") or die($db->error);

        while($l = $sql->fetch_assoc()){

    ?>

   <li><a href="produto.php?id_categoria=<?php echo $l['id_categoria']; ?>&id_mesa=<?php echo $idmesa ?>&idGarcon=<?php echo $mostra['idGarcon']; ?>" class="animals"><?php echo $l['nome'] ?></a></li>

                  <?php } }?>

                  <!--<li><a href="#category?colors" class="colors">Colors</a></li> -->

            </ul><b style="color: #2ac8e5">

      </div><!-- /content -->



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