'use strict'

angular.module 'angular-paylogic-shopping-service'
  .factory 'Event', ($resource, baseUrl) ->
    resourceUrl = baseUrl + 'events/:eventUid'
    $resource resourceUrl, null
