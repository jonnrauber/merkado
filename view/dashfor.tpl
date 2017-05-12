<!DOCTYPE html>
<html>

<head>
  <title>Dashboard</title>
  <meta charset=”UTF-8”>

  <!--Import Google Icon Font-->
  <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <!--Import materialize.css-->
  <link type="text/css" rel="stylesheet" href="static/css/materialize.min.css"  media="screen,projection"/>
  <!--Let browser know website is optimized for mobile-->
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

  <link type="text/css" href="static/css/style.css" rel="stylesheet">

</head>

<body>
	<div class="row">
		<div class="col s3"></div>
		<div class="col s5" id = "logomerkado">MerKado</a></div>
		<div class="col s3">
				<a class="black-text text-lighten-4 right" id ="cab" href="#!">Sair&nbsp &nbsp</a>
				<a class="black-text text-lighten-4 right" id ="cab" href="#!">Notificaoes&nbsp &nbsp</a>
				<a class="black-text text-lighten-4 right" id ="cab" href="#!">Mensagens&nbsp &nbsp</a>
		</div>
	</div>

	<ul id="slide-out" class="side-nav fixed">
		<li><div class="userView">
			<div class="background">
			</div>
			<a href="#!user"><img class="circle" src="static/img/usu.jpg"></a>
			<a href="#!name"><span class="black-text name">Fornecedor</span></a>
		</div></li>
		<li><a href="dashfor.tpl"><i class="material-icons">perm_identity</i>Inicio</a></li>
		<li><a href="#!"><i class="material-icons">shop</i> Produtos</a></li>
		<li><a href="#!"><i class="material-icons">mode_edit</i>Atualizacao cadastral</a></li>
		<li><a href="#!"><i class="material-icons">trending_down</i>Relatrios</a></li>
		<li><a href="#modalatendimento"><i class="material-icons">question_answer</i>Atendimento</a></li>

    </ul>
    <a href="#" data-activates="slide-out" class="button-collapse"><i class="material-icons">menu</i></a>

    <div class="row">
		<div class="col s3"></div>
		<div class="col s8" id = "conta">Informacoes da conta</div>
	</div>
	
	  <div id="modalatendimento" class="modal">
		<div class="modal-content">
			<h4>Mande uma mensagem para o administrador</h4>
		</div>
		<form action='register' method='post'>
		<div class="container">
		<div class="row">
			<div class="input-field col s6">
			  <input class="validate" type="email" name="razaoSocial" id="razaoSocial" />
			  <label for="razaoSocial">Digite seu email</label>
			</div>
		<div class="row">
			<div class="input-field col s12">
				<textarea id="msg" class="materialize-textarea"></textarea>
				<label for="msg">Mensagem</label>
			</div>
		</div>
		</form>
		</form>
		<div class="modal-footer">
			<a href="#!" class="modal-action modal-close waves-effect waves-green btn">Enviar</a>
		</div>
	</div>

  <!--Import jQuery before materialize.js-->
  <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
  <script type="text/javascript" src="static/js/materialize.min.js"></script>
  <script type="text/javascript" src="static/js/script.js"></script>
</body>

</html>
