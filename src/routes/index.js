//Nuestra aplicacion puede tener muchosmoduleos
//Productos > producto.controller> producto.routes
//Clientes > cliente.controller> cliente.routes
//Proveedores > proveedor.controller> proveedor.routes

//Todas las rutas se organizan gracias a index.js (indice)
const { Router } = require("express");

//Esto se realiza por cada route
const productoRoutes = require("./producto.routes");
const clienteRoutes = require("./cliente.routes");
const proveedorRoutes = require("./proveedor.routes");

//Esto es solo uno para las rutas
const router = Router();
// Esto es por cada route
router.use("/productos", productoRoutes);
router.use("/clientes", clienteRoutes);
router.use("/proveedores", proveedorRoutes);
//Se exporta todas las rutas
module.exports = router;
