const DB = require("mysql");

const connection = DB.createConnection({
  host: "mf1l4m8uvc3f.us-east-3.psdb.cloud",
  user: "lq9zc21v2j7c",
  password: "pscale_pw_BPGfAOTOJkQDSlfml19OZnXSkBGReBtvZy1XGNQG2Wc",
  database: "juegosalianzas",
  ssl: {
    rejectUnauthorized: false
  }
});

module.exports = connection;
