'use strict'

angular.module 'angular-paylogic-shopping-service'
  .factory 'Bill', ($resource, baseUrl) ->
    resourceUrl = baseUrl + 'bill'
    $resource resourceUrl, null
