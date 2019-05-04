<?php 

//backup_bd('br438.hostgator.com.br','synap062_bareres','#bar@restaurante','synap062_barerest');
backup_bd('localhost','root','','gestaodebares');

date_default_timezone_set('America/Sao_Paulo'); 

/* Fazer Backup da BD ou só de uma Tabela */

function backup_bd($host,$utilizador,$password,$nome,$tabelas = '*')

{


    $link = new mysqli($host,$utilizador,$password,$nome);

 

    //obter todas as tabelas

    if($tabelas == '*')

    {

        $tabelas = array();

        $resultado = mysqli_query($link,'SHOW TABLES');

        while($coluna = $resultado->fetch_row())

        {

            $tabelas[] = $coluna[0];

        }

    }

    else

    {

        $tabelas = is_array($tabelas) ? $tabelas: explode(',',$tabelas);

    }

 
    $return = "";
    foreach($tabelas as $tabelas)

    {

        $resultado = mysqli_query($link,'SELECT * FROM '.$tabelas);

        $num_campos = $resultado->field_count;

 

        $return.= 'DROP TABLE '.$tabelas.';';

        $resultado2 = mysqli_query($link,'SHOW CREATE TABLE '.$tabelas);

        $coluna2 = $resultado2->fetch_row();

        $return.= "\n\n".$coluna2[1].";\n\n";

 

        for ($i = 0; $i < $num_campos; $i++)

        {

            while($coluna = $resultado->fetch_row())

            {

                $return.= 'INSERT INTO '.$tabelas.' VALUES(';

                for($j=0; $j<$num_campos; $j++)

                {

                    $coluna[$j] = addslashes($coluna[$j]);

                    $coluna[$j] = preg_replace("/\n/","/\\n/",$coluna[$j]);

                    if (isset($coluna[$j])) { $return.= '"'.$coluna[$j].'"' ; } else { $return.= '""'; }

                    if ($j<($num_campos-1)) { $return.= ','; }

                }

                $return.= ");\n";

            }

        }

        $return.="\n\n\n";

    }

 

    //guarda ficheiro

	date_default_timezone_set('America/Sao_Paulo'); 

	$data = date("d-m-Y - H.m.s");

    $ficheiro = fopen('backup-'.$data.'.sql','w+');

    fwrite($ficheiro,$return);

    fclose($ficheiro);

}



	print "

	<META HTTP-EQUIV=REFRESH CONTENT='0; URL=../inicio.php'>

	<script type=\"text/javascript\">

	alert(\"Backup da base de dados realizado com sucesso.\");

	</script>";





?>