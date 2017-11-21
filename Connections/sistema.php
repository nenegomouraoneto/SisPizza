<?php
# FileName="Connection_php_mysql.htm"
# Type="MYSQL"
# HTTP="true"
$hostname_sistema = "localhost";//"mysql.hostinger.com.br";
$database_sistema = "sispizza";//"u555807570_banc2";
$username_sistema = "root";//"u555807570_banc2";
$password_sistema = "";//"Sex151982";

$sistema = mysql_pconnect($hostname_sistema, $username_sistema, $password_sistema) or trigger_error(mysql_error(),E_USER_ERROR); 
?>