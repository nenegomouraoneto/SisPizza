<?php
   date_default_timezone_set('America/Sao_Paulo');
   
   $numero = $_GET['id_mesa'];
   $idGarcon = $_GET['idGarcon'];
   @$idCategoria = $_GET['id_categoria'];
   
   if($_GET['retira'] == "produto"){
   	$numer = $_GET['numero'];
   	$mesaId = $_GET['id_mesa'];
   	$idDelete = $_GET['id'];
	//$cat = $_GET['categoria'];
   	$del = mysql_query("DELETE FROM	tbl_carrinho WHERE id='$idDelete'");
   	if($del == 1){
		//print "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=inicio.php?btn=vendermesa&id_mesa=$mesaId'>";	
		print "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=inicio.php?btn=vendermesa&id_mesa=$mesaId&id_categoria=$idCategoria&idGarcon=$idGarcon'>";	
		//inicio.php?btn=vendermesa&id_mesa=$mesaId&id_categoria=$idCategoria&idGarcon=$idGarcon
   	}
   }
   
   if(isset($_POST['ok'])){
   		$idGarcon = $_POST['nomeGarcon'];
   		$altera = mysql_query("UPDATE mesa SET idGarcon = '$idGarcon', situacao = '1' WHERE id_mesa = '$numero' ") or die(mysql_error());
   		if($altera == 1){
			If ($_SESSION['nv_garcom'] == '0'){
				print "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=inicio.php?btn=vendermesa&id_mesa=$numero&idGarcon=$idGarcon'>";
			}
			Else{
				print "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=inicio2.php?btn=vendermesa&id_mesa=$numero&idGarcon=$idGarcon'>";	
			}
   	}
   }
   
   ?>
<?php 
   $sql1 = mysql_query("SELECT * FROM mesa WHERE numero='$numero'") or die(mysql_error());
   $cont1 = mysql_fetch_array($sql1);
   $sit = $cont1['situacao'];
   $idGarconget = $_GET['idGarcon'];
   $gar2 = mysql_query("SELECT * FROM garcon WHERE idGarcon='$idGarconget'");
   $h2 = mysql_fetch_array($gar2);
   ?><br/>
   
<style type="text/css">
ul {
  list-style-type: none;
  text-align:center;
}
.lista{
	background-color:#02274b;
	margin-top:10px;
	border-radius: 3px;
}
.lista a{
	color:white;
	text-align:center;
	 text-transform: uppercase;
}
</style>
 
<head>
	<meta http-equiv="refresh" content="15">
</head>
 
<div class="container">
<div class="bs-docs-section" >
   <div class="bs-docs-section" >
      <div class="row">
         <div class="col-lg-12">
            <div class="page-header">
               <h1 id="forms">Atendimento de Mesa</h1>
            </div>
         </div>
      </div>
      <div class="row">
   <div class="col-lg-12">
      <div class="well bs-component">
         <form action="" class="form-horizontal" method="post" enctype="multipart/form-data">
            <label>Garçom Responsável: </label>
            <select class="form-control" name="nomeGarcon">
               <option value="0">=Selecione=</option>
               <?php 
				echo $_SESSION['nv_garcom'];
                  $gar = mysql_query("SELECT * FROM garcon WHERE nv NOT IN('0', '2') ORDER BY nomeGarcon ASC") or die(mysql_error());
                  while($h = mysql_fetch_array($gar)){
                  	
                  ?>
               <option value="<?php echo $h['idGarcon'] ?>"<?php if (!(strcmp($h['idGarcon'], $h2['idGarcon']))) {echo "selected=\"selected\"";} ?>><?php echo $h['nomeGarcon'] ?></option>
               <?php }?>
            </select>
            <?php if($sit == "0"){?>
				<br/><input name="ok" type="submit" value="Abrir mesa" style="color: #ffffff; border-color: #e20f0f; background-color: #e20f0f; border-radius:2px; padding:9px 7px; border-radius:5px;" />
            <?php }else{ ?>
				<!--<br /><input name="ok" type="submit" value="Alterar" class="btn btn-info" />-->
            <?php } ?>
         </form>
      </div>
   </div>
</div>
	  
	  <?php if($sit == "1" || $sit == "0"){
				if ($_SESSION['nv_garcom'] == '1')
					include "selecionacat2.php";
				Else
					include "selecionacat.php";
            } ?>
      <div id="boxprodutos" class="col-lg-4">
         <br/>
         
			
			<div>
			
         <div id="comentarios2">
            <ul class="well" >
               <?php	
                  @$idCategoria = $_GET['id_categoria'];
                  $seleciona = mysql_query("SELECT * FROM tbl_produtos WHERE id_categoria = '$idCategoria' ORDER BY nome ASC") or die(mysql_error());
                  $contar = mysql_num_rows($seleciona);
                  
                  if($contar == 0){
                  	echo "";
                  }else{		
                  	while($res_comentarios = mysql_fetch_array($seleciona)){		
                  	
                  		$cod          = $res_comentarios['cod'];
                  		$nome         = $res_comentarios['nome'];
                  		$preco		= $res_comentarios['preco'];
                  		@$data         = $res_comentarios['data'];
                  		$destino      = $res_comentarios['destino'];
                  			
                  ?>
               <li class="lista">
				<a href="cadastra.php?cod=<?php echo $cod ?>&nome=<?php echo $nome ?>&preco=<?php echo $preco ?>&qtd=1&mesa=<?php echo $numero ?>&idGarcon=<?php echo $idGarcon ?>&destino=<?php echo $destino ?>&categoria=<?php echo $idCategoria ?> "><?php echo $nome . " - "."<strong>R$ ". $preco . "</strong>" ?></a></li>
               <?php 
                  }
                  }	
                  ?>    
            </ul>
         </div>
		 </div>
         <!--// fecha comentários --> 
      </div>
      <!--// fecha box -->
      <div>
         <div style="margin-top: -40px" class="col-lg-8">
            
               <tr>
                  <?php $n = mysql_query("SELECT * FROM config");
                     $a = mysql_fetch_array($n);
                     ?>
                  <legend>Informações da Mesa nº: <?php echo $numero ?></legend>
               </tr>
               <tr>
                  <!--<td align="center" style="font-size:16px;"><?php echo $a['empresa'] ?><br/> <?php echo date("d/m/y") ?></td>-->
               </tr>
               <tr>

               </tr>
               </tr>
            
            <script type="text/javascript">
               var win = null;
               function Cozinha(pagina,nome,w,h,scroll){
					LeftPosition = (screen.width) ? (screen.width-w)/3 : 0;
					TopPosition = (screen.height) ? (screen.height-h)/3 : 0;
					settings = 'height='+h+',width='+w+',top='+TopPosition+',left='+LeftPosition+',scrollbars='+scroll+',resizable'
					win = window.open(pagina,nome,settings);
               }
               
            </script>	
            <table class="table table-striped table-bordered">
               <tr>
                  <td><strong>PRODUTOS</strong></td>
                  <td align="center"><strong>QDT</strong></td>
                  <td align="center"><strong>UN</strong></td>
                  <td align="center" style="font-size:16px;"><strong>TOTAL</strong></td>
                  <td align="center">&nbsp;</td>
               </tr>
               <?php	
                  $carrinho = mysql_query("SELECT *, SUM(qtd) AS qt,SUM(preco) AS pr FROM tbl_carrinho WHERE id_mesa='$numero' AND situacao='1' GROUP BY cod") or die(		mysql_error());
                  $contar = mysql_num_rows($carrinho);
                  $itens = 0;
                  $total = 0;
                  
                  if($contar == 0){
                  	echo "";
                  }else{		
                  	while($res = mysql_fetch_array($carrinho)){		
                  	
                  		$id           	= $res['id'];
                  		$cod     	  	= $res['cod'];
                  		$nome  			= $res['nome'];
                  		$preco       	= $res['pr'];	
                  		$qtd		 	= $res['qt'];
                  		$unitario		= $res['preco'];
                  		$comanda		= $res['comanda'];
                  		$data			= $res['data'];
                  		$id_mesa		= $res['id_mesa'];
                  		
                  		$itens +=$qtd;
                  		$total += $preco;
                  ?>
               <tr class="fontcomanda">
                  <td width="60%" align="left">
                     <a href="cozinha.php?id_mesa=<?php echo $id_mesa ?>&nome=<?php echo $nome; ?>"  title="Imprimir"
                        onclick="Cozinha(this.href,'nomeJanela','350','600','yes');return false" class="fontcomanda"><?php echo $nome; ?></a>
                  </td>
                  <td align="center" ><?php echo $qtd; ?> </td>
                  <td align="center" ><?php echo  str_replace(".",",",$unitario); ?></td>
                  <td align="center"><?php echo number_format($preco, 2, ',', '.'); ?></td>
                  <td align="center">
                     <a href="inicio.php?btn=vendermesa&retira=produto&id=<?php echo $id ?>&id_categoria=<?php echo $idCategoria?>&id_mesa=<?php echo $numero ?>&idGarcon=<?php echo $idGarcon ?>"><img src="imagens/excluir.png" width="17" height="18" border="0" /></a>
				  </td>
               </tr>
               <?php 
                  }
                  }	
                  ?> 
               <tr class="fontcomanda">
                  <td align="right"><strong>TOTAL DE ITENS:</strong></td>
                  <td align="center" colspan="3" ><?php echo $itens ?></td>
				  <td></td>
               </tr>
            </table>
            <div class="row">
               <div class="col-lg-12">
                  <div class="well bs-component">
                     <script type="text/javascript"  src="js/jquery-1.8.2.min.js"></script>
                     <script type="text/javascript"  src="js/jquery.mask-money.js"></script>
                     <script type="text/javascript">
                        // JavaScript Document
                        $(document).ready(function(){
                            $(".btn").click(function(event) {
                               event.preventDefault();
                                $.ajax({
                                //pegando a url apartir do href do link
                                    url: $(this).attr("href"),
                                    type: 'GET',
                                    context: jQuery('#resultado'),
                                    success: function(res_cadastra){			
                        				
                        				$(".inputs").html(res_cadastra);
                        			
                        				$.post('atualizamesa.php?id_mesa=<?php echo $_GET['id_mesa']; ?>', function(atualiza_comentarios){			
                        				$("#comentarios").html(atualiza_comentarios);
                        				});
                        		return false;
                                    },
                        		});
                                });    
                            });
                        	
                        /////////////////////// RESOLVENDO PROBLEMA COM MOEDAS E SOMAS /////////////////////////////
                            function formatReal( int )
                            {
								var tmp = int+'';
								var neg = false;
								if(tmp.indexOf("-") == 0)
								{
									neg = true;
									tmp = tmp.replace("-","");
                            }
                            if(tmp.length == 1) tmp = "0"+tmp
								tmp = tmp.replace(/([0-9]{2})$/g, ",$1");
                            if( tmp.length > 6)
								tmp = tmp.replace(/([0-9]{3}),([0-9]{2}$)/g, ".$1,$2");
                            if( tmp.length > 9)
								tmp = tmp.replace(/([0-9]{3}).([0-9]{3}),([0-9]{2}$)/g,".$1.$2,$3");
                            if( tmp.length > 12)
								tmp = tmp.replace(/([0-9]{3}).([0-9]{3}).([0-9]{3}),([0-9]{2}$)/g,".$1.$2.$3,$4");
                            if(tmp.indexOf(".") == 0) tmp = tmp.replace(".","");
							if(tmp.indexOf(",") == 0) tmp = tmp.replace(",","0,");
								return (neg ? '-'+tmp : tmp);
                            }
                        
                        function operacao(){
							str = document.formulario.dinheiro.value;
							nvdinheiro = str.replace(",", "");
							d = nvdinheiro.replace(".","");
                        
							str2 = document.formulario.somatotal.value;
							nvsomatotal = str2.replace(",", "");
							t = nvsomatotal.replace(".","")
							a = d - t;
							document.formulario.troco.value = formatReal(a);
                        }
                        
                        ///////////////////// FIM DO PROBLEMA //////////////////////////////////////////////////
                        
                        $(document).ready(function() {
                        	$("input.calc").maskMoney({decimal:",",thousands:"."});
                        		
                              });
                        
                        var win = null;
                        function NovaJanela(pagina,nome,w,h,scroll){
                        	LeftPosition = (screen.width) ? (screen.width-w)/2 : 0;
                        	TopPosition = (screen.height) ? (screen.height-h)/2 : 0;
                        	settings = 'height='+h+',width='+w+',top='+TopPosition+',left='+LeftPosition+',scrollbars='+scroll+',resizable'
                        	win = window.open(pagina,nome,settings);
                        }
                        
                     </script>
                     <?php $totals = number_format($total, 2, ',', '.'); ?>
                     <form class="form-inline" name="formulario" action="" method="post" enctype="multipart/form-data">
					 
						<div class="form-group">
							<label class="valores control-label">Total venda </label>
							<input  name="total" type="text" value="<?php echo $totals ?>" size="8" maxlength="6" class="calc form-control" readonly="true"/><br/>
						</div>
                        <?php 
                           $g = mysql_query("SELECT * FROM config") or die(mysql_error());
                           $w = mysql_fetch_array($g);
                           $ativo = $w['ativo'];
                           $percentual = $w['pgarcon'];
                           if($ativo == 1){
								$porcento_garcon = $percentual;
                           }else{
								$porcento_garcon = 0;
                           }
                           	
                           	$pgarcon = $total * $porcento_garcon / 100;
                           	
                           	$somatotal = $total + $pgarcon;
                           
                           ?>
						<div class="form-group">
							<label class="valores control-label">Percentural do Garçon </label>
							<input name="garconP" type="text" class="calc form-control" id="garconP" value="<?php echo number_format($pgarcon, 2, ',', '.'); ?>"/><br/>
                        </div>
						<div class="form-group">
							<br/><label class="valores control-label">Total </label>
							<input name="somatotal" type="text" class="calc form-control" id="somatotal" value="<?php echo number_format($somatotal, 2, ',', '.'); ?>"/><br/>
                        </div>
						<div class="form-group">
							<span class="valores control-label">Dinheiro </span>
							<input name="dinheiro" type="text" size="8"  class="calc form-control" onkeyup="javascript:operacao('')" id="dinheiro-1"/><br/>
                        </div>
						<div class="form-group">
							<label class="valores control-label">Troco </label>
							<input name="troco" type="text" class="calc form-control" size="8" maxlength="8" readonly="true"/><br/>
                        </div>
						<?php 
                           $mesas = $_GET['id_mesa'];
                           ?>
                        <a href="imprimemesa.php?id_mesa=<?php echo $mesas;?>&pgarcon=<?php echo $pgarcon?>&somatotal=<?php echo $somatotal ?>&nvgarcon=<?php echo $h2['nv'];?>" 
                           onclick="NovaJanela(this.href,'nomeJanela','450','600','yes');return false" class="btn btn-info">
                        Fechamento</a> 
                     </form>
                  </div>
               </div>
               <br/>
            </div>
         </div>
         <!--// fecha comentários --> 
      </div>
      <!--// fecha box -->
      <div style="clear:both;"></div>
   </div>
</div>