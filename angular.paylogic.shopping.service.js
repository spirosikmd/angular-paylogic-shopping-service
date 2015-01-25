// Generated by CoffeeScript 1.8.0
(function() {
  'use strict';
  angular.module('angular-paylogic-shopping-service', ['ngResource', 'base64']).provider('paylogicShoppingServiceConfig', function() {
    var config;
    config = {
      baseURL: ''
    };
    return {
      set: function(settings) {
        return config = settings;
      },
      $get: function() {
        return config;
      }
    };
  }).run(function($http, $base64, paylogicShoppingServiceConfig) {
    var auth;
    auth = $base64.encode(paylogicShoppingServiceConfig.apiKey + ':' + paylogicShoppingServiceConfig.apiSecret);
    return $http.defaults.headers.common.Authorization = 'Basic ' + auth;
  }).service('paylogicShoppingService', function(Event, Product, Bill, Order) {
    return {
      events: Event,
      products: Product,
      bill: Bill,
      orders: Order
    };
  });

  'use strict';

  angular.module('angular-paylogic-shopping-service').factory('Bill', function($resource, paylogicShoppingServiceConfig) {
    var resourceUrl;
    resourceUrl = paylogicShoppingServiceConfig.baseURL + 'bill';
    return $resource(resourceUrl, null);
  });

  'use strict';

  angular.module('angular-paylogic-shopping-service').factory('Event', function($resource, paylogicShoppingServiceConfig) {
    var resourceUrl;
    resourceUrl = paylogicShoppingServiceConfig.baseURL + 'events/:eventUid';
    return $resource(resourceUrl, null, {
      query: {
        method: 'GET'
      }
    });
  });

  'use strict';

  angular.module('angular-paylogic-shopping-service').factory('Order', function($resource, paylogicShoppingServiceConfig) {
    var resourceUrl;
    resourceUrl = paylogicShoppingServiceConfig.baseURL + 'orders/:orderUid';
    return $resource(resourceUrl, null, {
      create: {
        method: 'POST'
      }
    });
  });

  'use strict';

  angular.module('angular-paylogic-shopping-service').factory('Product', function($resource, paylogicShoppingServiceConfig) {
    var resourceUrl;
    resourceUrl = paylogicShoppingServiceConfig.baseURL + 'products/:productUid';
    return $resource(resourceUrl, null, {
      query: {
        method: 'GET'
      }
    });
  });

}).call(this);

//# sourceMappingURL=angular.paylogic.shopping.service.js.map
