'use strict'

angular.module 'angular-paylogic-shopping-service'
  .factory 'Bill', ($resource, paylogicShoppingServiceConfig) ->
    resourceUrl = paylogicShoppingServiceConfig.baseURL + 'bill'
    $resource resourceUrl, null
