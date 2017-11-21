<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Pizza X - Pedidos a serem preparados</title>
<link href="css/css.css" rel="stylesheet" type="text/css">
<link href="css/style.css" rel="stylesheet" type="text/css">

<script type="text/javascript">
 function confirmariten(query){
	 if (confirm ("Espere prato ainda não foi preparado?")){   
		window.location="pedidoscozinha.php" + query;  
		return true;
	}
	else  
		window.location="pedidoscozinha.php";
		return false;
 }
 
 function confirmar(query){
	 if (confirm ("Espere! Este item já está preparado?")){   
		 window.location="pedidoscozinha.php" + query;  
		 return true;
	 }
	else  
		window.location="pedidoscozinha.php";
		return false;
 }
</script>
</head>

<body>
<div id="geral">
<h1>&nbsp;&nbsp;&nbsp;Cozinha - Pedidos a serem preparados  <a href="sair.php">Sair</a></h1> 
<div id="mesas">
<?php 
include "config/conexao.php";

date_default_timezone_set('America/Sao_Paulo');

if(@$_GET['acao'] == "mudar"){
	$id = $_GET['id'];
	$feito = $_GET['feito'];
	$sql = mysql_query("UPDATE	tbl_carrinho SET feito = '$feito' WHERE id='$id'") or die(mysql_error());
	print "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=pedidoscozinha.php'>";
	//echo $feito;
	
	
}echo "<meta HTTP-EQUIV='refresh' CONTENT='5;'>";
/* if($_GET['retira'] == "produto"){
	$idDelete = $_GET['id'];
	$del = mysql_query("DELETE FROM tbl_carrinho WHERE id='$idDelete'");
	if($del == 1){
	print "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=inicio.php?btn=garcon'>";	
	}
}*/
?>
<table class="table table-striped table-bordered">
<tr>
    <tr>
      <td><strong>PRODUTO</strong></td>
      <td  align="center"><strong>HORA</strong></td>
	  <!--<td><strong>ESPERA</strong></td>-->
      <td  align="center"><strong>MESA</strong></td>
      <td  align="center"><strong>GARÇOM</strong></td>
      <td  align="center"><strong>AÇÃO</strong></td>
    </tr>
    <?php 
  $sql = mysql_query("SELECT * FROM tbl_carrinho INNER JOIN garcon ON tbl_carrinho.idGarcon = garcon.idGarcon WHERE destino='1' AND status = '0' ORDER BY time ASC") or die(mysql_error());
  while($ver = mysql_fetch_array($sql)){
	//$background = (++$i%2) ? '#FFFFF' : '#F2F2F2';
	$feito = $ver['feito'];
  ?>
    <tr>
      <td ><?php echo $ver['nome']; ?></td>
      <td align="center" ><?php echo $ver['time']; ?></td>
      <td align="center" ><?php echo $ver['id_mesa'] ?></td>
      <td  align="center"><?php echo $ver['nomeGarcon'] ?></td>
      <td >
      <?php if($feito == 1){?>
		<a href="javascript:confirmariten('?acao=mudar&feito=0&id=<?php echo $ver['id']; ?>')">
		<img src="imagens/pronto.png" width="45" height="18" border="0" /></a>
      <?php }else{?>
      <a href="javascript:confirmar('?acao=mudar&feito=1&id=<?php echo $ver['id']; ?>')"><img src="imagens/AFAZER.png" width="45" height="18" border="0" /></a>
<?php } ?>
      </td>
	  <?php } ?>
    </tr>
  </table>  
</table>
</div>

</div>
</body>
</html>