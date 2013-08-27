#= require_self
#= require_tree ./controllers
#= require_tree ./models

angular.module('MyContactsApp', [])
  .config ($httpProvider) ->
    $httpProvider.defaults.headers.common['Accept'] = 'application/vnd.aurevec+json;version=1'
  
