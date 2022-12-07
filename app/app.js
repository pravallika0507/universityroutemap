// Import express.js
const express = require("express");

// Create express app
const app = express();

const mysql = require('mysql');
const connection=mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'node_crud'
})

connection.connect(function(error){
    if(!!error) console.log('Database Connected!!');
    else console.log('error ')
})

var path = require('path');
// Add static files location
app.use(express.static("static"));

// adding pug 
app.set('view engine', 'pug');
app.set('views', './app/views');
app.use(express.static(path.join(__dirname, 'public')));


// Get the functions in the db.js file to use
const db = require('./services/db');

// Create a route for root - /

app.get("/", function(req, res) {
    res.render("home");
});


app.get("/intake", function(req,res) {
    sql = "SELECT * FROM INTAKE ";
    db.query(sql).then(resul =>{
        res.render("intake", {resul})
    })
});

app.get("/courseDetails", function(req, res) {
    sql = "SELECT * FROM COURSE_DETAILS";
    db.query(sql).then(resul =>{
        res.render("intake", {resul})
    })

});

app.get("/getdirections", function(req, res) {
    res.render("getdirections");
});

// Create a route for testing the db
app.get("/1", function(req, res) {
    // Assumes a table called test_table exists in your database
    sql = 'select * from INTAKE ';
   
    db.query(sql).then(results => {
        console.log(results);
        res.send(results)
    });
});

// Create a route for /goodbye
// Responds to a 'GET' request
app.get("/goodbye", function(req, res) {
    res.send("Goodbye world!");
});

// Create a dynamic route for /hello/<name>, where name is any value provided by user
// At the end of the URL
// Responds to a 'GET' request
app.get("/hello/:name", function(req, res) {
    // req.params contains any parameters in the request
    // We can examine it in the console for debugging purposes
    console.log(req.params);
    //  Retrieve the 'name' parameter and use it in a dynamically generated page
    res.send("Hello " + req.params.name);
});

// Start server on port 3000
app.listen(3000,function(){
    console.log(`Server running at http://127.0.0.1:3000/`);
});