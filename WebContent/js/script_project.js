//**********  script del menu_2_3.jsp  **********************************************************
           
// Initialize collapse button
//$(".button-collapse").sideNav();
// Initialize collapsible (uncomment the line below if you use the dropdown variation)
//$('.collapsible').collapsible();


 
  
 
$(document).ready(function() {
	$('.button-collapse').sideNav({
	      menuWidth: 260, // Default is 240 -- 110  -- 500 menu ancho con menu_3.jsp
	      edge: 'left', // Choose the horizontal origin
	      closeOnClick: true // Closes side-nav on <a> clicks, useful for Angular/Meteor
	    }
	  ); 
	
});
  



// Show sideNav
//$('.button-collapse').sideNav('show');
// Hide sideNav
//$('.button-collapse').sideNav('hide');

//*******************************************************************************************



//************** script Portada_material.jsp  **********************************************

$(document).ready(function() {
	$('.slider').slider({
		dist: 0,
		full_width : true,
		indicators: true,
		duration: 100,
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



//******************************************************************************************

//*********************** script services.jsp *********************************************

$(document).ready(function(){
	    $('.collapsible_services').collapsible();
	  });



//******************************************************************************************




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
		
		/*
		if( isMobile.iOS() ) alert('iOS');
		if( isMobile.Android() ) alert('Android');
		if( isMobile.BlackBerry() ) alert('BlackBerry');
		if( isMobile.iOS() ) alert('iOS');
		if( isMobile.Opera() ) alert('Opera');
		if( isMobile.Windows() ) alert('Windows');
		*/
		
		if( isMobile.any() ) {
			
			//alert("Mobile");

				$(document).ready(function(){
					$('body').load('index_mobile.jsp');
				 });
		}else {
			
			//alert("No Mobile");

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







function loadXMLDoc() {

	  var nombreVar = $('#nombre').val();
	  var emailVar = $('#email').val();
	  var textarea2Var = $('#textarea2').val();
	  
	  if ( nombreVar.length>0 && emailVar.length>0 && textarea2Var.length>0 ){
		  
		  
		  $('#form_contactenos').hide();
		  $('#time_out').show();
		//  $('.target').hide();
		  $('#form_error').hide();
		 
			
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
	  if (this.readyState == 4 && this.status == 200) {
		  $('#time_out').hide();
		  $('#form_contact_ini').hide();
		  $('#resp_mail_img').show();
	    document.getElementById("resp_mail").innerHTML = this.responseText;
	  }
	};
	xhttp.open("POST", "SendEmail", true);
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhttp.send( 
			"nombre="+nombreVar+"&email="+emailVar+"&textarea2="+textarea2Var
		);
	}
	  else
		{
		  //alert("Debe llenar todos los campos !");
		  
		  $('#form_error').show();
		  
		}
		  
		  
		  
	  }
	  
	 
