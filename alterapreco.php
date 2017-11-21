<?php
   include "config/conexao.php";
   
   
   
   if(isset($_POST['alterar'])){
   
   	$cod	= $_POST['cod'];
   
   	$nome 	= $_POST['nome'];
   
   	$preco 	= $_POST['preco'];
   
   	$sql = mysql_query("UPDATE tbl_produtos SET nome = '$nome', preco ='$preco' WHERE cod ='$cod'") or die(mysql_error());	
   
   	if($sql == 1){
   
   	print "
   
   	<META HTTP-EQUIV=REFRESH CONTENT='0; URL=inicio.php?btn=alterapreco'>
   
   	<script type=\"text/javascript\">
   
   	alert(\"Produto alterado com sucesso.\");
   
   	</script>";	
   
   	}
   
   }
   
   ?>
<style type="text/css">
   #bosta{
   padding:20px 0 0px 20px;
   font-size:13px;
   position: relative;
   }
</style>
<h1>Alterar preços / excluir produtos</h1>
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
<script type="text/javascript">
   $(document).ready(function() {
   
           $('#example').dataTable();
   
           $("#preco").maskMoney({decimal:".",thousands:","});
         });

   	 var win = null;
   
   	function NovaJanela(pagina,nome,w,h,scroll){
   
   	LeftPosition = (screen.width) ? (screen.width-w)/2 : 0;
   
   	TopPosition = (screen.height) ? (screen.height-h)/2 : 0;
   
   	settings = 'height='+h+',width='+w+',top='+TopPosition+',left='+LeftPosition+',scrollbars='+scroll+',resizable'
   
   	win = window.open(pagina,nome,settings);
   
   	}

   window.name = "main";
   
   function confirmardel(query){
   
   if (confirm ("Tem certeza que deseja excluir este produto?")){   
		window.location="deletaproduto.php" + query;  
		return true;
    }
    else  
   
		//window.location="?btn=alterapreco";
   
    return false;
   
    }
   
</script>	  
<div class="container">
<div class="bs-docs-section" >
<div class="row">
   <div class="col-lg-12">
      <div class="page-header">
         <h1 id="forms">Configurações de produtos</h1>
      </div>
   </div>
</div>
<div class="bs-docs-section">
<div class="row">
<div class="col-lg-12">
   <div class="bs-component">
      <legend>Produtos cadastrados</legend>
      <table class="well display dataTable table table-striped table-bordered" id="example">
         <thead>
            <tr>
               <th>DESCRIÇÃO</th>
               <th>PREÇO (R$)</th>
               <th>ALTERAR</th>
               <th>EXCLUIR</th>
            </tr>
         </thead>
         <tbody>
            <?php 
               @$pesquizar = $_POST['pesquizar'];
               
               $sql_select = mysql_query("SELECT * FROM tbl_produtos WHERE nome like'$pesquizar%' ORDER BY nome ASC");
               
               while($ver = mysql_fetch_array($sql_select)){

               ?>
            <tr>
               <td><?php echo $ver['nome'] ?>
               </td>
               <td><?php echo str_replace(",",".",$ver['preco']); ?></td>
               <td>
                  <a href="#" onclick="$('#<?php echo $ver['cod']?>').show('slow'); $('#<?php echo $ver['cod']?>').load('updatePreco.php?cod=<?php echo $ver['cod']?>');  return false">
                  <img src="imagens/file_edit.png" width="20" height="20" border="0" />
                  </a>
                  <div id="<?php echo $ver['cod']?>" style="display: none;" style="margin-left:7%; margin-right: 7%; width:100%; text-align:center ">
                     <img src="imagens/ajax-loader.gif" width="35" height="35" border="0" />
                  </div>
               </td>
               <td >
                  <a href="javascript:confirmardel('?cod=<?php echo $ver['cod']?>')"><img src="imagens/excluir.png" width="20" height="20" border="0" /></a>
               </td>
            </tr>
            <?php } ?>

      </table>
   </div>
</div>