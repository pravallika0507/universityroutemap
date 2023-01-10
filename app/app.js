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
    });
});

app.get("/courseDetails", function(req, res) {
    sql = "SELECT * FROM COURSES";
    db.query(sql).then(resul =>{
        console.log(resul);
        res.render("courseDetails", {data: resul})
    })
});

// app.get("/courseDetails", function(req, res) {
//     sql = "SELECT * FROM COURSES";
//     var output = ''
//     db.query(sql).then(resul => {
//         for(var row of resul) {
//             output += 'Course: ' + '<a href="./courseDetails/'+row.C_ID + '">' + row.C_NAME + '<br />' + '</a>'
//         }
//         res.send(output);
//         // res.render("courseDetails", {resul});
//     })
// })

app.get("/courseDetails/:C_ID", function(req, res) {
    var CID = req.params.C_ID;
    var sdsql = "SELECT * FROM SUBJECTS WHERE C_ID = ?";
    db.query(sdsql, [CID]).then(results =>{
    console.log(results);
    // output = ''
    //     for(var row of results){
    //         //res.send(CID);
    //         var cid = row.C_ID;
    //         //output += <br/>
    //         //output += 'Subjects: ' + row.SUB_NAME;
    //         output += 'Subject: ' + '<a href="./'+cid+"/"+row.SUB_ID + '">' + row.SUB_NAME  + '</br>' + '</a>'
    //     }
    //res.send(output);
    res.render("subjectDetails", {data: results})
    });
});

app.get("/courseDetails/:C_ID/:SUB_ID", function(req, res) {
    var SID = req.params.SUB_ID;
    var cdsql = "SELECT CD.SUB_ID, DATE_FORMAT(CD.SUB_DATE, '%y-%m-%d') AS SUB_DATE, CD.TIME, CD.ROOM_NO, CD.TUTOR, SD.C_ID, SD.SUB_NAME from CLASS_DETAILS AS CD \
    JOIN SUBJECTS AS SD on CD.SUB_ID = SD.SUB_ID \
    WHERE CD.SUB_ID = ?";
    db.query(cdsql, [SID]).then(result => {
        console.log(result);
    //     output = ''
    //         for(var row of result){
    //             output += 'Room Number: ' + row.ROOM_NO + '<br />'
    //             output += 'Date: ' + row.SUB_DATE + '<br />'
    //             output += 'Time: ' + row.TIME + '<br />'
    //             output += 'Tutor: ' + row.TUTOR
    //         }
    // res.send(output);
    res.render("timetable", {data: result})
    });
});

app.get("/getdirections", function(req, res) {
    res.render("getdirections");
});

// Start server on port 3000
app.listen(3000,function(){
    console.log(`Server running at http://127.0.0.1:3000/`);
});