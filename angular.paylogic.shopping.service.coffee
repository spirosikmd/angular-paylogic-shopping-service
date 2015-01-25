'use strict'

angular.module 'angular-paylogic-shopping-service', [
  'ngResource',
  'base64',
]
  .provider 'paylogicShoppingServiceConfig', ->
    config =
      baseURL: ''

    {
      set: (settings) ->
        config = settings
      ,
      $get: ->
        return config;
    }

  .run ($http, $base64, paylogicShoppingServiceConfig) ->
    auth = $base64.encode(paylogicShoppingServiceConfig.apiKey + ':' + paylogicShoppingServiceConfig.apiSecret);
    $http.defaults.headers.common.Authorization = 'Basic ' + auth

  .service 'paylogicShoppingService', (Event, Product, Bill, Order)  ->
    {
      events: Event,
      products: Product,
      bill: Bill,
      orders: Order
    }
