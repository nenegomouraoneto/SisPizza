<script type="text/javascript">
   function confirmardel(query){
   if (confirm ("Deseja marcar este item como entregue?")){   
    window.location="" + query;  
    return true;
    }
    else  
    //window.location="?btn=garcon";
    return false;
    }
    
    function confirmariten(query){
    if (confirm ("Deseja exluir este item?")){   
    window.location="inicio.php" + query;  
    return true;
    }
    else  
		//window.location="inicio.php?btn=garcon";
    return false;
    }
</script>
<div class="container" style="margin-top: 5%;">
   <div class="bs-docs-section" >
      <div>
         <div class="row">
            <div class="col-lg-12">
               <div class="page-header">
                  <h1 id="forms">Acompanhamento de pedidos</h1>
               </div>
            </div>
         </div>
         <?php 
            include "config/conexao.php";
            echo "<meta HTTP-EQUIV='refresh' CONTENT='5;URL=?btn=garcon'>";
            if(@$_GET['acao'] == "mudar"){
            	$id = $_GET['id'];
            	$entregue = $_GET['entregue'];
            	$sql = mysql_query("UPDATE	tbl_carrinho SET status = '1', entregue='$entregue' WHERE id='$id'") or die(mysql_error());
            	
            }
             if(@$_GET['retira'] == "produto"){
            	$idDelete = $_GET['id'];
            	$del = mysql_query("DELETE FROM tbl_carrinho WHERE id='$idDelete'");
            	if($del == 1){
            	print "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=inicio.php?btn=garcon'>";	
            	}
            }
            ?>			
		<p> LEGENDA <br/> <br/>
			<img src="imagens/002-time.png" width="28" height="22" border="0"/> Pedido em preparação na cozinha &nbsp; &nbsp; &nbsp;
			<img src="imagens/001-interface.png" width="25" height="20" border="0" /> Pedido pronto na cozinha &nbsp; &nbsp; &nbsp;
			<img src="imagens/mesa.png" width="26" height="21" border="0" /> Pedido não preparado na cozinha &nbsp; &nbsp; &nbsp;
			<img src="imagens/ok.png" width="20" height="20" border="0" /> Marcar como entregue	 &nbsp; &nbsp; &nbsp;
			<img src="imagens/excluir.png" width="20" height="20" border="0" /> Excluir item 
		</p>
         <table class="table table-striped table-bordered">
			<tr >
               <td><strong>PRODUTO</strong></td>
               <td align="center"><strong>HORA</strong></td>
               <td align="center"><strong>MESA</strong></td>
               <td align="center"><strong>GARÇOM</strong></td>
			   <td align="center"><strong>STATUS</strong></td>
               <td align="center"><strong>AÇÕES</strong></td>
            </tr>
            <?php 
               $sql = mysql_query("SELECT * FROM tbl_carrinho INNER JOIN garcon ON tbl_carrinho.idGarcon = garcon.idGarcon WHERE status='0' ORDER BY id DESC") or die(mysql_error());
               $i = 0;
               while($ver = mysql_fetch_array($sql)){
               //$background = (++$i%2) ? '#FFFFF' : '#F2F2F2';
					$feito = $ver['feito'];
					$destino = $ver['destino'];
               ?>
            <tr>
               <td><?php echo $ver['nome']; ?></td>
               <td align="center"><?php echo $ver['time']; ?></td>
               <td align="center"><?php echo $ver['id_mesa'] ?></td>
               <td align="center"><?php echo $ver['nomeGarcon'] ?></td>
               <td align="center">
                  <?php if($feito == 1 and $destino == 1){?>
						<?php //echo $feito ?>
						<img src="imagens/001-interface.png" width="26" height="21" border="0" />
				 <?php }elseif($feito == 0 and $destino == 1){?>
						<?php //echo $feito ?>
						<img src="imagens/002-time.png" width="28" height="22" border="0"/>
                  <?php } elseif($feito == 0 and $destino == 0){?>
						<img src="imagens/mesa.png" width="26" height="20" border="0"/>
				<?php ?>
                  <?php } ?>
				  <td align="center">
						<a href="javascript:confirmariten('?btn=garcon&retira=produto&id=<?php echo $ver['id'] ?>entregue=1')"><img src="imagens/excluir.png" width="20" height="20" border="0" /></a> 
						<a href="javascript:confirmardel('?btn=garcon&acao=mudar&id=<?php echo $ver['id']; ?>&entregue=1')">
						<img src="imagens/ok.png" width="20" height="20" border="0"/></a>
				   </td>
               </td>
            </tr>
            <?php } ?>
         </table>
      </div>
   </div>
</div>