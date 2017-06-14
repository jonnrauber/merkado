<!DOCTYPE html>
<html>

<head>
  <title>Restrito - Clientes</title>

  <!--Import materialize.css-->
  <link type="text/css" rel="stylesheet" href="/static/css/materialize.min.css"  media="screen,projection"/>
  <!--Let browser know website is optimized for mobile-->
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <link type="text/css" href="/static/css/restrito.css" rel="stylesheet">
</head>

<body>
  <div id="menu-restrito">
    <ul id="slide-out" class="side-nav fixed">
        <li><a href="/restrito">Visão Geral</a></li>
        <li><a href="/restrito/requisicoes_cadastro">Requisições de cadastro</a></li>
        <li><a href="/restrito/clientes">Gerenciar Clientes</a></li>
        <li><a href="/restrito/produtos">Produtos adicionados</a></li>
        <li><a href="/restrito/usuarios">Usuários do app</a></li>
      </ul>
  </div>

  <header>
    <nav class='black white-text'>
      <div class="nav-wrapper">
        <a href="/restrito" class="brand-logo center">Área restrita</a>
        <a href="#" data-activates="slide-out" class="button-collapse"><i class="material-icons">menu</i></a>
      </div>
    </nav>
  </header>

  <br/>

  <main>
    <div class='container'>
      <div class='row'>
        <div class='col s3'></div>
        <div class='col s3'>
          <a href="/restrito/clientes" class='btn-large waves-effect waves-light green'>
            <i class='material-icons left'>add</i>Novo Cliente
          </a>
        </div>
        <div class='col s4'>
          <a href="/restrito/clientes/lista" class='btn-large waves-effect waves-light blue'>
            Lista de Clientes
          </a>
        </div>
        <div class='col s2'></div>
      </div>
      <hr/>

      <div id="#form_cadastro">
        <form action='/restrito/clientes' method="post">
        <div class='card-panel'>
          <div class='row'> <!-- primeira linha -->
            <!-- cnpj -->
            <div class='input-field col s6'>
              <input placeholder="CNPJ" id="cnpj" name='cnpj' type="text" class="validate" data-mask="00.000.000/0000-00">
              <label for="cnpj">CNPJ</label>
            </div>
            <!-- inscrição estadual -->
            <div class='input-field col s6'>
              <input placeholder="IE" id="ie" name='ie' type="text" class="validate" data-mask="000.000.000">
              <label for="ie">Inscrição Estadual</label>
            </div>
          </div>
          <div class='row'> <!-- segunda linha -->
            <!-- razao social -->
            <div class="input-field col s6">
              <input placeholder="Razão Social" id="razao_social" name='razao_social' type="text" class="validate">
              <label for="razao_social">Razão Social</label>
            </div>
            <!-- nome fantasia -->
            <div class="input-field col s6">
              <input placeholder="Nome Fantasia" id="nome_fantasia" name='nome_fantasia' type="text" class="validate">
              <label for="nome_fantasia">Nome Fantasia</label>
            </div>
          </div>
          <div class='row'> <!-- terceira linha -->
            <!-- rua -->
            <div class="input-field col s5">
              <input placeholder="Rua/Avenida/Logradouro" id="rua" name='rua' type="text" class="validate">
              <label for="rua">Rua/Avenida/Logradouro</label>
            </div>
            <!-- numero -->
            <div class="input-field col s2">
              <input placeholder="Número" id="numero" name='numero' type="text" class="validate" data-mask="9999">
              <label for="numero">Número</label>
            </div>
            <!-- bairro -->
            <div class="input-field col s5">
              <input placeholder="Bairro" id="bairro" name='bairro' type="text" class="validate">
              <label for="bairro">Bairro</label>
            </div>
          </div>
          <div class='row'> <!-- quarta linha -->
            <!-- cidade -->
            <div class="input-field col s6">
              <input placeholder="Cidade" id="cidade" name='cidade' type="text" class="validate">
              <label for="cidade">Cidade</label>
            </div>
            <!-- uf -->
            <div class="input-field col s2">
              <input placeholder="UF" id="uf" name='uf' type="text" class="validate" data-mask="SS">
              <label for="uf">Estado/UF</label>
            </div>
            <!-- cep -->
            <div class="input-field col s4">
              <input placeholder="CEP" id="cep" name='cep' type="text" class="validate" data-mask="00000-000">
              <label for="cep">CEP</label>
            </div>
          </div>
          <div class='row'> <!-- quinta linha -->
            <!-- complemento -->
            <div class="input-field col s8">
              <input placeholder="Complemento" id="complemento" name='complemento' type="text" class="validate">
              <label for="cep">Complemento</label>
            </div>
            <!-- fone -->
            <div class="input-field col s4">
              <input placeholder="Telefone" id="fone" name='fone' type="text" class="validate" data-mask="(00) 0000-00000">
              <label for="fone">Telefone</label>
            </div>
          </div>
          <div class='row'> <!-- sexta linha -->
            <!-- email -->
            <div class="input-field col s6">
              <input placeholder="email@exemplo.com.br" id="email" name='email' type="email" class="validate">
              <label for="email">E-mail</label>
            </div>
            <!-- senha -->
            <div class="input-field col s6">
              <input placeholder="********" id="senha" name='senha' type="password" class="validate" min-length="8">
              <label for="senha">Senha</label>
            </div>
          </div>
          <!-- tipo (sétima linha) -->
          <div class='row'>
            <div class='col s3'>
              <label for="tipo">Tipo</label>
            </div>
            <div class='col s3'>
              <input name="tipo" type="radio" id="fornecedor" checked/>
              <label for="fornecedor">Fornecedor</label>
            </div>
            <div class='col s3'>
              <input name="tipo" type="radio" id="mercado" />
              <label for="mercado">Mercado</label></div>
            <div class='col s3'></div>
          </div>
          <div class='row'>
            <div class='col s6'>
              <button class="btn waves-effect waves-light green" type="submit" name="cadastrar">Cadastrar
                <i class="material-icons right">thumb_up</i>
              </button>
            </div>
          </div>
        </div>
        </form>
      </div>
    </div>
  </main>

  <footer>
  </footer>

  <!--Import jQuery before materialize.js-->
  <script type="text/javascript" src="/static/js/jquery-2.1.1.min.js"></script>
  <script type="text/javascript" src="/static/js/jquery.mask.js"></script>
  <script type="text/javascript" src="/static/js/materialize.min.js"></script>
  <script type="text/javascript" src="/static/js/restrito.js"></script>
</body>

</html>
