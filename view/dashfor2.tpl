<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>MerKado - Painel do Fornecedor</title>

  <script src="/static/js/w3.js"></script>
  <link rel="stylesheet prefetch" href="static/css/materialize.min.css"  media="screen,projection"/>
  <link type="text/css" href="static/css/styledash.css" rel="stylesheet">

</head>

<body>

<div w3-include-html="static/menu.html"></div>

  <main>
    <div class="row">
      <div class="col s6">
        <div style="padding: 25px;" align="center" class="card">
          <div class="row">
            <div class="left card-title">
              <b>Bem-vindo, Jonathan!</b>
            </div>
          </div>

          <div class="row">
            <a href="#modalatendimento">
              <div style="padding: 15px;" class="grey lighten-3 col s5 waves-effect">
                <img src="https://res.cloudinary.com/dacg0wegv/image/upload/t_media_lib_thumb/v1463989969/people_2_knqa3y.png" class="responsive-img" /><br>
                <span class="indigo-text text-lighten-1"><h5>Atendimento</h5></span>
              </div>
            </a>
            <div class="col s1">&nbsp;</div>
            <div class="col s1">&nbsp;</div>

            <a href="#!">
              <div style="padding: 15px;" class="grey lighten-3 col s5 waves-effect">
                <i class="material-icons" style="font-size:64px">chat_bubble_outline</i><br/>
                <span class="indigo-text text-lighten-1"><h5>Mensagens</h5></span>
              </div>
            </a>
          </div>
        </div>
      </div>

      <div class="col s6">
        <div style="padding: 25px;" align="center" class="card">
          <div class="row">
            <div class="left card-title">
              <b>Gerenciamento de produtos</b>
            </div>
          </div>
          <div class="row">
            <a href="produtosFornecedor">
              <div style="padding: 15px;" class="grey lighten-3 col s5 waves-effect">
                <img src="https://res.cloudinary.com/dacg0wegv/image/upload/t_media_lib_thumb/v1463989970/product_mdq6fq.png" class="responsive-img" /><br>
                <span class="indigo-text text-lighten-1"><h5>Produtos</h5></span>
              </div>
            </a>

            <div class="col s1">&nbsp;</div>
            <div class="col s1">&nbsp;</div>

            <a href="categoriasFornecedor">
              <div style="padding: 15px;" class="grey lighten-3 col s5 waves-effect">
                <img src="https://res.cloudinary.com/dacg0wegv/image/upload/t_media_lib_thumb/v1463989970/stack_rwg2mz.png" class="responsive-img" /><br>
                <span class="indigo-text text-lighten-1"><h5>Categorias</h5></span>
              </div>
            </a>
          </div>
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col s6">
        <div style="padding: 25px;" align="center" class="card">
          <div class="row">
            <div class="left card-title">
              <b>Atualização Cadastral</b>
            </div>
          </div>

          <div class="row">
            <a href="#!">
              <div style="padding: 15px;" class="grey lighten-3 col s5 waves-effect">
                <img src="https://res.cloudinary.com/dacg0wegv/image/upload/t_media_lib_thumb/v1463989969/brand_lldqpu.png" class="responsive-img" /><br>
                <span class="indigo-text text-lighten-1"><h5>Brand</h5></span>
              </div>
            </a>

            <div class="col s1">&nbsp;</div>
            <div class="col s1">&nbsp;</div>

            <a href="#!">
              <div style="padding: 15px;" class="grey lighten-3 col s5 waves-effect">
                <img src="https://res.cloudinary.com/dacg0wegv/image/upload/t_media_lib_thumb/v1463989969/brand_lldqpu.png" class="responsive-img" /><br>
                <span class="indigo-text text-lighten-1"><h5>Sub Brand</h5></span>
              </div>
            </a>
          </div>
        </div>
      </div>

      <div class="col s6">
        <div style="padding: 25px;" align="center" class="card">
          <div class="row">
            <div class="left card-title">
              <b>Relatórios</b>
            </div>
          </div>
          <div class="row">
            <a href="#!">
              <div style="padding: 15px;" class="grey lighten-3 col s5 waves-effect">
                <img src="https://res.cloudinary.com/dacg0wegv/image/upload/t_media_lib_thumb/v1463989969/squares_dylwo9.png" class="responsive-img" /><br>
                <span class="indigo-text text-lighten-1"><h5>visualizados</h5></span>
              </div>
            </a>
            <div class="col s1">&nbsp;</div>
            <div class="col s1">&nbsp;</div>

            <a href="#!">
              <div style="padding: 15px;" class="grey lighten-3 col s5 waves-effect">
                <img src="https://res.cloudinary.com/dacg0wegv/image/upload/t_media_lib_thumb/v1463989969/squares_dylwo9.png" class="responsive-img" /><br>
                <span class="truncate indigo-text text-lighten-1"><h5>favoritados</h5></span>
              </div>
            </a>
          </div>
        </div>
      </div>
    </div>
  </main>

  <footer class="indigo lighten-2 page-footer">
    <div class="container">
      <div class="row">
        <div class="col s12">
          <h5 class="white-text">MerKado</h5>
          <ul id='credits'>
            <li>
              contato@merkado.com.br
            </li>
          </ul>
        </div>
      </div>
    </div>
    <div class="footer-copyright">
      <div class="container">
        <span><a style='font-weight: bold;' href="">Merkado ©</a> - Todos os direitos reservados.</span>
      </div>
    </div>
  </footer>

  <div id="modalatendimento" class="modal">
    <div w3-include-html="static/modalAtendimento.html"></div>
  </div>

  <script>w3.includeHTML();</script>
  <script type="text/javascript" src="static/js/jquery-2.1.1.min.js"></script>
  <script type="text/javascript" src="static/js/materialize.min.js"></script>
  <script type="text/javascript" src="static/js/script.js"></script>
  <script src="static/js/scriptdash.js"></script>
</body>

</html>
