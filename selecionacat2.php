
<script type="text/javascript">

function MM_jumpMenu(targ,selObj,restore){ //v3.0
  eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
  if (restore) selObj.selectedIndex=0;
}
</script>
<div class="col-lg-12">
	<form  action="" method="post" enctype="multipart/form-data" style="margin-left:12px; margin-top:-7px;">
	  <select style=" width: 330px;" class="form-control " name="jumpMenu" id="jumpMenu" onChange="MM_jumpMenu('parent',this,0)">
	  <option value=""> Selecione a categoria de produtos</option>
	  <?php 
		include "config/conexao.php";
		$idGarcon = $_GET['idGarcon'];
		echo $_SESSION['login_session'];
		$salto = mysql_query("SELECT * FROM categoria ORDER BY nome ASC");
		
		while($aaa = mysql_fetch_array($salto)){
	  ?>
				<option value="inicio2.php?btn=vendermesa&id_mesa=<?php echo $numero ?>&id_categoria=<?php echo $aaa['id_categoria']; ?>&idGarcon=<?php echo $idGarcon ?>"><?php echo $aaa['nome'] ?></option>

			<?php }  ?>
	  </select>
	</form>
</div>