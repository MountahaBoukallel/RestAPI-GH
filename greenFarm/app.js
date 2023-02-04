const express = require('express');
const app = express();
const bodyParser = require('body-parser');
const mysql = require('mysql');

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

// Connect to the MySQL database
const connection = mysql.createConnection({
  host: 'hostname',
  user: 'username',
  password: 'password',
  database: 'database_name'
});

connection.connect();

app.get('/read', (req, res) => {
  connection.query('SELECT * FROM table_name', (error, results, fields) => {
    if (error) throw error;
    res.send(results);
  });
});

app.listen(3000, () => {
  console.log('Server listening on port 3000!');
});
