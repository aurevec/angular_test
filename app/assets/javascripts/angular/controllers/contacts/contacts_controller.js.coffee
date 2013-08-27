@ContactsController = ($scope, $http) ->

  $http.get('api/contacts').success (data) ->
    $scope.contacts = data
  
  $scope.orderProp = "last_name"
