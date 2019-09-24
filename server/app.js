const express = require("express");
const session = require("express-session")
const cors = require("cors")
const index = require("./routes/index.js")
const login = require("./routes/login.js")
const food = require("./routes/food.js")

var app = express();
app.listen(5050)

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
app.use("/user",login)
app.use("/food",food)
