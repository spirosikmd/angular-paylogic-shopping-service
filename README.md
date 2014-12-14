angular-paylogic-shopping-service
=================================

An [AngularJS](https://angularjs.org/) service that encapsulates the functionality provided by the [Paylogic Shopping Service](https://shopping-service-docs.sandbox.paylogic.com/).

## Getting Started

``angular-paylogic-shopping-service`` requires [Bower](http://bower.io/) and [CoffeeScript](http://coffeescript.org/).

Run ``bower install`` from the root directory of the project to install all the dependencies.

Start a web server, e.g. ``python -m SimpleHTTPServer`` from the root directory of the project and check the demo at [http://localhost:8000/demo.html](http://localhost:8000/demo.html).

The example will not work for the public (unfortunately..) as it requires basic authentication to access the API, and credentials are not provided.

## Configure

``angular-paylogic-shopping-service`` requires basic authentication. For this reason, it can be configured with an apiKey and apiSecret using AngularJS [app bootstrap](https://docs.angularjs.org/guide/bootstrap) feature.

```javascript
var apiKey, apiSecret;

// Define your app, and configure the service
angular.module("demoApp", ["angular-paylogic-shopping-service"])
    .config(function(paylogicShoppingServiceProvider) {
        // Configure the shopping service api with key and secret.
        paylogicShoppingServiceProvider.configure({
          "apiKey": apiKey,
          "apiSecret": apiSecret
        });
    })

// Load the privates and bootstrap the app asynchronously.
$.get("private.json", function(response) {
    apiKey = response.apiKey;
    apiSecret = response.apiSecret;
    angular.element(document).ready(function() {
        angular.bootstrap(document, ["demoApp"]);
    });
});
```

with ``private.json`` having the following format.

```javascript
{
    "apiKey": "Your key here.",
    "apiSecret": "Your secret here."
}
```

## How to use

``angular-paylogic-shopping-service`` exposes a single ``paylogicShoppingService`` component that can be used in the following way to interact with resources.

```javascript
// Inject the angular-paylogic-shopping-service module.
angular.module("app", ["angular-paylogic-shopping-service"])
    // Inject the paylogicShoppingService service in a controller.
    .controller("mainController", function($scope, paylogicShoppingService) {
        // Will return all, as no filtering was specified.
        $scope.events = paylogicShoppingService.events.query();
        
        // products.get works, even if it is not defined in Product service, as it is a standard method of $resource.
        $scope.product = paylogicShoppingService.products.get({
            productUid: "30df20dd0b0e4bc58f0663edc8a4f640"
        });
    });
```

There is a more [detailed example](https://github.com/spirosikmd/angular-paylogic-shopping-service/blob/master/demo.html) that demonstrates a complete buying process.
