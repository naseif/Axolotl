const mysql = require('mysql');
const config = require("./config.json")
const express = require('express')
let app = express()
const port = 51337;

app.get('/', function (req, res) {
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
            res.send(result);
            con.end();
          })
      });
})

app.listen(port, () => {
    console.log(`Example app listening at http://localhost:${port}`)
  })


