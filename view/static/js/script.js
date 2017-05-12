$(document).ready(function(){
   $('.parallax').parallax();
   $('#modalLogin').modal();
   $('#modalRegister').modal();
   $('.modal').modal();
 });

(function () {
    var menu = document.getElementById('menu'); // colocar em cache
    window.addEventListener('scroll', function () {
        if (window.scrollY > 20) menu.classList.add('paginaRolada'); // > 0 ou outro valor desejado
        else menu.classList.remove('paginaRolada');
    });
})();
