<?php
include "config/conexao.php";
session_start(); 

$mesa = $_GET['mesa'];

$conf = mysql_query("SELECT * FROM mesa WHERE numero = '$mesa'") or die(mysql_error());
$conferegarcon = mysql_fetch_array($conf);

$idGarcon = $conferegarcon['idGarcon'];
$cat = $_GET['categoria'];
$cod	= $_GET['cod'];
$nome 	= $_GET['nome'];
$preco	= $_GET['preco'];
$qtd	= $_GET['qtd'];
$comanda	= '0';
date_default_timezone_set('America/Sao_Paulo');
$data 	= date('Y-m-d H:i:s');
$destino = $_GET['destino'];
$time = date("H:i");


$sglG = mysql_query("SELECT * FROM garcon WHERE idGarcon = '$idGarcon'") or die(mysql_error());
$nv = mysql_fetch_array($sglG);

$cadastra = mysql_query("INSERT INTO tbl_carrinho (
						cod, nome, preco, qtd,comanda,data,id_mesa,situacao,idGarcon,status,destino,entregue,time,feito
						) VALUES (
						'$cod', '$nome', '$preco', '$qtd', '$comanda', '$data','$mesa','1','$idGarcon','0','$destino','0','$time','0'
						)")or die (mysql_error());
         
		If($_SESSION['nv_garcom'] == '1'){
			$_SESSION['nv_garcom'];
			header ("location: inicio2.php?btn=vendermesa&id_mesa=$mesa&id_categoria=$cat&idGarcon=$idGarcon");
		}
		Else{
			header ("location: inicio.php?btn=vendermesa&id_mesa=$mesa&id_categoria=$cat&idGarcon=$idGarcon");
		}
//		inicio.php?btn=vendermesa&id_mesa=42&id_categoria=13&idGarcon=35

?>
