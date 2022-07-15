const DB = require("mysql");
require('dotenv').config()

const connection = DB.createConnection({
  host: "mf1l4m8uvc3f.us-east-3.psdb.cloud",
  user: "pvboeks2defg",
  password: "pscale_pw_tvF6gbObb4HbmJAP6pNUnpopY9QZtX5ZEcMEtQeSSj4",
  database: "juegosalianzas",
  ssl: {
    rejectUnauthorized: false
  }
});

module.exports = connection;
