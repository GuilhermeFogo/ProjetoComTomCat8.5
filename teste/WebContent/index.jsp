<%@page import="Objetos.Cliente"%>
<%@page import="java.util.List"%>
<%@page import="DAO.Crud_Cliente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="O melhor site que existe">
<meta http-equiv="refresf" content="">
<title>ProjectLoki</title>
	
	<!-- Botstrap -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" 
	crossorigin="anonymous">
	<!-- Personalizado CSS -->
	<link rel="stylesheet" href="css/estilo.css">
	
	<!-- Font Ansome -->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
	
	<!-- Jquery -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-6">
				<br>
				<a href="./Home" target="_blank">
					<img src="" alt="LogoMarca" class="img-thumbnail" width="150px" height="25px;">
				</a>
			</div>
			<div class="col-6">
			<br>
			<ul class="list-inline">
				<li class="list-inline-item">
					<div class="col-4">
						<a href="./Home"  target="_blank" class="btn btn-md btn-primary active">Home</a>
					</div>
				</li>
				<li class="list-inline-item dropdown">
					<div class="col-4">
						<a class="btn btn-primary dropdown-toggle" href="#" data-toggle="dropdown">
    						Rede Social
  						</a>
						<ul class="dropdown-menu center">
							<li class="dropdown-item">
								<a href="" target="_blank"><i class="fab fa-2x fa-facebook-square"></i></a>
							</li>
							<li class="dropdown-item">
								<a href="" target="_blank"><i class="fab fa-2x fa-github"></i></a>
							</li>
							<li class="dropdown-item">
								<a href="" target="_blank"><i class="fab fa-2x fa-linkedin "></i></a>
							</li>
						</ul>
					</div>
				</li>
				<li class="list-inline-item">
					<div class="col-4">
						<a href="./Formulario" class="btn btn-md btn-primary" >Cadastro</a>
					</div>
				</li>
			</ul>
		</div>
		</div>
	</div>
<header class="container-fluid">
	<div id="carrossel_1" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carrossel_1" data-slide-to="0" class="active"></li>
    <li data-target="#carrossel_1" data-slide-to="1"></li>
    <li data-target="#carrossel_1" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="https://catracalivre.com.br/wp-content/uploads/2013/08/rock_wallpaper_fullhd_by_goro85-d45o08q-5108.png" alt="Rock" height="950px">
      	<div class="carousel-caption d-none d-md-block">
    		<h2>Rock e Metal</h2>
  		</div>
    </div>
    <div class="carousel-item">
      <img class="d-block w-100 h-50" src="http://4.bp.blogspot.com/-Tgyr_wxgukc/Vhrcismj97I/AAAAAAAACPc/1rzN9WT2780/s1600/os-cantores-mais-pop-nos-anos-90.jpg" alt="Anos 90" height="950px">
      <div class="carousel-caption d-none d-md-block">
    		<h2>Anos 90</h2>
  		</div>
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="https://highape.com/images/8fe82ca79a6a5067490a22eb701ac531house_music_hd_wallpaper_18.jpg" alt="Third slide" height="950px">
      <div class="carousel-caption d-none d-md-block">
    		<h2>Eletronicas</h2>
  		</div>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carrossel_1" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carrossel_1" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</header>

<div class="container">
	<div class="row">
		<form action="./Home" method="post" class="col-12">
			<div class="col-6">
				<label>Nome Real:</label>
				<input type="text" name="campo_nome_real" required="on" 
				placeholder="Digite seu Nome" class="form-control">
			</div>
			<div class="col-6">
				<label>Senha:</label>
				<input type="password" name="campo_senha" required="on" placeholder="Digite sua senha" class="form-control">
			</div>
			<div class="col-6">
				<label>Email:</label>
				<input type="email" name="campo_email" required="on" placeholder="Digite seu Email" class="form-control">
			</div>
			<div class="col-6">
				<br>
				<input type="submit" name="enviar" class="btn btn-md btn-primary" value="Enviar">
			</div>
		</form>
	</div>
</div>
</body>
</html>