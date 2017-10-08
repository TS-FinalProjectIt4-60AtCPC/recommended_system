angular.module('app',[
                      
]).config(['$urlRouterProvider', '$stateProvider', '$logProvider', 'storeProvider',function($urlRouterProvider, $stateProvider, $logProvider, storeProvider){
	$urlRouterProvider
		.when('','/login')
		.when('/','/login')
		.when('/home','/home')
		.otherwise('/app/fileNotFound');
	
	$stateProvider
		.state('app',{
			url:'/app',
			templateUrl: 'app/app.html',
			secure: {}
		});
	$logProvider.debugEnabled(false);
	storeProvider.setStore('sessionStorage');
}])