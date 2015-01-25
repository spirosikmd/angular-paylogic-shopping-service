'use strict'

angular.module 'angular-paylogic-shopping-service'
  .factory 'Product', ($resource, paylogicShoppingServiceConfig) ->
    resourceUrl = paylogicShoppingServiceConfig.baseURL + 'products/:productUid'
    $resource resourceUrl, null, {
      query: {
        method: 'GET'
      }
    }
