const express = require("express");
require("dotenv").config()
const app = express();
const cors = require("cors");

app.use(cors())

// /* - - - CONTROLLERS - - - */
const userController = require("./controllers/usersController");


// /* - - - ROUTES - - - */


app.get("/", (req, res) => {
  return res.send("Welcome To Guitar Lessons");
});

app.get("*", (req, res) => {
  return res.status(404).json({
    Error: "GET request unsuccessful.",
    message: "Page Not Found! Please try again.",
  });
});

module.exports = { app };

