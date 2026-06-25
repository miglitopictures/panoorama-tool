<!DOCTYPE html>
<html>
<head>
<title><%- name %></title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="target-densitydpi=device-dpi, width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, minimal-ui" />
<style> @-ms-viewport { width: device-width; } </style>
<link rel="stylesheet" href="vendor/reset.min.css">
<link rel="stylesheet" href="style.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
</head>
<body class="<%- scenes.length > 1 ? 'multiple-scenes' : 'single-scene' %> <%- settings.viewControlButtons ? 'view-control-buttons' : '' %>">

<div id="pano"></div>
<div id="vignette"></div>

<div id="sceneList">
  <ul class="scenes">
    <% scenes.forEach(function(scene) { %>
      <a href="javascript:void(0)" class="scene" data-id="<%- scene.id %>">
        <li class="text"><%- scene.name %></li>
      </a>
    <% }); %>
  </ul>
</div>

<div id="titleBar">
  <h1 class="sceneName"></h1>
</div>

<a href="javascript:void(0)" id="autorotateToggle">
  <img class="icon off" src="img/play.png">
  <img class="icon on" src="img/pause.png">
</a>

<a href="javascript:void(0)" id="fullscreenToggle">
  <img class="icon off" src="img/fullscreen.png">
  <img class="icon on" src="img/windowed.png">
</a>

<a href="javascript:void(0)" id="sceneListToggle">
  <img class="icon off" src="img/expand.png">
  <img class="icon on" src="img/collapse.png">
</a>

<a href="javascript:void(0)" id="viewUp" class="viewControlButton viewControlButton-1">
  <img class="icon" src="img/up.png">
</a>
<a href="javascript:void(0)" id="viewDown" class="viewControlButton viewControlButton-2">
  <img class="icon" src="img/down.png">
</a>
<a href="javascript:void(0)" id="viewLeft" class="viewControlButton viewControlButton-3">
  <img class="icon" src="img/left.png">
</a>
<a href="javascript:void(0)" id="viewRight" class="viewControlButton viewControlButton-4">
  <img class="icon" src="img/right.png">
</a>
<a href="javascript:void(0)" id="viewIn" class="viewControlButton viewControlButton-5">
  <img class="icon" src="img/plus.png">
</a>
<a href="javascript:void(0)" id="viewOut" class="viewControlButton viewControlButton-6">
  <img class="icon" src="img/minus.png">
</a>

<!-- CUSTOMIZACAO NOO -->


<div id="map">
  <img id="minimapImage" src="" alt="Planta baixa do empreendmento.">
  <p> PLANTA PADRÃO APARTAMENTO <br> ÁREA PRIVATIVA : 49,74m² </p> 
</div>

<!-- NOTA LEGAL TRIGGER -->
<a href="javascript:void(0)" id="notaLegalToggle">Ver nota legal</a>

<!-- NOTA LEGAL MODAL -->
<div id="notaLegalOverlay">
  <div id="notaLegalBox">
    <p>Teste de nota legal. Colocar texto aqui. Esse texto aqui eh a nota legal da pagina do tour foto 360 do Opp.</p>
    <button id="notaLegalClose">Fechar</button>
  </div>
</div>


<img src="./assets/opp_logo.png" id="logo" alt="Logotipo Opportunity">


<!-- -->

<script src="vendor/es5-shim.js"></script>
<script src="vendor/eventShim.js"></script>
<script src="vendor/classList.js"></script>
<script src="vendor/requestAnimationFrame.js" ></script>
<script src="vendor/screenfull.min.js" ></script>
<script src="vendor/bowser.min.js" ></script>
<script src="vendor/marzipano.js" ></script>

<script src="data.js"></script>
<script src="index.js"></script>

<script>
  var toggle = document.getElementById('notaLegalToggle');
  var overlay = document.getElementById('notaLegalOverlay');
  var closeBtn = document.getElementById('notaLegalClose');

  toggle.addEventListener('click', function() {
    overlay.classList.add('visible');
  });

  closeBtn.addEventListener('click', function() {
    overlay.classList.remove('visible');
  });

  // Also close when clicking outside the white box
  overlay.addEventListener('click', function(e) {
    if (e.target === overlay) {
      overlay.classList.remove('visible');
    }
  });
</script>


</body>
</html>
