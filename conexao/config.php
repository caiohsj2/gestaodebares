<?php	

  /// DADOS DE ACESSO AO SERVIDOR MySQL LOCALHOST

  $host_db = "br438.hostgator.com.br";

  $user_db = "synap062_bareres";

  $pass_db = "#bar@restaurante";

  $my_db   = "synap062_barerest";

	

  /// REALIZA A CONEXﾃグ

  $conect = mysql_connect($host_db,$user_db ,$pass_db);

            mysql_select_db($my_db, $conect);

?>