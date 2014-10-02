'use strict'

angular.module 'angular-paylogic-shopping-service'
  .factory 'Order', ($resource, baseUrl) ->
    resourceUrl = baseUrl + 'orders/:orderUid'
    $resource resourceUrl, null
