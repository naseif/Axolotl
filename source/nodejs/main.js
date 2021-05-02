const mysql = require('mysql');
const config = require("./config.json")

let con = mysql.createConnection({
    host: config.host,
    user: config.username,
    password: config.password,
    database: config.database
  });
  
  con.connect(function(err) {
    if (err) throw err;
    console.log("Connected!");
    let sql = "SELECT ID, NAME FROM Board";
    con.query(sql, function (err, result) {
        if (err) throw err;
       for (const {ID: ID, NAME: NAME}  of result){
           console.log(ID, NAME)
       }  
      })
  });
