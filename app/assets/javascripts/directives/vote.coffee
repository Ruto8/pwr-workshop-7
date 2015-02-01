angular.module('DigApp').directive 'dgVote', (Dig) ->
  restrict: 'AE'
  templateUrl: 'vote.html'
  controller: ($scope) ->
    $scope.sendWithEmit = (vote) ->
      if vote>0
        $scope.$emit 'upVoted', new Date
      else
        $scope.$emit 'downVoted', new Date
    $scope.vote = (dig, amount) ->
      Dig.vote(dig, amount).success (response) ->
        dig.rating += amount
      $scope.sendWithEmit(amount)
