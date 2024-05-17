const mysql = require("mysql2/promise");

const host = process.env.DB_HOST;
const user = process.env.DB_USER;
const password = process.env.DB_PASS;

const dbConfig = {
  host,
  user,
  password,
  database: "lattice",
};

const DB = mysql.createPool(dbConfig);

module.exports = { DB };
