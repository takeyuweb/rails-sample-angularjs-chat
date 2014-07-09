define ['controllers/controllers'], (controllers) ->
  controllers.controller 'RootController', ['$scope', ($scope) ->
    $scope.title = 'AngularJS Chat Sample'
  ]
