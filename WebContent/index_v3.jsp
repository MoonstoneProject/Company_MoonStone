<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>|| Logical Design Group ||</title>

<!--Import Google Icon Font-->
<link href="http://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<!--Import materialize.css-->
<link type="text/css" rel="stylesheet" href="css/materialize.min.css"
	media="screen,projection" />

<link type="text/css" rel="stylesheet" href="css/materialize-social.css"
	media="screen,projection" />

<link type="text/css" rel="stylesheet" href="css/font-awesome.css"
	media="screen,projection" />

<link type="text/css" rel="stylesheet" href="css/styles_project.css"
	media="screen,projection" />

<!--Let browser know website is optimized for mobile-->
<meta name="viewport" content="width=device-width, initial-scale=1.0" />


	<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
	
	
	
	<!--Import jQuery before materialize.js-->
	<script type="text/javascript" src="js/materialize.min.js"></script>
	<script type="text/javascript" src="js/script_project.js"></script>
	
	
<script type="text/javascript">

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
		
		alert("Mobile");

			$(document).ready(function(){
				$('#menu_2_ID').load('menu_2.jsp');
				$('#Portada_material_ID').load('Portada_material.jsp');
				$('#technologies_ID').load('technologies.jsp');
				$('#services_ID').load('services.jsp');
				$('#aboutUs_ID').load('aboutUs_phone.jsp');
				$('#clients_ID').load('clients.jsp');
				
				
				
			 });
	}else {
		
		alert("No Mobile");

		$(document).ready(function(){
			$('#menu_2_ID').load('menu_2.jsp');
			$('#Portada_material_ID').load('Portada_material.jsp');
			$('#comercial_1_ID').load('comercial_1.jsp');
			$('#technologies_ID').load('technologies.jsp');
			$('#comercial_2_ID').load('comercial_2.jsp');
			$('#services_ID').load('services.jsp');
			$('#comercial_3_ID').load('comercial_3.jsp');
			$('#aboutUs_ID').load('aboutUs.jsp');
			$('#comercial_4_ID').load('comercial_4.jsp');
			$('#clients_ID').load('clients.jsp');
			$('#comercial_5_ID').load('comercial_5.jsp');
			
		 });
		
	}


</script>
	


</head>
<body>

   <div id="menu_2_ID"></div>
   <div id="Portada_material_ID"></div>
   <div id="comercial_1_ID"></div>
	<div id="technologies_ID"></div>
	<div id="comercial_2_ID"></div>
	<div id="services_ID"></div>
	<div id="comercial_3_ID"></div>
 <div id="aboutUs_ID"></div>
 	<div id="comercial_4_ID"></div>
 <div id="clients_ID"></div>
 
 <div id="comercial_5_ID"></div>


	<jsp:include page="map.jsp" />
	<jsp:include page="footer.jsp" />


<!--Import jQuery before materialize.js-->
	<script type="text/javascript" src="js/materialize.min.js"></script>
	<script type="text/javascript" src="js/script_project.js"></script>
	
	
</body>
</html>
