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

$('.button-collapse').sideNav({
	  menuWidth: 275, // Default is 300
	  edge: 'left', // Choose the horizontal origin
	  closeOnClick: false, // Closes side-nav on <a> clicks, useful for Angular/Meteor
	  draggable: true // Choose whether you can drag to open on touch screens
	}
);
