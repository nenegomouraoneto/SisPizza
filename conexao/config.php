<?php	
  /// DADOS DE ACESSO AO SERVIDOR MySQL LOCALHOST
  $host_db = "192.168.0.100";//"localhost";//"mysql.hostinger.com.br";
  $user_db = "root";//"u555807570_banc2";
  $pass_db = "";//"Sex151982";
  $my_db   = "sispizza";//"u555807570_banc2";
	
  /// REALIZA A CONEXÃO
  $conect = mysql_connect($host_db,$user_db ,$pass_db);
            mysql_select_db($my_db, $conect);
?>
