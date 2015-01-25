'use strict'

angular.module 'angular-paylogic-shopping-service'
  .factory 'Event', ($resource, paylogicShoppingServiceConfig) ->
    resourceUrl = paylogicShoppingServiceConfig.baseURL + 'events/:eventUid'
    $resource resourceUrl, null, {
      query: {
        method: 'GET'
      }
    }
