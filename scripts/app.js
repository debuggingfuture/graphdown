'use strict';

define(
    ["angular",
        "controllers/controllers",
        "angular-route"
    ],
    function(angular, controllers, services) {
        console.log(arguments);
        var initialize = function() {
            var app = angular.module('graphDownEditor', ['ngRoute'])
                .run(function() {
                    console.log('app running');
                })

            app.controller('GraphDownCtrl',controllers.GraphDownCtrl);

            angular.bootstrap(document, ["graphDownEditor"]);
        };
        return {
            initialize: initialize
        };
    });