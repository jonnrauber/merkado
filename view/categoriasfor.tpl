<!DOCTYPE html>
<html>

<head>
  <title>Dashboard</title>

  <script src="https://www.w3schools.com/lib/w3.js"></script>
  <!--Import materialize.css-->
  <link type="text/css" rel="stylesheet" href="static/css/materialize.min.css"  media="screen,projection"/>
  <!--Let browser know website is optimized for mobile-->
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <link type="text/css" href="static/css/styledash.css" rel="stylesheet">
</head>

<body>

<div w3-include-html="static/menu.html"></div>

  <main>
    <h5 style="padding-left: 15px">Minhas Categorias</h5>
    <div class='container'>
      <div class="row">
        <form action="categoriasFornecedor" method="post">
          <div class="col s2"></div>
          <div class="input-field inline col s6">
            <input class="validate" type="text" name="nome_categoria" id="nome_categoria" required/>
            <label for="nome_categoria">Nova categoria</label>
          </div>
          <div class="input-field inline col s3">
            <button class="btn-floating green" type='submit'>
        			<i class="large material-icons">add</i>
        		</button>
          </div>
        </form>
      </div>
      <div class="row">
        <table class="table table-striped">
          <thead>
            <tr>
              <th width="10%">ID</th>
              <th width="70%">Nome</th>
              <th width="10%">Editar</th>
              <th width="10%">Excluir</th>
            </tr>
          </thead>
          %if len(categorias) == 0:
            <tr>
              <td colspan="4">Nenhuma categoria cadastrada.</td>
            </tr>
          %end
          %for i in categorias:
            <tr>
              %for j in range(0, len(i)):
                <td>
                  {{i[j]}}
                </td>
              %end
              <td><a href='/updatecat/{{i[0]}}'><i class='material-icons'>edit</i></td>
              <td><a href='/deletecat/{{i[0]}}'><i class='material-icons'>delete</i></a></td>
            </tr>
          %end
        </table>
      </div>
    </div>
  </main>

  <div id="modalatendimento" class="modal">
    <div w3-include-html="static/modalAtendimento.html"></div>
  </div>

  <!--Import jQuery before materialize.js-->
  <script>w3.includeHTML();</script>
  <script type="text/javascript" src="static/js/jquery-2.1.1.min.js"></script>
  <script type="text/javascript" src="static/js/materialize.min.js"></script>
  <script type="text/javascript" src="static/js/script.js"></script>
  <script src="static/js/scriptdash.js"></script>
</body>

</html>
