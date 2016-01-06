(function () {
  "use strict";

  angular.module("app").controller("startupsCtrl", function($scope, $http) {

    $scope.setup = function() {
      $http.get("/api/v1/startups.json").then(function(response) {
        $scope.startups = response.data;
        // console.log(response.data);
      });
      
    }



    $scope.addStartup = function(name,location,job_openings) {
      var newStartup = {
        name: name,
        location: location,
        job_openings: job_openings
      };
      $http.post('api/v1/startups.json',newStartup).then(function(response){
        var startupCallback = response.data;  
        $scope.startups.push(startupCallback);
      });
      $scope.startups.push(newStartup);
    }

    // $scope.deleteStartup = function(index) {
    //   $scope.startups.splice(index, 1);
    // }



  window.$scope = $scope;    
  });
})();