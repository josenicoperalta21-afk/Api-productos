const mysql = require("mysql2/promise"); //Acediendo modeulo conexion
const { db } = require("./env");//Leer y validar lso parametros de conexin
// Este archivo gestiona la conexion al servidor y la base de datos
const pool = mysql.createPool({
  host: db.host,
  port: db.port,
  user: db.user,
  password: db.password,
  database: db.database,
  waitForConnections: true,
  connectionLimit: db.connectionLimit,
  queueLimit: 0,
});

//verificar la conexion
const probarConexion = async () => {
  const conexion = await pool.getConnection();
  await conexion.ping();//Test
  conexion.release();//Desconexion
  
};

//Exportamos la conexion
module.exports = { pool, probarConexion };
