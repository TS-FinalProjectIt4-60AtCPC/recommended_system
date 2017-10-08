angular.module('app.movie.moviemgt',[
	'ui.router'
])
.config(['$stateProvider', '$urlRouterProvider', '$logProvider', function ($stateProvider, $urlRouterProvider, $logProvider) {
	'use strict';
	
	$stateProvider
		.state('app.moviemgt', {
			'abstract': true,
			url: '/moviemgt',
			controller: 'MovieController as movieCtrl',
			template: '<div ui-view></div>',
			resolve: {
				uiLabel: ['BoardMgtService', '$rootScope', function (BoardMgtService, $rootScope) {
            		return BoardMgtService.uiLabel('list', $rootScope.selectedLang);
            	}],
			}
		})
		.state('app.moviemgt.list', {
			url: '',
			templateUrl: 'app/bomgt/boardmgt/boardmgt-list.html',
			secured: {
				permissions: ['BMSMT020100']
			}
		})
}])