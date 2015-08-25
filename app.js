// Require the application
// Start the application
var app = require('./');

app.start({

}, function(error) {
  if(error) {
    console.error(error);
  }
});
