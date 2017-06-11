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
	<!-- <a href="/" >Sair</a>
	<a href="#!">Notificações</a>
	<a href="#!">Mensagens</a>
  
  <!--Import jQuery before materialize.js-->
  <script type="text/javascript" src="static/js/jquery-2.1.1.min.js"></script>
  <script type="text/javascript" src="static/js/materialize.min.js"></script>
  <script type="text/javascript" src="static/js/script.js"></script>
</body>

</html>
