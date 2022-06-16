const DB = require("mysql");
require('dotenv').config()

const connection = DB.createConnection({
  host: "mf1l4m8uvc3f.us-east-3.psdb.cloud",
  user: process.env.SECRET_USER,
  password: process.env.SECRET_KEY,
  database: "juegosalianzas",
  ssl: {
    rejectUnauthorized: false
  }
});

module.exports = connection;
