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
    <div class = "container">
      <div class="row">
    		<div class="input-field col s12">
    			<h4>Meus Produtos</h4>
    		</div>
    	</div>

  	  <form action='delaltprod' method='post'>
  		<div id="content">

  			<table class="table table-striped">
  				<thead>
  					<tr>
  						<th>SELECIONE</th>
  						<th>ID</th>
  						<th>NOME</th>
  						<th>MARCA</th>
  						<th>CATEGORIA</th>
  					</tr>
  				</thead>
  				%for i in produtos:
  					<tr>
  						<td>
  							<input name="selcad" type="radio" id="{{i[0]}}" value = "{{i[0]}}" />
  							<label for="{{i[0]}}"></label>
  						</td>
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
  	<div class="row">
  		<div class="input-field col s3">
  		</div>
  		<div class="input-field col s3">
  			<button type="submit" class='btn waves-effect red' name="env" value="Excluir" />
          <i class='material-icons left'>delete</i>Excluir
        </button>
  		</div>
  		<div class="input-field col s3">
  			<button type="submit" class='btn waves-effect green' name="env" value="Alterar"/>
          <i class='material-icons left'>edit</i>Alterar
        </button>
  		</div>
  	</div>

  	</form>
  </main>
	<div class="fixed-action-btn">
		<a class="btn-floating btn-large red" href="#modalcadprod">
			<i class="large material-icons green">add</i>
		</a>
	</div>

  <div id="modalatendimento" class="modal">
    <div w3-include-html="static/modalAtendimento.html"></div>
  </div>

  <div id="modalcadprod" class="modal modal-fixed-footer>
		<div class="modal-content">
			<form action='cadastroproduto' method='post' enctype="multipart/form-data">
				<div class="container">
					<h5>Cadastro de produtos</h5>
					<div class="row">
						<div class="input-field col s12">
							<input class="validate" type="text" name="nomeprod" id="nomeprod" required/>
							<label for="nomeprod">Nome</label>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s6">
							<input class="validate" type="text" name="marcaprod" id="marcaprod" required/>
							<label for="marcaprod">Marca</label>
						</div>
						<div class="input-field col s6">
							<select name="cateprod">
                <option value="" disable selected>Escolha uma categoria</option>
                %for i in categorias:
                  <option value="{{i[1]}}">{{i[1]}}</option>
                %end
              </select>
							<label>Categoria</label>
						</div>
					</div>
					<div class="row">
						<div class='col s12'>
								<div class="file-field input-field">
									<div class="btn">
										<span>Carregar Imagem</span>
										<input type="file" name = "imagem" id = "imagem">
									</div>
									<div class="file-path-wrapper">
										<input class="file-path validate" type="text">
									</div>
								</div>
							</div>
					</div>
				</div>

		<div class = "container">
			<div class="modal-footer">
				<button type="submit" class="modal-action modal-close right btn waves-effect waves-light">Salvar</button>
			</div>
		</div>
		</div>
		</form>
	</div>
  <!--Import jQuery before materialize.js-->
  <script>w3.includeHTML();</script>
  <script type="text/javascript" src="static/js/jquery-2.1.1.min.js"></script>
  <script type="text/javascript" src="static/js/materialize.min.js"></script>
  <script type="text/javascript" src="static/js/script.js"></script>
  <script src="static/js/scriptdash.js"></script>
</body>

</html>
