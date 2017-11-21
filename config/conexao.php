<?php 
// ALTERE OS DADOS DAS STRINGS (NOMES QUE ESTÃO ENTRE AS ASPAS)
$host = "localhost";//"localhost";//"mysql.hostinger.com.br"; // endereco do banco de dados
$usuario = "root";//"u555807570_banc2"; // usuario do banco de dados
$senhadobanco = "";//"Sex151982"; // senha do banco de dados
$nomedobanco = "sispizza";//"u555807570_banc2"; //nome do banco de dados

// NÃO ATERAR NADA DAQUI PARA BAIXO
$db = mysql_connect($host,$usuario,$senhadobanco) or die (mysql_error());
$banco = mysql_select_db($nomedobanco,$db)or die (mysql_error());
mysql_set_charset('utf8');
?>
