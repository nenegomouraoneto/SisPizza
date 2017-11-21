<h1>configurações</h1>
<div id="boxcadProdutos">
<div id="formconfig">

<?php 
	 if(isset($_FILES['fileUpload'])){

		$ext = strtolower(substr($_FILES['fileUpload']['name'],-4)); //Pegando extensão do arquivo
		$new_name = "logo" . $ext; //Definindo um novo nome para o arquivo
		$dir = 'imagens/'; //Diretório 'imagens'
		move_uploaded_file($_FILES['fileUpload']['tmp_name'], $dir.$new_name); //Fazer upload do arquivo
		
		$insereimg = mysql_query("UPDATE config SET logo = '$new_name'") or die (mysql_error());
		if($insereimg == 1){
			print "
				<META HTTP-EQUIV=REFRESH CONTENT='0; URL=inicio.php?btn=config'>
				<script type=\"text/javascript\"> alert(\"Alterado com sucesso.\"); </script>";
		}
		
   }
?>


   <?php
      $sql = mysql_query("SELECT * FROM config");
      $ver = mysql_fetch_array($sql);
      
      $s = mysql_query("SELECT * FROM garcon WHERE idGarcon='1'");
      $usu = mysql_fetch_array($s);
      
      ?>
   <div class="container">
      <div class="bs-docs-section" >
         <div class="row">
            <div class="col-lg-12">
               <div class="page-header">
                  <h1 id="forms">Configurações</h1>
               </div>
            </div>
         </div>
         <div class="row">
            <div class="col-lg-6">
               <div class="well bs-component">
                  <form action="" method="post" class="form-horizontal" enctype="multipart/form-data">
                     <fieldset>
                        <legend>Dados da empresa</legend>
                        <div class="form-group">
                           <label for="inputEmail" class="col-lg-2 control-label">Nome:</label>
                           <div class="col-lg-10">
                              <input name="empresa" class="form-control"  required type="text"  value="<?php echo $ver["empresa"]; ?>">
                           </div>
                        </div>
                        <div class="form-group">
                           <label for="inputPassword" class="col-lg-2 control-label">Telefone:</label>
                           <div class="col-lg-10">				  
                              <input class="form-control" name="telefone" type="text" required value="<?php echo $ver["telefone"]; ?>">
                           </div>
                        </div>
                        <input name="gravar"  class="btn btn-success" type="submit" value="Salvar modificações">
                     </fieldset>
                  </form>
               </div>
            </div>
            <div class="col-lg-6">
               <div class="well bs-component">
                  <form action="" class="form-horizontal" method="post" enctype="multipart/form-data">
                     <fieldset>
                        <legend>Taxas</legend>
                        <div class="form-group">
                           <label for="inputEmail" class="col-lg-3 control-label">% do Garçon</label>
                           <div class="col-lg-8">
                              <input name="pgarcon" required class="form-control" type="text" value="<?php echo $ver['pgarcon'] ?>" maxlength="2" />
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="col-lg-8">
                              <label for="inputEmail" class="col-lg-4 control-label">Ativo</label>
                              Sim<input name="ativo" type="radio" value="1" <?php if($ver['ativo'] == 1){ echo 'checked="checked"';} ?>  /> 
                              Não <input name="ativo" type="radio" value="0" <?php if($ver['ativo'] == 0){ echo 'checked="checked"';} ?>/>
                              <br/><br/>
                              <input name="ok" class="btn btn-info" type="submit" value="Salvar modificações"/>
                     </fieldset>
                  </form>
                  </div>
                  </div>
               </div>
            </div>
            <div class="col-lg-6">
               <div class="well bs-component">
                  <form class="form-horizontal" action="" method="post" enctype="multipart/form-data">
                     <fieldset>
                        <legend>Usuário administrador</legend>
                        <div class="form-group">
                           <label for="inputEmail" class="col-lg-2 control-label">Nome:</label>
                           <div class="col-lg-10">
                              <input class="form-control" required name="nome" type="text" id="nome" value="<?php echo $usu['nomeGarcon'] ?>" />
                           </div>
                        </div>
                        <div class="form-group">
                           <label for="inputEmail" class="col-lg-2 control-label">Login:</label>
                           <div class="col-lg-10">
                              <input class="form-control" required name="login" type="text" id="login" value="<?php echo $usu['login'] ?>" />
                           </div>
                        </div>
                        <div class="form-group">
                           <label for="inputEmail" class="col-lg-2 control-label">Senha:</label>
                           <div class="col-lg-10">
                              <input class="form-control" required name="senha" type="text" id="senha" value="<?php echo $usu['senha'] ?>" />
                           </div>
                        </div>
                        <input class="btn btn-warning" name="alterar" type="submit" value="Salvar modificações" id="alterar" class="button" />
                     </fieldset>
                  </form>
               </div>
            </div>
			<div class="col-lg-6">
               <div class="well bs-component">
                  <form class="form-horizontal" action="" method="post" enctype="multipart/form-data">
                     <fieldset>
                        <legend>Logo da empresa</legend>
                        <div class="form-group">
                           <label for="inputEmail" class="col-lg-2 control-label">Arquivo:</label>
                           <div class="col-lg-10">
                              <input class="form-control" required name="fileUpload" type="file" id="fileUpload"  />
                           </div>
                        </div>
                        <input class="btn btn-warning" name="alterar" type="submit" value="Salvar" id="alterar" class="button" />
                     </fieldset>
                  </form>
               </div>
            </div>
         </div>
      </div>
      <?php 
         if(isset($_POST['gravar'])){
         	
         	$empresa = $_POST['empresa'];
         	$telefone = $_POST['telefone'];
         	
         $up = mysql_query("UPDATE config SET empresa='$empresa', telefone='$telefone'");
         
         	if($up == 1){
         print "
         <META HTTP-EQUIV=REFRESH CONTENT='0; URL=inicio.php?btn=config'>
         <script type=\"text/javascript\">
         alert(\"Alterado com sucesso.\");
         </script>";	
         }
         
         }
         if(isset($_POST['ok'])){
         	$pgarcon = $_POST['pgarcon'];
         	$ativo = $_POST['ativo'];
         	
         $up = mysql_query("UPDATE config SET pgarcon='$pgarcon', ativo='$ativo'");
         
         	if($up == 1){
         print "
         <META HTTP-EQUIV=REFRESH CONTENT='0; URL=inicio.php?btn=config'>
         <script type=\"text/javascript\">
         alert(\"Alterado com sucesso.\");
         </script>";	
         }
         
         }
         if(isset($_POST['alterar'])){
         	$nome = $_POST['nome'];
         	$login2 = $_POST['login'];
         	$senha2 = $_POST['senha'];
         	
         $up = mysql_query("UPDATE garcon SET nomeGarcon='$nome', login='$login2', senha='$senha2' WHERE idGarcon='1'") or die(mysql_error());
         
         	if($up == 1){
         print "
         <META HTTP-EQUIV=REFRESH CONTENT='0; URL=inicio.php?btn=config'>
         <script type=\"text/javascript\">
         alert(\"Alterado com sucesso.\");
         </script>";	
         }
         
         }
         ?>
   </div>
</div>