var request = require('superagent')
var Future = require('fibers/future'), wait = Future.wait;
var fs = require('fs');
var csv = require('csv');

var Fiber = require('fibers');
var fileName = process.argv[2]
var urlBase = "http://tauto02:7080/ReportService/"
var teamName = "TOOLS"
var projectname = "EGIS-PerformanceTotal"
var testCases = {}

function sleep(r, i) {
    setTimeout(function () {
        console.log(i)
    }, 100);
}


console.log("Start")


  var parser =  csv()
        .from.path(__dirname + '/s10.csv', { delimiter: ',', escape: '"' })
        .on('record', function (r,i){
          sleep(r,i)      
          this.pause()    
        })
        .on('error', function (error) {
            console.log(error.message);
        });
       

