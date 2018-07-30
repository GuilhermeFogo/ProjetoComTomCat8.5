<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="O melhor site que existe">
<meta http-equiv="refresf" content="">
<title>ProjectLoki-- Cadastro</title>
	
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
	<div class="container">
		<div class="row">
			<div class="col-12">
				<form action="./Formulario" method="post">
					<h3> Cadastro</h3>
					<div class="col-6">
						<label>Nome Real:</label>
						<input type="text" name="campo_nome_real" required="on" placeholder="Digite seu Nome" class="form-control">
				</div>
			<div class="col-6">
				<label>Senha:</label>
				<input type="password" name="campo_senha" required="on" placeholder="Digite sua senha" class="form-control">
			</div>
			<div class="col-6">
				<label>Confirmar Senha:</label>
				<input type="password" name="campo_senha_conf" placeholder="Confirmar Senha" class="form-control">
			</div>
			<div class="col-6">
				<label>Email:</label>
				<input type="email" name="campo_email" required="on" placeholder="Digite seu Email" class="form-control">
			</div>

			<div class="col-6">
				<div class="form-ckeck">
					<label>Sexo:</label>
				<br>
				<label class="form-ckeck-label">Masculino</label>
				<input type="radio" name="campo_sexo" required="on" class="form-ckeck-input" value="Masculino">
				</div>

				<div class="form-ckeck">
						<label class="form-ckeck-label">Feminino</label>
						<input type="radio" name="campo_sexo" required="on"class="form-ckeck-input" value="Feminino">
					</div>
			</div>
			
			<h3>Localidade</h3>

				<div class="col-6">
					<label>Rua:</label>
					<input type="text" name="campo_rua" placeholder="Digite sua Rua" required="on" class="form-control">
				</div>

				<div class="col-6">
					<label>Cep:</label>
					<input type="text" name="campo_cep" placeholder="Digite seu CEP" required="on" class="form-control">
				</div>
				
				<div class="col-6">
					<label>Complemento:</label>
					<textarea type="text" name="campo_descricao" placeholder="Digite sua Rua" required="on" class="form-control">
					</textarea>
				</div>
				
			<div class="col-6">
				<br>
				<input type="submit" name="enviar" class="btn btn-md btn-primary" value="Cadastar">
			</div>
				</form>
			</div>
		</div>
	</div>
	
	
</body>
</html>