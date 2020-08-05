var mysql = require('mysql');
var faker = require('faker');

 
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  // password: process.ENV.MYSQL_PW,
  database : 'join_us'
});

var person = {
    email: faker.internet.email(),
    created_at: faker.date.past()
};
 
var end_result = connection.query('INSERT INTO users SET ?', person, function(err, result) {
  if (err) throw err;
  console.log(result);
});

connection.end();