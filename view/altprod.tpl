<!DOCTYPE html>
<html>

<head>
  <title>Alterar produto</title>

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
    <div class="container" id ="alteraprod">
    	<div id="content">
        <form action='atualizacaoprod' method="post" enctype="multipart/form-data">
            <h4>Alteração de produto</h4>
            <div class="col s1">&nbsp;</div>
              <div class='row'>
                <div class='col s4'>
                  <label for="nomeprod">Nome</label>
                  <input class='validate' type='text' value='{{produto[1]}}' id='nomeprod' name='nomeprod' required />
                </div>
                <div class='col s4'>
                  <label for="marcaprod">Marca</label>
                  <input class='validate' type='text' value='{{produto[2]}}' id='marcaprod' name='marcaprod' required />
                </div>
                <div class='input-field col s4'>
                  <select name="cateprod">
                    <option value="" disable>Escolha uma categoria</option>
                    %for i in categorias:
                      %if i[1] == produto[3]:
                        <option value="{{i[1]}}" selected>{{i[1]}}</option>
                      %else:
                        <option value="{{i[1]}}">{{i[1]}}</option>
                      %end
                    %end
                  </select>
    							<label>Categoria</label>
                </div>
            </div>
			<div class='row'>
				<div class='col s2'>
					<div class = "imagemprod">
						<img class="responsive-img" src="/static/img/{{produto[4]}}">
					</div>
				</div>
				<div class='col s8'>
					<div class="file-field input-field">
						<div class="btn">
						     <span>Carregar Imagem</span>
						     <input type="file" id = "imagem" name = "imagem">
					    </div>
					    <div class="file-path-wrapper">
							<input class="file-path validate" type="text" id = "imagem" name = "imagem">
						</div>
					</div>
				</div>
          </div>
			<div class='row'>
				<div class='col s5'></div>
				<div class='col s2'>
					<input type='submit' class='btn waves-effect' value='Salvar'/>
				</div>
			</div>
        </form>
    	</div>
    </div>
  </main>

	<div id="modalatendimento" class="modal">
		<div w3-include-html="static/modalAtendimento.html"></div>
	</div>



  <!--Import jQuery before materialize.js-->
  <script type="text/javascript" src="static/js/jquery-2.1.1.min.js"></script>
  <script type="text/javascript" src="static/js/materialize.min.js"></script>
  <script type="text/javascript" src="static/js/script.js"></script>
  <script src="static/js/scriptdash.js"></script>
  <script>w3.includeHTML();</script>
</body>

</html>
