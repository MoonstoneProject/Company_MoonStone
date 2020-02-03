<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <!-- Compiled and minified CSS 
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/css/materialize.min.css">
-->

<link type="text/css" rel="stylesheet" href="css/materialize.css"
	media="screen,projection" />
	
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"/>


<!--  left sidebar social icons  -->


<div class="left-sidebar">
	<ul class="collection left-align">
		<li class="collection-item"><i class="fa fa-facebook"></i></li>
		<li class="collection-item"><i class="fa fa-twitter"></i></li>
		<li class="collection-item"><i class="fa fa-google-plus"></i></li>
		<li class="collection-item"><i class="fa fa-pinterest"></i></li>
		<li class="collection-item"><i class="fa fa-linkedin"></i></li>
		<li class="collection-item"><i class="fa fa-instagram"></i></li>
	</ul>
</div>


<div class="container">
	<div class= "box orange"></div>
	<div class= "box green"></div>
	<div class= "box purple"></div>
</div>


<!-- css style -->

<style>
	.left-sidebar{
		position:fixed;
		top:30%;
		/*right:0%;*/
		z-index:999;
	}
	
	
	.left-sidebar ul{
		border: none;
	
	}
	
	.left-sidebar i.fa{
		padding:8px;
		font-size:25px;
		color:#fff;
	}
	
	.left-sidebar li{
		width:80px;
		transition:1s;
	}
	
	.left-sidebar li:nth-child(1){
		background:#3b5999;
	}
	.left-sidebar li:nth-child(2){
		background:#55acee;
	}
	.left-sidebar li:nth-child(3){
		background:#dd4b39;
	}
	.left-sidebar li:nth-child(4){
		background:#bd081c;
	}
	.left-sidebar li:nth-child(5){
		background:#0077B5;
	}
	.left-sidebar li:nth-child(6){
		background:#0077B5;
	}
	
	
	.left-sidebar li:hover{
		width:150px;
	}
	
	/*
	.box{
		height:600px;
		margin-top:100px;
	}
	*/
	
</style>







</body>
</html>