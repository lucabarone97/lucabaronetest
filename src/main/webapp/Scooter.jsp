<html>
<head>

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


</head>



<body ng-app="myScooter">

	<nav style="height:25px" class="navbar navbar-inverse">
	<div  class="container-fluid">
		<div  class="navbar-header">
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
			</ul>
			
		</div>
	</div>
	</nav>

	<div class="jumbotron">
		<div class="container text-center">
			<div class="img">
				<img class="img-responsive" style="width:30%; display: inline-block;-moz-transform: scaleX(-1);
				-o-transform: scaleX(-1);-webkit-transform: scaleX(-1); transform: scaleX(-1); filter: FlipH;
				-ms-filter:FlipH"
					src="https://cdn3.louis.de/content/bikedb/images/bikes/fotos/350x350/2843.png">
			</div>
			<h1>Catalogo Scooter</h1>
		</div>
	</div>


	<div class="table-responsive">
		<table class="table" ng-controller="myCtrl3">
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
				<tr data-ng-repeat="x in listScooter | filter:searchText">
					<td>{{ x.id}}</td>
					<td>{{ x.casaScooter }}</td>
					<td>{{ x.modello }}</td>
					<td>{{ x.colore }}</td>
					<td>{{ x.stato }}</td>
					<td>{{ x.km|number }}</td>
					<td>{{ x.anno }}</td>
					<td>{{ x.prezzo|currency : "\u20AC" }}</td>
				</tr>

			</tbody>
		</table>
</body>
</html>
