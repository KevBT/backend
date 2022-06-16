const DB = require("mysql");

const connection = DB.createConnection({
  host: "mf1l4m8uvc3f.us-east-3.psdb.cloud",
  user: "1vj7qav031s1",
  password: "pscale_pw_jw9ECO3gnDy1Hti4c6QzMVEsBdB3JukPG6FbcIeGnng",
  database: "juegosalianzas",
  ssl: {
    rejectUnauthorized: false
  }
});

module.exports = connection;
