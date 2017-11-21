


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>.::Login no sistema::.</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">
    <link href="css/signin.css" rel="stylesheet">
    <script src="js/ie-emulation-modes-warning.js"></script>

  </head>

  
<style type="text/css">

.container{
	background-color: ##303040;
    color: #303040;/*white*/;
}
.bot{
	background-color: #303040;/*#32d0b3;*/
}
.bot:hover{
	background-color: black;/*#1da78d*/;
}
}
</style>
  
  
  
  <body>

    <div id="erro">
        <?php 
			$msg_erro = "";
            @$erro = $_GET['erro'];
               
            if($erro == "erro"){
				$msg_erro = "Os dados de acesso do usuário não conferem!";
			}		
		?>
    </div>
	
	<div class="container">

      <form class="form-signin" action="login.php" method="POST">
	  
		<img class=" img-responsive" src="imagens/logopng.png"  style="position:relative; width:570px; height:280px" />
	  
        <h3 class="form-signin-heading">&nbsp; &nbsp; &nbsp; Acesso ao Sistema</h3>
		
        <label for="inpuText" class="sr-only">Nome de usuário</label>
        <input name="login" type="Text" id="inputText" class="form-control" placeholder="Nome de usuário" required autofocus>
        <label for="inputPassword" class="sr-only">Senha</label>
        <input name="senha" type="password" id="inputPassword" class="form-control" placeholder="Senha" required>
        <button class="btn btn-lg btn-primary btn-block bot" type="submit">Entrar</button>
		<p  class="text-danger"><?php echo $msg_erro; ?></p>
      </form>

    </div> <!-- /container -->


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
