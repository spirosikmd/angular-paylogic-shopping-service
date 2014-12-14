'use strict'

angular.module 'angular-paylogic-shopping-service', [
  'ngResource',
  'base64'
]
  .provider 'paylogicShoppingService', ->

    options = {}

    @configure = (opts) =>
      angular.extend options, opts
      return

    @$get = ($http, $base64, Event, Product, Bill, Order) =>
      auth = $base64.encode(options.apiKey + ':' + options.apiSecret);
      $http.defaults.headers.common.Authorization = 'Basic ' + auth
      {
        events: Event,
        products: Product,
        bill: Bill,
        orders: Order
      }

    @

  .constant 'baseUrl', 'https://shopping-service.sandbox.paylogic.com/'
