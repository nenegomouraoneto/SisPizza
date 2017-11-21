<?php 
session_start();
ob_start(); 
include "../config/conexao.php";

$login = $_POST['login']; 
$senha = $_POST['senha'];

/*Nivel de acesso:  
	0: admin 
	1: garcom 
	2: cozinha 
*/

//$sql = mysql_query("SELECT * FROM garcon WHERE login='$login' AND senha='$senha' AND nv !='2'") or die(mysql_error()); 
$sql = mysql_query("SELECT * FROM garcon WHERE login='$login' AND senha='$senha' AND nv ='1'") or die(mysql_error()); 
$conf = mysql_fetch_array($sql);

$nv = $conf['nv'];

if(mysql_num_rows($sql) == 1){
	$_SESSION['garcon_session'] = $login;
	$_SESSION['senha_session'] = $senha;
	
	$_SESSION['id_garcom'] = $conf['idGarcon'];
	$_SESSION['nv_garcom'] = $nv;
	
	header("Location:mesas.php?id_garcom=".$conf['idGarcon']);

}else{
	unset($_SESSION['garcon_session']);
	unset($_SESSION['senha_session']);
	header("location:index.php?erro=erro");

}

?>