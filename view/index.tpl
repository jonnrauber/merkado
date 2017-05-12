<!DOCTYPE html>

<html>
<head>
  <title>Merkado</title>

  <!--Import Google Icon Font-->
  <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <!--Import materialize.css-->
  <link type="text/css" rel="stylesheet" href="static/css/materialize.min.css"  media="screen,projection"/>
  <!--Let browser know website is optimized for mobile-->
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

  <link type="text/css" href="static/css/style.css" rel="stylesheet">
</head>

<body>
  <div class="navbar-fixed">
    <nav id="menu">
      <div class="nav-wrapper container">
        <a href="#!" class="brand-logo">MerKado</a>
        <ul class="right hide-on-med-and-down">
          <li><a href="#modalLogin" class="itens-menu waves-effect waves-light">Login</a></li>
          <li><a href="#modalRegister" class="itens-menu waves-effect waves-light">Cadastre-se</a></li>
        </ul>
      </div>
    </nav>
  </div>
  
  <!-- Modal de Login -->
  <div id="modalLogin" class="modal">
    <div class="modal-content">
      <h4>Acessar Conta</h4>
      <form action='login' method='post'>
		<div class="container">
		  <p>
			<div class="input-field col s12">
			  <input class="validate" type="text" name="cnpj" id="cnpj" />
			  <label for="cnpj">CNPJ</label>
			</div>
		  </p>
		  <p>
			<div class="input-field col s12">
			  <input class="validate" type="password" name="senha" id="senha" />
			  <label for="cnpj">Senha</label>
			</div>
		  </p>
		  <div class="row">
			<div class="col s6">
			  <input type="checkbox" class="filled-in" id="lembrar" name="lembrar" /> 
			  <label for="lembrar">Continuar conectado</label>
			</div>
			<div class="col s6">
			  <button type="submit" class="right btn waves-effect waves-light">Entre</button>
			</div>
		  </div>
		  <p>
			<a href="forgot-pass">Esqueceu a senha?</a>
		  </p>
		</div>
      </form>
    </div>
  </div>
  
  <!-- Modal de Cadastro -->
  <div id="modalRegister" class="modal modal-fixed-footer">
    <div class="modal-content">
      <h4>Requisição de Cadastro</h4>
      <form action='register' method='post'>
		
      </form>
    </div>
    <div class="modal-footer">
      <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat ">Agree</a>
    </div>
  </div>

  <div id="primeiro-parallax" class="parallax-container">
    <div class="parallax"><img src="static/img/parallax.jpg"></div>
  </div>
  <div id="segundo-parallax" class="valign-wrapper parallax-container">
	<div class="container center">
      <p id="texto-segundo-parallax">Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet.</p>
	</div>
  </div>
  <div id="terceiro-parallax" class="parallax-container">
    <div class="parallax"><img src=""></div>
    <div class="container center">
	  <div class="row">
	    <div class="card-about col s6 m6">
	      <h2>About</h2>
	      <p>Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet.</p>
	    </div>
	  </div>
    </div>
  </div>



  <footer class="page-footer">
     <div class="container">
       <div class="row">
         <div class="col l6 s12">
           <h5>Merkado</h5>
           <p>contato@merkado.com.br</p>
           <p>(49) 3647 3333</p>
         </div>
         <div class="col l4 offset-l2 s12">
           <h5>Redes Sociais</h5>
           <ul>
             <li><a class="grey-text text-lighten-3" href="#!">Facebook</a></li>
             <li><a class="grey-text text-lighten-3" href="#!">Twitter</a></li>
           </ul>
         </div>
       </div>
     </div>
     <div class="footer-copyright">
       <div class="container">
       © 2017 MerKado - Todos os direitos reservados
       <a class="grey-text text-lighten-4 right" href="#!">More Links</a>
       </div>
     </div>
   </footer>

  <!--Import jQuery before materialize.js-->
  <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
  <script type="text/javascript" src="static/js/materialize.min.js"></script>
  <script type="text/javascript" src="static/js/script.js"></script>
</body>

</html>
