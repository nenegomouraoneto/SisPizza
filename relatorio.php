<script type="text/javascript" src="js/jquery-ui.js"></script>
<script type="text/javascript" src="js/jquery.maskedinput.min.js"></script>
<link href="css/style.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="js/jquery-ui.css">

<script type="text/javascript">
            function imprimir(){
                var pagina = document.getElementById("buscacomanda").innerHTML;
                var novaJanela = window.open('','_blank',		'status=no,toolbar=no,scrollbars=yes,titlebar=no,menubar=no,resizable=yes,width=740,height=480,directories=no,location=no');
                novaJanela.document.write("<head>");
				novaJanela.document.write("<meta http-equiv='content-type' content='text/html; charset=iso-8859-1' />");
				novaJanela.document.write("<style tyle='text/css' media='print'>button{display: none;}</style>");
				
				novaJanela.document.write("<link href='css/bootstrap.min.css' rel='stylesheet'>");
				
				novaJanela.document.write("<style tyle='text/css' media='all'>a{color: #0000FF; font-size: 11px;}</style>");
				novaJanela.document.write("</head>");
                novaJanela.document.write("<br/><button class='' type='button' onclick='javascript:window.print();'>Imprimir Página</button>");
				novaJanela.document.write("<h4 align='center'>Relatório geral de vendas por período</h4><br/>");
				novaJanela.document.write(pagina);

            }			
////////////////////// MASCARA DE IMPUTS /////////////////////////
jQuery(function($){
   $("#hora1").mask("99:99");
   $("#hora2").mask("99:99");
});

$( function() {
    
} );
  
//////////////////// VALIDANDO OS CAMPOS //////////////////////////
//renomeei a funcao de "validar" para "validar2" apenas para ela nao ser chamada, pois se torna desnecessaria
//pq a obrigatoriedade dos campos ja foi definida com a propriedade 'required'
function validar2() {
	var datai = form.datai.value;
	var dataf = form.dataf.value;
	var idGarcon = form.idGarcon.value;
	var hora1 = form.hora1.value;
	var hora2 = form.hora2.value;
 
if (datai == "") {
	alert('Escolha a data inicial');
	form.datai.focus();
	return false;
}

if (dataf == "") {
	alert('Escolha a data final');
	form.dataf.focus();
	return false;
}

if (idGarcon == "") {
	alert('Selecione o garçom');
	form.idGarcon.focus();
	return false;
}
if (hora1 == "") {
	alert('Selecione a hora inicial');
	form.hora1.focus();
	return false;
}
if (hora2 == "") {
	alert('Selecione a hora final');
	form.hora2.focus();
	return false;
}

} ////////////// FIM DA FUNCTION /////////////////////

<?php 
	
	function excel($linhas){
		echo $linhas;
	}

?>

</script>
<div class="container" style="margin-top: 5%;">
   <div class="bs-docs-section" >
      <div class="row">
         <div class="col-lg-12">
            <div class="page-header">
               <h1 id="forms">Relatório geral de vendas por período</h1>
            </div>
         </div>
      </div>
      <div class="naomostra">
         <div class="col-lg-12">
            <div class="form-group">
               <form action="?btn=relatorio&busca=rel" class="form-inline" method="post" enctype="multipart/form-data" id="form">
                   <div class="form-group">
						<label for="inputEmail" class="control-label">DATA INICIO</label>
						<div class="">
							<input required class="form-control" name="datai" type="text" size="8" id="datai">
						</div>
					</div>
					<div class="form-group">
						<label for="inputEmail" class="control-label">DATA FINAL</label>
						<div class="">
							<input required class="form-control" name="dataf" type="text" size="8" id="dataf">
						</div>
					</div>
					<!-- Sem filtro de hora ------------
					------------------------------------
					------------------------------------->
					<!--<div class="form-group">					
						<label for="inputEmail" class="control-label">ENTRE</label>
						<div class="">
							<input required class="form-control" name="hora1" type="text" size="3" maxlength="5" id="hora1"/>Hs
						</div>
					</div>	 
					<div class="form-group">					
						<label for="inputEmail" class="control-label">E</label>
						<div class="">
							<input required class="form-control" name="hora2" type="text" size="3" maxlength="5" id="hora2"/>Hs
						</div>
					</div>-->
					<div class="form-group">
						<div class="">
							<input style="margin-top:18px" class="btn btn-info" name="buscar" type="submit" value="Gerar" id="buscar" onclick="return validar()">
						</div>
					</div>	
               </form>
            </div>
         </div>
         <br/>
         <div id="buscacomanda">
            <?php 
               $confere = mysql_query("SELECT * FROM config");
               $ver =  mysql_fetch_array($confere);
               
               $ativo = $ver['ativo'];
               
               if($ativo == '0'){
					echo '<p class="text-success">O cálculo de percentual do garçom está desativado.</p>';
               }else{
               
               ?>
            <table class="table table-striped table-bordered">
               <tr>
                  <td><strong>DATA</strong></td>
                  <td><strong>PRODUTO</strong><strong></strong></td>
                  <td><strong>PREÇO (R$)</strong></td>
				  <td><strong>QTDE</strong></td>
                  <td><strong>TOTAL (R$)</strong></td>
               </tr>
               <?php if(@$_GET['busca'] == "rel"){
                  @$datai = date('Y/m/d', strtotime($_POST['datai']));
                  @$dataf = date('Y/m/d', strtotime($_POST['dataf']));
                  //@$hora1 = $_POST['hora1'];
                  //@$hora2 = $_POST['hora2'];
                  //$garcon = $_POST['idGarcon'];
				  
				  //$query = mysql_query("SELECT data, nome, preco, SUM(preco) AS pr, SUM(qtd) AS qtd, date_format(data, '%d/%m/%Y') AS data FROM tbl_carrinho WHERE idGarcon='$garcon' AND data BETWEEN '$datai' AND '$dataf' GROUP BY data") or die(mysql_error());	
                  
				  $query = mysql_query("SELECT c.id, data, date_format(data, '%d/%m/%Y') as dt, c.nome nome, 
										c.preco preco, sum(qtd) qtde, sum(preco) total
										from tbl_carrinho c
										where data BETWEEN '$datai' AND '$dataf'
										group by c.nome, c.data ORDER BY data ASC");
				  
				  //filtro com a hora
				  //$query = mysql_query("SELECT data, nome, preco, SUM(preco) AS pr, SUM(qtd) AS qtd, date_format(data, '%d/%m/%Y') AS data FROM tbl_carrinho WHERE idGarcon='$garcon' AND data BETWEEN '$datai' AND '$dataf' AND time BETWEEN '$hora1' AND '$hora2' GROUP BY data") or die(mysql_error());
                  
                  /*$sel = mysql_query("SELECT * FROM tbl_carrinho")or die(mysql_error());
                  $ganho = 0;
                  while($resultado = mysql_fetch_array($query)){
                  @$ids = $resultado['idGarcon'];
                  $oo = mysql_query("SELECT * FROM garcon WHERE idGarcon='$garcon'")or die(mysql_error());
                  		$todos = mysql_fetch_assoc($oo);
                   		$nome_garcon = $todos['nomeGarcon'];
                  		$data = $resultado['data'];
                  		$nome = $resultado['nome'];
                  		$qtd = $resultado['qtd'];
                  		$preco_unitario = $resultado['preco'];
                  		$precototal = $resultado['pr'];	
                  		$total_produto = $qtd * $preco_unitario;
                  		@$total += $total_produto; 
                  
                  
                  $comi = mysql_query("SELECT * FROM config");
                  $valor = mysql_fetch_array($comi);
                  	$venda = $valor['pgarcon'];
                  	$ganho += $total_produto * $venda / 100;
					
					*/
                  
                  ?>
				  
				<?php 
					$val_total = 0;
					
					 while($res = mysql_fetch_array($query)){
				?>  
				   <tr>
					  <td><?php echo $res['dt'] ?></td>
					  <td><?php echo $res['nome'] ?></td>
					  <td><?php echo $res['preco'];?></td>
					  <td><?php echo number_format($res['qtde'], 2, ',', '.');?></td>
					  <td><?php echo number_format($res['total'], 2, ',', '.');?></td>
					  <?php $val_total += $res['total']; ?>
				   </tr>
				
               <?php }  
					
			   ?>
				   <tr>
					  <td colspan="3" align="center">&nbsp;</td>
					  <td align="center" style="border:1px solid #f2f2f2;"><strong>Venda Total do perí­odo </strong></td>
					  <td align="right" style="border:1px solid #f2f2f2;"><strong>
						 <?php echo "RS ". number_format($val_total, 2, ',', '.');?></strong>
					  </td>
				   </tr>
               <?php } ?>
			   

            </table>
         </div>
         <div style="text-align:center; margin-top:5px;">
			<button type="button" class="btn btn-info" onclick="javascript:imprimir();">Imprimir relatório</button>
		</div>
         <?php } ?>
      </div>
   </div>
</div>
</div>