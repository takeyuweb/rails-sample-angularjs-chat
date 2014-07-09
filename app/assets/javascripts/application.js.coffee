define [
  'angular', 'app', 'domReady', 'jquery',
  'angularRoute',
  'angularResource',
  'controllers/rootController',
  'services/message'
], (angular, app, domReady, $) ->
  "use strict"
  app.config ['$httpProvider', ($httpProvider) ->
    $httpProvider.defaults.headers.common["X-CSRF-Token"] = $("meta[name=csrf-token]").attr("content")
  ]
  app.config ['$routeProvider', ($routeProvider) ->
    $routeProvider.when '/',
      controller: 'RootCtrl',
      templateUrl: 'assets/root.html',
      resolve:
        messages: (MultiMessageLoader) ->
          MultiMessageLoader()
    .otherwise
      redirectTo: '/'
  ]
  domReady ->
    angular.bootstrap document, ['AngularChat']
    angular.element(document.getElementsByTagName('html')).addClass 'ng-app: AngularChat'
