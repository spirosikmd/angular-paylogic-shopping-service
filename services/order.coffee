'use strict'

angular.module 'angular-paylogic-shopping-service'
  .factory 'Order', ($resource, paylogicShoppingServiceConfig) ->
    resourceUrl = paylogicShoppingServiceConfig.baseURL + 'orders/:orderUid'
    $resource resourceUrl, null, {
      create: {
        method: 'POST'
      }
    }
