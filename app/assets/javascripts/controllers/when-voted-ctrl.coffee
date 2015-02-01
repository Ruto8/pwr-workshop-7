angular.module('DigApp').controller 'WhenVotedCtrl', ($scope) ->
  console.log $scope
  $scope.$on 'upVoted', (event, arg) ->
    $scope.whenUpVoted = arg
  $scope.$on 'downVoted', (event,arg) ->
    $scope.whenDownVoted = arg
    
