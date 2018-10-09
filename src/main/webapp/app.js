var app = angular.module("myApp", []);
app.controller("myCtrl", function($scope,$http) {
	$http.get("http://localhost:8080/ProvaCollegamento/servlet/allAuto").then(function(response){
		$scope.listAuto = response.data;
		console.log(response.data)
	})	
	
	

});

app.controller("myCtrl5", function($scope,$http) {
	
	$scope.auto = {
			casaAuto,
			modello,
			colore,
			stato,
			km,
			anno,
			prezzo
	};
	
	$scope.add = function(){
		
		$http.post("http://localhost:8080/ProvaCollegamento/servlet/add",{casaAuto,modello,colore,stato,km,anno,prezzo}).then(function(response){
			console.log(auto); 
 console.log(response.data)
		})	
	}

	});


var app = angular.module("myMoto", []);
app.controller("myCtrl2", function($scope,$http) {
	$http.get("http://localhost:8080/ProvaCollegamento/servlet/allMoto").then(function(response){
		$scope.listMoto = response.data;
		console.log(response.data)
	})	
	
	
});

var app = angular.module("myScooter", []);
app.controller("myCtrl3", function($scope,$http) {
	$http.get("http://localhost:8080/ProvaCollegamento/servlet/allScooter").then(function(response){
		$scope.listScooter = response.data;
		console.log(response.data)
	})	
	
	
});

var app = angular.module("myMotorino", []);
app.controller("myCtrl4", function($scope,$http) {
	$http.get("http://localhost:8080/ProvaCollegamento/servlet/allMotorino").then(function(response){
		$scope.listMotorino = response.data;
		console.log(response.data)
	})	
	
	
});




