<?php include "../config/conexao.php";

    //verifica se existe conexão com bd; caso não tenta, cria uma nova
    $conect = mysql_connect($host,$usuario,$senhadobanco) or die (mysql_error(Erro na conexão com banco de dados));//porta, usuário, senha e caso não consiga conectar mostra a mensagem de erro mostrada na conexão
   
   $banco = mysql_select_db($tbl_obs,$db)or die (mysql_error()); //seleciona o banco de dados

    //Abaixo atribuímos os valores provenientes do formulário pelo método POST
    $id_produto = $_POST['produto']; 
    $id_mesa = $_POST['mesa'];
    $obsercacao = $_POST['observacao'];

    $string_sql = "INSERT INTO observacao (cod,produto,mesa,observacao) VALUES (null,'{$id_produto}','{$id_mesa}','{$observacao}')"; //String com consulta SQL da inserção

    mysql_query($string_sql,$db); //Realiza a consulta

    if(mysql_affected_rows() == 1){ //verifica se foi afetada alguma linha, nesse caso inserida alguma linha
        echo "<p>Testemunho Registrado</p>";
        echo '<a href="testimonianze.html">Voltar para formulário de cadastro</a>'; //Apenas um link para retornar para o formulário de cadastro
    } else {
        echo "Erro, não foi possível inserir no banco de dados";
    }

    mysql_close($conexao); //fecha conexão com banco de dados 
?>