//APP = aplicacion 
const express = require("express");//Framework
const routes = require("./routes");//Rutas

const app = express();

//Middleware para parsear el body de las peticiones
app.use(express.json());//Comunicaon es JSON
//mensaje prederminado para la ruta raiz
//http:miaplicacion.com/
app.get("/", (req, res) => {
  res.status(200).json({
    ok: true,
    message: "API REST ejecutandose correctamente",
  });
});
//Habilitamos las rutas de todos los moduelos (index.js)
app.use("/api", routes);
module.exports = app;