<!DOCTYPE html>
<html>

<head>
  <title>Restrito - Requisições</title>

  <!--Import materialize.css-->
  <link type="text/css" rel="stylesheet" href="/static/css/materialize.min.css"  media="screen,projection"/>
  <!--Let browser know website is optimized for mobile-->
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

</head>

<body>

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
        <div class='col s3'>
          <a href='/restrito/requisicoes_cadastro'>
            <div class="card-panel indigo lighten-4 center">
                <p class='white-text'>Requisições</p>
            </div>
          </a>
        </div>
        <div class='col s3'>
          <a href='/restrito/clientes'>
            <div class="card-panel indigo lighten-1 center">
                <p class='white-text'>Clientes</p>
            </div>
          </a>
        </div>
        <div class='col s3'>
          <a href='/restrito/produtos'>
            <div class="card-panel indigo darken-1 center">
                <p class='white-text'>Produtos</p>
            </div>
          </a>
        </div>
        <div class='col s3'>
          <a href='/restrito/usuarios'>
            <div class="card-panel indigo darken-4 center">
                <p class='white-text'>Usuários do App</p>
            </div>
          </a>
        </div>
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
