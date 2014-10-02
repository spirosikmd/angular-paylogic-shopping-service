'use strict'

angular.module 'angular-paylogic-shopping-service', [
  'ngResource',
  'base64'
]
  .run ($http, apiToken) ->
    $http.defaults.headers.common.Authorization = 'Basic ' + apiToken
  .service 'paylogicShoppingService', (Event, Product, Bill, Order) ->
    {
      events: Event,
      products: Product,
      bill: Bill,
      orders: Order
    }
