angular
  .module('myApp', [
    'ngAnimate',
    'ui.router',
    'templates'
])
  .config(function ($stateProvider, $urlRouterProvider, $locationProvider) {
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
      });
      // default fallback Route
      $urlRouterProvider.otherwise('/');

      //enable HTML5 mode for SEO
      $locationProvider.html5Mode({
        enabled: true,
        requireBase: false
      });
  });
