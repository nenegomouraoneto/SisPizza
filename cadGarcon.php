<script type="text/javascript">
   var win = null;
   function NovaJanela(pagina,nome,w,h,scroll){
   LeftPosition = (screen.width) ? (screen.width-w)/2 : 0;
   TopPosition = (screen.height) ? (screen.height-h)/2 : 0;
   settings = 'height='+h+',width='+w+',top='+TopPosition+',left='+LeftPosition+',scrollbars='+scroll+',resizable'
   win = window.open(pagina,nome,settings);
   }
   
   window.name = "main";
   
   function confirmardel(query){
   if (confirm ("Tem certeza que deseja excluir este garçom?")){   
		window.location="" + query;  
		return true;
   }
   else 
	 
   //window.location="?btn=cadGarcon";
		return false;
   }
   
   
</script>
<div class="container" style="margin-top: 5%;">
<div class="bs-docs-section" >
   <div class="row">
      <div class="col-lg-12">
         <div class="page-header">
            <h1 id="forms">Cadastro de Usuários</h1>
         </div>
      </div>
   </div>
   <?php 
      if(isset($_POST['cadastrar'])){
		
		$dbd = 0;  
      	$nome = $_POST['nomeGarcon'];
      	$login = $_POST['login'];
      	$senha = $_POST['senha'];
      	
      	$sql = mysql_query("SELECT * FROM garcon WHERE login='$login'");
      	$conf = mysql_num_rows($sql);
      	if($conf == 1){
      		/*print"<META HTTP-EQUIV=REFRESH CONTENT='0; URL=inicio.php?btn=cadGarcon'>
			<script type=\"text/javascript\">
			alert(\"ERRO!! Já existe um usuário cadastrado com este login.!\");
			</script>";	*/
			$msg_retorno = "<div class='alert alert-danger' role='alert'>Ops! Já existe um usuário cadastrado com este login!</div>";
      	}else{
			$nv	= $_POST['nv'];
			$bd = mysql_query("INSERT INTO garcon (nomeGarcon,login,senha,nv)VALUES('$nome','$login','$senha','$nv')")or die(mysql_error());	
			if($dbd == 1){
				//print "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=inicio.php?btn=cadGarcon'>";	
				$msg_retorno = "<div class='alert alert-success' role='alert'>Usuário cadastrado com sucesso!</div>";
			}
		}
      }
      ?>
   <div class="col-lg-12">
   
   
    <table class="display dataTable table table-striped table-bordered" id="tbCliente">
		<legend>Usuários Cadastrados</legend>
		<?php echo @$msg_retorno2 ?>
         <tr>
            <td><strong>CÓDIGO</strong></td>
            <td><strong>NOME</strong></td>
			<td><strong>USUÁRIO</strong></td>
			<td><strong><center>NÍVEL</center></strong></td>
            <td><strong><center>AÇÃO</center></strong></td>
         </tr>
         <?php 
            $ver = mysql_query("SELECT * FROM garcon WHERE idGarcon != '1' ORDER BY idGarcon DESC");
             $ver2 = mysql_query("SELECT * FROM garcon WHERE idGarcon != '2' ORDER BY idGarcon DESC");
             while($r2 = mysql_fetch_array($ver2))
             while($r = mysql_fetch_array($ver)){
            
            ?>
         <tr>
            <td><?php echo $r['idGarcon'] ?></td>
            <td> <?php 
               if ($ver == ""){
               	echo $r2['login'];}
               else{
				echo $r['nomeGarcon'];}    
           ?></td>
		   <td><?php echo $r['login'] ?></td>
		   <td align="center"><?php echo $r['nv'] ?></td>
		   
            <td align="center" >
               <a href="updateGarcon.php?cod=<?php echo $r['idGarcon'] ?>" onclick="NovaJanela(this.href,'nomeJanela','400','260','yes');return false">
               <img src="imagens/file_edit.png" width="20" height="20" border="0" />
               </a>
               <a href="javascript:confirmardel('inicio.php?btn=cadGarcon&del=del&idGarcon=<?php echo $r['idGarcon'] ?>')">
               <img src="imagens/excluir.png" width="20" height="20" border="0">
               </a>
            </td>
         </tr>
         <?php } ?>
      </table>
	  <p><strong>0</strong>: Administrador  <strong>1</strong>: Garçom <strong>2</strong>: Cozinha</p>
   
	<!-- inicio do form de cadastro-->
	<br/>
	<legend>Novo Cadastro</legend>
		<?php echo @$msg_retorno; ?>
      <div class="well bs-component">
	  
         <form action="" id="form1" class="form-horizontal " method="post" enctype="multipart/form-data">
            <fieldset>
               <div class="form-group">
                  <label for="inputEmail" class="col-lg-4 control-label">Nome:</label>
                  <div class="col-lg-8">
                     <input class="form-control" name="nomeGarcon" type="text" id="nome">
                  </div>
               </div>
               <div class="form-group">
                  <label for="inputEmail" class="col-lg-4 control-label">Login:</label>
                  <div class="col-lg-8">
                     <input class="form-control" name="login" type="text" />
                  </div>
               </div>
               <div class="form-group">
                  <label for="inputEmail" class="col-lg-4 control-label">Senha:</label>
                  <div class="col-lg-8">
                     <input class="form-control" name="senha" type="password" />
                  </div>
               </div>
               <div class="form-group">
                  <label for="inputEmail" class="col-lg-4 control-label">Nível de acesso:</label>
                  <div class="col-lg-8">
                     Administrador:<input name="nv" type="radio" value="0" /> Garçom:<input  checked name="nv" type="radio" value="1" /> Cozinha:<input name="nv" type="radio" value="2" />
                  </div>
               </div>
               <div class="form-group">
                  <div class="col-lg-8">
                     <input type="submit" name="cadastrar" class="btn btn-warning" value="Cadastrar">
                  </div>
               </div>
            </fieldset>
         </form>
      </div>
      <hr/>
	  
      <?php 
         if(@$_GET['del'] == "del"){
          $id = $_GET['idGarcon'];
          $del = mysql_query("DELETE FROM garcon WHERE idGarcon='$id'")or die(mysql_error());
          if($del == 1){
			  $msg_retorno2 = "<div class='alert alert-success' role='alert'>Usuário excluído com sucesso!</div>";
			print "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=inicio.php?btn=cadGarcon'>";	
         }
         }
         
         ?>
   </div>
</div>