const { Router } = require("express");
const controller = require("../controllers/cliente.controller");
const router = Router();

router.get("/", controller.listarClientes);
router.get("/:id", controller.obtenerClientes);
router.post("/", controller.crearClientes);
router.put("/:id", controller.actualizarClientes);
router.delete("/:id", controller.eliminarClientes);

module.exports = router;
