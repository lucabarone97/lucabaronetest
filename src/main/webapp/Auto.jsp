<!DOCTYPE script PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">

<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.7.2/angular.min.js">
	
</script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	



<script type="text/javascript" src="app.js"></script>

<link rel="stylesheet" href="style.css" type="text/css">
<link rel="data:image/jpeg;base64,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" href="/favicon.png" type="image/png" />
</head>
<body ng-app="myApp">

	<nav style="height:25px" class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="Motor.jsp">MotorShop</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li><a href="Auto.jsp">Auto</a></li>
				<li><a href="Moto.jsp">Moto Sportive</a></li>
				<li><a href="Scooter.jsp">Scooter</a></li>
				<li><a href="Motorino.jsp">Motorini</a></li>
				<li><a href="Aggiungi Auto.jsp">Aggiungi Auto</a></li>
				
			</ul>

		</div>
	</div>
	</nav>

	<div class="jumbotron">
		<div class="container text-center">

			<img class="img-responsive"
				style="width: 75%; display: inline-block;"
				src="https://www.lamborghini.com/sites/it-en/files/DAM/it/models_gateway/blocks/special.png">

			<h1>Catalogo Auto</h1>
		</div>
	</div>


	
	<div class="table-responsive">

		<table class="table" ng-controller="myCtrl">
			<thead>
				<tr>
					<th scope="col">Id</th>
					<th scope="col">Casa produttrice</th>
					<th scope="col">Modello</th>
					<th scope="col">Colore</th>
					<th scope="col">Stato</th>
					<th scope="col">Km</th>
					<th scope="col">Anno</th>
					<th scope="col">Prezzo</th>
				</tr>
			</thead>
			<tbody>

				<nav class="navbar navbar-light bg-light">
				<form class="form-inline">
					<input ng-model="searchText" class="form-control mr-sm-2"
						type="search" placeholder="Cerca" aria-label="Search"
						style="width: -100px">
				</form>
				</nav>

				<br>
				<tr data-ng-repeat="x in listAuto | filter:searchText">
					<td>{{ x.id}}</td>
					<td>{{ x.casaAuto }}</td>
					<td>{{ x.modello }}</td>
					<td>{{ x.colore }}</td>
					<td>{{ x.stato }}</td>
					<td>{{ x.km|number }}</td>
					<td>{{ x.anno }}</td>
					<td>{{ x.prezzo|currency : "\u20AC" }}</td>
				</tr>
				
			</tbody>
		</table>
	</div>
</body>
</html>
