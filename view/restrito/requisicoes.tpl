<!DOCTYPE html>
<html>

<head>
  <title>Restrito - Requisições</title>

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
        <h5>Requisições de cadastro</h5>
      </div>
      <div class='row'>
        <div class='col s12' id='tabela-req'>
          <table class='striped'>
            <thead>
              <th>Razão Social</th>
              <th>CNPJ</th>
              <th>Telefone</th>
              <th>E-mail</th>
              <th>Tipo</th>
              <th>Mensagem</th>
            </thead>
            %for i in requisicoes:
              <tr>
                %for j in range(1, len(i)):
                  <td>{{i[j]}}</td>
                %end
              </tr>
            %end
          </table>
        </div>
      </div>
    </div>
  </main>
