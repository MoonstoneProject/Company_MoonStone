<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<style type="text/css">
html {
	height: 100%
}

body {
	height: 100%;
	margin: 0;
	padding: 0
}

#map-canvas {
	height: 100%
}
</style>


<!--Let browser know website is optimized for mobile-->
<meta name="viewport" content="width=device-width, initial-scale=1.0" />






<script type="text/javascript">
               


                //navigator.geolocation.getCurrentPosition(onSuccess, onError, { timeout: 30000 });  // solicita la ubicacion al navegador
                function onSuccess(position) {
                   // var lat=position.coords.latitude;
                   // var lang=position.coords.longitude;
                   
                     var lat=4.631321;
                    var lang=-74.065285;
                    
                    
                    
                    //Google Maps
                    var myLatlng = new google.maps.LatLng(lat,lang);
                    var mapOptions = {zoom: 15,center: myLatlng}
                    var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
                    var marker = new google.maps.Marker({position: myLatlng,map: map});
                }
            function onError(error) {
                alert('code: ' + error.code + '\n' +
                      'message: ' + error.message + '\n');
            }
            google.maps.event.addDomListener(window, 'load', onSuccess);





            
                </script>
</head>
<body>

<div id="ubicacion">

	<div class="container">
		<div class="row">
			<div class="col s12 ">
				<div class="caption left-align light orange-text text-lighten-2">
					<h3 class="thin">Ubicaci�n</h3>
				</div>
			</div>
		</div>
	</div>
	
	
</div>



	<div id="map-canvas"></div>



	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyChsqDPn082-9C2VWrNvL2oOPgLdpZm2Lw&libraries=places&callback=initMap"
		></script>
		

		
		

		
</body>
</html>