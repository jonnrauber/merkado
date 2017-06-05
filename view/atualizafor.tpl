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

  <div id="menu-lateral"></div>

  <ul id="slide-out" class="side-nav fixed">
    <li><div class="userView">
      <div class="background">
      </div>
      <a href="#!user"><img class="circle" src="static/img/usu.jpg"></a>
      <a href="#!name"><span class="black-text name">Fornecedor</span></a>
    </div></li>
    <li><a href="dashboardFornecedor"><i class="material-icons">perm_identity</i>Início</a></li>
    <li><a href="#!"><i class="material-icons">shop</i> Produtos</a></li>
    <li><a href="#!"><i class="material-icons">mode_edit</i>Atualização Cadastral</a></li>
    <li><a href="#!"><i class="material-icons">trending_down</i>Relatórios</a></li>
    <li><a href="#modalatendimento"><i class="material-icons">question_answer</i>Atendimento</a></li>
  </ul>
  <a href="#" data-activates="slide-out" class="button-collapse left hide-on-large-only"><i class="material-icons">menu</i></a>


	<div class='row'>
    <a class="left" id="logomerkado">MerKado</a>
  </div>
<!--

	<a href="#!">Notificações</a>
	<a href="#!">Mensagens</a>
	<a href="/" >Sair</a>

-->

	<div id="content">
    <form action="#" method="post">
      <fieldset>
        <legend>Atualização Cadastral</legend>
        <fieldset>
          <legend>Endereço</legend>
          <div class='row'>
            <div class='col s9'>
              <label for="razao_social">Rua</label>
              <input class='validate' type='text' value='' id='rua' name='rua' />
            </div>
            <div class='col s3'>
              <label for="numero">Número</label>
              <input class='validate' type='text' value='' id='numero' name='numero' />
            </div>
            <div class='col s5'>
              <label for="bairro">Bairro</label>
              <input class='validate' type='text' value='' id='bairro' name='bairro' />
            </div>
            <div class='col s5'>
              <label for="cidade">Cidade</label>
              <input class='validate' type='text' value='' id='cidade' name='cidade' />
            </div>
            <div class='col s2'>
              <label for="uf">UF</label>
              <input class='validate' type='text' value='' id='uf' name='uf' />
            </div>
            <div class='col s3'>
              <label for="cep">CEP</label>
              <input class='validate' type='text' value='' id='cep' name='cep' />
            </div>
            <div class='col s5'>
              <label for="complemento">Complemento</label>
              <input class='validate' type='text' value='' id='complemento' name='complemento' />
            </div>
          </div>
        </fieldset>
        <hr />
        <fieldset>
          <legend>Dados para contato</legend>
          <div class='row'>
            <div class='col s10'>
              <label for="email">E-mail</label>
              <input class='validate' type='text' value='' id='email' name='email' />
            </div>
            <div class='col s6'>
              <label for='fone'>Telefone</label>
              <input class='validate' type='text' value='' id='fone' name='fone' />
            </div>
          </div>
        </fieldset>
        <input type='submit' class='btn waves-effect' value='Salvar'/>
      </fieldset>
    </form>
	</div>

	  <div id="modalatendimento" class="modal">
		<div class="modal-content">
			<h4>Mande uma mensagem para o administrador</h4>
		</div>
		<form action='register' method='post'>
		<div class="container">
		<div class="row">
			<div class="input-field col s6" id = "emaill">
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
  <script type="text/javascript" src="static/js/jquery-2.1.1.min.js"></script>
  <script type="text/javascript" src="static/js/materialize.min.js"></script>
  <script type="text/javascript" src="static/js/script.js"></script>
</body>

</html>
