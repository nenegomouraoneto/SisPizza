<h1>&nbsp;&nbsp;Cadastro de categorías</h1>
<script type="text/javascript">
   function confirmardel(query){
		if (confirm ("Tem certeza que deseja excluir esta categoria?")){   
		window.location="" + query;  
		return true;
    }
    else  
    //window.location="?btn=categoria";
		return false;
    }
</script>
<div class="container">
   <div class="bs-docs-section" >
      <div class="row">
         <div class="col-lg-12">
            <div class="page-header">
               <h1 id="forms">Cadastro de Categorias</h1>
            </div>
         </div>
      </div>
	  
	  <div class="well col-lg-12">
	  
	   <form action="" method="post" class="form-horizontal" enctype="multipart/form-data">
            <legend>Nome da categoria</legend>
            <input name="nome" class="form-control" required type="text" placeholder="Digite o nome de uma categoria e clique em ADICIONAR ou tecle ENTER..." />
            <br/>
            <input name="cadastrar" type="submit" class="btn btn-warning" value="Adicionar" id="cadastrar" />
		</form>
	  </div>
	  
      <div class="col-lg-12">
         <div class="well bs-component">
            <div class="form-group">
              
            </div>
            <?php 
               if(isset($_POST['cadastrar'])){
					$nomes = $_POST['nome'];
					$sql = mysql_query("INSERT INTO categoria (nome)VALUES('$nomes')")or die(mysql_error());  
               
					if($sql == 1){
						print "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=inicio.php?btn=categoria'>";	
					}
               }
               ?>
            <table class="display dataTable table table-striped table-bordered" id="tbCliente">
				<legend>Categorias cadastradas</legend>
               <tr>
                  <th>DESCRIÇÃO DA CATEGORIA</th>
                  <th><center>EXCLUIR</center></th>
               </tr>
               <?php 
                  $sel = mysql_query("SELECT * FROM categoria ORDER BY id_categoria DESC");
                  $i = 0;
                  while($ver = mysql_fetch_array($sel)){
                  ?>
					   <tr>
						  <td><?php echo  strtoupper ($ver['nome']);?></td>
						  <td align="center">
						  <td align="center">
							 <a href="javascript:confirmardel('?btn=categoria&apagar=apagar&id_categoria=<?php echo $ver['id_categoria'] ?>')"><img src="imagens/excluir.png" width="17" height="18"  border="0"/></a>
						  </td>
					   </tr>
               <?php } ?>
            </table>
            <?php 
               
               If (!isset($apagar)){
					if(@$_GET['apagar'] == "apagar"){
						$id = $_GET['id_categoria'];
						$del = mysql_query("DELETE FROM categoria WHERE id_categoria = '$id'");
               		
						if($del == 1){
							print "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=inicio.php?btn=categoria'>";
						}
					}
               }
               ?>
         </div>
      </div>
   </div>
</div>