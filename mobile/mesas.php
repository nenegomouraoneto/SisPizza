<?php include "../config/conexao.php";
session_start();
ob_start();
//se nao existir volta para a pagina do form de login
if(!isset($_SESSION['garcon_session']) and !isset($_SESSION['senha_session'])){
	header("Location:index.php");
	exit;		
}

$idGarcon = $_GET['id_garcom'];

$g = mysql_query("SELECT * FROM garcon WHERE idGarcon='$idGarcon'"); //para pegar o nome do garcom depois la embaixo
$mostra = mysql_fetch_array($g);

?>


<!doctype html>
<html class="no-js ui-mobile-rendering" lang="pt">

<head>
      <title>ConcepTI Mobile</title>
      <meta name="description" content="">
	  <meta http-equiv="refresh" content="10">

      <meta name="viewport" content="width=device-width, initial-scale=1">

      <link rel="stylesheet" href="css/jquery.mobile-1.3.1.min.css" />
	  <link rel="stylesheet" href="css/stylemobile.css" />
      <link rel="stylesheet" href="../css/css.css"/>
      <script src="js/require.js" data-main="js/mobile"></script>
<script>  
function confirmar(query){
if (confirm ("Deseja abrir esta mesa?")){   
	window.location="inicio.php" + query;  
		return true;
}
 else  
	//window.location="mesas.php";
	return false;
 }
</script> 
</script>  
<meta charset="utf-8">
</head>

<body>

<div class="categories" data-role="page" data-title="Categories">
  
      <div data-role="header" class="cabec">
            <h2>Bem vindo, <?php echo $mostra['nomeGarcon'] ?></h2>
			<h4><a href="../sair.php" >Sair</a></h4>
      </div><!-- /header -->
  
      <div data-role=""><!-- o valor de data-role era "content" e foi tirado-->
            <ul data-role="listview" data-inset="true">
            <div id="mesas2">
				<ul>
					<?php 
					//echo "<meta HTTP-EQUIV='refresh' CONTENT='5;'>";
						$sql = mysql_query("SELECT * FROM mesa WHERE idGarcon = '$idGarcon' OR idGarcon = '' ORDER BY id_mesa ASC");
						while($ver = mysql_fetch_array($sql)){
							$situacao = $ver['situacao'];
							$id_mesa = $ver['id_mesa'];
							$numero = $ver['numero'];
							$idGarcon = $ver['idGarcon'];
							
							$gar = mysql_query("SELECT * FROM garcon WHERE idGarcon='$idGarcon'");
							$bosta = mysql_fetch_assoc($gar);
							$nomeGarcon = $bosta['nomeGarcon'];
						
							
							if($situacao == 0){
								$img = "<img src='../imagens/mesaclosed.png' width='60' height='47' border='0'>";				
							}else{
								$img = "<img src='../imagens/mesaocupada.png' width='60' height='47' border='0'>";
							}
					
					?>

					<li>
						<a href="inicio.php?id_mesa=
						<?php echo $id_mesa ?>&idGarcon=
						<?php echo $idGarcon ?>">
						<?php echo $img; echo "<br/>";  echo 'Nº '.$numero;  echo "<br/>"; if($situacao == 1){echo "Garçom: ".$nomeGarcon; }else{echo "Abrir";} ?>
						</a>
					</li>

				<?php } ?>
				</ul>
</div>
<!-- Underscore Template that is used to display all of the Category Models -->
<script id="categoryItems" type="text/template">

       _.each( collection.toJSON(), function( category, id ) { 

            <li class="ui-li ui-li-static ui-btn-up-c ui-corner-top">
                  <%= category.type %>
            </li>

       }); 

</script>

</body>
</html>