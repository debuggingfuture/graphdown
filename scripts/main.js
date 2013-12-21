// Require JS  Config File
require.config({
	map: {
	},
	paths: {
		angular: "../bower_components/angular/angular",
		underscore: "//cdnjs.cloudflare.com/ajax/libs/underscore.js/1.5.2/underscore-min",
		"angular-cookies": "../../bower_components/angular-cookies/angular-cookies",
		"angular-mocks": "../../bower_components/angular-mocks/angular-mocks",
		"angular-resource": "../../bower_components/angular-resource/angular-resource",
		"angular-sanitize": "../../bower_components/angular-sanitize/angular-sanitize",
		"angular-scenario": "../../bower_components/angular-scenario/angular-scenario",
		jquery: "../bower_components/jquery/jquery",
		"angular-bootstrap": "../../bower_components/angular-bootstrap/ui-bootstrap-tpls",
		"angular-animate": "../../bower_components/angular-animate/angular-animate",
		"angular-route": "../../bower_components/angular-route/angular-route",
		"d3":"../bower_components/d3/d3"
	},
	shim: {
		angular:{
			exports:"angular"
		},
		jquery: {
			exports: "$"
		},
		"angular-bootstrap": {
			deps: [
				"angular"
			]
		},
		"angular-route": {
			deps: [
				"angular"
			]
		},
		d3:{
			exports:"d3"
		}
	},
	baseUrl: "scripts/"
});

require(["angular"], function(angular) {
	console.log(arguments);
});

require(["app"], function(App,  $) {
	App.initialize();
	console.log('test');
});
//