const express = require("express");
const session = require("express-session")
const cors = require("cors")

var app = express();
app.listen(8080)

app.use(cors({
  origin:["http://127.0.0.1:5050","http://localhost:5050"],
  credentials:true
}))

app.use(session({
  secret:"128位字符串",
  resave:true,
  saveUninitialized:true
}))

app.use(express.static("public"))
