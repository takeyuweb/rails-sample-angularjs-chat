define [
  'angular', 'app', 'domReady',
  'jquery',
  'angularRoute',
  'controllers/rootController'
], (angular, app, domReady) ->
  "use strict"
  app.config ['$routeProvider', ($routeProvider) ->
    $routeProvider.when '/',
      templateUrl: 'assets/root.html',
      controller: 'RootController'
    .otherwise
      redirectTo: '/'
  ]
  domReady ->
    angular.bootstrap document, ['AngularChat']
    angular.element(document.getElementsByTagName('html')).addClass 'ng-app: AngularChat'
