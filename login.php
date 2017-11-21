<?php 

session_start(); 
ob_start();
include "config/conexao.php";
$login = $_POST['login']; 
$senha = $_POST['senha'];

$sql = mysql_query("SELECT * FROM garcon WHERE login='$login' AND senha='$senha'") or die(mysql_error()); 
$conf = mysql_fetch_array($sql);

/*Nivel de acesso:  
	0: admin 
	1: garcom 
	2: cozinha 
*/
$nv = $conf['nv'];
$_SESSION['msg_erro'] = "";
//usuario encontrado é admin - 0
if(mysql_num_rows($sql) == 1 and $nv == "0"){
	$_SESSION['login_session'] = $login;
	$_SESSION['senha_session'] = $senha;
	$_SESSION['nv_garcom'] = $nv;
	header("Location:inicio.php?btn=inicio");
}
//usuario encontrado é da cozinha - 2
elseif(mysql_num_rows($sql) == 1 and $nv == "2"){
	$_SESSION['cozinha_session'] = $login;
	$_SESSION['senha_senha'] = $senha;
	header("Location:pedidoscozinha.php");
}
//usuario encontrado é da garcom - 1
elseif(mysql_num_rows($sql) == 1 and $nv == "1"){
	$_SESSION['login_session'] = $login;
	$_SESSION['senha_session'] = $senha;
	$_SESSION['id_garcom'] = $conf['idGarcon'];
	$_SESSION['nv_garcom'] = $nv;
	header ("location:mesasexclusiva.php?id_garcom=".$conf['idGarcon']);
}else{
	unset($_SESSION['login_session']);
	unset($_SESSION['senha_session']);
	//$_SESSION['msg_erro'] = "Dados não conferem!";
	//header("Location:logar.php?msg_erro='Dados não conferem!'");
	header("location:logar.php?erro=erro");

}

?>