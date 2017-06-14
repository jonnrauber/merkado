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
        <div class='col s4'>
          <a href="/restrito/clientes/listaProd" class='btn-large waves-effect waves-light blue'>
            Lista de Produtos
          </a>
        </div>
        <div class='col s2'></div>
      </div>
      <hr/>
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
