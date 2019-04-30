<?php
# FileName="Connection_php_mysql.htm"
# Type="MYSQL"
# HTTP="true"
$hostname_sistema = "br438.hostgator.com.br";
$database_sistema = "synap062_barerest";
$username_sistema = "synap062_bareres";
$password_sistema = "#bar@restaurante";
$sistema = mysql_connect($hostname_sistema, $username_sistema, $password_sistema) or trigger_error(mysql_error(),E_USER_ERROR); 
?>