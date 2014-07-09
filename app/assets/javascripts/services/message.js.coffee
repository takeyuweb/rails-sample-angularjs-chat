define ['services/services'], (services) ->
  services.factory 'Message', ['$resource', ($resource) ->
    $resource '/messages/:id', id: '@id'
  ]

  services.factory 'MultiMessageLoader', ['Message', '$q', (Message, $q) ->
    () ->
      delay = $q.defer()
      Message.query (messages) ->
        delay.resolve messages
      , () ->
        delay.reject 'Loading failed.'
      delay.promise
  ]

  services.factory 'MessageLoader', ['Message', '$route', '$q', (Message, $route, $q) ->
    () ->
      delay = $q.defer()
      Message.get id: $route.current.param.messageId, (message) ->
        delay.resolve message
      , () ->
        delay.reject 'Loading failed.'
      delay.promise
  ]