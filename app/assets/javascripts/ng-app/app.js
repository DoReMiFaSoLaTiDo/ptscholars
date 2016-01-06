angular
  .module('myApp', [
    'ngAnimate',
    'ui.router',
    'templates'
])
//MyConfig.$inject = ['$stateProvider', '$urlRouterProvider', '$locationProvider'];
//angular.module('myApp')
  //.config('MyConfig', MyConfig);
  //function MyConfig($stateProvider, $urlRouterProvider, $locationProvider) {
  .config(['$stateProvider', '$urlRouterProvider', '$locationProvider',function ($stateProvider, $urlRouterProvider, $locationProvider) {
    /*
    * Routes and States
    */
    $stateProvider
      .state('home', {
        url: '/',
        templateUrl: 'pages/home.html',
        controller: 'HomeCtrl'
      })
      .state('about', {
        url: '/about',
        templateUrl: 'pages/about.html',
        controller: 'AboutCtrl'
      })
      .state('terms', {
        url: '/terms',
        templateUrl: 'pages/terms.html',
        controller: 'TermsCtrl'
      })
      .state('privacy', {
        url: '/privacy',
        templateUrl: 'pages/privacy.html',
        controller: 'PrivacyCtrl'
      })
      .state('contact', {
        url: '/contact',
        templateUrl: 'pages/contact.html',
        controller: 'ContactCtrl'
      })

      // an abstract state that just serves as a parent for the below child states
      .state('dashboard', {
        abstract: true,
        url: '/dashboard',
        templateUrl: 'dashboard/layout.html'
      })

      // the default route when someone hits dashboard
      .state('dashboard.one', {
        url: '',
        templateUrl: 'dashboard/one.html'
      })

      // dashboard two
      .state('dashboard.two', {
        url: '/two',
        templateUrl: 'dashboard/two.html'
      })

      // dashboard three
      .state('dashboard.three', {
        url: '/three',
        templateUrl: 'dashboard/three.html'
      });
      // default fallback Route
      $urlRouterProvider.otherwise('/');

      //enable HTML5 mode for SEO
      $locationProvider.html5Mode({
        enabled: true,
        requireBase: false
      });
  }]);
