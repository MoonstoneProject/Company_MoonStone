//**********  menu  **********************************************************


$('.button-collapse').sideNav({
      menuWidth: 260, // Default 
      edge: 'left', // Choose the horizontal origin
      closeOnClick: true // Closes side-nav on <a> clicks, useful for Angular/Meteor
    }
  );  
  
  


//************** script Portada_material.jsp  **********************************************

$(document).ready(function() {
	$('.slider').slider({
		full_width : true
	});
	// Pause slider
	$('.slider').slider('pause');
	// Start slider
	$('.slider').slider('start');
	// Next slide
	$('.slider').slider('next');
	// Previous slide
	$('.slider').slider('prev');

});





//*********************** script services.jsp *********************************************

$(document).ready(function(){
	    $('.collapsible_services').collapsible();
	  });




//*********************** script aboutUs.jsp ***********************************************

$(document).ready(function(){
     $('.parallax').parallax();
   });
       

$(document).ready(function(){
    $('.carousel').carousel();
  });
     

//******************************************************************************************



var $masonry = $('.gallery');
$masonry.masonry({
  // set itemSelector so .grid-sizer is not used in layout
  itemSelector: '.gallery-item',
  // use element for option
  columnWidth: '.gallery-item',
  // no transitions
  transitionDuration: 0
});

// layout Masonry after each image loads
$masonry.imagesLoaded(function() {
  $masonry.masonry('layout');
});


$(document).ready(function(){
	//Open
	$('.gallery-expand').galleryExpand('open');
  });



$(document).ready(function(){
	// Close
	$('.gallery-expand').galleryExpand('close');
  });








function index(){
	
	var isMobile = {
		    Android: function() {
		        return navigator.userAgent.match(/Android/i);
		    },
		    BlackBerry: function() {
		        return navigator.userAgent.match(/BlackBerry/i);
		    },
		    iOS: function() {
		        return navigator.userAgent.match(/iPhone|iPad|iPod/i);
		    },
		    Opera: function() {
		        return navigator.userAgent.match(/Opera Mini/i);
		    },
		    Windows: function() {
		        return navigator.userAgent.match(/IEMobile/i);
		    },
		    any: function() {
		        return (isMobile.Android() || isMobile.BlackBerry() || isMobile.iOS() || isMobile.Opera() || isMobile.Windows());
		    }
		};
		
	
		
		if( isMobile.any() ) {
			
			

				$(document).ready(function(){
					$('body').load('index_mobile.jsp');
				 });
		}else {
			
			

			$(document).ready(function(){
				$('body').load('index_desktop.jsp');
			 });
			
		}

	
	
	
}


var namePattern = "^[a-z A-Z]{4,30}$";
var emailPattern = "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+.[a-zA-Z]{2,4}$";
 
function checkInput(idInput, pattern) {
return $(idInput).val().match(pattern) ? true : false;
}

// Cambio de prueba: Agregar un console.log para verificar que el script se actualice en Docker
console.log('Script loaded successfully - updated for Docker test');



