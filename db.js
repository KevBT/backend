const DB = require("mysql");

const connection = DB.createConnection({
  host: "localhost",
  user: "root",
  password: "password",
  database: "games_friends",
});

module.exports = connection;
