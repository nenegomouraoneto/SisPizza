<h1> &nbsp;&nbsp;&nbsp;Mesas</h1>
<script type="text/javascript" src="js/jquery-ui.js"></script>
<script type="text/javascript" src="js/jquery.maskedinput.min.js"></script>
<link href="css/style.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="js/jquery-ui.css">
<?php 
	
	include "config/conexao.php";
	
	
   if(@$_GET['fecha'] == "fechar"){
   
   $id_mesa = $_GET['id_mesa'];
   
   	$delete = mysql_query("UPDATE mesa SET situacao ='0', idGarcon = '' WHERE id_mesa = '$id_mesa' ")or die(mysql_error());
   
   	$up = mysql_query("UPDATE tbl_carrinho SET situacao = '0' WHERE id_mesa = '$id_mesa'")or die(mysql_error());
   
   }
   
   ?>

<head>
	<meta http-equiv="refresh" content="15">
</head>   
  
<div class="container">
<div class="bs-docs-section">
   <div class="row">
      <div class="col-lg-12">
         <div class="page-header">
            <h1 id="forms">Controle de mesas</h1>
         </div>
      </div>
   </div>
   <div class="row">
      <?php 
         $sql = mysql_query("SELECT * FROM mesa ORDER BY id_mesa ASC");
         
         while($ver = mysql_fetch_array($sql)){
         
         	$situacao = $ver['situacao'];
         	$id_mesa = $ver['id_mesa'];
         	$numero = $ver['numero'];
         	$idGarcon = $ver['idGarcon'];
         	$gar = mysql_query("SELECT * FROM garcon WHERE idGarcon='$idGarcon'");
         	$bosta = mysql_fetch_assoc($gar);
         	$nomeGarcon = $bosta['nomeGarcon'];
         
         	if($situacao == 0){
         		$img = "btn-success";
         	$text = "Vazia";
         	}else{
         		$text = "Ocupada";
				$img = "btn-danger";
         	}
         
         ?>
      <div class="col-lg-2" style="text-align: center; font-size: 1.2em;">
         <a href="?btn=vendermesa&id_mesa=<?php echo $id_mesa ?>&idGarcon=<?php echo $idGarcon ?>">
            <div class="well bs-component <?=$img?>">
               <l style="float:left; font-size: 1.3em; font-weight: bold;  color:#FFF; "><?php echo 'Nº '.$numero;  echo "<br/>";?></l>
               <l style="font-size: 1em; color:#FFF; float:right;"><?=$text?></l>
               <br />
               <l style="font-size: 1em;  color:#FFF;  float:right;">
                  <?php if($situacao == 1){echo $nomeGarcon; }else{echo "Abrir";} ?>
               </l>
               <br />
            </div>
         </a>
      </div>
      <?php }?>
   </div>
</div>