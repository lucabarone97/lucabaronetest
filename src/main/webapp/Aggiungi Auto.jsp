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
			
					<div class="w3-container" ng-controller="myCtrl5">
	<form ng-hide="hideform">
  <h3 ng-hide="edit">Aggiungi Auto:</h3>
    <label>Casa Produttrice:</label>
    <input class="w3-input w3-border" type="text" ng-model="casaAuto"  placeholder="Casa Produttrice">
  <br>
    <label>Modello:</label>
    <input class="w3-input w3-border" type="text" ng-model="modello"  placeholder="Modello">
  <br>
    <label>Colore:</label>
    <input class="w3-input w3-border" type="text" ng-model="colore" placeholder="Colore">
  <br>
    <label>Stato:</label>
    <input class="w3-input w3-border" type="text" ng-model="stato" placeholder="Stato">
  <br>
   <br>
    <label>Km:</label>
    <input class="w3-input w3-border" type="number" ng-model="km" placeholder=Km>
  <br>
   <br>
    <label>Anno:</label>
    <input class="w3-input w3-border" type="number" ng-model="anno" placeholder="Anno">
  <br>
   <br>
    <label>Prezzo:</label>
    <input class="w3-input w3-border" type="number" ng-model="prezzo" placeholder="Prezzo">
  <br>
  <button class="w3-btn w3-green w3-ripple" ng-click="add()">&#10004; Save Changes</button>
</form>

</div>

			
		</table>
	
</body>
</html>
