const express = require("express");
const session = require("express-session")
const cors = require("cors")
const index = require("./routes/index")

var app = express();
app.listen(8080)

app.use(cors({
  origin:["http://127.0.0.1:5500","http://localhost:8080"],
  credentials:true
}))

app.use(session({
  secret:"128位字符串",
  resave:true,
  saveUninitialized:true
}))

app.use(express.static("public"))

app.use("/index",index);
