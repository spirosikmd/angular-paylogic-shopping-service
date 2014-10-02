'use strict'

angular.module 'angular-paylogic-shopping-service', [
  'ngResource',
  'base64'
]
  .run ($http, apiToken) ->
    $http.defaults.headers.common.Authorization = 'Basic ' + apiToken
  .service 'paylogicShoppingService', (Event) ->
    {
      events: Event
    }
