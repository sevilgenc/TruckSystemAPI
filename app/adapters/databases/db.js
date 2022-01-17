const { Pool } = require('pg')

const pool = new Pool({
  host: "localhost",
  user: "postgres",
  password:"elektrik",
  database:"truck_systemdb",
  host:"localhost",
  port:5432
})

const pg_client = new Pool(options);
try {
  pg_client.connect();
  console.log("::> PostgreSQL Server is Ready");
} catch (err) {
  console.log(err.stack);
}

exports.pg_client = pg_client;
