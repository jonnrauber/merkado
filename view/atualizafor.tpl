<!DOCTYPE html>
<html>

<head>
  <title>Dashboard</title>

  <script src="/static/js/w3.js"></script>

  <!--Import materialize.css-->
  <link type="text/css" rel="stylesheet" href="static/css/materialize.min.css"  media="screen,projection"/>
  <!--Let browser know website is optimized for mobile-->
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <link type="text/css" href="static/css/styledash.css" rel="stylesheet">
</head>

<body>
  <div w3-include-html="static/menu.html"></div>

  <main>
    <div class="container" id ="atualizacad">
    	<div id="content">
        <form action="#" method="post">
            <div class='row'>
              <h4>Atualização Cadastral</h4>
            </div>
            <div class='row'>
              <h5>Endereço</h5>
            </div>
            <div class='row'>
              <div class='col s10'>
                <label for="razao_social">Rua</label>
                <input class='validate' type='text' value='{{fornecedor[0]}}' id='rua' name='rua' required />
              </div>
              <div class='col s2'>
                <label for="numero">Número</label>
                <input class='validate' type='text' value='{{fornecedor[1]}}' id='numero' name='numero' required maxlength="30"/>
              </div>
              <div class='col s6'>
                <label for="bairro">Bairro</label>
                <input class='validate' type='text' value='{{fornecedor[2]}}' id='bairro' name='bairro' required maxlength="30"/>
              </div>
              <div class='col s6'>
                <label for="cidade">Cidade</label>
                <input class='validate' type='text' value='{{fornecedor[3]}}' id='cidade' name='cidade' required maxlength="30"/>
              </div>
              <div class='col s5'>
                <label for="cep">CEP</label>
                <input class='validate' type='text' value='{{fornecedor[5]}}' id='cep' name='cep' data-mask="00000-000" required />
              </div>
              <div class='col s2'>
                <label for="uf">UF</label>
                <input class='validate' type='text' value='{{fornecedor[4]}}' id='uf' name='uf' data-mask="SS" required/>
              </div>
              <div class='col s5'>
                <label for="complemento">Complemento</label>
                <input class='validate' type='text' value='{{fornecedor[6]}}' id='complemento' name='complemento' maxlength="30"/>
              </div>
            </div>
            <h5>Dados para contato</h5>
            <div class='row'>
              <div class='col s7'>
                <label for="email">E-mail</label>
                <input class='validate' type='email' value='{{fornecedor[7]}}' id='email' name='email' required maxlength="50"/>
              </div>
              <div class='col s5'>
                <label for='fone'>Telefone</label>
                <input class='validate' type='text' value='{{fornecedor[8]}}' id='fone' name='fone' data-mask="(00) 0000-00000" required/>
              </div>
            </div>
    			<input type='submit' class='btn waves-effect' value='Salvar'/>
        </form>
    	</div>
    </div>
  </main>

	<div id="modalatendimento" class="modal">
		<div w3-include-html="static/modalAtendimento.html"></div>
	</div>



  <!--Import jQuery before materialize.js-->
  <script type="text/javascript" src="static/js/jquery-2.1.1.min.js"></script>
  <script type="text/javascript" src="static/js/jquery.mask.js"></script>
  <script type="text/javascript" src="static/js/materialize.min.js"></script>
  <script type="text/javascript" src="static/js/script.js"></script>
  <script src="static/js/scriptdash.js"></script>
  <script>w3.includeHTML();</script>
</body>

</html>
