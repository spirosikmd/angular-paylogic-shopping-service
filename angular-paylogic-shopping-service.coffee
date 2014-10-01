'use strict'

angular.module 'angular-paylogic-shopping-service', [
  'ngResource',
  'base64'
]
  .run ($http, apiToken) ->
    $http.defaults.headers.common.Authorization = 'Basic ' + apiToken
  .service 'paylogic', (Event, Bill, Order) ->
    {
      events: Event,
      bill: Bill,
      orders: Order
    }
