var sys = require("sys"),  
my_http = require("http");  
my_http.createServer(function(request,response){  
    sys.puts("Got connection from "+request.connection.remoteAddress);  
    response.writeHeader(200, {"Content-Type": "text/plain"});  
    response.write("Hello World");  
    response.end();  
}).listen(8091);  
