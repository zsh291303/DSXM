const express = require("express");
const session = require("express-session")
const cors = require("cors")
const index = require("./routes/index.js")

var app = express();
app.listen(5500)

app.use(cors({
  origin:["http://172.17.10.238:8080","http://localhost:8080"],
  credentials:true
}))

app.use(session({
  secret:"128位字符串",
  resave:true,
  saveUninitialized:true
}))

app.use(express.static("public"))

app.use("/",index);
