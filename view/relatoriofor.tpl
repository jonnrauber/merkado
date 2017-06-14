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
