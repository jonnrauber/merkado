<!DOCTYPE html>
<html>

<head>
  <title>Alterar produto</title>

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
    <div class="container" id ="alteraprod">
    	<div id="content">
        <form action='atualizacaoprod/{{produto[0]}}' method="post">
            <h4>Alteração de produto</h4>
            <div class="col s1">&nbsp;</div>
              <div class='row'>
                <div class='col s4'>
                  <label for="razao_social">Nome</label>
                  <input class='validate' type='text' value='{{produto[1]}}' id='rua' name='nomeprod' required />
                </div>
                <div class='col s4'>
                  <label for="numero">Marca</label>
                  <input class='validate' type='text' value='{{produto[2]}}' id='numero' name='marcaprod' required maxlength="30"/>
                </div>
                <div class='col s4'>
                  <label for="bairro">categoria</label>
                  <input class='validate' type='text' value='{{produto[3]}}' id='bairro' name='cateprod' required maxlength="30"/>
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
  <script type="text/javascript" src="static/js/materialize.min.js"></script>
  <script type="text/javascript" src="static/js/script.js"></script>
  <script src="static/js/scriptdash.js"></script>
  <script>w3.includeHTML();</script>
</body>

</html>
