<!DOCTYPE html>
<html>

<head>
  <title>Dashboard</title>

  <!--Import materialize.css-->
  <link type="text/css" rel="stylesheet" href="static/css/materialize.min.css"  media="screen,projection"/>
  <!--Let browser know website is optimized for mobile-->
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

  <link type="text/css" href="static/css/style.css" rel="stylesheet">
</head>

<body>
  <div class='container'>
    <header>
      <a href="/" class="left" id="logomerkado"><h3>MerKado</h3></a>
    </header>
    <main>
      <div class='row' id="opcoes-restrito">
        <div class='col s12'>
          <ul>
            <li>
              <a href="#" value="Requisições de cadastro" id="get_req" onclick="displayReq()">
                Ver requisições de cadastro
              </a>
            </li>
            <li>
              <a href="#" value="Clientes cadastrados" id="get_cli" onclick="displayClientes()">
                Ver clientes cadastrados
              </a>
            </li>
          </ul>
        </div>
      </div>
      <hr />
      <div class='row' id="painel-results">
        <div class='col s12' id='tabela-req' style="display: none">
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

        <div class='col s12' id='tabela-cli' style="display: none">
          <table class='striped'>
            <thead>
              <th>CNPJ</th>
              <th>Insc. Estadual</th>
              <th>Razão Social</th>
              <th>Nome Fantasia</th>
              <th>E-mail</th>
              <th>Telefone</th>
              <th>+ detalhes</th>
            </thead>
            %for i in clientes:
              <tr>
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
    </main>
    <footer>
    </footer>
  </div>

  <!--Import jQuery before materialize.js-->
  <script type="text/javascript" src="static/js/jquery-2.1.1.min.js"></script>
  <script type="text/javascript" src="static/js/materialize.min.js"></script>
  <script type="text/javascript" src="static/js/script.js"></script>
</body>

</html>
