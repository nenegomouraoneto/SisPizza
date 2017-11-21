<h1>Gerenciar mesas</h1>
<link href="css/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.js"></script>
<link rel="stylesheet" type="text/css" href="css/demo_table.css"/>
<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
<script type="text/javascript">
   $(document).ready(function() {
   
   	      $('#mesas').dataTable();
   });
   function confirmardel(query){
   
		if(confirm ("Tem certeza que deseja excluir esta mesa?")){   
			window.location="" + query;  
			return true;
		}
		else{  
   		 //window.location="?btn=cadastromesa";
			return false;
		}
   }

</script>
<div class="container">
   <div class="bs-docs-section" >
      <div class="row">
         <div class="col-lg-12">
            <div class="page-header">
               <h1 id="forms">Ajuda do Sistema</h1>
            </div>
         </div>
      </div>
      <div class="row">
         <div class="col-lg-12">
           
		   
		   <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingOne">
      <h4 class="panel-title ">
        <a class="btn btn-primary btn-lg btn-block" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
          Configurações e informações do sistema
        </a>
      </h4>
    </div>
    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">
		
		<p> 
			A aplicação é totalmente responsiva, podendo ser adaptada e acessada de qualquer dispositivo, seja mobile ou desktop. Pode ser utilizada por pequenas e médias pizzarias e/ou
			lanchonetes. A ideia principal é de que haja integração e interação entre a administração, o garçom e a cozinha, e assim agilizando o atendimento de ambos e, consequentemente,
			aumentando o faturamento.
		</p>
		<p>
			<li>O ideal é que o garçom acesse o sistema por um dispositivo móvel(tablet ou smartphone), e assim faça seus pedidos na hora, em frente ao cliente, na mesa.</li>
			<li>A cozinha deve ter um monitor que exibirá os pedidos assim que forem feitos pelos garçons, para que depois de prontos o garçom saiba, também em tempo real.</li>
			<li>Todo esse fluxo pode ser observado pelos administradores do sistema, que tomará suas decisões.</li>
		</p>
		
      </div>
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingTwo">
      <h4 class="panel-title">
        <a class="collapsed btn btn-success btn-lg btn-block" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
          Relatórios do sistema
        </a>
      </h4>
    </div>
    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
      <div class="panel-body">
        <p> 
			<strong>Acompanhamento de pedidos: </strong> Exibe em tempo real os pedidos (preparados na cozinha ou não) que ainda não foram entregues na mesa do cliente.
					O garçom logado no sistema tem acesso somente ao seus próprios pedidos e tem a autonomia de excluí-los ou, após entregá-los ao cliente, marcá-los como entregue.
					É importante sempre observar a legenda, para não ocorrer equívocos. A página é recarregada automaticamente a cada 5 segundos.
		</p>
		<p> 
			<strong>Relatório Geral de Vendas: </strong> Exibe o que foi vendido num determinado período. É imprimível e acessível somente por administradores.
		</p>
		<p> 
			<strong>Relatório de vendas por garçom: </strong> Exibe o que foi vendido, bem como a comissão, num determinado período por um determinado atendente. Também é imprimível e acessível somente por administradores.
		</p>
		<p class="text-danger"> 
			<strong>Obs.: </strong> A porcentagem do garçom tem que estar ativada para que o relatório possa ser gerado.
		</p>
      </div>
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingThree">
      <h4 class="panel-title">
        <a class="collapsed collapsed btn btn-warning btn-lg btn-block" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
          Controle de mesas e níveis de acesso
        </a>
      </h4>
    </div>
    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
      <div class="panel-body">
        <p> 
			<strong>NÍVEL 0 - Administrador: </strong> O usuário tem acesso a todas as telas do sistema, bem como permissão total do mesmo sobre os outros usuários. Somente o administrador pode fechar uma conta.
		</p>
		<p> 
			<strong>NÍVEL 1 - Garçom: </strong> O garçom tem acesso a Mesas vazias ou abertas anteriomente por ele. Não é possível ver as mesas dos outros garçons. O garçom pode imprimir o cupom de uma mesa, porém
			        não pode fechá-la. Também é possível acompanhar os seus pedidos e marcá-los como entregue na mesa do cliente.
		</p>
		<p> 
			<strong>NÍVEL 3 - Cozinha: </strong> A cozinha somente tem acesso à tela de pedidos feitos pelos garçons. À medida que um prato é pronto,
					a cozinha pode marcá-los, atualizando a tela de acompanhamento de pedidos do garçom, que fica sabendo o status do prato.
		</p>
      </div>
    </div>
  </div>
   <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingFor">
      <h4 class="panel-title">
        <a class="collapsed collapsed btn btn-default btn-lg btn-block" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFor" aria-expanded="false" aria-controls="collapseThree">
          Suporte e mais informações
        </a>
      </h4>
    </div>
    <div id="collapseFor" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
      <div class="panel-body">
       <p> 
			<strong>Informações de desenvolvimento: </strong> O sistema foi desenvolvido utilizando banco de dados <b>MYSQL</b>, linguagem <b>PHP</b> no servirdor e, no front-end,
					o Framework <b>Bootstrap.</b>
		</p>
		<p> 
			<strong>Desenvolvido por: </strong> ConcepTI - Soluções em Tecnologia da Informação
		</p>
		<p> 
			<strong>Desenvolvedor responsável: </strong> Erasto A. Lopes
		</p>
		<p> 
			<strong>Contato: </strong> 85 98535-5305(Oi) / 85 99860-1229(Tim) / solucoesconcepti@gmail.com
		</p>
      </div>
    </div>
  </div>
  
</div>
		   
		   
		   
		   
		   
		   
		   
		   
		   
		   
         </div>
      </div>
   </div>
   
</div>