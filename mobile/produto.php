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



$numero = $_GET['id_mesa'];

if(isset($_GET['retira'])){
	if($_GET['retira'] == "produto"){

		$numer = $_GET['numero'];

		$mesaId = $_GET['id_mesa'];

		$idDelete = $_GET['id'];

		$del = mysqli_query($db,"DELETE FROM tbl_carrinho WHERE id='$idDelete'");

		if($del == 1){

		print "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=inicio.php?btn=vendermesa&id_mesa=$mesaId'>";	

		}

	}
}





	

  $sql1 = mysqli_query($db,"SELECT * FROM mesa WHERE numero='$numero'") or die(mysql_error());

  $cont1 = $sql1->fetch_assoc();

  $sit = $cont1['situacao'];

/*$idGarconget = $_GET['idGarcon'];

$gar2 = mysql_query("SELECT * FROM garcon WHERE idGarcon='$idGarconget'");

$h2 = mysql_fetch_array($gar2); */

  ?>

<!doctype html>

<html class="no-js ui-mobile-rendering" lang="pt">

<head>

      <title>Pizzaria Online</title>

      <meta name="description" content="">



      <meta name="viewport" content="width=device-width, initial-scale=1">











      <link rel="stylesheet" href="css/jquery.mobile-1.3.1.min.css" />

      <style type="text/css">

      #preco{ float:right; margin-right:50px; text-align:right; margin-top:-30px;}

      </style>

      <script src="js/require.js" data-main="js/mobile"></script>

<meta charset="utf-8">

</head>

<body>



<div id="categories" data-role="page" data-title="Categories">

  

      <div data-role="header">

            <h1>MESA: <?php echo $idmesa ?></h1>

      </div><!-- /header -->

  <ul data-role="listview" data-theme="b">

            <li><a href="mesas.php">VOLTAR PARA MESAS</a></li>

            <li><a href="vermesa.php?id_mesa=<?php echo $idmesa?>">VER ITENS DA MESA</a></li>

			<?php 

            $str =  $_SERVER['QUERY_STRING'];

			$array = explode('&', $str);

			foreach($array as $valores){

				$valores;

				$arrays = explode('=', $valores);

				foreach($arrays as $val){

				$dado[] = $val;

				}

            }

			$idcategoria = $dado[0];

			$valorcat   	= $dado[1];

			$idmesa 	  = $dado[2];

			$valormesa   = $dado[3];

			$idG		= $dado[4];

			$valorG 	 = $dado[5];

			$igual = "=";

			$i = "&";

			?>

            <li><a href="inicio.php?<?php echo $idcategoria.$igual.$valorcat.$i.$idmesa.$igual.$valormesa.$i.$idG.$igual.$valorG ?>">CATEGORIAS</a></li>

 

            </ul>
            
            

            

      <div data-role="content">

            <h2>Selecione o produto</h2>

              <ul data-role="listview" data-inset="true" data-theme="a">

            <?php
            
       

	$idCategoria = $_GET['id_categoria'];

	$seleciona = mysqli_query($db,"SELECT * FROM tbl_produtos WHERE id_categoria = '$idCategoria' ORDER BY nome ASC") or die(mysql_error());
	$seleciona2 = $seleciona->fetch_all(MYSQLI_ASSOC);

	$contar = count($seleciona2);

	

	if($contar == 0){

		echo "";

	}else{		

		foreach($seleciona2 as $res_comentarios){		

		

			$cod          = $res_comentarios['cod'];

			$nome         = $res_comentarios['nome'];

			$preco		= $res_comentarios['preco'];

			//$data         = $res_comentarios['data'];

			$destino      = $res_comentarios['destino'];
			
			

				

	?>



	<li>
	 	<a href="#observacao" class="">

				<?php echo $nome; ?></a><br>
		     
		<div id="preco">
			R$<?php echo $preco; ?>

			<a data-icon="star"></a>
	    </div>

	</li>
       
    <form method="post" action="cadastra.php?cod=<?php echo $cod ?>&nome=<?php echo $nome ?>&preco=<?php echo $preco ?>&qtd=1&mesa=<?php echo $numero ?>&idGarcon=<?php echo $mostra['idGarcon']; ?>&destino=<?php echo $destino ?>">
		<a  data-role="button" data-mini="true">Observação do produto
			<textarea class="form-control" id="observacao" wrap="physical" cols=50 rows=5 name="observacao" placeholder="Detalhes"></textarea>
			<button type="submit">Adicionar</button>
		</a>
	</form>
                  <?php } }?>


      

      



                  <!--<li><a href="#category?colors" class="colors">Colors</a></li> -->

            </ul>

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