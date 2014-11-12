'use strict'

angular.module 'angular-paylogic-shopping-service'
  .factory 'Product', ($resource, baseUrl) ->
    resourceUrl = baseUrl + 'products/:productUid'
    $resource resourceUrl, null, {
      query: {
        method: 'GET'
      }
    }
