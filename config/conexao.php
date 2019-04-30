<?php 
// $host = "br438.hostgator.com.br"; // endereco do banco de dados

// $usuario = "synap062_bareres"; // usuario do banco de dados

// $senhadobanco = "#bar@restaurante"; // senha do banco de dados

// $nomedobanco = "synap062_barerest"; //nome do banco de dados


$host = "localhost"; // endereco do banco de dados

$usuario = "root"; // usuario do banco de dados

$senhadobanco = ""; // senha do banco de dados

$nomedobanco = "gestaodebares"; //nome do banco de dados


// NAO ATERAR NADA DAQUI PARA BAIXO

$db = new mysqli($host,$usuario,$senhadobanco, $nomedobanco) or die (mysqli_error());


?>