<!DOCTYPE html>
<html>

<head>
  <title>Dashboard</title>

  <!--Import materialize.css-->
  <link type="text/css" rel="stylesheet" href="static/css/materialize.min.css"  media="screen,projection"/>
  <!--Let browser know website is optimized for mobile-->
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

  <link type="text/css" href="static/css/style.css" rel="stylesheet">
  <link type="text/css" href="static/css/styledashboard.css" rel="stylesheet">
</head>

<body>


	<ul id="slide-out" class="side-nav fixed">
		<li><div class="userView">
			<div class="background">
			</div>
			<a href="#!user"><img class="circle" src="static/img/usu.jpg"></a>
			<a href="#!name"><span class="black-text name">Fornecedor</span></a>
		</div></li>
    <li><a href="dashboardFornecedor"><i class="material-icons">perm_identity</i>Início</a></li>
		<li><a href="produtosFornecedor"><i class="material-icons">shop</i> Produtos</a></li>
		<li><a href="atualizacaoFornecedor"><i class="material-icons">mode_edit</i>Atualização Cadastral</a></li>
		<li><a href="relatoriosFornecedor"><i class="material-icons">trending_down</i>Relatórios</a></li>
		<li><a href="#modalatendimento"><i class="material-icons">question_answer</i>Atendimento</a></li>
	</ul>
	<a href="#" data-activates="slide-out" class="button-collapse left hide-on-large-only"><i class="material-icons">menu</i></a>

	<a class="left" id="logomerkado">MerKado</a>
<!--

	<a href="#!">Notificações</a>
	<a href="#!">Mensagens</a>
	<a href="/" >Sair</a>

-->
	<div class="row">
		<div class="input-field col s12">
			<h5>Meus Produtos</h5>
		</div>
	</div>
	
	<form action='delprod' method='post'>
	<div class = "container">
		<div id="content">

			<table class="table table-striped">
				<thead>
					<tr>
						<th>SELECIONE</th>	
						<th>ID</th>
						<th>NOME</th>
						<th>MARCA</th>
						<th>CATEGORIA</th>
					</tr>
				</thead>
				%for i in produtos:
					<tr>
						<td>
							<input name="selcad" type="radio" id="{{i[0]}}" value = "{{i[0]}}" />
							<label for="{{i[0]}}"></label>
						</td>
						%for j in range(0, len(i)):
							<td>
								{{i[j]}}
							</td>
						%end
					</tr>
				%end


			</table>
		</div>
	</div>
	<div class="row">
		<div class="input-field col s3">	
		</div>
		<div class="input-field col s3">	
			<button class="btn waves-effect waves-light" type="submit" name="action">Excluir</button>
		</div>
		<div class="input-field col s3">	
			<button class="btn waves-effect waves-light" type="submit" name="action">Alterar</button>
		</div>
	</div>

	</form>
	<div class="fixed-action-btn">
		<a class="btn-floating btn-large red" href="#modalcadprod">
			<i class="large material-icons">add</i>
		</a>
	</div>

	  <div id="modalatendimento" class="modal">
		<div class="modal-content">
		<h4>Mande uma mensagem para o administrador</h4>
		<form action='atendimento' method='post'>
		<div class="container">
		<div class="row">
			<div class="input-field col s6">
			  <input class="validate" type="email" name="email" id="email" required />
			  <label for="email">Digite seu email</label>
			</div>
		</div>
		<div class="row">
			<div class="input-field col s12">
				<textarea id="msg" name = "msg" class="materialize-textarea" required></textarea>
				<label for="msg">Mensagem</label>
			</div>
		</div>
		</div>
		</div>
		<div class = "container">
			<div class="modal-footer">
				<button type="submit" class="right valign-wrapper btn waves-effect waves-light">Enviar</button>
			</div>
		</div>
		</form>
	</div>

	<div id="modalcadprod" class="modal">
		<div class="modal-content">
			<h4>Cadastro de produtos</h4>
			<form action='cadastroproduto' method='post'>
				<div class="container">
					<div class="row">
						<div class="input-field col s12">
							<input class="validate" type="text" name="nomeprod" id="nomeprod" />
							<label for="nomeprod">Nome</label>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s6">
							<input class="validate" type="text" name="marcaprod" id="marcaprod" />
							<label for="marcaprod">Marca</label>
						</div>
						<div class="input-field col s6">
							<input class="validate" type="text" name="cateprod" id="cateprod" />
							<label for="cateprod">Categoria</label>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s2">
							Imagem
						</div>
						<div class="input-field col s6">
							<input class="validate" type="file" name="imagem" id="imagem" />
						</div>
					</div>
				</div>
		</div>
		<div class = "container">
			<div class="modal-footer">
				<button type="submit" class="modal-action modal-close right btn waves-effect waves-light">Entre</button>
			</div>
		</div>
		
		</form>
	</div>
  <!--Import jQuery before materialize.js-->
  <script type="text/javascript" src="static/js/jquery-2.1.1.min.js"></script>
  <script type="text/javascript" src="static/js/materialize.min.js"></script>
  <script type="text/javascript" src="static/js/script.js"></script>
</body>

</html>
