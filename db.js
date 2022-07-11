const DB = require("mysql");
require('dotenv').config()

const connection = DB.createConnection({
  host: process.env.SECRET_HOST,
  user: process.env.SECRET_USER,
  password: process.env.SECRET_KEY,
  database: process.env.SECRET_DB,
  ssl: {
    rejectUnauthorized: false
  }
});

module.exports = connection;
