define ['controllers/controllers'], (controllers) ->
  controllers.controller 'RootCtrl', ['$scope', 'messages', 'Message', '$timeout', ($scope, messages, Message, $timeout) ->
    $scope.title = 'AngularJS Chat Sample'
    $scope.messages = messages

    $scope.newMessage = new Message()
    $scope.save = () ->
      $scope.newMessage.$save (message) ->
        $scope.messages.unshift message
      $scope.newMessage = new Message()
  ]
