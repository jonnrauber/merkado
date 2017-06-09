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
		<li><a href="produtosFornecedor"><i class="material-icons">shop</i> Produtos</a></li>
		<li><a href="atualizacaoFornecedor"><i class="material-icons">mode_edit</i>Atualização Cadastral</a></li>
		<li><a href="relatoriosFornecedor"><i class="material-icons">trending_down</i>Relatórios</a></li>
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
	<div class="container" id ="atualizacad">
	<div id="content">
    <form action="#" method="post">
      <fieldset>
        <legend>Atualização Cadastral</legend>
        <fieldset>
          <legend>Endereço</legend>
          <div class='row'>
            <div class='col s9'>
              <label for="razao_social">Rua</label>
              <input class='validate' type='text' value='{{fornecedor[0]}}' id='rua' name='rua' required />
            </div>
            <div class='col s3'>
              <label for="numero">Número</label>
              <input class='validate' type='text' value='{{fornecedor[1]}}' id='numero' name='numero' required maxlength="30"/>
            </div>
            <div class='col s5'>
              <label for="bairro">Bairro</label>
              <input class='validate' type='text' value='{{fornecedor[2]}}' id='bairro' name='bairro' required maxlength="30"/>
            </div>
            <div class='col s5'>
              <label for="cidade">Cidade</label>
              <input class='validate' type='text' value='{{fornecedor[3]}}' id='cidade' name='cidade' required maxlength="30"/>
            </div>
            <div class='col s2'>
              <label for="uf">UF</label>
              <input class='validate' type='text' value='{{fornecedor[4]}}' id='uf' name='uf' required maxlength="2"/>
            </div>
            <div class='col s3'>
              <label for="cep">CEP</label>
              <input class='validate' type='text' value='{{fornecedor[5]}}' id='cep' name='cep' required maxlength="9"/>
            </div>
            <div class='col s5'>
              <label for="complemento">Complemento</label>
              <input class='validate' type='text' value='{{fornecedor[6]}}' id='complemento' name='complemento' maxlength="30"/>
            </div>
          </div>
        </fieldset>
        <hr />
        <fieldset>
          <legend>Dados para contato</legend>
          <div class='row'>
            <div class='col s7'>
              <label for="email">E-mail</label>
              <input class='validate' type='email' value='{{fornecedor[7]}}' id='email' name='email' required maxlength="50"/>
            </div>
            <div class='col s5'>
              <label for='fone'>Telefone</label>
              <input class='validate' type='text' value='{{fornecedor[8]}}' id='fone' name='fone' required maxlength="20"/>
            </div>
          </div>
        </fieldset>
			<input type='submit' class='btn waves-effect' value='Salvar'/>
      </fieldset>
    </form>
	</div>
	</div>
	
	  <div id="modalatendimento" class="modal">
		<div class="modal-content">
		<h4>Mande uma mensagem para o administrador</h4>
		<form action='atendimento/atualizacaoFornecedor' method='post'>
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

  <!--Import jQuery before materialize.js-->
  <script type="text/javascript" src="static/js/jquery-2.1.1.min.js"></script>
  <script type="text/javascript" src="static/js/materialize.min.js"></script>
  <script type="text/javascript" src="static/js/script.js"></script>
</body>

</html>
