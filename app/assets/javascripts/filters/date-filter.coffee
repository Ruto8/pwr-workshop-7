angular.module('DigApp').filter 'customDate', ($filter) ->
  angularDateFilter = $filter('date')
  return (input)->
    return angularDateFilter(input, 'yyyy-mm-dd ### HH:mm:ss')
